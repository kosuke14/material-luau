--!nocheck
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local DialogTokens = require(MaterialRoblox.Tokens.Dialog);
local TextButton = require(MaterialRoblox.Components.Button.TextButton);
local Fusion = require(MaterialRoblox.Parent.Fusion);
local Display = require(MaterialRoblox.Utils.Display);
local Fade = require(MaterialRoblox.Utils.Fade);
local showComputed = require(MaterialRoblox.Utils.ShowComputed);

local Children = Fusion.Children;
local peek = Fusion.peek;
local Out = Fusion.Out;

local CLOSE_ANIMATION_DURATION = 0.15

local function DialogElement(
	scope: Fusion.Scope,
	props: {
		headline: Fusion.UsedAs<string>,
		[typeof(Fusion.Children)]: {}?,
		buttons: Fusion.UsedAs<{
			{
				label: string,
				onClick: () -> ()
			}
		}>,
		open: Fusion.UsedAs<boolean>
	}
)
	local Tokens = DialogTokens();

	local screenWidth = scope:Value(Display.getDisplayWidth());
	local screenHeight = scope:Value(Display.getDisplayHeight());
	local currentGui: Fusion.Value<Frame | nil> = scope:Value(nil)
	local isFullyClosed = scope:Value(peek(props.open) == false)

	table.insert(scope, Display.onDisplayChange(function()
		screenWidth:set(Display.getDisplayWidth());
		screenHeight:set(Display.getDisplayHeight());
	end));

	scope:Observer(currentGui):onChange(function()
		Fade.FadeOut(peek(currentGui), 0)
		scope:Observer(props.open):onChange(function()
			if peek(props.open) then
				isFullyClosed:set(false)
				Fade.FadeIn(peek(currentGui), .3)
			else
				Fade.FadeOut(peek(currentGui), .3)
				task.delay(CLOSE_ANIMATION_DURATION, function()
					if not peek(props.open) then
						isFullyClosed:set(true)
					end
				end)
			end
		end)
	end)

	return scope:New("Frame") {
		Name = "Scrim",
		Size = UDim2.fromScale(1, 1),
		ZIndex = 999,
		BackgroundColor3 = Tokens.scrim,
		BackgroundTransparency = scope:Tween(
			scope:Computed(function(
				use: Fusion.Use
			)
				if use(props.open) then
					return Tokens.scrimTransparency
				else
					return 1
				end
			end),
			TweenInfo.new(.1)
		),
		Visible = scope:Computed(function(use)
			return use(props.open) or not use(isFullyClosed)
		end),

		[Children] = {
			-- Modal blocker shown only during close animation
			showComputed(scope, scope:Computed(function(use)
				return not use(props.open) and not use(isFullyClosed)
			end), function()
				return scope:New("ImageButton") {
					Modal = true,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					ImageTransparency = 1,
				}
			end),

			scope:New("Frame") {
				AnchorPoint = Vector2.new(.5, .5),
				Position = UDim2.fromScale(.5, .5),
				AutomaticSize = Enum.AutomaticSize.XY,
				Size = UDim2.fromScale(0, 0),
				BackgroundColor3 = Tokens.containerColor,
				ZIndex = 2,

				[Children] = {
					scope:New("UICorner") {
						[Out "Parent"] = currentGui,
						CornerRadius = Tokens.cornerRadius
					},

					scope:New("UIScale") {
						Scale = scope:Spring(
							scope:Computed(function(
								use: Fusion.Use
							)
								return if use(props.open) then 1 else .9
							end),
							19,
							1
						)
					},

					scope:New("UISizeConstraint") {
						MaxSize = scope:Computed(function(
							use: Fusion.Use
						)
							return Vector2.new(
								math.min(560, (use(screenWidth) - 48)),
								math.min(560, (use(screenWidth) - 48))
							);
						end)
					},

					scope:New("UIPadding") {
						PaddingBottom = UDim.new(0, 16),
						PaddingTop = UDim.new(0, 24),
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 16)
					},

					scope:New("UIListLayout") {
						Padding = UDim.new(0, 16),
						SortOrder = Enum.SortOrder.LayoutOrder
					},

					scope:New("TextLabel") {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -8, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = props.headline,
						FontFace = Tokens.headlineText.font,
						TextSize = Tokens.headlineText.size,
						TextColor3 = Tokens.headlineColor,
						TextWrapped = true,
						LayoutOrder = 0
					},

					props[Children],

					scope:New("Frame") {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 40),
						LayoutOrder = 2,

						[Children] = {
							scope:New("UIListLayout") {
								FillDirection = Enum.FillDirection.Horizontal,
								HorizontalAlignment = Enum.HorizontalAlignment.Right
							},

							showComputed(scope, props.open, function()
								return scope:ForValues(props.buttons, function(
									use: Fusion.Use,
									scope: Fusion.Scope,
									button: {
										label: string,
										onClick: () -> ()
									}
								)
									return TextButton(scope, {
										variant = "text",
										text = button.label,
										onClick = button.onClick
									})
								end)
							end),
						}
					}
				}
			}
		}
	};
end

return DialogElement