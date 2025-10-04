-- ========================================
-- 🎮 SAMPLE UI SCRIPT - ROBLOX TEST
-- ========================================
-- Load library dari GitHub
local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sezy0/gui/main/source_lib_ui.lua"))()

-- Create main window
local win = DiscordLib:Window("Sezy's Script Hub")

-- ========================================
-- 🏠 TAB 1: MAIN
-- ========================================
local mainTab = win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")

-- PLAYER SECTION
local playerSection = mainTab:Channel("Player")

-- WalkSpeed Button
playerSection:Button("Speed Boost", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    DiscordLib:Notification("Success", "WalkSpeed set to 100!", "Okay!")
end)

-- JumpPower Button
playerSection:Button("Jump Boost", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    DiscordLib:Notification("Success", "JumpPower set to 100!", "Okay!")
end)

-- Reset Button
playerSection:Button("Reset Character", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    DiscordLib:Notification("Info", "Character reset!", "Okay!")
end)

playerSection:Seperator()

-- WalkSpeed Toggle
playerSection:Toggle("Auto Sprint", false, function(enabled)
    if enabled then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

-- Fly Toggle (simple version)
local flying = false
playerSection:Toggle("Fly Mode", false, function(enabled)
    flying = enabled
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    if enabled then
        DiscordLib:Notification("Fly", "Fly enabled! Use WASD to fly", "Okay!")
    else
        DiscordLib:Notification("Fly", "Fly disabled", "Okay!")
    end
end)

-- GAME SECTION
local gameSection = mainTab:Channel("Game")

-- ESP Toggle
gameSection:Toggle("Player ESP", false, function(enabled)
    if enabled then
        DiscordLib:Notification("ESP", "ESP Enabled!", "Okay!")
        -- ESP code here
    else
        DiscordLib:Notification("ESP", "ESP Disabled!", "Okay!")
    end
end)

-- Fullbright
gameSection:Toggle("Fullbright", false, function(enabled)
    if enabled then
        game.Lighting.Brightness = 2
        game.Lighting.ClockTime = 14
        game.Lighting.FogEnd = 100000
        game.Lighting.GlobalShadows = false
        game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    else
        game.Lighting.Brightness = 1
        game.Lighting.ClockTime = 12
        game.Lighting.FogEnd = 100000
        game.Lighting.GlobalShadows = true
        game.Lighting.OutdoorAmbient = Color3.fromRGB(70, 70, 70)
    end
end)

gameSection:Seperator()

gameSection:Button("Kill All Players", function()
    DiscordLib:Notification("Warning", "This is just a demo!", "Okay!")
end)

gameSection:Button("Teleport to Spawn", function()
    local spawn = workspace:FindFirstChild("SpawnLocation")
    if spawn then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spawn.CFrame
        DiscordLib:Notification("Teleport", "Teleported to spawn!", "Okay!")
    end
end)

-- ========================================
-- ⚙️ TAB 2: SETTINGS
-- ========================================
local settingsTab = win:Server("Settings", "")

local sliderSection = settingsTab:Channel("Sliders")

-- WalkSpeed Slider
local speedSlider = sliderSection:Slider("WalkSpeed", 16, 200, 16, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- JumpPower Slider
sliderSection:Slider("JumpPower", 50, 200, 50, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- FOV Slider
sliderSection:Slider("Camera FOV", 70, 120, 70, function(value)
    game.Workspace.Camera.FieldOfView = value
end)

sliderSection:Button("Reset WalkSpeed", function()
    speedSlider:Change(16)
    DiscordLib:Notification("Reset", "WalkSpeed reset to 16!", "Okay!")
end)

-- DROPDOWN SECTION
local dropdownSection = settingsTab:Channel("Dropdowns")

local teamDropdown = dropdownSection:Dropdown("Select Team", {"Red Team", "Blue Team", "Green Team", "Yellow Team"}, function(option)
    DiscordLib:Notification("Team", "Selected: " .. option, "Okay!")
end)

dropdownSection:Button("Clear Selection", function()
    teamDropdown:Clear()
end)

dropdownSection:Button("Add Custom Team", function()
    teamDropdown:Add("Purple Team")
    DiscordLib:Notification("Added", "Purple Team added!", "Okay!")
end)

-- COLORPICKER SECTION
local colorSection = settingsTab:Channel("Colors")

colorSection:Colorpicker("ESP Color", Color3.fromRGB(255, 0, 0), function(color)
    print("ESP Color changed to:", color)
end)

colorSection:Colorpicker("Ambient Color", Color3.fromRGB(128, 128, 128), function(color)
    game.Lighting.OutdoorAmbient = color
end)

-- TEXTBOX SECTION
local textSection = settingsTab:Channel("Textboxes")

textSection:Textbox("Username", "Enter name...", true, function(text)
    DiscordLib:Notification("Username", "Set to: " .. text, "Okay!")
end)

textSection:Textbox("Custom Message", "Type here...", true, function(text)
    print("Custom message:", text)
end)

-- ========================================
-- 🎯 TAB 3: COMBAT
-- ========================================
local combatTab = win:Server("Combat", "")

local weaponSection = combatTab:Channel("Weapons")

weaponSection:Button("Infinite Ammo", function()
    DiscordLib:Notification("Weapons", "Infinite ammo enabled!", "Okay!")
end)

weaponSection:Button("No Recoil", function()
    DiscordLib:Notification("Weapons", "No recoil enabled!", "Okay!")
end)

weaponSection:Button("Rapid Fire", function()
    DiscordLib:Notification("Weapons", "Rapid fire enabled!", "Okay!")
end)

weaponSection:Seperator()

weaponSection:Toggle("Auto Shoot", false, function(enabled)
    if enabled then
        DiscordLib:Notification("Combat", "Auto shoot enabled!", "Okay!")
    else
        DiscordLib:Notification("Combat", "Auto shoot disabled!", "Okay!")
    end
end)

weaponSection:Toggle("Silent Aim", false, function(enabled)
    if enabled then
        DiscordLib:Notification("Combat", "Silent aim enabled!", "Okay!")
    else
        DiscordLib:Notification("Combat", "Silent aim disabled!", "Okay!")
    end
end)

-- AIMING SECTION
local aimSection = combatTab:Channel("Aiming")

aimSection:Toggle("Aimbot", false, function(enabled)
    if enabled then
        DiscordLib:Notification("Aimbot", "Aimbot enabled!", "Okay!")
    else
        DiscordLib:Notification("Aimbot", "Aimbot disabled!", "Okay!")
    end
end)

aimSection:Slider("Aimbot FOV", 50, 500, 150, function(value)
    print("Aimbot FOV:", value)
end)

aimSection:Slider("Smoothness", 1, 20, 5, function(value)
    print("Aim smoothness:", value)
end)

-- ========================================
-- 🔧 TAB 4: MISC
-- ========================================
local miscTab = win:Server("Misc", "")

local utilSection = miscTab:Channel("Utilities")

utilSection:Label("Utility Functions")

utilSection:Button("Rejoin Server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

utilSection:Button("Copy Game ID", function()
    setclipboard(tostring(game.PlaceId))
    DiscordLib:Notification("Copied", "Game ID copied to clipboard!", "Okay!")
end)

utilSection:Button("Server Hop", function()
    DiscordLib:Notification("Server Hop", "Finding new server...", "Okay!")
end)

utilSection:Seperator()

utilSection:Toggle("Anti-AFK", false, function(enabled)
    if enabled then
        DiscordLib:Notification("Anti-AFK", "Anti-AFK enabled!", "Okay!")
    else
        DiscordLib:Notification("Anti-AFK", "Anti-AFK disabled!", "Okay!")
    end
end)

-- KEYBINDS SECTION
local keybindSection = miscTab:Channel("Keybinds")

keybindSection:Bind("Toggle UI", Enum.KeyCode.RightShift, function()
    DiscordLib:Notification("Keybind", "UI toggled!", "Okay!")
end)

keybindSection:Bind("Speed Boost", Enum.KeyCode.E, function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    DiscordLib:Notification("Keybind", "Speed boosted!", "Okay!")
end)

keybindSection:Bind("Reset", Enum.KeyCode.R, function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

-- INFO SECTION
local infoSection = miscTab:Channel("Information")

infoSection:Label("Script by Sezy0")
infoSection:Label("Version: 1.0.0")
infoSection:Label("Last Update: 2025-10-04")

-- ========================================
-- 🎉 FINISH
-- ========================================
print("Script loaded successfully!")
DiscordLib:Notification("Welcome!", "Script loaded! Press RightShift to toggle UI", "Let's go!")
