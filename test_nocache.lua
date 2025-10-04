-- BYPASS CACHE VERSION
-- Use this to force load the latest version without cache

local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sezy0/gui/main/source_lib_ui.lua?nocache=" .. tick()))()

-- Create test window
local win = DiscordLib:Window("Cache Bypass Test")

-- Create a simple tab
local mainTab = win:Server("Test", "")
local testSection = mainTab:Channel("Test")

testSection:Button("Test Button", function()
    DiscordLib:Notification("Success", "Cache bypassed! UI is latest version!", "OK!")
end)

print("✅ Loaded with cache bypass: " .. tick())
