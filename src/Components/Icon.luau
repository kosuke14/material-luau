--!nonstrict
local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local Icons = require(MaterialRoblox.Parent['material-symbols-roblox']);
local Theming = require(MaterialRoblox.Utils.Theming);

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
		ImageColor3 = scope:Computed(function(use)
			if props.color then
				return use(props.color)
			else
				local theme = Theming:now();
				return theme.color.onSurface;
			end
		end),
		BackgroundTransparency = 1
	}
end

return Icon;