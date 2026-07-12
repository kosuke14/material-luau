--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local CheckboxTokens = require(MaterialRoblox.Tokens._internal.checkbox);

local function getTokens()
    local theme = Theming:now();
    local tokens = CheckboxTokens(theme);

    return {
        containerWidth = tokens.container.width,
        containerHeight = tokens.container.height,
        selectedContainerColor = tokens.selected.container.color,
        selectedIconColor = tokens.selected.icon.color,
        unselectedOutlineColor = tokens.unselected.outline.color,
        unselectedOutlineWidth = tokens.unselected.outline.width,
        unselectedIconColor = tokens.unselected.icon.color,
        stateLayerSize = tokens["state-layer"].size,
        stateLayerShape = tokens["state-layer"].shape,
        iconSize = tokens.icon.size,
        errorOutlineColor = tokens.unselected.error.outline.color,
        errorContainerColor = tokens.selected.error.container.color,
        errorIconColor = tokens.selected.error.icon.color,
        focusIndicatorColor = tokens.focus.indicator.color,
    }
end

return getTokens