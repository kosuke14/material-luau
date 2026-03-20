--!strict
--Copyright 2022 shunnedreality. This code is licensed under the MIT license.

local Display = require(script.Parent.Display);

local Resolution = 1--Display.getImageSetScale();

local function makeFont(fontFamily: number, weight: Enum.FontWeight)
	return Font.fromId(fontFamily, weight)
end

local function FontBuilder(fontFamily: number)
	local FontTheme = {
		expressiveFont = makeFont(fontFamily, Enum.FontWeight.Bold),
		display = {
			large = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 59 * Resolution
			},
			medium = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 47 * Resolution
			},
			small = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 38 * Resolution
			},
		},
		headline = {
			large = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 34 * Resolution
			},
			medium = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 30 * Resolution
			},
			small = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 26 * Resolution
			},
		},
		title = {
			large = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 24 * Resolution
			},
			medium = {
				font = makeFont(fontFamily, Enum.FontWeight.Medium),
				size = 18 * Resolution
			},
			small = {
				font = makeFont(fontFamily, Enum.FontWeight.Medium),
				size = 16 * Resolution
			},
		},
		label = {
			large = {
				font = makeFont(fontFamily, Enum.FontWeight.Medium),
				size = 16 * Resolution
			},
			medium = {
				font = makeFont(fontFamily, Enum.FontWeight.Medium),
				size = 14 * Resolution
			},
			small = {
				font = makeFont(fontFamily, Enum.FontWeight.Medium),
				size = 13 * Resolution
			},
		},
		body = {
			large = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 18 * Resolution
			},
			medium = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 16 * Resolution
			},
			small = {
				font = makeFont(fontFamily, Enum.FontWeight.Regular),
				size = 14 * Resolution
			},
		},
	}

	return FontTheme
end

return FontBuilder