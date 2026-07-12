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
    local isHovering = scope:Value(false);
    local isPressed = scope:Value(false);
    local error = props.error or scope:Value(false);
    local disabled = props.disabled or scope:Value(false);

    local tokens = scope:Computed(function(use)
        return CheckboxTokens()
    end)

    return scope:New("ImageButton") {
        Size = UDim2.fromOffset(40, 40),
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
                borderRadius = UDim.new(1, 0),
            }),

            scope:New("Frame") {
                Size = UDim2.fromOffset(18, 18),
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                BackgroundColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    if use(props.active) then
                        return use(error) and t.errorContainerColor or t.selectedContainerColor
                    else
                        return t.surfaceColor
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
                            Thickness = 2,
                            Color = scope:Computed(function(use)
                                local t = use(tokens)
                                return use(error) and t.errorOutlineColor or t.unselectedOutlineColor
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
                            Size = UDim2.fromOffset(18, 18),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            Position = UDim2.fromScale(0.5, 0.5),
                            ImageColor3 = scope:Computed(function(use)
                                local t = use(tokens)
                                return use(error) and t.errorIconColor or t.selectedIconColor
                            end),
                        }
                    end),
                }
            },
        }
    }
end

return Checkbox;