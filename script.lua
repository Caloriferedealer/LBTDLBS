local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Low Budget Tower Defense Low Budget Script", "GrapeTheme")

--main
local Towers = Window:NewTab("Tower placing")
local TowersSection = Towers:NewSection("Towers")


TowersSection:NewDropdown("Select tower", "funny description", {"Noob", "Bacon", "Acorn", "Sniper", "Slasher", "Wizard", "Gunner", "jimmy", "Cameron", "Focus", "Dom", "foshmee", "n̷͍̙̄o̴̤̓o̵͕̐͝b̶̹͚̀", "Lumberjack", "Hazmat", "Replicator", "Celebrator", "Elf", "Frost Archer"}, function(currentOption)
    Tower = currentOption
end)
TowersSection:NewButton("Place selected tower ", "WARNING! THIS WILL PLACE IT AT YOUR CURRENT POSITION", function()

local args = {
    [1] = Tower,
    [2] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(-0, 0, -0)
}

game:GetService("ReplicatedStorage").Functions.SpawnTower:InvokeServer(unpack(args))

end)

local credits = Window:NewTab("Credits")
local CreditSection = credits:NewSection("Credits")
CreditSection:NewLabel("Creator : caloriferedealer#9473 ")
CreditSection:NewLabel("Kavo ui library")
CreditSection:NewLabel("The moderator that banned me from their discord")
