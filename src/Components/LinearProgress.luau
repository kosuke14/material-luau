--!nonstrict
--[[
	Copyright 2024 shunnedreality. This code is licensed under the MIT license.
]]

local RunS = game:GetService("RunService");

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);
local LinearProgressTokens = require(MaterialRoblox.Tokens.LinearProgress);

local Children = Fusion.Children;

local INDETERMINATE_DURATION = 4;
local INDETERMINATE_SECONDARY_DURATION = 2;

local function LinearProgress(
	scope: Fusion.Scope,
	props: {
		indeterminate: boolean?,
		value: number?, -- 0 to 1
		fourColor: boolean?,
	}
)
	local Tokens = LinearProgressTokens();
	local indeterminate = props.indeterminate or false;

	local elapsed = scope:Value(0);

	table.insert(scope, RunS.RenderStepped:Connect(function(dt)
		elapsed:set((scope.peek(elapsed) + dt) % INDETERMINATE_DURATION)
	end))

	local function getIndeterminatePosition(use)
		if not indeterminate then return UDim2.fromScale(0, 0) end

		local t = use(elapsed) / INDETERMINATE_DURATION;

		-- Two overlapping arcs that animate in and out
		local position
		if t < 0.5 then
			-- First half: move left to right
			local progress = t * 2
			position = UDim2.new(
				math.clamp(progress * 2 - 0.5, -0.5, 1),
				0, 0, 0
			)
		else
			-- Second half: continue moving and shrinking
			local progress = (t - 0.5) * 2
			position = UDim2.new(
				math.clamp(progress * 2 - 0.5, -0.5, 1),
				0, 0, 0
			)
		end

		return position
	end

	local function getIndeterminateWidth(use)
		if not indeterminate then
			return UDim2.new(math.clamp(props.value or 0, 0, 1), 0, 0, Tokens.trackThickness)
		end

		local t = use(elapsed) / INDETERMINATE_DURATION;
		local width

		if t < 0.5 then
			local progress = t * 2
			width = math.clamp(progress, 0.1, 0.8)
		else
			local progress = (t - 0.5) * 2
			width = math.clamp(1 - progress, 0.1, 0.8)
		end

		return UDim2.new(width, 0, 0, Tokens.trackThickness)
	end

	-- Determine color for four-color mode
	local function getColor(use, index)
		if not props.fourColor then
			return Tokens.activeIndicatorColor
		end

		local t = use(elapsed) / INDETERMINATE_DURATION;
		local colorIndex = (math.floor(t * 4) + index) % 4;

		if colorIndex == 0 then return Tokens.fourColorOne
		elseif colorIndex == 1 then return Tokens.fourColorTwo
		elseif colorIndex == 2 then return Tokens.fourColorThree
		else return Tokens.fourColorFour
		end
	end

	return scope:New("Frame") {
		Size = UDim2.new(1, 0, 0, Tokens.trackHeight),
		BackgroundTransparency = 1,

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

			-- Active indicator
			scope:New("Frame") {
				Size = scope:Computed(getIndeterminateWidth),
				Position = scope:Spring(
					scope:Computed(getIndeterminatePosition),
					indeterminate and 37.4165738677 or 25,
					0.9
				),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				BackgroundColor3 = scope:Computed(function(use)
					return getColor(use, 0)
				end),
				BorderSizePixel = 0,

				[Children] = {
					scope:New("UICorner") {
						CornerRadius = UDim.new(1, 0),
					},
				}
			},
		}
	}
end

return LinearProgress;