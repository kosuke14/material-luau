--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local FABTokens = require(MaterialRoblox.Tokens.FloatingActionButton);
local Icon = require(MaterialRoblox.Components.Icon);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function FloatingActionButton(scope: Fusion.Scope, props: {
    icon: string,
    onClick: () -> ()?,
    variant: "primary" | "secondary" | "tertiary" | "surface"?,
    size: "small" | "medium" | "large"?,
})
    local tokens = scope:Computed(function(use)
        return FABTokens(props.variant, props.size)
    end)

    return scope:New("ImageButton") {
        Size = UDim2.new(0, 56, 0, 56),
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return t.containerColor
        end),
        ImageTransparency = 1,
        AutoButtonColor = false,

        [OnEvent "MouseButton1Click"] = props.onClick,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(0, 16),
            },

            Ripple(scope, {
                borderRadius = UDim.new(0, 16),
            }),

            scope:Hydrate(Icon(scope, {
                icon = props.icon,
            })) {
                Size = UDim2.fromOffset(24, 24),
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                ImageColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.iconColor
                end),
            }
        }
    }
end

return FloatingActionButton