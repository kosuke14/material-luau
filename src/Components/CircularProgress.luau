--!nocheck
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local CircularProgressTokens = require(MaterialRoblox.Tokens.CircularProgressIndicator);

local Children = Fusion.Children;

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
    local segmentObjects = scope:Computed(function(use)
        local size = use(props.size)
        local thickness = use(props.thickness)
        local numSegments = use(props.segments) or 60
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
            segments["Segment"..i] = scope:New("Frame") {
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
                    scope:New("UICorner") { CornerRadius = UDim.new(0.5, 0) }
                }
            }
        end
        return segments
    end)

    return scope:New("Frame") {
        Name = "ArcContainer",
        BackgroundTransparency = 1,
        Size = scope:Computed(function(use)
            local size = use(props.size)
            return UDim2.fromOffset(size, size)
        end),
        [Children] = segmentObjects
    }
end

--[[local function Arc(
    scope: Fusion.Scope,
    props: {
        x: number,
        y: number,
        width: number,
        height: number,
        startAngle: number,
        arcAngle: number
    }
)
	local x, y = props.x, props.y
	local width, height = props.width, props.height
	local startAngle, arcAngle = props.startAngle, props.arcAngle
	local color = props.color or Color3.new(1, 1, 1)
	local thickness = props.thickness or 2
	local segments = props.segments or 30

	-- Calculate ellipse properties
    local centerX = scope:Computed(function(
        use: Fusion.Use
    )
        return use(x) + use(width) / 2
    end);

    local centerY = scope:Computed(function(
        use: Fusion.Use
    )
        return use(y) + use(height) / 2
    end);

    local radiusX = scope:Computed(function(
        use: Fusion.Use
    )
        return use(width) / 2;
    end)

    local radiusY = scope:Computed(function(
        use: Fusion.Use
    )
        return use(height) / 2;
    end);

	-- Convert angles to radians
    local startRad = scope:Computed(function(
        use: Fusion.Use
    )
        return math.rad(-use(startAngle));
    end);

    local arcRad = scope:Computed(function(
        use: Fusion.Use
    )
        return math.rad(-use(arcAngle))
    end);

    local step = scope:Computed(function(
        use: Fusion.Use
    )
        return use(arcRad) / use(segments)
    end);

	local segmentObjects = {}
	for i = 0, segments do
		table.insert(segmentObjects, scope:New("Frame") {
			Name = "ArcSegment",
			AnchorPoint = Vector2.new(0.5, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = color,
			Position = scope:Computed(function(
                use: Fusion.Use
            )
                local angle = use(startRad) + (use(step) * i);

                return UDim2.fromOffset(
                    use(centerX) + use(radiusX) * math.cos(angle),
                    use(centerY) + use(radiusY) * math.sin(angle)
                )
            end),
			Size = scope:Computed(function(
                use: Fusion.Use
            )
                return UDim2.fromOffset(use(thickness), use(thickness));
            end),
                
			[Children] = {
				scope:New("UICorner") {
					CornerRadius = UDim.new(0.5, 0)
				}
			}
		})
	end

	return scope:New("Frame") {
		Name = "ArcContainer",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		[Children] = segmentObjects
	}
end]]

local function CircularProgress(
    scope: Fusion.Scope,
    props: {
        progress: Fusion.UsedAs<number>,
        thick: boolean?
    }
)
    local Tokens = CircularProgressTokens(props.thick or false);
    local startAngle = 270;
    local sweep = scope:Computed(function(
        use: Fusion.Use
    )
        return math.clamp(
            use(props.progress),
            0,
            1
        ) * 360;
    end);
    local adjustedGapSize = Tokens.gap + Tokens.thickness;
    local gapSizeSweep = (adjustedGapSize / (math.pi * Tokens.size)) * 360;

    return 
end
--[[
local function IndeterminateCircularProgress(
    scope: Fusion.Scope,
    props: {
        thick: boolean?
    }?
)
    props = props or {};

    local Tokens = CircularProgressTokens(props.thick or false);

    local currentTime = scope:Value(os.clock());
    local progressTransitionDegrees = scope:Value(0);

    table.insert(scope,
        RunService.RenderStepped:Connect(function()
            currentTime:set(os.clock())
        end)
    );

    local progressTask = coroutine.create(function()
        while true do
            local currentValue = Fusion.peek(progressTransitionDegrees);
            progressTransitionDegrees:set(math.clamp(currentValue + 90, 0, 360));
            task.wait(3)
        end
    end);

    coroutine.resume(progressTask);

    table.insert(scope, progressTask);

    local globalTransition = scope:Tween(
        360,

        TweenInfo.new(
            6,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.InOut,
            -1
        )
    );

    local additionalTransition = scope:Tween(
        scope:Computed(function(
            use: Fusion.Use
        )
            local degrees = use(currentTime) * (.5 / 90);

            if math.round(degrees) == 90 then
                task.wait(1);
            end

            return degrees
        end),

        TweenInfo.new(
            .5,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.InOut,
            0
        )
    );

    local progressAnimation = scope:Tween(
        progressTransitionDegrees,

        TweenInfo.new(
            1.5,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.InOut
        )
    )

    local sweep = scope:Computed(function(use)
        -- This creates the pulsating effect by growing and shrinking the arc
        return 90 + (math.sin(use(progressAnimation) / 360 * math.pi) * 180)
    end)

    local adjustedGapSize = ;
    local gapSizeSweep =; adjustedGapSizescope:Computed(function(
        use: Fusion.Use
    )
        return 
    end)

    return scope:New("Frame") {
        BackgroundTransparency = 1,
        Rotation = scope:Computed(function(
            use: Fusion.Use
        )
            return use(globalTransition) + use(additionalTransition)
        end),
        Size = UDim2.fromOffset(Tokens.size, Tokens.size),

        [Children] = {
            Arc(scope, {
                width = Tokens.size,
                height = Tokens.size,
                startAngle = scope:Computed(function(
                    use: Fusion.Use
                )
                    return use(sweep) + math.min(use(sweep), use(gapSizeSweep))
                end),
                arcAngle = scope:Computed(function(
                    use: Fusion.Use
                )
                    return 360 - use(sweep) - math.min(use(sweep), use(gapSizeSweep)) * 2
                end),
                color = Tokens.trackColor,
                thickness = Tokens.thickness,
                x = 0,
                y = 0,
            }),

            Arc(scope, {
                startAngle = 0,
                arcAngle = sweep,
                color = Tokens.activeIndicatorColor,
                thickness = Tokens.thickness,
                x = 0,
                y = 0,
                width = Tokens.size,
                height = Tokens.size
            })
        }
    }
end]]

local function IndeterminateCircularProgress(
    scope: Fusion.Scope,
    props: {
        thick: boolean?
    }?
)
    props = props or {};
    local Tokens = CircularProgressTokens(props.thick or false);

    local AnimationDuration = 6
    local MinProgress, MaxProgress = 0.1, 0.87
    
    local progressValue = scope:Value(MinProgress)
    local progressTween = scope:Tween(360, TweenInfo.new(
        AnimationDuration,
        Enum.EasingStyle.Quint,
        Enum.EasingDirection.InOut,
        -1, true
    ))
    progressValue:set(MaxProgress)

    local GlobalRotationTarget = scope:Value(0)
    local globalRotation = scope:Tween(GlobalRotationTarget, TweenInfo.new(
        AnimationDuration, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1
    ))
    GlobalRotationTarget:set(360)

    local additionalRotation = scope:Value(0)
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
    local additionalValue = scope:Tween(additionalRotation, TweenInfo.new(1.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut));

    local totalRotation = scope:Computed(function(use)
        return use(additionalValue) + use(globalRotation)
    end)
    
    local sweep = scope:Computed(function(use) return use(progressTween) * 360 end)
    local gapSizeSweep = ((Tokens.gap + Tokens.thickness) / (math.pi * Tokens.size)) * 360

    -- THE FIX: An outer frame for rotation, and an inner frame for the content.
    return scope:New("Frame") {
        Name = "Rotator",
        BackgroundTransparency = 1,
        Size = UDim2.fromOffset(Tokens.size, Tokens.size),
        Position = UDim2.fromScale(0.5, 0.5), -- Or wherever you want it
        AnchorPoint = Vector2.new(0.5, 0.5),
        Rotation = totalRotation, -- The rotation is applied ONLY to this outer frame.

        [Children] = {
            -- This inner frame holds the arcs and is NOT rotated.
            scope:New("Frame") {
                Name = "ArcContainer",
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0), -- It fills the parent rotator frame.
                
                [Children] = {
                    -- Track Arc (with the `use(progressTween)` fix from before)
                    Arc(scope, {
                        size = Tokens.size,
                        startAngle = scope:Computed(function(use)
                            local currentSweep = use(progressTween) * 360
                            return currentSweep + math.min(currentSweep, gapSizeSweep)
                        end),
                        arcAngle = scope:Computed(function(use)
                            local currentSweep = use(progressTween) * 360
                            return 360 - currentSweep - math.min(currentSweep, gapSizeSweep) * 2
                        end),
                        color = Tokens.trackColor,
                        thickness = Tokens.thickness,
                    }),

                    -- Active Arc
                    Arc(scope, {
                        startAngle = 0,
                        arcAngle = sweep,
                        color = Tokens.activeIndicatorColor,
                        thickness = Tokens.thickness,
                        size = Tokens.size,
                    })
                }
            }
        }
    }
end

return IndeterminateCircularProgress