--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local BadgeTokens = require(MaterialRoblox.Tokens._internal.badges);

local function getTokens()
	local theme = Theming:now();
    local tokens = BadgeTokens(theme);

	return {
		smallSize = tokens.size,
		smallShape = tokens.shape,
		smallColor = tokens.color,
		largeSize = tokens.large.size,
		largeShape = tokens.large.shape,
		largeColor = tokens.large.color,
		largeLabelFont = tokens.large["label-text"].font,
		largeLabelSize = tokens.large["label-text"].size,
		largeLabelColor = tokens.large["label-text"].color,
	}
end

return getTokens