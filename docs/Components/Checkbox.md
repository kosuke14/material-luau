# Checkbox
Checkboxes let users choose one or more items from a list.

[Material Design 3 Documentation](https://m3.material.io/components/checkbox)

## API
```typescript
Checkbox(
    scope: Fusion.Scope,
    props: {
        active: Fusion.Value<boolean>,
        error: Fusion.Value<boolean>?,
        disabled: Fusion.Value<boolean>?,
        onClick: (() -> ())?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

local checked = scope:Value(false)

MaterialRoblox.Components.Checkbox(scope, {
    active = checked,
    onClick = function()
        print("Checkbox:", checked:get())
    end,
})

-- Error state
MaterialRoblox.Components.Checkbox(scope, {
    active = scope:Value(false),
    error = scope:Value(true),
})

-- Disabled state
MaterialRoblox.Components.Checkbox(scope, {
    active = scope:Value(false),
    disabled = scope:Value(true),
})
```
