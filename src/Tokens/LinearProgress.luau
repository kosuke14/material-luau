--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local ProgressTokens = require(MaterialRoblox.Tokens._internal["progress-indicators"]);

local function getTokens()
	local theme = Theming:now();
    local tokens = ProgressTokens(theme);

	return {
		activeIndicatorColor = tokens["active-indicator"].color,
		activeIndicatorThickness = tokens.linear["active-indicator"].thickness,
		trackColor = tokens.track.color,
		trackThickness = tokens.linear.track.thickness,
		trackHeight = tokens.linear.height,
		stopIndicatorSize = tokens["stop-indicator"].size,
		stopIndicatorColor = tokens["stop-indicator"].color,
		fourColorOne = tokens["four-color"]["active-indicator"].one.color,
		fourColorTwo = tokens["four-color"]["active-indicator"].two.color,
		fourColorThree = tokens["four-color"]["active-indicator"].three.color,
		fourColorFour = tokens["four-color"]["active-indicator"].four.color,
	}
end

return getTokens