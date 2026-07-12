--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local BadgeTokens = require(MaterialRoblox.Tokens.Badge);

local Children = Fusion.Children;

local function Badge(
	scope: Fusion.Scope,
	props: {
		count: number?,
		visible: Fusion.Value<boolean>?,
		anchorPoint: Vector2?,
		position: UDim2?,
	}
)
	local Tokens = BadgeTokens();
	local visible = props.visible or scope:Value(true);
	local count = props.count or 0;

	local isLarge = count > 0;

	return scope:New("Frame") {
		Size = scope:Computed(function(use)
			return if isLarge
				then UDim2.fromOffset(Tokens.largeSize, Tokens.largeSize)
				else UDim2.fromOffset(Tokens.smallSize, Tokens.smallSize)
		end),
		AnchorPoint = props.anchorPoint or Vector2.new(1, 0),
		Position = props.position or UDim2.new(1, -2, 0, 2),
		BackgroundColor3 = if isLarge then Tokens.largeColor else Tokens.smallColor,
		BorderSizePixel = 0,
		Visible = visible,

		[Children] = {
			scope:New("UICorner") {
				CornerRadius = if isLarge then Tokens.largeShape else Tokens.smallShape,
			},

			-- Count text for large badges
			if isLarge then
				scope:New("TextLabel") {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = tostring(math.min(count, 99)),
					FontFace = Tokens.largeLabelFont,
					TextSize = Tokens.largeLabelSize,
					TextColor3 = Tokens.largeLabelColor,
				}
			else nil,
		}
	}
end

return Badge;