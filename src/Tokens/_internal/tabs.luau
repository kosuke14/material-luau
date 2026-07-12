
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    sys = {
        state = {
            ["focus-indicator"] = {
                ["inner-offset"] = -3,
                thickness = 3
            }
        }
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        },
        ["label-text"] = {
            color = theme.color.onSurface
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    divider = {
        height = 1,
        color = theme.color.surfaceVariant
    },
    ["active-indicator"] = {
        height = 3,
        color = theme.color.primary
    },
    ["with-icon"] = {
        pressed = {
            icon = {
                color = theme.color.onSurface
            }
        },
        focus = {
            icon = {
                color = theme.color.onSurface
            }
        },
        hover = {
            icon = {
                color = theme.color.onSurface
            }
        },
        inactive = {
            icon = {
                color = theme.color.onSurfaceVariant
            },
            focus = {
                icon = {
                    color = theme.color.onSurface
                }
            },
            hover = {
                icon = {
                    color = theme.color.onSurface
                }
            },
            pressed = {
                icon = {
                    color = theme.color.onSurface
                }
            }
        },
        active = {
            icon = {
                color = theme.color.primary
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
            pressed = {
                icon = {
                    color = theme.color.primary
                }
            }
        },
        icon = {
            size = 24
        }
    },
    ["with-label-text"] = {
        inactive = {
            ["label-text"] = {
                color = theme.color.onSurfaceVariant
            },
            focus = {
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            },
            hover = {
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            },
            pressed = {
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            }
        },
        active = {
            ["label-text"] = {
                color = theme.color.primary
            },
            focus = {
                ["label-text"] = {
                    color = theme.color.primary
                }
            },
            hover = {
                ["label-text"] = {
                    color = theme.color.primary
                }
            },
            pressed = {
                ["label-text"] = {
                    color = theme.color.primary
                }
            }
        },
        ["label-text"] = {
            font = theme.typography.title.small.font,
            size = theme.typography.title.small.size
        }
    },
    inactive = {
        ["label-text"] = {
            color = theme.color.onSurfaceVariant
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    },
    active = {
        ["label-text"] = {
            color = theme.color.onSurface
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        pressed = {
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    },
    ["label-text"] = {
        font = theme.typography.title.small.font,
        size = theme.typography.title.small.size
    },
    hover = {
        ["label-text"] = {
            color = theme.color.onSurface
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    container = {
        ["shadow-color"] = theme.color.shadow,
        height = 48,
        shape = theme.shape.cornerNone,
        color = theme.color.surface
    },
    ["with-icon-and-label-text"] = {
        container = {
            height = 64
        }
    },
    pressed = {
        ["label-text"] = {
            color = theme.color.onSurface
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    }
}
end

return getTokens
    