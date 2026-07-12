--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local RadioButtonTokens = require(MaterialRoblox.Tokens.RadioButton);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function RadioButton(scope: Fusion.Scope, props: {
    active: Fusion.Value<boolean>,
    disabled: Fusion.Value<boolean>?,
    onClick: (() -> ())?
})
    local disabled = props.disabled or scope:Value(false);

    local tokens = scope:Computed(function(use)
        return RadioButtonTokens()
    end)

    return scope:New("ImageButton") {
        Size = UDim2.fromOffset(40, 40),
        BackgroundTransparency = 1,
        ImageTransparency = 1,
        AutoButtonColor = false,

        [OnEvent "MouseButton1Click"] = function()
            if not Fusion.peek(disabled) and props.onClick then
                props.onClick()
            end
        end,

        [Children] = {
            Ripple(scope, {
                borderRadius = UDim.new(1, 0),
            }),

            scope:New("Frame") {
                Size = UDim2.fromOffset(20, 20),
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                BackgroundTransparency = 1,

                [Children] = {
                    scope:New("UIStroke") {
                        Thickness = 2,
                        Color = scope:Computed(function(use)
                            local t = use(tokens)
                            if use(disabled) then
                                return use(props.active) and t.disabledSelectedIconColor or t.disabledUnselectedIconColor
                            else
                                return use(props.active) and t.selectedIconColor or t.unselectedIconColor
                            end
                        end)
                    },

                    scope:New("UICorner") {
                        CornerRadius = UDim.new(1, 0)
                    },

                    scope:New("Frame") {
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        Position = UDim2.fromScale(0.5, 0.5),
                        BackgroundColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            if use(disabled) then
                                return t.disabledSelectedIconColor
                            else
                                return use(props.active) and t.selectedIconColor or t.unselectedIconColor
                            end
                        end),

                        Size = scope:Spring(
                            scope:Computed(function(use)
                                return use(props.active) and UDim2.fromOffset(10, 10) or UDim2.fromOffset(0, 0)
                            end),
                            37.4165738677, 0.9
                        ),

                        [Children] = {
                            scope:New("UICorner") {
                                CornerRadius = UDim.new(1, 0)
                            }
                        }
                    }
                }
            },
        }
    }
end

return RadioButton