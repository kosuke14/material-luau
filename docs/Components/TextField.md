# TextField
Text fields let users enter and edit text.

[Material Design 3 Documentation](https://m3.material.io/components/text-fields)

## API
```typescript
TextField(
    scope: Fusion.Scope,
    props: {
        placeholder: string?,
        label: string?,
        value: Fusion.Value<string>,
        variant: "filled" | "outlined"?,
        error: Fusion.Value<boolean>?,
        disabled: Fusion.Value<boolean>?,
        leadingIcon: string?,
        trailingIcon: string?,
        supportingText: string?,
        onChanged: ((text: string) -> ())?,
        multiline: boolean?,
    }
)
```

## Usage
```lua
local MaterialRoblox = require(MaterialRoblox);

-- Outlined text field (default)
local name = scope:Value("")
MaterialRoblox.Components.TextField(scope, {
    label = "Name",
    value = name,
    variant = "outlined",
})

-- Filled text field with icon
local email = scope:Value("")
MaterialRoblox.Components.TextField(scope, {
    label = "Email",
    value = email,
    variant = "filled",
    leadingIcon = "email",
})

-- Text field with error state
local password = scope:Value("")
MaterialRoblox.Components.TextField(scope, {
    label = "Password",
    value = password,
    error = scope:Value(true),
    supportingText = "Password must be at least 8 characters",
    trailingIcon = "visibility_off",
})

-- Multiline text area
local description = scope:Value("")
MaterialRoblox.Components.TextField(scope, {
    label = "Description",
    value = description,
    multiline = true,
})
```
