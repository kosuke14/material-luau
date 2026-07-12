
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    ["supporting-text"] = {
        font = theme.typography.body.medium.font,
        size = theme.typography.body.medium.size,
        color = theme.color.inverseOnSurface
    },
    action = {
        ["label-text"] = {
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size,
            color = theme.color.inversePrimary
        },
        pressed = {
            ["label-text"] = {
                color = theme.color.inversePrimary
            },
            ["state-layer"] = {
                color = theme.color.inversePrimary
            }
        },
        focus = {
            ["label-text"] = {
                color = theme.color.inversePrimary
            },
            ["state-layer"] = {
                color = theme.color.inversePrimary
            }
        },
        hover = {
            ["label-text"] = {
                color = theme.color.inversePrimary
            },
            ["state-layer"] = {
                color = theme.color.inversePrimary
            }
        }
    },
    icon = {
        pressed = {
            icon = {
                color = theme.color.inverseOnSurface
            },
            ["state-layer"] = {
                color = theme.color.inverseOnSurface
            }
        },
        focus = {
            icon = {
                color = theme.color.inverseOnSurface
            },
            ["state-layer"] = {
                color = theme.color.inverseOnSurface
            }
        },
        hover = {
            icon = {
                color = theme.color.inverseOnSurface
            },
            ["state-layer"] = {
                color = theme.color.inverseOnSurface
            }
        },
        size = 24,
        color = theme.color.inverseOnSurface
    },
    ["with-two-lines"] = {
        container = {
            height = 68
        }
    },
    ["with-single-line"] = {
        container = {
            height = 48
        }
    },
    container = {
        shape = theme.shape.cornerExtraSmall,
        ["shadow-color"] = theme.color.shadow,
        color = theme.color.inverseSurface
    }
}
end

return getTokens
    