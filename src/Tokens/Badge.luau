--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local BadgeTokens = require(MaterialRoblox.Tokens._internal.badges);

local function getTokens()
	local theme = Theming:now();
	local tokens = BadgeTokens(theme);

	return {
		smallSize = tokens.size,
		smallShape = tokens.shape,
		smallColor = theme.color.error,
		largeSize = tokens.large.size,
		largeShape = tokens.large.shape,
		largeColor = theme.color.error,
		largeLabelFont = tokens.large["label-text"].font,
		largeLabelSize = tokens.large["label-text"].size,
		largeLabelColor = theme.color.onError,
	}
end

return getTokens