--[[
	Flipbook Story: Snackbar
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion");
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	message = "Item archived",
	actionText = "Undo",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local open = Scope:Value(true);

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 100),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				MaterialRoblox.Components.Snackbar(Scope, {
					message = props.controls.message,
					actionText = props.controls.actionText,
					onAction = function()
						print("Action clicked")
						open:set(false)
					end,
					open = open,
				}),
			}
		}
	end,
}