
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: 7989

local function getTokens(theme)
    return {
    docked = {
        menu = {
            ["list-item"] = {
                ["label-text"] = {
                    font = theme.typography.body.large.font,
                    size = theme.typography.body.large.size,
                    color = theme.color.onSurface
                },
                container = {
                    height = 48
                },
                selected = {
                    ["leading-icon"] = {
                        size = 24,
                        color = theme.color.onSurface
                    },
                    pressed = {
                        ["leading-icon"] = {
                            color = theme.color.onSurfaceVariant
                        }
                    },
                    focus = {
                        ["leading-icon"] = {
                            color = theme.color.onSurfaceVariant
                        }
                    },
                    hover = {
                        ["leading-icon"] = {
                            color = theme.color.onSurfaceVariant
                        }
                    },
                    container = {
                        color = theme.color.surfaceVariant
                    }
                },
                pressed = {
                    ["label-text"] = {
                        color = theme.color.onSurface
                    },
                    ["state-layer"] = {
                        color = theme.color.onSurface
                    }
                },
                focus = {
                    ["label-text"] = {
                        color = theme.color.onSurface
                    },
                    ["state-layer"] = {
                        color = theme.color.onSurface
                    }
                },
                hover = {
                    ["label-text"] = {
                        color = theme.color.onSurface
                    },
                    ["state-layer"] = {
                        color = theme.color.onSurface
                    }
                }
            }
        },
        ["menu-button"] = {
            ["label-text"] = {
                color = theme.color.onSurfaceVariant,
                font = theme.typography.label.large.font,
                size = theme.typography.label.large.size
            },
            container = {
                height = 40,
                shape = theme.shape.cornerFull
            },
            pressed = {
                icon = {
                    color = theme.color.onSurfaceVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            focus = {
                icon = {
                    color = theme.color.onSurfaceVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            hover = {
                icon = {
                    color = theme.color.onSurfaceVariant
                },
                ["label-text"] = {
                    color = theme.color.onSurfaceVariant
                },
                ["state-layer"] = {
                    color = theme.color.onSurfaceVariant
                }
            },
            disabled = {
                icon = {
                    color = theme.color.onSurface
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            },
            icon = {
                size = 18,
                color = theme.color.onSurfaceVariant
            }
        },
        date = {
            today = {
                ["label-text"] = {
                    color = theme.color.primary
                },
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.primary
                    }
                },
                focus = {
                    ["state-layer"] = {
                        color = theme.color.primary
                    }
                },
                hover = {
                    ["state-layer"] = {
                        color = theme.color.primary
                    }
                },
                container = {
                    outline = {
                        width = 1,
                        color = theme.color.primary
                    }
                }
            },
            selected = {
                ["label-text"] = {
                    color = theme.color.onPrimary
                },
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onPrimary
                    }
                },
                focus = {
                    ["state-layer"] = {
                        color = theme.color.onPrimary
                    }
                },
                hover = {
                    ["state-layer"] = {
                        color = theme.color.onPrimary
                    }
                },
                container = {
                    color = theme.color.primary
                }
            },
            unselected = {
                ["label-text"] = {
                    color = theme.color.onSurface
                },
                ["outside-month"] = {
                    ["label-text"] = {
                        color = theme.color.onSurface
                    }
                },
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onSurfaceVariant
                    }
                },
                focus = {
                    ["state-layer"] = {
                        color = theme.color.onSurfaceVariant
                    }
                },
                hover = {
                    ["state-layer"] = {
                        color = theme.color.onSurfaceVariant
                    }
                }
            },
            ["label-text"] = {
                size = theme.typography.body.large.size,
                font = theme.typography.body.large.font
            },
            container = {
                height = 48,
                width = 48,
                shape = theme.shape.cornerFull
            },
            ["state-layer"] = {
                height = 40,
                width = 40,
                shape = theme.shape.cornerFull
            }
        },
        container = {
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            height = 456,
            width = 360,
            shape = theme.shape.cornerLarge,
            color = theme.color.surfaceContainerHigh
        },
        header = {
            height = 64
        },
        weekdays = {
            ["label-text"] = {
                font = theme.typography.body.large.font,
                size = theme.typography.body.large.size,
                color = theme.color.onSurface
            }
        }
    },
    modal = {
        container = {
            ["surface-tint-layer"] = {
                color = theme.color.surfaceTint
            },
            height = 524,
            width = 360,
            shape = theme.shape.cornerExtraLarge,
            color = theme.color.surfaceContainerHigh
        },
        header = {
            container = {
                height = 120,
                width = 360
            },
            headline = {
                font = theme.typography.headline.large.font,
                size = theme.typography.headline.large.size,
                color = theme.color.onSurfaceVariant
            },
            ["supporting-text"] = {
                font = theme.typography.label.large.font,
                size = theme.typography.label.large.size,
                color = theme.color.onSurfaceVariant
            }
        },
        ["range-selection"] = {
            ["active-indicator"] = {
                container = {
                    height = 40,
                    shape = theme.shape.cornerFull,
                    color = theme.color.secondaryContainer
                }
            },
            header = {
                container = {
                    height = 128
                },
                headline = {
                    font = theme.typography.title.large.font,
                    size = theme.typography.title.large.size
                }
            },
            date = {
                ["in-range"] = {
                    pressed = {
                        ["state-layer"] = {
                            color = theme.color.onPrimaryContainer
                        }
                    },
                    focus = {
                        ["state-layer"] = {
                            color = theme.color.onPrimaryContainer
                        }
                    },
                    hover = {
                        ["state-layer"] = {
                            color = theme.color.onPrimaryContainer
                        }
                    },
                    ["label-text"] = {
                        color = theme.color.onSecondaryContainer
                    }
                }
            },
            month = {
                subhead = {
                    font = theme.typography.title.small.font,
                    size = theme.typography.title.small.size,
                    color = theme.color.onSurfaceVariant
                }
            },
            container = {
                shape = theme.shape.cornerNone
            }
        },
        ["year-selection"] = {
            year = {
                ["state-layer"] = {
                    height = 36,
                    width = 72,
                    shape = theme.shape.cornerFull
                },
                container = {
                    height = 36,
                    width = 72
                },
                selected = {
                    pressed = {
                        ["state-layer"] = {
                            color = theme.color.onPrimary
                        }
                    },
                    focus = {
                        ["state-layer"] = {
                            color = theme.color.onPrimary
                        }
                    },
                    hover = {
                        ["state-layer"] = {
                            color = theme.color.onPrimary
                        }
                    },
                    ["label-text"] = {
                        color = theme.color.onPrimary
                    },
                    container = {
                        color = theme.color.primary
                    }
                },
                unselected = {
                    pressed = {
                        ["state-layer"] = {
                            color = theme.color.onSurfaceVariant
                        }
                    },
                    focus = {
                        ["state-layer"] = {
                            color = theme.color.onSurfaceVariant
                        }
                    },
                    hover = {
                        ["state-layer"] = {
                            color = theme.color.onSurfaceVariant
                        }
                    },
                    ["label-text"] = {
                        color = theme.color.onSurfaceVariant
                    }
                },
                ["label-text"] = {
                    font = theme.typography.body.large.font,
                    size = theme.typography.body.large.size
                }
            }
        },
        date = {
            ["state-layer"] = {
                height = 40,
                width = 40,
                shape = theme.shape.cornerFull
            },
            container = {
                height = 40,
                width = 40,
                shape = theme.shape.cornerFull
            },
            today = {
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.primary
                    }
                },
                focus = {
                    ["state-layer"] = {
                        color = theme.color.primary
                    }
                },
                hover = {
                    ["state-layer"] = {
                        color = theme.color.primary
                    }
                },
                container = {
                    outline = {
                        width = 1,
                        color = theme.color.primary
                    }
                },
                ["label-text"] = {
                    color = theme.color.primary
                }
            },
            selected = {
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onPrimary
                    }
                },
                focus = {
                    ["state-layer"] = {
                        color = theme.color.onPrimary
                    }
                },
                hover = {
                    ["state-layer"] = {
                        color = theme.color.onPrimary
                    }
                },
                container = {
                    color = theme.color.primary
                },
                ["label-text"] = {
                    color = theme.color.onPrimary
                }
            },
            unselected = {
                pressed = {
                    ["state-layer"] = {
                        color = theme.color.onSurfaceVariant
                    }
                },
                focus = {
                    ["state-layer"] = {
                        color = theme.color.onSurfaceVariant
                    }
                },
                hover = {
                    ["state-layer"] = {
                        color = theme.color.onSurfaceVariant
                    }
                },
                ["label-text"] = {
                    color = theme.color.onSurface
                }
            },
            ["label-text"] = {
                font = theme.typography.body.large.font,
                size = theme.typography.body.large.size
            }
        },
        weekdays = {
            ["label-text"] = {
                font = theme.typography.body.large.font,
                size = theme.typography.body.large.size,
                color = theme.color.onSurface
            }
        }
    },
    sys = {
        color = {
            ["surface-tint"] = theme.color.primary
        }
    }
}
end

return getTokens
    