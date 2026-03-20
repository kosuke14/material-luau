
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
        }
    },
    container = {
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        height = 56,
        shape = theme.shape.cornerFull,
        color = theme.color.surfaceContainerHigh
    },
    avatar = {
        size = 30,
        shape = theme.shape.cornerFull
    },
    pressed = {
        ["supporting-text"] = {
            color = theme.color.onSurfaceVariant
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    hover = {
        ["supporting-text"] = {
            color = theme.color.onSurfaceVariant
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    ["trailing-icon"] = {
        color = theme.color.onSurfaceVariant
    },
    ["leading-icon"] = {
        color = theme.color.onSurface
    },
    ["input-text"] = {
        font = theme.typography.body.large.font,
        size = theme.typography.body.large.size,
        color = theme.color.onSurface
    },
    ["supporting-text"] = {
        font = theme.typography.body.large.font,
        size = theme.typography.body.large.size,
        color = theme.color.onSurfaceVariant
    },
    docked = {
        header = {
            container = {
                height = 56
            }
        },
        container = {
            shape = theme.shape.cornerExtraLarge
        }
    },
    ["full-screen"] = {
        header = {
            container = {
                height = 72
            }
        },
        container = {
            shape = theme.shape.cornerNone
        }
    },
    divider = {
        color = theme.color.outline
    },
    header = {
        ["trailing-icon"] = {
            color = theme.color.onSurfaceVariant
        },
        ["leading-icon"] = {
            color = theme.color.onSurface
        },
        ["input-text"] = {
            font = theme.typography.body.large.font,
            size = theme.typography.body.large.size,
            color = theme.color.onSurface
        },
        ["supporting-text"] = {
            font = theme.typography.body.large.font,
            size = theme.typography.body.large.size,
            color = theme.color.onSurfaceVariant
        }
    }
}
end

return getTokens
    