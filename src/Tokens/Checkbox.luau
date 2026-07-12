--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

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
		selectedPressedIconColor = tokens.selected.pressed.icon.color,
		selectedPressedContainerColor = tokens.selected.pressed.container.color,
		selectedPressedStateLayerColor = tokens.selected.pressed["state-layer"].color,
		selectedHoverIconColor = tokens.selected.hover.icon.color,
		selectedHoverContainerColor = tokens.selected.hover.container.color,
		selectedFocusIconColor = tokens.selected.focus.icon.color,
		unselectedPressedIconColor = tokens.unselected.pressed.icon.color,
		unselectedPressedOutlineColor = tokens.unselected.pressed.outline.color,
		unselectedPressedStateLayerColor = tokens.unselected.pressed["state-layer"].color,
		unselectedHoverIconColor = tokens.unselected.hover.icon.color,
		unselectedHoverOutlineColor = tokens.unselected.hover.outline.color,
		disabledUnselectedIconColor = tokens.disabled.unselected.icon.color,
		disabledSelectedIconColor = tokens.disabled.selected.icon.color,
		disabledSelectedContainerColor = tokens.disabled.selected.container.color,
		stateLayerSize = tokens["state-layer"].size,
		stateLayerShape = tokens["state-layer"].shape,
		iconSize = tokens.icon.size,
		errorOutlineColor = tokens.unselected.error.outline.color,
		errorContainerColor = tokens.selected.error.container.color,
		errorIconColor = tokens.selected.error.icon.color,
		errorStateLayerColor = tokens.error.hover["state-layer"].color,
		focusIndicatorColor = tokens.focus.indicator.color,
	}
end

return getTokens