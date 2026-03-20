
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    sys = {
        state = {
            ["focus-indicator"] = {
                ["outer-offset"] = 2,
                thickness = 3
            }
        }
    },
    focus = {
        indicator = {
            color = theme.color.secondary
        }
    },
    shape = theme.shape.cornerFull,
    selected = {
        container = {
            color = theme.color.secondaryContainer
        },
        pressed = {
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        focus = {
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        hover = {
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            ["state-layer"] = {
                color = theme.color.onSecondaryContainer
            }
        },
        ["with-icon"] = {
            icon = {
                color = theme.color.onSecondaryContainer
            }
        },
        ["label-text"] = {
            color = theme.color.onSecondaryContainer
        }
    },
    container = {
        height = 40
    },
    outline = {
        width = 1,
        color = theme.color.outline
    },
    unselected = {
        pressed = {
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        focus = {
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        hover = {
            icon = {
                color = theme.color.onSurface
            },
            ["label-text"] = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        ["with-icon"] = {
            icon = {
                color = theme.color.onSurface
            }
        },
        ["label-text"] = {
            color = theme.color.onSurface
        }
    },
    disabled = {
        icon = {
            color = theme.color.onSurface
        },
        ["label-text"] = {
            color = theme.color.onSurface
        },
        outline = {
            color = theme.color.onSurface
        }
    },
    ["with-icon"] = {
        icon = {
            size = 18
        }
    },
    ["label-text"] = {
        font = theme.typography.label.large.font,
        size = theme.typography.label.large.size
    }
}
end

return getTokens
    