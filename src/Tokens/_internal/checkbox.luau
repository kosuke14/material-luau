
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
    container = {
        width = 18,
        height = 18,
        size = 18
    },
    unselected = {
        error = {
            outline = {
                color = theme.color.error
            },
            pressed = {
                outline = {
                    width = 2,
                    color = theme.color.error
                }
            },
            focus = {
                outline = {
                    width = 2,
                    color = theme.color.error
                }
            },
            hover = {
                outline = {
                    width = 2,
                    color = theme.color.error
                }
            }
        },
        outline = {
            width = 2,
            color = theme.color.onSurfaceVariant
        },
        pressed = {
            icon = {
                color = theme.color.onSurface
            },
            outline = {
                width = 2,
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        focus = {
            icon = {
                color = theme.color.onSurface
            },
            outline = {
                width = 2,
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
            outline = {
                width = 2,
                color = theme.color.onSurface
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            }
        },
        icon = {
            color = theme.color.onSurface
        },
        disabled = {
            outline = {
                width = 2,
                color = theme.color.onSurface
            }
        }
    },
    selected = {
        error = {
            container = {
                color = theme.color.error
            },
            pressed = {
                outline = {
                    width = nil
                },
                icon = {
                    color = theme.color.onError
                },
                container = {
                    color = theme.color.error
                }
            },
            focus = {
                outline = {
                    width = nil
                },
                icon = {
                    color = theme.color.onError
                },
                container = {
                    color = theme.color.error
                }
            },
            hover = {
                outline = {
                    width = nil
                },
                icon = {
                    color = theme.color.onError
                },
                container = {
                    color = theme.color.error
                }
            },
            icon = {
                color = theme.color.onError
            }
        },
        outline = {
            width = nil
        },
        container = {
            color = theme.color.primary
        },
        pressed = {
            outline = {
                width = nil
            },
            container = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.onSurface
            },
            icon = {
                color = theme.color.onPrimary
            }
        },
        focus = {
            outline = {
                width = nil
            },
            container = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.onPrimary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        hover = {
            outline = {
                width = nil
            },
            container = {
                color = theme.color.primary
            },
            icon = {
                color = theme.color.onPrimary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        disabled = {
            icon = {
                color = theme.color.surface
            },
            container = {
                outline = {
                    width = nil
                },
                color = theme.color.onSurface
            }
        },
        icon = {
            color = theme.color.onPrimary
        }
    },
    disabled = {
        unselected = {
            icon = {
                color = theme.color.primary
            }
        },
        selected = {
            icon = {
                color = theme.color.primary
            }
        }
    },
    error = {
        pressed = {
            ["state-layer"] = {
                color = theme.color.error
            }
        },
        focus = {
            ["state-layer"] = {
                color = theme.color.error
            }
        },
        hover = {
            ["state-layer"] = {
                color = theme.color.error
            }
        }
    },
    ["state-layer"] = {
        shape = theme.shape.cornerFull,
        size = 40
    },
    icon = {
        size = 18
    }
}
end

return getTokens
    