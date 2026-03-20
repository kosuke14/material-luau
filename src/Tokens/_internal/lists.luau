
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    ["list-item"] = {
        disabled = {
            overline = {
                color = theme.color.onSurface
            },
            ["supporting-text"] = {
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
            ["label-text"] = {
                color = theme.color.onSurface
            }
        },
        selected = {
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            overline = {
                color = theme.color.onSurface
            },
            ["leading-icon"] = {
                color = theme.color.onSurface
            },
            ["trailing-icon"] = {
                color = theme.color.primary
            },
            ["trailing-supporting-text"] = {
                color = theme.color.onSurface
            },
            ["supporting-text"] = {
                color = theme.color.onSurface
            },
            container = {
                color = theme.color.secondaryContainer
            },
            dragged = {
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
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            focus = {
                ["trailing-icon"] = {
                    color = theme.color.onSurface
                },
                ["leading-icon"] = {
                    color = theme.color.onSurface
                },
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            hover = {
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
            }
        },
        overline = {
            font = theme.typography.label.small.font,
            size = theme.typography.label.small.size,
            color = theme.color.onSurfaceVariant
        },
        small = {
            ["leading-video"] = {
                height = 56
            }
        },
        ["leading-icon"] = {
            size = 24,
            color = theme.color.onSurfaceVariant
        },
        large = {
            ["leading-video"] = {
                height = 69
            }
        },
        ["leading-video"] = {
            shape = theme.shape.cornerNone,
            width = 100
        },
        ["trailing-icon"] = {
            size = 24,
            color = theme.color.onSurfaceVariant
        },
        unselected = {
            ["trailing-icon"] = {
                color = theme.color.onSurface
            }
        },
        ["trailing-supporting-text"] = {
            size = theme.typography.label.small.size,
            font = theme.typography.label.small.font,
            color = theme.color.onSurfaceVariant
        },
        ["supporting-text"] = {
            size = theme.typography.body.medium.size,
            font = theme.typography.body.medium.font,
            color = theme.color.onSurfaceVariant
        },
        ["label-text"] = {
            size = theme.typography.body.large.size,
            font = theme.typography.body.large.font,
            color = theme.color.onSurface
        },
        ["two-line"] = {
            container = {
                height = 72
            }
        },
        container = {
            height = 56,
            shape = theme.shape.cornerNone,
            color = theme.color.surface
        },
        ["trailing-space"] = 16,
        ["three-line"] = {
            container = {
                height = 88
            }
        },
        ["leading-space"] = 16,
        ["one-line"] = {
            container = {
                height = 56
            }
        },
        dragged = {
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
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        pressed = {
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
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        focus = {
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
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
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
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        ["leading-image"] = {
            shape = theme.shape.cornerNone,
            height = 56,
            width = 56
        },
        ["leading-avatar-label"] = {
            font = theme.typography.title.medium.font,
            size = theme.typography.title.medium.size,
            color = theme.color.onPrimaryContainer
        },
        ["leading-avatar"] = {
            size = 40,
            shape = theme.shape.cornerFull,
            color = theme.color.primaryContainer
        }
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
        }
    },
    divider = {
        ["leading-space"] = 16,
        ["trailing-space"] = 16,
        height = 1,
        color = theme.color.outline
    }
}
end

return getTokens
    