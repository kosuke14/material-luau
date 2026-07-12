--!nonstrict
--[[
	Material Design 3 Card Component
	
	Spec: https://m3.material.io/components/cards/specs
	
	Variants:
	- Filled: Surface container highest background
	- Outlined: Surface background with 1dp outline
	- Elevated: Surface container high background with shadow
	
	State layers:
	- Hover: 8% onSurface
	- Pressed: 12% onSurface
	- Dragged: 8% onSurface
]]

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
    local Tokens = CardTokens();
    local variant = props.variant or "filled";
    local isHovering = scope:Value(false);
    local isPressed = scope:Value(false);

    -- Container background based on variant
    local containerColor = scope:Computed(function(use)
        if variant == "outlined" then
            return Color3.new(1, 1, 1) -- Surface
        else
            return Tokens.containerColor -- Surface container highest
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
            -- Corner radius (M3 spec: cornerMedium = 12dp)
            scope:New("UICorner") {
                CornerRadius = Tokens.containerShape,
            },

            -- Outline for outlined variant
            if variant == "outlined" then
                scope:New("UIStroke") {
                    Thickness = Tokens.outlineWidth,
                    Color = Tokens.outlineColor,
                }
            else nil,

            -- State layer (M3 spec: hover 8%, pressed 12%)
            scope:New("Frame") {
                Size = UDim2.fromScale(1, 1),
                BackgroundColor3 = Color3.new(0, 0, 0),
                BackgroundTransparency = scope:Computed(function(use)
                    if use(isPressed) then
                        return 1 - 0.12 -- 12% opacity when pressed
                    elseif use(isHovering) then
                        return 1 - 0.08 -- 8% opacity when hovering
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

            -- Content container with padding
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