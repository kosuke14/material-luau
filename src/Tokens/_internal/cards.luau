
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

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
    focus = {
        indicator = {
            color = theme.color.secondary
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.onSurface
        }
    },
    container = {
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        ["shadow-color"] = theme.color.shadow,
        shape = theme.shape.cornerMedium,
        color = theme.color.surfaceContainerHighest
    },
    disabled = {
        outline = {
            color = theme.color.outline
        },
        container = {
            color = theme.color.surface
        }
    },
    icon = {
        size = 24,
        color = theme.color.primary
    },
    outline = {
        color = theme.color.outlineVariant,
        width = 1
    },
    hover = {
        ["state-layer"] = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.outlineVariant
        }
    },
    dragged = {
        ["state-layer"] = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.outlineVariant
        }
    },
    pressed = {
        ["state-layer"] = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.outlineVariant
        }
    }
}
end

return getTokens
    