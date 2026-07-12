--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local CheckboxTokens = require(MaterialRoblox.Tokens._internal.checkbox);

local function getTokens()
	local theme = Theming:now();
	local tokens = CheckboxTokens(theme);

	return {
		containerWidth = tokens.container.width,
		containerHeight = tokens.container.height,
		selectedContainerColor = theme.color.primary,
		selectedIconColor = theme.color.onPrimary,
		unselectedOutlineColor = theme.color.onSurfaceVariant,
		unselectedOutlineWidth = tokens.unselected.outline.width,
		unselectedIconColor = theme.color.onSurfaceVariant,
		stateLayerSize = tokens["state-layer"].size,
		stateLayerShape = tokens["state-layer"].shape,
		iconSize = tokens.icon.size,
		errorOutlineColor = theme.color.error,
		errorContainerColor = theme.color.error,
		errorIconColor = theme.color.onError,
		focusIndicatorColor = theme.color.secondary,
	}
end

return getTokens