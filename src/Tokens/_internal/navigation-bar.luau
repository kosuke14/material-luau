
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    container = {
        shape = theme.shape.cornerNone,
        ["shadow-color"] = theme.color.shadow,
        color = theme.color.surfaceContainer,
        height = 80,
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        }
    },
    item = {
        inactive = {
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            }
        },
        active = {
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            indicator = {
                color = theme.color.secondaryContainer
            },
            ["label-text"] = {
                color = theme.color.secondary
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            }
        },
        ["between-space"] = nil,
        ["active-indicator"] = {
            shape = theme.shape.cornerFull,
            ["icon-label-space"] = 4
        },
        icon = {
            size = 24
        },
        vertical = {
            ["label-text"] = {
                font = theme.typography.label.medium
            },
            ["active-indicator"] = {
                height = 32,
                width = 56,
                ["icon-label-space"] = 4
            },
            container = {
                ["between-space"] = 6
            }
        },
        horizontal = {
            ["label-text"] = {
                font = theme.typography.label.medium
            },
            ["active-indicator"] = {
                height = 40,
                ["leading-space"] = 16,
                ["trailing-space"] = 16,
                ["icon-label-space"] = 4
            }
        }
    },
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
    active = {
        pressed = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        focus = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        ["label-text"] = {
            color = theme.color.onSurface
        },
        icon = {
            color = theme.color.onSecondaryContainer
        }
    },
    inactive = {
        pressed = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        ["label-text"] = {
            color = theme.color.onSurfaceVariant
        },
        hover = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        focus = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        icon = {
            color = theme.color.onSurfaceVariant
        }
    },
    ["label-text"] = {
        font = theme.typography.label.medium.font,
        size = theme.typography.label.medium.size
    },
    ["large-badge"] = {
        color = theme.color.error,
        size = 16
    },
    badge = {
        size = 6,
        color = theme.color.error
    },
    ["active-indicator"] = {
        shape = theme.shape.cornerFull,
        width = 64,
        height = 32,
        color = theme.color.secondaryContainer
    },
    icon = {
        size = 24
    }
}
end

return getTokens
    