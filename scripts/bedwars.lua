--[[
the reason i am releasing sytronight with source because to proof i am crediting people script that i borrowed
idc if you skid this just credits me or the original owner of the script you copy
obfuscate is gay
]]
if not isfile("KavoConfig.JSON") then writefile("SytroNightConfig.JSON","{}")
end
wait(0.55)
spawn(function()
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		if v:IsA("Atmosphere") or v:IsA("Sky") or v:IsA("PostEffect") then
			v:Remove()
		end
	end
	local sky = Instance.new("Sky")
	sky.StarCount = 5000
	sky.SkyboxUp = "rbxassetid://9468074724"
	sky.SkyboxLf = "rbxassetid://9468063157"
	sky.SkyboxFt = "rbxassetid://9468061027"
	sky.SkyboxBk = "rbxassetid://9468068462"
	sky.SkyboxDn = "rbxassetid://9468081097"
	sky.SkyboxRt = "rbxassetid://9468057091"
	sky.SunTextureId = ""
	sky.SunAngularSize = 11
	sky.MoonTextureId = ""
	sky.MoonAngularSize = 30
	sky.Parent = game:GetService("Lighting")
	local sunray = Instance.new("SunRaysEffect")
	sunray.Intensity = 0.03
	sunray.Parent = game:GetService("Lighting")
	local bloom = Instance.new("BloomEffect")
	bloom.Threshold = 2
	bloom.Intensity = 1
	bloom.Size = 2
	bloom.Parent = game:GetService("Lighting")
	local atmosphere = Instance.new("Atmosphere")
	atmosphere.Density = 0.3
	atmosphere.Offset = 0.25
	atmosphere.Color = Color3.fromRGB(198, 198, 198)
	atmosphere.Decay = Color3.fromRGB(104, 112, 124)
	atmosphere.Glare = 0
	atmosphere.Haze = 0
	atmosphere.Parent = game:GetService("Lighting")
end)
local colors = {
	SchemeColor = Color3.fromRGB(0,255,255),
	Background = Color3.fromRGB(0, 0, 0),
	Header = Color3.fromRGB(0, 0, 0),
	TextColor = Color3.fromRGB(255,255,255),
	ElementColor = Color3.fromRGB(20, 20, 20)
}
local kavoUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandLittleBrother/SytroNight4ROBLOX/main/libraries/kavo.lua"))()
local window = kavoUi.CreateLib("SytroNight V1.2", "BloodTheme")
local entity = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/entityHandler.lua", true))()

do
	local oldcharacteradded = entity.characterAdded
	entity.characterAdded = function(plr, char, localcheck)
		return oldcharacteradded(plr, char, localcheck, function() end)
	end
	entity.fullEntityRefresh()
end

local colorbox
local function makeRainbowText(text)
	spawn(function()
		colorbox = Color3.fromRGB(170,0,170)
		local x = 0
		while wait() do
			colorbox = Color3.fromHSV(x,1,1)
			x = x + 4.5/255
			if x >= 1 then
				x = 0
			end
		end
	end)
	spawn(function()
		repeat
			wait()
			text.TextColor3 = colorbox
		until true == false
	end)
end

local SytroWaterMark = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

SytroWaterMark.Name = "SytroWaterMark"
SytroWaterMark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SytroWaterMark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SytroWaterMark.ResetOnSpawn = false

TextLabel.Parent = SytroWaterMark
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000772226602, 0, 0.0343558267, 0)
TextLabel.Size = UDim2.new(0.170134634, 0, 0.0700389072, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "SytroNight"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 28.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.MouseButton1Down:Connect(function()
	kavoUi:ToggleUI()
end)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(126, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 0, 0))}
UIGradient.Parent = TextLabel

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.000772226602, 0, 0.67410934, 0)
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "v1.2"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 24.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(126, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 0, 0))}
UIGradient_2.Parent = TextLabel_2

UITextSizeConstraint.Parent = TextLabel_2
UITextSizeConstraint.MaxTextSize = 24

UITextSizeConstraint_2.Parent = TextLabel
UITextSizeConstraint_2.MaxTextSize = 27

repeat task.wait() until (entity.isAlive)

local players = game:GetService("Players")
local lplr = players.LocalPlayer
local oldchar = lplr.Character
local cam = workspace.CurrentCamera
local uis = game:GetService("UserInputService")
local KnitClient = debug.getupvalue(require(game.Players.LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local InventoryUtil = require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil
local itemstuff = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
local RenderStepTable = {}
local StepTable = {}
local connectioninfjump
local killauraswing = {["Enabled"] = true}
local killaurasound = {["Enabled"] = true}
local killaurahitdelay = {["Value"] = 2}
local killaurasoundval = {["Value"] = 1}
local speedval = {["Value"] = 1}
local testtogttt = {["Value"] = 20}
local ACC1
local ACC2
local antivoidtransparent = {["Value"] = 50}
local antivoidcolor = {["Hue"] = 0.93, ["Sat"] = 1, ["Value"] = 1}
local reachval = {["Value"] = 18}
local autoclick = {["Enabled"] = true}
local origC0 = game.ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0
local killaurafirstpersonanim = {["Value"] = true}
local killauraanimval = {["Value"] = "Cool"}

local SprintCont = KnitClient.Controllers.SprintController
local SwordCont = KnitClient.Controllers.SwordController
local KnockbackTable = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ClientHandler = Client

local function GetURL(scripturl)
	return game:HttpGet("https://raw.githubusercontent.com/7GrandLittleBrother/SytroNight4ROBLOX/main/"..scripturl, true)
end

local function isAlive(plr)
	if plr then
		return plr and plr.Character and plr.Character.Parent ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("Humanoid")
	end
	return lplr and lplr.Character and lplr.Character.Parent ~= nil and lplr.Character:FindFirstChild("HumanoidRootPart") and lplr.Character:FindFirstChild("Head") and lplr.Character:FindFirstChild("Humanoid")
end

local function runcode(func)
	func()
end

local function playsound(id, volume) 
	local sound = Instance.new("Sound")
	sound.Parent = workspace
	sound.SoundId = id
	sound.PlayOnRemove = true 
	if volume then 
		sound.Volume = volume
	end
	sound:Destroy()
end

local function playanimation(id) 
	if isAlive() then 
		local animation = Instance.new("Animation")
		animation.AnimationId = id
		local animatior = lplr.Character.Humanoid.Animator
		animatior:LoadAnimation(animation):Play()
	end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function getinv(plr)
	local plr = plr or lplr
	local thingy, thingytwo = pcall(function() return InventoryUtil.getInventory(plr) end)
	return (thingy and thingytwo or {
		items = {},
		armor = {},
		hand = nil
	})
end

function getsword()
	local sd
	local higherdamage
	local swordslots
	local swords = getinv().items
	for i, v in pairs(swords) do
		if v.itemType:lower():find("sword") or v.itemType:lower():find("blade") then
			if higherdamage == nil or itemstuff[v.itemType].sword.damage > higherdamage then
				sd = v
				higherdamage = itemstuff[v.itemType].sword.damage
				swordslots = i
			end
		end
	end
	return sd, swordslots
end

local function getremote(tab)
	for i,v in pairs(tab) do
		if v == "Client" then
			return tab[i + 1]
		end
	end
	return ""
end

local function hvFunc(cock)
	return {hashedval = cock}
end

local function targetCheck(plr, check)
	return (check and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("ForceField") == nil or check == false)
end

local function isPlayerTargetable(plr, target)
	return plr ~= lplr and plr and isAlive(plr) and targetCheck(plr, target)
end

local function GetAllNearestHumanoidToPosition(distance, amount)
	local returnedplayer = {}
	local currentamount = 0
	if entity.isAlive then -- alive check
		for i, v in pairs(game.Players:GetChildren()) do -- loop through players
			if isPlayerTargetable((v), true, true, v.Character ~= nil) and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and currentamount < amount then -- checks
				local mag = (lplr.Character.HumanoidRootPart.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
				if mag <= distance then -- mag check
					table.insert(returnedplayer, v)
					currentamount = currentamount + 1
				end
			end
		end
		for i2,v2 in pairs(game:GetService("CollectionService"):GetTagged("Monster")) do -- monsters
			if v2:FindFirstChild("HumanoidRootPart") and currentamount < amount and v2.Name ~= "Duck" then -- no duck
				local mag = (lplr.Character.HumanoidRootPart.Position - v2.HumanoidRootPart.Position).magnitude
				if mag <= distance then -- magcheck
					table.insert(returnedplayer, {Name = (v2 and v2.Name or "Monster"), UserId = 1443379645, Character = v2}) -- monsters are npcs so I have to create a fake player for target info
					currentamount = currentamount + 1
				end
			end
		end
	end
	return returnedplayer -- table of attackable entities
end

local function BindToRenderStep(name, num, func)
	if RenderStepTable[name] == nil then
		RenderStepTable[name] = game:GetService("RunService").RenderStepped:connect(func)
	end
end
local function UnbindFromRenderStep(name)
	if RenderStepTable[name] then
		RenderStepTable[name]:Disconnect()
		RenderStepTable[name] = nil
	end
end

local function BindToStepped(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end
local function UnbindFromStepped(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

local attackentitycont = Client:Get(getremote(debug.getconstants(getmetatable(KnitClient.Controllers.SwordController)["attackEntity"])))
local rgfejd = false
local DistVal = {["Value"] = 18}
function KillauraRemote()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.Health > 0 then
					rgfejd = true
					local GBW = getsword()
					local selfPosition = lplr.Character.HumanoidRootPart.Position + (DistVal["Value"] > 14 and (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude > 14 and (CFrame.lookAt(lplr.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position).lookVector * 4) or Vector3.new(0, 0, 0))
					local Entity = v.Character
					local target = v.Character:GetPrimaryPartCFrame().Position
					attackentitycont:CallServer({
						["chargedAttack"] = {["chargeRatio"] = 1},
						["weapon"] = GBW ~= nil and GBW.tool,
						["entityInstance"] = Entity,
						["validate"] = {["targetPosition"] = {["value"] = target,
							["hash"] = hvFunc(target)},
						["raycast"] = {
							["cameraPosition"] = hvFunc(cam.CFrame.Position), 
							["cursorDirection"] = hvFunc(Ray.new(cam.CFrame.Position, v.Character:GetPrimaryPartCFrame().Position).Unit.Direction)
						},
						["selfPosition"] = {["value"] = selfPosition,
							["hash"] = hvFunc(selfPosition)
						}
						}
					})
					if killaurasound["Enabled"] then
						playsound("rbxassetid://6760544639", killaurasoundval["Value"])
					end
					if killauraswing["Enabled"] then
						playanimation("rbxassetid://4947108314")
					end
				end
			else
				rgfejd = false
			end
		end
	end
end

local itemtab = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
local CombatConstant = require(game:GetService("ReplicatedStorage").TS.combat["combat-constant"]).CombatConstant
local function getEquipped()
	local typetext = ""
	local obj = (entity.isAlive and lplr.Character:FindFirstChild("HandInvItem") and lplr.Character.HandInvItem.Value or nil)
	if obj then
		if obj.Name:find("sword") or obj.Name:find("blade") or obj.Name:find("baguette") or obj.Name:find("scythe") or obj.Name:find("dao") then
			typetext = "sword"
		end
		if obj.Name:find("wool") or itemtab[obj.Name]["block"] then
			typetext = "block"
		end
		if obj.Name:find("bow") then
			typetext = "bow"
		end
	end
	return {["Object"] = obj, ["Type"] = typetext}
end

local Credits = window:NewTab("Credits")
local Combat = window:NewTab("Combat")
local Blatant = window:NewTab("Blatant")
local Render = window:NewTab("Render")
local Utility = window:NewTab("Utility")
local World = window:NewTab("World")
local UI = window:NewTab("Ui")

local Credits = Credits:NewSection("Credits")
Credits:NewLabel("Credits UI: Kavo ui")
Credits:NewLabel("Credits InfYield: FlyJump")
Credits:NewLabel("Credits 7GrandDad: Velocity")
Credits:NewLabel("Credits 7GrandDad: CFrame speed")
Credits:NewLabel("Credits Moerii: killaura")
Credits:NewLabel("Credits Moerii: bednuker")
Credits:NewLabel("Special thanks to Moerii: for Killaura")
Credits:NewLabel("Special thanks to Moerii: for BedNuker")
Credits:NewLabel("Special thanks to Vamp: For creating the script")

local Reach = Combat:NewSection("Reach")
Reach:NewToggle("Reach", "Extend your attack range", function(state)
	if state then
		CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (reachval["Value"] - 0.0001)
	else
		CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4
	end
end)

Reach:NewSlider("Range 18-1", "", 18, 1, function(val) -- 500 (MaxValue) | 0 (MinValue)
	reachval["Value"] = val
end)

local Sprint = Combat:NewSection("Sprint")
Sprint:NewToggle("Sprint", "Automatically on your sprint", function(state)
	if state then
		BindToStepped("Sprint", 1, function()
			if SprintCont.sprinting == false then
				SprintCont:startSprinting()
			end
		end)
	else
		UnbindFromStepped("Sprint")
		SprintCont:stopSprinting()
	end
end)

local NoFall = Combat:NewSection("NoFallDamage")
NoFall:NewToggle("NoFallDamage", "Prevents taking fall damage", function(state)
	if state then
		local NoFall = {["Enabled"] = true}
		local oldfall

		spawn(function()
			repeat task.wait(0.5)
				ClientHandler:Get("GroundHit"):SendToServer()
			until NoFall["Enabled"] == false
		end)
	end
end)

local Velocity = Combat:NewSection("Velocity")
Velocity:NewToggle("Velocity", "Prevents taking a knockback", function(state)
	if state then
		KnockbackTable["kbDirectionStrength"] = 0
		KnockbackTable["kbUpwardStrength"] = 0
	else
		KnockbackTable["kbDirectionStrength"] = 100
		KnockbackTable["kbUpwardStrength"] = 100
	end
end)

local Speed = Blatant:NewSection("Speed")
Speed:NewToggle("CFrame", "", function(state)
	if state then
		BindToStepped("CFrameWalkSpeed", 1, function(time, delta)
			if entity.isAlive then
				local newpos = (lplr.Character.Humanoid.MoveDirection  * (speedval["Value"] - lplr.Character.Humanoid.WalkSpeed)) * delta

				local raycastparameters = RaycastParams.new()
				raycastparameters.FilterDescendantsInstances = {lplr.Character}
				local ray = workspace:Raycast(lplr.Character.HumanoidRootPart.Position, newpos, raycastparameters)
				if ray then newpos = (ray.Position - lplr.Character.HumanoidRootPart.Position) end
				lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + newpos
			end
		end)
	else
		UnbindFromStepped("CFrameWalkSpeed")
	end
end)

Speed:NewSlider("Speed 1-42", "Adjust CFrame speed", 42, 1, function(s)
	speedval["Value"] = s
end)

local Aura = Blatant:NewSection("KillAura")
Aura:NewToggle("KillAura", "Autoswing the sword if someone is near you", function(state)
	if state then
		BindToStepped("Killaura", 1, function()
			if entity.isAlive then
				KillauraRemote()
			end
		end)
	else
		UnbindFromStepped("Killaura")
	end
end)

Aura:NewSlider("Distance 1-20", "Increase killaura distance", 20, 1, function(val)
	DistVal["Value"] = val
end)

Aura:NewToggle("No Swing", "Disable killaura swing", function(state)
	if state then
		if killauraswing["Enabled"] == true then
			killauraswing["Enabled"] = false
		end
	else
		if killauraswing["Enabled"] == false then
			killauraswing["Enabled"] = true
		end
	end
end)

Aura:NewSlider("Sound 1-0", "Adjust killaura sound", 1, 0, function(val)
	killaurasoundval["Value"] = val
end)

function getbeds()
	local beds = {}
	local blocks = game:GetService("Workspace").Map.Blocks
	for _,Block in pairs(blocks:GetChildren()) do
		if Block.Name == "bed" and Block.Covers.BrickColor ~= game.Players.LocalPlayer.Team.TeamColor then
			table.insert(beds,Block)
		end
	end
	return beds
end

function getbedsblocks()
	local blockstb = {}
	local blocks = game:GetService("Workspace").Map.Blocks
	for i,v in pairs(blocks:GetChildren()) do
		if v:IsA("Part") then
			table.insert(blockstb,v)
		end
	end
	return blockstb
end

function blocks(bed)
	local aboveblocks = 0
	local Blocks = getbedsblocks()
	for _,Block in pairs(Blocks) do
		if Block.Position.X == bed.X and Block.Position.Z == bed.Z and Block.Name ~= "bed" and (Block.Position.Y - bed.Y) <= 9 and Block.Position.Y > bed.Y then
			aboveblocks = aboveblocks + 1
		end
	end
	return aboveblocks
end

function nuker()
	local beds = getbeds()
	for _,bed in pairs(beds) do
		local bedmagnitude = (bed.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
		if bedmagnitude < 27 then
			local upnum = blocks(bed.Position)
			local x = math.round(bed.Position.X/3)
			local y = math.round(bed.Position.Y/3) + upnum
			local z = math.round(bed.Position.Z/3)
			game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.DamageBlock:InvokeServer({
				["blockRef"] = {
					["blockPosition"] = Vector3.new(x,y,z)
				},
				["hitPosition"] = Vector3.new(x,y,z),
				["hitNormal"] = Vector3.new(x,y,z),
			})
		end
	end
end

local BNuker = Blatant:NewSection("BedNuker")
BNuker:NewToggle("BedNuker", "Auto break bed and covers", function(state)
	if state then
		BindToStepped("BedNuker", 1, function()
			nuker()
		end)
	else
		UnbindFromStepped("BedNuker")
	end
end)

local Infjump = Blatant:NewSection("InfJump")
Infjump:NewToggle("Infjump", "Allows you to hold space to fly up", function(state)
	if state then
		local InfJump = {["Enabled"] = true}
		connectioninfjump = uis.JumpRequest:connect(function(jump)
			if InfJump["Enabled"] then
				lplr.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	else
		connectioninfjump:Disconnect()
	end
end)

runcode(function()
	local wall = nil
	local spiderspeed = {["Value"] = 0}
	local Spider = Blatant:NewSection("Spider")
	Spider:NewToggle("Spider", "Allows you to climb up a wall", function(state)
		if state then
			BindToStepped("Spider", 1, function()
				local raycastparameters = RaycastParams.new()
				raycastparameters.FilterDescendantsInstances = {lplr.Character}
				local ray = workspace:Raycast(lplr.Character.Humanoid.LeftLeg.Position, lplr.Character.HumanoidRootPart.CFrame.LookVector * 1.3, raycastparameters)

				wall = ray and ray.Instance or nil
				if wall then
					lplr.Character.HumanoidRootPart.Velocity = Vector3.new(lplr.Character.HumanoidRootPart.Velocity.X or 0, spiderspeed["Value"], lplr.Character.HumanoidRootPart.Velocity.Z or 0)

					if lplr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing then
						lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
					end
				end
			end)
		else
			UnbindFromStepped("Spider")
		end
	end)
	Spider:NewSlider("Speed", "Adjust spider speed", 100, 0, function(val) -- 500 (MaxValue) | 0 (MinValue)
		spiderspeed["Value"] = val
	end)
end)

local FixCam = Utility:NewSection("FixCam/RestoreCam")
FixCam:NewButton("FixCam", "fix camera bug on mobile", function()
	cam.CameraType = Enum.CameraType.Fixed
	cam.CameraType = Enum.CameraType.Custom
end)

local ESP = Render:NewSection("ESP")
ESP:NewToggle("coming next update", "coming next update", function(state)
	if state then
		print("...")
	else
		print("...")
	end
end)

--[[ dont work
runcode(function()
	local function Cape(char, texture)
		for i,v in pairs(char:GetDescendants()) do
			if v.Name == "Cape" then
				v:Remove()
			end
		end
		local hum = char:WaitForChild("Humanoid")
		if char:FindFirstChild("Torso") then
			torso = char.Torso
		else
			torso = char.UpperTorso
		end
		local p = Instance.new("Part", torso.Parent)
		p.Name = "Cape"
		p.Anchored = false
		p.CanCollide = false
		p.TopSurface = 0
		p.BottomSurface = 0
		p.FormFactor = "Custom"
		p.Size = Vector3.new(0.2,0.2,0.2)
		p.Transparency = 1
		local decal = Instance.new("Decal", p)
		decal.Texture = texture
		decal.Face = "Back"
		local msh = Instance.new("BlockMesh", p)
		msh.Scale = Vector3.new(9,17.5,0.5)
		local motor = Instance.new("Motor", p)
		motor.Part0 = p
		motor.Part1 = torso
		motor.MaxVelocity = 0.01
		motor.C0 = CFrame.new(0,2,0) * CFrame.Angles(0,math.rad(90),0)
		motor.C1 = CFrame.new(0,1,0.45) * CFrame.Angles(0,math.rad(90),0)
		local wave = false
		repeat wait(1/44)
			decal.Transparency = torso.Transparency
			local ang = 0.1
			local oldmag = torso.Velocity.magnitude
			local mv = 0.002
			if wave then
				ang = ang + ((torso.Velocity.magnitude/10) * 0.05) + 0.05
				wave = false
			else
				wave = true
			end
			ang = ang + math.min(torso.Velocity.magnitude/11, 0.5)
			motor.MaxVelocity = math.min((torso.Velocity.magnitude/111), 0.04) --+ mv
			motor.DesiredAngle = -ang
			if motor.CurrentAngle < -0.2 and motor.DesiredAngle > -0.2 then
				motor.MaxVelocity = 0.04
			end
			repeat wait() until motor.CurrentAngle == motor.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag) >= (torso.Velocity.magnitude/10) + 1
			if torso.Velocity.magnitude < 0.1 then
				wait(0.1)
			end
		until not p or p.Parent ~= torso.Parent
	end
	local Cape = Render:NewSection("Cape")
	Cape:NewToggle("Cape", "Wear a cape on the back side of character", function(state)
		if state then
			lplr.CharacterAdded:Connect(function(char)
				if char ~= oldchar then
					spawn(function()
						pcall(function()

							Cape(char, "rbxthumb://type=Asset&id=" .. 9824791700 .. "&w=420&h=420")
						end)
					end)
				end
			end)
			spawn(function()
				if lplr.Character and lplr.Character ~= oldchar then
					spawn(function()
						pcall(function()
							Cape(lplr.Character, "rbxthumb://type=Asset&id=" .. 9824791700 .. "&w=420&h=420")
						end)
					end)
				end
			end)
		else
			if lplr.Character then
				for i,v in pairs(lplr.Character:GetDescendants()) do
					if v.Name == "Cape" then
						v:Remove()
					end
				end
			end
		end
	end)
end)
dont work]]

runcode(function()
	local antivoidp
end)

local AntiVoid = World:NewSection("AntiVoid")
AntiVoid:NewToggle("AntiVoid", "Give's you a second chance to get back on land", function(state)
	if state then
		antivoidp = Instance.new("Part", workspace)
		antivoidp.Name = "AntiVoid"
		antivoidp.CanCollide = true
		antivoidp.Size = Vector3.new(2048, 1, 2048)
		antivoidp.Anchored = true
		antivoidp.Transparency = 1 - (antivoidtransparent["Value"] / 100)
		antivoidp.Material = Enum.Material.Neon
		antivoidp.Color = Color3.fromHSV(antivoidcolor["Hue"], antivoidcolor["Sat"], antivoidcolor["Value"])
		antivoidp.Position = Vector3.new(0, 23.5, 0)
		antivoidp.Touched:connect(function(touchedvoid)
			if touchedvoid.Parent:FindFirstChild("Humanoid") and touchedvoid.Parent.Name == lplr.Name then
				lplr.Character.Humanoid.Jump = true
				lplr.Character.Humanoid:ChangeState("Jumping")
				wait(0.2)
				lplr.Character.Humanoid:ChangeState("Jumping")
				wait(0.2)
				lplr.Character.Humanoid:ChangeState("Jumping")
			end
		end)
	else
		if antivoidp then
			antivoidp:Remove()
		end
	end
end)

AntiVoid:NewColorPicker("Color", "Adjust antivoid color", Color3.fromHSV(antivoidcolor["Hue"], antivoidcolor["Sat"], antivoidcolor["Value"]), function(val)
	if antivoidp then
		antivoidp.Color = (val)
	end
end)

AntiVoid:NewSlider("Invisible 1-100", "Adjust antivoid transparency", 100, 0, function(val)
	if antivoidp then
		antivoidp.Transparency = 1 - (val / 100)
	end
end)

local UI = UI:NewSection("Colors")
for theme, color in pairs(colors) do
	UI:NewColorPicker(theme, "Change your "..theme, color, function(color3)
		kavoUi:ChangeColor(theme, color3)
	end)
end
