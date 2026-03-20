
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    connected = {
        xlarge = {
            selected = {
                ["inner-corner"] = {
                    ["corner-size"] = 50
                }
            },
            pressed = {
                ["inner-corner"] = {
                    ["corner-size"] = theme.shape.cornerValueLarge
                }
            },
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerValueLargeIncreased
            },
            container = {
                height = 136,
                shape = theme.shape.cornerFull
            },
            ["between-space"] = 2
        },
        large = {
            pressed = {
                ["inner-corner"] = {
                    ["corner-size"] = theme.shape.cornerValueMedium
                }
            },
            selected = {
                ["inner-corner"] = {
                    ["corner-size"] = 50
                }
            },
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerValueLarge
            },
            container = {
                height = 96,
                shape = theme.shape.cornerFull
            },
            ["between-space"] = 2
        },
        medium = {
            selected = {
                ["inner-corner"] = {
                    ["corner-size"] = 50
                }
            },
            pressed = {
                ["inner-corner"] = {
                    ["corner-size"] = theme.shape.cornerValueExtraSmall
                }
            },
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerValueSmall
            },
            container = {
                height = 56,
                shape = theme.shape.cornerFull
            },
            ["between-space"] = 2
        },
        small = {
            selected = {
                ["inner-corner"] = {
                    ["corner-size"] = 50
                }
            },
            pressed = {
                ["inner-corner"] = {
                    ["corner-size"] = theme.shape.cornerValueExtraSmall
                }
            },
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerValueSmall
            },
            container = {
                height = 40,
                shape = theme.shape.cornerFull
            },
            ["between-space"] = 2
        },
        xsmall = {
            selected = {
                ["inner-corner"] = {
                    ["corner-size"] = 50
                }
            },
            pressed = {
                ["inner-corner"] = {
                    ["corner-size"] = theme.shape.cornerValueExtraSmall
                }
            },
            ["inner-corner"] = {
                ["corner-size"] = theme.shape.cornerValueSmall
            },
            container = {
                height = 32,
                shape = theme.shape.cornerFull
            },
            ["between-space"] = 2
        }
    },
    sys = {
        shape = {
            ["corner-value"] = {
                large = 16,
                ["large-increased"] = 20,
                medium = 12,
                ["extra-small"] = 4,
                small = 8
            }
        }
    },
    standard = {
        xsmall = {
            pressed = {
                item = {
                    width = {
                        multiplier = 15
                    }
                }
            },
            container = {
                height = 32
            },
            ["between-space"] = 18
        },
        small = {
            pressed = {
                item = {
                    width = {
                        multiplier = 15
                    }
                }
            },
            container = {
                height = 40
            },
            ["between-space"] = 12
        },
        medium = {
            pressed = {
                item = {
                    width = {
                        multiplier = 15
                    }
                }
            },
            container = {
                height = 56
            },
            ["between-space"] = 8
        },
        large = {
            pressed = {
                item = {
                    width = {
                        multiplier = 15
                    }
                }
            },
            container = {
                height = 96
            },
            ["between-space"] = 8
        },
        xlarge = {
            pressed = {
                item = {
                    width = {
                        multiplier = 15
                    }
                }
            },
            container = {
                height = 136
            },
            ["between-space"] = 8
        }
    }
}
end

return getTokens
    