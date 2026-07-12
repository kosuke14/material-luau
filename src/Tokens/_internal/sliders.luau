
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    active = {
        handle = {
            color = theme.color.primary,
            shape = theme.shape.cornerFull,
            width = 4,
            height = 44
        },
        track = {
            ["outer-corner"] = {
                ["corner-size"] = theme.shape.cornerFull
            },
            color = theme.color.primary,
            shape = theme.shape.cornerFull,
            height = 16
        },
        ["stop-indicator"] = {
            container = {
                color = theme.color.onPrimary
            }
        }
    },
    xlarge = {
        icon = {
            padding = 8,
            size = 32
        },
        active = {
            handle = {
                height = 108
            },
            track = {
                shape = {
                    leading = 28
                },
                height = 96
            }
        },
        inactive = {
            track = {
                shape = {
                    trailing = 28
                },
                height = 96
            }
        }
    },
    large = {
        icon = {
            padding = 6,
            size = 24
        },
        active = {
            handle = {
                height = 68
            },
            track = {
                shape = {
                    leading = 16
                },
                height = 56
            }
        },
        inactive = {
            track = {
                shape = {
                    trailing = 16
                },
                height = 56
            }
        }
    },
    medium = {
        icon = {
            padding = 6,
            size = 24
        },
        active = {
            handle = {
                height = 44
            },
            track = {
                shape = {
                    leading = 12
                },
                height = 40
            }
        },
        inactive = {
            track = {
                shape = {
                    trailing = 12
                },
                height = 40
            }
        }
    },
    small = {
        inactive = {
            track = {
                shape = {
                    trailing = 8
                },
                height = 24
            }
        },
        active = {
            handle = {
                height = 44
            },
            track = {
                shape = {
                    leading = 8
                },
                height = 24
            }
        }
    },
    xsmall = {
        inactive = {
            track = {
                shape = {
                    trailing = 8
                },
                height = 16
            }
        },
        active = {
            handle = {
                height = 44
            },
            track = {
                shape = {
                    leading = 8
                },
                height = 16
            }
        }
    },
    disabled = {
        ["stop-indicator"] = {
            container = {
                color = theme.color.onSurface
            },
            color = theme.color.onSurface,
            ["color-selected"] = theme.color.inverseOnSurface
        },
        inactive = {
            ["stop-indicator"] = {
                container = {
                    color = theme.color.onSurface
                }
            },
            track = {
                color = theme.color.onSurface
            }
        },
        active = {
            ["stop-indicator"] = {
                container = {
                    color = theme.color.inverseOnSurface
                }
            },
            track = {
                color = theme.color.onSurface
            }
        },
        handle = {
            width = 4,
            color = theme.color.onSurface
        }
    },
    inactive = {
        ["stop-indicator"] = {
            container = {
                color = theme.color.onSecondaryContainer
            }
        },
        track = {
            color = theme.color.secondaryContainer,
            shape = theme.shape.cornerFull,
            height = 16
        }
    },
    ["stop-indicator"] = {
        ["color-selected"] = theme.color.onPrimary,
        color = theme.color.onSecondaryContainer,
        shape = theme.shape.cornerFull,
        size = 4
    },
    ["with-tick-marks"] = {
        inactive = {
            container = {
                color = theme.color.onSurfaceVariant
            }
        },
        active = {
            container = {
                color = theme.color.onPrimary
            }
        },
        disabled = {
            container = {
                color = theme.color.onSurface
            }
        },
        container = {
            size = 2,
            shape = theme.shape.cornerFull
        }
    },
    label = {
        container = {
            height = 28,
            color = theme.color.primary
        },
        ["label-text"] = {
            color = theme.color.inverseOnSurface,
            font = theme.typography.label.medium.font,
            size = theme.typography.label.medium.size,
            ["font-size"] = theme.typography.label.medium.size
        }
    },
    focus = {
        stop = {
            color = theme.color.primary
        },
        inactive = {
            track = {
                color = theme.color.secondaryContainer
            }
        },
        active = {
            track = {
                color = theme.color.primary
            }
        },
        ["state-layer"] = {
            color = theme.color.primary
        },
        handle = {
            color = theme.color.primary,
            width = 2
        }
    },
    ["value-indicator"] = {
        label = {
            ["label-text"] = {
                color = theme.color.inverseOnSurface,
                size = theme.typography.label.large.size,
                font = theme.typography.label.large.font
            }
        },
        container = {
            color = theme.color.inverseSurface
        }
    },
    pressed = {
        stop = {
            color = theme.color.primary
        },
        inactive = {
            track = {
                color = theme.color.secondaryContainer
            }
        },
        active = {
            track = {
                color = theme.color.primary
            }
        },
        ["state-layer"] = {
            color = theme.color.primary
        },
        handle = {
            width = 2,
            color = theme.color.primary
        }
    },
    hover = {
        stop = {
            color = theme.color.primary
        },
        handle = {
            color = theme.color.primary,
            width = 4
        },
        ["state-layer"] = {
            color = theme.color.primary
        }
    },
    sys = {
        measurement = {
            space150 = 12,
            space50 = 4,
            space75 = 6
        }
    },
    ["with-overlap"] = {
        handle = {
            outline = {
                width = 1,
                color = theme.color.onPrimary
            }
        }
    },
    handle = {
        ["shadow-color"] = theme.color.shadow,
        color = theme.color.primary,
        shape = theme.shape.cornerFull,
        width = 4,
        height = 44
    },
    ["state-layer"] = {
        size = 40
    }
}
end

return getTokens
    