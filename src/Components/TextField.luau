--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local TextFieldTokens = require(MaterialRoblox.Tokens.TextField);
local Icon = require(MaterialRoblox.Components.Icon);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;
local Out = Fusion.Out;

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
    local Tokens = TextFieldTokens(props.variant or "outlined");
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

    local textBoxRef = scope:Value(nil)

    -- Connect to TextBox text changes
    scope:Observer(textBoxRef):onChange(function()
        local textBox = Fusion.peek(textBoxRef)
        if textBox then
            table.insert(scope, textBox:GetPropertyChangedSignal("Text"):Connect(function()
                props.value:set(textBox.Text)
            end))
        end
    end)

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, Tokens.containerHeight + (props.supportingText and 24 or 0)),
        BackgroundTransparency = 1,

        [Children] = {
            scope:New("Frame") {
                Size = UDim2.new(1, 0, 0, Tokens.containerHeight),
                BackgroundColor3 = variant == "filled" and Tokens.containerColor or Color3.new(1, 1, 1),
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
                        CornerRadius = Tokens.containerShape
                    } or nil,

                    if variant == "outlined" then
                        scope:New("UIStroke") {
                            Color = scope:Computed(function(use)
                                if use(disabled) then return Tokens.disabledOutlineColor
                                elseif use(error) then return Tokens.errorOutlineColor
                                elseif use(isFocused) then return Tokens.focusOutlineColor
                                elseif use(isHovering) then return Tokens.hoverOutlineColor
                                else return Tokens.outlineColor end
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
                                return use(isLabelFloated)
                                    and UDim2.new(0, hasLeadingIcon and 48 or 16, 0, 4)
                                    or UDim2.new(0, hasLeadingIcon and 48 or 16, 0.5, 0)
                            end),
                            37.4165738677, 0.9
                        ),

                        TextSize = scope:Spring(
                            scope:Computed(function(use)
                                return use(isLabelFloated) and Tokens.labelPopulatedSize or Tokens.labelSize
                            end),
                            37.4165738677, 0.9
                        ),
                        FontFace = Tokens.labelFont,

                        TextColor3 = scope:Computed(function(use)
                            if use(disabled) then return Tokens.disabledLabelColor
                            elseif use(error) then return Tokens.labelErrorColor
                            elseif use(isFocused) then return Tokens.labelFocusColor
                            else return Tokens.labelColor end
                        end),
                    } or nil,

                    props.placeholder and scope:New("TextLabel") {
                        Size = UDim2.new(1, 0, 1, 0),
                        Position = UDim2.fromScale(0, 0),
                        BackgroundTransparency = 1,
                        Text = props.placeholder,
                        FontFace = Tokens.inputFont,
                        TextSize = Tokens.inputSize,
                        TextColor3 = Tokens.placeholderColor,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        -- Visible when no text AND not focused, hidden otherwise
                        TextTransparency = scope:Computed(function(use)
                            if use(hasText) or use(isFocused) then
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
                        FontFace = Tokens.inputFont,
                        TextSize = Tokens.inputSize,
                        TextColor3 = Tokens.inputColor,
                        TextXAlignment = Enum.TextXAlignment.Left,

                        [OnEvent "Focused"] = function() isFocused:set(true) end,
                        [OnEvent "FocusLost"] = function(textBox)
                            isFocused:set(false)
                            props.value:set(textBox.Text)
                        end,

                        [Out "Text"] = textBoxRef,

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
                        FontFace = Tokens.supportingTextFont,
                        TextSize = Tokens.supportingTextSize,
                        TextColor3 = scope:Computed(function(use)
                            return use(error) and Tokens.supportingTextErrorColor or Tokens.supportingTextColor
                        end),
                    } or nil,
                }
            }
        }
    }
end

return TextField
