--!nonstrict
local RunS = game:GetService("RunService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;
local INDETERMINATE_DURATION = 4;

local function LinearProgress(scope: Fusion.Scope, props: {
    indeterminate: Fusion.Value<boolean>?,
    value: Fusion.Value<number>?,
})
    local Tokens = LinearProgressTokens();

    local elapsed = scope:Value(0);

    table.insert(scope, RunS.RenderStepped:Connect(function(dt)
        elapsed:set((scope.peek(elapsed) + dt) % INDETERMINATE_DURATION)
    end))

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, Tokens.trackHeight),
        BackgroundTransparency = 1,
        ClipsDescendants = true,

        [Children] = {
            scope:New("Frame") {
                Size = UDim2.fromScale(1, 1),
                BackgroundColor3 = Tokens.trackColor,
                BorderSizePixel = 0,
                [Children] = {
                    scope:New("UICorner") {
                        CornerRadius = UDim.new(1, 0),
                    },
                }
            },

            scope:New("Frame") {
                Size = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    if not isIndeterminate then
                        local val = props.value and use(props.value) or 0
                        return UDim2.new(math.clamp(val, 0, 1), 0, 0, Tokens.trackThickness)
                    end
                    local t = use(elapsed) / INDETERMINATE_DURATION
                    local width = t < 0.5 and math.clamp(t * 2, 0.1, 0.8) or math.clamp(1 - (t - 0.5) * 2, 0.1, 0.8)
                    return UDim2.new(width, 0, 0, Tokens.trackThickness)
                end),
                Position = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    if not isIndeterminate then return UDim2.fromScale(0, 0.5) end
                    local t = use(elapsed) / INDETERMINATE_DURATION
                    local xScale = t < 0.5 and math.clamp(t * 4 - 0.5, 0, 1) or math.clamp((t - 0.5) * 4 - 0.5, 0, 1)
                    return UDim2.new(xScale, 0, 0.5, 0)
                end),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundColor3 = Tokens.activeIndicatorColor,
                BorderSizePixel = 0,

                [Children] = {
                    scope:New("UICorner") {
                        CornerRadius = UDim.new(1, 0),
                    },
                }
            },
        }
    }
end

return LinearProgress