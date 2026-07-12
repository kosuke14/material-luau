--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local RadioButtonTokens = require(MaterialRoblox.Tokens._internal["radio-button"]);

local function getTokens()
	local theme = Theming:now();
	local tokens = RadioButtonTokens(theme);

	return {
		selectedIconColor = theme.color.primary,
		unselectedIconColor = theme.color.onSurfaceVariant,
		stateLayerSize = tokens["state-layer"].size,
		iconSize = tokens.icon.size,
		disabledSelectedIconColor = theme.color.onSurface,
		disabledUnselectedIconColor = theme.color.onSurface,
	}
end

return getTokens