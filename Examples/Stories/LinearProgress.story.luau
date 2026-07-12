--[[
	Flipbook Story: LinearProgress
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	indeterminate = false,
	value = 0.6,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local value = Scope:Value(props.controls.value);
		local indeterminate = Scope:Value(props.controls.indeterminate);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					Padding = UDim.new(0, 8),
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.LinearProgress(Scope, {
					value = value,
					indeterminate = indeterminate,
				}),
				Scope:New("Frame") {
					Size = UDim2.new(1, 0, 0, 40),
					BackgroundTransparency = 1,
					[Scope.Children] = {
						Scope:New("UIListLayout") {
							FillDirection = Enum.FillDirection.Horizontal,
							Padding = UDim.new(0, 8),
							VerticalAlignment = Enum.VerticalAlignment.Center,
						},
						MaterialRoblox.Components.TextButton(Scope, {
							text = "-10%",
							onClick = function()
								value:set(math.clamp(Fusion.peek(value) - 0.1, 0, 1))
							end,
						}),
						Scope:New("TextLabel") {
							Size = UDim2.new(0, 60, 0, 24),
							BackgroundTransparency = 1,
							Text = Scope:Computed(function(use)
								return math.floor(use(value) * 100) .. "%"
							end),
							FontFace = Font.fromEnum(Enum.Font.Gotham),
							TextSize = 14,
							TextColor3 = Color3.fromHex("#1C1B1F"),
						},
						MaterialRoblox.Components.TextButton(Scope, {
							text = "+10%",
							onClick = function()
								value:set(math.clamp(Fusion.peek(value) + 0.1, 0, 1))
							end,
						}),
					}
				},
			}
		}
	end,
}