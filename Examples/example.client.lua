--[[
	MaterialLuau v1.0 - Full Component Showcase
	This example demonstrates all available components.
	Run this as a LocalScript under a ScreenGui.
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");

local ScreenGui = script.Parent;

local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local Scope = Fusion.scoped(Fusion);
local Children = Fusion.Children;

-- State values
local dialogOpen = Scope:Value(false);
local alertOpen = Scope:Value(false);
local sideSheetOpen = Scope:Value(false);
local snackbarOpen = Scope:Value(false);
local checkboxA = Scope:Value(true);
local checkboxB = Scope:Value(false);
local radioOption = Scope:Value(1);
local switchActive = Scope:Value(false);
local chipSelected = Scope:Value(false);
local textFieldValue = Scope:Value("");
local filledTextFieldValue = Scope:Value("");
local progressValue = Scope:Value(0.6);

-- Layout container
local ScrollingFrame = Scope:New("ScrollingFrame") {
	Parent = ScreenGui,
	Size = UDim2.fromScale(1, 1),
	CanvasSize = UDim2.fromScale(1, 0),
	AutomaticCanvasSize = Enum.AutomaticSize.Y,
	BackgroundColor3 = Color3.fromHex("#FAFAFA"),

	[Children] = {
		Scope:New("UIListLayout") {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 12),
		},
		Scope:New("UIPadding") {
			PaddingTop = UDim.new(0, 16),
			PaddingBottom = UDim.new(0, 80),
			PaddingLeft = UDim.new(0, 16),
			PaddingRight = UDim.new(0, 16),
		},
	}
}

-- Helper: section header
local function addHeader(text, order)
	Scope:New("TextLabel") {
		Parent = ScrollingFrame,
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		Text = text,
		TextXAlignment = Enum.TextXAlignment.Left,
		FontFace = Font.fromEnum(Enum.Font.GothamBold),
		TextSize = 16,
		TextColor3 = Color3.fromHex("#1C1B1F"),
		LayoutOrder = order,
	}
end

------------------------------------------------------------------------
-- 1. Checkbox
------------------------------------------------------------------------
addHeader("Checkbox", 100)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 48),
	BackgroundTransparency = 1,
	LayoutOrder = 101,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 16),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		MaterialRoblox.Components.Checkbox(Scope, {
			active = checkboxA,
			onClick = function()
				print("Checkbox A:", checkboxA:get())
			end,
		}),
		Scope:New("TextLabel") {
			Size = UDim2.new(0, 120, 1, 0),
			BackgroundTransparency = 1,
			Text = "Checked",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
		MaterialRoblox.Components.Checkbox(Scope, {
			active = checkboxB,
		}),
		Scope:New("TextLabel") {
			Size = UDim2.new(0, 120, 1, 0),
			BackgroundTransparency = 1,
			Text = "Unchecked",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
		MaterialRoblox.Components.Checkbox(Scope, {
			active = Scope:Value(false),
			disabled = Scope:Value(true),
		}),
		Scope:New("TextLabel") {
			Size = UDim2.new(0, 120, 1, 0),
			BackgroundTransparency = 1,
			Text = "Disabled",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
	}
}

------------------------------------------------------------------------
-- 2. RadioButton
------------------------------------------------------------------------
addHeader("RadioButton", 200)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 48),
	BackgroundTransparency = 1,
	LayoutOrder = 201,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 16),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},

		Scope:New("TextLabel") {
			Size = UDim2.new(0, 30, 1, 0),
			BackgroundTransparency = 1,
			Text = "A",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
		MaterialRoblox.Components.RadioButton(Scope, {
			active = Scope:Computed(function(use)
				return use(radioOption) == 1
			end),
			onClick = function()
				radioOption:set(1)
			end,
		}),

		Scope:New("TextLabel") {
			Size = UDim2.new(0, 30, 1, 0),
			BackgroundTransparency = 1,
			Text = "B",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
		MaterialRoblox.Components.RadioButton(Scope, {
			active = Scope:Computed(function(use)
				return use(radioOption) == 2
			end),
			onClick = function()
				radioOption:set(2)
			end,
		}),

		Scope:New("TextLabel") {
			Size = UDim2.new(0, 30, 1, 0),
			BackgroundTransparency = 1,
			Text = "C",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
		MaterialRoblox.Components.RadioButton(Scope, {
			active = Scope:Computed(function(use)
				return use(radioOption) == 3
			end),
			onClick = function()
				radioOption:set(3)
			end,
		}),

		Scope:New("TextLabel") {
			Size = UDim2.new(0, 60, 1, 0),
			BackgroundTransparency = 1,
			Text = Scope:Computed(function(use)
				return "(selected: " .. tostring(use(radioOption)) .. ")"
			end),
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 12,
			TextColor3 = Color3.fromHex("#49454F"),
		},
	}
}

------------------------------------------------------------------------
-- 3. Switch
------------------------------------------------------------------------
addHeader("Switch", 300)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 48),
	BackgroundTransparency = 1,
	LayoutOrder = 301,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 16),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		MaterialRoblox.Components.Switch(Scope, {
			active = switchActive,
		}),
		Scope:New("TextLabel") {
			Size = UDim2.new(0, 200, 1, 0),
			BackgroundTransparency = 1,
			Text = Scope:Computed(function(use)
				return use(switchActive) and "On" or "Off"
			end),
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
	}
}

------------------------------------------------------------------------
-- 4. Chip
------------------------------------------------------------------------
addHeader("Chip", 400)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 48),
	BackgroundTransparency = 1,
	LayoutOrder = 401,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 8),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		MaterialRoblox.Components.Chip(Scope, {
			label = "Flat",
		}),
		MaterialRoblox.Components.Chip(Scope, {
			label = "Elevated",
			variant = "elevated",
		}),
		MaterialRoblox.Components.Chip(Scope, {
			label = "Selectable",
			selected = chipSelected,
		}),
		MaterialRoblox.Components.Chip(Scope, {
			label = "Wi-Fi",
			icon = "wifi",
		}),
	}
}

------------------------------------------------------------------------
-- 5. Divider
------------------------------------------------------------------------
addHeader("Divider", 500)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 1),
	BackgroundTransparency = 1,
	LayoutOrder = 501,

	[Children] = {
		MaterialRoblox.Components.Divider(Scope, {}),
	}
}

------------------------------------------------------------------------
-- 6. TextField (Outlined)
------------------------------------------------------------------------
addHeader("TextField - Outlined", 600)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 70),
	BackgroundTransparency = 1,
	LayoutOrder = 601,

	[Children] = {
		MaterialRoblox.Components.TextField(Scope, {
			label = "Outlined Field",
			value = textFieldValue,
			variant = "outlined",
			placeholder = "Type here...",
		}),
	}
}

------------------------------------------------------------------------
-- 7. TextField (Filled)
------------------------------------------------------------------------
addHeader("TextField - Filled", 700)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 70),
	BackgroundTransparency = 1,
	LayoutOrder = 701,

	[Children] = {
		MaterialRoblox.Components.TextField(Scope, {
			label = "Filled Field",
			value = filledTextFieldValue,
			variant = "filled",
			leadingIcon = "person",
		}),
	}
}

------------------------------------------------------------------------
-- 8. LinearProgress
------------------------------------------------------------------------
addHeader("LinearProgress", 800)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 24),
	BackgroundTransparency = 1,
	LayoutOrder = 801,

	[Children] = {
		MaterialRoblox.Components.LinearProgress(Scope, {
			value = progressValue,
		}),
	}
}

addHeader("LinearProgress - Indeterminate", 810)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 24),
	BackgroundTransparency = 1,
	LayoutOrder = 811,

	[Children] = {
		MaterialRoblox.Components.LinearProgress(Scope, {
			indeterminate = true,
		}),
	}
}

------------------------------------------------------------------------
-- 9. Card
------------------------------------------------------------------------
addHeader("Card", 900)

MaterialRoblox.Components.Card(Scope, {
	variant = "filled",
	onClick = function()
		print("Filled card clicked")
	end,
	[Children] = {
		Scope:New("TextLabel") {
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Text = "Filled Card - Click me",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
	}
}).Parent = ScrollingFrame

MaterialRoblox.Components.Card(Scope, {
	variant = "outlined",
	[Children] = {
		Scope:New("TextLabel") {
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Text = "Outlined Card",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
	}
}).Parent = ScrollingFrame

------------------------------------------------------------------------
-- 10. Badge
------------------------------------------------------------------------
addHeader("Badge", 1000)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 48),
	BackgroundTransparency = 1,
	LayoutOrder = 1001,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 24),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},

		-- Dot badge on an icon-like frame
		Scope:New("Frame") {
			Size = UDim2.fromOffset(40, 40),
			BackgroundColor3 = Color3.fromHex("#6750A4"),
			[Children] = {
				Scope:New("UICorner") { CornerRadius = UDim.new(1, 0) },
				Scope:New("TextLabel") {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "M",
					FontFace = Font.fromEnum(Enum.Font.GothamBold),
					TextSize = 16,
					TextColor3 = Color3.new(1, 1, 1),
				},
				MaterialRoblox.Components.Badge(Scope, {
					visible = Scope:Value(true),
				}),
			}
		},

		-- Number badge
		Scope:New("Frame") {
			Size = UDim2.fromOffset(40, 40),
			BackgroundColor3 = Color3.fromHex("#6750A4"),
			[Children] = {
				Scope:New("UICorner") { CornerRadius = UDim.new(1, 0) },
				Scope:New("TextLabel") {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "N",
					FontFace = Font.fromEnum(Enum.Font.GothamBold),
					TextSize = 16,
					TextColor3 = Color3.new(1, 1, 1),
				},
				MaterialRoblox.Components.Badge(Scope, {
					count = 12,
					visible = Scope:Value(true),
				}),
			}
		},
	}
}

------------------------------------------------------------------------
-- 11. FloatingActionButton
------------------------------------------------------------------------
addHeader("FloatingActionButton", 1100)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 60),
	BackgroundTransparency = 1,
	LayoutOrder = 1101,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 12),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		MaterialRoblox.Components.FloatingActionButton(Scope, {
			icon = "add",
			variant = "primary",
			size = "small",
			onClick = function() print("Small FAB") end,
		}),
		MaterialRoblox.Components.FloatingActionButton(Scope, {
			icon = "edit",
			variant = "secondary",
			onClick = function() print("Medium FAB") end,
		}),
		MaterialRoblox.Components.FloatingActionButton(Scope, {
			icon = "share",
			variant = "tertiary",
			size = "large",
			onClick = function() print("Large FAB") end,
		}),
		MaterialRoblox.Components.FloatingActionButton(Scope, {
			icon = "star",
			variant = "surface",
			size = "small",
			onClick = function() print("Surface FAB") end,
		}),
	}
}

------------------------------------------------------------------------
-- 12. Icon
------------------------------------------------------------------------
addHeader("Icon", 1200)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 40),
	BackgroundTransparency = 1,
	LayoutOrder = 1201,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 16),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		MaterialRoblox.Components.Icon(Scope, { icon = "home" }),
		MaterialRoblox.Components.Icon(Scope, { icon = "settings", fill = true }),
		MaterialRoblox.Components.Icon(Scope, { icon = "favorite", fill = true }),
		MaterialRoblox.Components.Icon(Scope, { icon = "star" }),
		MaterialRoblox.Components.Icon(Scope, { icon = "search" }),
	}
}

------------------------------------------------------------------------
-- 13. Dialog (overlay - fixed Visible)
------------------------------------------------------------------------
addHeader("Dialog", 1300)

MaterialRoblox.Components.TextButton(Scope, {
	text = "Open Dialog",
	variant = "filled",
	onClick = function()
		dialogOpen:set(true)
	end,
}).Parent = ScrollingFrame

MaterialRoblox.Components.Dialog(Scope, {
	headline = "Discard draft?",
	open = dialogOpen,
	buttons = {
		{
			label = "Cancel",
			onClick = function()
				dialogOpen:set(false)
			end,
		},
		{
			label = "Discard",
			onClick = function()
				dialogOpen:set(false)
			end,
		},
	},
}).Parent = ScreenGui

------------------------------------------------------------------------
-- 14. AlertDialog (overlay)
------------------------------------------------------------------------
addHeader("AlertDialog", 1400)

MaterialRoblox.Components.TextButton(Scope, {
	text = "Open Alert Dialog",
	variant = "filled",
	onClick = function()
		alertOpen:set(true)
	end,
}).Parent = ScrollingFrame

MaterialRoblox.Components.AlertDialog(Scope, {
	headline = "Delete this item?",
	body = "This action cannot be undone. The item will be permanently removed.",
	open = alertOpen,
	buttons = {
		{
			label = "Cancel",
			onClick = function()
				alertOpen:set(false)
			end,
		},
		{
			label = "Delete",
			onClick = function()
				alertOpen:set(false)
			end,
		},
	},
}).Parent = ScreenGui

------------------------------------------------------------------------
-- 15. SideSheet (overlay)
------------------------------------------------------------------------
addHeader("SideSheet", 1500)

MaterialRoblox.Components.TextButton(Scope, {
	text = "Open Side Sheet",
	variant = "filled",
	onClick = function()
		sideSheetOpen:set(true)
	end,
}).Parent = ScrollingFrame

MaterialRoblox.Components.SideSheet(Scope, {
	open = sideSheetOpen,
	headline = "Side Sheet",
	[Children] = {
		Scope:New("TextLabel") {
			Size = UDim2.new(1, 0, 0, 40),
			BackgroundTransparency = 1,
			Text = "Sheet content goes here.",
			FontFace = Font.fromEnum(Enum.Font.Gotham),
			TextSize = 14,
			TextColor3 = Color3.fromHex("#1C1B1F"),
		},
	},
}).Parent = ScreenGui

------------------------------------------------------------------------
-- 16. Snackbar (overlay)
------------------------------------------------------------------------
addHeader("Snackbar", 1600)

MaterialRoblox.Components.TextButton(Scope, {
	text = "Show Snackbar",
	variant = "filled",
	onClick = function()
		snackbarOpen:set(true)
		task.delay(3, function()
			snackbarOpen:set(false)
		end)
	end,
}).Parent = ScrollingFrame

MaterialRoblox.Components.Snackbar(Scope, {
	message = "Item archived successfully",
	actionText = "Undo",
	onAction = function()
		print("Undo clicked")
		snackbarOpen:set(false)
	end,
	open = snackbarOpen,
}).Parent = ScreenGui

------------------------------------------------------------------------
-- 17. CircularProgress
------------------------------------------------------------------------
addHeader("CircularProgress", 1700)

Scope:New("Frame") {
	Parent = ScrollingFrame,
	Size = UDim2.new(1, 0, 0, 60),
	BackgroundTransparency = 1,
	LayoutOrder = 1701,

	[Children] = {
		Scope:New("UIListLayout") {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 24),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		MaterialRoblox.Components.CircularProgressIndicator(Scope, {
			Size = 48,
		}),
		MaterialRoblox.Components.CircularProgressIndicator(Scope, {
			Size = 32,
			StrokeWidth = 3,
			Color = Color3.fromHex("#6750A4"),
		}),
	}
}

------------------------------------------------------------------------
-- 18. NavigationBar
------------------------------------------------------------------------
addHeader("NavigationBar", 1800)

MaterialRoblox.Components.NavigationBar(Scope, {
	renderTabs = function()
		return {
			MaterialRoblox.Components.NavigationTab(Scope, {
				icon = "home",
				label = "Home",
			}),
			MaterialRoblox.Components.NavigationTab(Scope, {
				icon = "search",
				label = "Search",
			}),
			MaterialRoblox.Components.NavigationTab(Scope, {
				icon = "favorite",
				label = "Favorites",
			}),
			MaterialRoblox.Components.NavigationTab(Scope, {
				icon = "person",
				label = "Profile",
			}),
		}
	end,
}).Parent = ScrollingFrame

------------------------------------------------------------------------
-- 19. Tabs
------------------------------------------------------------------------
addHeader("Tabs", 1900)

MaterialRoblox.Components.Tabs(Scope, {
	renderTabs = function()
		return {
			MaterialRoblox.Components.TabItem(Scope, {
				icon = "library_music",
				label = "Music",
			}),
			MaterialRoblox.Components.TabItem(Scope, {
				icon = "video_library",
				label = "Videos",
			}),
			MaterialRoblox.Components.TabItem(Scope, {
				icon = "photo_library",
				label = "Photos",
			}),
		}
	end,
}).Parent = ScrollingFrame

print("[MaterialLuau] Example loaded - all components rendered")