--[[
	Flipbook Story: TextField
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local controls = {
	variant = "outlined",
	label = "Label",
	placeholder = "Placeholder",
	leadingIcon = "",
	trailingIcon = "",
	supportingText = "",
}

type Props = {
	controls: typeof(controls),
}

return {
	controls = controls,
	story = function(props: Props)
		local Scope = Fusion.scoped(Fusion);
		local value = Scope:Value("");

		return Scope:New("Frame") {
			Size = UDim2.new(1, 0, 0, 80),
			BackgroundTransparency = 1,
			[Scope.Children] = {
				MaterialRoblox.Components.TextField(Scope, {
					label = props.controls.label,
					value = value,
					variant = props.controls.variant,
					placeholder = props.controls.placeholder,
					leadingIcon = props.controls.leadingIcon ~= "" and props.controls.leadingIcon or nil,
					trailingIcon = props.controls.trailingIcon ~= "" and props.controls.trailingIcon or nil,
					supportingText = props.controls.supportingText ~= "" and props.controls.supportingText or nil,
				}),
			}
		}
	end,
}