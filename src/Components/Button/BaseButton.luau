--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local TextService = game:GetService("TextService");

local MaterialRoblox = script.Parent.Parent.Parent;

local Ripple = require(MaterialRoblox.Components.Ripple);
local Fusion = require(MaterialRoblox.Parent.Fusion);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function TextButton(
	scope: Fusion.Scope,
	text: string,
    onClick: () -> (),
    renderOutline: () -> UIStroke?,
	icon: Instance?,
    Tokens
)
	local textChangeCount = scope:Value(0);
	local isPressed = scope:Value(false);
	local isHovering = scope:Value(false);

	local cornerRadius = scope:Spring(
		scope:Computed(function(
			use: Fusion.Use
		)
			if use(isPressed) then
				return Tokens.containerShapePress
			elseif use(isHovering) then
				return Tokens.containerShapeHover
			else
				return Tokens.containerShape
			end
		end),
		25,
		1.5
	);
	
	local textWidth = scope:Computed(function(
		use: Fusion.Use
	)
		local getTextBoundsParams = Instance.new("GetTextBoundsParams");

		getTextBoundsParams.Text = use(text);
		getTextBoundsParams.Font = Tokens.label.font;
		getTextBoundsParams.Size = Tokens.label.size;

		return TextService:GetTextBoundsAsync(getTextBoundsParams).X
	end)
	
	scope:Observer(text):onChange(function()
		textChangeCount:set(scope.peek(textChangeCount) + 1);
	end);

	local width = scope:Computed(function(
		use: Fusion.Use
	)
		local hasIcon = icon ~= nil;
		local totalPadding = Tokens.trailingSpace + Tokens.leadingSpace;

		if hasIcon then
			totalPadding += Tokens.iconLabelSpace + Tokens.iconSize;
		end

		return use(textWidth) + totalPadding
	end)
	
	return scope:New("ImageButton") {
		Size = scope:Tween(scope:Computed(function(
			use: Fusion.Use
		)
			return UDim2.fromOffset(use(width), Tokens.containerHeight)
		end), scope:Computed(function(
			use: Fusion.Use
		)	
			if use(textChangeCount) == 0 then
				return TweenInfo.new(0)
			else
				return TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut)
			end
		end)),
		AutoButtonColor = false,
		ImageTransparency = 1,
		BackgroundColor3 = Tokens.containerColor,
		BackgroundTransparency = Tokens.containerTransparency,
		
		[OnEvent "MouseButton1Click"] = onClick,

		[OnEvent "InputBegan"] = function(
			inputObject: InputObject
		)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or 
				inputObject.UserInputType == Enum.UserInputType.Touch then
				isPressed:set(true);
			elseif inputObject.UserInputType == Enum.UserInputType.MouseMovement then
				isHovering:set(true)
			end
		end,

		[OnEvent "InputEnded"] = function(
			inputObject: InputObject
		)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or 
				inputObject.UserInputType == Enum.UserInputType.Touch then
				isPressed:set(false);
			elseif inputObject.UserInputType == Enum.UserInputType.MouseMovement then
				isHovering:set(false);
			end
		end,
		
		[Children] = {
			Ripple(scope, {
				borderRadius = cornerRadius,
				color = Tokens.rippleColor
			}),
			
			scope:New("UICorner") {
				CornerRadius = cornerRadius
			},

			scope:New("UIListLayout") {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, Tokens.iconLabelSpace),
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center
			},

			icon,

			scope:New("TextLabel") {
				TextColor3 = Tokens.labelColor,
				Text = text,
				Size = scope:Computed(function(
					use: Fusion.Use
				)
					return UDim2.fromOffset(use(textWidth), 0)
				end),
				AutomaticSize = Enum.AutomaticSize.X,

				TextSize = Tokens.label.size,
				FontFace = Tokens.label.font,
			},
			
			renderOutline()
		}
	}
end

return TextButton;