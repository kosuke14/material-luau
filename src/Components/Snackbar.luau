--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local SnackbarTokens = require(MaterialRoblox.Tokens.Snackbar);
local Ripple = require(MaterialRoblox.Components.Ripple);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local CLOSE_ICON = "rbxassetid://6031264853";
local CLOSE_ANIMATION_DURATION = 0.35

local function Snackbar(
	scope: Fusion.Scope,
	props: {
		message: string,
		actionText: string?,
		onAction: (() -> ())?,
		onClose: (() -> ())?,
		open: Fusion.Value<boolean>,
	}
)
	local Tokens = SnackbarTokens();
	local isFullyClosed = scope:Value(Fusion.peek(props.open) == false)

	scope:Observer(props.open):onChange(function()
		if Fusion.peek(props.open) then
			isFullyClosed:set(false)
		else
			task.delay(CLOSE_ANIMATION_DURATION, function()
				if not Fusion.peek(props.open) then
					isFullyClosed:set(true)
				end
			end)
		end
	end)

	local containerHeight = scope:Computed(function(use)
		if #use(props.message) > 40 then
			return Tokens.twoLineHeight
		else
			return Tokens.singleLineHeight
		end
	end)

	local containerPosition = scope:Spring(
		scope:Computed(function(use)
			return if use(props.open)
				then UDim2.new(0.5, 0, 1, -16)
				else UDim2.new(0.5, 0, 1, 80)
		end),
		25,
		1.5
	)

	local containerTransparency = scope:Tween(
		scope:Computed(function(use)
			return if use(props.open) then 0 else 1
		end),
		TweenInfo.new(0.15)
	)

	return scope:New("Frame") {
		Size = UDim2.new(1, -32, 0, containerHeight),
		AnchorPoint = Vector2.new(0.5, 0),
		Position = containerPosition,
		BackgroundColor3 = Tokens.containerColor,
		BorderSizePixel = 0,
		GroupTransparency = containerTransparency,
		Visible = scope:Computed(function(use)
			return use(props.open) or not use(isFullyClosed)
		end),

		[Children] = {
			scope:New("UICorner") {
				CornerRadius = Tokens.containerShape,
			},

			scope:New("UIPadding") {
				PaddingLeft = UDim.new(0, 16),
				PaddingRight = UDim.new(0, 16),
				PaddingTop = UDim.new(0, 6),
				PaddingBottom = UDim.new(0, 6),
			},

			-- Message text
			scope:New("TextLabel") {
				Size = UDim2.new(1, -120, 1, 0),
				BackgroundTransparency = 1,
				Text = props.message,
				FontFace = Tokens.supportingTextFont,
				TextSize = Tokens.supportingTextSize,
				TextColor3 = Tokens.supportingTextColor,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			},

			-- Action button
			if props.actionText and props.onAction then
				scope:New("TextButton") {
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					Position = UDim2.new(1, -56, 0, 0),
					AnchorPoint = Vector2.new(0, 0),
					BackgroundTransparency = 1,
					Text = props.actionText,
					FontFace = Tokens.actionLabelFont,
					TextSize = Tokens.actionLabelSize,
					TextColor3 = Tokens.actionLabelColor,

					[OnEvent "MouseButton1Click"] = function()
						if props.onAction then
							props.onAction()
						end
					end,

					[Children] = {
						Ripple(scope, {
							borderRadius = UDim.new(0, 0),
							color = Tokens.actionPressedStateLayerColor,
						}),
					}
				}
			else nil,

			-- Close button
			if props.onClose then
				scope:New("ImageButton") {
					Size = UDim2.fromOffset(24, 24),
					Position = UDim2.new(1, -8, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					Image = CLOSE_ICON,
					ImageColor3 = Tokens.iconColor,

					[OnEvent "MouseButton1Click"] = function()
						if props.onClose then
							props.onClose()
						end
					end,
				}
			else nil,
		}
	}
end

return Snackbar;