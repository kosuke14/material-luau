-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    expanded = {
        modal = {
            container = {
                color = theme.color.surfaceContainer,
                shape = theme.shape.cornerLarge
            }
        },
        container = {
            color = theme.color.surface,
            shape = theme.shape.cornerNone,
            width = {
                minimum = 220,
                maximum = 360
            }
        },
        vertical = {
            ["trailing-space"] = 20
        },
        ["between-item-space"] = nil,
        ["top-space"] = 44
    },
    collapsed = {
        container = {
            color = theme.color.surface,
            width = 96,
            shape = theme.shape.cornerNone
        },
        item = {
            ["vertical-space"] = 4
        },
        ["top-space"] = 44,
        narrow = {
            container = {
                width = 80
            }
        }
    },
    item = {
        icon = {
            size = 24
        },
        ["active-indicator"] = {
            shape = theme.shape.cornerFull,
            ["leading-space"] = 16,
            ["icon-label-space"] = 8,
            ["trailing-space"] = 16
        },
        container = {
            height = 64,
            ["vertical-space"] = 6,
            shape = theme.shape.cornerNone
        },
        ["header-space-minimum"] = 40,
        short = {
            container = {
                height = 56
            }
        },
        active = {
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
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            }
        },
        inactive = {
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
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                }
            }
        },
        vertical = {
            ["active-indicator"] = {
                height = 32,
                width = 56
            },
            ["icon-label-space"] = 4,
            ["trailing-space"] = 16,
            ["label-text"] = {
                font = theme.typography.label.medium
            },
            ["leading-space"] = 16
        },
        horizontal = {
            ["label-text"] = {
                font = theme.typography.label.large
            },
            ["active-indicator"] = {
                height = 56
            },
            ["full-width"] = {
                ["leading-space"] = 16,
                ["trailing-space"] = 16
            },
            ["icon-label-space"] = 8
        }
    },
    menu = {
        pressed = {
            icon = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        focus = {
            icon = {
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
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        icon = {
            size = 24,
            color = theme.color.onSurfaceVariant
        }
    },
    ["label-text"] = {
        font = theme.typography.label.medium.font,
        size = theme.typography.label.medium.size,
        ["font-size"] = theme.typography.label.medium.size,
        ["font-family"] = theme.typography.label.medium.font
    },
    inactive = {
        ["label-text"] = {
            color = theme.color.onSurfaceVariant
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
        icon = {
            color = theme.color.onSurfaceVariant
        },
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
        }
    },
    active = {
        ["label-text"] = {
            color = theme.color.onSurface
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
        icon = {
            color = theme.color.onSecondaryContainer
        },
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
        }
    },
    ["large-badge-label"] = {
        color = theme.color.onError,
        font = theme.typography.label.small.font,
        size = theme.typography.label.small.size,
        ["font-family"] = theme.typography.label.small.font
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
        width = 56,
        shape = theme.shape.cornerFull,
        height = 32,
        color = theme.color.secondaryContainer
    },
    ["no-label"] = {
        ["active-indicator"] = {
            shape = theme.shape.cornerFull,
            height = 56
        }
    },
    icon = {
        size = 24
    },
    container = {
        width = 80,
        shape = theme.shape.cornerNone,
        color = theme.color.surface
    }
}
end

return getTokens
    