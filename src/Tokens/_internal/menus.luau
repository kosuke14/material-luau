
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    active = {
        container = {
            shape = theme.shape.cornerLarge
        }
    },
    ["menu-item"] = {
        height = 44,
        ["trailing-icon"] = {
            size = 20
        },
        ["leading-icon"] = {
            size = 20
        },
        ["last-child"] = {
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerExtraSmall
            },
            shape = theme.shape.cornerMedium
        },
        ["first-child"] = {
            shape = theme.shape.cornerMedium,
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerExtraSmall
            }
        },
        shape = theme.shape.cornerExtraSmall,
        ["trailing-supporting-text"] = {
            size = theme.typography.label.large.size,
            font = theme.typography.label.large.font
        },
        ["supporting-text"] = {
            size = theme.typography.body.small.size,
            font = theme.typography.body.small.font
        },
        ["label-text"] = {
            size = theme.typography.label.large.size,
            font = theme.typography.label.large.font
        },
        focus = {
            indicator = {
                color = theme.color.secondary
            }
        },
        selected = {
            shape = theme.shape.cornerMedium
        }
    },
    horizontal = {
        ["menu-item"] = {
            focused = {
                shape = theme.shape.cornerMedium
            },
            hovered = {
                shape = theme.shape.cornerMedium
            },
            pressed = {
                shape = theme.shape.cornerMedium
            },
            selected = {
                pressed = {
                    shape = theme.shape.cornerFull
                },
                focused = {
                    shape = theme.shape.cornerFull
                },
                hovered = {
                    shape = theme.shape.cornerFull
                }
            }
        },
        container = {
            shape = theme.shape.cornerFull
        },
        ["icon-only"] = {
            ["menu-item"] = {
                selected = {
                    shape = theme.shape.cornerFull
                }
            }
        }
    },
    sys = {
        measurement = {
            space200 = 16,
            space100 = 8,
            space150 = 12,
            space25 = 2,
            space50 = 4,
            space75 = 6
        },
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
    vibrant = {
        ["menu-item"] = {
            ["supporting-text"] = {
                color = theme.color.onTertiaryContainer
            },
            ["trailing-supporting-text"] = {
                color = theme.color.onTertiaryContainer
            },
            ["leading-icon"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            ["trailing-icon"] = {
                color = theme.color.onTertiaryContainer
            },
            color = theme.color.tertiaryContainer,
            selected = {
                container = {
                    color = theme.color.tertiary
                },
                pressed = {
                    ["label-text"] = {
                        color = theme.color.onTertiary
                    },
                    ["state-layer"] = {
                        color = theme.color.onTertiary
                    }
                },
                focused = {
                    ["label-text"] = {
                        color = theme.color.onTertiary
                    },
                    ["state-layer"] = {
                        color = theme.color.onTertiary
                    }
                },
                hovered = {
                    ["label-text"] = {
                        color = theme.color.onTertiary
                    },
                    ["state-layer"] = {
                        color = theme.color.onTertiary
                    }
                },
                ["trailing-icon"] = {
                    color = theme.color.onTertiary
                },
                ["leading-icon"] = {
                    color = theme.color.onTertiary
                },
                ["label-text"] = {
                    color = theme.color.onTertiary
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onTertiary
                },
                ["supporting-text"] = {
                    color = theme.color.onTertiary
                }
            },
            active = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            pressed = {
                ["trailing-icon"] = {
                    color = theme.color.tertiary
                },
                ["leading-icon"] = {
                    color = theme.color.tertiary
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            focused = {
                ["trailing-icon"] = {
                    color = theme.color.tertiary
                },
                ["leading-icon"] = {
                    color = theme.color.tertiary
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            hovered = {
                ["trailing-icon"] = {
                    color = theme.color.tertiary
                },
                ["leading-icon"] = {
                    color = theme.color.tertiary
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            disabled = {
                ["trailing-icon"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["leading-icon"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                }
            }
        },
        ["section-label-text"] = {
            color = theme.color.onTertiaryContainer
        },
        ["icon-button"] = {
            icon = {
                color = theme.color.onTertiaryContainer
            },
            container = {
                color = theme.color.tertiaryContainer
            },
            selected = {
                disabled = {
                    icon = {
                        color = theme.color.onTertiary
                    }
                },
                icon = {
                    color = theme.color.onTertiary
                },
                container = {
                    color = theme.color.tertiary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            disabled = {
                icon = {
                    color = theme.color.onTertiaryContainer
                }
            }
        },
        container = {
            color = theme.color.tertiaryContainer
        }
    },
    standard = {
        ["menu-item"] = {
            container = {
                color = theme.color.surfaceContainerLow
            },
            active = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                }
            },
            focused = {
                ["leading-icon"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            disabled = {
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["supporting-text"] = {
                    color = theme.color.onSurface
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            },
            selected = {
                focused = {
                    ["state-layer"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["label-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["leading-icon"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-icon"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["leading-icon"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["label-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-icon"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                hovered = {
                    ["state-layer"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["label-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["leading-icon"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-icon"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                disabled = {
                    container = {
                        color = theme.color.tertiaryContainer
                    },
                    ["label-text"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["leading-icon"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-icon"] = {
                        color = theme.color.onTertiaryContainer
                    },
                    ["trailing-supporting-text"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                container = {
                    color = theme.color.tertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["leading-icon"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["trailing-icon"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                },
                ["leading-icon"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                },
                ["leading-icon"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["trailing-supporting-text"] = {
                color = theme.color.onSurfaceVariant
            },
            ["trailing-icon"] = {
                color = theme.color.onSurfaceVariant
            },
            ["leading-icon"] = {
                color = theme.color.onSurfaceVariant
            },
            ["supporting-text"] = {
                color = theme.color.onSurfaceVariant
            },
            ["label-text"] = {
                color = theme.color.onSurface
            }
        },
        ["section-label-text"] = {
            color = theme.color.onSurfaceVariant
        },
        ["icon-button"] = {
            selected = {
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                focused = {
                    ["state-layer"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                hovered = {
                    ["state-layer"] = {
                        color = theme.color.onTertiaryContainer
                    }
                },
                icon = {
                    color = theme.color.onTertiaryContainer
                },
                container = {
                    color = theme.color.tertiaryContainer
                }
            },
            disabled = {
                icon = {
                    color = theme.color.onTertiaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                }
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                }
            },
            icon = {
                color = theme.color.onSurfaceVariant
            },
            container = {
                color = theme.color.surfaceContainerLow
            }
        },
        disabled = {
            ["icon-button"] = {
                icon = {
                    color = theme.color.onSurface
                }
            }
        },
        container = {
            ["shadow-color"] = theme.color.shadow,
            color = theme.color.surfaceContainerLow
        }
    },
    inactive = {
        container = {
            shape = theme.shape.cornerSmall
        }
    },
    group = {
        shape = theme.shape.cornerSmall
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        }
    },
    ["list-item"] = {
        focus = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
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
    container = {
        shape = theme.shape.cornerExtraSmall,
        ["shadow-color"] = theme.color.shadow,
        color = theme.color.surfaceContainer,
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        }
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
    