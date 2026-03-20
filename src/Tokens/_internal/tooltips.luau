
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    action = {
        hover = {
            ["state-layer"] = {
                color = theme.color.primary
            },
            ["label-text"] = {
                color = theme.color.primary
            }
        },
        ["label-text"] = {
            font = theme.typography.label.large.font,
            size = theme.typography.label.large.size,
            color = theme.color.primary
        },
        focus = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        },
        pressed = {
            ["label-text"] = {
                color = theme.color.primary
            },
            ["state-layer"] = {
                color = theme.color.primary
            }
        }
    },
    container = {
        ["surface-tint-layer"] = {
            color = theme.color.surfaceTint
        },
        shape = theme.shape.cornerMedium,
        color = theme.color.surfaceContainer,
        ["shadow-color"] = theme.color.shadow
    },
    sys = {
        color = {
            ["surface-tint"] = theme.color.primary
        }
    },
    ["supporting-text"] = {
        color = theme.color.onSurfaceVariant,
        font = theme.typography.body.medium.font,
        size = theme.typography.body.medium.size
    },
    subhead = {
        font = theme.typography.title.small.font,
        size = theme.typography.title.small.size,
        color = theme.color.onSurfaceVariant
    }
}
end

return getTokens
    