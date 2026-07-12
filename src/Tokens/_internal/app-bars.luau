
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    large = {
        headline = {
            color = theme.color.onSurface,
            font = theme.typography.headline.medium.font,
            size = theme.typography.headline.medium.size
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
            height = 152,
            shape = theme.shape.cornerNone,
            color = theme.color.surface,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            }
        },
        icon = {
            size = 24
        },
        subtitle = {
            font = theme.typography.title.medium
        },
        title = {
            font = theme.typography.headline.medium
        }
    },
    medium = {
        headline = {
            color = theme.color.onSurface,
            font = theme.typography.headline.small.font,
            size = theme.typography.headline.small.size
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
            height = 112,
            shape = theme.shape.cornerNone,
            color = theme.color.surface,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            }
        },
        icon = {
            size = 24
        },
        subtitle = {
            font = theme.typography.label.large
        },
        title = {
            font = theme.typography.headline.small
        }
    },
    small = {
        headline = {
            color = theme.color.onSurface,
            font = theme.typography.title.large.font,
            size = theme.typography.title.large.size
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
            height = 64,
            shape = theme.shape.cornerNone,
            color = theme.color.surface,
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            }
        },
        ["on-scroll"] = {
            container = {
                color = theme.color.surfaceContainer,
                ["shadow-color"] = theme.color.shadow
            }
        },
        centered = {
            headline = {
                color = theme.color.onSurface,
                font = theme.typography.title.large.font,
                size = theme.typography.title.large.size
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
            },
            ["on-scroll"] = {
                container = {
                    color = theme.color.surfaceContainer,
                    ["shadow-color"] = theme.color.shadow
                }
            },
            avatar = {
                shape = theme.shape.cornerFull,
                size = 30
            }
        },
        search = {
            ["label-text"] = {
                font = theme.typography.body.large
            },
            container = {
                shape = theme.shape.cornerFull,
                height = 56
            }
        },
        icon = {
            size = 24
        },
        title = {
            font = theme.typography.title.large
        },
        subtitle = {
            font = theme.typography.label.medium
        }
    },
    sys = {
        color = {
            ["surface-tint"] = theme.color.primary
        },
        measurement = {
            space100 = 8,
            space50 = 4,
            space0 = nil
        }
    },
    search = {
        ["on-scroll"] = {
            container = {
                color = theme.color.surfaceContainerHighest
            }
        },
        label = {
            color = theme.color.onSurfaceVariant
        },
        container = {
            color = theme.color.surfaceContainer
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
    ["on-scroll"] = {
        container = {
            color = theme.color.surfaceContainer
        }
    },
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
    container = {
        color = theme.color.surface,
        shape = theme.shape.cornerNone
    },
    avatar = {
        size = 32
    },
    icon = {
        size = 24
    }
}
end

return getTokens
    