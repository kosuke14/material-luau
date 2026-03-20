
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
        }
    },
    selected = {
        hovered = {
            icon = {
                color = theme.color.onPrimary
            },
            ["state-layer"] = {
                color = theme.color.onPrimary
            }
        },
        focused = {
            icon = {
                color = theme.color.onPrimary
            },
            ["state-layer"] = {
                color = theme.color.onPrimary
            }
        },
        container = {
            shape = {
                square = theme.shape.cornerFull,
                round = theme.shape.cornerMedium
            },
            color = theme.color.primary
        },
        icon = {
            color = theme.color.inverseOnSurface
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.inverseOnSurface
            },
            icon = {
                color = theme.color.inverseOnSurface
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.inverseOnSurface
            },
            icon = {
                color = theme.color.inverseOnSurface
            }
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.inverseOnSurface
            },
            icon = {
                color = theme.color.inverseOnSurface
            }
        }
    },
    unselected = {
        hovered = {
            icon = {
                color = theme.color.onSurfaceVariant
            },
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            }
        },
        focused = {
            icon = {
                color = theme.color.onSurfaceVariant
            },
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            }
        },
        container = {
            color = theme.color.surfaceContainerHighest
        },
        icon = {
            color = theme.color.onSurfaceVariant
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onSurface
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        outline = {
            width = 1,
            color = theme.color.outline
        }
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        },
        icon = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
        }
    },
    focused = {
        icon = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
        }
    },
    default = {
        ["trailing-space"] = 8,
        ["leading-space"] = 8
    },
    xsmall = {
        default = {
            ["leading-space"] = 6,
            ["trailing-space"] = 6
        },
        container = {
            shape = {
                square = theme.shape.cornerMedium,
                round = theme.shape.cornerFull
            },
            height = 32
        },
        wide = {
            ["trailing-space"] = 10,
            ["leading-space"] = 10
        },
        narrow = {
            ["trailing-space"] = 4,
            ["leading-space"] = 4
        },
        icon = {
            size = 20
        },
        outlined = {
            outline = {
                width = 1
            }
        },
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
    small = {
        default = {
            ["trailing-space"] = 8,
            ["leading-space"] = 8
        },
        container = {
            height = 40,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerMedium
            }
        },
        icon = {
            size = 24
        },
        narrow = {
            ["leading-space"] = 4,
            ["trailing-space"] = 4
        },
        wide = {
            ["leading-space"] = 14,
            ["trailing-space"] = 14
        },
        outlined = {
            outline = {
                width = 1
            }
        },
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
    medium = {
        default = {
            ["trailing-space"] = 16,
            ["leading-space"] = 16
        },
        container = {
            height = 56,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerLarge
            }
        },
        icon = {
            size = 24
        },
        narrow = {
            ["trailing-space"] = 12,
            ["leading-space"] = 12
        },
        wide = {
            ["leading-space"] = 24,
            ["trailing-space"] = 24
        },
        outlined = {
            outline = {
                width = 1
            }
        },
        pressed = {
            container = {
                shape = theme.shape.cornerMedium
            }
        },
        selected = {
            container = {
                shape = {
                    square = theme.shape.cornerFull,
                    round = theme.shape.cornerLarge
                }
            }
        }
    },
    large = {
        default = {
            ["trailing-space"] = 32,
            ["leading-space"] = 32
        },
        container = {
            height = 96,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerExtraLarge
            }
        },
        icon = {
            size = 32
        },
        narrow = {
            ["leading-space"] = 16,
            ["trailing-space"] = 16
        },
        wide = {
            ["leading-space"] = 48,
            ["trailing-space"] = 48
        },
        outlined = {
            outline = {
                width = 2
            }
        },
        pressed = {
            container = {
                shape = theme.shape.cornerLarge
            }
        },
        selected = {
            container = {
                shape = {
                    square = theme.shape.cornerFull,
                    round = theme.shape.cornerExtraLarge
                }
            }
        }
    },
    xlarge = {
        default = {
            ["trailing-space"] = 48,
            ["leading-space"] = 48
        },
        container = {
            height = 136,
            shape = {
                round = theme.shape.cornerFull,
                square = theme.shape.cornerExtraLarge
            }
        },
        icon = {
            size = 40
        },
        narrow = {
            ["leading-space"] = 32,
            ["trailing-space"] = 32
        },
        wide = {
            ["leading-space"] = 72,
            ["trailing-space"] = 72
        },
        outlined = {
            outline = {
                width = 3
            }
        },
        pressed = {
            container = {
                shape = theme.shape.cornerLarge
            }
        },
        selected = {
            container = {
                shape = {
                    square = theme.shape.cornerFull,
                    round = theme.shape.cornerExtraLarge
                }
            }
        }
    },
    filled = {
        container = {
            color = theme.color.primary
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
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focused = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            }
        },
        selected = {
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
                icon = {
                    color = theme.color.onPrimary
                }
            },
            focused = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.onPrimary
                }
            }
        },
        icon = {
            color = theme.color.onPrimary
        },
        disabled = {
            container = {
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
            icon = {
                color = theme.color.onPrimary
            }
        },
        focused = {
            ["state-layer"] = {
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
            icon = {
                color = theme.color.onPrimary
            }
        }
    },
    container = {
        color = theme.color.primary,
        height = 40,
        shape = {
            round = theme.shape.cornerFull,
            square = theme.shape.cornerMedium,
            value = theme.shape.cornerFull
        },
        size = 40,
        width = 40
    },
    icon = {
        color = theme.color.onPrimary,
        size = 24
    },
    disabled = {
        container = {
            color = theme.color.onSurface
        },
        icon = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.onSurface
        },
        selected = {
            container = {
                color = theme.color.onSurface
            }
        },
        unselected = {
            outline = {
                color = theme.color.onSurface
            }
        }
    },
    hovered = {
        ["state-layer"] = {
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
        icon = {
            color = theme.color.onPrimary
        },
        container = {
            shape = theme.shape.cornerSmall
        }
    },
    narrow = {
        ["leading-space"] = 4,
        ["trailing-space"] = 4
    },
    wide = {
        ["leading-space"] = 14,
        ["trailing-space"] = 14
    },
    ["state-layer"] = {
        size = 40,
        width = 40,
        shape = theme.shape.cornerFull,
        height = 40
    },
    tonal = {
        pressed = {
            ["state-layer"] = {
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
            icon = {
                color = theme.color.onSecondaryContainer
            }
        },
        hovered = {
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            }
        },
        disabled = {
            icon = {
                color = theme.color.onSurface
            },
            container = {
                color = theme.color.onSurface
            }
        },
        container = {
            color = theme.color.secondaryContainer
        },
        icon = {
            color = theme.color.onSecondaryContainer
        },
        unselected = {
            container = {
                color = theme.color.secondaryContainer
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            hovered = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.onSecondaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
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
            icon = {
                color = theme.color.onSecondary
            },
            hovered = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.onSecondary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            }
        }
    },
    standard = {
        disabled = {
            icon = {
                color = theme.color.onSurface
            }
        },
        icon = {
            color = theme.color.onSurfaceVariant
        },
        hovered = {
            ["state-layer"] = {
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
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        unselected = {
            hovered = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        selected = {
            hovered = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.primary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.primary
                },
                icon = {
                    color = theme.color.primary
                }
            },
            icon = {
                color = theme.color.primary
            }
        }
    },
    outlined = {
        hovered = {
            ["state-layer"] = {
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
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        icon = {
            color = theme.color.onSurfaceVariant
        },
        outline = {
            color = theme.color.outlineVariant
        },
        unselected = {
            icon = {
                color = theme.color.onSurfaceVariant
            },
            hovered = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                },
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            outline = {
                color = theme.color.outlineVariant
            },
            disabled = {
                outline = {
                    color = theme.color.outlineVariant
                }
            }
        },
        selected = {
            icon = {
                color = theme.color.inverseOnSurface
            },
            hovered = {
                ["state-layer"] = {
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
                icon = {
                    color = theme.color.inverseOnSurface
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                },
                icon = {
                    color = theme.color.inverseOnSurface
                }
            },
            container = {
                color = theme.color.inverseSurface
            },
            disabled = {
                container = {
                    color = theme.color.onSurface
                }
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
            }
        },
        disabled = {
            outline = {
                color = theme.color.outlineVariant
            },
            icon = {
                color = theme.color.onSurface
            }
        }
    },
    toggle = {
        selected = {
            pressed = {
                icon = {
                    color = theme.color.onPrimary
                },
                ["state-layer"] = {
                    color = theme.color.onPrimary
                }
            },
            focus = {
                icon = {
                    color = theme.color.onPrimary
                },
                ["state-layer"] = {
                    color = theme.color.onPrimary
                }
            },
            hover = {
                icon = {
                    color = theme.color.onPrimary
                },
                ["state-layer"] = {
                    color = theme.color.onPrimary
                }
            },
            icon = {
                color = theme.color.onPrimary
            }
        },
        unselected = {
            pressed = {
                icon = {
                    color = theme.color.primary
                },
                ["state-layer"] = {
                    color = theme.color.primary
                }
            },
            focus = {
                icon = {
                    color = theme.color.primary
                },
                ["state-layer"] = {
                    color = theme.color.primary
                }
            },
            hover = {
                icon = {
                    color = theme.color.primary
                },
                ["state-layer"] = {
                    color = theme.color.primary
                }
            },
            icon = {
                color = theme.color.primary
            }
        }
    },
    hover = {
        icon = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
        }
    }
}
end

return getTokens
    