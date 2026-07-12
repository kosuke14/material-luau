--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local RadioButtonTokens = require(MaterialRoblox.Tokens._internal["radio-button"]);

local function getTokens()
    local theme = Theming:now();
    local tokens = RadioButtonTokens(theme);

    return {
        selectedIconColor = tokens.selected.icon.color,
        unselectedIconColor = tokens.unselected.icon.color,
        stateLayerSize = tokens["state-layer"].size,
        iconSize = tokens.icon.size,
    }
end

return getTokens