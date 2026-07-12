# Chip
Chips help users make selections, filter content, or trigger actions.

[Material Design 3 Documentation](https://m3.material.io/components/chips)

## API
```typescript
Chip(
    scope: Fusion.Scope,
    props: {
        label: string,
        selected: Fusion.Value<boolean>?,
        variant: "flat" | "elevated"?,
        icon: string?,
        onClick: (() -> ())?,
        disabled: Fusion.Value<boolean>?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Flat chip
MaterialRoblox.Components.Chip(scope, {
    label = "Filter chip",
})

-- Selectable chip
local isSelected = scope:Value(false)
MaterialRoblox.Components.Chip(scope, {
    label = "Selected chip",
    selected = isSelected,
})

-- Chip with icon
MaterialRoblox.Components.Chip(scope, {
    label = "Wi-Fi",
    icon = "wifi",
})

-- Elevated chip
MaterialRoblox.Components.Chip(scope, {
    label = "Elevated chip",
    variant = "elevated",
})
```
