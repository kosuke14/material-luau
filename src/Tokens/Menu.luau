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
		shape = tokens.container.shape,
        verticalPadding = tokens.container.shape,
        containerColor = tokens.container.color
	}
end

return getTokens