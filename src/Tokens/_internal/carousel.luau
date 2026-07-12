
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
    focus = {
        indicator = {
            color = theme.color.secondary
        },
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    container = {
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        shape = theme.shape.cornerExtraLarge,
        ["shadow-color"] = theme.color.shadow,
        color = theme.color.surface
    },
    ["with-outline"] = {
        disabled = {
            outline = {
                color = theme.color.outline
            }
        },
        pressed = {
            outline = {
                color = theme.color.outline
            }
        },
        focus = {
            outline = {
                color = theme.color.onSurface
            }
        },
        outline = {
            color = theme.color.outline
        },
        hover = {
            outline = {
                color = theme.color.outline
            }
        }
    },
    hover = {
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    pressed = {
        ["state-layer"] = {
            color = theme.color.onSurface
        }
    },
    disabled = {
        container = {
            color = theme.color.surface
        }
    }
}
end

return getTokens
    