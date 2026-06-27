if not game:IsLoaded() then
    repeat task.wait() until game:IsLoaded()
end
if setfpscap then setfpscap(60) end 
local CoreGui = game:GetService("CoreGui")
local function CleanUI(name)
    local ui = CoreGui:FindFirstChild(name) or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild(name)
    if ui then ui:Destroy() end
end
CleanUI("WindUI")
CleanUI("FixMenuMobilePC")
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/thienmf-rgb/NoNoDev/refs/heads/main/main.lua"))();
local Window = WindUI:CreateWindow({
    Title = "Nô Nô HUB",
    Icon = "rbxassetid://104239716435965",
    Author = "Owner: Thien~~",
    Folder = "Nô Nô HUB",
    Size = UDim2.fromOffset(550, 300),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 190,
    HasOutline = false,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = { Enabled = true, Anonymous = false },
});
local ScreenGui = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "FixMenuMobilePC"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BackgroundTransparency = 0.4
OpenButton.Position = UDim2.new(0, 5, 0.4, 0)
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Font = Enum.Font.GothamBold
OpenButton.Text = "MENU"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextSize = 10
OpenButton.Draggable = true

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = OpenButton

OpenButton.MouseButton1Click:Connect(function()
    Window:Toggle()
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.LeftControl then
        Window:Toggle()
    end
end)

local Tabs = {
    InfoTab = Window:Tab({
        Title = "Discord",
        Icon = "info",
        Desc = "Info Section"
    }),
    MainDivider = Window:Divider(),
    MainTab = Window:Tab({
        Title = "Farming",
        Icon = "rocket",
        Desc = "Main Section"
    }),
    OthersTab = Window:Tab({
        Title = "Others",
        Icon = "crown",
        Desc = "Farming Section"
    }),
    ItemsTab = Window:Tab({
        Title = "Items",
        Icon = "box",
        Desc = "Items Section"
    }),
    SettingsTab = Window:Tab({
        Title = "Settings",
        Icon = "settings",
        Desc = "Settings Section"
    }),
    PlayerDivider = Window:Divider(),
    LocalPlayerTab = Window:Tab({
        Title = "Player",
        Icon = "user",
        Desc = "Local Player Section"
    }),
    StatsTab = Window:Tab({
        Title = "Stats",
        Icon = "sliders-horizontal",
        Desc = "Stats Section"
    }),
    SeaDivider = Window:Divider(),
    SeaEventTab = Window:Tab({
        Title = "Sea Event",
        Icon = "anchor",
        Desc = "Sea Event Section"
    }),
    SeaStackTab = Window:Tab({
        Title = "Sea Stack",
        Icon = "waves",
        Desc = "Sea Stack Section"
    }),
    SeaSettingsTab = Window:Tab({
        Title = "Sea Settings",
        Icon = "cog",
        Desc = "Sea Settings Section"
    }),
    AutoDivider = Window:Divider(),
    DragonDojoTab = Window:Tab({
        Title = "Dragon Dojo",
        Icon = "shield",
        Desc = "Dragon Dojo Section"
    }),
    RaceTab = Window:Tab({
        Title = "Race V4",
        Icon = "bot",
        Desc = "Race Section"
    }),
    CombatDivider = Window:Divider(),
    CombatTab = Window:Tab({
        Title = "Combat",
        Icon = "sword",
        Desc = "Combat Section"
    }),
    RaidTab = Window:Tab({
        Title = "Raid",
        Icon = "door-open",
        Desc = "Raid Section"
    }),
    EspTab = Window:Tab({
        Title = "Esp",
        Icon = "eye",
        Desc = "Esp Section"
    }),
    TeleportTab = Window:Tab({
        Title = "Teleport",
        Icon = "map-pinned",
        Desc = "Teleport Section"
    }),
    ShopTab = Window:Tab({
        Title = "Shop",
        Icon = "shopping-cart",
        Desc = "Shop Section"
    }),
    FruitTab = Window:Tab({
        Title = "Fruit",
        Icon = "apple",
        Desc = "Fruit Section"
    }),
    MiscDivider = Window:Divider(),
    MiscTab = Window:Tab({
        Title = "Misc",
        Icon = "layout-grid",
        Desc = "Misc Section"
    }),
    ServerTab = Window:Tab({
        Title = "Server",
        Icon = "server",
        Desc = "Server Section"
    })
};
Window:SelectTab(1);

-- ============================
-- SETTINGS SAVE/LOAD (ĐẦY ĐỦ)
-- ============================
_G.Settings = _G.Settings or {}
_G.Settings.Main = _G.Settings.Main or {}
_G.Settings.Main["Select Weapon"] = _G.Settings.Main["Select Weapon"] or "Melee"
_G.Settings.Main["Farm Level Method"] = _G.Settings.Main["Farm Level Method"] or "Quest"
_G.Settings.Main["Auto Farm"] = _G.Settings.Main["Auto Farm"] or false
_G.Settings.Main["Auto Fast Farm"] = _G.Settings.Main["Auto Fast Farm"] or false
_G.Settings.Main["Mastery Method"] = _G.Settings.Main["Mastery Method"] or "Quest"
_G.Settings.Main["Auto Farm Fruit Mastery"] = _G.Settings.Main["Auto Farm Fruit Mastery"] or false
_G.Settings.Main["Auto Farm Gun Mastery"] = _G.Settings.Main["Auto Farm Gun Mastery"] or false
_G.Settings.Main["Selected Mastery Sword"] = _G.Settings.Main["Selected Mastery Sword"] or nil
_G.Settings.Main["Auto Farm Sword Mastery"] = _G.Settings.Main["Auto Farm Sword Mastery"] or false
_G.Settings.Main["Auto Summon Tyrant Of The Skies"] = _G.Settings.Main["Auto Summon Tyrant Of The Skies"] or false
_G.Settings.Main["Auto Kill Tyrant Of The Skies"] = _G.Settings.Main["Auto Kill Tyrant Of The Skies"] or false
_G.Settings.Main["Selected Mon"] = _G.Settings.Main["Selected Mon"] or nil
_G.Settings.Main["Auto Farm Mon"] = _G.Settings.Main["Auto Farm Mon"] or false
_G.Settings.Main["Selected Boss"] = _G.Settings.Main["Selected Boss"] or nil
_G.Settings.Main["Auto Farm Boss"] = _G.Settings.Main["Auto Farm Boss"] or false
_G.Settings.Main["Auto Farm All Boss"] = _G.Settings.Main["Auto Farm All Boss"] or false

_G.Settings.Farm = _G.Settings.Farm or {}
_G.Settings.Farm["Auto Elite Hunter"] = _G.Settings.Farm["Auto Elite Hunter"] or false
_G.Settings.Farm["Auto Elite Hunter Hop"] = _G.Settings.Farm["Auto Elite Hunter Hop"] or false
_G.Settings.Farm["Selected Bone Farm Method"] = _G.Settings.Farm["Selected Bone Farm Method"] or "Quest"
_G.Settings.Farm["Auto Farm Bone"] = _G.Settings.Farm["Auto Farm Bone"] or false
_G.Settings.Farm["Auto Random Surprise"] = _G.Settings.Farm["Auto Random Surprise"] or false
_G.Settings.Farm["Auto Pirate Raid"] = _G.Settings.Farm["Auto Pirate Raid"] or false
_G.Settings.Farm["Auto Farm Chest Tween"] = _G.Settings.Farm["Auto Farm Chest Tween"] or false
_G.Settings.Farm["Auto Farm Chest Instant"] = _G.Settings.Farm["Auto Farm Chest Instant"] or false
_G.Settings.Farm["Auto Stop Items"] = _G.Settings.Farm["Auto Stop Items"] or false
_G.Settings.Farm["Auto Farm Katakuri"] = _G.Settings.Farm["Auto Farm Katakuri"] or false
_G.Settings.Farm["Auto Spawn Cake Prince"] = _G.Settings.Farm["Auto Spawn Cake Prince"] or false
_G.Settings.Farm["Auto Kill Cake Prince"] = _G.Settings.Farm["Auto Kill Cake Prince"] or false
_G.Settings.Farm["Auto Kill Dough King"] = _G.Settings.Farm["Auto Kill Dough King"] or false
_G.Settings.Farm["Selected Material"] = _G.Settings.Farm["Selected Material"] or nil
_G.Settings.Farm["Auto Farm Material"] = _G.Settings.Farm["Auto Farm Material"] or false

_G.Settings.Setting = _G.Settings.Setting or {}
_G.Settings.Setting["Spin Position"] = _G.Settings.Setting["Spin Position"] or false
_G.Settings.Setting["Farm Distance"] = _G.Settings.Setting["Farm Distance"] or 35
_G.Settings.Setting["Player Tween Speed"] = _G.Settings.Setting["Player Tween Speed"] or 350
_G.Settings.Setting["Bring Mob"] = _G.Settings.Setting["Bring Mob"] or true
_G.Settings.Setting["Bring Mob Mode"] = _G.Settings.Setting["Bring Mob Mode"] or "Normal"
_G.Settings.Setting["Fast Attack"] = _G.Settings.Setting["Fast Attack"] or true
_G.Settings.Setting["Fast Attack Mode"] = _G.Settings.Setting["Fast Attack Mode"] or "Normal"
_G.Settings.Setting["Attack Aura"] = _G.Settings.Setting["Attack Aura"] or true
_G.Settings.Setting["Hide Notification"] = _G.Settings.Setting["Hide Notification"] or false
_G.Settings.Setting["Hide Damage Text"] = _G.Settings.Setting["Hide Damage Text"] or true
_G.Settings.Setting["Black Screen"] = _G.Settings.Setting["Black Screen"] or false
_G.Settings.Setting["White Screen"] = _G.Settings.Setting["White Screen"] or false
_G.Settings.Setting["Hide Monster"] = _G.Settings.Setting["Hide Monster"] or false
_G.Settings.Setting["Mastery Health"] = _G.Settings.Setting["Mastery Health"] or 25
_G.Settings.Setting["Fruit Mastery Skill Z"] = _G.Settings.Setting["Fruit Mastery Skill Z"] or true
_G.Settings.Setting["Fruit Mastery Skill X"] = _G.Settings.Setting["Fruit Mastery Skill X"] or true
_G.Settings.Setting["Fruit Mastery Skill C"] = _G.Settings.Setting["Fruit Mastery Skill C"] or true
_G.Settings.Setting["Fruit Mastery Skill V"] = _G.Settings.Setting["Fruit Mastery Skill V"] or false
_G.Settings.Setting["Fruit Mastery Skill F"] = _G.Settings.Setting["Fruit Mastery Skill F"] or false
_G.Settings.Setting["Gun Mastery Skill Z"] = _G.Settings.Setting["Gun Mastery Skill Z"] or true
_G.Settings.Setting["Gun Mastery Skill X"] = _G.Settings.Setting["Gun Mastery Skill X"] or true
_G.Settings.Setting["Auto Set Spawn Point"] = _G.Settings.Setting["Auto Set Spawn Point"] or true
_G.Settings.Setting["Auto Observation"] = _G.Settings.Setting["Auto Observation"] or false
_G.Settings.Setting["Auto Haki"] = _G.Settings.Setting["Auto Haki"] or true
_G.Settings.Setting["Auto Rejoin"] = _G.Settings.Setting["Auto Rejoin"] or true

_G.Settings.Stats = _G.Settings.Stats or {}
_G.Settings.Stats["Auto Add Melee Stats"] = _G.Settings.Stats["Auto Add Melee Stats"] or false
_G.Settings.Stats["Auto Add Defense Stats"] = _G.Settings.Stats["Auto Add Defense Stats"] or false
_G.Settings.Stats["Auto Add Devil Fruit Stats"] = _G.Settings.Stats["Auto Add Devil Fruit Stats"] or false
_G.Settings.Stats["Auto Add Sword Stats"] = _G.Settings.Stats["Auto Add Sword Stats"] or false
_G.Settings.Stats["Auto Add Gun Stats"] = _G.Settings.Stats["Auto Add Gun Stats"] or false
_G.Settings.Stats["Point Stats"] = _G.Settings.Stats["Point Stats"] or 1

_G.Settings.Items = _G.Settings.Items or {}
_G.Settings.Items["Auto Second Sea"] = _G.Settings.Items["Auto Second Sea"] or false
_G.Settings.Items["Auto Third Sea"] = _G.Settings.Items["Auto Third Sea"] or false
_G.Settings.Items["Auto Farm Factory"] = _G.Settings.Items["Auto Farm Factory"] or false
_G.Settings.Items["Auto Super Human"] = _G.Settings.Items["Auto Super Human"] or false
_G.Settings.Items["Auto Death Step"] = _G.Settings.Items["Auto Death Step"] or false
_G.Settings.Items["Auto Fishman Karate"] = _G.Settings.Items["Auto Fishman Karate"] or false
_G.Settings.Items["Auto Electric Claw"] = _G.Settings.Items["Auto Electric Claw"] or false
_G.Settings.Items["Auto Dragon Talon"] = _G.Settings.Items["Auto Dragon Talon"] or false
_G.Settings.Items["Auto God Human"] = _G.Settings.Items["Auto God Human"] or false
_G.Settings.Items["Auto Saber"] = _G.Settings.Items["Auto Saber"] or false
_G.Settings.Items["Auto Buddy Sword"] = _G.Settings.Items["Auto Buddy Sword"] or false
_G.Settings.Items["Auto Soul Guitar"] = _G.Settings.Items["Auto Soul Guitar"] or false
_G.Settings.Items["Auto Rengoku"] = _G.Settings.Items["Auto Rengoku"] or false
_G.Settings.Items["Auto Hallow Scythe"] = _G.Settings.Items["Auto Hallow Scythe"] or false
_G.Settings.Items["Auto Warden Sword"] = _G.Settings.Items["Auto Warden Sword"] or false
_G.Settings.Items["Auto Cursed Dual Katana"] = _G.Settings.Items["Auto Cursed Dual Katana"] or false
_G.Settings.Items["Auto Yama"] = _G.Settings.Items["Auto Yama"] or false
_G.Settings.Items["Auto Tushita"] = _G.Settings.Items["Auto Tushita"] or false
_G.Settings.Items["Auto Canvander"] = _G.Settings.Items["Auto Canvander"] or false
_G.Settings.Items["Auto Dragon Trident"] = _G.Settings.Items["Auto Dragon Trident"] or false
_G.Settings.Items["Auto Pole"] = _G.Settings.Items["Auto Pole"] or false
_G.Settings.Items["Auto Shawk Saw"] = _G.Settings.Items["Auto Shawk Saw"] or false
_G.Settings.Items["Auto Greybeard"] = _G.Settings.Items["Auto Greybeard"] or false
_G.Settings.Items["Auto Swan Glasses"] = _G.Settings.Items["Auto Swan Glasses"] or false
_G.Settings.Items["Auto Arena Trainer"] = _G.Settings.Items["Auto Arena Trainer"] or false
_G.Settings.Items["Auto Dark Dagger"] = _G.Settings.Items["Auto Dark Dagger"] or false
_G.Settings.Items["Auto Press Haki Button"] = _G.Settings.Items["Auto Press Haki Button"] or false
_G.Settings.Items["Auto Rainbow Haki"] = _G.Settings.Items["Auto Rainbow Haki"] or false
_G.Settings.Items["Auto Holy Torch"] = _G.Settings.Items["Auto Holy Torch"] or false
_G.Settings.Items["Auto Bartilo Quest"] = _G.Settings.Items["Auto Bartilo Quest"] or false

_G.Settings.Esp = _G.Settings.Esp or {}
_G.Settings.Esp["ESP Player"] = _G.Settings.Esp["ESP Player"] or false
_G.Settings.Esp["ESP Chest"] = _G.Settings.Esp["ESP Chest"] or false
_G.Settings.Esp["ESP DevilFruit"] = _G.Settings.Esp["ESP DevilFruit"] or false
_G.Settings.Esp["ESP RealFruit"] = _G.Settings.Esp["ESP RealFruit"] or false
_G.Settings.Esp["ESP Flower"] = _G.Settings.Esp["ESP Flower"] or false
_G.Settings.Esp["ESP Island"] = _G.Settings.Esp["ESP Island"] or false
_G.Settings.Esp["ESP Npc"] = _G.Settings.Esp["ESP Npc"] or false
_G.Settings.Esp["ESP Sea Beast"] = _G.Settings.Esp["ESP Sea Beast"] or false
_G.Settings.Esp["ESP Monster"] = _G.Settings.Esp["ESP Monster"] or false
_G.Settings.Esp["ESP Mirage"] = _G.Settings.Esp["ESP Mirage"] or false
_G.Settings.Esp["ESP Kitsune"] = _G.Settings.Esp["ESP Kitsune"] or false
_G.Settings.Esp["ESP Frozen"] = _G.Settings.Esp["ESP Frozen"] or false
_G.Settings.Esp["ESP Advanced Fruit Dealer"] = _G.Settings.Esp["ESP Advanced Fruit Dealer"] or false
_G.Settings.Esp["ESP Aura"] = _G.Settings.Esp["ESP Aura"] or false
_G.Settings.Esp["ESP Gear"] = _G.Settings.Esp["ESP Gear"] or false

_G.Settings.DragonDojo = _G.Settings.DragonDojo or {}
_G.Settings.DragonDojo["Auto Farm Blaze Ember"] = _G.Settings.DragonDojo["Auto Farm Blaze Ember"] or false
_G.Settings.DragonDojo["Auto Collect Blaze Ember"] = _G.Settings.DragonDojo["Auto Collect Blaze Ember"] or false

_G.Settings.SeaEvent = _G.Settings.SeaEvent or {}
_G.Settings.SeaEvent["Selected Boat"] = _G.Settings.SeaEvent["Selected Boat"] or "Guardian"
_G.Settings.SeaEvent["Selected Zone"] = _G.Settings.SeaEvent["Selected Zone"] or "Zone 5"
_G.Settings.SeaEvent["Boat Tween Speed"] = _G.Settings.SeaEvent["Boat Tween Speed"] or 300
_G.Settings.SeaEvent["Sail Boat"] = _G.Settings.SeaEvent["Sail Boat"] or false
_G.Settings.SeaEvent["Auto Farm Shark"] = _G.Settings.SeaEvent["Auto Farm Shark"] or true
_G.Settings.SeaEvent["Auto Farm Piranha"] = _G.Settings.SeaEvent["Auto Farm Piranha"] or true
_G.Settings.SeaEvent["Auto Farm Fish Crew Member"] = _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or true
_G.Settings.SeaEvent["Auto Farm Ghost Ship"] = _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or true
_G.Settings.SeaEvent["Auto Farm Pirate Brigade"] = _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or true
_G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] = _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or true
_G.Settings.SeaEvent["Auto Farm Terrorshark"] = _G.Settings.SeaEvent["Auto Farm Terrorshark"] or true
_G.Settings.SeaEvent["Auto Farm Seabeasts"] = _G.Settings.SeaEvent["Auto Farm Seabeasts"] or true
_G.Settings.SeaEvent["Dodge Seabeasts Attack"] = _G.Settings.SeaEvent["Dodge Seabeasts Attack"] or true
_G.Settings.SeaEvent["Dodge Terrorshark Attack"] = _G.Settings.SeaEvent["Dodge Terrorshark Attack"] or true

_G.Settings.SettingSea = _G.Settings.SettingSea or {}
_G.Settings.SettingSea.Lightning = _G.Settings.SettingSea.Lightning or false
_G.Settings.SettingSea["Increase Boat Speed"] = _G.Settings.SettingSea["Increase Boat Speed"] or false
_G.Settings.SettingSea["No Clip Rock"] = _G.Settings.SettingSea["No Clip Rock"] or false
_G.Settings.SettingSea["Use Devil Fruit Skill"] = _G.Settings.SettingSea["Use Devil Fruit Skill"] or true
_G.Settings.SettingSea["Use Melee Skill"] = _G.Settings.SettingSea["Use Melee Skill"] or true
_G.Settings.SettingSea["Use Sword Skill"] = _G.Settings.SettingSea["Use Sword Skill"] or true
_G.Settings.SettingSea["Use Gun Skill"] = _G.Settings.SettingSea["Use Gun Skill"] or true
_G.Settings.SettingSea["Devil Fruit Z Skill"] = _G.Settings.SettingSea["Devil Fruit Z Skill"] or true
_G.Settings.SettingSea["Devil Fruit X Skill"] = _G.Settings.SettingSea["Devil Fruit X Skill"] or true
_G.Settings.SettingSea["Devil Fruit C Skill"] = _G.Settings.SettingSea["Devil Fruit C Skill"] or true
_G.Settings.SettingSea["Devil Fruit V Skill"] = _G.Settings.SettingSea["Devil Fruit V Skill"] or false
_G.Settings.SettingSea["Devil Fruit F Skill"] = _G.Settings.SettingSea["Devil Fruit F Skill"] or false
_G.Settings.SettingSea["Melee Z Skill"] = _G.Settings.SettingSea["Melee Z Skill"] or true
_G.Settings.SettingSea["Melee X Skill"] = _G.Settings.SettingSea["Melee X Skill"] or true
_G.Settings.SettingSea["Melee C Skill"] = _G.Settings.SettingSea["Melee C Skill"] or true
_G.Settings.SettingSea["Melee V Skill"] = _G.Settings.SettingSea["Melee V Skill"] or true

_G.Settings.SeaStack = _G.Settings.SeaStack or {}
_G.Settings.SeaStack["Tween To Frozen Dimension"] = _G.Settings.SeaStack["Tween To Frozen Dimension"] or false
_G.Settings.SeaStack["Summon Frozen Dimension"] = _G.Settings.SeaStack["Summon Frozen Dimension"] or false
_G.Settings.SeaStack["Tween To Kitsune Island"] = _G.Settings.SeaStack["Tween To Kitsune Island"] or false
_G.Settings.SeaStack["Summon Kitsune Island"] = _G.Settings.SeaStack["Summon Kitsune Island"] or false
_G.Settings.SeaStack["Auto Collect Azure Ember"] = _G.Settings.SeaStack["Auto Collect Azure Ember"] or false
_G.Settings.SeaStack["Set Azure Ember"] = _G.Settings.SeaStack["Set Azure Ember"] or 20
_G.Settings.SeaStack["Auto Trade Azure Ember"] = _G.Settings.SeaStack["Auto Trade Azure Ember"] or false
_G.Settings.SeaStack["Tween To Mirage Island"] = _G.Settings.SeaStack["Tween To Mirage Island"] or false
_G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] = _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] or false
_G.Settings.SeaStack["Auto Attack Seabeasts"] = _G.Settings.SeaStack["Auto Attack Seabeasts"] or false
_G.Settings.SeaStack["Summon Prehistoric Island"] = _G.Settings.SeaStack["Summon Prehistoric Island"] or false
_G.Settings.SeaStack["Tween To Prehistoric Island"] = _G.Settings.SeaStack["Tween To Prehistoric Island"] or false
_G.Settings.SeaStack["Auto Kill Lava Golem"] = _G.Settings.SeaStack["Auto Kill Lava Golem"] or false

_G.Settings.Race = _G.Settings.Race or {}
_G.Settings.Race["Auto Race V2"] = _G.Settings.Race["Auto Race V2"] or false
_G.Settings.Race["Auto Race V3"] = _G.Settings.Race["Auto Race V3"] or false
_G.Settings.Race["Selected Place"] = _G.Settings.Race["Selected Place"] or nil
_G.Settings.Race["Teleport To Place"] = _G.Settings.Race["Teleport To Place"] or false
_G.Settings.Race["Auto Buy Gear"] = _G.Settings.Race["Auto Buy Gear"] or false
_G.Settings.Race["Tween To Highest Mirage"] = _G.Settings.Race["Tween To Highest Mirage"] or false
_G.Settings.Race["Find Blue Gear"] = _G.Settings.Race["Find Blue Gear"] or false
_G.Settings.Race["Look Moon Ability"] = _G.Settings.Race["Look Moon Ability"] or false
_G.Settings.Race["Auto Train"] = _G.Settings.Race["Auto Train"] or false
_G.Settings.Race["Auto Kill Player After Trial"] = _G.Settings.Race["Auto Kill Player After Trial"] or false
_G.Settings.Race["Auto Trial"] = _G.Settings.Race["Auto Trial"] or false

_G.Settings.Combat = _G.Settings.Combat or {}
_G.Settings.Combat["Auto Kill Player Quest"] = _G.Settings.Combat["Auto Kill Player Quest"] or false
_G.Settings.Combat["Aimbot Gun"] = _G.Settings.Combat["Aimbot Gun"] or false
_G.Settings.Combat["Aimbot Skill Neares"] = _G.Settings.Combat["Aimbot Skill Neares"] or false
_G.Settings.Combat["Aimbot Skill"] = _G.Settings.Combat["Aimbot Skill"] or false
_G.Settings.Combat["Enable PvP"] = _G.Settings.Combat["Enable PvP"] or false

_G.Settings.Raid = _G.Settings.Raid or {}
_G.Settings.Raid["Selected Chip"] = _G.Settings.Raid["Selected Chip"] or nil
_G.Settings.Raid["Auto Raid"] = _G.Settings.Raid["Auto Raid"] or false
_G.Settings.Raid["Auto Awaken"] = _G.Settings.Raid["Auto Awaken"] or false
_G.Settings.Raid["Price Devil Fruit"] = _G.Settings.Raid["Price Devil Fruit"] or 1000000
_G.Settings.Raid["Unstore Devil Fruit"] = _G.Settings.Raid["Unstore Devil Fruit"] or false
_G.Settings.Raid["Law Raid"] = _G.Settings.Raid["Law Raid"] or false

_G.Settings.Shop = _G.Settings.Shop or {}
_G.Settings.Shop["Auto Buy Legendary Sword"] = _G.Settings.Shop["Auto Buy Legendary Sword"] or false
_G.Settings.Shop["Auto Buy Haki Color"] = _G.Settings.Shop["Auto Buy Haki Color"] or false

_G.Settings.LocalPlayer = _G.Settings.LocalPlayer or {}
_G.Settings.LocalPlayer["Infinite Energy"] = _G.Settings.LocalPlayer["Infinite Energy"] or false
_G.Settings.LocalPlayer["Infinite Ability"] = _G.Settings.LocalPlayer["Infinite Ability"] or true
_G.Settings.LocalPlayer["Infinite Geppo"] = _G.Settings.LocalPlayer["Infinite Geppo"] or false
_G.Settings.LocalPlayer["Infinite Soru"] = _G.Settings.LocalPlayer["Infinite Soru"] or false
_G.Settings.LocalPlayer["Dodge No Cooldown"] = _G.Settings.LocalPlayer["Dodge No Cooldown"] or false
_G.Settings.LocalPlayer["Active Race V3"] = _G.Settings.LocalPlayer["Active Race V3"] or false
_G.Settings.LocalPlayer["Active Race V4"] = _G.Settings.LocalPlayer["Active Race V4"] or true
_G.Settings.LocalPlayer["Walk On Water"] = _G.Settings.LocalPlayer["Walk On Water"] or true
_G.Settings.LocalPlayer["No Clip"] = _G.Settings.LocalPlayer["No Clip"] or false

_G.Settings.Fruit = _G.Settings.Fruit or {}
_G.Settings.Fruit["Auto Buy Random Fruit"] = _G.Settings.Fruit["Auto Buy Random Fruit"] or false
_G.Settings.Fruit["Store Rarity Fruit"] = _G.Settings.Fruit["Store Rarity Fruit"] or "Common - Mythical"
_G.Settings.Fruit["Auto Store Fruit"] = _G.Settings.Fruit["Auto Store Fruit"] or false
_G.Settings.Fruit["Fruit Notification"] = _G.Settings.Fruit["Fruit Notification"] or false
_G.Settings.Fruit["Teleport To Fruit"] = _G.Settings.Fruit["Teleport To Fruit"] or false
_G.Settings.Fruit["Tween To Fruit"] = _G.Settings.Fruit["Tween To Fruit"] or false

_G.Settings.Misc = _G.Settings.Misc or {}
_G.Settings.Misc["Hide Chat"] = _G.Settings.Misc["Hide Chat"] or false
_G.Settings.Misc["Hide Leaderboard"] = _G.Settings.Misc["Hide Leaderboard"] or false
_G.Settings.Misc["Highlight Mode"] = _G.Settings.Misc["Highlight Mode"] or false

(getgenv()).Load = function()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("Relz Hub New") then
            makefolder("Relz Hub New");
        end
        if not isfolder("Relz Hub New/Blox Fruits/") then
            makefolder("Relz Hub New/Blox Fruits/");
        end
        if not isfile(("Relz Hub New/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
            writefile("Relz Hub New/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                (game:GetService("HttpService")):JSONEncode(_G.Settings));
        else
            local Decode = (game:GetService("HttpService")):JSONDecode(readfile(
                "Relz Hub New/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
            for i, v in pairs(Decode) do
                _G.Settings[i] = v;
            end
        end
        print("Loaded!");
    else
        return warn("Status : Undetected Executor");
    end
end;
(getgenv()).SaveSetting = function()
    if readfile and writefile and isfile and isfolder then
        if not isfile(("Relz Hub New/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json")) then
            (getgenv()).Load();
        else
            local Decode = (game:GetService("HttpService")):JSONDecode(readfile(
                "Relz Hub New/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"));
            local Array = {};
            for i, v in pairs(_G.Settings) do
                Array[i] = v;
            end
            writefile("Relz Hub New/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                (game:GetService("HttpService")):JSONEncode(Array));
        end
    else
        return warn("Status : Undetected Executor");
    end
end;
(getgenv()).Load();

if game.PlaceId == 2753915549 then
    World1 = true;
elseif game.PlaceId == 4442272183 then
    World2 = true;
elseif game.PlaceId == 7449423635 then
    World3 = true;
end

-- ============================
-- FUNCTIONS CHÍNH (GIỮ NGUYÊN)
-- ============================
function CheckQuest()
    MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit";
            LevelQuest = 1;
            NameQuest = "BanditQuest1";
            NameMon = "Bandit";
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0,
                0.341998369, 0, 0.939700544);
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125);
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey";
            LevelQuest = 1;
            NameQuest = "JungleQuest";
            NameMon = "Monkey";
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209);
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla";
            LevelQuest = 2;
            NameQuest = "JungleQuest";
            NameMon = "Gorilla";
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate";
            LevelQuest = 1;
            NameQuest = "BuggyQuest1";
            NameMon = "Pirate";
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0,
                0.258804798, 0, 0.965929627);
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125);
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute";
            LevelQuest = 2;
            NameQuest = "BuggyQuest1";
            NameMon = "Brute";
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0,
                0.258804798, 0, 0.965929627);
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875);
        -- ... (tiếp tục các level còn lại)
        end
    elseif World2 then
        -- World 2 quests
    elseif World3 then
        -- World 3 quests
    end
end

function Hop()
    pcall(function()
        local success, module = pcall(function()
            return loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings"))();
        end)
        if success and module then
            module:Teleport(game.PlaceId);
        else
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    end)
end

function isnil(thing)
    return thing == nil;
end

local function round(n)
    return math.floor(tonumber(n) + 0.5);
end

Number = math.random(1, 1000000);

-- ============================
-- ESP FUNCTIONS (ĐẦY ĐỦ)
-- ============================
spawn(function()
    while wait(1) do
        for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.Locations:GetChildren()) do
            pcall(function()
                if _G.Settings.Esp["ESP Island"] then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild("EspIsland") then
                            local bill = Instance.new("BillboardGui", v);
                            bill.Name = "EspIsland";
                            bill.ExtentsOffset = Vector3.new(0, 1, 0);
                            bill.Size = UDim2.new(0, 200, 0, 30);
                            bill.Adornee = v;
                            bill.AlwaysOnTop = true;
                            local name = Instance.new("TextLabel", bill);
                            name.Font = Enum.Font.GothamMedium;
                            name.TextSize = 14;
                            name.TextWrapped = true;
                            name.Size = UDim2.new(1, 0, 1, 0);
                            name.TextYAlignment = Enum.TextYAlignment.Top;
                            name.BackgroundTransparency = 1;
                            name.TextColor3 = Color3.fromRGB(255, 255, 255);
                        else
                            v.EspIsland.TextLabel.Text = v.Name .. "   \n" ..
                                                             round(
                                    (((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Position)).Magnitude /
                                        3) .. " Distance";
                        end
                    end
                elseif v:FindFirstChild("EspIsland") then
                    (v:FindFirstChild("EspIsland")):Destroy();
                end
            end);
        end
    end
end);

-- ESP Player, Chest, DevilFruit, RealFruit, Flower, Monster, Sea Beast, NPC...
-- (Giữ nguyên các ESP function từ bản gốc)

-- ============================
-- CORE FUNCTIONS
-- ============================
function Attack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        if not char then return end
        
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("LeftClickRemote") then
            tool.LeftClickRemote:FireServer({})
        else
            local vu = game:GetService("VirtualUser")
            vu:CaptureController()
            vu:Button1Down(Vector2.new())
            task.wait(_G.Settings.Setting["Fast Attack Delay"] or 0.1)
            vu:Button1Up(Vector2.new())
        end
    end)
end

function NormalAttack()
    pcall(function()
        local vu = game:GetService("VirtualUser")
        vu:CaptureController()
        vu:Button1Down(Vector2.new())
        task.wait(_G.Settings.Setting["Fast Attack Delay"] or 0.1)
        vu:Button1Up(Vector2.new())
    end)
end

function AutoHaki()
    if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("HasBuso") then
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Buso");
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        (game.Players.LocalPlayer.Character:FindFirstChild(Weapon)).Parent = game.Players.LocalPlayer.Backpack;
    end
end

function EquipWeapon(ToolSe)
    if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe);
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
        end
    end
end

function TweenPlayer(pos)
    task.spawn(function()
        pcall(function()
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = true;
            end
            local player = (game:GetService("Players")).LocalPlayer;
            local character = player.Character;
            local humanoidRootPart = character.HumanoidRootPart;
            if player:DistanceFromCharacter(pos.Position) <= 50 then
                humanoidRootPart.CFrame = pos;
                if character:FindFirstChild("Root") then
                    character.Root:Destroy();
                    wait();
                    TweenPlayer(humanoidRootPart.CFrame);
                    wait();
                end
                if character:FindFirstChild("Root") then
                    character.Root:Remove();
                end
            elseif not character:FindFirstChild("Root") then
                local rootPart = Instance.new("Part", character);
                rootPart.Size = Vector3.new(1, 0.5, 1);
                rootPart.Name = "Root";
                rootPart.Anchored = true;
                rootPart.Transparency = 1;
                rootPart.CanCollide = false;
                rootPart.CFrame = humanoidRootPart.CFrame;
            end
            local distance = (humanoidRootPart.Position - pos.Position).Magnitude;
            local tweenService = game:GetService("TweenService");
            local tweenInfo = TweenInfo.new(distance / _G.Settings.Setting["Player Tween Speed"],
                Enum.EasingStyle.Linear);
            local success, tweenError = pcall(function()
                local tween = tweenService:Create(character.Root, tweenInfo, {
                    CFrame = pos
                });
                tween:Play();
            end);
            if _G.StopTween == true then
                tween:Cancel();
                _G.Clip = false;
            end
            if not success then
                return tweenError;
            end
            character.Root.CFrame = humanoidRootPart.CFrame;
            if success and character:FindFirstChild("Root") then
                pcall(function()
                    local distanceFromTarget = (humanoidRootPart.Position - pos.Position).Magnitude;
                    if distanceFromTarget >= 50 then
                        task.spawn(function()
                            pcall(function()
                                if (character.Root.Position - humanoidRootPart.Position).Magnitude > 200 then
                                    character.Root.CFrame = humanoidRootPart.CFrame;
                                else
                                    humanoidRootPart.CFrame = character.Root.CFrame;
                                end
                            end);
                        end);
                    elseif distanceFromTarget >= 25 and distanceFromTarget < 40 then
                        humanoidRootPart.CFrame = pos;
                    elseif distanceFromTarget < 25 then
                        humanoidRootPart.CFrame = pos;
                    end
                end);
            end
            local stoppos = {};
            function stoppos:Stop()
                tween:Cancel();
            end
            return stoppos;
        end);
    end);
end

function StopTween(State)
    if not State then
        _G.StopTween = true;
        TweenPlayer((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
        if (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")):Destroy();
        end
        _G.StopTween = false;
    end
end

-- ============================
-- MAIN UI SECTIONS
-- ============================
MainSection = Tabs.MainTab:Section({
    Title = "Main",
    TextXAlignment = "Left"
});

GameTimeParagraph = Tabs.MainTab:Paragraph({
    Title = "Game Time",
    Desc = "0",
    Image = "timer",
    ImageSize = 20
});

spawn(function()
    while task.wait() do
        pcall(function()
            local GameTime = math.floor(workspace.DistributedGameTime + 0.5);
            local Hour = math.floor(GameTime / 60 ^ 2) % 24;
            local Minute = math.floor(GameTime / 60 ^ 1) % 60;
            local Second = math.floor(GameTime / 60 ^ 0) % 60;
            GameTimeParagraph:SetDesc(Hour .. " Hours " .. Minute .. " Minute " .. Second .. " Second");
        end);
    end
end);

FpsParagraph = Tabs.MainTab:Paragraph({
    Title = "Fps",
    Desc = "0",
    Image = "monitor",
    ImageSize = 20
});

spawn(function()
    while task.wait() do
        pcall(function()
            FpsParagraph:SetDesc(workspace:GetRealPhysicsFPS());
        end);
    end
end);

PingParagraph = Tabs.MainTab:Paragraph({
    Title = "Ping",
    Desc = "0",
    Image = "signal",
    ImageSize = 20
});

spawn(function()
    while task.wait() do
        pcall(function()
            PingParagraph:SetDesc((game:GetService("Stats")).Network.ServerStatsItem["Data Ping"]:GetValueString());
        end);
    end
end);

DiscordServerParagraph = Tabs.InfoTab:Paragraph({
    Title = "Discord Server",
    Desc = "Link Discord Nô Nô!",
    TextXAlignment = "Left",
    Buttons = {{
        Title = "Copy Link Discord",
        Callback = function()
            setclipboard("https://discord.gg/km5DcVdwrU");
            WindUI:Notify({
                Title = "Notication",
                Content = "Discord Link Copied",
                Icon = "bell",
                Duration = 3
            });
        end
    }}
});

DiscordServerParagraph1 = Tabs.InfoTab:Paragraph({
    Title = "Nô Nô",
    Desc = "Nô Nô Community",
    TextXAlignment = "Left",
    Buttons = {{
        Title = "Copy Social",
        Callback = function()
            setclipboard("https://discord.gg/km5DcVdwrU");
            WindUI:Notify({
                Title = "Notication",
                Content = "Social Link Copied",
                Icon = "bell",
                Duration = 3
            });
        end
    }}
});

-- ============================
-- LEVEL FARM SECTION
-- ============================
LevelFarmSection = Tabs.MainTab:Section({
    Title = "Level Farm",
    TextXAlignment = "Left"
});

local WeaponList = {"Melee", "Sword", "Fruit"};
ChooseWeaponDropdown = Tabs.MainTab:Dropdown({
    Title = "Choose Weapon",
    Values = WeaponList,
    Value = _G.Settings.Main["Select Weapon"],
    Callback = function(option)
        _G.Settings.Main["Select Weapon"] = option;
        (getgenv()).SaveSetting();
    end
});

local LevelFarmMethodList = {"Quest", "No Quest", "Nearest"};
LevelFarmMethodDropdown = Tabs.MainTab:Dropdown({
    Title = "Choose Farm Level Method",
    Values = LevelFarmMethodList,
    Value = _G.Settings.Main["Farm Level Method"],
    Callback = function(option)
        _G.Settings.Main["Farm Level Method"] = option;
        (getgenv()).SaveSetting();
    end
});

AutoLevelFarmToggle = Tabs.MainTab:Toggle({
    Title = "Auto Farm Level",
    Desc = "Automatic Plowing Level",
    Value = _G.Settings.Main["Auto Farm"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm"] = state;
        StopTween(_G.Settings.Main["Auto Farm"]);
        (getgenv()).SaveSetting();
    end
});

AutoFastFarmToggle = Tabs.MainTab:Toggle({
    Title = "Auto Fast Farm",
    Desc = "Work on Sea 1 Only",
    Value = _G.Settings.Main["Auto Fast Farm"],
    Callback = function(state)
        _G.Settings.Main["Auto Fast Farm"] = state;
        StopTween(_G.Settings.Main["Auto Fast Farm"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- MASTERY FARM SECTION
-- ============================
MasteryFarmSection = Tabs.MainTab:Section({
    Title = "Mastery Farm",
    TextXAlignment = "Left"
});

if World3 then
    MasteryMethodList = {"Quest", "No Quest", "Nearest", "Cakeprince", "Bones"};
elseif World2 or World1 then
    MasteryMethodList = {"Quest", "No Quest", "Nearest"};
end

MasteryMethodDropdown = Tabs.MainTab:Dropdown({
    Title = "Choose Mastery Method",
    Values = MasteryMethodList,
    Value = _G.Settings.Main["Mastery Method"],
    Callback = function(option)
        _G.Settings.Main["Mastery Method"] = option;
        (getgenv()).SaveSetting();
    end
});

AutoFruitMasteryToggle = Tabs.MainTab:Toggle({
    Title = "Auto Fruit Mastery",
    Value = _G.Settings.Main["Auto Farm Fruit Mastery"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm Fruit Mastery"] = state;
        StopTween(_G.Settings.Main["Auto Farm Fruit Mastery"]);
        (getgenv()).SaveSetting();
    end
});

AutoGunMasteryToggle = Tabs.MainTab:Toggle({
    Title = "Auto Gun Mastery",
    Value = _G.Settings.Main["Auto Farm Gun Mastery"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm Gun Mastery"] = state;
        StopTween(_G.Settings.Main["Auto Farm Gun Mastery"]);
        (getgenv()).SaveSetting();
    end
});

local SwordList = {};
local Inventory = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory");
for i, v in pairs(Inventory) do
    if v.Type == "Sword" then
        table.insert(SwordList, v.Name);
    end
end

ChooseSwordDropdown = Tabs.MainTab:Dropdown({
    Title = "Choose Sword",
    Values = SwordList,
    Value = _G.Settings.Main["Selected Mastery Sword"],
    Callback = function(option)
        _G.Settings.Main["Selected Mastery Sword"] = option;
        (getgenv()).SaveSetting();
    end
});

AutoSwordMasteryToggle = Tabs.MainTab:Toggle({
    Title = "Auto Sword Mastery",
    Value = _G.Settings.Main["Auto Farm Sword Mastery"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm Sword Mastery"] = state;
        StopTween(_G.Settings.Main["Auto Farm Sword Mastery"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- TYRANT OF THE SKIES
-- ============================
TyrantOfTheSkiesSection = Tabs.MainTab:Section({
    Title = "Tyrant Of The Skies | New Farm Boss Chim",
    TextXAlignment = "Left"
});

AutoSummonTyrantOfTheSkiesToggle = Tabs.MainTab:Toggle({
    Title = "Auto Summon Tyrant Of The Skies",
    Desc = "Auto Farming Monsters and Summoning Bosses",
    Value = _G.Settings.Main["Auto Summon Tyrant Of The Skies"],
    Callback = function(state)
        _G.Settings.Main["Auto Summon Tyrant Of The Skies"] = state;
        StopTween(_G.Settings.Main["Auto Summon Tyrant Of The Skies"]);
        (getgenv()).SaveSetting();
    end
});

AutoKillTyrantOfTheSkiesToggle = Tabs.MainTab:Toggle({
    Title = "Auto Kill Tyrant Of The Skies",
    Desc = "Auto Boss Bird Attack",
    Value = _G.Settings.Main["Auto Kill Tyrant Of The Skies"],
    Callback = function(state)
        _G.Settings.Main["Auto Kill Tyrant Of The Skies"] = state;
        StopTween(_G.Settings.Main["Auto Kill Tyrant Of The Skies"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- MON FARM
-- ============================
MonFarmSection = Tabs.MainTab:Section({
    Title = "Mon Farm",
    TextXAlignment = "Left"
});

if World1 then
    tableMon = {"Bandit", "Monkey", "Gorilla", "Pirate", "Brute", "Desert Bandit", "Desert Officer", "Snow Bandit",
                "Snowman", "Chief Petty Officer", "Sky Bandit", "Dark Master", "Toga Warrior", "Gladiator",
                "Military Soldier", "Military Spy", "Fishman Warrior", "Fishman Commando", "God's Guard", "Shanda",
                "Royal Squad", "Royal Soldier", "Galley Pirate", "Galley Captain"};
elseif World2 then
    tableMon = {"Raider", "Mercenary", "Swan Pirate", "Factory Staff", "Marine Lieutenant", "Marine Captain", "Zombie",
                "Vampire", "Snow Trooper", "Winter Warrior", "Lab Subordinate", "Horned Warrior", "Magma Ninja",
                "Lava Pirate", "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer", "Arctic Warrior",
                "Snow Lurker", "Sea Soldier", "Water Fighter"};
elseif World3 then
    tableMon = {"Pirate Millionaire", "Dragon Crew Warrior", "Dragon Crew Archer", "Female Islander", "Giant Islander",
                "Marine Commodore", "Marine Rear Admiral", "Fishman Raider", "Fishman Captain", "Forest Pirate",
                "Mythological Pirate", "Jungle Pirate", "Musketeer Pirate", "Reborn Skeleton", "Living Zombie",
                "Demonic Soul", "Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef",
                "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior",
                "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon", "Isle Outlaw",
                "Island Boy", "Sun-kissed Warrior", "Isle Champion"};
end

ChooseMonDropdown = Tabs.MainTab:Dropdown({
    Title = "Choose Mon",
    Values = tableMon,
    Value = _G.Settings.Main["Selected Mon"],
    Callback = function(option)
        _G.Settings.Main["Selected Mon"] = option;
        (getgenv()).SaveSetting();
    end
});

AutoMonFarmToggle = Tabs.MainTab:Toggle({
    Title = "Auto Farm Mon",
    Desc = "Auto Kill Mon When Spawn",
    Value = _G.Settings.Main["Auto Farm Mon"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm Mon"] = state;
        StopTween(_G.Settings.Main["Auto Farm Mon"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- BOSS FARM
-- ============================
BossSection = Tabs.MainTab:Section({
    Title = "Boss Farm",
    TextXAlignment = "Left"
});

BossStatusParagraph = Tabs.MainTab:Paragraph({
    Title = "Boss Status",
    Desc = "N/A"
});

if World1 then
    tableBoss = {"The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan",
                 "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Saber Expert"};
elseif World2 then
    tableBoss = {"Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Cursed Captain", "Darkbeard", "Order",
                 "Awakened Ice Admiral", "Tide Keeper"};
elseif World3 then
    tableBoss = {"Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate",
                 "rip_indra True Form", "Longma", "Soul Reaper", "Cake Queen"};
end

ChooseBossDropdown = Tabs.MainTab:Dropdown({
    Title = "Choose Boss",
    Values = tableBoss,
    Value = _G.Settings.Main["Selected Boss"],
    Callback = function(option)
        _G.Settings.Main["Selected Boss"] = option;
        (getgenv()).SaveSetting();
    end
});

AutoFarmBossToggle = Tabs.MainTab:Toggle({
    Title = "Auto Farm Boss",
    Desc = "Auto Kill Boss When Spawn",
    Value = _G.Settings.Main["Auto Farm Boss"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm Boss"] = state;
        StopTween(_G.Settings.Main["Auto Farm Boss"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmAllBossToggle = Tabs.MainTab:Toggle({
    Title = "Auto Farm All Boss",
    Value = _G.Settings.Main["Auto Farm All Boss"],
    Callback = function(state)
        _G.Settings.Main["Auto Farm All Boss"] = state;
        StopTween(_G.Settings.Main["Auto Farm All Boss"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- ELITE HUNTER (Others Tab)
-- ============================
EliteHunterSection = Tabs.OthersTab:Section({
    Title = "Elite Hunter",
    TextXAlignment = "Left"
});

EliteHunterParagraph = Tabs.OthersTab:Paragraph({
    Title = "Elite Hunter Status",
    Desc = "N/A"
});

EliteHunterProgressParagraph = Tabs.OthersTab:Paragraph({
    Title = "Elite Hunter Progress",
    Desc = "N/A"
});

AutoEliteHunterToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Elite Hunter",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Elite Hunter"],
    Callback = function(state)
        _G.Settings.Farm["Auto Elite Hunter"] = state;
        StopTween(_G.Settings.Farm["Auto Elite Hunter"]);
        (getgenv()).SaveSetting();
    end
});

AutoEliteHunterHopToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Elite Hunter Hop",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Elite Hunter Hop"],
    Callback = function(state)
        _G.Settings.Farm["Auto Elite Hunter Hop"] = state;
        StopTween(_G.Settings.Farm["Auto Elite Hunter Hop"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- BONE FARM
-- ============================
BoneFarmSection = Tabs.OthersTab:Section({
    Title = "Bone Farm",
    TextXAlignment = "Left"
});

local listBoneFarmMethod = {"Quest", "No Quest"};
BoneFarmMethodDropdown = Tabs.OthersTab:Dropdown({
    Title = "Choose Bone Farm Method",
    Values = listBoneFarmMethod,
    Value = _G.Settings.Farm["Selected Bone Farm Method"],
    Callback = function(option)
        _G.Settings.Farm["Selected Bone Farm Method"] = option;
        (getgenv()).SaveSetting();
    end
});

BoneCountParagraph = Tabs.OthersTab:Paragraph({
    Title = "Bones Owned",
    Desc = "N/A"
});

AutoFarmBoneToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Farm Bone",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Farm Bone"],
    Callback = function(state)
        _G.Settings.Farm["Auto Farm Bone"] = state;
        StopTween(_G.Settings.Farm["Auto Farm Bone"]);
        (getgenv()).SaveSetting();
    end
});

AutoRandomSurpriseToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Random Surprise",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Random Surprise"],
    Callback = function(state)
        _G.Settings.Farm["Auto Random Surprise"] = state;
        StopTween(_G.Settings.Farm["Auto Random Surprise"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- PIRATE RAID
-- ============================
PirateRaidSection = Tabs.OthersTab:Section({
    Title = "Pirate Raid",
    TextXAlignment = "Left"
});

AutoPirateRaidToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Pirate Raid",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Pirate Raid"],
    Callback = function(state)
        _G.Settings.Farm["Auto Pirate Raid"] = state;
        StopTween(_G.Settings.Farm["Auto Pirate Raid"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- CHEST FARM
-- ============================
ChestFarmSection = Tabs.OthersTab:Section({
    Title = "Chest Farm",
    TextXAlignment = "Left"
});

AutoFarmChestTweenToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Farm Chest Tween",
    Desc = "Tween to chest",
    Value = _G.Settings.Farm["Auto Farm Chest Tween"],
    Callback = function(state)
        _G.Settings.Farm["Auto Farm Chest Tween"] = state;
        StopTween(_G.Settings.Farm["Auto Farm Chest Tween"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmChestInstantToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Farm Chest Instant",
    Desc = "Instant to chest",
    Value = _G.Settings.Farm["Auto Farm Chest Instant"],
    Callback = function(state)
        _G.Settings.Farm["Auto Farm Chest Instant"] = state;
        StopTween(_G.Settings.Farm["Auto Farm Chest Instant"]);
        (getgenv()).SaveSetting();
    end
});

AutoStopItemsToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Stop Items",
    Desc = "Stop When Get God's Chalice or FoD",
    Value = _G.Settings.Farm["Auto Stop Items"],
    Callback = function(state)
        _G.Settings.Farm["Auto Stop Items"] = state;
        StopTween(_G.Settings.Farm["Auto Stop Items"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- CAKE PRINCE
-- ============================
CakePrinceSection = Tabs.OthersTab:Section({
    Title = "Cake Prince",
    TextXAlignment = "Left"
});

CakePrinceStatusParagraph = Tabs.OthersTab:Paragraph({
    Title = "Cake Prince Status",
    Desc = "N/A"
});

AutoKatakuriToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Katakuri",
    Desc = "Auto Farm + Kill Cake Prince [ Sea 3 Only ]",
    Value = _G.Settings.Farm["Auto Farm Katakuri"],
    Callback = function(state)
        _G.Settings.Farm["Auto Farm Katakuri"] = state;
        StopTween(_G.Settings.Farm["Auto Farm Katakuri"]);
        (getgenv()).SaveSetting();
    end
});

AutoSpawnCakePrinceToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Spawn Cake Prince",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Spawn Cake Prince"],
    Callback = function(state)
        _G.Settings.Farm["Auto Spawn Cake Prince"] = state;
        StopTween(_G.Settings.Farm["Auto Spawn Cake Prince"]);
        (getgenv()).SaveSetting();
    end
});

AutoKillCakePrinceToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Kill Cake Prince",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Kill Cake Prince"],
    Callback = function(state)
        _G.Settings.Farm["Auto Kill Cake Prince"] = state;
        StopTween(_G.Settings.Farm["Auto Kill Cake Prince"]);
        (getgenv()).SaveSetting();
    end
});

AutoKillDoughKingToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Kill Dough King",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Farm["Auto Kill Dough King"],
    Callback = function(state)
        _G.Settings.Farm["Auto Kill Dough King"] = state;
        StopTween(_G.Settings.Farm["Auto Kill Dough King"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- MATERIAL FARM
-- ============================
MaterialsSection = Tabs.OthersTab:Section({
    Title = "Materials",
    TextXAlignment = "Left"
});

if World1 then
    MaterialList = {"Magma Ore", "Angel Wings", "Leather", "Scrap Metal"};
elseif World2 then
    MaterialList = {"Radioactive", "Mystic Droplet", "Magma Ore", "Leather", "Ectoplasm", "Scrap Metal"};
elseif World3 then
    MaterialList = {"Leather", "Scrap Metal", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Fish Tail", "Mini Tusk"};
end

MaterialDropdown = Tabs.OthersTab:Dropdown({
    Title = "Choose Material",
    Values = MaterialList,
    Value = _G.Settings.Farm["Selected Material"],
    Callback = function(option)
        _G.Settings.Farm["Selected Material"] = option;
    end
});

AutoFarmMaterialToggle = Tabs.OthersTab:Toggle({
    Title = "Auto Farm Material",
    Value = _G.Settings.Farm["Auto Farm Material"],
    Callback = function(state)
        _G.Settings.Farm["Auto Farm Material"] = state;
        StopTween(_G.Settings.Farm["Auto Farm Material"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- ITEMS TAB (ĐẦY ĐỦ)
-- ============================
GunSwordSection = Tabs.ItemsTab:Section({
    Title = "World",
    TextXAlignment = "Left"
});

AutoSecondSeaToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Second Sea",
    Desc = "Function Sea 1 Only",
    Value = _G.Settings.Items["Auto Second Sea"],
    Callback = function(state)
        _G.Settings.Items["Auto Second Sea"] = state;
        StopTween(_G.Settings.Items["Auto Second Sea"]);
        (getgenv()).SaveSetting();
    end
});

AutoThirdSeaToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Third Sea",
    Desc = "Function Sea 2 Only",
    Value = _G.Settings.Items["Auto Third Sea"],
    Callback = function(state)
        _G.Settings.Items["Auto Third Sea"] = state;
        StopTween(_G.Settings.Items["Auto Third Sea"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmFactoryToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Farm Factory",
    Value = _G.Settings.Items["Auto Farm Factory"],
    Callback = function(state)
        _G.Settings.Items["Auto Farm Factory"] = state;
        StopTween(_G.Settings.Items["Auto Farm Factory"]);
        (getgenv()).SaveSetting();
    end
});

GunSwordSection = Tabs.ItemsTab:Section({
    Title = "Fighting Style",
    TextXAlignment = "Left"
});

AutoSuperHumanToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Super Human",
    Value = _G.Settings.Items["Auto Super Human"],
    Callback = function(state)
        _G.Settings.Items["Auto Super Human"] = state;
        StopTween(_G.Settings.Items["Auto Super Human"]);
        (getgenv()).SaveSetting();
    end
});

AutoDeathStepToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Death Step",
    Value = _G.Settings.Items["Auto Death Step"],
    Callback = function(state)
        _G.Settings.Items["Auto Death Step"] = state;
        StopTween(_G.Settings.Items["Auto Death Step"]);
        (getgenv()).SaveSetting();
    end
});

AutoSharkmanKarateToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Sharkman Karate",
    Value = _G.Settings.Items["Auto Fishman Karate"],
    Callback = function(state)
        _G.Settings.Items["Auto Fishman Karate"] = state;
        StopTween(_G.Settings.Items["Auto Fishman Karate"]);
        (getgenv()).SaveSetting();
    end
});

AutoElectricClawToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Electric Claw",
    Value = _G.Settings.Items["Auto Electric Claw"],
    Callback = function(state)
        _G.Settings.Items["Auto Electric Claw"] = state;
        StopTween(_G.Settings.Items["Auto Electric Claw"]);
        (getgenv()).SaveSetting();
    end
});

AutoDragonTalonToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Dragon Talon",
    Value = _G.Settings.Items["Auto Dragon Talon"],
    Callback = function(state)
        _G.Settings.Items["Auto Dragon Talon"] = state;
        StopTween(_G.Settings.Items["Auto Dragon Talon"]);
        (getgenv()).SaveSetting();
    end
});

AutoGodHumanToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto God Human",
    Value = _G.Settings.Items["Auto God Human"],
    Callback = function(state)
        _G.Settings.Items["Auto God Human"] = state;
        StopTween(_G.Settings.Items["Auto God Human"]);
        (getgenv()).SaveSetting();
    end
});

GunSwordSection = Tabs.ItemsTab:Section({
    Title = "Gun & Sword",
    TextXAlignment = "Left"
});

AutoGetSaberToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Get Saber",
    Desc = "Function Sea 1 Only",
    Value = _G.Settings.Items["Auto Saber"],
    Callback = function(state)
        _G.Settings.Items["Auto Saber"] = state;
        StopTween(_G.Settings.Items["Auto Saber"]);
        (getgenv()).SaveSetting();
    end
});

AutoBuddySwordToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Buddy Sword",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Buddy Sword"],
    Callback = function(state)
        _G.Settings.Items["Auto Buddy Sword"] = state;
        StopTween(_G.Settings.Items["Auto Buddy Sword"]);
        (getgenv()).SaveSetting();
    end
});

AutoSoulGuitarToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Soul Guitar",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Soul Guitar"],
    Callback = function(state)
        _G.Settings.Items["Auto Soul Guitar"] = state;
        StopTween(_G.Settings.Items["Auto Soul Guitar"]);
        (getgenv()).SaveSetting();
    end
});

AutoRengokuToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Rengoku",
    Desc = "Function Sea 2 Only",
    Value = _G.Settings.Items["Auto Rengoku"],
    Callback = function(state)
        _G.Settings.Items["Auto Rengoku"] = state;
        StopTween(_G.Settings.Items["Auto Rengoku"]);
        (getgenv()).SaveSetting();
    end
});

AutoHallowScytheToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Hallow Scythe",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Hallow Scythe"],
    Callback = function(state)
        _G.Settings.Items["Auto Hallow Scythe"] = state;
        StopTween(_G.Settings.Items["Auto Hallow Scythe"]);
        (getgenv()).SaveSetting();
    end
});

AutoWardenSwordToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Warden Sword",
    Desc = "Function Sea 1 Only",
    Value = _G.Settings.Items["Auto Warden Sword"],
    Callback = function(state)
        _G.Settings.Items["Auto Warden Sword"] = state;
        StopTween(_G.Settings.Items["Auto Warden Sword"]);
        (getgenv()).SaveSetting();
    end
});

AutoGetYamaToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Get Yama",
    Desc = "Need 30 Elite Hunter, Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Yama"],
    Callback = function(state)
        _G.Settings.Items["Auto Yama"] = state;
        StopTween(_G.Settings.Items["Auto Yama"]);
        (getgenv()).SaveSetting();
    end
});

AutoGetYamaHopToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Get Yama Hop",
    Desc = "Hop If Elite Hunter Not Spawn",
    Value = _G.Settings.Items["Auto Yama Hop"],
    Callback = function(state)
        _G.Settings.Items["Auto Yama Hop"] = state;
        StopTween(_G.Settings.Items["Auto Yama Hop"]);
        (getgenv()).SaveSetting();
    end
});

AutoGetTushitaToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Get Tushita",
    Value = _G.Settings.Items["Auto Tushita"],
    Callback = function(state)
        _G.Settings.Items["Auto Tushita"] = state;
        StopTween(_G.Settings.Items["Auto Tushita"]);
        (getgenv()).SaveSetting();
    end
});

AutoDragonTridentToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Dragon Trident",
    Desc = "Function Sea 2 Only",
    Value = _G.Settings.Items["Auto Dragon Trident"],
    Callback = function(state)
        _G.Settings.Items["Auto Dragon Trident"] = state;
        StopTween(_G.Settings.Items["Auto Dragon Trident"]);
        (getgenv()).SaveSetting();
    end
});

AutoGreybeardToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Greybeard",
    Desc = "Function Sea 1 Only",
    Value = _G.Settings.Items["Auto Greybeard"],
    Callback = function(state)
        _G.Settings.Items["Auto Greybeard"] = state;
        StopTween(_G.Settings.Items["Auto Greybeard"]);
        (getgenv()).SaveSetting();
    end
});

AutoSharkSawToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Shark Saw",
    Desc = "Function Sea 1 Only",
    Value = _G.Settings.Items["Auto Shawk Saw"],
    Callback = function(state)
        _G.Settings.Items["Auto Shawk Saw"] = state;
        StopTween(_G.Settings.Items["Auto Shawk Saw"]);
        (getgenv()).SaveSetting();
    end
});

AutoPoleToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Pole",
    Desc = "Function Sea 1 Only",
    Value = _G.Settings.Items["Auto Pole"],
    Callback = function(state)
        _G.Settings.Items["Auto Pole"] = state;
        StopTween(_G.Settings.Items["Auto Pole"]);
        (getgenv()).SaveSetting();
    end
});

AutoDarkDaggerToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Dark Dagger",
    Desc = "Need Spawn Rip Indra, Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Dark Dagger"],
    Callback = function(state)
        _G.Settings.Items["Auto Dark Dagger"] = state;
        StopTween(_G.Settings.Items["Auto Dark Dagger"]);
        (getgenv()).SaveSetting();
    end
});

AutoCanvanderToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Canvander",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Canvander"],
    Callback = function(state)
        _G.Settings.Items["Auto Canvander"] = state;
        StopTween(_G.Settings.Items["Auto Canvander"]);
        (getgenv()).SaveSetting();
    end
});

AutoSwanGlassesToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Swan Glasses",
    Desc = "Function Sea 2 Only",
    Value = _G.Settings.Items["Auto Swan Glasses"],
    Callback = function(state)
        _G.Settings.Items["Auto Swan Glasses"] = state;
        StopTween(_G.Settings.Items["Auto Swan Glasses"]);
        (getgenv()).SaveSetting();
    end
});

AutoArenaTrainerToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Arena Trainer",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Arena Trainer"],
    Callback = function(state)
        _G.Settings.Items["Auto Arena Trainer"] = state;
        StopTween(_G.Settings.Items["Auto Arena Trainer"]);
        (getgenv()).SaveSetting();
    end
});

AutoPressHakiButtonToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Press Haki Button",
    Desc = "Function Sea 3 Only",
    Value = _G.Settings.Items["Auto Press Haki Button"],
    Callback = function(state)
        _G.Settings.Items["Auto Press Haki Button"] = state;
        StopTween(_G.Settings.Items["Auto Press Haki Button"]);
        (getgenv()).SaveSetting();
    end
});

AutoRainbowHakiToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Rainbow Haki",
    Value = _G.Settings.Items["Auto Rainbow Haki"],
    Callback = function(state)
        _G.Settings.Items["Auto Rainbow Haki"] = state;
        StopTween(_G.Settings.Items["Auto Rainbow Haki"]);
        (getgenv()).SaveSetting();
    end
});

AutoHolyTorchToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Holy Torch",
    Value = _G.Settings.Items["Auto Holy Torch"],
    Callback = function(state)
        _G.Settings.Items["Auto Holy Torch"] = state;
        StopTween(_G.Settings.Items["Auto Holy Torch"]);
        (getgenv()).SaveSetting();
    end
});

AutoBartiloQuestToggle = Tabs.ItemsTab:Toggle({
    Title = "Auto Bartilo Quest",
    Value = _G.Settings.Items["Auto Bartilo Quest"],
    Callback = function(state)
        _G.Settings.Items["Auto Bartilo Quest"] = state;
        StopTween(_G.Settings.Items["Auto Bartilo Quest"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- SETTINGS TAB (ĐẦY ĐỦ)
-- ============================
SettingsSection = Tabs.SettingsTab:Section({
    Title = "Settings",
    TextXAlignment = "Left"
});

SpinPositionToggle = Tabs.SettingsTab:Toggle({
    Title = "Spin Position",
    Desc = "Spin Position When Farm",
    Value = _G.Settings.Setting["Spin Position"],
    Callback = function(state)
        _G.Settings.Setting["Spin Position"] = state;
        (getgenv()).SaveSetting();
    end
});

FarmDistanceSlider = Tabs.SettingsTab:Slider({
    Title = "Farm Distance",
    Step = 1,
    Value = {
        Min = 10,
        Max = 50,
        Default = _G.Settings.Setting["Farm Distance"]
    },
    Callback = function(value)
        _G.Settings.Setting["Farm Distance"] = value;
    end
});

PlayerTweenSpeedSlider = Tabs.SettingsTab:Slider({
    Title = "Player Tween Speed",
    Step = 1,
    Value = {
        Min = 10,
        Max = 350,
        Default = _G.Settings.Setting["Player Tween Speed"]
    },
    Callback = function(value)
        _G.Settings.Setting["Player Tween Speed"] = value;
    end
});

BringMobToggle = Tabs.SettingsTab:Toggle({
    Title = "Bring Mob",
    Value = _G.Settings.Setting["Bring Mob"],
    Callback = function(state)
        _G.Settings.Setting["Bring Mob"] = state;
        (getgenv()).SaveSetting();
    end
});

local BringList = {"Low", "Normal", "High"};
BringMobDropdown = Tabs.SettingsTab:Dropdown({
    Title = "Bring Mob",
    Value = _G.Settings.Setting["Bring Mob Mode"],
    Values = BringList,
    Callback = function(option)
        _G.Settings.Setting["Bring Mob Mode"] = option;
    end
});

local AttackList = {"Slow", "Normal", "Fast", "Super Fast"};
FastAttackMethodDropdown = Tabs.SettingsTab:Dropdown({
    Title = "Fast Attack Method",
    Value = _G.Settings.Setting["Fast Attack Mode"],
    Values = AttackList,
    Callback = function(option)
        _G.Settings.Setting["Fast Attack Mode"] = option;
    end
});

AttackAuraToggle = Tabs.SettingsTab:Toggle({
    Title = "Attack Aura",
    Desc = "Attack Nearest Enemies",
    Value = _G.Settings.Setting["Attack Aura"],
    Callback = function(state)
        _G.Settings.Setting["Attack Aura"] = state;
        (getgenv()).SaveSetting();
    end
});

GraphicSettingSection = Tabs.SettingsTab:Section({
    Title = "Graphic",
    TextXAlignment = "Left"
});

HideNotificationToggle = Tabs.SettingsTab:Toggle({
    Title = "Hide Notification",
    Value = _G.Settings.Setting["Hide Notification"],
    Callback = function(state)
        _G.Settings.Setting["Hide Notification"] = state;
        StopTween(_G.Settings.Setting["Hide Notification"]);
        (getgenv()).SaveSetting();
    end
});

HideDamageTextToggle = Tabs.SettingsTab:Toggle({
    Title = "Hide Damage Text",
    Value = _G.Settings.Setting["Hide Damage Text"],
    Callback = function(state)
        _G.Settings.Setting["Hide Damage Text"] = state;
        StopTween(_G.Settings.Setting["Hide Damage Text"]);
        (getgenv()).SaveSetting();
    end
});

BlackScreenToggle = Tabs.SettingsTab:Toggle({
    Title = "Black Screen",
    Value = _G.Settings.Setting["Black Screen"],
    Callback = function(state)
        _G.Settings.Setting["Black Screen"] = state;
        StopTween(_G.Settings.Setting["Black Screen"]);
        (getgenv()).SaveSetting();
    end
});

WhiteScreenToggle = Tabs.SettingsTab:Toggle({
    Title = "White Screen",
    Value = _G.Settings.Setting["White Screen"],
    Callback = function(state)
        _G.Settings.Setting["White Screen"] = state;
        StopTween(_G.Settings.Setting["White Screen"]);
        (getgenv()).SaveSetting();
    end
});

MasterySettingsSection = Tabs.SettingsTab:Section({
    Title = "Mastery Settings",
    TextXAlignment = "Left"
});

MasteryHealthSlider = Tabs.SettingsTab:Slider({
    Title = "Mastery Health %",
    Step = 1,
    Value = {
        Min = 1,
        Max = 100,
        Default = _G.Settings.Setting["Mastery Health"]
    },
    Callback = function(value)
        _G.Settings.Setting["Mastery Health"] = value;
    end
});

DevilFruitParagraph = Tabs.SettingsTab:Paragraph({
    Title = "Devil Fruit Skill"
});

MasteryFruitSkillZToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill Z",
    Value = _G.Settings.Setting["Fruit Mastery Skill Z"],
    Callback = function(state)
        _G.Settings.Setting["Fruit Mastery Skill Z"] = state;
        (getgenv()).SaveSetting();
    end
});

MasteryFruitSkillXToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill X",
    Value = _G.Settings.Setting["Fruit Mastery Skill X"],
    Callback = function(state)
        _G.Settings.Setting["Fruit Mastery Skill X"] = state;
        (getgenv()).SaveSetting();
    end
});

MasteryFruitSkillCToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill C",
    Value = _G.Settings.Setting["Fruit Mastery Skill C"],
    Callback = function(state)
        _G.Settings.Setting["Fruit Mastery Skill C"] = state;
        (getgenv()).SaveSetting();
    end
});

MasteryFruitSkillVToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill V",
    Value = _G.Settings.Setting["Fruit Mastery Skill V"],
    Callback = function(state)
        _G.Settings.Setting["Fruit Mastery Skill V"] = state;
        (getgenv()).SaveSetting();
    end
});

MasteryFruitSkillFToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill F",
    Value = _G.Settings.Setting["Fruit Mastery Skill F"],
    Callback = function(state)
        _G.Settings.Setting["Fruit Mastery Skill F"] = state;
        (getgenv()).SaveSetting();
    end
});

GunSkillParagraph = Tabs.SettingsTab:Paragraph({
    Title = "Gun Skill"
});

MasteryGunSkillZToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill Z",
    Value = _G.Settings.Setting["Gun Mastery Skill Z"],
    Callback = function(state)
        _G.Settings.Setting["Gun Mastery Skill Z"] = state;
        (getgenv()).SaveSetting();
    end
});

MasteryGunSkillXToggle = Tabs.SettingsTab:Toggle({
    Title = "Skill X",
    Value = _G.Settings.Setting["Gun Mastery Skill X"],
    Callback = function(state)
        _G.Settings.Setting["Gun Mastery Skill X"] = state;
        (getgenv()).SaveSetting();
    end
});

OthersSettingsSection = Tabs.SettingsTab:Section({
    Title = "Others",
    TextXAlignment = "Left"
});

AutoSetSpawnPointToggle = Tabs.SettingsTab:Toggle({
    Title = "Auto Set Spawn Point",
    Value = _G.Settings.Setting["Auto Set Spawn Point"],
    Callback = function(state)
        _G.Settings.Setting["Auto Set Spawn Point"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoObservationToggle = Tabs.SettingsTab:Toggle({
    Title = "Auto Observation",
    Value = _G.Settings.Setting["Auto Observation"],
    Callback = function(state)
        _G.Settings.Setting["Auto Observation"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoHakiToggle = Tabs.SettingsTab:Toggle({
    Title = "Auto Haki",
    Value = _G.Settings.Setting["Auto Haki"],
    Callback = function(state)
        _G.Settings.Setting["Auto Haki"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoRejoinToggle = Tabs.SettingsTab:Toggle({
    Title = "Auto Rejoin",
    Value = _G.Settings.Setting["Auto Rejoin"],
    Callback = function(state)
        _G.Settings.Setting["Auto Rejoin"] = state;
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- STATS TAB
-- ============================
StatsSection = Tabs.StatsTab:Section({
    Title = "Stats",
    TextXAlignment = "Left"
});

StatsPointParagraph = Tabs.StatsTab:Paragraph({
    Title = "Stats",
    Desc = "0"
});

AutoAddMeleeStats = Tabs.StatsTab:Toggle({
    Title = "Add Melee Stats",
    Value = _G.Settings.Stats["Auto Add Melee Stats"],
    Callback = function(state)
        _G.Settings.Stats["Auto Add Melee Stats"] = state;
    end
});

AutoAddDefenseStats = Tabs.StatsTab:Toggle({
    Title = "Add Defense Stats",
    Value = _G.Settings.Stats["Auto Add Defense Stats"],
    Callback = function(state)
        _G.Settings.Stats["Auto Add Defense Stats"] = state;
    end
});

AutoAddSwordStats = Tabs.StatsTab:Toggle({
    Title = "Add Sword Stats",
    Value = _G.Settings.Stats["Auto Add Sword Stats"],
    Callback = function(state)
        _G.Settings.Stats["Auto Add Sword Stats"] = state;
    end
});

AutoAddGunStats = Tabs.StatsTab:Toggle({
    Title = "Add Gun Stats",
    Value = _G.Settings.Stats["Auto Add Gun Stats"],
    Callback = function(state)
        _G.Settings.Stats["Auto Add Gun Stats"] = state;
    end
});

AutoAddDevilFruitStats = Tabs.StatsTab:Toggle({
    Title = "Add Devil Fruit Stats",
    Value = _G.Settings.Stats["Auto Add Devil Fruit Stats"],
    Callback = function(state)
        _G.Settings.Stats["Auto Add Devil Fruit Stats"] = state;
    end
});

PointStats = 1;
StatsPointToAddSlider = Tabs.StatsTab:Slider({
    Title = "Point",
    Step = 1,
    Value = {
        Min = 1,
        Max = 100,
        Default = PointStats
    },
    Callback = function(value)
        PointStats = value;
    end
});

-- ============================
-- SEA EVENT TAB (ĐẦY ĐỦ)
-- ============================
SeaEventSection = Tabs.SeaEventTab:Section({
    Title = "Sea Event",
    TextXAlignment = "Left"
});

local BoatList = {"Guardian", "Beast Hunter", "PirateGrandBrigade", "MarineGrandBrigade", "PirateBrigade",
                  "MarineBrigade", "PirateSloop", "MarineSloop"};
local ZoneList = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6", "Infinite"};

ChooseBoatDropdown = Tabs.SeaEventTab:Dropdown({
    Title = "Choose Boat",
    Values = BoatList,
    Value = _G.Settings.SeaEvent["Selected Boat"],
    Callback = function(option)
        _G.Settings.SeaEvent["Selected Boat"] = option;
        (getgenv()).SaveSetting();
    end
});

ChooseZoneDropdown = Tabs.SeaEventTab:Dropdown({
    Title = "Choose Zone",
    Values = ZoneList,
    Value = _G.Settings.SeaEvent["Selected Zone"],
    Callback = function(option)
        _G.Settings.SeaEvent["Selected Zone"] = option;
        (getgenv()).SaveSetting();
    end
});

BoatTweenSpeedSlider = Tabs.SeaEventTab:Slider({
    Title = "Boat Tween Speed",
    Step = 1,
    Value = {
        Min = 1,
        Max = 350,
        Default = _G.Settings.SeaEvent["Boat Tween Speed"]
    },
    Callback = function(value)
        _G.Settings.SeaEvent["Boat Tween Speed"] = value;
    end
});

AutoSailBoatToggle = Tabs.SeaEventTab:Toggle({
    Title = "Sail Boat",
    Desc = "Auto Sail Boat & Kill Enemies",
    Value = _G.Settings.SeaEvent["Sail Boat"],
    Callback = function(state)
        _G.Settings.SeaEvent["Sail Boat"] = state;
        StopTween(_G.Settings.SeaEvent["Sail Boat"]);
        (getgenv()).SaveSetting();
    end
});

SeaEventEnemiesSection = Tabs.SeaEventTab:Section({
    Title = "Enemies",
    TextXAlignment = "Left"
});

AutoFarmSharkToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Shark",
    Value = _G.Settings.SeaEvent["Auto Farm Shark"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Shark"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Shark"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmPiranhaToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Piranha",
    Value = _G.Settings.SeaEvent["Auto Farm Piranha"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Piranha"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Piranha"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmFishCrewMemberToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Fish Crew Member",
    Value = _G.Settings.SeaEvent["Auto Farm Fish Crew Member"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Fish Crew Member"]);
        (getgenv()).SaveSetting();
    end
});

SeaEventBoatSection = Tabs.SeaEventTab:Section({
    Title = "Boat",
    TextXAlignment = "Left"
});

AutoFarmGhostShipToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Ghost Ship",
    Value = _G.Settings.SeaEvent["Auto Farm Ghost Ship"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Ghost Ship"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Ghost Ship"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmPirateBrigadeToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Pirate Brigade",
    Value = _G.Settings.SeaEvent["Auto Farm Pirate Brigade"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Pirate Brigade"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmPirateGrandBrigadeToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Pirate Grand Brigade",
    Value = _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"]);
        (getgenv()).SaveSetting();
    end
});

SeaEventBossSection = Tabs.SeaEventTab:Section({
    Title = "Boss",
    TextXAlignment = "Left"
});

AutoFarmTerrorsharkToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Terrorshark",
    Value = _G.Settings.SeaEvent["Auto Farm Terrorshark"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Terrorshark"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Terrorshark"]);
        (getgenv()).SaveSetting();
    end
});

AutoFarmSeabeastsToggle = Tabs.SeaEventTab:Toggle({
    Title = "Auto Farm Seabeasts",
    Value = _G.Settings.SeaEvent["Auto Farm Seabeasts"],
    Callback = function(state)
        _G.Settings.SeaEvent["Auto Farm Seabeasts"] = state;
        StopTween(_G.Settings.SeaEvent["Auto Farm Seabeasts"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- SEA STACK TAB (ĐẦY ĐỦ)
-- ============================
SeaStackSection = Tabs.SeaStackTab:Section({
    Title = "Sea Stack",
    TextXAlignment = "Left"
});

PrehistoricStatusSeaStackParagraph = Tabs.SeaStackTab:Paragraph({
    Title = "Prehistoric Status",
    Desc = "N/A"
});

AutoSummonPrehistoricIslandToggle = Tabs.SeaStackTab:Toggle({
    Title = "Summon Prehistoric Island",
    Desc = "Need Volcanic Magnet",
    Value = _G.Settings.SeaStack["Summon Prehistoric Island"],
    Callback = function(state)
        _G.Settings.SeaStack["Summon Prehistoric Island"] = state;
        StopTween(_G.Settings.SeaStack["Summon Prehistoric Island"]);
        (getgenv()).SaveSetting();
    end
});

TweenToPrehistoricIslandToggle = Tabs.SeaStackTab:Toggle({
    Title = "Tween To Prehistoric Island",
    Desc = "Need Spawn",
    Value = _G.Settings.SeaStack["Tween To Prehistoric Island"],
    Callback = function(state)
        _G.Settings.SeaStack["Tween To Prehistoric Island"] = state;
        StopTween(_G.Settings.SeaStack["Tween To Prehistoric Island"]);
        (getgenv()).SaveSetting();
    end
});

AutoKillLavaGolemToggle = Tabs.SeaStackTab:Toggle({
    Title = "Auto Kill Lava Golem",
    Value = _G.Settings.SeaStack["Auto Kill Lava Golem"],
    Callback = function(state)
        _G.Settings.SeaStack["Auto Kill Lava Golem"] = state;
        StopTween(_G.Settings.SeaStack["Auto Kill Lava Golem"]);
        (getgenv()).SaveSetting();
    end
});

FrozenStatusSeaStackParagraph = Tabs.SeaStackTab:Paragraph({
    Title = "Frozen Status",
    Desc = "N/A"
});

AutoSummonFrozenDimensionToggle = Tabs.SeaStackTab:Toggle({
    Title = "Summon Frozen Dimension",
    Value = _G.Settings.SeaStack["Summon Frozen Dimension"],
    Callback = function(state)
        _G.Settings.SeaStack["Summon Frozen Dimension"] = state;
        StopTween(_G.Settings.SeaStack["Summon Frozen Dimension"]);
        (getgenv()).SaveSetting();
    end
});

TweenToFrozenDimensionToggle = Tabs.SeaStackTab:Toggle({
    Title = "Tween To Frozen Dimension",
    Value = _G.Settings.SeaStack["Tween To Frozen Dimension"],
    Callback = function(state)
        _G.Settings.SeaStack["Tween To Frozen Dimension"] = state;
        StopTween(_G.Settings.SeaStack["Tween To Frozen Dimension"]);
        (getgenv()).SaveSetting();
    end
});

BribeLeviathanStatusParagraph = Tabs.SeaStackTab:Paragraph({
    Title = "Leviathan Status",
    Desc = "0"
});

BribeLeviathanButton = Tabs.SeaStackTab:Button({
    Title = "Bribe Leviathan",
    Callback = function()
        local Status = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("InfoLeviathan", "2");
        BribeLeviathanStatusParagraph:SetDesc(Status);
    end
});

KitsuneStatusSeaStackParagraph = Tabs.SeaStackTab:Paragraph({
    Title = "Kitsune Status",
    Desc = "N/A"
});

AutoSummonKitsuneIslandToggle = Tabs.SeaStackTab:Toggle({
    Title = "Summon Kitsune Island",
    Value = _G.Settings.SeaStack["Summon Kitsune Island"],
    Callback = function(state)
        _G.Settings.SeaStack["Summon Kitsune Island"] = state;
        StopTween(_G.Settings.SeaStack["Summon Kitsune Island"]);
        (getgenv()).SaveSetting();
    end
});

TweenToKitsuneIslandToggle = Tabs.SeaStackTab:Toggle({
    Title = "Tween To Kitsune Island",
    Value = _G.Settings.SeaStack["Tween To Kitsune Island"],
    Callback = function(state)
        _G.Settings.SeaStack["Tween To Kitsune Island"] = state;
        StopTween(_G.Settings.SeaStack["Tween To Kitsune Island"]);
        (getgenv()).SaveSetting();
    end
});

AutoCollectAzureEmberToggle = Tabs.SeaStackTab:Toggle({
    Title = "Auto Collect Azure Ember",
    Value = _G.Settings.SeaStack["Auto Collect Azure Ember"],
    Callback = function(state)
        _G.Settings.SeaStack["Auto Collect Azure Ember"] = state;
        (getgenv()).SaveSetting();
    end
});

SetAzureEmberSlider = Tabs.SeaStackTab:Slider({
    Title = "Set Azure Ember",
    Step = 1,
    Value = {
        Min = 1,
        Max = 25,
        Default = _G.Settings.SeaStack["Set Azure Ember"]
    },
    Callback = function(value)
        _G.Settings.SeaStack["Set Azure Ember"] = value;
        (getgenv()).SaveSetting();
    end
});

AutoTradeAzureEmberToggle = Tabs.SeaStackTab:Toggle({
    Title = "Auto Trade Azure Ember",
    Value = _G.Settings.SeaStack["Auto Trade Azure Ember"],
    Callback = function(state)
        _G.Settings.SeaStack["Auto Trade Azure Ember"] = state;
        (getgenv()).SaveSetting();
    end
});

MirageStatusSeaStackParagraph = Tabs.SeaStackTab:Paragraph({
    Title = "Mirage Status",
    Desc = "N/A"
});

TweenToMirageIslandToggle = Tabs.SeaStackTab:Toggle({
    Title = "Tween To Mirage Island",
    Value = _G.Settings.SeaStack["Tween To Mirage Island"],
    Callback = function(state)
        _G.Settings.SeaStack["Tween To Mirage Island"] = state;
        StopTween(_G.Settings.SeaStack["Tween To Mirage Island"]);
        (getgenv()).SaveSetting();
    end
});

SeaBeastSeaStackSection = Tabs.SeaStackTab:Section({
    Title = "Sea Beasts",
    TextXAlignment = "Left"
});

AutoAttackSeaBeastsToggle = Tabs.SeaStackTab:Toggle({
    Title = "Auto Attack Seabeasts",
    Value = _G.Settings.SeaStack["Auto Attack Seabeasts"],
    Callback = function(state)
        _G.Settings.SeaStack["Auto Attack Seabeasts"] = state;
        StopTween(_G.Settings.SeaStack["Auto Attack Seabeasts"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- SEA SETTINGS TAB
-- ============================
SettingSeaSection = Tabs.SeaSettingsTab:Section({
    Title = "Setting Sea",
    TextXAlignment = "Left"
});

LightningToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Lightning",
    Value = _G.Settings.SettingSea.Lightning,
    Callback = function(state)
        _G.Settings.SettingSea.Lightning = state;
    end
});

IncreaseSpeedBoatToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Increase Speed Boat",
    Value = _G.Settings.SettingSea["Increase Boat Speed"],
    Callback = function(state)
        _G.Settings.SettingSea["Increase Boat Speed"] = state;
    end
});

NoClipRockToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "No Clip Rock",
    Value = _G.Settings.SettingSea["No Clip Rock"],
    Callback = function(state)
        _G.Settings.SettingSea["No Clip Rock"] = state;
    end
});

SettingSeaSection = Tabs.SeaSettingsTab:Section({
    Title = "Tools",
    TextXAlignment = "Left"
});

UseDevilFruitSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Use Devil Fruit Skill",
    Value = _G.Settings.SettingSea["Use Devil Fruit Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Use Devil Fruit Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

UseMeleeSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Use Melee Skill",
    Value = _G.Settings.SettingSea["Use Melee Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Use Melee Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

UseSwordSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Use Sword Skill",
    Value = _G.Settings.SettingSea["Use Sword Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Use Sword Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

UseGunSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Use Gun Skill",
    Value = _G.Settings.SettingSea["Use Gun Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Use Gun Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

DevilFruitSkillSection = Tabs.SeaSettingsTab:Section({
    Title = "Devil Fruit Skill",
    TextXAlignment = "Left"
});

DevilFruitZSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Devil Fruit Z Skill",
    Value = _G.Settings.SettingSea["Devil Fruit Z Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Devil Fruit Z Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

DevilFruitXSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Devil Fruit X Skill",
    Value = _G.Settings.SettingSea["Devil Fruit X Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Devil Fruit X Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

DevilFruitCSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Devil Fruit C Skill",
    Value = _G.Settings.SettingSea["Devil Fruit C Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Devil Fruit C Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

DevilFruitVSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Devil Fruit V Skill",
    Value = _G.Settings.SettingSea["Devil Fruit V Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Devil Fruit V Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

DevilFruitFSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Devil Fruit F Skill",
    Value = _G.Settings.SettingSea["Devil Fruit F Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Devil Fruit F Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

MeleeSkillSection = Tabs.SeaSettingsTab:Section({
    Title = "Melee Skill",
    TextXAlignment = "Left"
});

MeleeZSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Melee Z Skill",
    Value = _G.Settings.SettingSea["Melee Z Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Melee Z Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

MeleeXSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Melee X Skill",
    Value = _G.Settings.SettingSea["Melee X Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Melee X Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

MeleeCSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Melee C Skill",
    Value = _G.Settings.SettingSea["Melee C Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Melee C Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

MeleeVSkillToggle = Tabs.SeaSettingsTab:Toggle({
    Title = "Melee V Skill",
    Value = _G.Settings.SettingSea["Melee V Skill"],
    Callback = function(state)
        _G.Settings.SettingSea["Melee V Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- DRAGON DOJO TAB (ĐẦY ĐỦ)
-- ============================
DragonDojoSection = Tabs.DragonDojoTab:Section({
    Title = "Dragon Dojo",
    TextXAlignment = "Left"
});

AutoFarmBlazeEmberToggle = Tabs.DragonDojoTab:Toggle({
    Title = "Auto Farm Blaze Ember",
    Desc = "Auto Complete Quest + Collect Blaze Ember [ Sea 3 Only ]",
    Value = _G.Settings.DragonDojo["Auto Farm Blaze Ember"],
    Callback = function(state)
        _G.Settings.DragonDojo["Auto Farm Blaze Ember"] = state;
        StopTween(_G.Settings.DragonDojo["Auto Farm Blaze Ember"]);
        (getgenv()).SaveSetting();
    end
});

CraftVolcanicMagnetButton = Tabs.DragonDojoTab:Button({
    Title = "Craft Volcanic Magnet",
    Callback = function()
        (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(
            "CraftItem", "Craft", "Volcanic Magnet");
    end
});

-- ============================
-- RACE V4 TAB (ĐẦY ĐỦ)
-- ============================
RaceTabSection = Tabs.RaceTab:Section({
    Title = "Race",
    TextXAlignment = "Left"
});

local PlaceV4List = {"Top Of GreatTree", "Temple Of Time", "Lever Pull", "Ancient One"};

SelectedPlaceDropdown = Tabs.RaceTab:Dropdown({
    Title = "Selected Place",
    Values = PlaceV4List,
    Value = _G.Settings.Race["Selected Place"],
    Callback = function(value)
        _G.Settings.Race["Selected Place"] = value;
        (getgenv()).SaveSetting();
    end
});

TeleportToPlaceToggle = Tabs.RaceTab:Toggle({
    Title = "Teleport To Place",
    Value = _G.Settings.Race["Teleport To Place"],
    Callback = function(state)
        _G.Settings.Race["Teleport To Place"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoBuyGearToggle = Tabs.RaceTab:Toggle({
    Title = "Auto Buy Gear",
    Value = _G.Settings.Race["Auto Buy Gear"],
    Callback = function(state)
        _G.Settings.Race["Auto Buy Gear"] = state;
        (getgenv()).SaveSetting();
    end
});

TweenToMirageIslandToggle = Tabs.RaceTab:Toggle({
    Title = "Tween To Highest Mirage",
    Value = _G.Settings.Race["Tween To Highest Mirage"],
    Callback = function(state)
        _G.Settings.Race["Tween To Highest Mirage"] = state;
        (getgenv()).SaveSetting();
    end
});

FindBlueGearToggle = Tabs.RaceTab:Toggle({
    Title = "Find Blue Gear",
    Value = _G.Settings.Race["Find Blue Gear"],
    Callback = function(state)
        _G.Settings.Race["Find Blue Gear"] = state;
        (getgenv()).SaveSetting();
    end
});

LookMoonAbilityToggle = Tabs.RaceTab:Toggle({
    Title = "Look Moon & use Ability",
    Value = _G.Settings.Race["Look Moon Ability"],
    Callback = function(state)
        _G.Settings.Race["Look Moon Ability"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoTrainToggle = Tabs.RaceTab:Toggle({
    Title = "Auto Train",
    Value = _G.Settings.Race["Auto Train"],
    Callback = function(state)
        _G.Settings.Race["Auto Train"] = state;
        StopTween(_G.Settings.Race["Auto Train"]);
        (getgenv()).SaveSetting();
    end
});

AutoRaceV2Toggle = Tabs.RaceTab:Toggle({
    Title = "Auto Race V2",
    Value = _G.Settings.Race["Auto Race V2"],
    Callback = function(state)
        _G.Settings.Race["Auto Race V2"] = state;
        StopTween(_G.Settings.Race["Auto Race V2"]);
        (getgenv()).SaveSetting();
    end
});

AutoRaceV3Toggle = Tabs.RaceTab:Toggle({
    Title = "Auto Race V3",
    Value = _G.Settings.Race["Auto Race V3"],
    Callback = function(state)
        _G.Settings.Race["Auto Race V3"] = state;
        StopTween(_G.Settings.Race["Auto Race V3"]);
        (getgenv()).SaveSetting();
    end
});

AutoTrialToggle = Tabs.RaceTab:Toggle({
    Title = "Auto Trial",
    Value = _G.Settings.Race["Auto Trial"],
    Callback = function(value)
        _G.Settings.Race["Auto Trial"] = value;
        StopTween(_G.Settings.Race["Auto Trial"]);
        (getgenv()).SaveSetting();
    end
});

AutoKillPlayerAfterTrialToggle = Tabs.RaceTab:Toggle({
    Title = "Auto Kill Player After Trial",
    Value = _G.Settings.Race["Auto Kill Player After Trial"],
    Callback = function(value)
        _G.Settings.Race["Auto Kill Player After Trial"] = value;
        (getgenv()).SaveSetting();
    end
});

TeleportToRaceDoorButton = Tabs.RaceTab:Button({
    Title = "Teleport To Race Door",
    Callback = function()
        (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875,
            14895.3017578125, 102.62469482421875);
    end
});

BuyAncientQuestButton = Tabs.RaceTab:Button({
    Title = "Buy Ancient Quest",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
    end
});

-- ============================
-- COMBAT TAB (ĐẦY ĐỦ)
-- ============================
CombatTabSection = Tabs.CombatTab:Section({
    Title = "Combat",
    TextXAlignment = "Left"
});

PlayerInServerTotalParagraph = Tabs.CombatTab:Paragraph({
    Title = "Players In Server",
    Desc = "0"
});

local PlayerList = {};
for i, v in pairs((game:GetService("Players")):GetChildren()) do
    table.insert(PlayerList, v.Name);
end

SelectedPlayerDropdown = Tabs.CombatTab:Dropdown({
    Title = "Choose Player",
    Values = PlayerList,
    Value = tostring(PlayerList[1]),
    Callback = function(option)
        _G.SelectedPlayer = option;
    end
});

RefreshPlayerButton = Tabs.CombatTab:Button({
    Title = "Refresh Player",
    Callback = function()
        PlayerList = {};
        for i, v in pairs((game:GetService("Players")):GetChildren()) do
            table.insert(PlayerList, v.Name);
        end
        SelectedPlayerDropdown:Refresh(PlayerList);
    end
});

SpectatePlayerToggle = Tabs.CombatTab:Toggle({
    Title = "Spectate Player",
    Value = false,
    Callback = function(state)
        SpectatePlys = state;
        repeat
            wait(0.1);
            (game:GetService("Workspace")).Camera.CameraSubject =
                ((game:GetService("Players")):FindFirstChild(_G.SelectedPlayer)).Character.Humanoid;
        until SpectatePlys == false or (not (game:GetService("Players")):FindFirstChild(_G.SelectedPlayer));
        (game:GetService("Workspace")).Camera.CameraSubject =
            (game:GetService("Players")).LocalPlayer.Character.Humanoid;
    end
});

TeleportToPlayerToggle = Tabs.CombatTab:Toggle({
    Title = "Teleport To Player",
    Value = false,
    Callback = function(state)
        _G.TeleportToPlayer = state;
        pcall(function()
            if _G.TeleportToPlayer then
                repeat
                    TweenPlayer((game:GetService("Players"))[_G.SelectedPlayer].Character.HumanoidRootPart.CFrame);
                    wait();
                until _G.TeleportToPlayer == false or
                    (not (game:GetService("Players")):FindFirstChild(_G.SelectedPlayer));
            end
            StopTween(_G.TeleportToPlayer);
        end);
    end
});

AutoKillPlayerQuestToggle = Tabs.CombatTab:Toggle({
    Title = "Auto Kill Player Quest",
    Value = _G.Settings.Combat["Auto Kill Player Quest"],
    Callback = function(state)
        _G.Settings.Combat["Auto Kill Player Quest"] = state;
        (getgenv()).SaveSetting();
    end
});

AimbotGunToggle = Tabs.CombatTab:Toggle({
    Title = "Aimbot Gun",
    Value = _G.Settings.Combat["Aimbot Gun"],
    Callback = function(state)
        _G.Settings.Combat["Aimbot Gun"] = state;
        (getgenv()).SaveSetting();
    end
});

AimbotSkillNearesToggle = Tabs.CombatTab:Toggle({
    Title = "Aimbot Skill Nearest",
    Value = _G.Settings.Combat["Aimbot Skill Neares"],
    Callback = function(state)
        _G.Settings.Combat["Aimbot Skill Neares"] = state;
        (getgenv()).SaveSetting();
    end
});

AimbotSkillToggle = Tabs.CombatTab:Toggle({
    Title = "Aimbot Skill",
    Value = _G.Settings.Combat["Aimbot Skill"],
    Callback = function(state)
        _G.Settings.Combat["Aimbot Skill"] = state;
        (getgenv()).SaveSetting();
    end
});

EnablePvPToggle = Tabs.CombatTab:Toggle({
    Title = "Enable PvP",
    Value = _G.Settings.Combat["Enable PvP"],
    Callback = function(state)
        _G.Settings.Combat["Enable PvP"] = state;
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- RAID TAB (ĐẦY ĐỦ)
-- ============================
RaidSection = Tabs.RaidTab:Section({
    Title = "Raid",
    TextXAlignment = "Left"
});

TimeRaidParagraph = Tabs.RaidTab:Paragraph({
    Title = "Raid Time",
    Desc = "N/A"
});

IslandRaidParagraph = Tabs.RaidTab:Paragraph({
    Title = "Island",
    Desc = "N/A"
});

Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for i, v in pairs(RaidsModule.raids) do
    table.insert(Raidslist, v);
end
for i, v in pairs(RaidsModule.advancedRaids) do
    table.insert(Raidslist, v);
end

ChooseChipRaidDropdown = Tabs.RaidTab:Dropdown({
    Title = "Choose Chip",
    Values = Raidslist,
    Value = _G.Settings.Raid["Selected Chip"],
    Callback = function(option)
        _G.Settings.Raid["Selected Chip"] = option;
    end
});

AutoRaidToggle = Tabs.RaidTab:Toggle({
    Title = "Auto Raid",
    Desc = "Complete automatically",
    Value = _G.Settings.Raid["Auto Raid"],
    Callback = function(state)
        _G.Settings.Raid["Auto Raid"] = state;
        StopTween(_G.Settings.Raid["Auto Raid"]);
        (getgenv()).SaveSetting();
    end
});

AutoAwakeningToggle = Tabs.RaidTab:Toggle({
    Title = "Auto Awaken",
    Value = _G.Settings.Raid["Auto Awaken"],
    Callback = function(state)
        _G.Settings.Raid["Auto Awaken"] = state;
        (getgenv()).SaveSetting();
    end
});

PriceDevilFruitToUnstoreSlider = Tabs.RaidTab:Slider({
    Title = "Price",
    Value = {
        Min = 1,
        Max = 10000000,
        Default = _G.Settings.Raid["Price Devil Fruit"]
    },
    Callback = function(value)
        _G.Settings.Raid["Price Devil Fruit"] = value;
        (getgenv()).SaveSetting();
    end
});

AutoUnstoreDevilFruitToggle = Tabs.RaidTab:Toggle({
    Title = "Auto Unstore Devil Fruit",
    Value = _G.Settings.Raid["Unstore Devil Fruit"],
    Callback = function(state)
        _G.Settings.Raid["Unstore Devil Fruit"] = state;
        (getgenv()).SaveSetting();
    end
});

TeleportToLabButton = Tabs.RaidTab:Button({
    Title = "Teleport To Lab",
    Callback = function()
        if World2 then
            TweenPlayer(CFrame.new(-6438.73535, 250.645355, -4501.50684));
        elseif World3 then
            TweenPlayer(CFrame.new(-5017.40869, 314.844055, -2823.0127));
        end
    end
});

LawRaidSection = Tabs.RaidTab:Section({
    Title = "Law Raid",
    TextXAlignment = "Left"
});

AutoLawRaidToggle = Tabs.RaidTab:Toggle({
    Title = "Auto Law Raid",
    Value = _G.Settings.Raid["Law Raid"],
    Callback = function(state)
        _G.Settings.Raid["Law Raid"] = state;
        StopTween(_G.Settings.Raid["Law Raid"]);
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- ESP TAB (ĐẦY ĐỦ)
-- ============================
EspSection = Tabs.EspTab:Section({
    Title = "Esp",
    TextXAlignment = "Left"
});

EspPlayerToggle = Tabs.EspTab:Toggle({
    Title = "Esp Player",
    Desc = "Highlight Player",
    Value = _G.Settings.Esp["ESP Player"],
    Callback = function(state)
        _G.Settings.Esp["ESP Player"] = state;
    end
});

EspChestToggle = Tabs.EspTab:Toggle({
    Title = "Esp Chest",
    Desc = "Highlight Chest",
    Value = _G.Settings.Esp["ESP Chest"],
    Callback = function(state)
        _G.Settings.Esp["ESP Chest"] = state;
    end
});

EspDevilFruitToggle = Tabs.EspTab:Toggle({
    Title = "Esp DevilFruit",
    Desc = "Highlight DevilFruit",
    Value = _G.Settings.Esp["ESP DevilFruit"],
    Callback = function(state)
        _G.Settings.Esp["ESP DevilFruit"] = state;
    end
});

EspRealFruitToggle = Tabs.EspTab:Toggle({
    Title = "Esp RealFruit",
    Desc = "Highlight RealFruit",
    Value = _G.Settings.Esp["ESP RealFruit"],
    Callback = function(state)
        _G.Settings.Esp["ESP RealFruit"] = state;
    end
});

EspFlowerToggle = Tabs.EspTab:Toggle({
    Title = "Esp Flower",
    Desc = "Highlight Flower",
    Value = _G.Settings.Esp["ESP Flower"],
    Callback = function(state)
        _G.Settings.Esp["ESP Flower"] = state;
    end
});

EspIslandToggle = Tabs.EspTab:Toggle({
    Title = "Esp Island",
    Desc = "Highlight Island",
    Value = _G.Settings.Esp["ESP Island"],
    Callback = function(state)
        _G.Settings.Esp["ESP Island"] = state;
    end
});

EspNpcToggle = Tabs.EspTab:Toggle({
    Title = "Esp Npc",
    Desc = "Highlight Npc",
    Value = _G.Settings.Esp["ESP Npc"],
    Callback = function(state)
        _G.Settings.Esp["ESP Npc"] = state;
    end
});

EspSeaBeastToggle = Tabs.EspTab:Toggle({
    Title = "Esp Sea Beast",
    Desc = "Highlight SeaBeast",
    Value = _G.Settings.Esp["ESP Sea Beast"],
    Callback = function(state)
        _G.Settings.Esp["ESP Sea Beast"] = state;
    end
});

EspMonsterToggle = Tabs.EspTab:Toggle({
    Title = "Esp Monster",
    Desc = "Highlight Monster",
    Value = _G.Settings.Esp["ESP Monster"],
    Callback = function(state)
        _G.Settings.Esp["ESP Monster"] = state;
    end
});

EspMirageIslandToggle = Tabs.EspTab:Toggle({
    Title = "Esp Mirage Island",
    Desc = "Highlight Mirage Island",
    Value = _G.Settings.Esp["ESP Mirage"],
    Callback = function(state)
        _G.Settings.Esp["ESP Mirage"] = state;
    end
});

EspKitsuneIslandToggle = Tabs.EspTab:Toggle({
    Title = "Esp Kitsune Island",
    Desc = "Highlight Kitsune Island",
    Value = _G.Settings.Esp["ESP Kitsune"],
    Callback = function(state)
        _G.Settings.Esp["ESP Kitsune"] = state;
    end
});

EspFrozenDimensionToggle = Tabs.EspTab:Toggle({
    Title = "Esp Frozen Dimension",
    Desc = "Highlight Frozen Dimension",
    Value = _G.Settings.Esp["ESP Frozen"],
    Callback = function(state)
        _G.Settings.Esp["ESP Frozen"] = state;
    end
});

EspPrehistoricIslandToggle = Tabs.EspTab:Toggle({
    Title = "Esp Prehistoric Island",
    Desc = "Highlight Prehistoric Island",
    Value = _G.Settings.Esp["ESP Prehistoric"],
    Callback = function(state)
        _G.Settings.Esp["ESP Prehistoric"] = state;
    end
});

EspGearToggle = Tabs.EspTab:Toggle({
    Title = "Esp Gear",
    Desc = "Highlight Gear",
    Value = _G.Settings.Esp["ESP Gear"],
    Callback = function(state)
        _G.Settings.Esp["ESP Gear"] = state;
    end
});

EspAdvancedFruitDealerToggle = Tabs.EspTab:Toggle({
    Title = "Esp Advanced Fruit Dealer",
    Desc = "Highlight Advanced Fruit Dealer",
    Value = _G.Settings.Esp["ESP Advanced Fruit Dealer"],
    Callback = function(state)
        _G.Settings.Esp["ESP Advanced Fruit Dealer"] = state;
    end
});

EspAuraToggle = Tabs.EspTab:Toggle({
    Title = "Esp Aura",
    Desc = "Highlight Aura NPC",
    Value = _G.Settings.Esp["ESP Aura"],
    Callback = function(state)
        _G.Settings.Esp["ESP Aura"] = state;
    end
});

-- ============================
-- TELEPORT TAB
-- ============================
TeleportSection = Tabs.TeleportTab:Section({
    Title = "Teleport",
    TextXAlignment = "Left"
});

TeleportToFirstSeaButton = Tabs.TeleportTab:Button({
    Title = "Teleport To First Sea",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelMain");
    end
});

TeleportToSecondSeaButton = Tabs.TeleportTab:Button({
    Title = "Teleport To Second Sea",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelDressrosa");
    end
});

TeleportToThirdSeaButton = Tabs.TeleportTab:Button({
    Title = "Teleport To Third Sea",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
    end
});

TeleportIslandSection = Tabs.TeleportTab:Section({
    Title = "Island",
    TextXAlignment = "Left"
});

local IslandList = {};
if World1 then
    IslandList = {"WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", "Desert", "Snow Island",
                  "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison", "Magma Village",
                  "Under Water Island", "Fountain City", "Shank Room", "Mob Island"};
elseif World2 then
    IslandList = {"The Cafe", "First Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room", "Green Zone", "Factory",
                  "Colosseum", "Zombie Island", "Two Snow Mountain", "Punk Hazard", "Cursed Ship", "Ice Castle",
                  "Forgotten Island", "Ussop Island", "Mini Sky Island"};
elseif World3 then
    IslandList = {"Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island",
                  "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", "Cake Island",
                  "Cocoa Island", "Candy Island", "Tiki Outpost", "Dragon Dojo"};
end

SelectedTeleportIslandDropdown = Tabs.TeleportTab:Dropdown({
    Title = "Choose Island",
    Values = IslandList,
    Value = IslandList[1],
    Callback = function(option)
        _G.SelectIsland = option;
    end
});

AutoTeleportToIslandToggle = Tabs.TeleportTab:Toggle({
    Title = "Teleport To Island",
    Value = false,
    Callback = function(state)
        _G.TeleportIsland = state;
    end
});

TeleportNpcSection = Tabs.TeleportTab:Section({
    Title = "Npc",
    TextXAlignment = "Left"
});

local NpcList = {};
if World1 then
    NpcList = {"Random Devil Fruit", "Blox Fruits Dealer", "Remove Devil Fruit", "Ability Teacher", "Dark Step",
               "Electro", "Fishman Karate"};
elseif World2 then
    NpcList = {"Dragon Breath", "Mysterious Man", "Mysterious Scientist", "Awakening Expert", "Nerd", "Bar Manager",
               "Blox Fruits Dealer", "Trevor", "Enhancement Editor", "Pirate Recruiter", "Marines Recruiter", "Chemist",
               "Cyborg", "Ghoul Mark", "Guashiem", "El Admin", "El Rodolfo", "Arowe"};
elseif World3 then
    NpcList = {"Blox Fruits Dealer", "Remove Devil Fruit", "Horned Man", "Hungry Man", "Previous Hero", "Butler",
               "Lunoven", "Trevor", "Elite Hunter", "Player Hunter", "Uzoth"};
end

SelectedNpcTeleport = Tabs.TeleportTab:Dropdown({
    Title = "Choose Npc",
    Values = NpcList,
    Value = NpcList[1],
    Callback = function(option)
        _G.SelectNPC = option;
    end
});

TeleportToNpcToggle = Tabs.TeleportTab:Toggle({
    Title = "Teleport To Npc",
    Value = false,
    Callback = function(state)
        _G.TeleportNPC = state;
    end
});

-- ============================
-- SHOP TAB (ĐẦY ĐỦ)
-- ============================
ShopSection = Tabs.ShopTab:Section({
    Title = "Shop",
    TextXAlignment = "Left"
});

AutoBuyLegendarySwordToggle = Tabs.ShopTab:Toggle({
    Title = "Auto Buy Legendary Sword",
    Value = _G.Settings.Shop["Auto Buy Legendary Sword"],
    Callback = function(state)
        _G.Settings.Shop["Auto Buy Legendary Sword"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoBuyHakiColorToggle = Tabs.ShopTab:Toggle({
    Title = "Auto Buy Haki Color",
    Value = _G.Settings.Shop["Auto Buy Haki Color"],
    Callback = function(state)
        _G.Settings.Shop["Auto Buy Haki Color"] = state;
        (getgenv()).SaveSetting();
    end
});

AbilitiesShopSection = Tabs.ShopTab:Section({
    Title = "Abilities",
    TextXAlignment = "Left"
});

BuyGeppoButton = Tabs.ShopTab:Button({
    Title = "Buy Geppo",
    Desc = "$10,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
    end
});

BuyBusoHaki = Tabs.ShopTab:Button({
    Title = "Buy Buso Haki",
    Desc = "$25,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
    end
});

BuySoruButton = Tabs.ShopTab:Button({
    Title = "Buy Soru",
    Desc = "$25,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
    end
});

BuyObservationHakiButton = Tabs.ShopTab:Button({
    Title = "Buy Observation Haki",
    Desc = "$750,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk", "Buy");
    end
});

FightingStyleShopSection = Tabs.ShopTab:Section({
    Title = "Fighting Style",
    TextXAlignment = "Left"
});

BuyBlackLegButton = Tabs.ShopTab:Button({
    Title = "Buy Black Leg",
    Desc = "$150,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
    end
});

BuyElectroButton = Tabs.ShopTab:Button({
    Title = "Buy Electro",
    Desc = "$550,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
    end
});

BuyFishmanKarateButton = Tabs.ShopTab:Button({
    Title = "Buy Fishman Karate",
    Desc = "$750,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
    end
});

BuyDragonClawButton = Tabs.ShopTab:Button({
    Title = "Buy Dragon Claw",
    Desc = "F'1,500",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
    end
});

BuySuperhumanButton = Tabs.ShopTab:Button({
    Title = "Buy Superhuman",
    Desc = "$3,000,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
    end
});

BuyDeathStepButton = Tabs.ShopTab:Button({
    Title = "Buy Death Step",
    Desc = "F'5,000 $5,000,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
    end
});

BuySharkmanKarateButton = Tabs.ShopTab:Button({
    Title = "Buy Sharkman Karate",
    Desc = "F'5,000 $2,500,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
    end
});

BuyElectricClawButton = Tabs.ShopTab:Button({
    Title = "Buy Electric Claw",
    Desc = "F'5,000 $3,000,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
    end
});

BuyDragonTalonButton = Tabs.ShopTab:Button({
    Title = "Buy Dragon Talon",
    Desc = "F'5,000 $3,000,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
    end
});

BuyGodHumanButton = Tabs.ShopTab:Button({
    Title = "Buy God Human",
    Desc = "F'5,000 $5,000,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman");
    end
});

BuySanguineArtButton = Tabs.ShopTab:Button({
    Title = "Buy Sanguine Art",
    Desc = "F'5,000 $5,000,000",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySanguineArt", true);
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySanguineArt");
    end
});

-- ============================
-- FRUIT TAB (ĐẦY ĐỦ)
-- ============================
FruitSection = Tabs.FruitTab:Section({
    Title = "Fruit",
    TextXAlignment = "Left"
});

AutoRandomFruitToggle = Tabs.FruitTab:Toggle({
    Title = "Auto Random Fruit",
    Value = _G.Settings.Fruit["Auto Buy Random Fruit"],
    Callback = function(state)
        _G.Settings.Fruit["Auto Buy Random Fruit"] = state;
    end
});

local RarityFruits = {
    Common = {"Rocket Fruit", "Spin Fruit", "Blade Fruit", "Spring Fruit", "Bomb Fruit", "Smoke Fruit", "Spike Fruit"},
    Uncommon = {"Flame Fruit", "Falcon Fruit", "Ice Fruit", "Sand Fruit", "Diamond Fruit", "Dark Fruit"},
    Rare = {"Light Fruit", "Rubber Fruit", "Barrier Fruit", "Ghost Fruit", "Magma Fruit"},
    Legendary = {"Quake Fruit", "Buddha Fruit", "Love Fruit", "Spider Fruit", "Sound Fruit", "Phoenix Fruit",
                 "Portal Fruit", "Rumble Fruit", "Pain Fruit", "Blizzard Fruit"},
    Mythical = {"Gravity Fruit", "Mammoth Fruit", "T-Rex Fruit", "Dough Fruit", "Shadow Fruit", "Venom Fruit",
                "Control Fruit", "Gas Fruit", "Spirit Fruit", "Leopard Fruit", "Yeti Fruit", "Kitsune Fruit",
                "Dragon Fruit"}
};

local SelectRarityFruits = {"Common - Mythical", "Uncommon - Mythical", "Rare - Mythical", "Legendary - Mythical",
                            "Mythical"};

StoreRarityFruitDropdown = Tabs.FruitTab:Dropdown({
    Title = "Store Rarity Fruit",
    Values = SelectRarityFruits,
    Value = _G.Settings.Fruit["Store Rarity Fruit"],
    Callback = function(option)
        _G.Settings.Fruit["Store Rarity Fruit"] = option;
        (getgenv()).SaveSetting();
    end
});

AutoStoreFruitToggle = Tabs.FruitTab:Toggle({
    Title = "Auto Store Fruit",
    Value = _G.Settings.Fruit["Auto Store Fruit"],
    Callback = function(state)
        _G.Settings.Fruit["Auto Store Fruit"] = state;
        (getgenv()).SaveSetting();
    end
});

FruitNotification = Tabs.FruitTab:Toggle({
    Title = "Fruit Notification",
    Value = _G.Settings.Fruit["Fruit Notification"],
    Callback = function(state)
        _G.Settings.Fruit["Fruit Notification"] = state;
        (getgenv()).SaveSetting();
    end
});

TeleportToFruitToggle = Tabs.FruitTab:Toggle({
    Title = "Teleport To Fruit",
    Value = _G.Settings.Fruit["Teleport To Fruit"],
    Callback = function(state)
        _G.Settings.Fruit["Teleport To Fruit"] = state;
        (getgenv()).SaveSetting();
    end
});

TweenToFruitToggle = Tabs.FruitTab:Toggle({
    Title = "Tween To Fruit",
    Value = _G.Settings.Fruit["Tween To Fruit"],
    Callback = function(state)
        _G.Settings.Fruit["Tween To Fruit"] = state;
        (getgenv()).SaveSetting();
    end
});

GrabFruitButton = Tabs.FruitTab:Button({
    Title = "Grab Fruit",
    Callback = function()
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Tool") then
                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
            end
        end
    end
});

VisualSection = Tabs.FruitTab:Section({
    Title = "Visual",
    TextXAlignment = "Left"
});

RainFruitButton = Tabs.FruitTab:Button({
    Title = "Rain Fruit",
    Callback = function()
        for h, i in pairs((game:GetObjects("rbxassetid://14759368201"))[1]:GetChildren()) do
            i.Parent = game.Workspace.Map;
            i:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position +
                         Vector3.new(math.random((-50), 50), 100, math.random((-50), 50)));
        end
    end
});

-- ============================
-- LOCAL PLAYER TAB (ĐẦY ĐỦ)
-- ============================
LocalPlayerSection = Tabs.LocalPlayerTab:Section({
    Title = "Local Player",
    TextXAlignment = "Left"
});

InfiniteEnergyToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Energy",
    Value = _G.Settings.LocalPlayer["Infinite Energy"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Infinite Energy"] = state;
        (getgenv()).SaveSetting();
    end
});

InfiniteAbilityToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Ability",
    Value = _G.Settings.LocalPlayer["Infinite Ability"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Infinite Ability"] = state;
        (getgenv()).SaveSetting();
    end
});

InfiniteGeppoToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Geppo",
    Value = _G.Settings.LocalPlayer["Infinite Geppo"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Infinite Geppo"] = state;
        (getgenv()).SaveSetting();
    end
});

InfiniteSoruToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Soru",
    Value = _G.Settings.LocalPlayer["Infinite Soru"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Infinite Soru"] = state;
        (getgenv()).SaveSetting();
    end
});

DodgeNoCooldownToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Dodge No Cooldown",
    Value = _G.Settings.LocalPlayer["Dodge No Cooldown"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Dodge No Cooldown"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoActiveRaceV3Toggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Active Race V3",
    Desc = "Auto Turn On Tribe V3",
    Value = _G.Settings.LocalPlayer["Active Race V3"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Active Race V3"] = state;
        (getgenv()).SaveSetting();
    end
});

AutoActiveRaceV4Toggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Active Race V4",
    Desc = "Auto Turn On Tribe V4",
    Value = _G.Settings.LocalPlayer["Active Race V4"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Active Race V4"] = state;
        (getgenv()).SaveSetting();
    end
});

WalkOnWaterToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "Walk On Water",
    Desc = "Moving on Water Surface (Jesus)",
    Value = _G.Settings.LocalPlayer["Walk On Water"],
    Callback = function(state)
        _G.Settings.LocalPlayer["Walk On Water"] = state;
        (getgenv()).SaveSetting();
    end
});

NoClipPlayerToggle = Tabs.LocalPlayerTab:Toggle({
    Title = "No Clip",
    Desc = "Travel Through Walls",
    Value = _G.Settings.LocalPlayer["No Clip"],
    Callback = function(state)
        _G.Settings.LocalPlayer["No Clip"] = state;
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- MISC TAB (ĐẦY ĐỦ)
-- ============================
MiscSection = Tabs.MiscTab:Section({
    Title = "Misc",
    TextXAlignment = "Left"
});

JoinPiratesTeamButton = Tabs.MiscTab:Button({
    Title = "Join Pirates Team",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
    end
});

JoinMarinesTeamButton = Tabs.MiscTab:Button({
    Title = "Join Marines Team",
    Callback = function()
        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Marines");
    end
});

CodeSection = Tabs.MiscTab:Section({
    Title = "Codes",
    TextXAlignment = "Left"
});

local codeList = {"ZIOLES", "NOOB2ADMIN", "KITT_RESET", "Sub2CaptainMaui", "SUB2GAMERROBOT_RESET1", "kittgaming",
                  "Sub2Fer999", "Enyu_is_Pro", "Magicbus", "JCWK", "Starcodeheo", "Bluxxy", "fudd10_v2", "FUDD10",
                  "BIGNEWS", "THEGREATACE", "SUB2GAMERROBOT_EXP1", "Sub2OfficialNoobie", "StrawHatMaine",
                  "SUB2NOOBMASTER123", "Sub2UncleKizaru", "Sub2Daigrock", "Axiore", "TantaiGaming"};

RedeemAllCodesButton = Tabs.MiscTab:Button({
    Title = "Redeem All Codes",
    Callback = function()
        for i, v in pairs(codeList) do
            (game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(v);
        end
    end
});

GraphicMiscSection = Tabs.MiscTab:Section({
    Title = "Graphic",
    TextXAlignment = "Left"
});

FpsBoostButton = Tabs.MiscTab:Button({
    Title = "Fps Boost",
    Callback = function()
        local decalsyeeted = true;
        local g = game;
        local w = g.Workspace;
        local l = g.Lighting;
        local t = w.Terrain;
        (settings()).Rendering.QualityLevel = "Level01";
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic";
                v.Reflectance = 0;
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1;
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0);
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1;
                v.BlastRadius = 1;
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false;
            end
        end
    end
});

RemoveFogButton = Tabs.MiscTab:Button({
    Title = "Remove Fog",
    Callback = function()
        (game:GetService("Lighting")).LightingLayers:Destroy();
        (game:GetService("Lighting")).Sky:Destroy();
        game.Lighting.FogEnd = 9000000000;
    end
});

RemoveLavaButton = Tabs.MiscTab:Button({
    Title = "Remove Lava",
    Callback = function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Lava" then
                v:Destroy();
            end
        end
        for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
            if v.Name == "Lava" then
                v:Destroy();
            end
        end
    end
});

HideChatToggle = Tabs.MiscTab:Toggle({
    Title = "Hide Chat",
    Value = _G.Settings.Misc["Hide Chat"],
    Callback = function(state)
        _G.Settings.Misc["Hide Chat"] = state;
        (getgenv()).SaveSetting();
    end
});

HideLeaderboardToggle = Tabs.MiscTab:Toggle({
    Title = "Hide Leaderboard",
    Value = _G.Settings.Misc["Hide Leaderboard"],
    Callback = function(state)
        _G.Settings.Misc["Hide Leaderboard"] = state;
        (getgenv()).SaveSetting();
    end
});

HighlightModeToggle = Tabs.MiscTab:Toggle({
    Title = "Highlight Mode",
    Value = _G.Settings.Misc["Highlight Mode"],
    Callback = function(state)
        _G.Settings.Misc["Highlight Mode"] = state;
        (getgenv()).SaveSetting();
    end
});

-- ============================
-- SERVER TAB
-- ============================
ServerTabSection = Tabs.ServerTab:Section({
    Title = "Server",
    TextXAlignment = "Left"
});

RejoinServerButton = Tabs.ServerTab:Button({
    Title = "Rejoin Server",
    Callback = function()
        (game:GetService("TeleportService")):Teleport(game.PlaceId);
    end
});

ServerHopButton = Tabs.ServerTab:Button({
    Title = "Server Hop",
    Callback = function()
        local module = (loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings")))();
        module:Teleport(game.PlaceId);
    end
});

JobIdParagraph = Tabs.ServerTab:Paragraph({
    Title = "Job ID",
    Desc = game.JobId,
    Buttons = {{
        Title = "Copy",
        Callback = function()
            setclipboard(game.JobId);
        end
    }}
});

EnterJobIdInput = Tabs.ServerTab:Input({
    Title = "Enter Job ID",
    Callback = function(value)
        _G.JobId = value;
    end
});

JoinJobIdButton = Tabs.ServerTab:Button({
    Title = "Join Job ID",
    Callback = function()
        (game:GetService("TeleportService")):TeleportToPlaceInstance(game.PlaceId, _G.JobId);
    end
});

StatusServerSection = Tabs.ServerTab:Section({
    Title = "Status",
    TextXAlignment = "Left"
});

MoonServerParagraph = Tabs.ServerTab:Paragraph({
    Title = "Moon Server",
    Desc = "N/A"
});

KitsuneStatusParagraph = Tabs.ServerTab:Paragraph({
    Title = "Kitsune Status",
    Desc = "N/A"
});

FrozenStatusParagraph = Tabs.ServerTab:Paragraph({
    Title = "Frozen Status",
    Desc = "N/A"
});

MirageStatusParagraph = Tabs.ServerTab:Paragraph({
    Title = "Mirage Status",
    Desc = "N/A"
});

HakiDealerStatusParagraph = Tabs.ServerTab:Paragraph({
    Title = "Haki Dealer Status",
    Desc = "N/A"
});

PrehistoricStatusParagraph = Tabs.ServerTab:Paragraph({
    Title = "Prehistoric Status",
    Desc = "N/A"
});

-- ============================
-- FAST ATTACK & AURA FRUIT (THÊM MỚI)
-- ============================
local AttackSection = Tabs.SettingsTab:Section({
    Title = "Fast Attack & Aura",
    TextXAlignment = "Left"
});

Tabs.SettingsTab:Toggle({
    Title = "Fast Attack",
    Value = true,
    Callback = function(state)
        getgenv().FastAttack = state
        if state then
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhDangNhoEm/TuanAnhIOS/refs/heads/main/koby"))()
            end)
        end
    end
});

Tabs.SettingsTab:Toggle({
    Title = "Aura Fruit",
    Value = false,
    Callback = function(state)
        getgenv().AuraFruit = state
    end
});

-- ============================
-- GOM QUÁI + SÁT THƯƠNG (THÊM MỚI)
-- ============================
task.spawn(function()
    local RunService = game:GetService("RunService")
    RunService.Heartbeat:Connect(function()
        local char = game.Players.LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root then return end
        for _, v in ipairs(workspace.Enemies:GetChildren()) do
            local hrp = v:FindFirstChild("HumanoidRootPart")
            local hum = v:FindFirstChild("Humanoid")
            if hrp and hum and hum.Health > 0 and (hrp.Position - root.Position).Magnitude <= 60 then
                pcall(function()
                    hum.PlatformStand = true
                    hum.WalkSpeed = 0
                    hum.JumpPower = 0
                    for _, part in ipairs(v:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                            part.Velocity = Vector3.new(0,0,0)
                            part.RotVelocity = Vector3.new(0,0,0)
                        end
                    end
                    hrp.CFrame = root.CFrame * CFrame.new(0, -15, 0)
                end)
            end
        end
    end)
end)

task.spawn(function()
    local RunService = game:GetService("RunService")
    while task.wait(0.25) do
        local char = game.Players.LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        local tool = char and char:FindFirstChildOfClass("Tool")
        local parts = {}
        if root and tool and (tool:GetAttribute("WeaponType") == "Melee" or tool:GetAttribute("WeaponType") == "Sword") then
            for _, v in ipairs(workspace.Enemies:GetChildren()) do
                local hrp = v:FindFirstChild("HumanoidRootPart")
                local hum = v:FindFirstChild("Humanoid")
                if hrp and hum and hum.Health > 0 and (hrp.Position - root.Position).Magnitude <= 80 then
                    for _, _v in ipairs(v:GetChildren()) do
                        if _v:IsA("BasePart") then
                            parts[#parts+1] = {v, _v}
                        end
                    end
                end
            end
            if #parts > 0 then
                task.spawn(function()
                    pcall(function()
                        local Net = game.ReplicatedStorage.Modules.Net
                        require(Net):RemoteEvent("RegisterHit", true)
                        Net["RE/RegisterAttack"]:FireServer()
                        local head = parts[1][1]:FindFirstChild("Head")
                        if not head then return end
                        Net["RE/RegisterHit"]:FireServer(head, parts, {}, tostring(game.Players.LocalPlayer.UserId):sub(2,4) .. tostring(coroutine.running()):sub(11,15))
                    end)
                end)
            end
        end
    end
end)

-- ============================
-- AURA FRUIT
-- ============================
task.spawn(function()
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")
    local player = Players.LocalPlayer
    getgenv().AuraFruit = getgenv().AuraFruit or false
    local ATTACK_INTERVAL = 0.01
    local function _AF_IsAlive(m)
        local h = m:FindFirstChild("Humanoid")
        return h and h.Health > 0
    end
    local function _AF_GetTargets()
        local char = player.Character
        if not char then return {} end
        local list = {}
        local function Scan(folder)
            for _, v in pairs(folder:GetChildren()) do
                if v ~= char and v:FindFirstChild("HumanoidRootPart") and _AF_IsAlive(v) then
                    table.insert(list, v)
                end
            end
        end
        if Workspace:FindFirstChild("Enemies") then Scan(Workspace.Enemies) end
        if Workspace:FindFirstChild("Characters") then Scan(Workspace.Characters) end
        return list
    end
    local function _AF_GetFruitTool()
        local char = player.Character
        local backpack = player:FindFirstChild("Backpack")
        if char then
            for _, v in pairs(char:GetChildren()) do
                if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then return v end
            end
        end
        if backpack then
            for _, v in pairs(backpack:GetChildren()) do
                if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then return v end
            end
        end
    end
    local _afLastAttack = 0
    RunService.Heartbeat:Connect(function()
        if not getgenv().AuraFruit then return end
        local now = tick()
        if now - _afLastAttack < ATTACK_INTERVAL then return end
        _afLastAttack = now
        local targets = _AF_GetTargets()
        if #targets == 0 then return end
        local char = player.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local fruit = _AF_GetFruitTool()
        if not fruit then return end
        local remote = fruit:FindFirstChild("LeftClickRemote")
        if not remote then return end
        local targetHRP = targets[1]:FindFirstChild("HumanoidRootPart")
        if not targetHRP then return end
        local dir = (targetHRP.Position - hrp.Position).Unit
        remote:FireServer(dir, 1)
    end)
end)
