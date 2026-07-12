--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local ChipTokens = require(MaterialRoblox.Tokens.Chip);
local Icon = require(MaterialRoblox.Components.Icon);
local Ripple = require(MaterialRoblox.Components.Ripple);
local showComputed = require(MaterialRoblox.Utils.ShowComputed);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Chip(
	scope: Fusion.Scope,
	props: {
		label: string,
		selected: Fusion.Value<boolean>?,
		variant: "flat" | "elevated"?,
		icon: string?,
		onClick: (() -> ())?,
		disabled: Fusion.Value<boolean>?,
	}
)
	local Tokens = ChipTokens(props.variant or "flat");
	local selected = props.selected or scope:Value(false);
	local disabled = props.disabled or scope:Value(false);

	return scope:New("ImageButton") {
		Size = UDim2.new(0, 0, 0, Tokens.containerHeight),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = scope:Computed(function(use)
			if use(selected) then
				return Tokens.selectedContainerColor
			elseif props.variant == "elevated" then
				return Tokens.elevatedContainerColor
			else
				return Color3.new(1, 1, 1)
			end
		end),
		BackgroundTransparency = scope:Computed(function(use)
			if use(selected) then
				return 0
			else
				return if props.variant == "elevated" then 0 else 1
			end
		end),
		ImageTransparency = 1,
		AutoButtonColor = false,

		[OnEvent "MouseButton1Click"] = function()
			if not Fusion.peek(disabled) then
				if props.selected then
					selected:set(not Fusion.peek(selected))
				end
				if props.onClick then
					props.onClick()
				end
			end
		end,

		[Children] = {
			scope:New("UICorner") {
				CornerRadius = Tokens.containerShape,
			},

			-- Outline for unselected flat chips
			showComputed(scope, scope:Computed(function(use)
				return not use(selected) and props.variant ~= "elevated"
			end), function()
				return scope:New("UIStroke") {
					Thickness = Tokens.unselectedOutlineWidth,
					Color = Tokens.unselectedOutlineColor,
				}
			end),

			Ripple(scope, {
				borderRadius = Tokens.containerShape,
				color = Tokens.hoverStateLayerColor,
			}),

			-- Content
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

					-- Leading icon
					showComputed(scope, props.icon, function()
						return scope:Hydrate(Icon(scope, {
							icon = props.icon,
						})) {
							Size = UDim2.fromOffset(Tokens.iconSize, Tokens.iconSize),
							ImageColor3 = scope:Computed(function(use)
								if use(selected) then
									return Tokens.selectedIconColor
								else
									return Tokens.unselectedIconColor
								end
							end),
						}
					end),

					-- Label
					scope:New("TextLabel") {
						Size = UDim2.new(0, 0, 1, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						BackgroundTransparency = 1,
						Text = props.label,
						FontFace = Tokens.labelFont,
						TextSize = Tokens.labelSize,
						TextColor3 = scope:Computed(function(use)
							if use(disabled) then
								return Tokens.disabledLabelColor
							elseif use(selected) then
								return Tokens.selectedLabelColor
							else
								return Tokens.unselectedLabelColor
							end
						end),
						TextXAlignment = Enum.TextXAlignment.Center,
					},
				}
			},
		}
	}
end

return Chip;