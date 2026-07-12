--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local ChipTokens = require(MaterialRoblox.Tokens.Chip);
local Icon = require(MaterialRoblox.Components.Icon);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Chip(scope: Fusion.Scope, props: {
    label: string,
    selected: Fusion.Value<boolean>?,
    icon: string?,
    onClick: (() -> ())?,
    disabled: Fusion.Value<boolean>?,
})
    local selected = props.selected or scope:Value(false);
    local disabled = props.disabled or scope:Value(false);
    local hasIcon = props.icon ~= nil;

    -- Reactive tokens
    local tokens = scope:Computed(function(use)
        return ChipTokens()
    end)

    return scope:New("ImageButton") {
        Size = UDim2.new(0, 0, 0, 32),
        AutomaticSize = Enum.AutomaticSize.X,
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return use(selected) and t.selectedContainerColor or t.surfaceColor
        end),
        BackgroundTransparency = scope:Computed(function(use)
            return use(selected) and 0 or 1
        end),
        ImageTransparency = 1,
        AutoButtonColor = false,

        [OnEvent "MouseButton1Click"] = function()
            if not Fusion.peek(disabled) then
                if props.selected then selected:set(not Fusion.peek(selected)) end
                if props.onClick then props.onClick() end
            end
        end,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(0, 8),
            },

            scope:New("UIStroke") {
                Thickness = scope:Computed(function(use)
                    local t = use(tokens)
                    return use(selected) and 0 or t.outlineWidth
                end),
                Color = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.unselectedOutlineColor
                end),
            },

            Ripple(scope, {
                borderRadius = UDim.new(0, 8),
            }),

            scope:New("Frame") {
                Size = UDim2.new(0, 0, 1, 0),
                AutomaticSize = Enum.AutomaticSize.X,
                BackgroundTransparency = 1,

                [Children] = {
                    scope:New("UIListLayout") {
                        FillDirection = Enum.FillDirection.Horizontal,
                        Padding = UDim.new(0, 8),
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                    },

                    scope:New("UIPadding") {
                        PaddingLeft = UDim.new(0, 12),
                        PaddingRight = UDim.new(0, 12),
                    },

                    hasIcon and scope:Hydrate(Icon(scope, { icon = props.icon })) {
                        Size = UDim2.fromOffset(18, 18),
                        ImageColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            return use(selected) and t.selectedIconColor or t.unselectedIconColor
                        end),
                    } or nil,

                    scope:New("TextLabel") {
                        Size = UDim2.new(0, 0, 1, 0),
                        AutomaticSize = Enum.AutomaticSize.X,
                        BackgroundTransparency = 1,
                        Text = props.label,
                        FontFace = Font.fromEnum(Enum.Font.GothamMedium),
                        TextSize = 14,
                        TextColor3 = scope:Computed(function(use)
                            local t = use(tokens)
                            return use(selected) and t.selectedLabelColor or t.unselectedLabelColor
                        end),
                        TextXAlignment = Enum.TextXAlignment.Center,
                    },
                }
            },
        }
    }
end

return Chip