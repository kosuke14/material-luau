
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    sys = {
        state = {
            ["focus-indicator"] = {
                ["inner-offset"] = -3,
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
        color = theme.color.surface,
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        shape = theme.shape.cornerLargeEnd,
        height = 100,
        width = 360
    },
    standard = {
        container = {
            color = theme.color.surface
        }
    },
    bottom = {
        container = {
            shape = theme.shape.cornerLargeTop
        }
    },
    modal = {
        container = {
            color = theme.color.surfaceContainerLow
        }
    },
    ["label-text"] = {
        font = theme.typography.label.large.font,
        size = theme.typography.label.large.size
    },
    divider = {
        color = theme.color.outline
    },
    headline = {
        font = theme.typography.title.small.font,
        size = theme.typography.title.small.size,
        color = theme.color.onSurfaceVariant
    },
    inactive = {
        focus = {
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        icon = {
            color = theme.color.onSurfaceVariant
        },
        ["label-text"] = {
            color = theme.color.onSurfaceVariant
        },
        pressed = {
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        }
    },
    active = {
        focus = {
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        hover = {
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        icon = {
            color = theme.color.onSecondaryContainer
        },
        ["label-text"] = {
            color = theme.color.onSecondaryContainer
        },
        pressed = {
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        }
    },
    ["large-badge-label"] = {
        font = theme.typography.label.large.font,
        size = theme.typography.label.large.size,
        color = theme.color.onSurfaceVariant
    },
    ["active-indicator"] = {
        width = 336,
        shape = theme.shape.cornerFull,
        height = 56,
        color = theme.color.secondaryContainer
    },
    icon = {
        size = 24
    }
}
end

return getTokens
    