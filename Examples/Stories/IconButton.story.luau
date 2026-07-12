--[[
	Flipbook Story: IconButton
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion");
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	icon = "favorite",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 8),
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.IconButton(Scope, {
					icon = props.controls.icon,
					onClick = function() print("Icon clicked") end,
				}),
			}
		}
	end,
}