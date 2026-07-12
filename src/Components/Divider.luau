--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local DividerTokens = require(MaterialRoblox.Tokens.Divider);

local function Divider(scope: Fusion.Scope, props: { inset: boolean? })
    local inset = props.inset or false;

    local tokens = scope:Computed(function(use)
        return DividerTokens()
    end)

    return scope:New("Frame") {
        Size = UDim2.new(1, inset and -16 or 0, 0, 1),
        Position = inset and UDim2.new(0, 16, 0, 0) or UDim2.fromScale(0, 0),
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return t.color
        end),
        BorderSizePixel = 0,
    }
end

return Divider