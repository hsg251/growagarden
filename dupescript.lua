local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "SonBeo Hub",
   Icon = 115946770928305, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "SonBeo Hub",
   LoadingSubtitle = "by thanh_dan658",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "SonBeo Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Tab Main

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button1 = MainTab:CreateButton({
   Name = "join old sever",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/realuerd/obf/refs/heads/main/oldserverjoiner",true))()
   end,
})

local Button2 = MainTab:CreateButton({
   Name = "dupe monney",
   Callback = function()
      local RunService = game:GetService("RunService")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local Players = game:GetService("Players")
      local localPlayer = Players.LocalPlayer

      RunService.Heartbeat:Connect(function()
         for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
               local character = player.Character
               if character then
                  local tool = character:FindFirstChildOfClass("Tool")
                  if tool then
                     ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer(tool)
                  end
               end
            end
         end
      end)
   end,
})



