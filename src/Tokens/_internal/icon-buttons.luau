
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    ["outlined-icon-button"] = {
        selected = {
            pressed = {
                icon = {
                    color = theme.color.inverseOnSurface
                },
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                }
            },
            focus = {
                icon = {
                    color = theme.color.inverseOnSurface
                },
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                }
            },
            hover = {
                icon = {
                    color = theme.color.inverseOnSurface
                },
                ["state-layer"] = {
                    color = theme.color.inverseOnSurface
                }
            },
            icon = {
                color = theme.color.inverseOnSurface
            },
            container = {
                color = theme.color.inverseSurface
            }
        },
        unselected = {
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
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            hover = {
                icon = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            icon = {
                color = theme.color.onSurfaceVariant
            },
            outline = {
                width = 1,
                color = theme.color.outline
            }
        },
        focus = {
            indicator = {
                color = theme.color.secondary
            }
        },
        disabled = {
            unselected = {
                outline = {
                    color = theme.color.onSurface
                }
            },
            icon = {
                color = theme.color.onSurface
            },
            selected = {
                container = {
                    color = theme.color.onSurface
                }
            },
            outline = {
                color = theme.color.onSurface
            }
        },
        icon = {
            size = 24
        },
        container = {
            shape = theme.shape.cornerFull,
            height = 40,
            width = 40,
            size = 40
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
            space100 = 8,
            space75 = 6,
            space200 = 16,
            space400 = 32,
            space600 = 48,
            space50 = 4,
            space175 = 14,
            space900 = 72,
            space150 = 12,
            space300 = 24,
            space125 = 10
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
    pressed = {
        icon = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
        },
        container = {
            shape = theme.shape.cornerSmall
        }
    },
    focus = {
        icon = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
        },
        indicator = {
            color = theme.color.secondary
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
    disabled = {
        icon = {
            color = theme.color.onSurface
        },
        container = {
            color = theme.color.onSurface
        }
    },
    icon = {
        color = theme.color.onPrimary,
        size = 24
    },
    selected = {
        container = {
            color = theme.color.primary,
            shape = {
                square = theme.shape.cornerFull,
                round = theme.shape.cornerMedium
            }
        },
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
        icon = {
            color = theme.color.onPrimary
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onPrimary
            },
            icon = {
                color = theme.color.onPrimary
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            }
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.primary
            }
        }
    },
    unselected = {
        container = {
            color = theme.color.surfaceContainer
        },
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
        icon = {
            color = theme.color.onSurfaceVariant
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.onSurfaceVariant
            },
            icon = {
                color = theme.color.onSurfaceVariant
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
        }
    },
    container = {
        color = theme.color.primary,
        shape = theme.shape.cornerFull,
        height = 40,
        width = 40,
        size = 40
    },
    outlined = {
        selected = {
            container = {
                color = theme.color.inverseSurface
            },
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
            disabled = {
                container = {
                    color = theme.color.onSurface
                }
            }
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
    focused = {
        icon = {
            color = theme.color.onPrimary
        },
        ["state-layer"] = {
            color = theme.color.onPrimary
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
    hovered = {
        ["state-layer"] = {
            color = theme.color.onPrimary
        },
        icon = {
            color = theme.color.onPrimary
        }
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
    xlarge = {
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
    large = {
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
    medium = {
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
    small = {
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
    xsmall = {
        container = {
            shape = {
                square = theme.shape.cornerMedium,
                round = theme.shape.cornerFull
            },
            height = 32
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
    }
}
end

return getTokens
    