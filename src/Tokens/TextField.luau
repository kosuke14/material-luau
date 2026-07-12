--!strict
local MaterialRoblox = script.Parent.Parent;
local Theming = require(MaterialRoblox.Utils.Theming);
local TextFieldTokens = require(MaterialRoblox.Tokens._internal["text-fields"]);

local function getTokens(variant: "filled" | "outlined"?)
	local theme = Theming:now();
	local tokens = TextFieldTokens(theme);
	local tf = tokens["text-field"];

	variant = variant or "outlined";

	return {
		containerHeight = tf.container.height,
		containerColor = variant == "filled" and tf.container.color or theme.color.surfaceContainerHighest,
		containerShape = tf.container.shape,
		surfaceColor = theme.color.surface,
		outlineColor = tf.outline.color,
		outlineWidth = tf.outline.width,
		activeIndicatorColor = tf["active-indicator"].color,
		activeIndicatorHeight = tf["active-indicator"].height,
		labelFont = tf["label-text"].font,
		labelSize = tf["label-text"].size,
		labelColor = theme.color.onSurfaceVariant,
		labelPopulatedSize = tf["label-text"].populated.size,
		labelFocusColor = tf.focus["label-text"].color,
		labelErrorColor = tf.error["label-text"].color,
		inputFont = tf["input-text"].font,
		inputSize = tf["input-text"].size,
		inputColor = theme.color.onSurface,
		placeholderColor = theme.color.onSurfaceVariant,
		supportingTextFont = tokens["supporting-text"].font,
		supportingTextSize = tokens["supporting-text"].size,
		supportingTextColor = theme.color.onSurfaceVariant,
		supportingTextErrorColor = tf.error["supporting-text"].color,
		leadingIconSize = tf["leading-icon"].size,
		leadingIconColor = theme.color.onSurfaceVariant,
		trailingIconSize = tf["trailing-icon"].size,
		trailingIconColor = theme.color.onSurfaceVariant,
		errorOutlineColor = tf.error.outline.color,
		focusOutlineColor = tf.focus.outline.color,
		hoverOutlineColor = tf.hover.outline.color,
		disabledLabelColor = theme.color.onSurface,
		disabledOutlineColor = theme.color.onSurface,
	}
end

return getTokens