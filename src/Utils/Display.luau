--!strict

local UserInputService = game:GetService("UserInputService");
local GuiService = game:GetService("GuiService");

local function getDisplayWidth()
	return workspace.CurrentCamera.ViewportSize.X
end

local function getDisplayHeight()
	return workspace.CurrentCamera.ViewportSize.Y
end

local function onDisplayChange(
	callback: () -> ()
)
	return workspace.CurrentCamera.Changed:Connect(function(
		property: string
	)
		if property == "ViewportSize" then
			callback()
		end
	end)
end

local function getImageSetScale(): number
	local GuiService = game:GetService("GuiService")
	local UserInputService = game:GetService("UserInputService")

	-- Attempt to get the resolution scale using the standard API call.
	-- This is wrapped in a 'pcall' (protected call) because it's a privileged API
	-- and may fail depending on the script's security context.
	local success, scale: number = pcall(GuiService.GetResolutionScale, GuiService)

	if success then
		return scale
	end

	-- If the standard API call fails, use fallback methods.
	-- Check if the device is a console (e.g., Xbox), which uses a 'TenFootInterface'.
	-- These devices typically default to a 3x scale for UI visibility from a distance.
	if GuiService:IsTenFootInterface() then
		scale = 3
	else
		-- This is a clever workaround for when 'GetResolutionScale' is not accessible.
		-- It leverages the fact that KeyCode images (like gamepad button icons) often
		-- include the resolution scale directly in their file name.
		-- Example: "rbxasset://textures/ui/Controls/ButtonA@2x.png" contains "@2x".
		local ok, scaleHack = pcall(function()
			local buttonContentId = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonA)
			-- Use string matching to extract the number between "@" and "x." at the end of the URL.
			local buttonScaleString = buttonContentId:lower():match("@([%d%.]+)x%.%w+$")
			
			-- Convert the extracted string to a number. If no match is found or the conversion
			-- fails, default to 1.
			return tonumber(buttonScaleString) or 1
		end)

		-- If the hacky method was successful, use its result; otherwise, default to 1.
		scale = if ok and scaleHack then scaleHack else 1
	end

	-- Final assertion to ensure a valid number is returned before exiting.
	assert(type(scale) == "number", "Failed to get a valid resolution scale.")
	
	return scale
end

return {
	getDisplayWidth = getDisplayWidth,
	getDisplayHeight = getDisplayHeight,
	onDisplayChange = onDisplayChange,
	getImageSetScale = getImageSetScale
}