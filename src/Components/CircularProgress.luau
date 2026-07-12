local RepS = game:GetService("ReplicatedStorage")
local RunS = game:GetService("RunService")
local MaterialRoblox = script.Parent.Parent
local Theming = require(MaterialRoblox.Utils.Theming)

local function CircularProgressIndeterminate(scope, props)
    local theme = Theming:now()

    -- Default Props
    local size = props.Size or 48
    local strokeWidth = props.StrokeWidth or 4
    local color = props.Color or theme.color.primary
    local trackColor = props.TrackColor or theme.color.surfaceContainerHighest
    local trackTransparency = props.TrackTransparency or 1 -- Default to transparent track per M3
    
    -- Animation Constants
    local DURATION = 6 -- seconds
    local MIN_PROGRESS = 0.1
    local MAX_PROGRESS = 0.87

    -- Internal state: A time counter from 0 to 6
    local elapsed = scope:Value(0)
    
    -- Update loop
    table.insert(scope, RunS.RenderStepped:Connect(function(dt)
        elapsed:set((scope.peek(elapsed) + dt) % DURATION)
    end))

    -- 1. Global Rotation: 0 -> 1080 deg linear
    local globalRotation = scope:Computed(function(use)
        local t = use(elapsed)
        return (t / DURATION) * 1080
    end)

    -- 2. Additional Rotation: Piecewise keyframes
    local additionalRotation = scope:Computed(function(use)
        local t = use(elapsed)
        if t < 0.3 then return 0
        elseif t < 1.5 then return 90
        elseif t < 1.8 then return 90 + (t - 1.5) / 0.3 * 90 -- transition to 180
        elseif t < 3.0 then return 180
        elseif t < 3.3 then return 180 + (t - 3.0) / 0.3 * 90 -- transition to 270
        elseif t < 4.5 then return 270
        elseif t < 4.8 then return 270 + (t - 4.5) / 0.3 * 90 -- transition to 360
        else return 360
        end
    end)

    -- 3. Progress (Arc Sweep): min -> max -> min
    local currentSweep = scope:Computed(function(use)
        local t = use(elapsed)
        local alpha = t / DURATION
        local progress
        if alpha < 0.5 then
            -- 0% to 50% time: minProgress to maxProgress
            progress = MIN_PROGRESS + (alpha * 2) * (MAX_PROGRESS - MIN_PROGRESS)
        else
            -- 50% to 100% time: maxProgress to minProgress
            progress = MAX_PROGRESS - ((alpha - 0.5) * 2) * (MAX_PROGRESS - MIN_PROGRESS)
        end
        return progress * 360
    end)

    -- The Visual Component
    return scope:New "Frame" {
        Name = "M3_CircularProgress",
        BackgroundTransparency = 1,
        Size = UDim2.fromOffset(size, size),
        AnchorPoint = Vector2.new(0.5, 0.5),
        
        [scope.Children] = {
            -- The Root Rotation Group
            scope:New "Frame" {
                BackgroundTransparency = 1,
                Size = UDim2.fromScale(1, 1),
                Rotation = scope:Computed(function(use)
                    return use(globalRotation) + use(additionalRotation) - 90
                end),

                [scope.Children] = {
                    -- The Active Arc
                    -- We use a Frame with a UIStroke and a UIGradient to create the arc
                    scope:New "Frame" {
                        Name = "ArcContainer",
                        BackgroundTransparency = 1,
                        Size = UDim2.fromScale(1, 1),
                        
                        [scope.Children] = {
                            scope:New "UIStroke" {
                                Color = color,
                                Thickness = strokeWidth,
                                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            },
                            scope:New "UICorner" {
                                CornerRadius = UDim.new(1, 0), -- Makes it a circle
                            },
                            scope:New "UIGradient" {
                                Rotation = 0,
                                Transparency = scope:Computed(function(use)
                                    local sweep = use(currentSweep)
                                    -- Create a sharp cutoff for the arc
                                    return NumberSequence.new({
                                        NumberSequenceKeypoint.new(0, 0),
                                        NumberSequenceKeypoint.new(math.clamp(sweep/360, 0, 0.999), 0),
                                        NumberSequenceKeypoint.new(math.clamp(sweep/360 + 0.001, 0.001, 1), 1),
                                        NumberSequenceKeypoint.new(1, 1),
                                    })
                                end)
                            }
                        }
                    }
                }
            }
        }
    }
end

return CircularProgressIndeterminate