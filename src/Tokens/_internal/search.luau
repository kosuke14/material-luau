
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    contained = {
        background = {
            color = theme.color.surfaceContainerLow
        },
        docked = {
            results = {
                shape = theme.shape.cornerMedium
            },
            bar = {
                shape = theme.shape.cornerFull
            }
        },
        ["full-screen"] = {
            bar = {
                container = {
                    height = 56
                }
            }
        },
        avatar = {
            ["target-size"] = 48
        }
    },
    header = {
        ["input-text"] = {
            color = theme.color.onSurface,
            size = theme.typography.body.large.size,
            font = theme.typography.body.large.font
        },
        ["supporting-text"] = {
            color = theme.color.onSurfaceVariant,
            size = theme.typography.body.large.size,
            font = theme.typography.body.large.font
        },
        ["leading-icon"] = {
            color = theme.color.onSurface
        },
        ["trailing-icon"] = {
            color = theme.color.onSurfaceVariant
        }
    },
    ["supporting-text"] = {
        font = theme.typography.body.large.font,
        size = theme.typography.body.large.size,
        color = theme.color.onSurfaceVariant
    },
    sys = {
        measurement = {
            space50 = 4,
            space25 = 2,
            space150 = 12,
            space200 = 16,
            space0 = nil,
            space300 = 24
        },
        color = {
            ["surface-tint"] = theme.color.primary
        },
        state = {
            ["focus-indicator"] = {
                thickness = 3,
                ["outer-offset"] = 2
            }
        }
    },
    ["full-screen"] = {
        container = {
            shape = theme.shape.cornerNone
        },
        header = {
            container = {
                height = 72
            }
        }
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
    divider = {
        color = theme.color.outline
    },
    container = {
        color = theme.color.surfaceContainerHigh,
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        shape = theme.shape.cornerFull,
        height = 56
    },
    ["input-text"] = {
        font = theme.typography.body.large.font,
        size = theme.typography.body.large.size,
        color = theme.color.onSurface
    },
    icon = {
        size = 24
    },
    avatar = {
        size = 30,
        shape = theme.shape.cornerFull
    },
    ["trailing-icon"] = {
        color = theme.color.onSurfaceVariant
    },
    ["leading-icon"] = {
        color = theme.color.onSurface
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        }
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
    }
}
end

return getTokens
    