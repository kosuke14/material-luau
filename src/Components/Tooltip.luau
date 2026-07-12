--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local TooltipTokens = require(MaterialRoblox.Tokens.Tooltip);

local Children = Fusion.Children;

local function Tooltip(scope: Fusion.Scope, props: {
    text: string,
    attachTo: GuiObject,
})
    local Tokens = TooltipTokens();
    local visible = scope:Value(false);

    table.insert(scope, props.attachTo.MouseEnter:Connect(function()
        visible:set(true)
    end))

    table.insert(scope, props.attachTo.MouseLeave:Connect(function()
        visible:set(false)
    end))

    return scope:New("Frame") {
        Size = UDim2.fromScale(0, 0),
        AutomaticSize = Enum.AutomaticSize.XY,
        AnchorPoint = Vector2.new(0.5, 1),
        BackgroundColor3 = Tokens.containerColor,
        BorderSizePixel = 0,
        ZIndex = 10000,
        Visible = visible,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = Tokens.containerShape,
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
                FontFace = Tokens.supportingTextFont,
                TextSize = Tokens.supportingTextSize,
                TextColor3 = Tokens.supportingTextColor,
                TextXAlignment = Enum.TextXAlignment.Center,
            },
        }
    }
end

return Tooltip