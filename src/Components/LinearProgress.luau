--!nonstrict
local RunS = game:GetService("RunService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

-- M3 indeterminate: two easings alternate, both complete to 100%
local SHORT_DURATION = 0.6;
local LONG_DURATION = 1.5;
local TOTAL_DURATION = SHORT_DURATION + LONG_DURATION;

-- Exponential Out easing for short
local function easeOut(t: number): number
    return 1 - math.pow(2, -10 * t);
end

-- Exponential InOut easing for long
local function easeInOut(t: number): number
    if t < 0.5 then
        return 0.5 * math.pow(2, 20 * t - 10)
    else
        return 1 - 0.5 * math.pow(2, -20 * t + 10)
    end
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

    local function getDeterminateWidth(use)
        local val = props.value and use(props.value) or 0
        return math.clamp(val, 0, 1)
    end

    -- Both easings: position goes from 0 to 100%, width shrinks as it moves
    local function getIndeterminateWidth(use)
        local t = use(elapsed)
        local isShort = t < SHORT_DURATION
        local progress = isShort
            and easeOut(t / SHORT_DURATION)
            or easeInOut((t - SHORT_DURATION) / LONG_DURATION)

        -- Width: starts at 60%, shrinks to 25% as it moves
        return 0.6 - (progress * 0.35)
    end

    local function getIndeterminatePosition(use)
        local t = use(elapsed)
        local isShort = t < SHORT_DURATION
        local progress = isShort
            and easeOut(t / SHORT_DURATION)
            or easeInOut((t - SHORT_DURATION) / LONG_DURATION)

        -- Both easings: position completes to 100%
        return progress
    end

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
                    local width = isIndeterminate and getIndeterminateWidth(use) or getDeterminateWidth(use)
                    return UDim2.new(width, 0, 0, Tokens.trackThickness)
                end),
                Position = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    if not isIndeterminate then
                        return UDim2.new(0, 0, 0.5, 0)
                    end
                    local pos = getIndeterminatePosition(use)
                    return UDim2.new(pos, 0, 0.5, 0)
                end),
                AnchorPoint = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    -- Indeterminate: anchor right so bar starts off-screen left
                    return isIndeterminate and Vector2.new(1, 0.5) or Vector2.new(0, 0.5)
                end),
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