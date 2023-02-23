function library:createrushent(decalid, audioid)
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
local Part0 = Instance.new("Part")
BillboardGui1 = Instance.new("BillboardGui")
ImageLabel2 = Instance.new("ImageLabel")
Part0.Name = "Entity"
Part0.Parent = mas
Part0.CFrame = CFrame.new(33.9514008, 4.52049637, -6.22570467, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part0.Position = Vector3.new(33.95140075683594, 4.520496368408203, -6.225704669952393)
Part0.Transparency = 1
Part0.Size = Vector3.new(2.006753921508789, 1.9031963348388672, 2)
Part0.Anchored = true
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
BillboardGui1.Parent = Part0
BillboardGui1.Size = UDim2.new(5, 0, 5, 0)
BillboardGui1.Active = true
BillboardGui1.ClipsDescendants = true
BillboardGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageLabel2.Parent = BillboardGui1
ImageLabel2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel2.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel2.BackgroundTransparency = 1
ImageLabel2.Image = decalid
local Noise = Instance.new("Sound")
Noise.Parent = Part0
Noise.SoundId = audioid
Noise.Volume = 10
Noise.Looped = true
Noise:Play()
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
Part0.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z + 100)
Part0.Touched:Connect(function(part)
	if part.Parent == game.Players.LocalPlayer.Character then
    Part0:Destroy()
    local sound = Instance.new("Sound")
    sound.SoundId = audioid
    sound.Volume = 10
    sound.Parent = workspace
    local jumpscareframe = mainhud.jumpscare
    local jumpscareimg = mainhud.jumpscare.jumpscareimg
    jumpscareimg.Image = decalid
    jumpscareframe.Visible = true
    sound:Play()
    wait(0.2)
    jumpscareimg.Size = UDim2.new(1,0,1,0)
    wait(0.2)
    sound:Stop()
    jumpscareframe.Visible = false
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end)
while true do
	wait(0.1)
	Part0.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Part0.Position.Z - 5)
	end
end
