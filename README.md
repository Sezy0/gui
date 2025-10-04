# 🎨 Discord UI Library for Roblox

A beautiful Discord-themed UI library for Roblox scripts, providing a sleek and modern interface.

## 🚀 Quick Start

```lua
-- Load the library
local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sezy0/gui/main/source_lib_ui.lua"))()

-- Create a window
local win = DiscordLib:Window("My Script")

-- Create a server (tab)
local serv = win:Server("Main", "")

-- Create a channel with buttons
local btns = serv:Channel("Buttons")

btns:Button("Click Me!", function()
    DiscordLib:Notification("Success", "Button clicked!", "Okay!")
end)
```

## 📦 Features

- ✅ Discord-themed UI
- ✅ Draggable windows
- ✅ Multiple UI components (Buttons, Toggles, Sliders, etc.)
- ✅ Notifications system
- ✅ Colorpickers
- ✅ Keybinds
- ✅ Persistent settings

## 📚 Components

### Button
```lua
channel:Button("Button Text", function()
    print("Button clicked!")
end)
```

### Toggle
```lua
channel:Toggle("Auto Farm", false, function(enabled)
    print("Toggle state:", enabled)
end)
```

### Slider
```lua
channel:Slider("Speed", 0, 100, 50, function(value)
    print("Slider value:", value)
end)
```

### Dropdown
```lua
channel:Dropdown("Select Option", {"Option 1", "Option 2", "Option 3"}, function(selected)
    print("Selected:", selected)
end)
```

### Colorpicker
```lua
channel:Colorpicker("ESP Color", Color3.fromRGB(255, 0, 0), function(color)
    print("Color:", color)
end)
```

### Textbox
```lua
channel:Textbox("Enter Value", "Placeholder", true, function(text)
    print("Input:", text)
end)
```

### Keybind
```lua
channel:Bind("Toggle Key", Enum.KeyCode.F, function()
    print("Keybind pressed!")
end)
```

## 📖 Example

Check out `example_lib_ui.lua` for a complete example with all components.

## 🔗 Links

- **Main Library:** [source_lib_ui.lua](https://raw.githubusercontent.com/Sezy0/gui/main/source_lib_ui.lua)
- **Example:** [example_lib_ui.lua](https://raw.githubusercontent.com/Sezy0/gui/main/example_lib_ui.lua)

## 📄 License

Free to use for any purpose.

---

Made with ❤️ by Sezy0
