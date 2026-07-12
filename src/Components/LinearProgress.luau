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

local function LinearProgress(
	scope: Fusion.Scope,
	props: {
		indeterminate: Fusion.Value<boolean>?,
		value: Fusion.Value<number>?,
		fourColor: Fusion.Value<boolean>?,
	}
)
	local Tokens = LinearProgressTokens();

	local elapsed = scope:Value(0);

	table.insert(scope, RunS.RenderStepped:Connect(function(dt)
		elapsed:set((scope.peek(elapsed) + dt) % INDETERMINATE_DURATION)
	end))

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

			-- Active indicator
			scope:New("Frame") {
				Size = scope:Computed(function(use)
					local isIndeterminate = props.indeterminate and use(props.indeterminate) or false
					local trackThickness = Tokens.trackThickness

					if not isIndeterminate then
						local val = props.value and use(props.value) or 0
						return UDim2.new(math.clamp(val, 0, 1), 0, 0, trackThickness)
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

					return UDim2.new(width, 0, 0, trackThickness)
				end),
				Position = scope:Computed(function(use)
					local isIndeterminate = props.indeterminate and use(props.indeterminate) or false

					if not isIndeterminate then
						return UDim2.fromScale(0, 0.5)
					end

					local t = use(elapsed) / INDETERMINATE_DURATION;
					local xScale

					if t < 0.5 then
						local progress = t * 2
						xScale = math.clamp(progress * 2 - 0.5, 0, 1)
					else
						local progress = (t - 0.5) * 2
						xScale = math.clamp(progress * 2 - 0.5, 0, 1)
					end

					return UDim2.new(xScale, 0, 0.5, 0)
				end),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = scope:Computed(function(use)
					local isFourColor = props.fourColor and use(props.fourColor) or false

					if not isFourColor then
						return Tokens.activeIndicatorColor
					end

					local t = use(elapsed) / INDETERMINATE_DURATION;
					local colorIndex = math.floor(t * 4) % 4;

					if colorIndex == 0 then return Tokens.fourColorOne
					elseif colorIndex == 1 then return Tokens.fourColorTwo
					elseif colorIndex == 2 then return Tokens.fourColorThree
					else return Tokens.fourColorFour
					end
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