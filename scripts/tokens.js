// Generate M3 tokens

import * as fs from "fs/promises";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const COMPONENT_DATA = resolve(__dirname, "..", "m3_data.json");
const TOKENS = resolve(__dirname, "..", "src/Tokens");
const TOKENS_OUTPUT = resolve(TOKENS, "_internal");

const UNSUPPORTED_TYPOGRAPHY_TOKENS = ["weight", "tracking", "line.height"]

try {
    await fs.readdir(TOKENS)
} catch (error) {
    if (error.code = "ENOENT") {
        fs.mkdir(TOKENS)
    }
}

try {
    await fs.readdir(TOKENS_OUTPUT);
 }catch (error) {
    if (error.code = "ENOENT") {
        fs.mkdir(TOKENS_OUTPUT)
    }
}

class LuauCode {
    constructor(value) {
        this.value = value;
    }

    toString() {
        return this.value;
    }
}

function parseM3Data(
    data
) {
    const map = new Map();

    for (const componentGroup of data.v.sections) {
        for (const component of componentGroup.components) {
            map.set(component.title, component.exportedCarbonFileId)
        }
    }

    return map
}

async function fetchM3Data() {
    const data = await fs.readFile(COMPONENT_DATA, "utf-8");

    return parseM3Data(JSON.parse(data));
}

async function fetchTokenTable(
    fromJson
) {
    let tokenId;

    for (const contentBlock of fromJson.sections[1].contentBlocks) {
        if (tokenId) {
            break;
        }

        for (const contentChunk of contentBlock.contentChunks) {
            tokenId = contentChunk.resourceName
        }
    }

    if (!tokenId) {
        throw new Error("Something went wrong.")
    }

    tokenId = tokenId.split("/")[3];

    const response = await fetch(`https://m3.material.io/_dsm/data/dsdb-m3/latest/TOKEN_TABLE.${tokenId}.json`);

    if (!response.ok) {
        throw new Error(`HTTP error, status: ${response.status}`);
    }

    return await response.json();
}

async function fetchComponentData(
    id
) {
    const response = await fetch(`https://m3.material.io/_dsm/content/m3/latest/${id}.json`);

    if (!response.ok) {
        throw new Error(`HTTP error, status: ${response.status}`);
    }

    return await response.json();
}

function toPascalCase(str) {
    return str.split(/[-.]/)
        .map(word => word.charAt(0).toUpperCase() + word.slice(1))
        .join('');
}

function toCamelCase(str) {
    const pascal = toPascalCase(str);
    return pascal.charAt(0).toLowerCase() + pascal.slice(1);
}

function toLuau(obj, indent = 1) {
    if (obj === null) {
        return "nil";
    }

    const indentation = "    ".repeat(indent);
    const parentIndentation = "    ".repeat(indent - 1);

    // UPDATED LOGIC: Check for our special LuauCode class first
    if (obj instanceof LuauCode) {
        return obj.toString();
    }

    switch (typeof obj) {
        case "string":
            return `"${obj.replace(/\\/g, "\\\\").replace(/"/g, '\\"')}"`;
        case "number":
            return obj; // Return numbers without quotes
        case "boolean":
            return obj.toString();
        case "object":
            // ... (the rest of the function remains the same)
            let parts = [];
            if (Array.isArray(obj)) {
                parts = obj.map(val => `${indentation}${toLuau(val, indent + 1)}`);
            } else {
                for (const key in obj) {
                    const luauKey = /^[a-zA-Z_][a-zA-Z0-9_]*$/.test(key)
                        ? key
                        : `["${key}"]`;

                    const value = toLuau(obj[key], indent + 1);
                    parts.push(`${indentation}${luauKey} = ${value}`);
                }
            }
            return `{\n${parts.join(",\n")}\n${parentIndentation}}`;
        default:
            return "nil";
    }
}


// +++ REVISED writeLuaOutput FUNCTION +++

async function writeLuaOutput(
    componentName,
    componentTokens
) {
    const Tokens = componentTokens.system.tokens;
    const Values = componentTokens.system.values;
    const TokenIdToTokenName = new Map();

    for (const token of Tokens) {
        TokenIdToTokenName.set(token.name, token.tokenName)
    };

    const nestedTokensObject = {};

    for (const value of Values) {
        if (value.undefined) {
            continue;
        }

        const tokenId = value.name.split("/").slice(0, 6).join("/");
        const tokenName = TokenIdToTokenName.get(tokenId);
        const parts = tokenName.replace('md.comp.', '').split('.').slice(1);
        let currentLevel = nestedTokensObject;
        let actualValue;

        // UPDATED: Wrap theme references in the LuauCode class
        if (value.tokenName?.startsWith('md.sys.color')) {
            const colorName = toCamelCase(value.tokenName.replace('md.sys.color.', ''));
            actualValue = new LuauCode(`theme.color.${colorName}`);
        } else if (value.tokenName?.startsWith('md.sys.shape')) {
            const shapeName = toCamelCase(value.tokenName.replace('md.sys.shape.', ''));
            actualValue = new LuauCode(`theme.shape.${shapeName}`);
        } else if (value.tokenName?.startsWith('md.sys.typescale')) {
            const typeName = value.tokenName.replace('md.sys.typescale.', '').replaceAll('-', '.');

            if (UNSUPPORTED_TYPOGRAPHY_TOKENS.some(value => typeName.includes(value))) {
                continue;
            }

            actualValue = new LuauCode(`theme.typography.${typeName}`);
        } else if (value.length) {
            actualValue = value.length.value;
        } else {
            continue; // Skip if no valid value can be determined
        }

        parts.forEach((part, index) => {
            if (index === parts.length - 1) {
                if (typeof currentLevel[part] === 'object' && currentLevel[part] !== null) {
                    currentLevel[part].value = actualValue;
                } else {
                    currentLevel[part] = actualValue;
                }
            } else {
                const currentValue = currentLevel[part];
                if (typeof currentValue !== 'object' || currentValue === null) {
                    currentLevel[part] = {};
                    if (currentValue !== undefined) {
                        currentLevel[part].value = currentValue;
                    }
                }
                currentLevel = currentLevel[part];
            }
        });
    }

    

    let File = `
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: ${componentTokens.system.displayName}
-- Token revision id: ${componentTokens.system.revisionId}

local function getTokens(theme)
    return ${toLuau(nestedTokensObject)}
end

return getTokens
    `;


    try {
        await fs.writeFile(resolve(TOKENS_OUTPUT, componentName + ".luau"), File)
    } catch (error) {
        throw new Error(`Something went wrong: ${error.code}`)
    }
}

async function main() {
    const data = await fetchM3Data();
    const tokenTables = new Map();

    await Promise.all(
        Array.from(data).map((
            [_, id]
        ) => {
            return fetchComponentData(id).then(async (
                componentData
            ) => {
                const tokenTable = await fetchTokenTable(componentData);

                tokenTables.set(componentData.slug, tokenTable);
            })
        })
    );

    for (const [componentName, tokenTable] of tokenTables) {
        writeLuaOutput(componentName, tokenTable)
    }
}

await main();