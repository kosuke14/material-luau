--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local InternalTokens = require(MaterialRoblox.Tokens._internal.dialogs);

local function getTokens()
	local theme = Theming:now();
    local tokens = InternalTokens(theme);

	return {
        scrim = theme.color.scrim,
        scrimTransparency = 1 - .32,
        containerColor = tokens.container.color,
        cornerRadius = theme.shape.cornerExtraLarge,
        headlineText = tokens.headline,
        bodyText = tokens.subhead,
        headlineColor = tokens.headline.color,
        bodyColor = tokens.subhead.color
	}
end

return getTokens