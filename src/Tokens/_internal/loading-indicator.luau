
-- !!! THIS FILE WAS AUTOMATICALLY GENERATED !!!
-- !!! DO NOT MODIFY IT BY HAND !!!
-- Design system display name: Google Material 3
-- Token revision id: af25

local function getTokens(theme)
    return {
    ["active-indicator"] = {
        color = theme.color.primary,
        size = 38
    },
    container = {
        height = 48,
        width = 48,
        shape = theme.shape.cornerFull,
        color = theme.color.secondaryContainer
    },
    contained = {
        container = {
            color = theme.color.primaryContainer
        },
        ["active-indicator"] = {
            color = theme.color.onPrimaryContainer
        }
    }
}
end

return getTokens
    