--!nonstrict
local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local Icons = require(MaterialRoblox.Parent['material-symbols-roblox']);

local DEFAULT_COLOR = Color3.fromHex("#1C1B1F");

local function Icon(
	scope: Fusion.Scope,
	props: {
		icon: Fusion.UsedAs<string>,
		fill: Fusion.UsedAs<boolean>?,
		color: Fusion.UsedAs<Color3>?,
	}
)
	return scope:New("ImageLabel") {
		Size = UDim2.fromOffset(24, 24),
		Image = scope:Computed(function(
			use: Fusion.Use
		)
			return Icons
				[use(props.fill or false) and "filled" or "outlined"]
				[props.icon];
		end),
		ImageColor3 = props.color or DEFAULT_COLOR,
		BackgroundTransparency = 1
	}
end

return Icon;