--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local CardTokens = require(MaterialRoblox.Tokens.Card);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Card(scope: Fusion.Scope, props: {
    onClick: (() -> ())?,
    [typeof(Fusion.Children)]: { Instance }?,
})
    local Tokens = CardTokens();
    local isHovering = scope:Value(false);
    local isPressed = scope:Value(false);

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Tokens.containerColor,
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
            end
        end,

        [OnEvent "MouseButton1Click"] = function()
            if props.onClick then props.onClick() end
        end,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = Tokens.containerShape,
            },

            -- State layer for hover/press (M3 spec)
            scope:New("Frame") {
                Size = UDim2.fromScale(1, 1),
                BackgroundColor3 = Color3.new(0, 0, 0),
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
                        CornerRadius = Tokens.containerShape,
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