--!nonstrict
local RunS = game:GetService("RunService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

-- M3 indeterminate: alternate between short (600ms) and long (1500ms) easings
local SHORT_DURATION = 0.6;
local LONG_DURATION = 1.5;
local TOTAL_DURATION = SHORT_DURATION + LONG_DURATION;

-- Exponential Out easing to approximate cubic-bezier(0.05, 0.7, 0.1, 1.0)
local function easeOut(t: number): number
    return 1 - math.pow(2, -10 * t);
end

local function LinearProgress(scope: Fusion.Scope, props: {
    indeterminate: Fusion.Value<boolean>?,
    value: Fusion.Value<number>?,
})
    local Tokens = LinearProgressTokens();
    local elapsed = scope:Value(0);

    table.insert(scope, RunS.RenderStepped:Connect(function(dt)
        elapsed:set((scope.peek(elapsed) + dt) % TOTAL_DURATION)
    end))

    -- Determinate: fixed width at left edge
    local function getDeterminateWidth(use)
        local val = props.value and use(props.value) or 0
        return math.clamp(val, 0, 1)
    end

    -- Indeterminate: two alternating animations
    local function getIndeterminateWidth(use)
        local t = use(elapsed)

        if t < SHORT_DURATION then
            -- Short easing: grow from 0% to 60%
            local progress = easeOut(t / SHORT_DURATION)
            return progress * 0.6
        else
            -- Long easing: shrink from 60% to 30% while moving
            local progress = easeOut((t - SHORT_DURATION) / LONG_DURATION)
            return 0.6 - (progress * 0.3)
        end
    end

    local function getIndeterminatePosition(use)
        local t = use(elapsed)

        if t < SHORT_DURATION then
            -- Short easing: stay at left edge
            return 0
        else
            -- Long easing: move from 0% to 70%
            local progress = easeOut((t - SHORT_DURATION) / LONG_DURATION)
            return progress * 0.7
        end
    end

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, Tokens.trackHeight),
        BackgroundTransparency = 1,
        ClipsDescendants = true,

        [Children] = {
            -- Track (background)
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

            -- Active indicator
            scope:New("Frame") {
                Size = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    local width = isIndeterminate and getIndeterminateWidth(use) or getDeterminateWidth(use)
                    return UDim2.new(width, 0, 0, Tokens.trackThickness)
                end),
                Position = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    local pos = isIndeterminate and getIndeterminatePosition(use) or 0
                    return UDim2.new(pos, 0, 0.5, 0)
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