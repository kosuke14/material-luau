--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local SwitchTokens = require(MaterialRoblox.Tokens._internal.switch);

local function getTokens()
	local theme = Theming:now();
    local tokens = SwitchTokens(theme);

	return {
		trackColorUnselected = tokens.unselected.track.color,
        trackColorSelected = tokens.selected.track.color,
        handleColorUnselected = tokens.unselected.handle.color,
        handleColorSelected = tokens.selected.handle.color,
        handleUnselectedSize = tokens.unselected.handle.width,
        handleSelectedSize = tokens.selected.handle.width,
        containerHeight = tokens.track.height,
        containerWidth = tokens.track.width,
        handlePressedSize = tokens.pressed.handle.width,
        trackUnselectedOutlineColor = tokens.unselected.track.outline.color,
        handleUnselectedHoverColor = tokens.unselected.hover.handle.color,
        handleSelectedHoverColor = tokens.selected.hover.handle.color,
        stateLayerColor = theme.color.onSurface,
        stateLayerTransparency = 1 - 0.08
	}
end

return getTokens