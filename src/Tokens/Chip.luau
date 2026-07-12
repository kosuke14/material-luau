--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local ChipTokens = require(MaterialRoblox.Tokens._internal.chips);

local function getTokens(variant: "flat" | "elevated"?)
	local theme = Theming:now();
    local tokens = ChipTokens(theme);

	variant = variant or "flat";

	return {
		containerHeight = tokens.container.height,
		containerShape = tokens.container.shape,
		labelFont = tokens["label-text"].font,
		labelSize = tokens["label-text"].size,
		labelColor = tokens["label-text"].color,
		outlineColor = tokens.outline.color,
		outlineWidth = tokens.outline.width,
		selectedContainerColor = tokens.selected.container.color,
		selectedLabelColor = tokens.selected["label-text"].color,
		unselectedLabelColor = tokens.unselected["label-text"].color,
		unselectedOutlineColor = tokens.unselected.outline.color,
		unselectedOutlineWidth = tokens.unselected.outline.width,
		hoverStateLayerColor = tokens.hover["state-layer"].color,
		pressedStateLayerColor = tokens.pressed["state-layer"].color,
		focusStateLayerColor = tokens.focus["state-layer"].color,
		disabledLabelColor = tokens.disabled["label-text"].color,
		disabledOutlineColor = tokens.disabled.outline.color,
		iconSize = tokens["with-icon"].icon.size,
		iconColor = tokens["with-icon"].icon.color,
		selectedIconColor = tokens["with-icon"].selected.icon.color,
		unselectedIconColor = tokens["with-icon"].unselected.icon.color,
		elevatedContainerColor = tokens.elevated.container.color,
		elevatedShadowColor = tokens.elevated.container["shadow-color"],
	}
end

return getTokens