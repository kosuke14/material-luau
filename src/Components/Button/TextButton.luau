--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent.Parent;

local TextButtonTokens = require(MaterialRoblox.Tokens.TextButton);
local BaseButton = require(script.Parent.BaseButton);
local Fusion = require(MaterialRoblox.Parent.Fusion);

local function TextButton(
    scope: Fusion.Scope,
    props: {
        text: string,
        onClick: () -> (),
        leading: Instance?,
        size: "xsmall" | "small" | "medium" | "large" | "xlarge",
        type: "round" | "square"
    }
)
    return BaseButton(
        scope,
        props.text,
        props.onClick,
        function() end,
        props.leading,
        TextButtonTokens("text", props.size or "small", props.type or "round")
    )
end

return TextButton