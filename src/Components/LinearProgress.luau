--!nonstrict
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

local function LinearProgress(scope: Fusion.Scope, props: {
	indeterminate: Fusion.Value<boolean>?,
	value: Fusion.Value<number>?,
})
	local Tokens = LinearProgressTokens();

	-- Goal values
	local goalPosition = scope:Value(UDim2.new(-0.5, 0, 0.5, 0))
	local goalSize = scope:Value(UDim2.new(0.5, 0, 0, Tokens.trackHeight))

	-- TweenInfo as scope values (reactive)
	local currentTweenInfo = scope:Value(TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out))

	-- Animated values
	local animatedPosition = scope:Tween(goalPosition, currentTweenInfo)
	local animatedSize = scope:Tween(goalSize, currentTweenInfo)

	-- Reset instantly (no tween)
	local function resetInstantly()
		goalPosition:set(UDim2.new(-0.5, 0, 0.5, 0))
		goalSize:set(UDim2.new(0.5, 0, 0, Tokens.trackHeight))
	end

	-- Indeterminate loop
	local function runIndeterminate()
		local running = true

		table.insert(scope, function()
			running = false
		end)

		task.spawn(function()
			while running do
				-- Reset instantly
				resetInstantly()

				-- Phase 1: Move right + grow (2.5s Quint Out for position, 0.75s Quint InOut for size)
				currentTweenInfo:set(TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out))
				goalPosition:set(UDim2.new(0.3, 0, 0.5, 0))

				currentTweenInfo:set(TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut))
				goalSize:set(UDim2.new(0.75, 0, 0, Tokens.trackHeight))
				task.wait(0.75)

				if not running then break end

				-- Phase 2: Shrink + move off-screen (0.5s Quint InOut for size, 1.75s Quint Out for position)
				currentTweenInfo:set(TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut))
				goalSize:set(UDim2.new(0.5, 0, 0, Tokens.trackHeight))

				currentTweenInfo:set(TweenInfo.new(1.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out))
				goalPosition:set(UDim2.new(1.5, 0, 0.5, 0))
				task.wait(0.5)

				if not running then break end
			end
		end)
	end

	-- Determinate mode
	local function updateDeterminate()
		currentTweenInfo:set(TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out))
		local val = props.value and Fusion.peek(props.value) or 0
		goalPosition:set(UDim2.new(0, 0, 0.5, 0))
		goalSize:set(UDim2.new(math.clamp(val, 0, 1), 0, 0, Tokens.trackHeight))
	end

	-- Create bar
	local bar = scope:New("Frame") {
		AnchorPoint = Vector2.new(0.5, 0),
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