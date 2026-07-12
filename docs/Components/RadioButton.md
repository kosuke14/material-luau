# RadioButton
Radio buttons let users select one option from a set.

[Material Design 3 Documentation](https://m3.material.io/components/radio-button)

## API
```typescript
RadioButton(
    scope: Fusion.Scope,
    props: {
        active: Fusion.Value<boolean>,
        disabled: Fusion.Value<boolean>?,
        onClick: (() -> ())?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

local selectedOption = scope:Value(1)

-- Option 1
MaterialRoblox.Components.RadioButton(scope, {
    active = scope:Computed(function(use)
        return use(selectedOption) == 1
    end),
    onClick = function()
        selectedOption:set(1)
    end,
})

-- Option 2
MaterialRoblox.Components.RadioButton(scope, {
    active = scope:Computed(function(use)
        return use(selectedOption) == 2
    end),
    onClick = function()
        selectedOption:set(2)
    end,
})

-- Disabled
MaterialRoblox.Components.RadioButton(scope, {
    active = scope:Value(false),
    disabled = scope:Value(true),
})
```
