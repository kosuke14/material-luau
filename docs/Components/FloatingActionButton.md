# FloatingActionButton
FABs represent the primary action of a screen.

[Material Design 3 Documentation](https://m3.material.io/components/floating-action-button)

## API
```typescript
FloatingActionButton(
    scope: Fusion.Scope,
    props: {
        icon: string,
        onClick: () -> ()?,
        variant: "primary" | "secondary" | "tertiary" | "surface" | "branded"?,
        size: "small" | "medium" | "large"?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Primary FAB (default)
MaterialRoblox.Components.FloatingActionButton(scope, {
    icon = "edit",
    onClick = function()
        print("FAB clicked")
    end,
})

-- Secondary FAB, small size
MaterialRoblox.Components.FloatingActionButton(scope, {
    icon = "add",
    variant = "secondary",
    size = "small",
})

-- Surface FAB, large size
MaterialRoblox.Components.FloatingActionButton(scope, {
    icon = "share",
    variant = "surface",
    size = "large",
})
```
