--[[
	Flipbook Story: RadioButton
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	options = {"A", "B", "C"},
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local selected = Scope:Value(1);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				Scope:New("UIListLayout") {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 16),
					VerticalAlignment = Enum.VerticalAlignment.Center,
				},
				MaterialRoblox.Components.RadioButton(Scope, {
					active = Scope:Computed(function(use) return use(selected) == 1 end),
					onClick = function() selected:set(1) end,
				}),
				Scope:New("TextLabel") {
					Size = UDim2.new(0, 30, 1, 0),
					BackgroundTransparency = 1,
					Text = "A",
					FontFace = Font.fromEnum(Enum.Font.Gotham),
					TextSize = 14,
					TextColor3 = Color3.fromHex("#1C1B1F"),
				},
				MaterialRoblox.Components.RadioButton(Scope, {
					active = Scope:Computed(function(use) return use(selected) == 2 end),
					onClick = function() selected:set(2) end,
				}),
				Scope:New("TextLabel") {
					Size = UDim2.new(0, 30, 1, 0),
					BackgroundTransparency = 1,
					Text = "B",
					FontFace = Font.fromEnum(Enum.Font.Gotham),
					TextSize = 14,
					TextColor3 = Color3.fromHex("#1C1B1F"),
				},
				MaterialRoblox.Components.RadioButton(Scope, {
					active = Scope:Computed(function(use) return use(selected) == 3 end),
					onClick = function() selected:set(3) end,
				}),
				Scope:New("TextLabel") {
					Size = UDim2.new(0, 30, 1, 0),
					BackgroundTransparency = 1,
					Text = "C",
					FontFace = Font.fromEnum(Enum.Font.Gotham),
					TextSize = 14,
					TextColor3 = Color3.fromHex("#1C1B1F"),
				},
			}
		}
	end,
}