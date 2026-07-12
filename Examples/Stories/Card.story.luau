--[[
	Flipbook Story: Card
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	title = "Card Title",
	description = "Card description text goes here.",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 120),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				MaterialRoblox.Components.Card(Scope, {
					onClick = function() print("Card clicked") end,
					[Scope.Children] = {
						Scope:New("TextLabel") {
							Size = UDim2.new(1, 0, 0, 24),
							BackgroundTransparency = 1,
							Text = props.controls.title,
							FontFace = Font.fromEnum(Enum.Font.GothamBold),
							TextSize = 16,
							TextColor3 = Color3.fromHex("#1C1B1F"),
							TextXAlignment = Enum.TextXAlignment.Left,
						},
						Scope:New("TextLabel") {
							Size = UDim2.new(1, 0, 0, 40),
							BackgroundTransparency = 1,
							Text = props.controls.description,
							FontFace = Font.fromEnum(Enum.Font.Gotham),
							TextSize = 14,
							TextColor3 = Color3.fromHex("#49454F"),
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
						},
					}
				}),
			}
		}
	end,
}