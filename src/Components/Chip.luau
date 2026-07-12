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
    local Tokens = ChipTokens();
    local selected = props.selected or scope:Value(false);
    local disabled = props.disabled or scope:Value(false);
    local hasIcon = props.icon ~= nil;

    return scope:New("ImageButton") {
        Size = UDim2.new(0, 0, 0, Tokens.containerHeight),
        AutomaticSize = Enum.AutomaticSize.X,
        BackgroundColor3 = scope:Computed(function(use)
            return use(selected) and Tokens.selectedContainerColor or Tokens.surfaceColor
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
                CornerRadius = Tokens.containerShape,
            },

            scope:New("UIStroke") {
                Thickness = scope:Computed(function(use)
                    return use(selected) and 0 or Tokens.outlineWidth
                end),
                Color = Tokens.unselectedOutlineColor,
            },

            Ripple(scope, {
                borderRadius = Tokens.containerShape,
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
                        Size = UDim2.fromOffset(Tokens.iconSize, Tokens.iconSize),
                        ImageColor3 = scope:Computed(function(use)
                            return use(selected) and Tokens.selectedIconColor or Tokens.unselectedIconColor
                        end),
                    } or nil,

                    scope:New("TextLabel") {
                        Size = UDim2.new(0, 0, 1, 0),
                        AutomaticSize = Enum.AutomaticSize.X,
                        BackgroundTransparency = 1,
                        Text = props.label,
                        FontFace = Tokens.labelFont,
                        TextSize = Tokens.labelSize,
                        TextColor3 = scope:Computed(function(use)
                            return use(selected) and Tokens.selectedLabelColor or Tokens.unselectedLabelColor
                        end),
                        TextXAlignment = Enum.TextXAlignment.Center,
                    },
                }
            },
        }
    }
end

return Chip