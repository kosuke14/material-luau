
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    primary = {
        container = {
            color = theme.color.primary,
            ["shadow-color"] = theme.color.shadow,
            height = 56,
            shape = theme.shape.cornerLarge
        },
        ["label-text"] = {
            color = theme.color.onPrimary,
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size
        },
        icon = {
            color = theme.color.onPrimary,
            size = 24
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
        },
        focus = {
            indicator = {
                color = theme.color.secondary
            },
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            icon = {
                color = theme.color.onPrimaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onPrimaryContainer
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            icon = {
                color = theme.color.onPrimaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onPrimaryContainer
            }
        }
    },
    sys = {
        state = {
            ["focus-indicator"] = {
                ["outer-offset"] = 2,
                thickness = 3
            }
        },
        measurement = {
            space200 = 16,
            space150 = 12,
            space100 = 8,
            space250 = 20
        },
        color = {
            ["surface-tint"] = theme.color.primary
        }
    },
    secondary = {
        container = {
            color = theme.color.secondary,
            ["shadow-color"] = theme.color.shadow,
            shape = theme.shape.cornerLarge,
            height = 56
        },
        ["label-text"] = {
            color = theme.color.onSecondary,
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size
        },
        icon = {
            color = theme.color.onSecondary,
            size = 24
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
        hover = {
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            indicator = {
                color = theme.color.secondary
            }
        }
    },
    tertiary = {
        container = {
            color = theme.color.tertiary,
            ["shadow-color"] = theme.color.shadow,
            height = 56,
            shape = theme.shape.cornerLarge
        },
        ["label-text"] = {
            color = theme.color.onTertiary,
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size
        },
        icon = {
            color = theme.color.onTertiary,
            size = 24
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onTertiary
            },
            ["label-text"] = {
                color = theme.color.onTertiary
            },
            icon = {
                color = theme.color.onTertiary
            }
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onTertiary
            },
            ["label-text"] = {
                color = theme.color.onTertiary
            },
            icon = {
                color = theme.color.onTertiary
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.onTertiary
            },
            ["label-text"] = {
                color = theme.color.onTertiary
            },
            icon = {
                color = theme.color.onTertiary
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            icon = {
                color = theme.color.onTertiaryContainer
            }
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            icon = {
                color = theme.color.onTertiaryContainer
            },
            indicator = {
                color = theme.color.secondary
            }
        }
    },
    ["primary-container"] = {
        container = {
            color = theme.color.primaryContainer,
            ["shadow-color"] = theme.color.shadow
        },
        ["label-text"] = {
            color = theme.color.onPrimaryContainer
        },
        icon = {
            color = theme.color.onPrimaryContainer
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onPrimaryContainer
            },
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            icon = {
                color = theme.color.onPrimaryContainer
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onPrimaryContainer
            },
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            icon = {
                color = theme.color.onPrimaryContainer
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.onPrimaryContainer
            },
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            icon = {
                color = theme.color.onPrimaryContainer
            }
        }
    },
    ["secondary-container"] = {
        container = {
            color = theme.color.secondaryContainer,
            ["shadow-color"] = theme.color.shadow
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
    ["tertiary-container"] = {
        container = {
            color = theme.color.tertiaryContainer,
            ["shadow-color"] = theme.color.shadow
        },
        ["label-text"] = {
            color = theme.color.onTertiaryContainer
        },
        icon = {
            color = theme.color.onTertiaryContainer
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            icon = {
                color = theme.color.onTertiaryContainer
            }
        },
        focused = {
            ["state-layer"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            icon = {
                color = theme.color.onTertiaryContainer
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            icon = {
                color = theme.color.onTertiaryContainer
            }
        }
    },
    large = {
        container = {
            height = 96,
            shape = theme.shape.cornerExtraLarge
        },
        ["label-text"] = theme.typography.headline.small,
        icon = {
            size = 36
        },
        ["leading-space"] = 28,
        ["trailing-space"] = 28
    },
    medium = {
        container = {
            height = 80,
            shape = theme.shape.cornerLargeIncreased
        },
        ["label-text"] = theme.typography.title.large,
        icon = {
            size = 28
        },
        ["leading-space"] = 26,
        ["trailing-space"] = 26
    },
    small = {
        container = {
            height = 56,
            shape = theme.shape.cornerLarge
        },
        ["label-text"] = theme.typography.title.medium,
        icon = {
            size = 24
        }
    },
    container = {
        height = 56,
        shape = theme.shape.cornerLarge
    },
    ["label-text"] = theme.typography.label.large,
    icon = {
        size = 24
    },
    surface = {
        focus = {
            indicator = {
                color = theme.color.secondary
            },
            ["label-text"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        container = {
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            ["shadow-color"] = theme.color.shadow,
            shape = theme.shape.cornerLarge,
            height = 56,
            color = theme.color.surfaceContainerHigh
        },
        lowered = {
            container = {
                color = theme.color.surfaceContainerLow
            }
        },
        ["label-text"] = {
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size,
            color = theme.color.primary
        },
        hover = {
            ["label-text"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        icon = {
            color = theme.color.primary,
            size = 24
        },
        pressed = {
            ["label-text"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    },
    branded = {
        focus = {
            indicator = {
                color = theme.color.secondary
            },
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        container = {
            ["shadow-color"] = theme.color.shadow,
            shape = theme.shape.cornerLarge,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            height = 56,
            color = theme.color.surfaceContainerHigh
        },
        lowered = {
            container = {
                color = theme.color.surfaceContainerLow
            }
        },
        ["label-text"] = {
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size,
            color = theme.color.onSurface
        },
        hover = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        icon = {
            size = 36
        },
        pressed = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    }
}
end

return getTokens
    