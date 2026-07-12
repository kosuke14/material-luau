
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    sys = {
        measurement = {
            space300 = 24,
            space50 = 4,
            space100 = 8
        }
    },
    ["menu-item"] = {
        container = {
            shape = theme.shape.cornerFull,
            height = 56
        },
        icon = {
            size = 24
        },
        ["label-text"] = theme.typography.title.medium
    },
    tertiary = {
        ["close-button"] = {
            icon = {
                color = theme.color.onTertiary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onTertiary
                },
                icon = {
                    color = theme.color.onTertiary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onTertiary
                },
                icon = {
                    color = theme.color.onTertiary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onTertiary
                },
                icon = {
                    color = theme.color.onTertiary
                }
            },
            container = {
                color = theme.color.tertiary,
                ["shadow-color"] = theme.color.shadow
            }
        }
    },
    ["close-button"] = {
        container = {
            height = 56,
            width = 56,
            shape = theme.shape.cornerFull
        },
        icon = {
            size = 20
        }
    },
    ["primary-container"] = {
        ["list-item"] = {
            container = {
                color = theme.color.primaryContainer,
                ["shadow-color"] = theme.color.shadow
            },
            icon = {
                color = theme.color.onPrimaryContainer
            },
            ["label-text"] = {
                color = theme.color.onPrimaryContainer
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onPrimaryContainer
                },
                icon = {
                    color = theme.color.onPrimaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onPrimaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onPrimaryContainer
                },
                icon = {
                    color = theme.color.onPrimaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onPrimaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onPrimaryContainer
                },
                icon = {
                    color = theme.color.onPrimaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onPrimaryContainer
                }
            }
        }
    },
    ["secondary-container"] = {
        ["list-item"] = {
            container = {
                color = theme.color.secondaryContainer,
                ["shadow-color"] = theme.color.shadow
            },
            icon = {
                color = theme.color.onSecondaryContainer
            },
            ["label-text"] = {
                color = theme.color.onSecondaryContainer
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondaryContainer
                },
                icon = {
                    color = theme.color.onSecondaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onSecondaryContainer
                }
            }
        }
    },
    ["tertiary-container"] = {
        ["list-item"] = {
            focused = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                },
                icon = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                },
                icon = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                }
            },
            container = {
                color = theme.color.tertiaryContainer,
                ["shadow-color"] = theme.color.shadow
            },
            icon = {
                color = theme.color.onTertiaryContainer
            },
            ["label-text"] = {
                color = theme.color.onTertiaryContainer
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onTertiaryContainer
                },
                icon = {
                    color = theme.color.onTertiaryContainer
                },
                ["label-text"] = {
                    color = theme.color.onTertiaryContainer
                }
            }
        }
    },
    primary = {
        ["close-button"] = {
            container = {
                color = theme.color.primary,
                ["shadow-color"] = theme.color.shadow
            },
            icon = {
                color = theme.color.onPrimary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onPrimary
                },
                icon = {
                    color = theme.color.onPrimary
                }
            }
        }
    },
    secondary = {
        ["close-button"] = {
            container = {
                color = theme.color.secondary,
                ["shadow-color"] = theme.color.shadow
            },
            icon = {
                color = theme.color.onSecondary
            },
            hovered = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            },
            focused = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            },
            pressed = {
                ["state-layer"] = {
                    color = theme.color.onSecondary
                },
                icon = {
                    color = theme.color.onSecondary
                }
            }
        }
    }
}
end

return getTokens
    