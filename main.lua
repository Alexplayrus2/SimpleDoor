library = {}

function createhud()
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
local ScreenGui0 = Instance.new("ScreenGui")
mainhud = ScreenGui0
local TextLabel1 = Instance.new("TextLabel")
local Frame2 = Instance.new("Frame")
local ImageLabel3 = Instance.new("ImageLabel")
ScreenGui0.Name = "SimpleDoorHUD"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel1.Name = "watermark"
TextLabel1.Parent = ScreenGui0
TextLabel1.Position = UDim2.new(0.645390034, 0, 0.888888955, 0)
TextLabel1.Size = UDim2.new(0, 200, 0, 50)
TextLabel1.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.FontSize = Enum.FontSize.Size14
TextLabel1.Text = "Mod made with the SimpleDoor Modding Api"
TextLabel1.TextColor = BrickColor.new("Institutional white")
TextLabel1.TextColor3 = Color3.new(1, 1, 1)
TextLabel1.TextScaled = true
TextLabel1.TextSize = 14
TextLabel1.TextWrap = true
TextLabel1.TextWrapped = true
Frame2.Name = "jumpscare"
Frame2.Parent = ScreenGui0
Frame2.Visible = false
Frame2.Size = UDim2.new(1, 0, 1, 0)
Frame2.BackgroundColor = BrickColor.new("Really black")
Frame2.BackgroundColor3 = Color3.new(0, 0, 0)
ImageLabel3.Name = "jumpscareimg"
ImageLabel3.Parent = Frame2
ImageLabel3.Position = UDim2.new(0.347517729, 0, 0.315555573, 0)
ImageLabel3.Size = UDim2.new(0, 171, 0, 165)
ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel3.BackgroundTransparency = 1
ImageLabel3.Image = "rbxassetid://11278229112"
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game.CoreGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
end

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
function library:jumpscare(decalid, audioid)
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
    jumpscareframe.Visible=false
    sound:Stop()
end
function library:flickerlights()
    local jumpscareframe = mainhud.jumpscare
    local jumpscareimg = mainhud.jumpscare.jumpscareimg
    jumpscareimg.Visible = false
    jumpscareframe.Visible = true
    wait(0.1)
    jumpscareframe.Visible = false
    wait(0.1)
    jumpscareframe.Visible = true
    wait(0.1)
    jumpscareframe.Visible = false
    jumpscareimg.Visible = true
end
function library:givecrucifix()

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
local Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
WeldConstraint2 = Instance.new("WeldConstraint")
WeldConstraint3 = Instance.new("WeldConstraint")
WeldConstraint4 = Instance.new("WeldConstraint")
WeldConstraint5 = Instance.new("WeldConstraint")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
WeldConstraint11 = Instance.new("WeldConstraint")
WeldConstraint12 = Instance.new("WeldConstraint")
Part13 = Instance.new("Part")
Tool0.Name = "Crucifix"
Tool0.Parent = mas
Tool0.TextureId = "rbxassetid://12434168968"
Tool0.CanBeDropped = false
Tool0.Grip = CFrame.new(4.76837158e-07, -0.533324957, -0.119909763, 1, -1.2107189e-08, -1.78813892e-07, 1.21071908e-08, 1, 9.31322219e-09, 1.78813892e-07, -9.31322397e-09, 1)
Tool0.GripForward = Vector3.new(1.7881389169360773e-07, -9.313222193441106e-09, -1)
Tool0.GripPos = Vector3.new(4.76837158203125e-07, -0.5333249568939209, -0.11990976333618164)
Tool0.GripRight = Vector3.new(1, 1.2107190805465962e-08, 1.7881389169360773e-07)
Tool0.GripUp = Vector3.new(-1.2107189029109122e-08, 1, -9.313223969797946e-09)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(-4.03039503, 3.62742591, 4.97692633, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part1.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part1.Position = Vector3.new(-4.030395030975342, 3.6274259090423584, 4.976926326751709)
Part1.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part1.Color = Color3.new(0.666667, 0.333333, 0)
Part1.Size = Vector3.new(0.5824207067489624, 2.319927453994751, 0.3966625928878784)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("CGA brown")
Part1.CanCollide = false
Part1.Material = Enum.Material.Wood
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("CGA brown")
WeldConstraint2.Parent = Part1
WeldConstraint2.Part0 = Part1
WeldConstraint2.Part1 = Part10
WeldConstraint3.Parent = Part1
WeldConstraint3.Part0 = Part1
WeldConstraint3.Part1 = Part7
WeldConstraint4.Parent = Part1
WeldConstraint4.Part0 = Part1
WeldConstraint4.Part1 = Part8
WeldConstraint5.Parent = Part1
WeldConstraint5.Part0 = Part1
WeldConstraint5.Part1 = Part9
Part6.Name = "neon"
Part6.Parent = Tool0
Part6.CFrame = CFrame.new(-3.52014208, 3.83439612, 4.95106173, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part6.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part6.Position = Vector3.new(-3.520142078399658, 3.8343961238861084, 4.951061725616455)
Part6.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part6.Color = Color3.new(0.0156863, 0.686275, 0.92549)
Part6.Size = Vector3.new(0.11114609241485596, 0.6800000071525574, 0.38776764273643494)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Cyan")
Part6.CanCollide = false
Part6.Material = Enum.Material.Neon
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Cyan")
Part7.Name = "neon"
Part7.Parent = Tool0
Part7.CFrame = CFrame.new(-4.02161789, 4.23724556, 4.96947145, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part7.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part7.Position = Vector3.new(-4.021617889404297, 4.237245559692383, 4.969471454620361)
Part7.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part7.Color = Color3.new(0.0156863, 0.686275, 0.92549)
Part7.Size = Vector3.new(0.6185885667800903, 0.10409301519393921, 0.48620685935020447)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.BrickColor = BrickColor.new("Cyan")
Part7.CanCollide = false
Part7.Material = Enum.Material.Neon
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.brickColor = BrickColor.new("Cyan")
Part8.Name = "neon"
Part8.Parent = Tool0
Part8.CFrame = CFrame.new(-4.03230143, 3.26982999, 4.95075464, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part8.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part8.Position = Vector3.new(-4.032301425933838, 3.2698299884796143, 4.950754642486572)
Part8.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part8.Color = Color3.new(0.0156863, 0.686275, 0.92549)
Part8.Size = Vector3.new(0.6185885667800903, 0.10409301519393921, 0.48620685935020447)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Cyan")
Part8.CanCollide = false
Part8.Material = Enum.Material.Neon
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Cyan")
Part9.Name = "neon"
Part9.Parent = Tool0
Part9.CFrame = CFrame.new(-4.03823328, 2.73266959, 4.94036198, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part9.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part9.Position = Vector3.new(-4.038233280181885, 2.7326695919036865, 4.940361976623535)
Part9.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part9.Color = Color3.new(0.0156863, 0.686275, 0.92549)
Part9.Size = Vector3.new(0.6185885667800903, 0.10409301519393921, 0.48620685935020447)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.BrickColor = BrickColor.new("Cyan")
Part9.CanCollide = false
Part9.Material = Enum.Material.Neon
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.brickColor = BrickColor.new("Cyan")
Part10.Name = "part2"
Part10.Parent = Tool0
Part10.CFrame = CFrame.new(-4.02613163, 3.84281874, 4.977355, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part10.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part10.Position = Vector3.new(-4.026131629943848, 3.8428187370300293, 4.977355003356934)
Part10.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part10.Color = Color3.new(0.666667, 0.333333, 0)
Part10.Size = Vector3.new(1.727967381477356, 0.6263008713722229, 0.3026359975337982)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("CGA brown")
Part10.CanCollide = false
Part10.Material = Enum.Material.Wood
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("CGA brown")
WeldConstraint11.Parent = Part10
WeldConstraint11.Part0 = Part10
WeldConstraint11.Part1 = Part6
WeldConstraint12.Parent = Part10
WeldConstraint12.Part0 = Part10
WeldConstraint12.Part1 = Part13
Part13.Name = "neon"
Part13.Parent = Tool0
Part13.CFrame = CFrame.new(-4.5367527, 3.84448099, 5.01006985, 0.998270869, 0.0110404091, 0.0577375963, -0.00990298949, 0.999752164, -0.0199488997, -0.0579434708, 0.0193426311, 0.998132408)
Part13.Orientation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.5699999928474426)
Part13.Position = Vector3.new(-4.536752700805664, 3.8444809913635254, 5.010069847106934)
Part13.Rotation = Vector3.new(1.1399999856948853, 3.309999942779541, -0.6299999952316284)
Part13.Color = Color3.new(0.0156863, 0.686275, 0.92549)
Part13.Size = Vector3.new(0.11114609241485596, 0.6800000071525574, 0.38776764273643494)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.BrickColor = BrickColor.new("Cyan")
Part13.CanCollide = false
Part13.Material = Enum.Material.Neon
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.brickColor = BrickColor.new("Cyan")
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

Tool0.Activated:Connect(function()
	if workspace:FindFirstChild("Entity") then
		Tool0:Destroy()
		local entpos = workspace.Entity.Position
		workspace.Entity.BrickColor = BrickColor.new("Cyan")
		workspace.Entity.Material = Enum.Material.Neon
		workspace.Entity.Transparency = 0
		local runservice = game:GetService("RunService")
		local entstuck = runservice.RenderStepped:Connect(function()
			workspace.Entity.Position = entpos
		end)
		wait(5)
		entstuck:Disconnect()
		workspace.Entity:Destroy()
	end
end)
end
function library:createsubtitles()
  
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
subtitlegui = Instance.new("ScreenGui")
subtitles = Instance.new("TextLabel")
subtitlegui.Name = "simpledoorsubtitles"
subtitlegui.Parent = mas
subtitlegui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
subtitles.Name = "subtitles"
subtitles.Parent = subtitlegui
subtitles.Position = UDim2.new(0.322695047, 0, 0.888888896, 0)
subtitles.Size = UDim2.new(0, 200, 0, 50)
subtitles.BackgroundColor = BrickColor.new("Institutional white")
subtitles.BackgroundColor3 = Color3.new(1, 1, 1)
subtitles.BackgroundTransparency = 1
subtitles.Font = Enum.Font.SpecialElite
subtitles.FontSize = Enum.FontSize.Size14
subtitles.Text = ""
subtitles.TextColor = BrickColor.new("Tr. Flu. Yellow")
subtitles.TextColor3 = Color3.new(1, 0.909804, 0.454902)
subtitles.TextScaled = true
subtitles.TextSize = 14
subtitles.TextWrap = true
subtitles.TextWrapped = true
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game.CoreGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
game.DescendantAdded:Connect(function(desc)
	if desc:IsA("Sound") then
		desc.Played:Connect(function()
			local id = tonumber(desc.SoundId:match("%d+"))
			local soundlol = game:GetService("MarketplaceService"):GetProductInfo(id)
      if not string.find(soundlol.Name, "wood") and not string.find(soundlol.Name, "carpet") then
			subtitles.Text = soundlol.Name
      end
		end)
	end
end)
  end
function library:onnewroom(callback)
workspace.CurrentRooms.ChildAdded:Connect(function()
callback()
end)
end
createhud()
return library;
