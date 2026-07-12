--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local SnackbarTokens = require(MaterialRoblox.Tokens.Snackbar);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Snackbar(scope: Fusion.Scope, props: {
    message: string,
    actionText: string?,
    onAction: (() -> ())?,
    onClose: (() -> ())?,
    open: Fusion.Value<boolean>,
})
    local isFullyClosed = scope:Value(Fusion.peek(props.open) == false);

    scope:Observer(props.open):onChange(function()
        if Fusion.peek(props.open) then
            isFullyClosed:set(false)
        else
            task.delay(0.35, function()
                if not Fusion.peek(props.open) then
                    isFullyClosed:set(true)
                end
            end)
        end
    end)

    local tokens = scope:Computed(function(use)
        return SnackbarTokens()
    end)

    local containerHeight = #props.message > 40 and 68 or 48;

    return scope:New("Frame") {
        Size = UDim2.new(1, -32, 0, containerHeight),
        AnchorPoint = Vector2.new(0.5, 0),
        Position = scope:Spring(
            scope:Computed(function(use)
                return use(props.open) and UDim2.new(0.5, 0, 1, -16) or UDim2.new(0.5, 0, 1, 80)
            end),
            25, 1.5
        ),
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return t.containerColor
        end),
        BorderSizePixel = 0,
        Visible = scope:Computed(function(use)
            return use(props.open) or not use(isFullyClosed)
        end),

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(0, 4),
            },

            scope:New("UIPadding") {
                PaddingLeft = UDim.new(0, 16),
                PaddingRight = UDim.new(0, 16),
                PaddingTop = UDim.new(0, 6),
                PaddingBottom = UDim.new(0, 6),
            },

            scope:New("TextLabel") {
                Size = UDim2.new(1, props.actionText and -120 or 0, 1, 0),
                BackgroundTransparency = 1,
                Text = props.message,
                FontFace = Font.fromEnum(Enum.Font.Gotham),
                TextSize = 14,
                TextColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.supportingTextColor
                end),
                TextWrapped = true,
                TextXAlignment = Enum.TextXAlignment.Left,
            },

            props.actionText and scope:New("TextButton") {
                Size = UDim2.new(0, 0, 1, 0),
                AutomaticSize = Enum.AutomaticSize.X,
                Position = UDim2.new(1, -56, 0, 0),
                BackgroundTransparency = 1,
                Text = props.actionText,
                FontFace = Font.fromEnum(Enum.Font.GothamMedium),
                TextSize = 14,
                TextColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.actionLabelColor
                end),

                [OnEvent "MouseButton1Click"] = function()
                    if props.onAction then props.onAction() end
                end,
            } or nil,

            props.onClose and scope:New("ImageButton") {
                Size = UDim2.fromOffset(24, 24),
                Position = UDim2.new(1, -8, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                Image = "rbxassetid://6031264853",
                ImageColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.iconColor
                end),

                [OnEvent "MouseButton1Click"] = function()
                    if props.onClose then props.onClose() end
                end,
            } or nil,
        }
    }
end

return Snackbar