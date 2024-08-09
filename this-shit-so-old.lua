-- made by n0ra_xd like 2 years ago and i randomly felt like releasing it
loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/discordpopup/main/discord-popup",true))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shidemuri/scripts/main/ui_lib.lua"))()
local Pendulum = Library:New("lucky blocks fucker")
local Luckygiver = Pendulum:NewTab("Exploits")
local adminscripts = Pendulum:NewTab("Admin Scripts")

Luckygiver:NewButton("Spawn Lucky Block", "Spawns Lucky block gears", function()
			game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
		end)
Luckygiver:NewButton("Spawn Diamond Block", "Spawns Diamond block gears", function()
			game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
		end)
Luckygiver:NewButton("Spawn Rainbow Block", "Spawns Rainbow block gears", function()
			game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
		end)
Luckygiver:NewButton("Spawn Galaxy Block", "Spawns Galaxy block gears", function()
			game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
		end)
Luckygiver:NewButton("invisible/godmode", "gives u godmode and makes u invisible", function()
-- FE Invisible

Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
wait(2)
Char:MoveTo(game.Workspace.Spawn2.Walls.SpawnWalls.Position)
wait(2)
Char:MoveTo(game.Workspace.Flower.Position)
		end)

adminscripts:NewButton("Infinite Yield", "Executes Infinite Yield FE Admin", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
Luckygiver:NewButton("Auto Give Galaxy Block Gears", "Automatically gives you gears every 2 sec", function()
            while true do
            game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
            wait(0)
			end
		end)

