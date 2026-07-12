--[[
	Flipbook Storybook configuration for MaterialLuau
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");

local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

return {
	name = "MaterialLuau",
	storyRoots = {
		script.Parent,
	},
	packages = {
		Fusion = Fusion,
		MaterialRoblox = MaterialRoblox,
	},
}