
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    ["medium-flexible"] = {
        ["with-subtitle"] = {
            container = {
                height = 136
            }
        },
        container = {
            height = 112
        },
        title = {
            font = theme.typography.headline.medium
        },
        subtitle = {
            font = theme.typography.label.large
        }
    },
    ["large-flexible"] = {
        ["with-subtitle"] = {
            container = {
                height = 152
            }
        },
        container = {
            height = 120
        },
        title = {
            font = theme.typography.display.small
        },
        subtitle = {
            font = theme.typography.title.medium
        }
    },
    subtitle = {
        color = theme.color.onSurfaceVariant
    },
    title = {
        color = theme.color.onSurface
    },
    ["leading-icon"] = {
        color = theme.color.onSurface
    },
    ["trailing-icon"] = {
        color = theme.color.onSurfaceVariant
    },
    large = {
        icon = {
            size = 24
        },
        subtitle = {
            font = theme.typography.title.medium
        },
        container = {
            height = 152,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            shape = theme.shape.cornerNone,
            color = theme.color.surface
        },
        title = {
            font = theme.typography.headline.medium
        },
        headline = {
            font = theme.typography.headline.medium.font,
            size = theme.typography.headline.medium.size,
            color = theme.color.onSurface
        },
        ["trailing-icon"] = {
            color = theme.color.onSurfaceVariant,
            size = 24
        },
        ["leading-icon"] = {
            color = theme.color.onSurface,
            size = 24
        }
    },
    medium = {
        icon = {
            size = 24
        },
        subtitle = {
            font = theme.typography.label.large
        },
        container = {
            height = 112,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            shape = theme.shape.cornerNone,
            color = theme.color.surface
        },
        title = {
            font = theme.typography.headline.small
        },
        headline = {
            font = theme.typography.headline.small.font,
            size = theme.typography.headline.small.size,
            color = theme.color.onSurface
        },
        ["trailing-icon"] = {
            color = theme.color.onSurfaceVariant,
            size = 24
        },
        ["leading-icon"] = {
            color = theme.color.onSurface,
            size = 24
        }
    },
    small = {
        icon = {
            size = 24
        },
        container = {
            height = 64,
            shape = theme.shape.cornerNone,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            color = theme.color.surface
        },
        title = {
            font = theme.typography.title.large
        },
        subtitle = {
            font = theme.typography.label.medium
        },
        centered = {
            ["on-scroll"] = {
                container = {
                    color = theme.color.surfaceContainer,
                    ["shadow-color"] = theme.color.shadow
                }
            },
            headline = {
                font = theme.typography.title.large.font,
                size = theme.typography.title.large.size,
                color = theme.color.onSurface
            },
            avatar = {
                shape = theme.shape.cornerFull,
                size = 30
            },
            ["trailing-icon"] = {
                color = theme.color.onSurfaceVariant,
                size = 24
            },
            ["leading-icon"] = {
                color = theme.color.onSurface,
                size = 24
            },
            container = {
                ["surface-tint-layer"] = {
                    color = theme.color.surfaceTint
                },
                height = 64,
                shape = theme.shape.cornerNone,
                color = theme.color.surface
            }
        },
        ["on-scroll"] = {
            container = {
                ["shadow-color"] = theme.color.shadow,
                color = theme.color.surfaceContainer
            }
        },
        headline = {
            font = theme.typography.title.large.font,
            size = theme.typography.title.large.size,
            color = theme.color.onSurface
        },
        ["trailing-icon"] = {
            color = theme.color.onSurfaceVariant,
            size = 24
        },
        ["leading-icon"] = {
            color = theme.color.onSurface,
            size = 24
        }
    },
    container = {
        color = theme.color.surface,
        shape = theme.shape.cornerNone
    },
    ["on-scroll"] = {
        container = {
            color = theme.color.surfaceContainer
        }
    },
    ["leading-space"] = 4,
    ["trailing-space"] = 4,
    ["icon-button-space"] = nil,
    avatar = {
        size = 32
    },
    icon = {
        size = 24
    },
    sys = {
        color = {
            ["surface-tint"] = theme.color.primary
        }
    }
}
end

return getTokens
    