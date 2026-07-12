--[[
	Flipbook Story: FloatingActionButton
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	icon = "add",
	variant = "primary",
	size = "medium",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 100),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 12),
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.FloatingActionButton(Scope, {
					icon = props.controls.icon,
					variant = props.controls.variant,
					size = props.controls.size,
					onClick = function() print("FAB clicked") end,
				}),
			}
		}
	end,
}