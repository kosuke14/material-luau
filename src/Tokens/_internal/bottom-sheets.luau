
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    sys = {
        state = {
            ["focus-indicator"] = {
                ["outer-offset"] = 2,
                thickness = 3
            }
        },
        color = {
            ["surface-tint"] = theme.color.primary
        }
    },
    bottom = {
        focus = {
            indicator = {
                color = theme.color.secondary
            }
        },
        docked = {
            container = {
                ["surface-tint-layer"] = {
                    color = theme.color.surfaceTint
                },
                shape = theme.shape.cornerExtraLargeTop,
                color = theme.color.surfaceContainerLow
            },
            ["drag-handle"] = {
                height = 4,
                width = 32,
                color = theme.color.onSurfaceVariant
            },
            minimized = {
                container = {
                    shape = theme.shape.cornerNone
                }
            }
        }
    }
}
end

return getTokens
    