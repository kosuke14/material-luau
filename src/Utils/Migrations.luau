--!strict

local MaterialRoblox = script.Parent.Parent;

local Fusion = require(MaterialRoblox.Parent.Fusion);

local function getPaletteFromTheme(
    theme,
    mode: "light" | "dark"
)
    return theme.schemes[mode].props
end

local function _VERY_UNSAFE_getPaletteFromThemeState(
    scope,
    theme,
    mode: Fusion.Value<"light" | "dark">
)
    local initialTheme = theme.schemes[Fusion.peek(mode)].props;
    local themeState = {};

    for key, _ in initialTheme do
        themeState[key] = scope:Computed(function(
            use
        )
            return theme.schemes[use(mode)].props[key];
        end)
    end

    print(themeState)

    return themeState
end

return {
    getPaletteFromTheme = getPaletteFromTheme,
    _VERY_UNSAFE_getPaletteFromThemeState = _VERY_UNSAFE_getPaletteFromThemeState,
}