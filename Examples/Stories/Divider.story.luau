--[[
	Flipbook Story: Divider
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion");
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	inset = false,
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 40),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				MaterialRoblox.Components.Divider(Scope, {
					inset = props.controls.inset,
				}),
			}
		}
	end,
}