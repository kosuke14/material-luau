--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local TooltipTokens = require(MaterialRoblox.Tokens._internal.tooltips);

local function getTokens()
	local theme = Theming:now();
    local tokens = TooltipTokens(theme);

	return {
		containerColor = tokens.container.color,
		containerShape = tokens.container.shape,
		supportingTextFont = tokens["supporting-text"].font,
		supportingTextSize = tokens["supporting-text"].size,
		supportingTextColor = tokens["supporting-text"].color,
	}
end

return getTokens