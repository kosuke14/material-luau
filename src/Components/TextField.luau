--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local TextFieldTokens = require(MaterialRoblox.Tokens.TextField);
local Icon = require(MaterialRoblox.Components.Icon);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local LEADING_PADDING = 48;
local TRAILING_PADDING = 48;
local LEADING_ONLY_PADDING = 16;
local TRAILING_ONLY_PADDING = 16;

local function TextField(
	scope: Fusion.Scope,
	props: {
		placeholder: string?,
		label: string?,
		value: Fusion.Value<string>,
		variant: "filled" | "outlined"?,
		error: Fusion.Value<boolean>?,
		disabled: Fusion.Value<boolean>?,
		leadingIcon: string?,
		trailingIcon: string?,
		supportingText: string?,
		onChanged: ((text: string) -> ())?,
		multiline: boolean?,
	}
)
	local Tokens = TextFieldTokens(props.variant or "outlined");

	local variant = props.variant or "outlined";
	local error = props.error or scope:Value(false);
	local disabled = props.disabled or scope:Value(false);
	local isFocused = scope:Value(false);
	local isHovering = scope:Value(false);
	local hasLeadingIcon = props.leadingIcon ~= nil
	local hasTrailingIcon = props.trailingIcon ~= nil

	local hasText = scope:Computed(function(use)
		return #use(props.value) > 0
	end)

	local isLabelFloated = scope:Computed(function(use)
		return use(hasText) or use(isFocused)
	end)

	return scope:New("Frame") {
		Size = UDim2.new(1, 0, 0, Tokens.containerHeight + (if props.supportingText then 24 else 0)),
		AutomaticSize = props.multiline and Enum.AutomaticSize.Y or nil,
		BackgroundTransparency = 1,

		[Children] = {
			-- Main container
			scope:New("Frame") {
				Size = UDim2.new(1, 0, 0, Tokens.containerHeight),
				BackgroundColor3 = if variant == "filled"
					then Tokens.containerColor
					else Color3.new(1, 1, 1),
				BackgroundTransparency = if variant == "filled" then 0 else 1,
				BorderSizePixel = 0,

				[OnEvent "InputBegan"] = function(input: InputObject)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						isHovering:set(true)
					end
				end,

				[OnEvent "InputEnded"] = function(input: InputObject)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						isHovering:set(false)
					end
				end,

				[Children] = {
					-- Container shape
					if variant == "filled" then
						scope:New("UICorner") {
							CornerRadius = Tokens.containerShape
						}
					else nil,

					-- Active indicator (bottom bar for filled)
					if variant == "filled" then
						scope:New("Frame") {
							Size = UDim2.fromScale(1, 0),
							AnchorPoint = Vector2.new(0, 1),
							Position = UDim2.fromScale(0, 1),
							BackgroundColor3 = scope:Computed(function(use)
								local hasError = use(error)
								local focused = use(isFocused)

								if hasError then
									return Tokens.errorActiveIndicatorColor
								elseif focused then
									return Tokens.focusActiveIndicatorColor
								else
									return Tokens.activeIndicatorColor
								end
							end),
							BorderSizePixel = 0,

							Size = scope:Tween(
								scope:Computed(function(use)
									local focused = use(isFocused)
									local hasError = use(error)

									local height = if use(disabled)
										then Tokens.disabledActiveIndicatorHeight
										elseif focused or hasError
										then Tokens.focusActiveIndicatorHeight
										else Tokens.activeIndicatorHeight

									return UDim2.new(1, 0, 0, height)
								end),
								TweenInfo.new(0.15)
							)
						}
					else nil,

					-- Outline stroke
					if variant == "outlined" then
						scope:New("UIStroke") {
							Thickness = scope:Tween(
								scope:Computed(function(use)
									local focused = use(isFocused)
									local hasError = use(error)

									if use(disabled) then
										return Tokens.outlineWidth
									elseif focused or hasError then
										return Tokens.focusActiveIndicatorHeight
									else
										return Tokens.outlineWidth
									end
								end),
								TweenInfo.new(0.15)
							),
							Color = scope:Computed(function(use)
								local hasError = use(error)
								local focused = use(isFocused)

								if use(disabled) then
									return Tokens.disabledOutlineColor
								elseif hasError then
									return Tokens.errorOutlineColor
								elseif focused then
									return Tokens.focusOutlineColor
								elseif use(isHovering) then
									return Tokens.hoverOutlineColor
								else
									return Tokens.outlineColor
								end
							end)
						}
					else nil,

					-- Leading icon
					if hasLeadingIcon then
						scope:Hydrate(Icon(scope, {
							icon = props.leadingIcon,
						})) {
							Size = UDim2.fromOffset(24, 24),
							Position = UDim2.new(0, 12, 0.5, 0),
							AnchorPoint = Vector2.new(0, 0.5),
							ImageColor3 = scope:Computed(function(use)
								if use(disabled) then
									return Tokens.disabledLabelColor
								else
									return Tokens.leadingIconColor
								end
							end),
						}
					else nil,

					-- Trailing icon
					if hasTrailingIcon then
						scope:Hydrate(Icon(scope, {
							icon = props.trailingIcon,
						})) {
							Size = UDim2.fromOffset(24, 24),
							Position = UDim2.new(1, -12, 0.5, 0),
							AnchorPoint = Vector2.new(1, 0.5),
							ImageColor3 = scope:Computed(function(use)
								if use(error) then
									return Tokens.trailingIconErrorColor
								elseif use(disabled) then
									return Tokens.disabledLabelColor
								else
									return Tokens.trailingIconColor
								end
							end),
						}
					else nil,

					-- Label text (floating)
					if props.label then
						scope:New("TextLabel") {
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.XY,
							TextXAlignment = Enum.TextXAlignment.Left,
							Text = props.label,

							Position = scope:Spring(
								scope:Computed(function(use)
									if use(isLabelFloated) then
										return UDim2.new(0, if hasLeadingIcon then 48 else 16, 0, 4)
									else
										return UDim2.new(0, if hasLeadingIcon then 48 else 16, 0.5, 0)
									end
								end),
								37.4165738677,
								0.9
							),

							TextSize = scope:Spring(
								scope:Computed(function(use)
									return if use(isLabelFloated)
										then Tokens.labelPopulatedSize
										else Tokens.labelSize
								end),
								37.4165738677,
								0.9
							),
							FontFace = Tokens.labelFont,

							TextColor3 = scope:Computed(function(use)
								local hasError = use(error)
								local focused = use(isFocused)

								if use(disabled) then
									return Tokens.disabledLabelColor
								elseif hasError then
									return Tokens.labelErrorColor
								elseif focused then
									return Tokens.labelFocusColor
								else
									return Tokens.labelColor
								end
							end),
						}
					else nil,

					-- TextBox input
					scope:New("TextBox") {
						Size = UDim2.new(1, 0, 1, 0),
						Position = UDim2.fromScale(0, 0),
						BackgroundTransparency = 1,
						ClearTextOnFocus = false,
						Text = "",
						PlaceholderText = if props.placeholder then props.placeholder else "",
						FontFace = Tokens.inputFont,
						TextSize = Tokens.inputSize,
						TextColor3 = Tokens.inputColor,
						PlaceholderColor3 = Tokens.placeholderColor,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextWrapped = props.multiline or false,
						MultiLine = props.multiline or false,

						[OnEvent "Focused"] = function()
							isFocused:set(true)
						end,

						[OnEvent "FocusLost"] = function()
							isFocused:set(false)
						end,

						[OnEvent "InputBegan"] = function(input: InputObject)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								isHovering:set(true)
							end
						end,

						[OnEvent "InputEnded"] = function(input: InputObject)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								isHovering:set(false)
							end
						end,

						[Children] = {
							scope:New("UIPadding") {
								PaddingLeft = UDim.new(0, if hasLeadingIcon then 48 else 16),
								PaddingRight = UDim.new(0, if hasTrailingIcon then 48 else 16),
								PaddingTop = UDim.new(0, if props.label then 8 else 0),
							}
						}
					},

					-- Supporting text
					if props.supportingText then
						scope:New("TextLabel") {
							Size = UDim2.new(1, 0, 0, 20),
							Position = UDim2.fromScale(0, 1),
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.Y,
							TextXAlignment = Enum.TextXAlignment.Left,
							Text = props.supportingText,
							FontFace = Tokens.supportingTextFont,
							TextSize = Tokens.supportingTextSize,
							TextColor3 = scope:Computed(function(use)
								return if use(error)
									then Tokens.supportingTextErrorColor
									else Tokens.supportingTextColor
							end),
						}
					else nil,
				}
			}
		}
	}
end

return TextField;