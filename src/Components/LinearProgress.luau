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

	-- Goal values for animation
	local goalPosition = scope:Value(UDim2.new(-0.5, 0, 0.5, 0))
	local goalSize = scope:Value(UDim2.new(0.5, 0, 0, Tokens.trackHeight))

	-- Animated values with different tween infos
	local tweenInfoIndeterminatePos = TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	local tweenInfoIndeterminateSizeShort = TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local tweenInfoIndeterminateSizeLong = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	local tweenInfoDeterminate = TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

	local animatedPosition = scope:Tween(goalPosition, tweenInfoIndeterminatePos)
	local animatedSize = scope:Tween(goalSize, tweenInfoIndeterminateSizeShort)

	-- Reset values instantly (no tween)
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
				-- Reset instantly (no tween)
				resetInstantly()

				-- Phase 1: Move right + grow
				goalPosition:set(UDim2.new(0.3, 0, 0.5, 0))
				goalSize:set(UDim2.new(0.75, 0, 0, Tokens.trackHeight))
				task.wait(0.75)

				if not running then break end

				-- Phase 2: Shrink + move off-screen
				goalSize:set(UDim2.new(0.5, 0, 0, Tokens.trackHeight))
				goalPosition:set(UDim2.new(1.5, 0, 0.5, 0))
				task.wait(0.5)

				if not running then break end
			end
		end)
	end

	-- Determinate mode with tween
	local function updateDeterminate()
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