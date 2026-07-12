--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local RadioButtonTokens = require(MaterialRoblox.Tokens._internal["radio-button"]);

local function getTokens()
	local theme = Theming:now();
    local tokens = RadioButtonTokens(theme);

	return {
		selectedIconColor = tokens.selected.icon.color,
		unselectedIconColor = tokens.unselected.icon.color,
		selectedPressedIconColor = tokens.selected.pressed.icon.color,
		selectedPressedStateLayerColor = tokens.selected.pressed["state-layer"].color,
		selectedHoverIconColor = tokens.selected.hover.icon.color,
		selectedFocusIconColor = tokens.selected.focus.icon.color,
		unselectedPressedIconColor = tokens.unselected.pressed.icon.color,
		unselectedPressedStateLayerColor = tokens.unselected.pressed["state-layer"].color,
		unselectedHoverIconColor = tokens.unselected.hover.icon.color,
		disabledUnselectedIconColor = tokens.disabled.unselected.icon.color,
		disabledSelectedIconColor = tokens.disabled.selected.icon.color,
		stateLayerSize = tokens["state-layer"].size,
		iconSize = tokens.icon.size,
	}
end

return getTokens