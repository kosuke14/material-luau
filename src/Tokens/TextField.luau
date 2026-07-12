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
        containerColor = tf.container.color,
        containerShape = tf.container.shape,
        outlineColor = tf.outline.color,
        outlineWidth = tf.outline.width,
        activeIndicatorColor = tf["active-indicator"].color,
        activeIndicatorHeight = tf["active-indicator"].height,
        labelFont = tf["label-text"].font,
        labelSize = tf["label-text"].size,
        labelColor = tf["label-text"].color,
        labelPopulatedSize = tf["label-text"].populated.size,
        labelFocusColor = tf.focus["label-text"].color,
        labelErrorColor = tf.error["label-text"].color,
        inputFont = tf["input-text"].font,
        inputSize = tf["input-text"].size,
        inputColor = tf["input-text"].color,
        placeholderColor = tokens["input-text"].placeholder.color,
        supportingTextFont = tokens["supporting-text"].font,
        supportingTextSize = tokens["supporting-text"].size,
        supportingTextColor = tokens["supporting-text"].color,
        supportingTextErrorColor = tf.error["supporting-text"].color,
        leadingIconSize = tf["leading-icon"].size,
        leadingIconColor = tf["leading-icon"].color,
        trailingIconSize = tf["trailing-icon"].size,
        trailingIconColor = tf["trailing-icon"].color,
        errorOutlineColor = tf.error.outline.color,
        focusOutlineColor = tf.focus.outline.color,
        hoverOutlineColor = tf.hover.outline.color,
        disabledLabelColor = tf.disabled["label-text"].color,
        disabledOutlineColor = tf.disabled.outline.color,
    }
end

return getTokens