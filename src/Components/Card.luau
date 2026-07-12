--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local CardTokens = require(MaterialRoblox.Tokens.Card);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Card(scope: Fusion.Scope, props: {
    variant: "filled" | "outlined" | "elevated"?,
    onClick: (() -> ())?,
    [typeof(Fusion.Children)]: { Instance }?,
})
    local variant = props.variant or "filled";
    local isHovering = scope:Value(false);
    local isPressed = scope:Value(false);

    local tokens = scope:Computed(function(use)
        return CardTokens()
    end)

    local containerColor = scope:Computed(function(use)
        local t = use(tokens)
        if variant == "outlined" then
            return t.surfaceColor
        else
            return t.containerColor
        end
    end)

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = containerColor,
        BorderSizePixel = 0,

        [OnEvent "InputBegan"] = function(input: InputObject)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                isHovering:set(true)
            elseif input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                isPressed:set(true)
            end
        end,

        [OnEvent "InputEnded"] = function(input: InputObject)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                isHovering:set(false)
            elseif input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                isPressed:set(false)
                if props.onClick then props.onClick() end
            end
        end,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(0, 12),
            },

            if variant == "outlined" then
                scope:New("UIStroke") {
                    Thickness = 1,
                    Color = scope:Computed(function(use)
                        local t = use(tokens)
                        return t.outlineColor
                    end),
                }
            else nil,

            scope:New("Frame") {
                Size = UDim2.fromScale(1, 1),
                BackgroundColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.stateLayerColor
                end),
                BackgroundTransparency = scope:Computed(function(use)
                    if use(isPressed) then
                        return 1 - 0.12
                    elseif use(isHovering) then
                        return 1 - 0.08
                    else
                        return 1
                    end
                end),
                BorderSizePixel = 0,

                [Children] = {
                    scope:New("UICorner") {
                        CornerRadius = UDim.new(0, 12),
                    },
                }
            },

            scope:New("Frame") {
                Size = UDim2.new(1, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,

                [Children] = {
                    scope:New("UIPadding") {
                        PaddingTop = UDim.new(0, 16),
                        PaddingBottom = UDim.new(0, 16),
                        PaddingLeft = UDim.new(0, 16),
                        PaddingRight = UDim.new(0, 16),
                    },
                    props[Children],
                }
            }
        }
    }
end

return Card