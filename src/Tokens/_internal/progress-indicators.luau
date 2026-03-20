
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    ["active-indicator"] = {
        color = theme.color.primary,
        shape = theme.shape.cornerNone,
        thickness = 4,
        height = 4,
        width = 4
    },
    track = {
        color = theme.color.surfaceContainerHighest,
        shape = theme.shape.cornerNone,
        thickness = 4,
        height = 4
    },
    ["stop-indicator"] = {
        color = theme.color.primary,
        shape = theme.shape.cornerFull,
        size = 4
    },
    ["active-indicator-track-space"] = 4,
    linear = {
        height = 4,
        ["with-wave"] = {
            height = 10
        },
        ["active-indicator"] = {
            thickness = 4,
            wave = {
                amplitude = 3,
                wavelength = 40
            }
        },
        track = {
            thickness = 4
        },
        ["stop-indicator"] = {
            size = 4,
            ["trailing-space"] = nil
        },
        ["track-active-indicator-space"] = 4,
        thick = {
            height = 8,
            ["with-wave"] = {
                height = 14
            },
            ["active-indicator"] = {
                thickness = 8
            },
            track = {
                thickness = 8
            },
            ["stop-indicator"] = {
                size = 4,
                ["trailing-space"] = 2
            },
            ["track-active-indicator-space"] = 4
        },
        indeterminate = {
            ["active-indicator"] = {
                wave = {
                    wavelength = 20
                }
            }
        }
    },
    circular = {
        size = 40,
        ["active-indicator"] = {
            thickness = 4,
            wave = {
                amplitude = 1.6,
                wavelength = 15
            }
        },
        ["track-active-indicator-space"] = 4,
        track = {
            thickness = 4
        },
        ["with-wave"] = {
            size = 48
        },
        thick = {
            size = 52,
            ["active-indicator"] = {
                thickness = 8
            },
            track = {
                thickness = 8
            },
            ["track-active-indicator-space"] = 4
        }
    },
    ["four-color"] = {
        ["active-indicator"] = {
            four = {
                color = theme.color.tertiaryContainer
            },
            three = {
                color = theme.color.tertiary
            },
            two = {
                color = theme.color.primaryContainer
            },
            one = {
                color = theme.color.primary
            }
        }
    },
    size = 48
}
end

return getTokens
    