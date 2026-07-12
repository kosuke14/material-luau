--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local DividerTokens = require(MaterialRoblox.Tokens._internal.divider);

local function getTokens()
	local theme = Theming:now();
    local tokens = DividerTokens(theme);

	return {
		color = tokens.color,
		thickness = tokens.thickness,
	}
end

return getTokens