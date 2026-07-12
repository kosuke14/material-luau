--!strict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Theming = require(MaterialRoblox.Utils.Theming);
local TextFieldTokens = require(MaterialRoblox.Tokens._internal["text-fields"]);

local function getTokens(variant: "filled" | "outlined"?)
	local theme = Theming:now();
    local tokens = TextFieldTokens(theme);

	variant = variant or "outlined";

	if variant == "filled" then
		return {
			containerHeight = tokens.text-field.container.height,
			containerColor = tokens.text-field.container.color,
			containerShape = tokens.text-field.container.shape,
			outlineColor = nil,
			outlineWidth = nil,
			activeIndicatorColor = tokens.text-field["active-indicator"].color,
			activeIndicatorHeight = tokens.text-field["active-indicator"].height,
			labelFont = tokens.text-field["label-text"].font,
			labelSize = tokens.text-field["label-text"].size,
			labelColor = tokens.text-field["label-text"].color,
			labelPopulatedSize = tokens.text-field["label-text"].populated.size,
			labelFocusColor = tokens.text-field.focus["label-text"].color,
			labelErrorColor = tokens.text-field.error["label-text"].color,
			inputFont = tokens.text-field["input-text"].font,
			inputSize = tokens.text-field["input-text"].size,
			inputColor = tokens.text-field["input-text"].color,
			placeholderColor = tokens["input-text"].placeholder.color,
			supportingTextFont = tokens["supporting-text"].font,
			supportingTextSize = tokens["supporting-text"].size,
			supportingTextColor = tokens["supporting-text"].color,
			supportingTextErrorColor = tokens.text-field.error["supporting-text"].color,
			leadingIconSize = tokens.text-field["leading-icon"].size,
			leadingIconColor = tokens.text-field["leading-icon"].color,
			trailingIconSize = tokens.text-field["trailing-icon"].size,
			trailingIconColor = tokens.text-field["trailing-icon"].color,
			trailingIconErrorColor = tokens.text-field.error["trailing-icon"].color,
			errorOutlineColor = tokens.text-field.error.outline.color,
			errorActiveIndicatorColor = tokens.text-field.error["active-indicator"].color,
			focusOutlineColor = tokens.text-field.focus.outline.color,
			focusActiveIndicatorColor = tokens.text-field.focus["active-indicator"].color,
			focusActiveIndicatorHeight = tokens.text-field.focus["active-indicator"].height,
			hoverOutlineColor = tokens.text-field.hover.outline.color,
			disabledLabelColor = tokens.text-field.disabled["label-text"].color,
			disabledInputColor = tokens.text-field.disabled["input-text"].color,
			disabledContainerColor = tokens.text-field.disabled.container.color,
			disabledOutlineColor = tokens.text-field.disabled.outline.color,
			disabledActiveIndicatorHeight = tokens.text-field.disabled["active-indicator"].height,
		}
	else
		return {
			containerHeight = 56,
			containerColor = nil,
			containerShape = nil,
			outlineColor = tokens.text-field.outline.color,
			outlineWidth = tokens.text-field.outline.width,
			activeIndicatorColor = tokens.text-field["active-indicator"].color,
			activeIndicatorHeight = tokens.text-field["active-indicator"].height,
			labelFont = tokens.text-field["label-text"].font,
			labelSize = tokens.text-field["label-text"].size,
			labelColor = tokens.text-field["label-text"].color,
			labelPopulatedSize = tokens.text-field["label-text"].populated.size,
			labelFocusColor = tokens.text-field.focus["label-text"].color,
			labelErrorColor = tokens.text-field.error["label-text"].color,
			inputFont = tokens.text-field["input-text"].font,
			inputSize = tokens.text-field["input-text"].size,
			inputColor = tokens.text-field["input-text"].color,
			placeholderColor = tokens["input-text"].placeholder.color,
			supportingTextFont = tokens["supporting-text"].font,
			supportingTextSize = tokens["supporting-text"].size,
			supportingTextColor = tokens["supporting-text"].color,
			supportingTextErrorColor = tokens.text-field.error["supporting-text"].color,
			leadingIconSize = tokens.text-field["leading-icon"].size,
			leadingIconColor = tokens.text-field["leading-icon"].color,
			trailingIconSize = tokens.text-field["trailing-icon"].size,
			trailingIconColor = tokens.text-field["trailing-icon"].color,
			trailingIconErrorColor = tokens.text-field.error["trailing-icon"].color,
			errorOutlineColor = tokens.text-field.error.outline.color,
			errorActiveIndicatorColor = tokens.text-field.error["active-indicator"].color,
			focusOutlineColor = tokens.text-field.focus.outline.color,
			focusActiveIndicatorColor = tokens.text-field.focus["active-indicator"].color,
			focusActiveIndicatorHeight = tokens.text-field.focus["active-indicator"].height,
			hoverOutlineColor = tokens.text-field.hover.outline.color,
			disabledLabelColor = tokens.text-field.disabled["label-text"].color,
			disabledInputColor = tokens.text-field.disabled["input-text"].color,
			disabledContainerColor = tokens.text-field.disabled.container.color,
			disabledOutlineColor = tokens.text-field.disabled.outline.color,
			disabledActiveIndicatorHeight = tokens.text-field.disabled["active-indicator"].height,
		}
	end
end

return getTokens