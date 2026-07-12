--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

local QUINT_OUT = TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);
local QUINT_INOUT_SHORT = TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut);
local QUINT_INOUT_MED = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut);
local QUINT_OUT_LONG = TweenInfo.new(1.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);

local function LinearProgress(scope: Fusion.Scope, props: {
    indeterminate: Fusion.Value<boolean>?,
    value: Fusion.Value<number>?,
})
    local Tokens = LinearProgressTokens();

    -- Goal values for indeterminate animation
    local goalPosition = scope:Value(UDim2.new(0, 0, 0.5, 0))
    local goalSize = scope:Value(UDim2.new(0.5, 0, 0, Tokens.trackThickness))

    -- Animated values
    local animatedPosition = scope:Tween(goalPosition, QUINT_OUT)
    local animatedSize = scope:Tween(goalSize, QUINT_INOUT_SHORT)

    -- Indeterminate loop
    local function runIndeterminate()
        local running = true

        table.insert(scope, function()
            running = false
        end)

        task.spawn(function()
            while running do
                -- Phase 1: Grow size + move right
                goalSize:set(UDim2.new(0.75, 0, 0, Tokens.trackThickness))
                goalPosition:set(UDim2.new(0.3, 0, 0.5, 0))
                task.wait(0.75)

                if not running then break end

                -- Phase 2: Shrink size + move off-screen
                goalSize:set(UDim2.new(0.5, 0, 0, Tokens.trackThickness))
                goalPosition:set(UDim2.new(1.5, 0, 0.5, 0))
                task.wait(0.5)

                if not running then break end

                -- Reset for next loop
                goalPosition:set(UDim2.new(0, 0, 0.5, 0))
                goalSize:set(UDim2.new(0.5, 0, 0, Tokens.trackThickness))
                task.wait(0.5)

                if not running then break end
            end
        end)
    end

    -- Determinate mode
    local function updateDeterminate()
        local val = props.value and Fusion.peek(props.value) or 0
        goalPosition:set(UDim2.new(0, 0, 0.5, 0))
        goalSize:set(UDim2.new(math.clamp(val, 0, 1), 0, 0, Tokens.trackThickness))
    end

    -- Create bar
    local bar = scope:New("Frame") {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = animatedPosition,
        Size = animatedSize,
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
                runIndeterminate()
            else
                updateDeterminate()
            end
        end)

        if Fusion.peek(props.indeterminate) then
            runIndeterminate()
        else
            updateDeterminate()
        end
    end

    -- Handle determinate value changes
    if props.value then
        scope:Observer(props.value):onChange(function()
            if not (props.indeterminate and Fusion.peek(props.indeterminate)) then
                updateDeterminate()
            end
        end)
        updateDeterminate()
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