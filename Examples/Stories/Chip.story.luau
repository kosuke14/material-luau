--[[
	Flipbook Story: Chip
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	label = "Chip",
	icon = "",
	selectable = false,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local selected = Scope:Value(false);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					Padding = UDim.new(0, 8),
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.Chip(Scope, {
					label = props.controls.label,
					icon = props.controls.icon ~= "" and props.controls.icon or nil,
					selected = props.controls.selectable and selected or nil,
				}),
			}
		}
	end,
}