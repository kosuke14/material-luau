--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local InternalTokens = require(MaterialRoblox.Tokens._internal["progress-indicators"]);

local function getTokens(
    thick: boolean
)
	local theme = Theming:now();
    local tokens = InternalTokens(theme);

    local respectiveTokens = thick and tokens.circular.thick or tokens.circular

	return {
        size = respectiveTokens.size,
        thickness = respectiveTokens.track.thickness,
        activeIndicatorThickness = respectiveTokens['active-indicator'].thickness,
        gap = respectiveTokens["track-active-indicator-space"],
        trackColor = tokens.track.color,
        activeIndicatorColor = tokens["active-indicator"].color
	}
end

return getTokens