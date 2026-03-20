
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    sys = {
        state = {
            ["focus-indicator"] = {
                thickness = 3
            }
        },
        color = {
            ["surface-tint"] = theme.color.primary
        }
    },
    error = {
        focus = {
            indicator = {
                outline = {
                    color = theme.color.error
                }
            },
            caret = {
                color = theme.color.error
            },
            ["trailing-icon"] = {
                color = theme.color.error
            },
            ["leading-icon"] = {
                color = theme.color.onSurfaceVariant
            },
            ["supporting-text"] = {
                color = theme.color.error
            },
            ["input-text"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.error
            },
            ["active-indicator"] = {
                color = theme.color.error
            },
            outline = {
                color = theme.color.error
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            ["trailing-icon"] = {
                color = theme.color.onErrorContainer
            },
            ["leading-icon"] = {
                color = theme.color.onSurfaceVariant
            },
            ["supporting-text"] = {
                color = theme.color.error
            },
            ["input-text"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onErrorContainer
            },
            ["active-indicator"] = {
                color = theme.color.onErrorContainer
            },
            outline = {
                color = theme.color.onErrorContainer
            }
        },
        ["trailing-icon"] = {
            color = theme.color.error
        },
        ["leading-icon"] = {
            color = theme.color.onSurfaceVariant
        },
        ["supporting-text"] = {
            color = theme.color.error
        },
        ["input-text"] = {
            color = theme.color.onSurface
        },
        ["label-text"] = {
            color = theme.color.error
        },
        ["active-indicator"] = {
            color = theme.color.error
        },
        outline = {
            color = theme.color.error
        }
    },
    focus = {
        indicator = {
            outline = {
                color = theme.color.secondary
            }
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
        ["input-text"] = {
            color = theme.color.onSurface
        },
        ["label-text"] = {
            color = theme.color.primary
        },
        ["active-indicator"] = {
            color = theme.color.primary,
            height = 2
        },
        outline = {
            color = theme.color.primary,
            width = 3
        }
    },
    menu = {
        ["list-item"] = {
            ["label-text"] = {
                font = theme.typography.label.large.font,
                size = theme.typography.label.large.size,
                color = theme.color.onSurface
            },
            selected = {
                container = {
                    color = theme.color.surfaceContainerHighest
                }
            },
            container = {
                height = 48
            },
            ["with-trailing-icon"] = {
                ["trailing-icon"] = {
                    color = theme.color.onSurfaceVariant,
                    size = 24
                }
            },
            ["with-leading-icon"] = {
                ["leading-icon"] = {
                    color = theme.color.onSurfaceVariant,
                    size = 24
                }
            }
        },
        divider = {
            height = 1,
            color = theme.color.surfaceVariant
        },
        container = {
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            shape = theme.shape.cornerExtraSmall,
            ["shadow-color"] = theme.color.shadow,
            color = theme.color.surfaceContainer
        },
        ["cascading-menu-indicator"] = {
            icon = {
                size = 24,
                color = theme.color.onSurfaceVariant
            }
        }
    },
    ["text-field"] = {
        caret = {
            color = theme.color.primary
        },
        error = {
            focus = {
                caret = {
                    color = theme.color.error
                },
                ["trailing-icon"] = {
                    color = theme.color.error
                },
                ["leading-icon"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["supporting-text"] = {
                    color = theme.color.error
                },
                ["input-text"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.error
                },
                outline = {
                    color = theme.color.error
                },
                ["active-indicator"] = {
                    color = theme.color.error
                }
            },
            hover = {
                ["state-layer"] = {
                    color = theme.color.onSurface
                },
                ["trailing-icon"] = {
                    color = theme.color.onErrorContainer
                },
                ["leading-icon"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["supporting-text"] = {
                    color = theme.color.error
                },
                ["input-text"] = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onErrorContainer
                },
                outline = {
                    color = theme.color.onErrorContainer
                },
                ["active-indicator"] = {
                    color = theme.color.onErrorContainer
                }
            },
            ["trailing-icon"] = {
                color = theme.color.error
            },
            ["leading-icon"] = {
                color = theme.color.onSurfaceVariant
            },
            ["supporting-text"] = {
                color = theme.color.error
            },
            ["input-text"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.error
            },
            outline = {
                color = theme.color.error
            },
            ["active-indicator"] = {
                color = theme.color.error
            }
        },
        container = {
            height = 56,
            shape = theme.shape.cornerExtraSmallTop,
            color = theme.color.surfaceContainerHighest
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.onSurface
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
            ["input-text"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            outline = {
                color = theme.color.onSurface,
                width = 1
            },
            ["active-indicator"] = {
                color = theme.color.onSurface,
                height = 1
            }
        },
        focus = {
            ["trailing-icon"] = {
                color = theme.color.primary
            },
            ["leading-icon"] = {
                color = theme.color.onSurfaceVariant
            },
            ["supporting-text"] = {
                color = theme.color.onSurfaceVariant
            },
            ["input-text"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.primary
            },
            outline = {
                color = theme.color.primary,
                width = 2
            },
            ["active-indicator"] = {
                color = theme.color.primary,
                height = 2
            }
        },
        disabled = {
            ["trailing-icon"] = {
                color = theme.color.onSurface
            },
            ["leading-icon"] = {
                color = theme.color.onSurface
            },
            ["supporting-text"] = {
                color = theme.color.onSurface
            },
            ["input-text"] = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            outline = {
                color = theme.color.onSurface,
                width = 1
            },
            ["active-indicator"] = {
                color = theme.color.onSurface,
                height = 1
            },
            container = {
                color = theme.color.onSurface
            }
        },
        ["trailing-icon"] = {
            size = 24,
            color = theme.color.onSurfaceVariant
        },
        ["leading-icon"] = {
            size = 24,
            color = theme.color.onSurfaceVariant
        },
        ["supporting-text"] = {
            font = theme.typography.body.small.font,
            size = theme.typography.body.small.size,
            color = theme.color.onSurfaceVariant
        },
        ["label-text"] = {
            populated = {
                size = theme.typography.body.small.size
            },
            font = theme.typography.body.large.font,
            size = theme.typography.body.large.size,
            color = theme.color.onSurfaceVariant
        },
        ["input-text"] = {
            font = theme.typography.body.large.font,
            size = theme.typography.body.large.size,
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.outline,
            width = 1
        },
        ["active-indicator"] = {
            color = theme.color.onSurfaceVariant,
            height = 1
        }
    },
    ["supporting-text"] = {
        font = theme.typography.body.small.font,
        size = theme.typography.body.small.size,
        color = theme.color.onSurfaceVariant
    },
    container = {
        height = 56,
        shape = theme.shape.cornerExtraSmall,
        color = theme.color.surfaceContainerHighest
    },
    ["input-text"] = {
        placeholder = {
            color = theme.color.onSurfaceVariant
        },
        suffix = {
            color = theme.color.onSurfaceVariant
        },
        prefix = {
            color = theme.color.onSurfaceVariant
        },
        font = theme.typography.body.large.font,
        size = theme.typography.body.large.size,
        color = theme.color.onSurface
    },
    ["label-text"] = {
        font = theme.typography.body.large.font,
        size = theme.typography.body.large.size,
        color = theme.color.onSurfaceVariant,
        populated = {
            size = theme.typography.body.small.size
        }
    },
    hover = {
        ["state-layer"] = {
            color = theme.color.onSurface
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
        ["input-text"] = {
            color = theme.color.onSurface
        },
        ["label-text"] = {
            color = theme.color.onSurface
        },
        ["active-indicator"] = {
            color = theme.color.onSurface,
            height = 1
        },
        outline = {
            color = theme.color.onSurface,
            width = 1
        }
    },
    disabled = {
        ["trailing-icon"] = {
            color = theme.color.onSurface
        },
        ["leading-icon"] = {
            color = theme.color.onSurface
        },
        ["supporting-text"] = {
            color = theme.color.onSurface
        },
        ["input-text"] = {
            color = theme.color.onSurface
        },
        ["label-text"] = {
            color = theme.color.onSurface
        },
        ["active-indicator"] = {
            color = theme.color.onSurface,
            height = 1
        },
        container = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.onSurface,
            width = 1
        }
    },
    caret = {
        color = theme.color.primary
    },
    ["trailing-icon"] = {
        size = 24,
        color = theme.color.onSurfaceVariant
    },
    ["leading-icon"] = {
        size = 24,
        color = theme.color.onSurfaceVariant
    },
    ["active-indicator"] = {
        color = theme.color.onSurfaceVariant,
        height = 1
    },
    outline = {
        color = theme.color.outline,
        width = 1
    }
}
end

return getTokens
    