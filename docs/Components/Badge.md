# Badge
Badges show notifications on items that require attention.

[Material Design 3 Documentation](https://m3.material.io/components/badges)

## API
```typescript
Badge(
    scope: Fusion.Scope,
    props: {
        count: number?,
        visible: Fusion.Value<boolean>?,
        anchorPoint: Vector2?,
        position: UDim2?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Small dot badge (no count)
MaterialRoblox.Components.Badge(scope, {
    visible = scope:Value(true),
    anchorPoint = Vector2.new(1, 0),
    position = UDim2.new(1, -2, 0, 2),
})

-- Large badge with count
MaterialRoblox.Components.Badge(scope, {
    count = 5,
    visible = scope:Value(true),
})
```
