--!nonstrict
local RunS = game:GetService("RunService");
local MaterialRoblox = script.Parent.Parent;
local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

local function LinearProgress(scope: Fusion.Scope, props: {
	indeterminate: Fusion.Value<boolean>?,
	value: Fusion.Value<number>?,
})
	local Tokens = LinearProgressTokens();

	-- For determinate: use Fusion Tween
	local goalWidth = scope:Value(0)
	local tweenInfoDeterminate = TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local animatedWidth = scope:Tween(goalWidth, tweenInfoDeterminate)

	-- For indeterminate: use timer-based animation (no Fusion Tween for instant reset)
	local elapsed = scope:Value(0)
	local SHORT_DURATION = 0.6
	local LONG_DURATION = 1.5
	local TOTAL_DURATION = SHORT_DURATION + LONG_DURATION

	table.insert(scope, RunS.RenderStepped:Connect(function(dt)
		elapsed:set((scope.peek(elapsed) + dt) % TOTAL_DURATION)
	end))

	-- Indeterminate position and size based on timer
	local indeterminateWidth = scope:Computed(function(use)
		local t = use(elapsed)
		if t < SHORT_DURATION then
			-- Phase 1: grow from 0.5 to 0.75
			local progress = t / SHORT_DURATION
			local eased = 1 - math.pow(1 - progress, 3) -- Quintic Out approximation
			return 0.5 + (eased * 0.25)
		else
			-- Phase 2: shrink from 0.75 to 0.5
			local progress = (t - SHORT_DURATION) / LONG_DURATION
			local eased = progress * progress * (3 - 2 * progress) -- Smoothstep
			return 0.75 - (eased * 0.25)
		end
	end)

	local indeterminatePosition = scope:Computed(function(use)
		local t = use(elapsed)
		if t < SHORT_DURATION then
			-- Phase 1: move from -0.5 to 0.3
			local progress = t / SHORT_DURATION
			local eased = 1 - math.pow(1 - progress, 3) -- Quintic Out
			return -0.5 + (eased * 0.8)
		else
			-- Phase 2: move from 0.3 to 1.5
			local progress = (t - SHORT_DURATION) / LONG_DURATION
			local eased = 1 - math.pow(1 - progress, 3) -- Quintic Out
			return 0.3 + (eased * 1.2)
		end
	end)

	-- Create bar with AnchorPoint (0.5, 0) for proper centering
	local bar = scope:New("Frame") {
		AnchorPoint = Vector2.new(0.5, 0),
		Position = scope:Computed(function(use)
			if props.indeterminate and use(props.indeterminate) then
				return UDim2.new(use(indeterminatePosition), 0, 0.5, 0)
			else
				-- Determinate: centered position based on width
				local width = use(animatedWidth)
				return UDim2.new(width / 2, 0, 0.5, 0)
			end
		end),
		Size = scope:Computed(function(use)
			if props.indeterminate and use(props.indeterminate) then
				return UDim2.new(use(indeterminateWidth), 0, 0, Tokens.trackHeight)
			else
				return UDim2.new(use(animatedWidth), 0, 0, Tokens.trackHeight)
			end
		end),
		BackgroundColor3 = Tokens.activeIndicatorColor,
		BorderSizePixel = 0,

		[Children] = {
			scope:New("UICorner") {
				CornerRadius = UDim.new(1, 0),
			},
		}
	}

	-- Handle determinate value changes
	if props.value then
		scope:Observer(props.value):onChange(function()
			if not (props.indeterminate and Fusion.peek(props.indeterminate)) then
				local val = Fusion.peek(props.value)
				goalWidth:set(math.clamp(val, 0, 1))
			end
		end)
		-- Initialize
		local val = Fusion.peek(props.value)
		goalWidth:set(math.clamp(val, 0, 1))
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