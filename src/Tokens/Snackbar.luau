--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local SnackbarTokens = require(MaterialRoblox.Tokens._internal.snackbar);

local function getTokens()
	local theme = Theming:now();
	local tokens = SnackbarTokens(theme);

	return {
		containerColor = tokens.container.color,
		containerShape = tokens.container.shape,
		supportingTextFont = tokens["supporting-text"].font,
		supportingTextSize = tokens["supporting-text"].size,
		supportingTextColor = theme.color.inverseOnSurface,
		actionLabelFont = tokens.action["label-text"].font,
		actionLabelSize = tokens.action["label-text"].size,
		actionLabelColor = theme.color.inversePrimary,
		iconColor = theme.color.inverseOnSurface,
		singleLineHeight = tokens["with-single-line"].container.height,
		twoLineHeight = tokens["with-two-lines"].container.height,
	}
end

return getTokens