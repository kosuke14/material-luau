--!nonstrict
local TweenService = game:GetService("TweenService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

-- M3 indeterminate: short (600ms) and long (1500ms) easings alternate
local SHORT_DURATION = 0.6;
local LONG_DURATION = 1.5;
local TWEEN_INFO_SHORT = TweenInfo.new(SHORT_DURATION, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out);
local TWEEN_INFO_LONG = TweenInfo.new(LONG_DURATION, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut);

local function LinearProgress(scope: Fusion.Scope, props: {
    indeterminate: Fusion.Value<boolean>?,
    value: Fusion.Value<number>?,
})
    local Tokens = LinearProgressTokens();

    -- Determinate mode
    local function updateDeterminate(bar, use)
        local val = props.value and use(props.value) or 0
        local width = math.clamp(val, 0, 1)
        bar.AnchorPoint = Vector2.new(0, 0.5)
        bar.Size = UDim2.new(width, 0, 0, Tokens.trackThickness)
        bar.Position = UDim2.new(0, 0, 0.5, 0)
    end

    -- Indeterminate mode: tween loop
    local function runIndeterminate(bar)
        local running = true

        local function cleanup()
            running = false
        end

        table.insert(scope, cleanup)

        task.spawn(function()
            while running do
                -- Short easing: grow from left, bar appears from off-screen
                bar.AnchorPoint = Vector2.new(1, 0.5)
                bar.Position = UDim2.new(0, 0, 0.5, 0)
                bar.Size = UDim2.new(0, 0, 0, Tokens.trackThickness)

                local tweenShort = TweenService:Create(bar, TWEEN_INFO_SHORT, {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(1, 0, 0.5, 0),
                    Size = UDim2.new(0.6, 0, 0, Tokens.trackThickness),
                })
                tweenShort:Play()
                tweenShort.Completed:Wait()

                if not running then break end

                bar.AnchorPoint = Vector2.new(1, 0.5)
                bar.Position = UDim2.new(0, 0, 0.5, 0)
                -- Long easing: translate to right while shrinking
                local tweenLong = TweenService:Create(bar, TWEEN_INFO_LONG, {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(1, 0, 0.5, 0),
                    Size = UDim2.new(0.25, 0, 0, Tokens.trackThickness),
                })
                tweenLong:Play()
                tweenLong.Completed:Wait()

                if not running then break end
            end
        end)
    end

    -- Setup bar
    local bar = scope:New("Frame") {
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 0, 0.5, 0),
        Size = UDim2.new(0, 0, 0, Tokens.trackHeight),
        BackgroundColor3 = Tokens.activeIndicatorColor,
        BorderSizePixel = 0,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(1, 0),
            },
        }
    }

    -- Handle mode switching
    if props.indeterminate then
        scope:Observer(props.indeterminate):onChange(function()
            if Fusion.peek(props.indeterminate) then
                runIndeterminate(bar)
            else
                updateDeterminate(bar, Fusion.peek)
            end
        end)

        if Fusion.peek(props.indeterminate) then
            runIndeterminate(bar)
        else
            updateDeterminate(bar, Fusion.peek)
        end
    end

    -- Handle determinate value changes
    if props.value then
        scope:Observer(props.value):onChange(function()
            if not (props.indeterminate and Fusion.peek(props.indeterminate)) then
                updateDeterminate(bar, Fusion.peek)
            end
        end)
        updateDeterminate(bar, Fusion.peek)
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

            bar,
        }
    }
end

return LinearProgress
