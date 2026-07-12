--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local DividerTokens = require(MaterialRoblox.Tokens.Divider);

local Children = Fusion.Children;

local function Divider(
	scope: Fusion.Scope,
	props: {
		inset: boolean?,
		vertical: boolean?,
	}
)
	local Tokens = DividerTokens();

	local inset = props.inset or false;
	local vertical = props.vertical or false;

	if vertical then
		return scope:New("Frame") {
			Size = UDim2.new(0, Tokens.thickness, 1, 0),
			BackgroundColor3 = Tokens.color,
			BorderSizePixel = 0,
		}
	end

	return scope:New("Frame") {
		Size = UDim2.new(1, if inset then -16 else 0, 0, Tokens.thickness),
		Position = if inset then UDim2.new(0, 16, 0, 0) else UDim2.fromScale(0, 0),
		BackgroundColor3 = Tokens.color,
		BorderSizePixel = 0,
	}
end

return Divider;