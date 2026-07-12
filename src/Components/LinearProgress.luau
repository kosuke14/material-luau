--!nonstrict
local RunS = game:GetService("RunService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

-- M3 indeterminate animation timing
local SHORT_DURATION = 0.6; -- 600ms grow/shrink
local LONG_DURATION = 1.5;  -- 1500ms translate
local TOTAL_DURATION = SHORT_DURATION + LONG_DURATION;

-- Attempt to approximate cubic-bezier(0.05, 0.7, 0.1, 1.0)
-- Using Exponential Out as closest match
local function easingExpoOut(t: number): number
    return 1 - math.pow(2, -10 * t);
end

local function easingExpoIn(t: number): number
    return math.pow(2, 10 * (t - 1));
end

local function linearInterp(t: number, from: number, to: number): number
    return from + (to - from) * t;
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

    -- Determinate: simple width based on value
    local function getDeterminateProps(use)
        local val = props.value and use(props.value) or 0
        local width = math.clamp(val, 0, 1)
        return {
            width = width,
            position = 0,
        }
    end

    -- Indeterminate: grow + translate + shrink cycle
    local function getIndeterminateProps(use)
        local t = use(elapsed);

        if t < SHORT_DURATION then
            -- Phase 1: Grow from left edge
            -- Width: 0% -> 50%, Position: stays at 0%
            local phase = easingExpoOut(t / SHORT_DURATION);
            return {
                width = linearInterp(phase, 0, 0.5),
                position = 0,
            }
        else
            -- Phase 2: Translate right while shrinking
            -- Position: 0% -> 100%, Width: 50% -> 25%
            local phase = easingExpoOut((t - SHORT_DURATION) / LONG_DURATION);
            return {
                width = linearInterp(phase, 0.5, 0.25),
                position = phase,
            }
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
                    local props_data = isIndeterminate and getIndeterminateProps(use) or getDeterminateProps(use)
                    return UDim2.new(props_data.width, 0, 0, Tokens.trackThickness)
                end),
                Position = scope:Computed(function(use)
                    local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
                    local props_data = isIndeterminate and getIndeterminateProps(use) or getDeterminateProps(use)
                    return UDim2.new(props_data.position, 0, 0.5, 0)
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