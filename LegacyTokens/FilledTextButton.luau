--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);

local function getTokens(
    size: "xsmall" | "small" | "medium" | "large" | "xlarge"
)
	local theme = Theming:now();
    local width, height;

	return {
		labelText = theme.typography.label.large,
		labelColor = theme.color.onPrimary,
		containerColor = theme.color.primary,
		height = 40;
		paddingLeft = 16,
		paddingRight = 16,
        iconGap = UDim.new(0, 8),
		shape = UDim.new(0, 20),
		shapePressed = UDim.new(0, 8),
		shapeHover = UDim.new(0, 12),
		rippleColor = theme.color.onPrimary,
	}
end

return getTokens