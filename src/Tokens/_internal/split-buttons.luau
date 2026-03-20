
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    xsmall = {
        ["trailing-button"] = {
            ["inner-corner"] = {
                selected = {
                    ["corner-size"] = 50
                }
            },
            icon = {
                size = 22
            },
            ["trailing-space"] = 13,
            ["leading-space"] = 13
        },
        ["inner-corner"] = {
            pressed = {
                ["corner-size"] = theme.shape.cornerValueSmall
            },
            hovered = {
                ["corner-size"] = theme.shape.cornerValueSmall
            },
            ["corner-size"] = theme.shape.cornerValueExtraSmall
        },
        ["outer-corner"] = {
            ["corner-size"] = 50
        },
        ["leading-button"] = {
            ["leading-space"] = 12,
            ["trailing-space"] = 10
        },
        container = {
            height = 32,
            shape = theme.shape.cornerFull
        },
        ["between-space"] = 2
    },
    sys = {
        shape = {
            ["corner-value"] = {
                small = 8,
                ["extra-small"] = 4,
                medium = 12,
                ["large-increased"] = 20
            }
        }
    },
    small = {
        ["trailing-button"] = {
            ["inner-corner"] = {
                selected = {
                    ["corner-size"] = 50
                }
            },
            icon = {
                size = 22
            },
            ["leading-space"] = 13,
            ["trailing-space"] = 13
        },
        ["inner-corner"] = {
            pressed = {
                ["corner-size"] = theme.shape.cornerValueMedium
            },
            hovered = {
                ["corner-size"] = theme.shape.cornerValueMedium
            },
            ["corner-size"] = theme.shape.cornerValueExtraSmall
        },
        container = {
            height = 40,
            shape = theme.shape.cornerFull
        },
        ["between-space"] = 2,
        ["leading-button"] = {
            ["leading-space"] = 16,
            ["trailing-space"] = 12
        }
    },
    medium = {
        ["trailing-button"] = {
            ["inner-corner"] = {
                selected = {
                    ["corner-size"] = 50
                }
            },
            icon = {
                size = 26
            },
            ["leading-space"] = 15,
            ["trailing-space"] = 15
        },
        ["inner-corner"] = {
            pressed = {
                ["corner-size"] = theme.shape.cornerValueMedium
            },
            hovered = {
                ["corner-size"] = theme.shape.cornerValueMedium
            },
            ["corner-size"] = theme.shape.cornerValueExtraSmall
        },
        container = {
            height = 56,
            shape = theme.shape.cornerFull
        },
        ["between-space"] = 2,
        ["leading-button"] = {
            ["leading-space"] = 24,
            ["trailing-space"] = 24
        }
    },
    large = {
        ["trailing-button"] = {
            ["inner-corner"] = {
                selected = {
                    ["corner-size"] = 50
                }
            },
            icon = {
                size = 38
            },
            ["leading-space"] = 29,
            ["trailing-space"] = 29
        },
        ["inner-corner"] = {
            pressed = {
                ["corner-size"] = theme.shape.cornerValueLargeIncreased
            },
            hovered = {
                ["corner-size"] = theme.shape.cornerValueLargeIncreased
            },
            ["corner-size"] = theme.shape.cornerValueSmall
        },
        container = {
            shape = theme.shape.cornerFull,
            height = 96
        },
        ["between-space"] = 2,
        ["leading-button"] = {
            ["leading-space"] = 48,
            ["trailing-space"] = 48
        }
    },
    xlarge = {
        ["inner-corner"] = {
            ["corner-size"] = theme.shape.cornerValueMedium,
            hovered = {
                ["corner-size"] = theme.shape.cornerValueLargeIncreased
            },
            pressed = {
                ["corner-size"] = theme.shape.cornerValueLargeIncreased
            }
        },
        ["trailing-button"] = {
            ["inner-corner"] = {
                selected = {
                    ["corner-size"] = 50
                }
            },
            icon = {
                size = 50
            },
            ["leading-space"] = 43,
            ["trailing-space"] = 43
        },
        container = {
            height = 136,
            shape = theme.shape.cornerFull
        },
        ["between-space"] = 2,
        ["leading-button"] = {
            ["leading-space"] = 64,
            ["trailing-space"] = 64
        }
    },
    filled = {
        selected = {
            ["label-text"] = {
                color = theme.color.onPrimary
            },
            container = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.onPrimary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            }
        },
        unselected = {
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            container = {
                color = theme.color.surfaceContainer
            },
            icon = {
                color = theme.color.onSurfaceVariant
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            }
        },
        container = {
            color = theme.color.primary,
            ["shadow-color"] = theme.color.shadow
        },
        ["label-text"] = {
            color = theme.color.onPrimary
        },
        icon = {
            color = theme.color.onPrimary
        },
        disabled = {
            container = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            }
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onPrimary
            },
            ["label-text"] = {
                color = theme.color.onPrimary
            },
            icon = {
                color = theme.color.onPrimary
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.onPrimary
            },
            ["label-text"] = {
                color = theme.color.onPrimary
            },
            icon = {
                color = theme.color.onPrimary
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onPrimary
            },
            ["label-text"] = {
                color = theme.color.onPrimary
            },
            icon = {
                color = theme.color.onPrimary
            }
        }
    },
    elevated = {
        selected = {
            ["label-text"] = {
                color = theme.color.onPrimary
            },
            container = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.onPrimary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            }
        },
        unselected = {
            ["label-text"] = {
                color = theme.color.primary
            },
            container = {
                color = theme.color.surfaceContainerLow
            },
            icon = {
                color = theme.color.primary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.primary
                },
                ["label-text"] = {
                    color = theme.color.primary
                },
                icon = {
                    color = theme.color.primary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.primary
                },
                ["label-text"] = {
                    color = theme.color.primary
                },
                icon = {
                    color = theme.color.primary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.primary
                },
                ["label-text"] = {
                    color = theme.color.primary
                },
                icon = {
                    color = theme.color.primary
                }
            }
        },
        container = {
            ["shadow-color"] = theme.color.shadow,
            color = theme.color.surfaceContainerLow
        },
        ["label-text"] = {
            color = theme.color.primary
        },
        icon = {
            color = theme.color.primary
        },
        disabled = {
            container = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            }
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.primary
            },
            ["label-text"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.primary
            },
            ["label-text"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.primary
            },
            ["label-text"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            }
        }
    },
    tonal = {
        container = {
            color = theme.color.secondaryContainer,
            ["shadow-color"] = theme.color.shadow
        },
        unselected = {
            container = {
                color = theme.color.secondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                }
            }
        },
        selected = {
            container = {
                color = theme.color.secondary
            },
            ["label-text"] = {
                color = theme.color.onSecondary
            },
            icon = {
                color = theme.color.onSecondary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                ["label-text"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                ["label-text"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                ["label-text"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            }
        },
        ["label-text"] = {
            color = theme.color.onSecondaryContainer
        },
        icon = {
            color = theme.color.onSecondaryContainer
        },
        disabled = {
            container = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            }
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            }
        }
    },
    outlined = {
        outline = {
            color = theme.color.outlineVariant
        },
        selected = {
            container = {
                color = theme.color.inverseSurface
            },
            ["label-text"] = {
                color = theme.color.inverseOnSurface
            },
            icon = {
                color = theme.color.inverseOnSurface
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                },
                ["label-text"] = {
                    color = theme.color.inverseOnSurface
                },
                icon = {
                    color = theme.color.inverseOnSurface
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                },
                ["label-text"] = {
                    color = theme.color.inverseOnSurface
                },
                icon = {
                    color = theme.color.inverseOnSurface
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                },
                ["label-text"] = {
                    color = theme.color.inverseOnSurface
                },
                icon = {
                    color = theme.color.inverseOnSurface
                }
            },
            disabled = {
                container = {
                    color = theme.color.onSurface
                }
            }
        },
        ["label-text"] = {
            color = theme.color.onSurfaceVariant
        },
        unselected = {
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                outline = {
                    color = theme.color.outlineVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                outline = {
                    color = theme.color.outlineVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                outline = {
                    color = theme.color.outlineVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            disabled = {
                outline = {
                    color = theme.color.outlineVariant
                }
            }
        },
        icon = {
            color = theme.color.onSurfaceVariant
        },
        disabled = {
            outline = {
                color = theme.color.outlineVariant
            },
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            }
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            outline = {
                color = theme.color.outlineVariant
            },
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            outline = {
                color = theme.color.outlineVariant
            },
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            outline = {
                color = theme.color.outlineVariant
            },
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        }
    }
}
end

return getTokens
    