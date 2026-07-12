# Snackbar
Snackbars provide brief messages about a process at the bottom of the screen.

[Material Design 3 Documentation](https://m3.material.io/components/snackbar)

## API
```typescript
Snackbar(
    scope: Fusion.Scope,
    props: {
        message: string,
        actionText: string?,
        onAction: (() -> ())?,
        onClose: (() -> ())?,
        open: Fusion.Value<boolean>,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

local showSnackbar = scope:Value(false)

MaterialRoblox.Components.Snackbar(scope, {
    message = "Message archived",
    actionText = "Undo",
    onAction = function()
        print("Undo clicked")
        showSnackbar:set(false)
    end,
    onClose = function()
        showSnackbar:set(false)
    end,
    open = showSnackbar,
})
```
