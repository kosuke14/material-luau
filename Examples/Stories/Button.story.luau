--[[
	Flipbook Story: Button
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	variant = "filled",
	text = "Button",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		return Scope:New("Frame") {
			Size = UDim2.fromOffset(200, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					Padding = UDim.new(0, 8),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.FilledTextButton(Scope, {
					text = props.controls.text,
					onClick = function() print("Clicked") end,
				}),
			}
		}
	end,
}