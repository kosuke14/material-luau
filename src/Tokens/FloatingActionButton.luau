--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local FABTokens = require(MaterialRoblox.Tokens._internal.fab);

local function getTokens(variant: "primary" | "secondary" | "tertiary" | "surface" | "branded"?, size: "small" | "medium" | "large"?)
	local theme = Theming:now();
    local tokens = FABTokens(theme);

	variant = variant or "primary";
	size = size or "medium";

	local variantTokens = tokens[variant] or tokens.primary;

	return {
		containerWidth = variantTokens.container.width or tokens.container.width,
		containerHeight = variantTokens.container.height or tokens.container.height,
		containerColor = variantTokens.container.color or tokens.primary.container.color,
		containerShape = variantTokens.container.shape or tokens.container.shape,
		shadowColor = variantTokens.container["shadow-color"] or tokens.primary.container["shadow-color"],
		iconColor = variantTokens.icon.color or tokens.primary.icon.color,
		iconSize = variantTokens.icon.size or tokens.icon.size,
		hoverStateLayerColor = variantTokens.hover["state-layer"].color or tokens.primary.hover["state-layer"].color,
		pressedStateLayerColor = variantTokens.pressed["state-layer"].color or tokens.primary.pressed["state-layer"].color,
		focusIndicatorColor = tokens.sys.state["focus-indicator"].thickness,
	}
end

return getTokens