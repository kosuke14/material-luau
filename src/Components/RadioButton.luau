--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local RadioButtonTokens = require(MaterialRoblox.Tokens.RadioButton);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function RadioButton(
	scope: Fusion.Scope,
	props: {
		active: Fusion.Value<boolean>,
		disabled: Fusion.Value<boolean>?,
		onClick: (() -> ())?
	}
)
	local Tokens = RadioButtonTokens();

	local isHovering = scope:Value(false);
	local isPressed = scope:Value(false);
	local disabled = props.disabled or scope:Value(false);

	return scope:New("ImageButton") {
		Size = UDim2.fromOffset(Tokens.stateLayerSize, Tokens.stateLayerSize),
		BackgroundTransparency = 1,
		ImageTransparency = 1,
		AutoButtonColor = false,

		[OnEvent "InputBegan"] = function(input: InputObject)
			local inputType = input.UserInputType;
			if inputType == Enum.UserInputType.MouseMovement then
				isHovering:set(true)
			elseif inputType == Enum.UserInputType.MouseButton1 or
				inputType == Enum.UserInputType.Touch then
				isPressed:set(true);
			end
		end,

		[OnEvent "InputEnded"] = function(input: InputObject)
			local inputType = input.UserInputType;
			if inputType == Enum.UserInputType.MouseMovement then
				isHovering:set(false)
			elseif inputType == Enum.UserInputType.MouseButton1 or
				inputType == Enum.UserInputType.Touch then
				isPressed:set(false);
			end
		end,

		[OnEvent "MouseButton1Click"] = function()
			if not Fusion.peek(disabled) then
				if props.onClick then
					props.onClick()
				end
			end
		end,

		[Children] = {
			Ripple(scope, {
				borderRadius = UDim.new(1, 0),
				color = Tokens.unselectedPressedStateLayerColor
			}),

			-- Outer circle (radio border)
			scope:New("Frame") {
				Size = UDim2.fromOffset(Tokens.iconSize, Tokens.iconSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,

				[Children] = {
					scope:New("UIStroke") {
						Thickness = 2,
						Color = scope:Computed(function(use)
							if use(disabled) then
								return if use(props.active)
									then Tokens.disabledSelectedIconColor
									else Tokens.disabledUnselectedIconColor
							else
								return if use(props.active)
									then Tokens.selectedIconColor
									else Tokens.unselectedIconColor
							end
						end)
					},

					scope:New("UICorner") {
						CornerRadius = UDim.new(1, 0)
					},

					-- Inner dot
					scope:New("Frame") {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						BackgroundColor3 = scope:Computed(function(use)
							if use(disabled) then
								return Tokens.disabledSelectedIconColor
							else
								return if use(props.active)
									then Tokens.selectedIconColor
									else Tokens.unselectedIconColor
							end
						end),

						Size = scope:Spring(
							scope:Computed(function(use)
								return if use(props.active)
									then UDim2.fromOffset(10, 10)
									else UDim2.fromOffset(0, 0)
							end),
							37.4165738677,
							0.9
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

return RadioButton;