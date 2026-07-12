
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

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
        }
    },
    ["surface-tint-layer"] = {
        color = theme.color.surfaceTint
    },
    ["clock-dial"] = {
        color = theme.color.surfaceContainerHighest,
        shape = theme.shape.cornerFull,
        selector = {
            track = {
                container = {
                    width = 2,
                    color = theme.color.primary
                }
            },
            center = {
                container = {
                    size = 8,
                    shape = theme.shape.cornerFull,
                    color = theme.color.primary
                }
            },
            handle = {
                container = {
                    size = 48,
                    shape = theme.shape.cornerFull,
                    color = theme.color.primary
                }
            }
        },
        container = {
            size = 256
        },
        ["label-text"] = {
            font = theme.typography.body.large.font,
            size = theme.typography.body.large.size
        },
        unselected = {
            ["label-text"] = {
                color = theme.color.onSurface
            }
        },
        selected = {
            ["label-text"] = {
                color = theme.color.onPrimary
            }
        }
    },
    ["period-selector"] = {
        horizontal = {
            container = {
                height = 38,
                width = 216
            }
        },
        vertical = {
            container = {
                height = 80,
                width = 52
            }
        },
        unselected = {
            pressed = {
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focus = {
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            hover = {
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            }
        },
        selected = {
            pressed = {
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            focus = {
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            hover = {
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            container = {
                color = theme.color.tertiaryContainer
            }
        },
        ["label-text"] = {
            font = theme.typography.title.medium.font,
            size = theme.typography.title.medium.size
        },
        outline = {
            width = 1,
            color = theme.color.outline
        },
        container = {
            shape = theme.shape.cornerSmall,
            height = 72,
            width = 52
        }
    },
    ["time-selector"] = {
        container = {
            height = 80,
            width = 96,
            shape = theme.shape.cornerSmall
        },
        ["24h-vertical"] = {
            container = {
                width = 114
            }
        },
        unselected = {
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
            ["label-text"] = {
                color = theme.color.onSurface
            },
            container = {
                color = theme.color.surfaceContainerHighest
            }
        },
        selected = {
            pressed = {
                ["label-text"] = {
                    color = theme.color.onPrimaryContainer
                },
                ["state-layer"] = {
                    color = theme.color.onPrimaryContainer
                }
            },
            focus = {
                ["label-text"] = {
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
                ["state-layer"] = {
                    color = theme.color.onPrimaryContainer
                }
            },
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            container = {
                color = theme.color.primaryContainer
            }
        },
        separator = {
            font = theme.typography.display.large.font,
            size = theme.typography.display.large.size,
            color = theme.color.onSurface
        },
        ["label-text"] = {
            font = theme.typography.display.large.font,
            size = theme.typography.display.large.size
        }
    },
    headline = {
        font = theme.typography.label.medium.font,
        size = theme.typography.label.medium.size,
        color = theme.color.onSurfaceVariant
    },
    container = {
        shape = theme.shape.cornerExtraLarge,
        color = theme.color.surfaceContainerHigh
    },
    ["time-input-field"] = {
        container = {
            height = 72,
            width = 96,
            shape = theme.shape.cornerSmall,
            color = theme.color.surfaceContainerHighest
        },
        focus = {
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            outline = {
                width = 2,
                color = theme.color.primary
            },
            container = {
                color = theme.color.primaryContainer
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
        ["supporting-text"] = {
            font = theme.typography.body.small.font,
            size = theme.typography.body.small.size,
            color = theme.color.onSurfaceVariant
        },
        separator = {
            font = theme.typography.display.large.font,
            size = theme.typography.display.large.size,
            color = theme.color.onSurface
        },
        ["label-text"] = {
            font = theme.typography.display.medium.font,
            size = theme.typography.display.medium.size,
            color = theme.color.onSurface
        }
    }
}
end

return getTokens
    