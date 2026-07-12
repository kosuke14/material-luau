--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local BadgeTokens = require(MaterialRoblox.Tokens.Badge);

local Children = Fusion.Children;

local function Badge(scope: Fusion.Scope, props: {
    count: number?,
    visible: Fusion.Value<boolean>?,
    anchorPoint: Vector2?,
    position: UDim2?,
})
    local visible = props.visible or scope:Value(true);
    local count = props.count or 0;
    local isLarge = count > 0;

    local tokens = scope:Computed(function(use)
        return BadgeTokens()
    end)

    return scope:New("Frame") {
        Size = scope:Computed(function(use)
            local t = use(tokens)
            return isLarge and UDim2.fromOffset(t.largeSize, t.largeSize) or UDim2.fromOffset(t.smallSize, t.smallSize)
        end),
        AnchorPoint = props.anchorPoint or Vector2.new(1, 0),
        Position = props.position or UDim2.new(1, -2, 0, 2),
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return isLarge and t.largeColor or t.smallColor
        end),
        BorderSizePixel = 0,
        Visible = visible,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = scope:Computed(function(use)
                    local t = use(tokens)
                    return isLarge and t.largeShape or t.smallShape
                end),
            },

            isLarge and scope:New("TextLabel") {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                Text = tostring(math.min(count, 99)),
                FontFace = Font.fromEnum(Enum.Font.GothamMedium),
                TextSize = 11,
                TextColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.largeLabelColor
                end),
            } or nil,
        }
    }
end

return Badge