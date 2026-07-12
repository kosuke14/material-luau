--!nonstrict
local TweenService = game:GetService("TweenService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

local function LinearProgress(scope: Fusion.Scope, props: {
    indeterminate: Fusion.Value<boolean>?,
    value: Fusion.Value<number>?,
})
    local Tokens = LinearProgressTokens();

    -- Create bar
    local bar = scope:New("Frame") {
        AnchorPoint = Vector2.new(0.5, 0),
        Position = UDim2.new(-0.5, 0, 0.5, 0),
        Size = UDim2.new(0.5, 0, 0, Tokens.trackHeight),
        BackgroundColor3 = Tokens.activeIndicatorColor,
        BorderSizePixel = 0,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(1, 0),
            },
        }
    }

    -- Determinate: tween width
    local function updateDeterminate()
        local val = props.value and Fusion.peek(props.value) or 0
        local width = math.clamp(val, 0, 1)
        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
        TweenService:Create(bar, tweenInfo, {
            Size = UDim2.new(width, 0, 0, Tokens.trackHeight),
            Position = UDim2.new(width / 2, 0, 0.5, 0),
        }):Play()
    end

    -- Indeterminate: tween sequence
    local function runIndeterminate()
        local running = true

        table.insert(scope, function()
            running = false
        end)

        task.spawn(function()
            while running do
                -- Reset instantly
                bar.Size = UDim2.new(0.5, 0, 0, Tokens.trackHeight)
                bar.Position = UDim2.new(-0.5, 0, 0.5, 0)

                if not running then break end

                -- Phase 1: Move right + grow
                local tween1 = TweenService:Create(bar, TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Position = UDim2.new(0.3, 0, 0.5, 0),
                })
                local tween2 = TweenService:Create(bar, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                    Size = UDim2.new(0.75, 0, 0, Tokens.trackHeight),
                })
                tween1:Play()
                tween2:Play()
                task.wait(0.75)

                if not running then break end

                -- Phase 2: Shrink + move off-screen
                local tween3 = TweenService:Create(bar, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                    Size = UDim2.new(0.5, 0, 0, Tokens.trackHeight),
                })
                local tween4 = TweenService:Create(bar, TweenInfo.new(1.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Position = UDim2.new(1.5, 0, 0.5, 0),
                })
                tween3:Play()
                tween4:Play()
                task.wait(0.5)

                if not running then break end
            end
        end)
    end

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
            -- Track
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