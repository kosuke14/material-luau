--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local CardTokens = require(MaterialRoblox.Tokens.Card);
local Ripple = require(MaterialRoblox.Components.Ripple);
local Shadow = require(MaterialRoblox.Components.Shadow);

local Children = Fusion.Children;

local function Card(
	scope: Fusion.Scope,
	props: {
		variant: "filled" | "outlined" | "elevated"?,
		onClick: (() -> ())?,
		[typeof(Fusion.Children)]: { Instance }?,
	}
)
	local Tokens = CardTokens(props.variant or "filled");
	local variant = props.variant or "filled";

	return scope:New("Frame") {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = if variant == "outlined"
			then Color3.fromRGB(255, 255, 255)
			else Tokens.containerColor,
		BorderSizePixel = 0,
		LayoutOrder = 1,

		[Children] = {
			-- Shadow for elevated variant
			if variant == "elevated" then
				Shadow(scope, { Elevation = 1 })
			else nil,

			-- Outline stroke for outlined variant
			if variant == "outlined" then
				scope:New("UIStroke") {
					Thickness = Tokens.outlineWidth,
					Color = Tokens.outlineColor,
				}
			else nil,

			-- Shape
			scope:New("UICorner") {
				CornerRadius = Tokens.containerShape,
			},

			-- Ripple for interactive cards
			if props.onClick then
				Ripple(scope, {
					borderRadius = Tokens.containerShape,
				})
			else nil,

			-- Content
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

return Card;