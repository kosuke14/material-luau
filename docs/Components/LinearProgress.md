# LinearProgress
Linear progress indicators show the progress of a task.

[Material Design 3 Documentation](https://m3.material.io/components/progress-indicators)

## API
```typescript
LinearProgress(
    scope: Fusion.Scope,
    props: {
        indeterminate: boolean?,
        value: number?,  -- 0 to 1
        fourColor: boolean?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Determinate progress bar
MaterialRoblox.Components.LinearProgress(scope, {
    value = 0.6,  -- 60%
})

-- Indeterminate loading bar
MaterialRoblox.Components.LinearProgress(scope, {
    indeterminate = true,
})

-- Four-color indeterminate
MaterialRoblox.Components.LinearProgress(scope, {
    indeterminate = true,
    fourColor = true,
})
```
