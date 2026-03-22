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

    return {
        containerHeight = tokens[size].container.height,
        containerColor = tokens[variant].container and tokens[variant].container.color or nil,
        containerTransparency = (variant == "text") and 1 or 0,
        containerShape = tokens[size].container.shape[type],
        containerShapePress = tokens[size].pressed.container.shape,
        containerShapeHover = tokens[size].selected.container.shape[type],
        rippleColor = tokens[variant].pressed["state-layer"].color,
        labelColor = tokens[variant]["label-text"].color,
        label = tokens[size]["label-text"],
        leadingSpace = tokens[size]["leading-space"],
        trailingSpace = tokens[size]["trailing-space"],
        iconLabelSpace = tokens[size]['icon-label-space'],
        iconSize = tokens[size].icon.size
    }
end

return getTokens;