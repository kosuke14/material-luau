
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
        ["label-text"] = {
            color = theme.color.primary
        },
        ["state-layer"] = {
            color = theme.color.primary
        },
        outline = {
            color = theme.color.primary
        }
    },
    ["trailing-space"] = 24,
    pressed = {
        container = {
            shape = theme.shape.cornerSmall
        },
        ["state-layer"] = {
            color = theme.color.primary
        },
        ["label-text"] = {
            color = theme.color.primary
        },
        icon = {
            color = theme.color.onPrimary
        },
        outline = {
            color = theme.color.outline
        }
    },
    ["icon-label-space"] = 8,
    selected = {
        container = {
            shape = {
                square = theme.shape.cornerFull,
                round = theme.shape.cornerMedium
            },
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
    container = {
        color = theme.color.primary,
        ["shadow-color"] = theme.color.shadow,
        shape = {
            square = theme.shape.cornerMedium,
            round = theme.shape.cornerFull,
            value = theme.shape.cornerFull
        },
        height = 40,
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        }
    },
    unselected = {
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
    ["label-text"] = {
        color = theme.color.primary,
        unselected = {
            color = theme.color.onSurfaceVariant
        },
        selected = {
            color = theme.color.onPrimary
        },
        value = theme.typography.label.large,
        font = theme.typography.label.large.font,
        size = theme.typography.label.large.size
    },
    icon = {
        color = theme.color.onPrimary,
        size = 20
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
        },
        outline = {
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
    ["leading-space"] = 24,
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
    },
    text = {
        ["label-text"] = {
            color = theme.color.primary
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
        disabled = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            },
            container = {
                color = theme.color.onSurface
            }
        }
    },
    xlarge = {
        container = {
            height = 136,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerExtraLarge
            }
        },
        outlined = {
            outline = {
                width = 3
            }
        },
        ["label-text"] = theme.typography.headline.large,
        icon = {
            size = 40
        },
        ["leading-space"] = 64,
        ["icon-label-space"] = 16,
        ["trailing-space"] = 64,
        pressed = {
            container = {
                shape = theme.shape.cornerLarge
            }
        },
        selected = {
            container = {
                shape = {
                    round = theme.shape.cornerExtraLarge,
                    square = theme.shape.cornerFull
                }
            }
        }
    },
    large = {
        container = {
            height = 96,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerExtraLarge
            }
        },
        outlined = {
            outline = {
                width = 2
            }
        },
        ["label-text"] = theme.typography.headline.small,
        icon = {
            size = 32
        },
        ["leading-space"] = 48,
        ["icon-label-space"] = 12,
        ["trailing-space"] = 48,
        pressed = {
            container = {
                shape = theme.shape.cornerLarge
            }
        },
        selected = {
            container = {
                shape = {
                    round = theme.shape.cornerExtraLarge,
                    square = theme.shape.cornerFull
                }
            }
        }
    },
    medium = {
        container = {
            height = 56,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerLarge
            }
        },
        outlined = {
            outline = {
                width = 1
            }
        },
        ["label-text"] = theme.typography.title.medium,
        icon = {
            size = 24
        },
        ["leading-space"] = 24,
        ["icon-label-space"] = 8,
        ["trailing-space"] = 24,
        pressed = {
            container = {
                shape = theme.shape.cornerMedium
            }
        },
        selected = {
            container = {
                shape = {
                    round = theme.shape.cornerLarge,
                    square = theme.shape.cornerFull
                }
            }
        }
    },
    small = {
        container = {
            height = 40,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerMedium
            }
        },
        outlined = {
            outline = {
                width = 1
            }
        },
        ["label-text"] = theme.typography.label.large,
        icon = {
            size = 20
        },
        ["leading-space"] = 16,
        ["icon-label-space"] = 8,
        ["trailing-space"] = 16,
        pressed = {
            container = {
                shape = theme.shape.cornerSmall
            }
        },
        selected = {
            container = {
                shape = {
                    round = theme.shape.cornerMedium,
                    square = theme.shape.cornerFull
                }
            }
        }
    },
    xsmall = {
        container = {
            height = 32,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerMedium
            }
        },
        outlined = {
            outline = {
                width = 1
            }
        },
        icon = {
            size = 20
        },
        ["label-text"] = theme.typography.label.large,
        ["leading-space"] = 12,
        ["icon-label-space"] = 8,
        ["trailing-space"] = 12,
        pressed = {
            container = {
                shape = theme.shape.cornerSmall
            }
        },
        selected = {
            container = {
                shape = {
                    square = theme.shape.cornerFull,
                    round = theme.shape.cornerMedium
                }
            }
        }
    },
    ["with-icon"] = {
        dragged = {
            icon = {
                color = theme.color.onPrimary
            }
        },
        pressed = {
            icon = {
                color = theme.color.primary
            }
        },
        focus = {
            icon = {
                color = theme.color.primary
            }
        },
        hover = {
            icon = {
                color = theme.color.primary
            }
        },
        disabled = {
            icon = {
                color = theme.color.onSurface
            }
        },
        icon = {
            size = 18,
            color = theme.color.primary
        }
    },
    dragged = {
        ["label-text"] = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
        }
    },
    hover = {
        ["label-text"] = {
            color = theme.color.primary
        },
        ["state-layer"] = {
            color = theme.color.primary
        },
        outline = {
            color = theme.color.outline
        }
    },
    outline = {
        width = 1,
        color = theme.color.outline
    }
}
end

return getTokens
    