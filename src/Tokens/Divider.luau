--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);

local function getTokens()
	local theme = Theming:now();

	return {
		color = theme.color.outlineVariant,
		thickness = 1,
	}
end

return getTokens