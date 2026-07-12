--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local TooltipTokens = require(MaterialRoblox.Tokens.Tooltip);

local Children = Fusion.Children;

local function Tooltip(scope: Fusion.Scope, props: {
    text: string,
    attachTo: GuiObject,
})
    local visible = scope:Value(false);
    local position = scope:Value(UDim2.fromScale(0, 0));

    local tokens = scope:Computed(function(use)
        return TooltipTokens()
    end)

    local function updatePosition()
        local attachTo = props.attachTo
        if not attachTo then return end

        local absPos = attachTo.AbsolutePosition
        local absSize = attachTo.AbsoluteSize

        position:set(UDim2.new(
            (absPos.X + absSize.X / 2) / workspace.CurrentCamera.ViewportSize.X,
            0,
            absPos.Y / workspace.CurrentCamera.ViewportSize.Y,
            -8
        ))
    end

    if props.attachTo then
        table.insert(scope, props.attachTo.MouseEnter:Connect(function()
            updatePosition()
            visible:set(true)
        end))

        table.insert(scope, props.attachTo.MouseLeave:Connect(function()
            visible:set(false)
        end))
    end

    return scope:New("Frame") {
        Size = UDim2.fromScale(0, 0),
        AutomaticSize = Enum.AutomaticSize.XY,
        AnchorPoint = Vector2.new(0.5, 1),
        Position = position,
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return t.containerColor
        end),
        BorderSizePixel = 0,
        ZIndex = 10000,
        Visible = visible,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(0, 4),
            },

            scope:New("UIPadding") {
                PaddingTop = UDim.new(0, 6),
                PaddingBottom = UDim.new(0, 6),
                PaddingLeft = UDim.new(0, 8),
                PaddingRight = UDim.new(0, 8),
            },

            scope:New("TextLabel") {
                Size = UDim2.new(0, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.XY,
                BackgroundTransparency = 1,
                Text = props.text,
                FontFace = Font.fromEnum(Enum.Font.Gotham),
                TextSize = 14,
                TextColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.supportingTextColor
                end),
                TextXAlignment = Enum.TextXAlignment.Center,
            },
        }
    }
end

return Tooltip