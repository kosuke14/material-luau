--!nonstrict
local TweenService = game:GetService("TweenService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

local QUINT_OUT = TweenInfo.new(0, Enum.EasingStyle.Quint, Enum.EasingDirection.Out);
local QUINT_INOUT = TweenInfo.new(0, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut);

local function tween(bar: Frame, time: number, style: EnumItem, direction: EnumItem, goals: {[string]: any})
    local info = TweenInfo.new(time, style, direction)
    local t = TweenService:Create(bar, info, goals)
    t:Play()
    return t.Completed
end

local function LinearProgress(scope: Fusion.Scope, props: {
    indeterminate: Fusion.Value<boolean>?,
    value: Fusion.Value<number>?,
})
    local Tokens = LinearProgressTokens();

    -- Determinate
    local function updateDeterminate(bar: Frame)
        local val = props.value and Fusion.peek(props.value) or 0
        bar.AnchorPoint = Vector2.new(0, 0.5)
        bar.Position = UDim2.new(0, 0, 0.5, 0)
        bar.Size = UDim2.new(math.clamp(val, 0, 1), 0, 0, Tokens.trackThickness)
    end

    -- Indeterminate loop
    local function runIndeterminate(bar: Frame)
        local running = true

        table.insert(scope, function()
            running = false
        end)

        task.spawn(function()
            while running do
                -- Reset to start
                bar.AnchorPoint = Vector2.new(0.5, 0.5)
                bar.Position = UDim2.new(0, 0, 0.5, 0)
                bar.Size = UDim2.new(0.5, 0, 0, Tokens.trackThickness)

                -- Phase 1: Grow size + move right
                task.spawn(function()
                    tween(bar, 0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, {
                        Size = UDim2.new(0.75, 0, 0, Tokens.trackThickness)
                    })
                end)
                tween(bar, 2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, {
                    Position = UDim2.new(0.3, 0, 0.5, 0)
                })
                task.wait(0.75)

                if not running then break end

                -- Phase 2: Shrink size + move off-screen
                task.spawn(function()
                    tween(bar, 0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, {
                        Size = UDim2.new(0.5, 0, 0, Tokens.trackThickness)
                    })
                end)
                tween(bar, 1.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, {
                    Position = UDim2.new(1.5, 0, 0.5, 0)
                })
                task.wait(0.5)

                if not running then break end
            end
        end)
    end

    -- Create bar
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
                updateDeterminate(bar)
            end
        end)

        if Fusion.peek(props.indeterminate) then
            runIndeterminate(bar)
        else
            updateDeterminate(bar)
        end
    end

    -- Handle determinate value changes
    if props.value then
        scope:Observer(props.value):onChange(function()
            if not (props.indeterminate and Fusion.peek(props.indeterminate)) then
                updateDeterminate(bar)
            end
        end)
        updateDeterminate(bar)
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