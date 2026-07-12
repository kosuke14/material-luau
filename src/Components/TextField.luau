--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local TextFieldTokens = require(MaterialRoblox.Tokens.TextField);
local Icon = require(MaterialRoblox.Components.Icon);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function TextField(scope: Fusion.Scope, props: {
    placeholder: string?,
    label: string?,
    value: Fusion.Value<string>,
    variant: "filled" | "outlined"?,
    error: Fusion.Value<boolean>?,
    disabled: Fusion.Value<boolean>?,
    leadingIcon: string?,
    trailingIcon: string?,
    supportingText: string?,
})
    local variant = props.variant or "outlined";
    local error = props.error or scope:Value(false);
    local disabled = props.disabled or scope:Value(false);
    local isFocused = scope:Value(false);
    local isHovering = scope:Value(false);
    local hasLeadingIcon = props.leadingIcon ~= nil;
    local hasTrailingIcon = props.trailingIcon ~= nil;

    local hasText = scope:Computed(function(use)
        return #use(props.value) > 0
    end)

    local isLabelFloated = scope:Computed(function(use)
        return use(hasText) or use(isFocused)
    end)

    local tokens = scope:Computed(function(use)
        return TextFieldTokens(variant)
    end)

    local function setupTextBox(textBox: TextBox)
        textBox:GetPropertyChangedSignal("Text"):Connect(function()
            props.value:set(textBox.Text)
        end)
    end

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, 56),
        BackgroundTransparency = 1,

        [Children] = {
            scope:New("Frame") {
                Size = UDim2.new(1, 0, 0, 56),
                BackgroundColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return variant == "filled" and t.containerColor or t.surfaceColor
                end),
                BackgroundTransparency = variant == "filled" and 0 or 1,
                BorderSizePixel = 0,

                [OnEvent "InputBegan"] = function(input: InputObject)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then isHovering:set(true) end
                end,

                [OnEvent "InputEnded"] = function(input: InputObject)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then isHovering:set(false) end
                end,

                [Children] = {
                    variant == "filled" and scope:New("UICorner") {
                        CornerRadius = UDim.new(0, 4)
                    } or nil,

                    if variant == "outlined" then
                        scope:New("UIStroke") {
                            Color = scope:Computed(function(use)
                                local t = use(tokens)
                                if use(disabled) then return t.disabledOutlineColor
                                elseif use(error) then return t.errorOutlineColor
                                elseif use(isFocused) then return t.focusOutlineColor
                                elseif use(isHovering) then return t.hoverOutlineColor
                                else return t.outlineColor end
                            end)
                        }
                    else nil,

                    hasLeadingIcon and scope:Hydrate(Icon(scope, { icon = props.leadingIcon })) {
                        Size = UDim2.fromOffset(24, 24),
                        Position = UDim2.new(0, 12, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                    } or nil,

                    hasTrailingIcon and scope:Hydrate(Icon(scope, { icon = props.trailingIcon })) {
                        Size = UDim2.fromOffset(24, 24),
                        Position = UDim2.new(1, -12, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                    } or nil,

                    props.label and scope:New("TextLabel") {
                        BackgroundTransparency = 1,
                        AutomaticSize = Enum.AutomaticSize.XY,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Text = props.label,

                        Position = scope:Spring(
                            scope:Computed(function(use)
                                local t = use(tokens)
                                return use(isLabelFloated)
                                    and UDim2.new(0, hasLeadingIcon and 48 or 16, 0, 4)
                                    or UDim2.new(0, hasLeadingIcon and 48 or 16, 0.5, 0)
                            end),
                            37.4165738677, 0.9
                        ),

                        TextSize = scope:Spring(
                            scope:Computed(function(use)
                                local t = use(tokens)
                                return use(isLabelFloated) and t.labelPopulatedSize or t.labelSize
                            end),
                            37.4165738677, 0.9
                        ),
                        FontFace = Font.fromEnum(Enum.Font.Gotham),

                        TextColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            if use(disabled) then return t.disabledLabelColor
                            elseif use(error) then return t.labelErrorColor
                            elseif use(isFocused) then return t.labelFocusColor
                            else return t.labelColor end
                        end),
                    } or nil,

                    props.placeholder and scope:New("TextLabel") {
                        Size = UDim2.new(1, 0, 1, 0),
                        Position = UDim2.fromScale(0, 0),
                        BackgroundTransparency = 1,
                        Text = props.placeholder,
                        FontFace = Font.fromEnum(Enum.Font.Gotham),
                        TextSize = 16,
                        TextColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            return t.placeholderColor
                        end),
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        TextTransparency = scope:Computed(function(use)
                            if use(hasText) or not use(isFocused) then
                                return 1
                            else
                                return 0
                            end
                        end),

                        [Children] = {
                            scope:New("UIPadding") {
                                PaddingLeft = UDim.new(0, hasLeadingIcon and 48 or 16),
                                PaddingRight = UDim.new(0, hasTrailingIcon and 48 or 16),
                                PaddingTop = UDim.new(0, props.label and 8 or 0),
                            }
                        }
                    } or nil,

                    scope:New("TextBox") {
                        Size = UDim2.new(1, 0, 1, 0),
                        BackgroundTransparency = 1,
                        ClearTextOnFocus = false,
                        Text = "",
                        PlaceholderText = "",
                        FontFace = Font.fromEnum(Enum.Font.Gotham),
                        TextSize = 16,
                        TextColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            return t.inputColor
                        end),
                        TextXAlignment = Enum.TextXAlignment.Left,

                        [OnEvent "Focused"] = function(textBox)
                            isFocused:set(true)
                            setupTextBox(textBox)
                        end,
                        [OnEvent "FocusLost"] = function(textBox)
                            isFocused:set(false)
                        end,

                        [Children] = {
                            scope:New("UIPadding") {
                                PaddingLeft = UDim.new(0, hasLeadingIcon and 48 or 16),
                                PaddingRight = UDim.new(0, hasTrailingIcon and 48 or 16),
                                PaddingTop = UDim.new(0, props.label and 8 or 0),
                            }
                        }
                    },

                    props.supportingText and scope:New("TextLabel") {
                        Size = UDim2.new(1, 0, 0, 20),
                        Position = UDim2.fromScale(0, 1),
                        BackgroundTransparency = 1,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Text = props.supportingText,
                        FontFace = Font.fromEnum(Enum.Font.Gotham),
                        TextSize = 12,
                        TextColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            return use(error) and t.supportingTextErrorColor or t.supportingTextColor
                        end),
                    } or nil,
                }
            }
        }
    }
end

return TextField