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
    local tokens = scope:Computed(function(use)
        return LinearProgressTokens()
    end)

    -- Bar for active indicator
    local bar = scope:New("Frame") {
        AnchorPoint = Vector2.new(0.5, 0),
        Position = UDim2.new(-0.5, 0, 0.5, 0),
        Size = UDim2.new(0.5, 0, 0, 4),
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return t.activeIndicatorColor
        end),
        BorderSizePixel = 0,

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(1, 0),
            },
        }
    }

    -- Dot at the end of track (M3 spec: same color as bar)
    local dot = scope:New("Frame") {
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, 0, 0.5, 0),
        Size = UDim2.fromOffset(4, 4),
        BackgroundColor3 = scope:Computed(function(use)
            local t = use(tokens)
            return t.activeIndicatorColor
        end),
        BorderSizePixel = 0,
        Visible = scope:Computed(function(use)
            return not (props.indeterminate and use(props.indeterminate))
        end),

        [Children] = {
            scope:New("UICorner") {
                CornerRadius = UDim.new(1, 0),
            },
        }
    }

    -- Determinate mode with dot
    local function updateDeterminate()
        local t = Fusion.peek(tokens)
        local val = props.value and Fusion.peek(props.value) or 0
        local width = math.clamp(val, 0, 1)

        -- Animate bar
        TweenService:Create(bar, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
            Size = UDim2.new(width, 0, 0, t.trackHeight),
            Position = UDim2.new(width / 2, 0, 0.5, 0),
        }):Play()
    end

    local function runIndeterminate()
        local running = true

        table.insert(scope, function()
            running = false
        end)

        task.spawn(function()
            while running do
                local t = Fusion.peek(tokens)

                bar.Size = UDim2.new(0.5, 0, 0, t.trackHeight)
                bar.Position = UDim2.new(-0.5, 0, 0.5, 0)

                if not running then break end

                local tween1 = TweenService:Create(bar, TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Position = UDim2.new(0.3, 0, 0.5, 0),
                })
                local tween2 = TweenService:Create(bar, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                    Size = UDim2.new(0.75, 0, 0, t.trackHeight),
                })
                tween1:Play()
                tween2:Play()
                task.wait(0.75)

                if not running then break end

                local tween3 = TweenService:Create(bar, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                    Size = UDim2.new(0.5, 0, 0, t.trackHeight),
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

    if props.value then
        scope:Observer(props.value):onChange(function()
            if not (props.indeterminate and Fusion.peek(props.indeterminate)) then
                updateDeterminate()
            end
        end)
        updateDeterminate()
    end

    return scope:New("Frame") {
        Size = UDim2.new(1, 0, 0, 4),
        BackgroundTransparency = 1,
        ClipsDescendants = true,

        [Children] = {
            scope:New("Frame") {
                Size = UDim2.fromScale(1, 1),
                BackgroundColor3 = scope:Computed(function(use)
                    local t = use(tokens)
                    return t.trackColor
                end),
                BorderSizePixel = 0,
                [Children] = {
                    scope:New("UICorner") {
                        CornerRadius = UDim.new(1, 0),
                    },
                }
            },

            bar,
            dot,
        }
    }
end

return LinearProgress