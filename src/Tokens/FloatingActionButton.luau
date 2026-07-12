--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local FABTokens = require(MaterialRoblox.Tokens._internal.fab);

local function getTokens(variant: "primary" | "secondary" | "tertiary" | "surface"?, size: "small" | "medium" | "large"?)
	local theme = Theming:now();
	local tokens = FABTokens(theme);

	variant = variant or "primary";
	size = size or "medium";

	local v = tokens[variant] or tokens.primary;

	return {
		containerWidth = v.container.width or tokens.container.width,
		containerHeight = v.container.height or tokens.container.height,
		containerColor = v.container.color or tokens.primary.container.color,
		containerShape = v.container.shape or tokens.container.shape,
		iconColor = v.icon.color or theme.color.onPrimary,
		iconSize = v.icon.size or tokens.icon.size,
	}
end

return getTokens