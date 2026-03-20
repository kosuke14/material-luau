
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    ["list-item"] = {
        selected = {
            ["with-leading-icon"] = {
                ["leading-icon"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["trailing-icon"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            container = {
                color = theme.color.secondaryContainer
            }
        },
        ["with-trailing-icon"] = {
            pressed = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focus = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            hover = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            disabled = {
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                }
            },
            ["trailing-icon"] = {
                color = theme.color.onSurfaceVariant,
                size = 24
            }
        },
        ["with-leading-icon"] = {
            pressed = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focus = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            hover = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            disabled = {
                ["leading-icon"] = {
                    color = theme.color.onSurface
                }
            },
            ["leading-icon"] = {
                color = theme.color.onSurfaceVariant,
                size = 24
            }
        },
        pressed = {
            ["label-text"] = {
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
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        disabled = {
            ["label-text"] = {
                color = theme.color.onSurface
            }
        },
        ["label-text"] = {
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size,
            color = theme.color.onSurface
        },
        container = {
            height = 48
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
    container = {
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        shape = theme.shape.cornerExtraSmall,
        ["shadow-color"] = theme.color.shadow,
        color = theme.color.surfaceContainer
    },
    ["cascading-menu-indicator"] = {
        icon = {
            size = 24,
            color = theme.color.onSurfaceVariant
        }
    },
    divider = {
        color = theme.color.surfaceVariant,
        height = 1
    }
}
end

return getTokens
    