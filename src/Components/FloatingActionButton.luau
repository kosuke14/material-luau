--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local FABTokens = require(MaterialRoblox.Tokens.FloatingActionButton);
local Icon = require(MaterialRoblox.Components.Icon);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function FloatingActionButton(
	scope: Fusion.Scope,
	props: {
		icon: string,
		onClick: () -> ()?,
		variant: "primary" | "secondary" | "tertiary" | "surface" | "branded"?,
		size: "small" | "medium" | "large"?,
	}
)
	local Tokens = FABTokens(props.variant, props.size);

	return scope:New("ImageButton") {
		Size = UDim2.fromOffset(Tokens.containerWidth, Tokens.containerHeight),
		BackgroundColor3 = Tokens.containerColor,
		ImageTransparency = 1,
		AutoButtonColor = false,

		[OnEvent "MouseButton1Click"] = props.onClick,

		[Children] = {
			scope:New("UICorner") {
				CornerRadius = Tokens.containerShape,
			},

			Ripple(scope, {
				borderRadius = Tokens.containerShape,
				color = Tokens.hoverStateLayerColor,
			}),

			scope:Hydrate(Icon(scope, {
				icon = props.icon,
			})) {
				Size = UDim2.fromOffset(Tokens.iconSize, Tokens.iconSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				ImageColor3 = Tokens.iconColor,
			}
		}
	}
end

return FloatingActionButton;