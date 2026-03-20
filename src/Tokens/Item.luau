--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local MenuTokens = require(MaterialRoblox.Tokens._internal.menus);

local function getTokens()
	local theme = Theming:now();
	local tokens = MenuTokens(theme);

	return {
		labelColor = tokens["list-item"]["label-text"].color,
        labelFont = tokens["list-item"]["label-text"],
		height = tokens["list-item"].container.height,
		iconSize = tokens["list-item"]["with-leading-icon"]["leading-icon"].size,
        trailingColor = tokens["list-item"]["with-trailing-icon"]["trailing-icon"].color,
		leadingColor = tokens["list-item"]["with-leading-icon"]["leading-icon"].color
	}
end

return getTokens