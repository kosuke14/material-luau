--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local InternalTokens = require(MaterialRoblox.Tokens._internal["common-buttons"]);

local function getTokens(
    variant,
    size: "xsmall" | "small" | "medium" | "large" | "xlarge",
    type: "round" | "square"
)
    local theme = Theming:now();
    local tokens = InternalTokens(theme);

    variant = variant or "text";
    size = size or "small";
    type = type or "round";

    local sizeTokens = tokens[size] or tokens.small;
    local variantTokens = tokens[variant] or tokens.text;

    return {
        containerHeight = sizeTokens.container.height,
        containerColor = variantTokens.container and variantTokens.container.color or nil,
        containerTransparency = (variant == "text") and 1 or 0,
        containerShape = sizeTokens.container.shape[type],
        containerShapePress = sizeTokens.pressed.container.shape,
        containerShapeHover = sizeTokens.selected.container.shape[type],
        rippleColor = variantTokens.pressed["state-layer"].color,
        labelColor = variantTokens["label-text"].color,
        label = sizeTokens["label-text"],
        leadingSpace = variantTokens["leading-space"] or 12,
        trailingSpace = variantTokens["trailing-space"] or 12,
        iconLabelSpace = sizeTokens["icon-label-space"] or 8,
        iconSize = sizeTokens.icon.size
    }
end

return getTokens;