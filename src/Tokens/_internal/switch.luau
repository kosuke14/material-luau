
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    unselected = {
        pressed = {
            track = {
                outline = {
                    color = theme.color.outline
                },
                color = theme.color.surfaceContainerHighest
            },
            icon = {
                color = theme.color.surfaceContainerHighest
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            handle = {
                color = theme.color.onSurfaceVariant
            }
        },
        track = {
            color = theme.color.surfaceContainerHighest,
            outline = {
                color = theme.color.outline
            }
        },
        focus = {
            icon = {
                color = theme.color.surfaceContainerHighest
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            track = {
                outline = {
                    color = theme.color.outline
                },
                color = theme.color.surfaceContainerHighest
            },
            handle = {
                color = theme.color.onSurfaceVariant
            }
        },
        hover = {
            icon = {
                color = theme.color.surfaceContainerHighest
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            track = {
                outline = {
                    color = theme.color.outline
                },
                color = theme.color.surfaceContainerHighest
            },
            handle = {
                color = theme.color.onSurfaceVariant
            }
        },
        handle = {
            color = theme.color.outline,
            width = 16,
            height = 16
        },
        icon = {
            size = 16,
            color = theme.color.surfaceContainerHighest
        }
    },
    sys = {
        state = {
            ["focus-indicator"] = {
                ["outer-offset"] = 2,
                thickness = 3
            }
        }
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        }
    },
    selected = {
        track = {
            color = theme.color.primary
        },
        pressed = {
            icon = {
                color = theme.color.onPrimaryContainer
            },
            ["state-layer"] = {
                color = theme.color.primary
            },
            handle = {
                color = theme.color.primaryContainer
            },
            track = {
                color = theme.color.primary
            }
        },
        focus = {
            icon = {
                color = theme.color.onPrimaryContainer
            },
            ["state-layer"] = {
                color = theme.color.primary
            },
            handle = {
                color = theme.color.primaryContainer
            },
            track = {
                color = theme.color.primary
            }
        },
        hover = {
            icon = {
                color = theme.color.onPrimaryContainer
            },
            ["state-layer"] = {
                color = theme.color.primary
            },
            handle = {
                color = theme.color.primaryContainer
            },
            track = {
                color = theme.color.primary
            }
        },
        handle = {
            color = theme.color.onPrimary,
            width = 24,
            height = 24
        },
        icon = {
            size = 16,
            color = theme.color.onPrimaryContainer
        }
    },
    track = {
        shape = theme.shape.cornerFull,
        outline = {
            width = 2
        },
        width = 52,
        height = 32
    },
    handle = {
        width = 20,
        height = 20,
        ["shadow-color"] = theme.color.shadow,
        shape = theme.shape.cornerFull
    },
    disabled = {
        unselected = {
            track = {
                outline = {
                    color = theme.color.onSurface
                },
                color = theme.color.surfaceContainerHighest
            },
            icon = {
                color = theme.color.surfaceContainerHighest
            },
            handle = {
                color = theme.color.onSurface
            }
        },
        selected = {
            icon = {
                color = theme.color.onSurface
            },
            handle = {
                color = theme.color.surface
            },
            track = {
                color = theme.color.onSurface
            }
        }
    },
    ["state-layer"] = {
        shape = theme.shape.cornerFull,
        size = 40
    },
    pressed = {
        handle = {
            width = 28,
            height = 28
        }
    },
    ["with-icon"] = {
        handle = {
            width = 24,
            height = 24
        }
    }
}
end

return getTokens
    