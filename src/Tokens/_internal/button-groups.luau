
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

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
            }
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
            }
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
            }
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
            }
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
            }
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
        },
        measurement = {
            space25 = 2,
            space150 = 12,
            space100 = 8
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
            }
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
            }
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
            }
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
            }
        }
    }
}
end

return getTokens
    