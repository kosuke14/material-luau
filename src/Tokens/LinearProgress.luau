--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local ProgressTokens = require(MaterialRoblox.Tokens._internal["progress-indicators"]);

local function getTokens()
	local theme = Theming:now();
	local tokens = ProgressTokens(theme);

	return {
		activeIndicatorColor = theme.color.primary,
		activeIndicatorThickness = tokens.linear["active-indicator"].thickness,
		trackColor = theme.color.surfaceContainerHighest,
		trackThickness = tokens.linear.track.thickness,
		trackHeight = tokens.linear.height,
	}
end

return getTokens