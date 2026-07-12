--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local ChipTokens = require(MaterialRoblox.Tokens._internal.chips);

local function getTokens()
	local theme = Theming:now();
    local tokens = ChipTokens(theme);

	return {
		containerHeight = tokens.container.height,
		containerShape = tokens.container.shape,
		labelFont = tokens["label-text"].font,
		labelSize = tokens["label-text"].size,
		labelColor = theme.color.onSurface,
		outlineColor = tokens.outline.color,
		outlineWidth = tokens.outline.width,
		selectedContainerColor = tokens.selected.container.color,
		selectedLabelColor = tokens.selected["label-text"].color,
		unselectedLabelColor = tokens.unselected["label-text"].color,
		unselectedOutlineColor = tokens.unselected.outline.color,
		iconSize = tokens["with-icon"].icon.size,
		iconColor = theme.color.primary,
		selectedIconColor = tokens["with-icon"].selected.icon.color,
		unselectedIconColor = tokens["with-icon"].unselected.icon.color,
	}
end

return getTokens