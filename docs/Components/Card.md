# Card
Cards contain content and actions about a single subject.

[Material Design 3 Documentation](https://m3.material.io/components/cards)

## API
```typescript
Card(
    scope: Fusion.Scope,
    props: {
        variant: "filled" | "outlined" | "elevated"?,
        onClick: (() -> ())?,
        [typeof(Fusion.Children)]: { Instance }?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Filled card
MaterialRoblox.Components.Card(scope, {
    variant = "filled",
    onClick = function()
        print("Card clicked")
    end,
})
```

Pass children to the Card to add content inside it.
