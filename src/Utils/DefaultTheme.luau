local MaterialRoblox = script.Parent.Parent;

local MaterialTypography = require(MaterialRoblox.Utils.MaterialTypography);
local ColorBuilder = require(MaterialRoblox.Utils.ColorBuilder);
local Shape = require(MaterialRoblox.Utils.Shape)

return {
	color = ColorBuilder("#4285F4", "light"),
	typography = MaterialTypography(16658221428),
	shape = Shape
}