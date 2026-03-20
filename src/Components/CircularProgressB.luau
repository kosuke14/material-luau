--!nocheck
--[[
    Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local RunService = game:GetService("RunService")

local MaterialRoblox = script.Parent.Parent

local Fusion = require(MaterialRoblox.Parent.Fusion)
local CircularProgressTokens = require(MaterialRoblox.Tokens.CircularProgressIndicator)
-- No longer need ViewportCanvas
-- local ViewportCanvas = require(MaterialRoblox.Parent.viewportcanvas)

local Children = Fusion.Children
local New = Fusion.New
local Value = Fusion.Value
local Computed = Fusion.Computed
local Tween = Fusion.Tween

--
-- A new, reliable Arc function that uses standard UI frames instead of a canvas.
--
local function Arc(
    scope: Fusion.Scope,
    props: {
        size: Fusion.UsedAs<number>,
        startAngle: Fusion.UsedAs<number>,
        arcAngle: Fusion.UsedAs<number>,
        color: Fusion.UsedAs<Color3>,
        thickness: Fusion.UsedAs<number>,
        segments: Fusion.UsedAs<number>
    }
)
    -- This Computed will regenerate the list of arc segments whenever a property changes.
    local segmentObjects = Computed(scope, function(use)
        local size = use(props.size)
        local thickness = use(props.thickness)
        local numSegments = use(props.segments)
        local startAngle = use(props.startAngle)
        local arcAngle = use(props.arcAngle)
        local color = use(props.color)

        -- Calculate circle properties
        local center = size / 2
        local radius = (size - thickness) / 2
        local step = math.rad(arcAngle) / numSegments
        
        local segments = {}
        for i = 0, numSegments do
            -- Roblox UI angles start at the top (-90 degrees in radians) and go clockwise.
            local angle = math.rad(startAngle - 90) + (step * i)
            
            -- Use a unique key for each segment for Fusion's list reconciliation
            segments["Segment"..i] = New(scope, "Frame") {
                Name = "ArcSegment",
                AnchorPoint = Vector2.new(0.5, 0.5),
                BorderSizePixel = 0,
                BackgroundColor3 = color,
                Size = UDim2.fromOffset(thickness, thickness),
                Position = UDim2.fromOffset(
                    center + radius * math.cos(angle),
                    center + radius * math.sin(angle)
                ),
                [Children] = {
                    New(scope, "UICorner") { CornerRadius = UDim.new(0.5, 0) }
                }
            }
        end
        return segments
    end)

    return New(scope, "Frame") {
        Name = "ArcContainer",
        BackgroundTransparency = 1,
        Size = Computed(scope, function(use)
            local size = use(props.size)
            return UDim2.fromOffset(size, size)
        end),
        [Children] = segmentObjects
    }
end


--
-- The final, fully working animation logic.
--
local function IndeterminateCircularProgress(
    scope: Fusion.Scope,
    props: {
        thick: boolean?
    }?
)
    props = props or {}
    local Tokens = CircularProgressTokens(props.thick or false)

    local AnimationDuration = 6
    local MinProgress, MaxProgress = 0.1, 0.87
    
    local progressValue = Value(scope, MinProgress)
    local progressTween = Tween(scope, progressValue, TweenInfo.new(
        AnimationDuration, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1, true
    ))
    progressValue:set(MaxProgress)

    local GlobalRotationTarget = Value(scope, 0)
    local globalRotation = Tween(scope, GlobalRotationTarget, TweenInfo.new(
        AnimationDuration, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1
    ))
    GlobalRotationTarget:set(360)

    local additionalRotation = Value(scope, 0)
    table.insert(scope, task.spawn(function()
        local rotationSequence = {
            { target = 90, duration = 1.5, delay = 1.5 }, { target = 180, duration = 1.5, delay = 1.5 },
            { target = 270, duration = 1.5, delay = 1.5 }, { target = 360, duration = 1.5, delay = 3 }
        }
        while true do
            for _, step in ipairs(rotationSequence) do
                additionalRotation:set(step.target)
                task.wait(step.duration + step.delay)
            end
            additionalRotation:set(0)
        end
    end))
    local additionalValue = Tween(scope, additionalRotation, TweenInfo.new(1.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut));

    local totalRotation = Computed(scope, function(use)
        return use(additionalValue) + use(globalRotation)
    end)
    
    local sweep = Computed(scope, function(use) return use(progressTween) * 360 end)
    local gapSizeSweep = ((Tokens.gap + Tokens.thickness) / (math.pi * Tokens.size)) * 360

    return New(scope, "Frame") {
        Name = "Rotator",
        BackgroundTransparency = 1,
        Size = UDim2.fromOffset(Tokens.size, Tokens.size),
        Position = UDim2.fromScale(0.5, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Rotation = totalRotation,

        [Children] = {
            New(scope, "Frame") {
                Name = "ArcContainer",
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                
                [Children] = {
                    Arc(scope, {
                        size = Tokens.size,
                        startAngle = Computed(scope, function(use)
                            local currentSweep = use(sweep)
                            return currentSweep + math.min(currentSweep, gapSizeSweep)
                        end),
                        arcAngle = Computed(scope, function(use)
                            local currentSweep = use(sweep)
                            return 360 - currentSweep - math.min(currentSweep, gapSizeSweep) * 2
                        end),
                        color = Tokens.trackColor,
                        thickness = Tokens.thickness,
                        segments = 60 -- Controls smoothness
                    }),
                    Arc(scope, {
                        startAngle = 0,
                        arcAngle = sweep,
                        color = Tokens.activeIndicatorColor,
                        thickness = Tokens.thickness,
                        size = Tokens.size,
                        segments = 60 -- Controls smoothness
                    })
                }
            }
        }
    }
end

return IndeterminateCircularProgress