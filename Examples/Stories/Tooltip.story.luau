--[[
	Flipbook Story: Tooltip
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion");
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	text = "Tooltip text",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		local button = MaterialRoblox.Components.TextButton(Scope, {
			text = "Hover me",
		});

		MaterialRoblox.Components.Tooltip(Scope, {
			text = props.controls.text,
			attachTo = button,
		}).Parent = Scope;

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				button,
			}
		}
	end,
}