--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local CardTokens = require(MaterialRoblox.Tokens._internal.cards);

local function getTokens()
    local theme = Theming:now();
    local tokens = CardTokens(theme);

    return {
        containerColor = tokens.container.color,
        containerShape = tokens.container.shape,
        outlineColor = tokens.outline.color,
        outlineWidth = tokens.outline.width,
    }
end

return getTokens