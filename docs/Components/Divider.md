# Divider
Dividers separate content into groups.

[Material Design 3 Documentation](https://m3.material.io/components/divider)

## API
```typescript
Divider(
    scope: Fusion.Scope,
    props: {
        inset: boolean?,
        vertical: boolean?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Full-width divider
MaterialRoblox.Components.Divider(scope, {})

-- Inset divider (with left padding)
MaterialRoblox.Components.Divider(scope, {
    inset = true,
})

-- Vertical divider
MaterialRoblox.Components.Divider(scope, {
    vertical = true,
})
```
