--[[
	MaterialLuau v1.0 - Component Storybook
	Run as LocalScript under a ScreenGui.
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local ScreenGui = script.Parent;

local Fusion = require(ReplicatedStorage.Packages.Fusion);
local MaterialRoblox = require(ReplicatedStorage.Packages.MaterialRoblox);

local Scope = Fusion.scoped(Fusion);
local Children = Fusion.Children;

-- State values
local checkboxA = Scope:Value(true);
local checkboxB = Scope:Value(false);
local radioOption = Scope:Value(1);
local switchActive = Scope:Value(false);
local chipSelected = Scope:Value(false);
local textFieldValue = Scope:Value("");
local filledTextFieldValue = Scope:Value("");
local progressValue = Scope:Value(0.6);
local dialogOpen = Scope:Value(false);
local alertOpen = Scope:Value(false);
local sideSheetOpen = Scope:Value(false);
local snackbarOpen = Scope:Value(false);

-- Layout
local ScrollingFrame = Scope:New("ScrollingFrame") {
	Parent = ScreenGui,
	Size = UDim2.fromScale(1, 1),
	CanvasSize = UDim2.fromScale(1, 0),
	AutomaticCanvasSize = Enum.AutomaticSize.Y,
	BackgroundColor3 = Color3.fromHex("#FEF7FF"),

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

-- Helper
local function header(text, order)
	Scope:New("TextLabel") {
		Parent = ScrollingFrame,
		Size = UDim2.new(1, 0, 0, 32),
		BackgroundTransparency = 1,
		Text = text,
		TextXAlignment = Enum.TextXAlignment.Left,
		FontFace = Font.fromEnum(Enum.Font.GothamBold),
		TextSize = 18,
		TextColor3 = Color3.fromHex("#1C1B1F"),
		LayoutOrder = order,
	}
end

------------------------------------------------------------------------
-- Badge
------------------------------------------------------------------------
header("Badge", 100)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 101,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 24), VerticalAlignment = Enum.VerticalAlignment.Center },
		Scope:New("Frame") {
			Size = UDim2.fromOffset(40, 40), BackgroundColor3 = Color3.fromHex("#6750A4"),
			[Children] = {
				Scope:New("UICorner") { CornerRadius = UDim.new(1, 0) },
				Scope:New("TextLabel") { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "M", FontFace = Font.fromEnum(Enum.Font.GothamBold), TextSize = 16, TextColor3 = Color3.new(1, 1, 1) },
				MaterialRoblox.Components.Badge(Scope, { visible = Scope:Value(true) }),
			}
		},
		Scope:New("Frame") {
			Size = UDim2.fromOffset(40, 40), BackgroundColor3 = Color3.fromHex("#6750A4"),
			[Children] = {
				Scope:New("UICorner") { CornerRadius = UDim.new(1, 0) },
				Scope:New("TextLabel") { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "N", FontFace = Font.fromEnum(Enum.Font.GothamBold), TextSize = 16, TextColor3 = Color3.new(1, 1, 1) },
				MaterialRoblox.Components.Badge(Scope, { count = 12, visible = Scope:Value(true) }),
			}
		},
	}
}

------------------------------------------------------------------------
-- Buttons
------------------------------------------------------------------------
header("Buttons", 200)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 201,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 8), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.FilledTextButton(Scope, { text = "Filled" }),
		MaterialRoblox.Components.FilledTonalTextButton(Scope, { text = "Tonal" }),
		MaterialRoblox.Components.TextButton(Scope, { text = "Text" }),
	}
}

------------------------------------------------------------------------
-- Card
------------------------------------------------------------------------
header("Card", 300)

MaterialRoblox.Components.Card(Scope, {
	[Children] = {
		Scope:New("TextLabel") { Size = UDim2.new(1, 0, 0, 40), BackgroundTransparency = 1, Text = "Filled Card", FontFace = Font.fromEnum(Enum.Font.GothamBold), TextSize = 16, TextColor3 = Color3.fromHex("#1C1B1F"), TextXAlignment = Enum.TextXAlignment.Left },
	}
}).Parent = ScrollingFrame

------------------------------------------------------------------------
-- Checkbox
------------------------------------------------------------------------
header("Checkbox", 400)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 401,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 16), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.Checkbox(Scope, { active = checkboxA }),
		Scope:New("TextLabel") { Size = UDim2.new(0, 80, 1, 0), BackgroundTransparency = 1, Text = "Checked", FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
		MaterialRoblox.Components.Checkbox(Scope, { active = checkboxB }),
		Scope:New("TextLabel") { Size = UDim2.new(0, 80, 1, 0), BackgroundTransparency = 1, Text = "Unchecked", FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
	}
}

------------------------------------------------------------------------
-- Chip
------------------------------------------------------------------------
header("Chip", 500)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 501,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 8), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.Chip(Scope, { label = "Filter" }),
		MaterialRoblox.Components.Chip(Scope, { label = "Selectable", selected = chipSelected }),
		MaterialRoblox.Components.Chip(Scope, { label = "Wi-Fi", icon = "wifi" }),
	}
}

------------------------------------------------------------------------
-- CircularProgress
------------------------------------------------------------------------
header("CircularProgress", 600)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 60), BackgroundTransparency = 1, LayoutOrder = 601,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 24), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.CircularProgressIndicator(Scope, { Size = 48 }),
		MaterialRoblox.Components.CircularProgressIndicator(Scope, { Size = 32, StrokeWidth = 3, Color = Color3.fromHex("#6750A4") }),
	}
}

------------------------------------------------------------------------
-- Dialog
------------------------------------------------------------------------
header("Dialog", 700)

MaterialRoblox.Components.TextButton(Scope, { text = "Open Dialog", onClick = function() dialogOpen:set(true) end }).Parent = ScrollingFrame

MaterialRoblox.Components.Dialog(Scope, {
	headline = "Discard draft?", open = dialogOpen,
	buttons = {
		{ label = "Cancel", onClick = function() dialogOpen:set(false) end },
		{ label = "Discard", onClick = function() dialogOpen:set(false) end },
	},
}).Parent = ScreenGui

------------------------------------------------------------------------
-- AlertDialog
------------------------------------------------------------------------
header("AlertDialog", 800)

MaterialRoblox.Components.TextButton(Scope, { text = "Open Alert Dialog", onClick = function() alertOpen:set(true) end }).Parent = ScrollingFrame

MaterialRoblox.Components.AlertDialog(Scope, {
	headline = "Delete this item?", body = "This action cannot be undone.",
	open = alertOpen,
	buttons = {
		{ label = "Cancel", onClick = function() alertOpen:set(false) end },
		{ label = "Delete", onClick = function() alertOpen:set(false) end },
	},
}).Parent = ScreenGui

------------------------------------------------------------------------
-- Divider
------------------------------------------------------------------------
header("Divider", 900)

MaterialRoblox.Components.Divider(Scope, {}).Parent = ScrollingFrame

------------------------------------------------------------------------
-- FAB
------------------------------------------------------------------------
header("FloatingActionButton", 1000)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 60), BackgroundTransparency = 1, LayoutOrder = 1001,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 12), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.FloatingActionButton(Scope, { icon = "add", variant = "primary", size = "small" }),
		MaterialRoblox.Components.FloatingActionButton(Scope, { icon = "edit", variant = "secondary" }),
		MaterialRoblox.Components.FloatingActionButton(Scope, { icon = "share", variant = "tertiary", size = "large" }),
	}
}

------------------------------------------------------------------------
-- Icon
------------------------------------------------------------------------
header("Icon", 1100)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 40), BackgroundTransparency = 1, LayoutOrder = 1101,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 16), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.Icon(Scope, { icon = "home" }),
		MaterialRoblox.Components.Icon(Scope, { icon = "settings", fill = true }),
		MaterialRoblox.Components.Icon(Scope, { icon = "favorite", fill = true }),
		MaterialRoblox.Components.Icon(Scope, { icon = "star" }),
		MaterialRoblox.Components.Icon(Scope, { icon = "search" }),
	}
}

------------------------------------------------------------------------
-- IconButton
------------------------------------------------------------------------
header("IconButton", 1200)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 1201,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 8), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.IconButton(Scope, { icon = "favorite" }),
		MaterialRoblox.Components.IconButton(Scope, { icon = "share" }),
		MaterialRoblox.Components.IconButton(Scope, { icon = "delete" }),
	}
}

------------------------------------------------------------------------
-- LinearProgress
------------------------------------------------------------------------
header("LinearProgress", 1300)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 24), BackgroundTransparency = 1, LayoutOrder = 1301,
	[Children] = { MaterialRoblox.Components.LinearProgress(Scope, { value = progressValue }) },
}

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 40), BackgroundTransparency = 1, LayoutOrder = 1302,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 8), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.TextButton(Scope, { text = "-10%", onClick = function() progressValue:set(math.clamp(Fusion.peek(progressValue) - 0.1, 0, 1)) end }),
		Scope:New("TextLabel") { Size = UDim2.new(0, 60, 0, 24), BackgroundTransparency = 1, Text = Scope:Computed(function(use) return math.floor(use(progressValue) * 100) .. "%" end), FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
		MaterialRoblox.Components.TextButton(Scope, { text = "+10%", onClick = function() progressValue:set(math.clamp(Fusion.peek(progressValue) + 0.1, 0, 1)) end }),
	}
}

header("Indeterminate", 1310)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 24), BackgroundTransparency = 1, LayoutOrder = 1311,
	[Children] = { MaterialRoblox.Components.LinearProgress(Scope, { indeterminate = Scope:Value(true) }) },
}

------------------------------------------------------------------------
-- Menu
------------------------------------------------------------------------
header("Menu", 1400)

local menuButton = MaterialRoblox.Components.TextButton(Scope, { text = "Open Menu" })
menuButton.Parent = ScrollingFrame

MaterialRoblox.Components.Menu(Scope, {
	attachTo = menuButton,
	[Children] = {
		MaterialRoblox.Components.Item(Scope, { label = "Profile" }),
		MaterialRoblox.Components.Item(Scope, { label = "Settings" }),
		MaterialRoblox.Components.Item(Scope, { label = "Logout" }),
	}
}).Parent = ScreenGui

------------------------------------------------------------------------
-- NavigationBar
------------------------------------------------------------------------
header("NavigationBar", 1500)

MaterialRoblox.Components.NavigationBar(Scope, {
	renderTabs = function()
		return {
			MaterialRoblox.Components.NavigationTab(Scope, { icon = "home", label = "Home" }),
			MaterialRoblox.Components.NavigationTab(Scope, { icon = "search", label = "Search" }),
			MaterialRoblox.Components.NavigationTab(Scope, { icon = "favorite", label = "Favorites" }),
			MaterialRoblox.Components.NavigationTab(Scope, { icon = "person", label = "Profile" }),
		}
	end,
}).Parent = ScrollingFrame

------------------------------------------------------------------------
-- RadioButton
------------------------------------------------------------------------
header("RadioButton", 1600)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 1601,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 16), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.RadioButton(Scope, {
			active = Scope:Computed(function(use) return use(radioOption) == 1 end),
			onClick = function() radioOption:set(1) end,
		}),
		Scope:New("TextLabel") { Size = UDim2.new(0, 30, 1, 0), BackgroundTransparency = 1, Text = "A", FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
		MaterialRoblox.Components.RadioButton(Scope, {
			active = Scope:Computed(function(use) return use(radioOption) == 2 end),
			onClick = function() radioOption:set(2) end,
		}),
		Scope:New("TextLabel") { Size = UDim2.new(0, 30, 1, 0), BackgroundTransparency = 1, Text = "B", FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
		MaterialRoblox.Components.RadioButton(Scope, {
			active = Scope:Computed(function(use) return use(radioOption) == 3 end),
			onClick = function() radioOption:set(3) end,
		}),
		Scope:New("TextLabel") { Size = UDim2.new(0, 30, 1, 0), BackgroundTransparency = 1, Text = "C", FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
	}
}

------------------------------------------------------------------------
-- SideSheet
------------------------------------------------------------------------
header("SideSheet", 1700)

MaterialRoblox.Components.TextButton(Scope, { text = "Open Side Sheet", onClick = function() sideSheetOpen:set(true) end }).Parent = ScrollingFrame

MaterialRoblox.Components.SideSheet(Scope, {
	open = sideSheetOpen, headline = "Side Sheet",
	[Children] = {
		Scope:New("TextLabel") { Size = UDim2.new(1, 0, 0, 40), BackgroundTransparency = 1, Text = "Sheet content", FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F") },
	},
}).Parent = ScreenGui

------------------------------------------------------------------------
-- Snackbar
------------------------------------------------------------------------
header("Snackbar", 1800)

MaterialRoblox.Components.TextButton(Scope, {
	text = "Show Snackbar", onClick = function()
		snackbarOpen:set(true)
		task.delay(3, function() snackbarOpen:set(false) end)
	end,
}).Parent = ScrollingFrame

MaterialRoblox.Components.Snackbar(Scope, {
	message = "Item archived", actionText = "Undo",
	onAction = function() snackbarOpen:set(false) end,
	open = snackbarOpen,
}).Parent = ScreenGui

------------------------------------------------------------------------
-- Switch
------------------------------------------------------------------------
header("Switch", 1900)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, LayoutOrder = 1901,
	[Children] = {
		Scope:New("UIListLayout") { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 16), VerticalAlignment = Enum.VerticalAlignment.Center },
		MaterialRoblox.Components.Switch(Scope, { active = switchActive }),
		Scope:New("TextLabel") {
			Size = UDim2.new(0, 80, 1, 0), BackgroundTransparency = 1,
			Text = Scope:Computed(function(use) return use(switchActive) and "On" or "Off" end),
			FontFace = Font.fromEnum(Enum.Font.Gotham), TextSize = 14, TextColor3 = Color3.fromHex("#1C1B1F"),
		},
	}
}

------------------------------------------------------------------------
-- Tabs
------------------------------------------------------------------------
header("Tabs", 2000)

MaterialRoblox.Components.Tabs(Scope, {
	renderTabs = function()
		return {
			MaterialRoblox.Components.TabItem(Scope, { icon = "library_music", label = "Music" }),
			MaterialRoblox.Components.TabItem(Scope, { icon = "video_library", label = "Videos" }),
			MaterialRoblox.Components.TabItem(Scope, { icon = "photo_library", label = "Photos" }),
		}
	end,
}).Parent = ScrollingFrame

------------------------------------------------------------------------
-- TextField
------------------------------------------------------------------------
header("TextField", 2100)

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 70), BackgroundTransparency = 1, LayoutOrder = 2101,
	[Children] = {
		MaterialRoblox.Components.TextField(Scope, {
			label = "Outlined Field", value = textFieldValue, variant = "outlined", placeholder = "Type here...",
		}),
	}
}

Scope:New("Frame") {
	Parent = ScrollingFrame, Size = UDim2.new(1, 0, 0, 70), BackgroundTransparency = 1, LayoutOrder = 2102,
	[Children] = {
		MaterialRoblox.Components.TextField(Scope, {
			label = "Filled Field", value = filledTextFieldValue, variant = "filled", leadingIcon = "person",
		}),
	}
}

------------------------------------------------------------------------
-- Tooltip
------------------------------------------------------------------------
header("Tooltip", 2200)

local tooltipButton = MaterialRoblox.Components.TextButton(Scope, { text = "Hover for tooltip" })
tooltipButton.Parent = ScrollingFrame

MaterialRoblox.Components.Tooltip(Scope, {
	text = "This is a Material Design 3 tooltip",
	attachTo = tooltipButton,
}).Parent = ScreenGui

print("[MaterialLuau] Storybook loaded - all components rendered")