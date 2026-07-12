--[[
	Flipbook Story: Dialog
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion");
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	headline = "Dialog Title",
	body = "Dialog body text goes here.",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local open = Scope:Value(true);

		MaterialRoblox.Components.Dialog(Scope, {
			headline = props.controls.headline,
			open = open,
			buttons = {
				{ label = "Cancel", onClick = function() open:set(false) end },
				{ label = "OK", onClick = function() open:set(false) end },
			},
		}).Parent = Scope;

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 60),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				MaterialRoblox.Components.TextButton(Scope, {
					text = "Open Dialog",
					onClick = function() open:set(true) end,
				}),
			}
		}
	end,
}