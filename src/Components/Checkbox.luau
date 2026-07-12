--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local CheckboxTokens = require(MaterialRoblox.Tokens.Checkbox);
local Ripple = require(MaterialRoblox.Components.Ripple);
local showComputed = require(MaterialRoblox.Utils.ShowComputed);
local Icon = require(MaterialRoblox.Components.Icon);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Checkbox(scope: Fusion.Scope, props: {
    active: Fusion.Value<boolean>,
    error: Fusion.Value<boolean>?,
    disabled: Fusion.Value<boolean>?,
    onClick: (() -> ())?
})
    local Tokens = CheckboxTokens();
    local isHovering = scope:Value(false);
    local isPressed = scope:Value(false);
    local error = props.error or scope:Value(false);
    local disabled = props.disabled or scope:Value(false);

    return scope:New("ImageButton") {
        Size = UDim2.fromOffset(Tokens.stateLayerSize, Tokens.stateLayerSize),
        BackgroundTransparency = 1,
        ImageTransparency = 1,
        AutoButtonColor = false,

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
            if not Fusion.peek(disabled) then
                props.active:set(not Fusion.peek(props.active))
                if props.onClick then props.onClick() end
            end
        end,

        [Children] = {
            Ripple(scope, {
                borderRadius = Tokens.stateLayerShape,
            }),

            scope:New("Frame") {
                Size = UDim2.fromOffset(Tokens.containerWidth, Tokens.containerHeight),
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                BackgroundColor3 = scope:Computed(function(use)
                    if use(props.active) then
                        return use(error) and Tokens.errorContainerColor or Tokens.selectedContainerColor
                    else
                        return Tokens.surfaceColor
                    end
                end),
                BackgroundTransparency = scope:Computed(function(use)
                    return use(props.active) and 0 or 1
                end),

                [Children] = {
                    scope:New("UICorner") {
                        CornerRadius = UDim.new(0, 2)
                    },

                    showComputed(scope, scope:Computed(function(use)
                        return not use(props.active)
                    end), function()
                        return scope:New("UIStroke") {
                            Thickness = Tokens.unselectedOutlineWidth,
                            Color = scope:Computed(function(use)
                                return use(error) and Tokens.errorOutlineColor or Tokens.unselectedOutlineColor
                            end)
                        }
                    end),

                    showComputed(scope, scope:Computed(function(use)
                        return use(props.active)
                    end), function()
                        return scope:Hydrate(Icon(scope, {
                            icon = "check",
                            fill = true,
                        })) {
                            Size = UDim2.fromOffset(Tokens.iconSize, Tokens.iconSize),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            Position = UDim2.fromScale(0.5, 0.5),
                            ImageColor3 = scope:Computed(function(use)
                                return use(error) and Tokens.errorIconColor or Tokens.selectedIconColor
                            end),
                        }
                    end),
                }
            },
        }
    }
end

return Checkbox