--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local CardTokens = require(MaterialRoblox.Tokens.Card);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;

local function Card(scope: Fusion.Scope, props: {
    onClick: (() -> ())?,
    [typeof(Fusion.Children)]: { Instance }?,
})
    local Tokens = CardTokens();

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Tokens.containerColor,
        BorderSizePixel = 0,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = Tokens.containerShape,
            },

            props.onClick and Ripple(scope, {
                borderRadius = Tokens.containerShape,
            }) or nil,

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