--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local CheckboxTokens = require(MaterialRoblox.Tokens.Checkbox);
local Ripple = require(MaterialRoblox.Components.Ripple);
local showComputed = require(MaterialRoblox.Utils.ShowComputed);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local CHECKMARK_IMAGE = "rbxassetid://128524955835262";

local function Checkbox(
	scope: Fusion.Scope,
	props: {
		active: Fusion.Value<boolean>,
		error: Fusion.Value<boolean>?,
		disabled: Fusion.Value<boolean>?,
		onClick: (() -> ())?
	}
)
	local Tokens = CheckboxTokens();

	local isHovering = scope:Value(false);
	local isPressed = scope:Value(false);

	local error = props.error or scope:Value(false);
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
				props.active:set(not Fusion.peek(props.active))
				if props.onClick then
					props.onClick()
				end
			end
		end,

		[Children] = {
			Ripple(scope, {
				borderRadius = Tokens.stateLayerShape,
				color = Tokens.selectedPressedStateLayerColor
			}),

			-- State layer (hover/press feedback)
			scope:New("Frame") {
				Size = UDim2.fromOffset(Tokens.stateLayerSize, Tokens.stateLayerSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundColor3 = scope:Computed(function(use)
					if use(error) then
						return Tokens.errorStateLayerColor
					elseif use(isHovering) or use(isPressed) then
						return if use(props.active)
							then Tokens.selectedPressedStateLayerColor
							else Tokens.unselectedPressedStateLayerColor
					else
						return Color3.new(1, 1, 1)
					end
				end),
				BackgroundTransparency = scope:Computed(function(use)
					if use(error) or use(isHovering) or use(isPressed) then
						return 1 - 0.08
					else
						return 1
					end
				end),
				BorderSizePixel = 0,

				[Children] = {
					scope:New("UICorner") {
						CornerRadius = Tokens.stateLayerShape
					}
				}
			},

			-- Container box
			scope:New("Frame") {
				Size = UDim2.fromOffset(Tokens.containerWidth, Tokens.containerHeight),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundColor3 = scope:Computed(function(use)
					local isActive = use(props.active)
					local hasError = use(error)

					if hasError and isActive then
						return Tokens.errorContainerColor
					elseif isActive then
						return Tokens.selectedContainerColor
					else
						return Color3.new(1, 1, 1)
					end
				end),
				BackgroundTransparency = scope:Computed(function(use)
					return if use(props.active) then 0 else 1
				end),

				[Children] = {
					scope:New("UICorner") {
						CornerRadius = UDim.new(0, 2)
					},

					-- Outline for unselected state
					showComputed(scope, scope:Computed(function(use)
						return not use(props.active)
					end), function()
						return scope:New("UIStroke") {
							Thickness = Tokens.unselectedOutlineWidth,
							Color = scope:Computed(function(use)
								if use(error) then
									return Tokens.errorOutlineColor
								else
									return Tokens.unselectedOutlineColor
								end
							end)
						}
					end),

					-- Checkmark icon
					showComputed(scope, scope:Computed(function(use)
						return use(props.active)
					end), function()
						return scope:New("ImageLabel") {
							Size = UDim2.fromOffset(Tokens.iconSize, Tokens.iconSize),
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
							BackgroundTransparency = 1,
							Image = CHECKMARK_IMAGE,
							ImageColor3 = scope:Computed(function(use)
								if use(error) then
									return Tokens.errorIconColor
								else
									return Tokens.selectedIconColor
								end
							end),
							ScaleType = Enum.ScaleType.Fit,

							[Children] = {
								scope:New("UIScale") {
									Scale = scope:Spring(
										scope:Computed(function(use)
											return if use(props.active) then 1 else 0
										end),
										37.4165738677,
										0.9
									)
								}
							}
						}
					end),
				}
			},
		}
	}
end

return Checkbox;