--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local DividerTokens = require(MaterialRoblox.Tokens._internal.divider);

local function getTokens()
    local theme = Theming:now();
    local tokens = DividerTokens(theme);

    return {
        color = tokens.color,
        thickness = tokens.thickness,
    }
end

return getTokens