--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local TooltipTokens = require(MaterialRoblox.Tokens.Tooltip);

local Children = Fusion.Children;
local OnEvent = Fusion.OnEvent;

local function Tooltip(
	scope: Fusion.Scope,
	props: {
		text: string,
		attachTo: GuiObject,
	}
)
	local Tokens = TooltipTokens();

	local visible = scope:Value(false);
	local position = scope:Value(UDim2.fromScale(0, 0));

	local function updatePosition()
		local attachTo = props.attachTo
		if not attachTo then return end

		local absPos = attachTo.AbsolutePosition
		local absSize = attachTo.AbsoluteSize
		local screen = workspace.CurrentCamera.ViewportSize

		local x = absPos.X + absSize.X / 2
		local y = absPos.Y - 8

		-- Clamp to screen bounds
		x = math.clamp(x, 80, screen.X - 80)

		position:set(UDim2.fromOffset(x, y))
	end

	table.insert(scope, props.attachTo.MouseEnter:Connect(function()
		updatePosition()
		visible:set(true)
	end))

	table.insert(scope, props.attachTo.MouseLeave:Connect(function()
		visible:set(false)
	end))

	return scope:New("Frame") {
		Size = UDim2.fromScale(0, 0),
		AutomaticSize = Enum.AutomaticSize.XY,
		Position = position,
		AnchorPoint = Vector2.new(0.5, 1),
		BackgroundColor3 = Tokens.containerColor,
		BorderSizePixel = 0,
		ZIndex = 10000,
		Visible = visible,

		[Children] = {
			scope:New("UICorner") {
				CornerRadius = Tokens.containerShape,
			},

			scope:New("UIPadding") {
				PaddingTop = UDim.new(0, 6),
				PaddingBottom = UDim.new(0, 6),
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			},

			scope:New("TextLabel") {
				Size = UDim2.new(0, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				Text = props.text,
				FontFace = Tokens["supporting-text"].font,
				TextSize = Tokens["supporting-text"].size,
				TextColor3 = Tokens["supporting-text"].color,
				TextXAlignment = Enum.TextXAlignment.Center,
			},
		}
	}
end

return Tooltip;