
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    header = {
        ["on-scroll"] = {
            container = {
                color = theme.color.surfaceContainer
            }
        },
        container = {
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            color = theme.color.surface,
            height = 56
        },
        headline = {
            font = theme.typography.title.large.font,
            size = theme.typography.title.large.size,
            color = theme.color.onSurface
        },
        action = {
            focus = {
                ["label-text"] = {
                    color = theme.color.primary
                },
                ["state-layer"] = {
                    color = theme.color.primary
                }
            },
            hover = {
                ["label-text"] = {
                    color = theme.color.primary
                },
                ["state-layer"] = {
                    color = theme.color.primary
                }
            },
            ["label-text"] = {
                color = theme.color.primary,
                font = theme.typography.label.large.font,
                size = theme.typography.label.large.size
            },
            pressed = {
                ["label-text"] = {
                    color = theme.color.primary
                },
                ["state-layer"] = {
                    color = theme.color.primary
                }
            }
        },
        icon = {
            size = 24,
            color = theme.color.onSurface
        }
    },
    sys = {
        color = {
            ["surface-tint"] = theme.color.primary
        }
    },
    container = {
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        shape = theme.shape.cornerNone,
        color = theme.color.surface
    },
    ["with-divider"] = {
        divider = {
            color = theme.color.surfaceVariant,
            height = 1
        }
    },
    subhead = {
        color = theme.color.onSurface,
        font = theme.typography.headline.small.font,
        size = theme.typography.headline.small.size
    },
    headline = {
        color = theme.color.onSurface,
        font = theme.typography.headline.small.font,
        size = theme.typography.headline.small.size
    },
    ["action-bar"] = {
        pressed = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        focus = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        ["label-text"] = {
            color = theme.color.primary,
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size
        },
        container = {
            color = theme.color.surface,
            height = 56
        }
    },
    action = {
        ["label-text"] = {
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size,
            color = theme.color.primary
        },
        focus = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        pressed = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    },
    ["supporting-text"] = {
        font = theme.typography.body.medium.font,
        size = theme.typography.body.medium.size,
        color = theme.color.onSurfaceVariant
    },
    ["with-icon"] = {
        icon = {
            color = theme.color.secondary,
            size = 24
        }
    }
}
end

return getTokens
    