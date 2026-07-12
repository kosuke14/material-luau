--[[
	Flipbook Story: Switch
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	active = false,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local active = Scope:Value(props.controls.active);

		return Scope:New("Frame") {
			Size = UDim2.fromOffset(150, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					Padding = UDim.new(0, 16),
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.Switch(Scope, {
					active = active,
				}),
				Scope:New("TextLabel") {
					Size = UDim2.new(0, 60, 0, 24),
					BackgroundTransparency = 1,
					Text = Scope:Computed(function(use)
						return use(active) and "On" or "Off"
					end),
					FontFace = Font.fromEnum(Enum.Font.Gotham),
					TextSize = 14,
					TextColor3 = Color3.fromHex("#1C1B1F"),
				},
			}
		}
	end,
}