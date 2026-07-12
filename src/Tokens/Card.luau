--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local CardTokens = require(MaterialRoblox.Tokens._internal.cards);

local function getTokens(variant: "filled" | "outlined" | "elevated"?)
	local theme = Theming:now();
    local tokens = CardTokens(theme);

	variant = variant or "filled";

	return {
		containerColor = tokens.container.color,
		containerShape = tokens.container.shape,
		shadowColor = tokens.container["shadow-color"],
		outlineColor = tokens.outline.color,
		outlineWidth = tokens.outline.width,
		iconSize = tokens.icon.size,
		iconColor = tokens.icon.color,
		disabledContainerColor = tokens.disabled.container.color,
		disabledOutlineColor = tokens.disabled.outline.color,
		hoverStateLayerColor = tokens.hover["state-layer"].color,
		pressedStateLayerColor = tokens.pressed["state-layer"].color,
		draggedStateLayerColor = tokens.dragged["state-layer"].color,
		focusStateLayerColor = tokens.focus["state-layer"].color,
		focusIndicatorColor = tokens.focus.indicator.color,
	}
end

return getTokens