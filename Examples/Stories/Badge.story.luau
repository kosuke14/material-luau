--[[
	Flipbook Story: Badge
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	count = 0,
	visible = true,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		return Scope:New("Frame") {
			Size = UDim2.fromOffset(100, 100),
			BackgroundColor3 = Color3.fromHex("#6750A4"),
			[Scope.Children] = {
				Scope:New("UICorner") {
					CornerRadius = UDim.new(1, 0),
				},
				Scope:New("TextLabel") {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "M",
					FontFace = Font.fromEnum(Enum.Font.GothamBold),
					TextSize = 16,
					TextColor3 = Color3.new(1, 1, 1),
				},
				MaterialRoblox.Components.Badge(Scope, {
					count = props.controls.count,
					visible = Scope:Value(props.controls.visible),
				}),
			}
		}
	end,
}