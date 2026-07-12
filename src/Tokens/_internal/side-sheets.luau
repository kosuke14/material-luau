
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
    side = {
        docked = {
            focus = {
                indicator = {
                    color = theme.color.secondary
                }
            },
            container = {
                width = 256,
                height = 100,
                ["surface-tint-layer"] = {
                    color = theme.color.surfaceTint
                },
                shape = theme.shape.cornerNone,
                color = theme.color.surface
            },
            standard = {
                container = {
                    color = theme.color.surface
                }
            },
            modal = {
                container = {
                    shape = theme.shape.cornerLargeStart,
                    color = theme.color.surfaceContainerLow
                }
            },
            action = {
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
                }
            },
            divider = {
                color = theme.color.outline
            },
            headline = {
                font = theme.typography.title.large.font,
                size = theme.typography.title.large.size,
                color = theme.color.onSurfaceVariant
            }
        },
        detached = {
            container = {
                shape = theme.shape.cornerLarge
            }
        }
    }
}
end

return getTokens
    