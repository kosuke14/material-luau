
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    unselected = {
        focus = {
            icon = {
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
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        icon = {
            color = theme.color.onSurfaceVariant
        },
        pressed = {
            icon = {
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    },
    selected = {
        focus = {
            icon = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        hover = {
            icon = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        icon = {
            color = theme.color.primary
        },
        pressed = {
            icon = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        }
    },
    ["state-layer"] = {
        size = 40
    },
    icon = {
        size = 20
    },
    disabled = {
        unselected = {
            icon = {
                color = theme.color.onSurface
            }
        },
        selected = {
            icon = {
                color = theme.color.onSurface
            }
        }
    }
}
end

return getTokens
    