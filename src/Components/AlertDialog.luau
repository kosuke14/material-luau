--!nocheck
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local DialogTokens = require(MaterialRoblox.Tokens.Dialog);
local Dialog = require(MaterialRoblox.Components.Dialog);
local Fusion = require(MaterialRoblox.Parent.Fusion);

local Children = Fusion.Children;

local function AlertDialog(
    scope: Fusion.Scope,
    props: {
		headline: Fusion.UsedAs<string>,
		body: string,
		buttons: Fusion.UsedAs<{
			{ 
				label: string,
				onClick: () -> ()
			}	
		}>,
		open: Fusion.UsedAs<boolean>
    }
)
    local Tokens = DialogTokens();

    --print(scope);

    return Dialog(scope, {
        headline = props.headline,
        buttons = props.buttons,
        open = props.open,

        [Children] = scope:New("TextLabel") {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, -8, 0, 0),
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            Text = props.body,
            FontFace = Tokens.bodyText.font,
            TextSize = Tokens.bodyText.fontSize,
            TextColor3 = Tokens.bodyColor,
            TextWrapped = true,
            TextTruncate = Enum.TextTruncate.AtEnd,
            LayoutOrder = 1
        },
    })
end

return AlertDialog
