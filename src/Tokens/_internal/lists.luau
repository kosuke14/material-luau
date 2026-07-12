
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    expand = {
        expanded = {
            ["list-item"] = {
                segmented = {
                    container = {
                        color = theme.color.surface
                    }
                },
                ["trailing-icon"] = {
                    container = {
                        color = theme.color.surfaceContainer
                    },
                    icon = {
                        color = theme.color.onSurface
                    }
                },
                container = {
                    color = theme.color.surface
                }
            }
        },
        collapsed = {
            ["list-item"] = {
                ["trailing-icon"] = {
                    container = {
                        color = theme.color.surface
                    },
                    icon = {
                        color = theme.color.onSurface
                    }
                }
            }
        },
        ["trailing-icon"] = {
            shape = theme.shape.cornerFull
        },
        container = {
            shape = theme.shape.cornerLarge
        }
    },
    reorder = {
        ["list-item"] = {
            overline = {
                color = theme.color.onTertiaryContainer
            },
            ["drop-zone"] = {
                color = theme.color.surfaceContainerLow
            },
            ["trailing-icon"] = {
                color = theme.color.onTertiaryContainer
            },
            ["leading-icon"] = {
                color = theme.color.onTertiaryContainer
            },
            ["trailing-supporting-text"] = {
                color = theme.color.onTertiaryContainer
            },
            ["shadow-color"] = theme.color.shadow,
            ["state-layer"] = {
                color = theme.color.onTertiaryContainer
            },
            shape = theme.shape.cornerLarge,
            ["supporting-text"] = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            container = {
                color = theme.color.tertiaryContainer
            }
        }
    },
    ["list-item"] = {
        selected = {
            dragged = {
                container = {
                    expressive = {
                        shape = theme.shape.cornerLarge
                    }
                },
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            pressed = {
                container = {
                    expressive = {
                        shape = theme.shape.cornerLarge
                    }
                },
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                }
            },
            focused = {
                container = {
                    expressive = {
                        shape = theme.shape.cornerLarge
                    }
                }
            },
            hovered = {
                container = {
                    expressive = {
                        shape = theme.shape.cornerLarge
                    }
                }
            },
            disabled = {
                container = {
                    expressive = {
                        shape = theme.shape.cornerLarge
                    },
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                overline = {
                    color = theme.color.onSurface
                },
                ["trailing-supporting-text"] = {
                    color = theme.color.onSurface
                },
                ["supporting-text"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            },
            container = {
                expressive = {
                    shape = theme.shape.cornerLarge
                },
                shape = theme.shape.cornerLarge,
                color = theme.color.secondaryContainer
            },
            focus = {
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                }
            },
            hover = {
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                }
            },
            overline = {
                color = theme.color.onSecondaryContainer
            },
            ["trailing-icon"] = {
                color = theme.color.onSecondaryContainer
            },
            ["leading-icon"] = {
                color = theme.color.onSecondaryContainer
            },
            ["supporting-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["trailing-supporting-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        dragged = {
            container = {
                expressive = {
                    shape = theme.shape.cornerLarge
                }
            },
            ["trailing-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["leading-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            }
        },
        pressed = {
            container = {
                expressive = {
                    shape = theme.shape.cornerLarge
                }
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["leading-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["trailing-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        focused = {
            container = {
                expressive = {
                    shape = theme.shape.cornerLarge
                }
            }
        },
        hovered = {
            container = {
                expressive = {
                    shape = theme.shape.cornerMedium
                }
            }
        },
        disabled = {
            container = {
                expressive = {
                    shape = theme.shape.cornerExtraSmall
                }
            },
            ["trailing-icon"] = {
                color = theme.color.onSurface
            },
            ["supporting-text"] = {
                color = theme.color.onSurface
            },
            overline = {
                color = theme.color.onSurface
            },
            ["leading-icon"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        ["leading-avatar"] = {
            shape = theme.shape.cornerFull,
            size = 40,
            color = theme.color.primaryContainer
        },
        ["leading-image"] = {
            expressive = {
                shape = theme.shape.cornerSmall
            },
            shape = theme.shape.cornerNone,
            height = 56,
            width = 56
        },
        ["leading-video"] = {
            shape = theme.shape.cornerSmall,
            width = 100
        },
        ["trailing-icon"] = {
            expressive = {
                size = 20
            },
            size = 24,
            color = theme.color.onSurfaceVariant
        },
        ["leading-avatar-label"] = {
            font = theme.typography.title.medium.font,
            size = theme.typography.title.medium.size,
            color = theme.color.onPrimaryContainer
        },
        ["two-line"] = {
            container = {
                height = 72
            }
        },
        ["label-text"] = {
            size = theme.typography.body.large.size,
            font = theme.typography.body.large.font,
            color = theme.color.onSurface
        },
        ["supporting-text"] = {
            font = theme.typography.body.medium.font,
            size = theme.typography.body.medium.size,
            color = theme.color.onSurfaceVariant
        },
        overline = {
            font = theme.typography.label.small.font,
            size = theme.typography.label.small.size,
            color = theme.color.onSurfaceVariant
        },
        ["trailing-supporting-text"] = {
            size = theme.typography.label.small.size,
            font = theme.typography.label.small.font,
            color = theme.color.onSurfaceVariant
        },
        small = {
            ["leading-video"] = {
                height = 56,
                width = 100
            }
        },
        large = {
            ["leading-video"] = {
                width = 114,
                height = 64
            }
        },
        ["leading-icon"] = {
            size = 24,
            expressive = {
                size = 20
            },
            color = theme.color.onSurfaceVariant
        },
        ["three-line"] = {
            container = {
                height = 88
            }
        },
        ["one-line"] = {
            container = {
                height = 56
            }
        },
        container = {
            expressive = {
                shape = theme.shape.cornerExtraSmall
            },
            shape = theme.shape.cornerNone,
            height = 56,
            color = theme.color.surface
        },
        focus = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["trailing-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["leading-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["leading-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["trailing-icon"] = {
                icon = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        segmented = {
            container = {
                color = theme.color.surface
            }
        },
        unselected = {
            ["trailing-icon"] = {
                color = theme.color.onSurface
            }
        }
    },
    reveal = {
        ["list-item"] = {
            ["icon-button"] = {
                action = {
                    container = {
                        shape = theme.shape.cornerLarge
                    }
                },
                container = {
                    shape = theme.shape.cornerFull,
                    color = theme.color.secondaryContainer
                },
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onSecondaryContainer
                    }
                },
                focused = {
                    ["state-layer"] = {
                        color = theme.color.onSecondaryContainer
                    }
                },
                hovered = {
                    ["state-layer"] = {
                        color = theme.color.onSecondaryContainer
                    }
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                }
            },
            segmented = {
                container = {
                    shape = theme.shape.cornerLarge
                }
            },
            container = {
                shape = theme.shape.cornerLarge,
                color = theme.color.surface
            },
            action = {
                ["icon-button"] = {
                    pressed = {
                        ["state-layer"] = {
                            color = theme.color.onPrimary
                        }
                    },
                    focused = {
                        ["state-layer"] = {
                            color = theme.color.onPrimary
                        }
                    },
                    hovered = {
                        ["state-layer"] = {
                            color = theme.color.onPrimary
                        }
                    },
                    icon = {
                        color = theme.color.onPrimary
                    },
                    container = {
                        color = theme.color.primary
                    }
                }
            }
        }
    },
    container = {
        shape = theme.shape.cornerLarge
    },
    sys = {
        measurement = {
            space25 = 2,
            space0 = nil,
            space150 = 12,
            space200 = 16,
            space125 = 10
        },
        state = {
            ["focus-indicator"] = {
                thickness = 3,
                ["inner-offset"] = -3
            }
        }
    },
    divider = {
        color = theme.color.outline,
        height = 1
    },
    md = {
        comp = {
            list = {
                ["list-item"] = {
                    ["two-line"] = {
                        container = {
                            height = 72
                        }
                    },
                    ["three-line"] = {
                        container = {
                            height = 88
                        }
                    },
                    ["one-line"] = {
                        container = {
                            height = 56
                        }
                    }
                }
            }
        }
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        }
    }
}
end

return getTokens
    