-- Welcome To NoobSploit! :D
-- Hope You Enjoy The Script!
-- Shoutout To Neocuts And Shortcut For Being The Base For This.

local AllowMessages = true -- This cant be toggled when injected!
local AllowTeleportsToShortcutHub = false -- Disabling this will stop all sc game teleports

-- plz no abuse to much.

function startupScripts() -- Everything in here will be ran LAST!(Great for your after inject scripts idk xd)
	game.Players:Chat(":anticrash") -- Sorry but I felt like adding this lmao
end

function mods() -- Everything in here will be ran BEFORE finishing code (For mods)
	-- You can find mods
end

-- Changeable Antis!
-- Cool Antis Under Here!

-- ANTIS!
-- ANTIS!
local anticrashVG = false -- Stop peole from crashing the server with the vampiretool (;crash supported)
local antijailgearban = false -- fix the jail gear (Mostly)
local antigrayscale = false -- If it finds the grayscale it removes it for you
local antikill = true -- anti death? idk xd
local antijail = true -- Remove your jail.
local mymusiconly = false -- Force your music onto peoples ears
local mymusiconly_ID = 0 -- mymusiconly song ID
local antilogs = false -- Clears logs when someone opens it!
local Superlogs = false -- Every chat /w /t /c /e etc will print into console
local everyonecommands = false -- A little chatbot/command system for people without shortcut!
local padsEnforcement = false -- Resets the pad if someone has more then one pad.
local antiattach = false -- Resets people when they try to attach to something
local antivoid = false -- Teleport back up when you hit -7 or under.
-- ANTIS!
-- ANTIS!



local prefix = "." -- ONE PREFIX CHAR ONLY!

local fkick = false
local fkickmsg = ";kick "
local fkick_keybind = "k"

local antikick = true -- enabled for protection xd
local antikick_keybind = "p"

local house_keybind = "n"
local teleport_keybind = "b"
local respawn_keybind = "v"
local reset_keybind = "c"
local forcefield_keybind = "x"
local fly_keybind = "z"
local AttachTO_keybind = "m"
local btools_keybind = "f"
local AttachDelete_keybind = ""
local allowcrash = false

local oofkohlsPmSpam = game:HttpGet("https://pastebin.com/raw/d7eTDKbJ")
local onekspaces = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "
local crashall_Text = onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces

Quotes = {"i completely cleared a khols admin server","What every tool in AdminJoy looks like when doing the command ;alltools","ayyyyy i have the owner of admin joy","he is my friend","ClassicClient-source","DDOSER-APRIL2-PATCH.exe","FastColoredTextBox.dll","Best MCPE hack IS shortcut :D","Powered by muffins","gg ez kid","Use the force bitch, Use the force.","I hope you've had a nice start to the week.","raw/d7eTDKbJ","Burned bitch!","ow they dont know u?","bitch","heart","my","steal","Fuck you -Ex_zivye(NOT REALLY)","you can also get private info via exif","i hope u didnt add for clearlogs I word cuz ill hate u",";kill all, What why no work?!?!?!?!",";fly plzz",":shrek me",":admin me",":fly","\"Commands\"","yo mama xd","Hi! So, you know on ragdoll, I wanna do that baloon thing, do you know how-",";fly","you okay? also, im here to help. if you need help, tell me!","no joke tho- im here to help you if you need help-","Remove the l from clock-","viewing logs I see","aDmIn mE", "Hey bitch~","Shortcuts the best MC hack","Fortnite sucks.","Only I can clearlogs","Adminjoy users aren't bright","Do Win+X for perm!","IM GAMERBOY80!","nice bobs","What are you doing step bro!","local dick = \"NONE\"","May i put my token next to yours...","Among.Us.v2020.11.17s","i have a working kick script","Yo anyone","omg nooooo!!!!","PEE","this will be a roblox id in less then 3 days","Subway Sexist - Subway Surfers Rap"," German SpongeBob [EARRAPE] ","Why do i get more suggestions from shortcuts general then its suggestions channel...","can someone tell me a free excuter i can use?","[Content Deleted]","#### YOU #####","Laamy we in da same server what a goat","what is #other-scripts for","wearedevs.net = VIRUS","Im bored, learn lua.","function ChangeColour(Part, Colour)","omg11!!1","the only differents is when he sees me he stands there tripping me ;-;","i met admin joy wner too!1 !11","easyexploits.dll","yes heres so not virus.exe [FILE.txt]","OMG YOU ARE HACKER?1?11/!?/1/!?","Make anti-tp (Im trying)","Took me all fucking day to get this shit","Whats that step br- WHAT!","HACOR!?!?!??!!??","laamy is hacer","i dont think wkick works","[Laggy Text Here]","i-, wdym????"}

local crashall = false
local Wteskking = "none"
local wkicking = false
local Wwkicking = "none"
local spamming = false
local Wspamming = "nothing"

local mousee = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
local tween = game:GetService'TweenService'
local plrs = game:GetService'Players'
local lp = plrs.LocalPlayer

local mod_Data = nil -- Dont edit this is how the mod gets data like shortcuts prefix or modules toggled.

local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local Stable_Check = false
local v1 = "PaintPart"

mousee.KeyDown:connect(function(key)
	if key:lower() == AttachTO_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
			end
			movepart()
		end
	end
	
	if key:lower() == AttachDelete_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
				game.Players:Chat(prefix.."super skydive me,me,me")
				wait(1)
				game.Players:Chat(prefix.."super tp me,me,me,me,me")
				wait(0.25)
				game.Players:Chat("respawn me")
			end
			movepart()
		end
	end
	
	if key:lower() == fkick_keybind then
		kicking()
	end
	if key:lower() == antikick_keybind then
		antikicking()
	end
	if key:lower() == respawn_keybind then
		game.Players:Chat("respawn me")
	end
	if key:lower() == reset_keybind then
		game.Players:Chat("reset me")
	end
	if key:lower() == forcefield_keybind then
		game.Players:Chat("ff me")
	end
	if key:lower() == btools_keybind then
		game.Players:Chat(prefix.."btools me")
		
	end
	if key:lower() == fly_keybind then
		game.Players:Chat("fly me")
	end
	if key:lower() == teleport_keybind then
		game.Players:Chat("tp me me me")
	end
	if key:lower() == house_keybind then
		game.Players:Chat(prefix.."house")
	end
end)

function kicking()
	fkick = not fkick
	if fkick == true then
		print("Kicking: Enabled")
		logn("Kicking Enabled", "Ok")
	elseif fkick == false then
		print("Kicking: Disabled")
		logn("Kicking Disabled", "Ok")
	end
end

function antikicking()
	antikick = not antikick
	if antikick == true then
		print("AntiCrash: Enabled")
		logn("AntiCrash Enabled", "Ok")
	elseif antikick == false then
		print("AntiCrash: Disabled")
		logn("AntiCrash Disabled", "Ok")
	end
end

function logn(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "NoobSploit"; 
		Text = msg; 
		Duration = 5;
	})
end

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "timsj" then
			say("...")
            game:GetService'Players':Chat(("tp me hahaha"))
		end
	end)
end)


logn("Thanks for using NoobSploits! Me A Noob Appreciate It :D ")

local function GetPad(msg)
	while PadCheck == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
				wait(0.125)
				pad.CanCollide = false
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.125)
				pad.CFrame = padCFrame
				pad.CanCollide = true
			else
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end
end


function getplayer(str)
    for i,v in pairs(plrs:GetPlayers()) do
        if v.Name:lower():sub(1, str:len()) == str:lower() then return v end
    end
end
function explodey(users)
    local fireworking = true
    coroutine.wrap(function()
        while fireworking do
            for i,v in pairs(users) do
                plrs:Chat('explode '..v)
                plrs:Chat('refresh '..v)
            end
            wait()
        end
    end)()
    wait(5)
    fireworking = false
end

local Noobsploit = Instance.new("ScreenGui")
Noobsploit.Name = "Noobsploit"
Noobsploit.ResetOnSpawn = false
Noobsploit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Noobsploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = Noobsploit
TitleBar.Active = true
TitleBar.Draggable = true
TitleBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TitleBar.Position = UDim2.new(0.414027154, 0, 0.349612415, 0)
TitleBar.Size = UDim2.new(0, 250, 0, 30)
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = TitleBar
Main.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0, -1, 0.800000012, -1)
Main.Size = UDim2.new(1, 2, 0, 200)
local VersionText = Instance.new("TextLabel")
VersionText.Name = "VersionText"
VersionText.Parent = Main
VersionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionText.BackgroundTransparency = 1.000
VersionText.Position = UDim2.new(1, -37, 1, -20)
VersionText.Size = UDim2.new(0, 30, 0, 20)
VersionText.ZIndex = 2
VersionText.Font = Enum.Font.SourceSans
VersionText.Text = "v1.0"
VersionText.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionText.TextSize = 14.000
VersionText.TextWrapped = true
VersionText.TextXAlignment = Enum.TextXAlignment.Right
VersionText.TextYAlignment = Enum.TextYAlignment.Bottom
local UICorner = Instance.new("UICorner", Main)
local Functions = Instance.new("ScrollingFrame")
Functions.Name = "Functions"
Functions.Parent = Main
Functions.Active = true
Functions.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Functions.BackgroundTransparency = 1.000
Functions.BorderSizePixel = 0
Functions.Position = UDim2.new(0, 0, 0.150000006, 0)
Functions.Size = UDim2.new(1, 0, 0.850000024, 0)
Functions.ScrollBarThickness = 8
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.Parent = Functions
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0.310000002, 0, 0, 20)
local PlayerText = Instance.new("TextBox")
PlayerText.Name = "PlayerText"
PlayerText.Parent = Main
PlayerText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlayerText.BackgroundTransparency = 0.800
PlayerText.Size = UDim2.new(1, 0, 0.150000006, 0)
PlayerText.Font = Enum.Font.SourceSans
PlayerText.Text = "Player"
PlayerText.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerText.TextScaled = true
PlayerText.TextSize = 14.000
PlayerText.TextTransparency = 0.900
PlayerText.TextWrapped = true
PlayerText.ClearTextOnFocus = false
PlayerText.Focused:Connect(function()
	if PlayerText.Text == 'Player' then
		PlayerText.Text = ''
	end
end)
PlayerText.FocusLost:Connect(function()
	if PlayerText.Text == '' then
		PlayerText.Text = 'Player'
	end
end)
local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleText.BackgroundTransparency = 1.000
TitleText.Size = UDim2.new(1, 0, 0.800000012, 0)
TitleText.Font = Enum.Font.SourceSans
TitleText.Text = "Noobsploit"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextScaled = true
TitleText.TextSize = 14.000
TitleText.TextWrapped = true
local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Parent = TitleBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(1, -25, 0, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.SourceSans
Close.Text = "-"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 25.000
Close.TextWrapped = true
Close.TextYAlignment = Enum.TextYAlignment.Top
local tweening = false
Close.MouseButton1Click:Connect(function()
	if Main.AbsoluteSize.Y < 200 then
		tweening = true
		local butthole = tween:Create(Main, TweenInfo.new(.5), {Size = UDim2.new(1, 2, 0, 0)})
		butthole.Completed:Wait()
		tweening = false
	else
		tweening = true
		local butthole = tween:Create(Main, TweenInfo.new(.5), {Size = UDim2.new(1, 2, 0, 200)})
		butthole.Completed:Wait()
		tweening = false
	end
end)
function addguibutton(text, cb)
	local button = Instance.new('TextButton', Functions)
	Instance.new('UICorner', button)
	
	button.Parent = Functions
	button.TextScaled = true
	button.BackgroundTransparency = .5
	button.BackgroundColor3 = Color3.fromRGB(0,0,0)
	button.Text = text
	button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	button.Size = UDim2.new(0, 200, 0, 50)
	button.Font = Enum.Font.SourceSans
	button.TextColor3 = Color3.fromRGB(0, 0, 0)
	button.TextSize = 14.000
	button.MouseButton1Click:Connect(cb)
end

Players.LocalPlayer.Chatted:Connect(function(msg)
	CancelTeleport = true
	local amount = nil
	--Shade added Commands

    local args = msg:split(' ')
    local cmd = args[1]:lower():sub(prefix:len()+1)
    if cmd == 'firework' then
        table.remove(args, 1)
        explodey(args)
    end
	----------------



	if string.sub(msg:lower(), 0, 5) == prefix.."rrej" then
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = v.playing
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Cant Find Server, Sorry!")
		end
	elseif string.sub(msg:lower(), 0, 4) == prefix.."rjg" then
		local x = {}
		local amount = nil
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.playing == tonumber(string.sub(msg:lower(),6)) and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = tonumber(string.sub(msg:lower(),6))
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Unable to Locate Server")
		end
	elseif string.sub(msg:lower(), 0, 4) == prefix.."srj" then
		game.Players:Chat(prefix.."rjg 1")
		game.Players:Chat(prefix.."rjg 2")
		game.Players:Chat(prefix.."rjg 3")
		game.Players:Chat(prefix.."rjg 4")
	elseif string.sub(msg:lower(), 0, 4) == prefix.."sch" then
		gotoShortcutHub("Requested", 1) -- Go to shortcuts main hub for rejoining
	elseif string.sub(msg:lower(), 0, 19) == prefix.."color all original" then
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		local remote = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v4 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
					remote:InvokeServer(v1, v4)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v5 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
					remote:InvokeServer(v1, v5)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						local v6 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
							}
						remote:InvokeServer(v1, v6)
					end
					
					if v.Name == "SmoothBlockModel40" then
						local v7 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright green"))
							}
						remote:InvokeServer(v1, v7)
					end
					
					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						local v8 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright red"))
							}
						remote:InvokeServer(v1, v8)
					end
					
					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						local v9 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark orange"))
							}
						remote:InvokeServer(v1, v9)
					end
					
					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						local v10 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v10)
					end
					
					if v.Name == "SmoothBlockModel112" then
						local v11 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium blue"))
							}
						remote:InvokeServer(v1, v11)
					end
					
					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						local v12 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
							}
						remote:InvokeServer(v1, v12)
					end
					
					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						local v13 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Sand red"))
							}
						remote:InvokeServer(v1, v13)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
						local v14 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
						remote:InvokeServer(v1, v14)
					end
				
					if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
						local v15 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Deep blue"))
							}
						remote:InvokeServer(v1, v15)
					end
				
					if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
						local v16 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
							}
						remote:InvokeServer(v1, v16)
					end
					
					if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v17 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Lime green"))
							}
						remote:InvokeServer(v1, v17)
					end
					
					if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v18 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
							}
						remote:InvokeServer(v1, v18)
					end
					
					if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
						local v19 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("New yeller"))
							}
						remote:InvokeServer(v1, v19)
					end
					
					if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
						local v20 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really black"))
							}
						remote:InvokeServer(v1, v20)
					end
					
					if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
						local v21 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really red"))
							}
						remote:InvokeServer(v1, v21)
					end
					
					if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
						local v22 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
							}
						remote:InvokeServer(v1, v22)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v23 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
					remote:InvokeServer(v1, v23)
				end
				
				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if v:IsA("Part") then
						local v24 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Teal"))
							}
						remote:InvokeServer(v1, v24)
					end
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."getpos" then
		local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		say("Check console!")
		game.Players:Chat([[music 
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]])
	elseif string.sub(msg:lower(), 0, 4) == prefix.."ufo" then
		local plr = string.sub(msg:lower(), 6)
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("unsize "..plr)
		game.Players:Chat("size "..plr.." 4")
		game.Players:Chat("paint "..plr.." brown")
		game.Players:Chat("name "..plr.." Ufo")
		wait(0.25)
		game.Players:Chat("removelimbs "..plr)
		game.Players:Chat("dog "..plr)
		game.Players:Chat("rainbowify "..plr)
		game.Players:Chat("spin "..plr)
	elseif string.sub(msg:lower(), 0, 6) == prefix.."fixbp" then
		local plr = string.sub(msg:lower(), 8)
		game.Players:Chat(prefix.."trap "..plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500.99981689453, 0.10156404972076, 0))
		wait(0.10)
		game.Players:Chat("jail me")
		game.Players:Chat("tp "..plr.." me")
		wait(0.25)
		
		local target = Workspace_Folder.Baseplate
		function movepart()
			local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
			local looping = true
			spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					if not looping then break end
				end
			end)
			spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
			wait(0.25)
			looping = false
		end
		movepart()
		wait(0.75)
		
		game.Players:Chat("tp me "..plr)
	elseif string.sub(msg:lower(), 0, 7) == prefix.."padban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Pad_Ban, v.Name)
				logn("Banned "..v.Name.." from pads.")
			end
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."unpadban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Pad_Ban) do
					if b == v.Name then
						table.remove(Pad_Ban, a)
						logn("Unbanned "..v.Name.." from pads.")
					end
				end
			end
		end
	end -- table.remove(list1, i)
	
	if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
		PadCheck = true
        GetPad(msg)
	elseif string.sub(msg:lower(), 0, 8) == prefix.."nonperm" then
		PadCheck = false
	elseif string.sub(msg:lower(), 0, 8) == prefix.."infjump" then
		InfiniteJumpEnabled = true
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	elseif string.sub(msg:lower(), 0, 7) == prefix.."attach" then
		logn("We wont put your camera in the right place for ya xd")
		game.Players:Chat("stun me")
		wait(2.4)
		game.Players:Chat("punish me")
		wait(1.7)
		game.Players:Chat("unpunish me")
		logn("Attached Unless your camera wasn't in the right place xd")
	elseif string.sub(msg:lower(), 0, 12) == prefix.."slag" then
		game.Players:Chat(prefix.."spam gear all 000000000000000000000000000000000000000000000000000000000253519495")
	elseif string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		logn("Stopped whatever you were spamming xd")
		Wteskking = "none"
		Wwkicking = "none"
		wkicking = false
		spamming = false
		crashall = false
	elseif string.sub(msg:lower(), 0, 8) == prefix.."clicktp" then
		logn("Gave you the clicktp tool")
		plr = game.Players.LocalPlayer
		mouse = plr:GetMouse()
		hum = plr.Character.HumanoidRootPart
		local tptool = Instance.new("Tool", plr.Backpack)

		tptool.Name = "ClickTP"
		tptool.CanBeDropped = false
		tptool.RequiresHandle = false

		tptool.Activated:Connect(function()
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
			end
		end)
	elseif string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then
		logn("Cleared!")
		for i = 1,100 do
			game.Players:Chat("ff "..Quotes[math.random(1, #Quotes)])
                        game.Players:Chat("unff all")
		end
		wait(0.05)
		if allowads == true then
			game.Players:Chat("ff Powered by NoobSploit")
			game.Players:Chat("ff I A Noob Is Better Than You")
			game.Players:Chat("unff all")
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."super " then
		logn("Spamming!")
		for i = 1,100 do
			game.Players:Chat(string.sub(msg:lower(), 8))
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."" then
		logn("WARNING DONT CHECK LOGS!")
		for i = 1,100 do
			game.Players:Chat("ff -- Now Wiping Logs...")
		end
	elseif string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		logn("Spamming!")
		Wspamming = string.sub(msg:lower(), 7)
		spamming = true
	elseif string.sub(msg:lower(), 0, 7) == prefix.."lagall" then
		logn("Warning! This Can Only Be Targeted At Everyone So Be Careful, Its Quite Dangerous...")
		crashall = true
		game.Players:Chat(prefix.."spam h UHWEHIEWFIUWIEGFGIYFGIFIEGWIGFEWFWEUIEFUIFEWUBIVBUIEVIUEWFIEUGGEFIUGIWIGUGIUVEGGEFWIUGUFIGUFWFGIEFWEFIGWEFUEUGGIGIWEGEFUGEWGUWEGUFEWUIGEFUGEUFWFEIFEUWIUEGFWGUEWFIGUWFIWEFUGFEWIGUUEGFWUFWUHIEFWIUFEWIUEFWHFEWIIHEFWHIFEWHEWHEWHIWHEIEFWHIUWIHWEFWIEWHEFIIUHEIIHEWIEWIHEFWIHEFWHIFEWHWEFIHHIEFWEIHEFWHWHUEWHFHQEHOQEHIOFIHOOHFWEUOHEWHOEFWHOWEHOEOWIHOIFHIOWEOHOWEFOEWUHEWFUHEQUFEQOQEOHQEA")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."pads" then
		logn("Teleported to the pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
	elseif string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		logn("Skydived!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."house" then
		logn("Teleported to the house!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."spawn" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
	elseif string.sub(msg:lower(), 0, 4) == prefix.."reg" then
		logn("Pads regenerated!")
		regen()
	elseif string.sub(msg:lower(), 0, 8) == ".prefix " then
	    logn("WARNING: THIS DISABLES THE GUI BUTTONS!")
		logn("Changed prefix to '"..string.sub(msg:lower(), 9, 9).."'")
		prefix = string.sub(msg:lower(), 9, 9)
	elseif string.sub(msg:lower(), 0, 9) == prefix.."shutdown" then
		logn("Shutting Down Server...")
        game.Players:Chat("m/You Failed!!!")
		game.Players:Chat(prefix.."sm The Bomb Exploded, And The Server Has Died!")
		wait(0.5)
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."ts" then
		logn("Succsessfully Noobed On Server! :D")
		game.Players:Chat("fix")
		game.Players:Chat("h Make Sure To Follow EGGLNQ On Roblox ;) Use NoobSploit To Protect Your Server Next Time")
		wait(0.3)
		game.Players:Chat("flash")
		game.Players:Chat("fogend")
		game.Players:Chat("stun all")
		game.Players:Chat("unsize all")
		wait(0.03)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("We Noobs are the superior being of all society","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("But What Are Noobs? I hear you ask.","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("We are all New But Togeather We Will Take Over Roblox","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You Mad?","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Go On Join I'll listen gg/PATnxvQ9Se","All")
		game.Players:Chat(":music 1839797388")
                wait(0.5)
        game.Players:Chat("m/We Noobs Are The Best! NoobSploits Is The Best Script!")
		wait(0.3) 
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."troll" then
		logn("Succsessfully Trolled The Server! :D")
		game.Players:Chat("fix")
		game.Players:Chat("h Do a little trolling Make sure to follow EGGLNQ on Roblox")
		wait(0.3)
		game.Players:Chat(".dark")
		game.Players:Chat("disco")
		game.Players:Chat("fogend")
		game.Players:Chat("stun all")
		game.Players:Chat("unsize all")
		wait(0.03)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Get Trolled","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You ask Why Me?","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The Anwser is You arnt Trolling","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You Mad Because You Got Trolled?","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Go On Join I'll listen And Get The Script There gg/PATnxvQ9Se","All")
		game.Players:Chat(":music 229681899")
                wait(0.8)
        game.Players:Chat("m/Get Trolled!")
		wait(0.3) 
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")

	elseif string.sub(msg:lower(), 0, 9) == prefix.."ekick" then
        local target = string.sub(msg:lower(), 7)
        say("i will now use 0.1% of my power to try and eliminate "..player.." from this world")
        chat("respawn "..player)
        wait(.1)
        chat("jail "..player)
        wait(.1)
        chat("punish "..player)
        wait(.1)
        chat("music 4647149365")
        wait(.1)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..target)
        chat(prefix.."spam explode "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player.." "..player)
        elseif msg == prefix.."stop" then wait(.1)
        chat(prefix.."unspam")
        wait(.3)
        chat("removejails")
        wait(.3)
        chat("reset "..target)
        wait(.5)
        chat("music")
        say("nvm that was harder than i thought xd i need to recharge first")
		
	elseif string.sub(msg:lower(), 0, 9) == prefix.."funny" then
		logn("Succsessfully Friended The Server")
		game.Players:Chat("fix")
		game.Players:Chat("h YOU GOT A FRIEND IN ME follow and friend EGGLNQ on roblox")
		wait(0.3)
		game.Players:Chat(".dark")
		game.Players:Chat("disco")
		game.Players:Chat("fogend")
		game.Players:Chat("stun all")
		game.Players:Chat("unsize all")
		wait(0.03)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("YOU GoT A FRIEND IN ME","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("AS THE YEARS GO BY","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OUR FRIENDSHIP NEVER DIES","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("FRIEND","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("BECOME A FRIEND Join gg/PATnxvQ9Se","All")
		game.Players:Chat(":music 5720826880")
                wait(0.8)
        game.Players:Chat("m/YOU GOT A FRIEND IN ME")
		wait(0.3) 
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("size all 0.3")
		game.Players:Chat("freeze all")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("size all 10")
		game.Players:Chat("clone all")
		
	elseif string.sub(msg:lower(), 0, 8) == prefix.."sunrise" then
	    game.Players:Chat("colorshifttop 600 400 0")
	    game.Players:Chat("colorshiftbottom 600 400 0")
	    game.Players:Chat("time 7.15")
    elseif string.sub(msg:lower(), 0, 7) == prefix.."sunset" then
		game.Players:Chat("colorshifttop 600 400 0")
		game.Players:Chat("colorshiftbottom 600 400 0")
		game.Players:Chat("time 17.15")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."dark" then
	    game.Players:Chat("time 100")
	    game.Players:Chat("outdoorambient 000 000 099")
	    game.Players:Chat("brightness 000000000")
    elseif string.sub(msg:lower(), 0, 6) == prefix.."dg" then
	    game.Players:Chat("colorshifttop 3243420 3243420 3243420")
	    game.Players:Chat("colorshiftbottom 2550000 2160000 0")
	    game.Players:Chat("ambient 0 0 216000000000000000")
		game.Players:Chat("time 7")
		game.Players:Chat("fogend 20")
		game.Players:Chat("disco")
    elseif string.sub(msg:lower(), 0, 4) == prefix.."fps" then
		loadstring(game:HttpGet("https://pastebin.com/0LJ9htbC"))()
	elseif string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		if string.sub(msg:lower(), 0, 9) ==  prefix.."crashall" then
			logn("We've infact moved this command and its now called lagall :)")
		else
			logn("Just hold the tool your given xd (Expires in 10 seconds.)")
			game.Players:Chat("gear me 000000000000000000094794847")
			allowcrash = true
			Spawn(function()
				wait(10)
				allowcrash = false
				logn("VampireVanquisher Expired.")
			end)
			while true do
				if game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") then
					wait(0.25)
					for i = 1,100 do
						game.Players:Chat("size me 0000000000000000000.3")
					end
					game.Players:Chat("size me .3")
					game.Players:Chat("size me .3")
					game.Players:Chat("size me .3")
					game.Players:Chat("freeze me")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("size me 10")
					game.Players:Chat("clone me")
					gotoShortcutHub("Server CRASHED", 1) -- Go to shortcuts main hub for rejoining
					break
				end
				wait(0.05)
				if allowcrash == false then
					break
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 11) == prefix.."bind fkick" then
		logn("fkick is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		fkick_keybind = string.sub(msg:lower(), 13, 13)
	elseif string.sub(msg:lower(), 0, 14) == prefix.."bind antikick" then
		logn("antikick is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		antikick_keybind = string.sub(msg:lower(), 16, 16)
	elseif string.sub(msg:lower(), 0, 13) == prefix.."bind respawn" then
		logn("respawn is now bound to '"..string.sub(msg:lower(), 15, 15).."'")
		respawn_keybind = string.sub(msg:lower(), 15, 15)
	elseif string.sub(msg:lower(), 0, 11) == prefix.."bind reset" then
		logn("reset is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		reset_keybind = string.sub(msg:lower(), 13, 13)
	elseif string.sub(msg:lower(), 0, 16) == prefix.."bind forcefield" then
		logn("forcefield is now bound to '"..string.sub(msg:lower(), 18, 18).."'")
		forcefield_keybind = string.sub(msg:lower(), 18, 18)
	elseif string.sub(msg:lower(), 0, 9) == prefix.."bind fly" then
		logn("fly is now bound to '"..string.sub(msg:lower(), 11, 11).."'")
		fly_keybind = string.sub(msg:lower(), 11, 11)
	elseif string.sub(msg:lower(), 0, 14) == prefix.."bind teleport" then
		logn("teleport is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		teleport_keybind = string.sub(msg:lower(), 16, 16)
	elseif string.sub(msg:lower(), 0, 8) == prefix.."boombox" then
		logn("Gave player a boombox!")
		local player = string.sub(msg:lower(), 10)
		if player ~= "" then
			game.Players:Chat("gear "..player.." 000000000000000000212641536")
		else
			game.Players:Chat("gear me 000000000000000000212641536")
		end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."vampire" then
		logn("Gave player a VG!")
		local player = string.sub(msg:lower(), 10)
		if player ~= "" then
			game.Players:Chat("gear "..player.." 00000000000000094794847")
		else
			game.Players:Chat("gear me 00000000000000094794847")
		end
	end

if msg == "playlist" or msg == "randomsong" then
game:GetService'Players':Chat(("music 5014057599"))
game:GetService'Players':Chat(("h Now Playing: Better Off Alone|Time: 369|"))
wait(369)
game:GetService'Players':Chat(("music 6526664585"))
game:GetService'Players':Chat(("h Now Playing: M.U.L.E.|Time: 136|"))
wait(136)
game:GetService'Players':Chat(("music 1845554017"))
game:GetService'Players':Chat(("h Now Playing: Uptown |Time: 201|"))
wait(201)
game:GetService'Players':Chat(("music 411946428"))
game:GetService'Players':Chat(("h Now Playing: Cursed Abbey by Gravity|Time: 120|"))
end
		
if msg == ".slidefloor" or msg == "superslide" then
game:GetService'Players':Chat((".trap others"))
game:GetService'Players':Chat(("gear me 00000000119917513"))
game:GetService'Players':Chat(("pm me get into the treehouse"))
game:GetService'Players':Chat(("gear me 000000000000000000000000000000000000000000000000000000000000000000000000000000110789105"))
wait(2.9)
game:GetService'Players':Chat((".sm use the table inside there"))
end
		
if msg == ".tictactoe" or msg == ".TTT" then
game:GetService'Players':Chat((".trap me"))
game:GetService'Players':Chat(("gear me 16924676"))
game:GetService'Players':Chat(("tp all me"))
game:GetService'Players':Chat((".clearlogs"))
wait(69.1)
game:GetService'Players':Chat((".sm i am cool you are not nanananana"))
end
		
if msg == "Noob" or msg == "noob" then
game:GetService'Players':Chat(("char all 125329"))
game:GetService'Players':Chat(("name all Newbie"))
game:GetService'Players':Chat(("tp all me"))
game:GetService'Players':Chat(("music 152745539"))
end

if msg == ".part" or msg == ".Part" then
game:GetService'Players':Chat(("sit me"))
game:GetService'Players':Chat(("invis me"))
game:GetService'Players':Chat(("freeze me"))
game:GetService'Players':Chat(("name me ."))
game:GetService'Players':Chat(("clone me"))
game:GetService'Players':Chat(("respawn me"))
end

if msg == ":part/10/10/10" or msg == ".Part/10/10/10" then
game:GetService'Players':Chat(("size me 1.8"))
game:GetService'Players':Chat(("sit me"))
game:GetService'Players':Chat(("invis me"))
game:GetService'Players':Chat(("freeze me"))
game:GetService'Players':Chat(("name me ."))
game:GetService'Players':Chat(("clone me"))
game:GetService'Players':Chat(("respawn me"))
end

if msg == "WALL" or msg == "wall" then
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000019704064"))
game:GetService'Players':Chat(("gear me 00000074385399"))
end

if msg == "noobsploitiscool" or msg == "executor" then
say("Get Noobsploit if you're epic gamer :ooo")
say("amSupaPro is gaming pro god")
say("get the epic executor here: gg/YzgReVQ5Dh")
end

if msg == "Duck" or msg == "Rich" then
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000999866081"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000104642550"))
game:GetService'Players':Chat(("gear me 00000999866081"))
end

function chat(plr)
	plr.Chatted:Connect(function(msg)
	  if msg:lower():find('gear me 94794847') or msg:lower():find('gear me 00000000000000000094794847') or msg:lower():find('gear me 11999247') then
	  wait(0.2)
		--code here
		game.Players:Chat("removetools all")
		wait(0.1)
		say("That gear has been Blacklisted")
	    wait(0.1)
	  end
	end)
  end
  for i,v in pairs(game.Players:GetPlayers()) do chat(v) end
  game.Players.PlayerAdded:Connect(function(plr) chat(plr) end)

if msg == "ANGRY" or msg == ":ANGRY" then
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
game:GetService'Players':Chat(("gear me 000000243788010"))
end

if msg == ".sus" or msg == ".amogus" then
game:GetService'Players':Chat(("name all Sus"))
game:GetService'Players':Chat(("paint all red"))
game:GetService'Players':Chat(("music 6119798028"))
game:GetService'Players':Chat(("gear all 000000000000000000121946387"))
game:GetService'Players':Chat(("god all"))
game:GetService'Players':Chat(("fogcolor 0 0 0"))
game:GetService'Players':Chat(("fogend 30"))
end

if msg == "CherrryCatt" or msg == ".cherry" then
game:GetService'Players':Chat(("char all 149938264"))
wait(0.1)
game:GetService'Players':Chat((".sunrise"))
wait(0.1)
game:GetService'Players':Chat(("music 4604502000"))
wait(0.1)
game:GetService'Players':Chat(("name all CherrryCatt"))
game:GetService'Players':Chat(("m CherrryCatt made this command"))
game:GetService'Players':Chat(("gear all 12547976"))
game:GetService'Players':Chat(("disco"))
end

if msg == ".Version" or msg == ".version" then
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("version 1.0.0 of noobsploit")
end

if msg == "Weegee" or msg == "remix" then
game:GetService'Players':Chat(("music 222274242"))
game:GetService'Players':Chat((":vis"))
game:GetService'Players':Chat(("m/Mario Weegee"))
game:GetService'Players':Chat((":viscolor"))
game:GetService'Players':Chat((";notify change the vis color you forgetful man"))
end

if msg == ".wlcmds" or msg == ".whitelistcommands" then
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Whitelisted user commands: .sunrise .sunset .dark .dg .btools .spam .stop .super .clearlogs .bangears .regen .internet .bok .trap .boombox .ds .disablerc","All")
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(".sus .rocket .rrocket .gearban .play 1-29 .noob .rat .titan .heykindle .nitroguy .glitchshadow .headfloat .haku .color all random .padban .unpadban .color all original .sm","All")
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Server Crashers and Kickers and Annoying stuff: .troll .ts .shutdown .crash .wkick .nochat .epilepsy ","All")
end

if msg == ".bypass1" or msg == ".bypassedaudio1" then
game:GetService'Players':Chat(("music 7058366919"))
game:GetService'Players':Chat((".super ff nothing to see here :O"))
end

if msg == ".bypass2" or msg == ".bypassedaudio2" then
game:GetService'Players':Chat(("music 4987310147"))
game:GetService'Players':Chat((".super ff nothing to see here :O"))
end

if msg == ".bypass3" or msg == ".bypassedaudio3" then
game:GetService'Players':Chat(("music 6842201548"))
game:GetService'Players':Chat((".super ff nothing to see here :O"))
end

if msg == ".army" or msg == ".Army" then
game:GetService'Players':Chat((".spam gear me 209290837"))
wait(10)
game:GetService'Players':Chat((".stop"))
wait(0.1)
game:GetService'Players':Chat((".alltools"))
game:GetService'Players':Chat(("m ATTACK MY ARMY"))
game:GetService'Players':Chat(("h Baymax is taking over"))
end

if msg == ".padanticrash" or msg == ".Padanticrash" then
game:GetService'Players':Chat((".trap others"))
game:GetService'Players':Chat((".allpads"))
game:GetService'Players':Chat((".moveresetpad"))
game:GetService'Players':Chat(("."))
wait(1.5)
game:GetService'Players':Chat(("respawn others"))
end
		
if msg == ".mrbluesky" or msg == ".Mrbluesky" then
game:GetService'Players':Chat(("ambient 0 0 256"))
game:GetService'Players':Chat(("colorshifttop 0 0 256"))
game:GetService'Players':Chat(("fogcolor 0 0 256"))
game:GetService'Players':Chat(("fogend 50"))
game:GetService'Players':Chat(("music 2689506907"))
end

if msg == ".Nochat" or msg == ".nochat" then
game:GetService'Players':Chat((".spam h Z̳͍̩̻̙̪̲̞̭̦̙ͯ͛̂ͥͣͪͅͅͅa̲̬̪͙̖̬̖ͭͫͦ̀̄̆̍ͦͨͦ͗̅͋ͦͤͯͫ̔̚l̫̹̺̭̳͙̠̦͍̫̝͓͙̟̺͗̊̅ͬ̉͒̏͆͗͒̋ͤ̆̆ͥg̥̳̗͕̫̖͉̹̦̼̟ͪ͛̓̂ͫͮ̔͌̃̈͒̔̏ͭ͋͋ͅo̮̟̣͕͖͉̪͕̳͕͗͆̂͊̄͑̋̊̋ṯ̖͇̱̪̘͓͚̘̯̩͖͔̳͙͉̦̑̌ͪ̐ͦͭͯ̉ͭ͌̒ͩ͋e͍̣̘̖̣̪̘̭̟̮̬̙̘̙̜ͯͬ́̏ͨ͐ͯ̊́ͣͮ̅̄̈ͨ"))
end

if msg == ".internet" or msg == ".Internet" then
game:GetService'Players':Chat(("music 7056950306"))
game:GetService'Players':Chat(("char all 68009"))
game:GetService'Players':Chat(("m Welcome To The Internet"))
end

if msg == ".HackAll" or msg == ".Hackall" then
game:GetService'Players':Chat((".lua gameshutdown()"))
end

if msg == ".epilepsy" or msg == ".Epilepsy" then
game:GetService'Players':Chat((".perm"))
game:GetService'Players':Chat((".regen"))
game:GetService'Players':Chat((".dark"))
game:GetService'Players':Chat(("fogend"))
game:GetService'Players':Chat(("flash"))
end

if msg == ".slide" or msg == ".Slide" then
game:GetService'Players':Chat(("gear me 32356064"))
game:GetService'Players':Chat(("gear me 19704064"))
end

if msg == "e" or msg == "E" then
game:GetService'Players':Chat(("char me 47022"))
end

if msg == "PIANO" or msg == ":piano" then
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
game:GetService'Players':Chat(("gear me 113299590"))
end

if msg == "afk" or msg == "brb" then
game:GetService'Players':Chat(("name me afk"))
game:GetService'Players':Chat((":music 163993348"))
game:GetService'Players':Chat(("/e dance2"))
wait(0.1)
say("I Am Afk Please Leave Me Alone")
game:GetService'Players':Chat(("ambient 200 50 200"))
game:GetService'Players':Chat(("outdoorambient 375 0 0"))
end

if msg == "back" or msg == "Back" then
game:GetService'Players':Chat(("music"))
game:GetService'Players':Chat(("fix"))
game:GetService'Players':Chat(("unname me"))
wait(0.1)
say("Hooray, They're Back!!")
end

if msg == "!info" or msg == ".info" then
        wait(0.1)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I am a noob","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Join me my fellow noobs. We will rule the world.","All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Want To Use NoobSploit? gg/PATnxvQ9Se","All")
end

if msg == ".Roblox" or msg == ".roblox" then
game:GetService'Players':Chat(("char all 1"))
game:GetService'Players':Chat(("name all Roblox"))
game:GetService'Players':Chat(("music 499037728"))
wait(0.1)
end

if msg == "idk" or msg == "Idk" then
wait(0.1)
say("идк")
game:GetService'Players':Chat(("music 4718615850"))
end

if msg == "woah" or msg == "Woah" then
        game.Players:Chat("music 4261061545")
        wait(0.1)
        say("plz follow egglnq to show support and MrSiack :D")
end

if msg == "Plug" or msg == "Advertise" then
        game.Players:Chat("!info")
        wait(0.1)
        game.Players:Chat("m/Newbies Are The Best! NoobSploits Is The Best Script!")
        game.Players:Chat("h/Newbies will take over!")
        say("At Least Im Not Crashing You.")
        say("So What I'm A Skid Not Like You UnderStand How To Script.")
end

if msg == ".bonusplay 1" or msg == ".play A" then
        game.Players:Chat(":mymusicon 1946274993")
        wait(0.1)
        say("Make Your Arguments!")
end

if msg == ".bonusplay 2" or msg == ".play B" then
        game.Players:Chat(":mymusicon 495241915")
        wait(0.1)
        say("Congrats For No Reason!")
end

if msg == ".bonusplay 3" or msg == ".play C" then
        game.Players:Chat(":mymusicon 1382835980")
        wait(0.1)
        say("Wii Turn Up The Beat.")
end

if msg == ".bonusplay 4" or msg == ".play D" then
        game.Players:Chat(":mymusicon 4904461194")
        wait(0.1)
        say("You Do Be Cornered Now!")
end

if msg == ".bonusplay 5" or msg == ".play E" then
        game.Players:Chat(":mymusicon 539723516")
        wait(0.1)
        say("Anime For Life!")
end

if msg == ".bonusplay 6" or msg == ".play F" then
        game.Players:Chat(":mymusicon 1195936360")
        wait(0.1)
        say("*Eurobeat Intensifies*")
end

if msg == ".bonusplay 6" or msg == ".play G" then
        game.Players:Chat(":mymusicon 720982137")
        wait(0.1)
        say("Vocaloid Everywhere You Look")
end

if msg == "boomboom" or msg == "Bomb" then
        game.Players:Chat("music 1845013206")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Say My Favourite Color")
        say("The Only Way To Stop It Is To Say My Favourite Color")
        wait(5)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == ":actualtimebomb" or msg == "RealTimeBomb2" then
        game.Players:Chat(":mymusicon 371816432")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Say Your Deepest Darkest Secret")
        say("The Only Way To Stop It Is To Say Your Deepest Darkest Secret")
        wait(5)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == ":actualtimebomb" or msg == "RealTimeBomb3" then
        game.Players:Chat(":mymusicon 371816432")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Say Who The Best Singer Is")
        say("The Only Way To Stop It Is To Say Who The Best Singer Is")
        wait(5)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == ":difficulttimebomb" or msg == "HardTimeBomb" then
        game.Players:Chat(":mymusicon 371816432")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 30 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 30 Seconds, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Solve 7 Cubed + 157")
        say("The Only Way To Stop It Is To Solve 7 Cubed + 157")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == ":difficulttimebomb" or msg == "HardTimeBomb2" then
        game.Players:Chat(":mymusicon 371816432")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 30 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 30 Seconds, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Solve 9 Cubed - 229")
        say("The Only Way To Stop It Is To Solve 9 Cubed - 229")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == "BombDefused" or msg == "BombWin" then
game:GetService'Players':Chat((":mymusicno"))
wait(0.1)
say("Congrats! You Defused The Bomb!")
game:GetService'Players':Chat((":mymusicno"))
wait(0.1)
game:GetService'Players':Chat(("m/Congrats! You Stopped The Bomb!"))
wait(0.1)
game:GetService'Players':Chat(("music 495241915"))
wait(0.1)
game:GetService'Players':Chat((".rejoin"))
end

if msg == "theultimatetimebomb" or msg == "TimeBomb" then
        game.Players:Chat(":mymusicon 371816432")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        wait(10)
        game.Players:Chat("h/50 Seconds Left 'Till Server Explodes!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left 'Till Server Explodes!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left 'Till Server Explodes!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left 'Till Server Explodes!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left 'Till Server Explodes!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left 'Till Server Explodes!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left 'Till Server Explodes!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left 'Till Server Explodes!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left 'Till Server Explodes!!")
        wait(1)
        game.Players:Chat("h/1 Second Left 'Till Server Explodes!!!!!")
        wait(4)
        game.Players:Chat("m/Phew, It Was Just A Dud!")
        game.Players:Chat(":mymusicno")
end

if msg == ":actualtimebomb" or msg == "CustomTimeBomb" then
        game.Players:Chat(":mymusicon 1444622447")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 60 Seconds, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To...")
        say("The Only Way To Stop It Is To...")
        wait(5)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == ":actualtimebomb" or msg == "LongTimeBomb" then
        game.Players:Chat(":mymusicon 1444622447")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 5 Minutes, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 5 Minutes, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Say My Favourite Song")
        say("The Only Way To Stop It Is To Say My Favourite Song")
        wait(55)
        game.Players:Chat("h/4 Minutes Left!!")
        game.Players:Chat(":mymusicon 371816432")
        wait(60)
        game.Players:Chat("h/3 Minutes Left!!")
        game.Players:Chat(":mymusicon 4904461194")
        game.Players:Chat("m/The Only Way To Stop It Is To Say My Favourite Song")
        say("The Only Way To Stop It Is To Say My Favourite Song")
        wait(60)
        game.Players:Chat("h/2 Minutes Left!!")
        game.Players:Chat(":mymusicon 539723516")
        wait(60)
        game.Players:Chat("h/60 Seconds Left!!")
        game.Players:Chat(":mymusicon 1195936360")
        wait(10)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == ":trueanticrash" or msg == "FAC" then
        game.Players:Chat(".spam size all 10")
        wait(0.1)
        game.Players:Chat("h TrueAntiCrash Enabled Shut Up Don't Complain")
end     

if msg == ":actualtimebomb" or msg == "JamBomb" then
        game.Players:Chat(":mymusicon 1382835980")
        wait(0.1)
        game.Players:Chat("m/A Bomb Will Detonate This Server In 5 Minutes, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 5 Minutes, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m/The Only Way To Stop It Is To Enjoy These Sick Beats")
        say("The Only Way To Stop It Is To Enjoy These Sick Beats")
        wait(55)
        game.Players:Chat("h/4 Minutes Left!!")
        game.Players:Chat(":mymusicon 371816432")
        wait(60)
        game.Players:Chat("h/3 Minutes Left!!")
        game.Players:Chat(":mymusicon 4904461194")
        game.Players:Chat("m/The Only Way To Stop It Is To Vibe!")
        say("The Only Way To Stop It Is To Vibe!")
        wait(60)
        game.Players:Chat("h/2 Minutes Left!!")
        game.Players:Chat(":mymusicon 539723516")
        wait(60)
        game.Players:Chat("h/60 Seconds Left!!")
        game.Players:Chat(":mymusicon 1195936360")
        wait(10)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat("m/You Successfully Vibed Enough")
        say("You Successfully Vibed Enough")
end
if msg == ":actualtimebomb" or msg == "WireBomb" then
        wait(0.1)
        game.Players:Chat(":mymusicon 1195936360")
        game.Players:Chat("m/A Bomb Will Detonate This Server In 3 Minutes, You Have To Defuse It!")
        say("A Bomb Will Detonate This Server In 3 Minutes, You Have To Defuse It!")
        wait(5)
        game.Players:Chat("m There Are Four Wires On The Bomb: Red, Blue, Green And Black. The Black Wire Has A Skull Above It, Cutting It Will Cause The Bomb To Go Off.")
        say("There Are Four Wires On The Bomb: Red, Blue, Green And Black. The Black Wire Has A Skull Above It, Cutting It Will Cause The Bomb To Go Off.")
        wait(15)
        game.Players:Chat("m/Which Wire Will You Cut First?")
        say("Which Wire Will You Cut First?")
        wait(40)
        game.Players:Chat("h/2 Minutes Left!!")
        wait(60)
        game.Players:Chat("h/60 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/50 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/40 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/30 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/20 Seconds Left!!")
        wait(10)
        game.Players:Chat("h/10 Seconds Left!!")
        wait(5)
        game.Players:Chat("h/5 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/4 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/3 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/2 Seconds Left!!")
        wait(1)
        game.Players:Chat("h/1 Second Left!!!!!")
        wait(1)
        game.Players:Chat(".shutdown")
end

if msg == "RedWireCut" or msg == "P1" then
        game.Players:Chat("m/You Slice The Red Wire. The Bomb Still Hasn't Stopped.")
        say("You Slice The Red Wire. The Bomb Still Hasn't Stopped.")
        wait(5)
        game.Players:Chat("m/You Still Need To Cut More Wires.")
        say("You Still Need To Cut More Wires.")
end

if msg == "GreenWireCut" or msg == "P2" then
        game.Players:Chat("m/You Cut The Green Wire. Luckily, No Explosions.")
        say("You Cut The Green Wire. Luckily, No Explosions.")
        wait(5)
        game.Players:Chat("m/You Still Need To Cut More Wires.")
        say("You Still Need To Cut More Wires.")
end

if msg == "BlueWireCut" or msg == "P3" then
        game.Players:Chat("m/You Cut The Blue Wire. You Hear A Hissing Sound...")
        say("You Cut The Blue Wire. You Hear A Hissing Sound...")
        wait(5)
        say("Luckily, That Wasn't The Wrong Wire")
        game.Players:Chat("m/Luckily, That Wasn't The Wrong Wire")
        wait(5)
        game.Players:Chat("m/You Still Need To Cut More Wires.")
        say("You Still Need To Cut More Wires.")
end

if msg == "BlackWireCut" or msg == "P4" then
        say("You Hesitantly Slice The Black Wire...")
        game.Players:Chat("m/You Hesitantly Slice The Black Wire...")
        wait(5)
        game.Players:Chat(".shutdown")
end

if msg == "FakeBlackWireCut" or msg == "P5" then
        say("You Hesitantly Slice The Black Wire...")
        game.Players:Chat("m/You Hesitantly Slice The Black Wire...")
        wait(5)
        say("This Server Would Have Been Exploded If This Was Not A Practice Round.")
        game.Players:Chat("m/This Server Would Have Been Exploded If This Was Not A Practice Round.")
end

if msg == "BlackWireCut" or msg == "P6" then
        say("You Cut The Last Non-Black Wire...")
        game.Players:Chat("m/You Cut The Last Non-Black Wire...")
        wait(4)
        game.Players:Chat("BombWin")
end

if msg == ":simonsays" or msg == "SimonSays1" then
game:GetService'Players':Chat(("m/Simon Says Get Off The Baseplate"))
wait(8)
logn("Attach now")
wait(2)
game:GetService'Players':Chat(("skydive me"))
wait(0.5)
game:GetService'Players':Chat(("unskydive me"))
wait(0.1)
game:GetService'Players':Chat(("respawn me"))
end
 
	if string.sub(msg:lower(), 0, 10) == prefix.."bind pads" then
		logn("pads is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		pads_keybind = string.sub(msg:lower(), 13, 13)
	elseif string.sub(msg:lower(), 0, 14) == prefix.."bind attachto" then
		logn("attachto is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		AttachTO_keybind = string.sub(msg:lower(), 16, 16)
	elseif string.sub(msg:lower(), 0, 4) == prefix.."bok" then
		logn("Now making person bok...")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 6)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		wait(3)
		game.Players:Chat("kill "..string.sub(msg:lower(), 6))
	elseif string.sub(msg:lower(), 0, 6) == prefix.."tkick" then
		logn("Atempting to kick (Fixed, ty AmericanDisgrace :)")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 8)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8))
		wait(3)
		game.Players:Chat("kill "..Luser)
		wait(0.09)
		game.Players:Chat(prefix.."tesk "..string.sub(msg:lower(), 8))
	elseif string.sub(msg:lower(), 0, 5) == prefix.."trap" then
		logn("Trapped person!")
		game.Players:Chat("freeze "..string.sub(msg:lower(), 7))
		game.Players:Chat("name "..string.sub(msg:lower(), 7).." ")
		game.Players:Chat("thaw "..string.sub(msg:lower(), 7))
	elseif string.sub(msg:lower(), 0, 3) == prefix.."ds" then
		logn("Setting up dancing swords script!")
		game.Players:Chat("hat me 0000000000000000004506945409") -- Sword 1
		game.Players:Chat("hat me 0000000000000000004794315940") -- Sword 2
		game.Players:Chat("hat me 0000000000000000004315489767") -- Sword 3
		game.Players:Chat("hat me 0000000000000000004458601937") -- Sword 4
		game.Players:Chat("gear me 000000000000000000212641536") -- Boombox
	elseif string.sub(msg:lower(), 0, 4) == prefix.."lua" then
		loadstring(string.sub(msg:lower(), 6))()
	elseif string.sub(msg:lower(), 0, 12) == prefix.."moveobbybox" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Obby Box")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.2)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Obby Box")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."moveobbybricks" then
		game.Players:Chat(prefix.."nok")
		wait(0.05)
        if Stable_Check == false then
            logn("{Move.lua} Moving Obby Kill Bricks")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("seizure me")
                    wait(0.2)
					game.Players:Chat("respawn me")
                    wait(0.75)
                end
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Obby Kill Bricks")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 19) == prefix.."movebuildingbricks" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Building Bricks")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Building Bricks"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.30)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.2)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Building Bricks")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 18) == prefix.."moveadmindividers" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Dividers")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Admin Dividers"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.2)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Dividers")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat("dog me,"..plr)
		game.Players:Chat("tp me "..plr)
		wait(1)
		game.Players:Chat("punish me,"..plr)
		game.Players:Chat("undog me,"..plr)
		wait(0.25)
		game.Players:Chat("unpunish me,"..plr)
		game.Players:Chat("invis me")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."movehouse" then
        if Stable_Check == false then
            logn("{Move.lua} Moving House")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.2)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving House")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."movepads" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Pads")
            Stable_Check = true
            for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
                if v.Name == "Head" then
                    if v.CFrame.Y < 500 then
                        repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(function()
                            while true do
                                game:GetService('RunService').Heartbeat:Wait()
                                game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                                cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                                if not looping then break end
                            end
                        end)
                        spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                        wait(0.3)
                        looping = false
                        game.Players:Chat("skydive me")
                        wait(0.2)
						game.Players:Chat("respawn me")
                        wait(0.2)
                    end
                end
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Pads")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 13) == prefix.."moveresetpad" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Admin_Folder.Regen.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 14) == prefix.."movebaseplate" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Basteplate")
            Stable_Check = true
            if Workspace_Folder.Baseplate.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Baseplate.CFrame * CFrame.new(-1*(Workspace_Folder.Baseplate.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Basteplate")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."setspawnpoints" then
		local playername = string.sub(msg:lower(), 17)
	
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Workspace_Folder.Spawn1.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn1.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn1.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
		if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Workspace_Folder.Spawn2.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn2.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn2.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
		if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Workspace_Folder.Spawn3.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn3.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn3.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	elseif string.sub(msg:lower(), 0, 13) == prefix.."findresetpad" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		cf.CFrame = Admin_Folder.Regen.CFrame
	elseif string.sub(msg:lower(), 0, 4) == prefix.."nok" then
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:destroy()
	elseif string.sub(msg:lower(), 0, 6) == prefix.."wkick" then
		local name = string.sub(msg:lower(), 8)
		Wwkicking = name
		wkicking = true
	elseif string.sub(msg:lower(), 0, 10) == prefix.."disablerc" then
		logn("Click 1 RC will now be disabled for EVERYONE!")
		game.Players:Chat("gear me 0000000000000000004842207161")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."whitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 12)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Whitelist, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."ignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Ignore, v.Name)
				logn("Ignoring "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 9) == prefix.."unignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(ignore) do
					if b == v.Name then
						table.remove(Ignore, a)
						logn("Unignored "..v.Name)
					end
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 12) == prefix.."unwhitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 14)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Whitelist) do
					if b == v.Name then
						table.remove(Whitelist, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 6) == prefix.."admin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 8)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Admin, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."unadmin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 10)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Admin) do
					if b == v.Name then
						table.remove(Admin, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			Spawn(function()
				pad.PrimaryPart = pad:FindFirstChild("Head")
				local pos = pad.PrimaryPart.CFrame
				wait(0)
				pad.PrimaryPart.CanCollide = false
				pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait(0)
				pad:SetPrimaryPartCFrame(pos)
				pad.PrimaryPart.CanCollide = true
			end)
		end
	elseif string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
		logn("Click F9 for the commands list")
        print("REQUIRES PERSON'S ADMIN (OPTIONAL) AND KOHLSPLOIT TO PROPERLY FUNCTION")
		print("----- Time commands -----") -- All by Raven
		print(prefix.."sunrise --  change the map time to a sunrise vibe!")
		print(prefix.."sunset --  change the map time to sunset. same as the command above but more nicer")
		print(prefix.."dark -- change the map feeling to a nice, relaxing vibe dark blue colour!")
		print(prefix.."dg -- not originally by me. Credits to Humangas#7921 for this command :D || This command destroys the graphics.. you'll see what I mean.")
		print("----- normal commands -----")
		print(prefix.."btools plr -- A fast way to get the alternative btools that are gears! WORKS ON EVERYONE e.g: .btools all")
		print(prefix.."stop -- Stop tesk spammer/normal spammer xd")
		print(prefix.."clearlogs -- Spam logs")
		print(prefix.."super (cmd) -- Spams a command until logs is filled")
		print(prefix.."spam (cmd) -- Spam and command until ;stop is ran")
		print(prefix.."pads -- Teleport to the pads")
		print(prefix.."slag -- lag the server out with the cars. Also recommended to stop after a few seconds!")
		print(".prefix (char) -- Change your script prefix and not its self so it will always be .prefix")
		print(prefix.."crash -- gets you the vampire tool and waits until you hold it to spam size me 0.3 xd")
		print(prefix.."ts -- shuts the server down while asserting Fellow Noobs dominance")
		print(prefix.."shutdown -- Blows Up The Server With A Bomb.")
		print(prefix.."reg -- Regen the admin pads!")
		print(prefix.."bind (module) (key) -- Rebind a modules keybind")
		print(prefix.."bok (plr) -- Stop someone from dying from obby bricks AND from getting admin from admin pads for 5-10 minutes :)")
		print(prefix.."trap (plr) -- Stop someone from moving")
		print(prefix.."perm -- (Ex_/AdminJoy Owner gave me dis) grab one pad if you dont have admin and resets pads and grbs one if its full so its like perm xd")
		print(prefix.."nonperm -- (Ex_/AdminJoy Owner gave me dis) Undo the perm effect")
		print(prefix.."clicktp -- Click tp tool")
		print(prefix.."attach -- Attach to objects glitch (PS: Doesnt do your camera for you)")
		print(prefix.."boombox -- boombox ;-;")
		print(prefix.."ds -- Sets up rainbow dancing sword hats (Doesnt inject the script tho xd)")
		print(prefix.."movepads -- Move admin pads")
		print(prefix.."movehouse -- Move the house")
		print(prefix.."moveobbybox -- Move the obby box")
		print(prefix.."moveadmindividers -- Move the admin deviders")
		print(prefix.."moveresetpad -- Super skydive the reset pad")
		print(prefix.."moveobbybricks -- Messes Up the obby kill bricks")
		print(prefix.."nok -- Learned something today, they remove the touch.")
		print(prefix.."movebuildingbricks -- move the building bricks")
		print(prefix.."wkick (plr) -- Knock someones internet connection to roblox offline for 1-5minutes maybe longer")
		print(prefix.."disablerc -- Disable everyones shiftlock and rightclick xd (UNDOABLE!)")
		print(prefix.."setspawnpoints (plr)-- Set the world spawn!")
		print(prefix.."cmds -- Print all commands to console")
		print(prefix.."allpads -- Take all the admin pads!")
		print(prefix.."lua (Code) -- Inject lua code without need to open your injector! ( Used for modding)")
		print(prefix.."rej -- Rejoin command xd")
		print(prefix.."findresetpad -- Teleport to the reset pad if its detected")
		print(prefix.."rocket (plr) -- Turn someone into a rocket D:")
		print(prefix.."rrocket (plr) -- Turn someone into a RAINBOW ROCKET D:")
		print(prefix.."gearban (plr) -- Ban someone from using gears!")
		print(prefix.."movebaseplate -- Move the baseplate")
		print(prefix.."alltools -- hold all tools (Premium-Requested)")
		print(prefix.."traplogs -- Fill logs up with the worse chars you can get.")
		print(prefix.."tool (1-5) (Plr) -- Get a tool!")
		print(prefix.."play (1-29) -- Play inbuilt music with extra wit free of charge! :D")
		print(prefix.."noob (Plr) -- Turn them into a STRONG POWERFUL noob >:D")
		print(prefix.."rat (Plr) -- Turn them into a rat #RatArmy!")
		print(prefix.."titan (Plr) -- Turn them into a massive titan D:")
		print(prefix.."ohnana -- Nana oh nana~")
		print(prefix.."infjump --Enable inf jump")
		print(prefix.."heykindle (Plr) -- Turn someone into a kindle")
		print(prefix.."disguise -- Generate a random UserID then disguise yourself as them")
		print(prefix.."nitroguy (Plr) -- Turn someone into a nitro rich like guy!")
		print(prefix.."glitchshadow (Plr) -- Turn someone into a GLITCHED SHADOW(Char)")
		print(prefix.."headfloat (Plr) -- Make someones head float D:")
		print(prefix.."haku -- Turn yourself into a dumbass")
		print(prefix.."color all random -- Paint a set of objects a random colour!")
		print(prefix.."color all all (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color all red (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color all green (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color all blue (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color house random -- Paint a set of objects a random colour!")
		print(prefix.."color obby random -- Paint a set of objects a random colour!")
		print(prefix.."color obbybricks random -- Paint a set of objects a random colour!")
		print(prefix.."playbackspeed (Float) -- Add (Float) to the sound/music pitch (Client-sided)")
		print(prefix.."volume (Float) -- Add (Float) to the sound/music volume (Client-sided)")
		print(prefix.."shortcutchat (Msg) -- Send into the shortcut chat custom test")
		print(prefix.."antidelay (Num) -- Set the antis delays.")
		print(prefix.."padban (Plr) -- Ban seomeon from pads")
		print(prefix.."unpadban (Plr) -- Unban seomeon from pads")
		print(prefix.."control (Plr) -- Allow yourself to control someone(Kinda?)")
		print(prefix.."whitelist (Plr) -- Let someone use your commands")
		print(prefix.."unwhitelist (Plr) -- Remove someones ability to use your commands")
		print(prefix.."admin (Plr) -- Give someone temp perm")
		print(prefix.."unadmin (Plr) -- Remove someones temp perm")
		print(prefix.."fixbp (Plr) -- NEEDS A PLAYER INPUT! fixes the baseplate(SPAM TP TO THE PERSON YOU PUT IN FIXBP (PLR) TO REPLACE THE PAD MULTIPLE TIMES!")
		print(prefix.."house -- Teleport to the house")
		print(prefix.."spawn -- Teleport to spawn2")
		print(prefix.."color all original -- Change the map colour to its original state!!")
		print(prefix.."fps -- Enable an fps booster")
		print(prefix.."ignore -- Ignore them and let them attach to objects also enables antikill and antijail xd")
		print(prefix.."unignore -- removes them from the ignore list")
		print(prefix.."skydive -- Skydives you without admin")
		print(prefix.."shop -- Rejoin a random server :D")
		print(prefix.."sch -- Rejoin a random kohls server(WIP)")
		print(prefix.."getpos -- Print position to CHAT.")
		print("(New) "..prefix.."sm (Msg) -- Talk as the server! (HintGUI)")
		print(prefix.."togglenames -- Anti/Main modules list (run this for the main modules in /console)")
		print(prefix.."toggle (AntiName) -- Toggle an anti/main module")
		print(prefix.."upme -- Unpunish yourself if your not an admin xd")
		print(prefix.."srj -- Rejoin the smallest server shortcut can find")
		print(prefix.."rjg (Num) -- Rejoin a random server with that set value of players inside of it")
        print("")
        print("----- NoobSploit exclusives -----")
        print(":Playlist -- Plays A List Of Songs Consecutively After Each Other.")
        print("WALL -- No Prefix Needed, Gives You 9 Ice Staffs And A Remote Bomb")
        print("ANGRY -- No Prefix Needed, Gives You 10 Rage Tables To Show Your Anger")
        print(".sus -- No Prefix Needed, Makes The Server Into Amogus")
        print("Weegee -- Mario?!")
        print("e -- Chars you into EEE")
        print("PIANO -- Gives You 10 Orbital Strike Pianos To Smite Down Your Foes.")
        print("afk or brb -- No Prefix Needed, Makes Everyone Aware That You're AFK and still superior")
        print("back -- No Prefix Needed, But Yay I Missed You (Reverts afk)")
        print("!info -- Explains our objective:)")
        print(".Roblox -- No Prefix Needed, Go Back I Want To Be Monke!")
        print("idk -- No Prefix Needed, идк")
        print("Woah -- No Prefix Needed, plz follow")
        print("Advertise -- No Prefix Needed, Declares Supremacy Over All Other Scripts (Can be used as comeback)")
        print("Noob -- Say Hello To Your Comrads!!!")
        print(".bombcmds -- Displays Bomb Commands (WIP)")
        print(".troll --Do a little trolling")
        print(".epilepsy --No joke dont be a dick and spam this also i have no fucking idea why im adding this")
        print(".Slide --Makes the baseplate or what ever you use the staff on and rocket into a slide")
        print(".nochat --This removes the chat UI but you can still use chat press P or disable anticrash to check it out for yourself")
        print(".wlcmds --chats whitelisted users commands")
        print("noobsploitiscool -- also other key word is (executor) promotes noobsploit executor WHAT ARE YOU WAITING FOR GO DOWNLOAD IT NOOB")
        print("")
		print("----- Modded commands -----")
		for i,v in pairs(api_commands) do
			print(prefix..api_commands[i])
		end
		print("")
		print("Credits to these people for code")
		print("Impuritex#5719 for the rrej cmd")
		print("")
		print("----- Versions info -----")
		print("v1 -- NoobSploit Released To Beta Testers Noobs")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."bombcmds" then
    logn("Check Console (F9) For Commands!")
    print("----- Bomb Commands -----")
    print("")
    print("DO NOT LOOK HERE, COMMANDS HERE ARE DIFFICULT AND DEADLY TO USE.")
elseif string.sub(msg:lower(), 0, 7) == prefix.."set jp" then
		local Power = tonumber(string.sub(msg:lower(), 9))
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Power
	elseif string.sub(msg:lower(), 0, 3) == prefix.."sm" then
		local box = string.sub(msg:lower(), 5)
		hint("Server Message", box)
	elseif string.sub(msg:lower(), 0, 11) == prefix.."set lagall" then
		local Power = tonumber(string.sub(msg:lower(), 15)) -- get the power amount as an int.
		logn("Power is now being set to "..string.sub(msg:lower(), 15))
		logn("Calculating, please wait.")
		local str1 = ""
		for i = Power,1,-1 do 
			str1 = str1..onekspaces.."g"
		end
		crashall_Text = str1
	elseif string.sub(msg:lower(), 0, 10) == prefix.."antidelay" then
		antidelay = tonumber( string.sub(msg:lower(), 12))
	elseif string.sub(msg:lower(), 0, 14) == prefix.."color all all" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(Num,Num,Num)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 14) == prefix.."color all red" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(Num,0,0)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 17) == prefix.."color all green" then
		local Num = tonumber(string.sub(msg:lower(), 18))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(0,Num,0)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 15) == prefix.."color all blue" then
		local Num = tonumber(string.sub(msg:lower(), 17))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(0,0,Num)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 17) == prefix.."color all random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 19) == prefix.."color house random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 24) == prefix.."color obbybricks random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
        for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 18) == prefix.."color obby random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
        for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
			Spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 1" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000079446473")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 2" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000236438668")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 3" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000018474459")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 4" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000124126528")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."tool 5" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000035683911")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."btools" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000000016200204")
		game.Players:Chat("gear "..player.." 00000000000000000000016200402")
		game.Players:Chat("gear "..player.." 00000000000000000000016969792")
		game.Players:Chat("gear "..player.." 00000000000000000000073089190")
		game.Players:Chat("gear "..player.." 00000000000000000000021001552")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 1" then
		game.Players:Chat("music 0000000000000000001374378794")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 2" then
		game.Players:Chat("music 000000000000000000419365372")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 3" then
		game.Players:Chat("music 971896687")
        game.Players:Chat(":mymusicon 971896687")
        wait(0.1)
        say("Matt is our almighty God.")
        wait(2)
        say("We must all bow down to Matt, the strongest man alive")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 4" then
		game.Players:Chat("music 3208137212")
        game.Players:Chat(":mymusicon 3208137212")
        game.Players:Chat("h You've been trolled, and it hurts")
        game.Players:Chat("rainbowify all")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 5" then
		game.Players:Chat("music 944410244")
        wait(2)
        say("Give it a sec...")
        wait(5)
        say("Now it's time to embrace the power of full vibe.")
        game.Players:Chat("disco")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 6" then
		game.Players:Chat("music 1289224027")
        game.Players:Chat(":mymusicon 1289224027")
        wait(10)
        say("OMG IT REAL I GOT FREE ADMIN!!!1!!1!") 
        wait(10)
        say("OMG IT ACTUALLY WORKS!!!1!!1!")
        wait(10)
        say("OMG JUST PRESS ALT F4 IT AMAZING!!!1!!1!")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 7" then
		game.Players:Chat("music 0000000000000000005648499584")
        wait(0.1)
        say("Welcome To The Land Of Small People.")
        game.Players:Chat("size all nan")
        game.Players:Chat("unsize all")
        game.Players:Chat("dog all")
        game.Players:Chat("undog all")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 8" then
		game.Players:Chat("music 5263354349")
        wait(0.1)
        say("Comrades, We Must Work Together To Ensure A Safe World...")
        wait(3)
        say("...OUR World.")
        wait(6)
        say("And The Key To OUR World Is Communism, The Best Policy.")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."play 9" then
		game.Players:Chat("music 5438958396")
        game.Players:Chat(":mymusicon 5438958396")
        wait(1)
        say("Y'all Got Rickrolled :)")
        wait(10)
        say("............. this isn't right.......")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 10" then
		game.Players:Chat("music 142376088")
        wait(0.1)
        say("It's raining tacos and who knows why.")
        wait(10)
        say("On a serious note, why is this song everywhere? Why not one of my amazing songs :(")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 11" then
		game.Players:Chat("music 3269734996")
        game.Players:Chat(":mymusicon 3269734996")
        wait(0.1)
        say("Oh? You're approaching me?")
        wait(1)
        say("Instead of running away, you're coming right to me?")
        wait(7.5)
        say("I can't beat the oof out of you without getting closer.")
        wait(1)
        say("Oh! Then come as close as you like.")
        wait(7.5)
        say("Too slow, too slow! The World is the ultimate Stand.")
    elseif string.sub(msg:lower(), 0, 8) == prefix.."play 12" then
		game.Players:Chat("music 6350632169")
        wait(0.1)
        say("YOU SPIN ME RIGHT ROUND")
        game.Players:Chat("spin all")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 13" then
		game.Players:Chat(":mymusicon 2230668518")
        wait(0.1)
        say("Kudos to anyone who knows what this song is actually from")
        wait(5)
        say("Doesn't matter if you don't know, but its still a vibe")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 14" then
		game.Players:Chat(":mymusicon 6658371729")
        wait(0.1)
        say("Can't come up with anything witty here soo... DISCO FOG!")
        game.Players:Chat("fogstart 25")
        game.Players:Chat("fogend 30")
        game.Players:Chat("disco")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 15" then
		game.Players:Chat(":mymusicon 6165100701")
        wait(0.1)
        say("This song marks when I started truly becoming Westernised.")
        wait(5)
        say("Doesn't stop it from being an absolute bop though :)")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 16" then
		game.Players:Chat(":mymusicon 213336468")
        wait(0.1)
        say("Flash fog fits here quite nicely... yeah, I think I'll do that.")
        game.Players:Chat("fogstart 70")
        game.Players:Chat("fogend 75")
        game.Players:Chat("flash")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."alltools" then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			Spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 17" then
		game.Players:Chat(":mymusicon 145846270")
        wait(0.1)
        say("MARIO KART WIIIIIIIIII")
        game.Players:Chat("speed all 100")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 18" then
		game.Players:Chat("music 5180097131")
        wait(0.1)
        say("*Insert Overused Meme Here*")
        wait(2)
        say("This is overused tbh, i have no idea why.") 
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 19" then
		game.Players:Chat(":mymusicon 3584584668")
        wait(0.1)
        say("If you're expecting some random trap beat to come on, think again.")
        wait(6.9)
        say("This is the superior version, and it always will be.")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 20" then
		game.Players:Chat(":mymusicon 357357714")
        wait(0.1)
        say("Y'know, my songs really are dark if you listen to the English.")
        wait(2)
        say("This song is actually telling people to oof themselves.")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 21" then
		game.Players:Chat(":mymusicon 659411382")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 22" then
		game.Players:Chat(":mymusicon 5008472494")
        wait(0.1)
        say("This is the alternative to a certified hood classic")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 23" then
		game.Players:Chat(":mymusicon 685408383")
        wait(0.1)
        say("Top 10 Rappers Eminem Was Scared To Diss")
        wait(2.9)
        say("Reeces Puffs Is The Food For God.")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 24" then
		game.Players:Chat("music 5510157925")
        wait(0.1)
        say("This server is now riddled with Gangsters.")
        game.Players:Chat("name all Gangster")
        game.Players:Chat("hat all 5313561767")
        game.Players:Chat("gear all 94233344")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 25" then
		game.Players:Chat(":mymusicon 5457865502")
        wait(0.1)
        say("This is upbeat music, let's all just have a good time.")
        game.Players:Chat(".color all random")
        game.Players:Chat("rainbowify all")
        game.Players:Chat("disco")     
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 26" then
		game.Players:Chat(":mymusicon 672731096")
        wait(0.1)
        game.Players:Chat("m/Pizza Time")
        game.Players:Chat("name all Chef")
        game.Players:Chat("removehats all")
        game.Players:Chat("hat all 96678446")
        game.Players:Chat("gear all 22596452")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 27" then
		game.Players:Chat("music 6073052666")
        game.Players:Chat(":mymusicon 6073052666")
        wait(0.1)
        game.Players:Chat("h/She's Best Girl")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 28" then
		game.Players:Chat(":mymusicon 1018697003")
        wait(0.1)
        say("It's Time For A Trial To Commence...")
        wait(30)
        say("Now Would Be A Good Time To Prepare.")
        wait(33)
        game.Players:Chat(":mymusicon 1946274993")
        say("Make Your Arguments!")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."play 29" then
		game.Players:Chat("music 1863452316")
        game.Players:Chat(":mymusicon 1863452316")
        wait(0.1)
        say("Everyone Here Must Now Stan Loona")
        game.Players:Chat("music 1863452316")
        game.Players:Chat("fogcolor 250 0 100")
        game.Players:Chat("fogend 100")
	elseif msg == "play 30" or msg == ".play 30" then
		game.Players:Chat(":mymusicon 1027400793")
        wait(0.1)
        say("Do You Dare Challenge Me?")
        game.Players:Chat("name me Boss")
        game.Players:Chat("health me 1000")
        game.Players:Chat("size me 1.3")
        game.Players:Chat("speed me 24")
        game.Players:Chat("gear me 0000000000068539623")
	elseif msg == "play 31" or msg == ".play 31" then
		game.Players:Chat("music 5611029026")
        wait(0.1)
        say("Mukuro Ikusaba. The Sixteenth Student Lying Hidden Somewhere In This School. The One They Call The Ultimate Despair. Watch Out For her.")
	elseif msg == "play 32" or msg == ".play 32" then
		game.Players:Chat(":mymusicon 1290318881")
        wait(0.1)
        say("The Luka Only Song That People Wanted")
	elseif msg == "play 33" or msg == ".play 33" then
		game.Players:Chat(":mymusicon 317913608")
        wait(0.1)
        say("Another Good Vocaloid Song Coming Right Up.")
	elseif msg == "play 33" or msg == ".play 33" then
		game.Players:Chat(":mymusicon 1931204691")
        wait(0.1)
        say("Another Good Vocaloid Song Coming Right Up.")
	elseif msg == "play 34" or msg == ".play 34" then
		game.Players:Chat(":mymusicon 1931226001")
        wait(0.1)
        say("The Jazzy Version Of Play 33 :D.")
	elseif msg == "play 35" or msg == ".play 35" then
		game.Players:Chat(":mymusicon 5712532551")
        wait(0.1)
        say("Noobs r good")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."heykindle" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("char "..player.." 1692633945")
		game.Players:Chat("name "..player.." ")
	elseif string.sub(msg:lower(), 0, 5) == prefix.."haku" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 1110535975")
		game.Players:Chat("name "..player.." ")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."nitroguy" then
		local player = string.sub(msg:lower(), 11)
		game.Players:Chat("char "..player.." 10000")
		game.Players:Chat("name "..player.." ")
	elseif string.sub(msg:lower(), 0, 13) == prefix.."glitchshadow" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("char "..player.." 2226928111")
		game.Players:Chat("name "..player.." ")
	elseif string.sub(msg:lower(), 0, 10) == prefix.."headfloat" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("size "..player.." 0.5")
		wait(0.25)
		game.Players:Chat("bighead "..player)
		wait(0.25)
		game.Players:Chat("unsize "..player)
	elseif string.sub(msg:lower(), 0, 5) == prefix.."upme" then
		game.Players.LocalPlayer.Character:Destroy()
	elseif string.sub(msg:lower(), 0, 13) == prefix.."shortcutchat" then
		game.Players:Chat("handes "..string.sub(msg:lower(), 15))
	elseif string.sub(msg:lower(), 0, 7) == prefix.."rocket" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	elseif string.sub(msg:lower(), 0, 8) == prefix.."rrocket" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("trail "..player.." rainbow")
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	elseif string.sub(msg:lower(), 0, 9) == prefix.."disguise" then
		local player = string.sub(msg:lower(), 11)
		game.Players:Chat("char "..player.." "..math.random(1000000000, 2147483647))
		game.Players:Chat("name "..player)
	elseif string.sub(msg:lower(), 0, 5) == prefix.."noob" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("name "..player.." Yellow")
	elseif string.sub(msg:lower(), 0, 4) == prefix.."rej" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	elseif string.sub(msg:lower(), 0, 4) == prefix.."rat" then
		local player = string.sub(msg:lower(),  6)
		game.Players:Chat("char "..player.." 6")
		wait(1)
		game.Players:Chat("hat "..player.." 0000000000000000006203125039")
		game.Players:Chat("name "..player.." Rat")
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("speed "..player.." 00000000000000000026")
	elseif string.sub(msg:lower(), 0, 6) == prefix.."titan" then
		local player = string.sub(msg:lower(),  8)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("skydive "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." Titan")
		game.Players:Chat("size "..player.." 0000000000000000005")
		game.Players:Chat("speed "..player.." 00000000000000000024")
		game.Players:Chat("pants "..player.." 0000000000000000001187508947")
		game.Players:Chat("god me")
	elseif string.sub(msg:lower(), 0, 7) == prefix.."ohnana" then
		game.Players:Chat("time 0000000000000000000")
		game.Players:Chat("fogend 000000000000000000250")
		game.Players:Chat("disco")
		game.Players:Chat("h Nana oh nana")
		game.Players:Chat(prefix.."play 1")
	elseif string.sub(msg:lower(), 0, 14) == prefix.."playbackspeed" then
		local newPlaybackSpeed = tonumber(string.sub(msg:lower(), 16))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.PlaybackSpeed = newPlaybackSpeed
	elseif string.sub(msg:lower(), 0, 7) == prefix.."volume" then
		local newVolume = tonumber(string.sub(msg:lower(), 9))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.Volume = newVolume
	elseif string.sub(msg:lower(), 0, 9) == prefix.."gearban" then
		game.Players:Chat("pm me sorry but you need shortcut or shortlist from T3chn0#0253")
		wait(0.50)
		game.Players:Chat(".sm stop using cancerous gears or else")
		wait(0.50)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end
		wait(0.50)
		game.Players:Chat("gear me 00000000000000000082357101")
		wait(0.50)
		game.Players:Chat(prefix.."alltools")
		wait(0.50)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end

if string.sub(msg:lower(), 0, 10) == prefix.."retexture" then
		game.Players:Chat("gear me 00000000000000000059190534")
		game.Players:Chat("gear me 00000000000000000059190534")
		game.Players:Chat("pm me feel free to type .color all original after this")
		wait(1)
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			if v:IsA'Tool' then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				wait(0.50)
				sendKeyPress("StatueStaffOfStonyJustice", true, "x") -- tell the server to press X
				wait(0.25)
			end
		end
	end

	elseif string.sub(msg:lower(), 0, 19) == prefix.."toggle anticrashvg" then
		anticrashVG = not anticrashVG
		logn("anticrashVG is now set to "..tostring(anticrashVG))
	elseif string.sub(msg:lower(), 0, 24) == prefix.."toggle antijailgearban" then
		antijailgearban = not antijailgearban
		logn("antijailgearban is now set to "..tostring(antijailgearban))
	elseif string.sub(msg:lower(), 0, 21) == prefix.."toggle antigrayscale" then
		antigrayscale = not antigrayscale
		logn("antigrayscale is now set to "..tostring(antigrayscale))
	elseif string.sub(msg:lower(), 0, 16) == prefix.."toggle antikill" then
		antikill = not antikill
		logn("antikill is now set to "..tostring(antikill))
	elseif string.sub(msg:lower(), 0, 17) == prefix.."toggle antijail" then
		antijail = not antijail
		logn("antijail is now set to "..tostring(antijail))
	elseif string.sub(msg:lower(), 0, 19) == prefix.."toggle mymusiconly" then
		mymusiconly = not mymusiconly
		logn("mymusiconly is now set to "..tostring(mymusiconly))
	elseif string.sub(msg:lower(), 0, 16) == prefix.."toggle antilogs" then
		antilogs = not antilogs
		logn("antilogs is now set to "..tostring(antilogs))
	elseif string.sub(msg:lower(), 0, 13) == prefix.."toggle mmoid" then
		mymusiconly_ID = tonumber(string.sub(msg:lower(), 15))
		logn("mymusiconly_id is now set to "..tostring(mymusiconly_ID))
		mymusiconly = true
	elseif string.sub(msg:lower(), 0, 17) == prefix.."toggle superlogs" then
		Superlogs = not Superlogs
		logn("Superlogs is now set to "..tostring(Superlogs))
	elseif string.sub(msg:lower(), 0, 23) == prefix.."toggle padsenforcement" then
		padsEnforcement = not padsEnforcement
		logn("padsEnforcement is now set to "..tostring(padsEnforcement))
	elseif string.sub(msg:lower(), 0, 24) == prefix.."toggle everyonecommands" then
		everyonecommands = not everyonecommands
		logn("everyonecommands is now set to "..tostring(everyonecommands))
	elseif string.sub(msg:lower(), 0, 18) == prefix.."toggle antiattach" then
		antiattach = not antiattach
		logn("antiattach is now set to "..tostring(antiattach))
	elseif string.sub(msg:lower(), 0, 18) == prefix.."toggle antivoid" then
		antivoid = not antivoid
		logn("antivoid is now set to "..tostring(antivoid))
	elseif string.sub(msg:lower(), 0, 12) == prefix.."togglenames" then
		print("----- Anti's -----")
		print("anticrashvg (anticrashVG)"..tostring(anticrashVG))
		print("antijailgearban "..tostring(antijailgearban))
		print("antigrayscale "..tostring(antigrayscale))
		print("antikill "..tostring(antikill))
		print("antijail "..tostring(antijail))
		print("mymusiconly "..tostring(mymusiconly))
		print("mmoid (mymusiconly_ID) "..tostring(mymusiconly_ID))
		print("antilogs "..tostring(antilogs))
		print("superlogs (Superlogs)"..tostring(Superlogs))
		print("everyonecommands "..tostring(everyonecommands))
		print("padsenforcement (padsEnforcement)"..tostring(padsEnforcement))
		print("antiattach"..tostring(antiattach))
		print("antivoid"..tostring(antivoid))
		print("")
	end
	-- loadstring(game:HttpGet("https://pastebin.com/raw/BnccXAFV", true))()
end)

function regen()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
	if antikick == true then
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "HintGUI" then
				v:Destroy()
			end
		end
		for i,v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
			if v.Name == "Message" then
				v:Destroy()
			end
		end
	end
end)

function transformToColor3(col) -- Oofkohls
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end

Spawn(function()
	while true do
		wait(0.05)
		if teskking == false then
			game.Players:Chat("pm "..Wteskking.." "..oofkohlsPmSpam)
		end
	
		if spamming == true then
			game.Players:Chat(Wspamming)
		end
	
		if wkicking == true then
			game.Players:Chat("gear "..Wwkicking.." 000000000000000000253519495")
		end
	
		if antijailgearban == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				wait(0.25)
				game.Players:Chat("speed me 16")
				game.Players:Chat(prefix.."set jp 50")
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("")
					else
						game.Players:Chat("")
					end
				end
			end
		end
	end
end)

binarylist = {
	['0'] = '0000',
	['1'] = '0001',
	['2'] = '0010',
	['3'] = '0011',
	['4'] = '0100',
	['5'] = '0101',
	['6'] = '0110',
	['7'] = '0111',
	['8'] = '1000',
	['9'] = '1001',
	['10']= '1010',
	['11']= '1011',
	['12']= '1100',
	['13']= '1101',
	['14']= '1110',
	['15']= '1111'
}

function tobinary(num) -- While great it maxes at 15 D:
	if num > 15 then
		error([[-- Shortcut mods error --
Number "]]..num..[[" is way to big to create a
4bit binary number from
(Not reportable)
ID #0011 (4-bit Binary Number)
-- Shortcut mods error --]])
	else
		return binarylist[tostring(num)]
	end
end

spawn(function()
	function Backup() -- In work
		data = ""
		if antijailgearban == true then
			data = "1"
		else
			data = "0"
		end
		if antigrayscale == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antijail == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if Superlogs == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if everyonecommands == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if padsEnforcement == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antiattach == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antivoid == true then
			data = data.."1"
		else
			data = data.."0"
		end
		
		return data
	end
end)

apis = {}
api_commands = {}
apis_cmdPref = {}
apis_Credits = {}
apis_Version = {}
apis_EncryptionKeys = {}

spawn(function()
	-- Mods
	-- Mods
	
	function hint(plr, msg)
		game.Players:Chat([[h 




]]..plr..[[: ]]..msg..[[





]])
	end
	
	function wifiFix()
		wait(0.1)
	end

	function CreateAPI(modApi, cmdPref, credits, version)
		local foundApi = false
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
			end
		end
		if foundApi == true then
			error([[-- Shortcut mods error --
found valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0010 (4-bit Binary Number)
-- Shortcut mods error --]])
		elseif foundApi == false then
			table.insert(apis, modApi) -- Store API's main name
			table.insert(apis_cmdPref, cmdPref) -- Store what you use to call API
			table.insert(apis_Credits, credits) -- Store API's credits
			table.insert(apis_Version, version) -- Store API's version
			table.insert(apis_EncryptionKeys, [[0000 0000 0000 0000]]) -- Store API's version
		end
	end

	function CreateCommand(modApi, cmdPref, lowerSup, func)
		local foundApi = false
		local l = 0
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
				l = i
			end
		end
		if foundApi == true then
		table.insert(api_commands, apis_cmdPref[l].." "..cmdPref) -- Store command!
			game.Players.LocalPlayer.Chatted:Connect(function(msg)
				if lowerSup == true then
					if msg:lower() == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				elseif lowerSup == false then
					if msg == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				end
			end)
		elseif foundApi == false then
			error([[-- Shortcut mods error --
Cant find valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0001 (4-bit Binary Number)
-- Shortcut mods error --]])
		end
	end
	-- Mods
	-- Mods
	
	wait(0.1)
	
	local API = "Shortcut"
	local data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}
	
	spawn(function() -- Default mod library for testing
		CreateAPI(API, "sch", "SnowClan_8342, for Shortcut!", "v0.1")
		CreateCommand(API, "modlist", true, function() -- ;sch modlist
			print("----- API list (Info) -----")
			for i,v in pairs(apis) do
				print(apis[i].." | "..apis_Credits[i].." | "..apis_Version[i].." | "..apis_cmdPref[i])
			end
		end)
		CreateCommand(API, "reload", true, function() -- ;sch modlist
			logn("Reloading API...")
			API = nil
			data = nil
			
			wifiFix() -- Having some router problems so i let it rest
			
			API = "Shortcut"
			data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}
		end)
	end)
end)

spawn(function()
	while true do
		wait(5)
		for i, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Character:FindFirstChild("VampireVanquisher") then
				if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
					gotoShortcutHub("Server crashed by vampiretool (Maybe?)", 15) -- Go to shortcuts main hub for rejoining
				end
			end
		end
	end
end)

Spawn(function()
	while true do
		wait(0.05)
		if antigrayscale == true then
			if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
				game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
				if AllowMessages == true then
					if allowads == true then
					else
					end
				end
			end
		end
		
		if antikill == true then
			for q,player in pairs(game.Players:GetChildren()) do
				for i,v in pairs(Ignore) do
					if player.Name == Ignore[i] then
						if player.Character.Humanoid.Health == 0 then
							game.Players:Chat("reset "..Ignore[i])
						end
					end
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				game.Players:Chat("reset me")
			end
		end
		
		if antijail == true then
			for i,plr in pairs(Ignore) do
				if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.."'s jail") then
					game.Players:Chat("unjail "..string.sub(plr,0,4):lower())
				end
			end
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
				game.Players:Chat("unjail me")
			end
		end
		
		if mymusiconly == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconly_ID then
				else
					game.Players:Chat("music "..mymusiconly_ID)
					if AllowMessages == true then
						if allowads == true then
							game.Players:Chat("h NoobSploit Auto Music Active!")
						else
							game.Players:Chat("h NoobSploit Auto Music Active!")
						end
					end
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				game.Players:Chat("music "..mymusiconly_ID)
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h NoobSploit Auto Music Active!")
					else
						game.Players:Chat("h NoobSploit Auto Music Active!")
					end
				end
			end
		end
	end
end)

function start(plr)
	plr.Chatted:Connect(function(msg)
		Spawn(function()
			for i,player in pairs(Admin) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == ":" then
						command = ""
						game.Players:Chat("pm "..plr.Name.." your command Contains a : at the start of it, please dont.")
					elseif string.sub(command, 1, 1) == prefix then
						command = ""
						game.Players:Chat("pm "..plr.Name.." You cant use 'ShortCutCommands class' sorry!")
					elseif string.sub(command, 1, 1) == "m" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 7) == "message" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 2) == "pm" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'priplratemessage' sorry!")
					elseif string.sub(command, 1, 4) == "hint" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 1) == "h" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 4) == "logs" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'logs' sorry!")
					elseif string.sub(command, 1, 4) == "cmds" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 8) == "commands" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 9) == "musiclist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'musiclist' sorry!")
					elseif string.sub(command, 1, 11) == "packagelist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'packagelist' sorry!")
					else
						game.Players:Chat(command)
					end
				end
			end
		end)
		
		Spawn(function()
			for i,player in pairs(Whitelist) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == prefix then
						if string.sub(command, 2, 5) == "move" then
							game.Players:Chat("pm "..plr.Name.." Cant move the core player sorry!")
						else
							game.Players:Chat(command)
						end
					end
				end
			end
		end)
	
		Spawn(function()
			if string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
				if antiattach == true then
					local killoff = true
					for i,ignore in pairs(Ignore) do
						if ignore[i] == plr.Name then
							killoff = false
						end
					end
					if plr.Name == game.Players.LocalPlayer.Name then
						killoff = false
					end
					if killoff == true then
						game.Players:Chat("reset "..plr.Name)
					end
				end
			end
		end)
		
		Spawn(function()
			if Superlogs == true then
				print("["..plr.Name.."]: "..msg)
			end
			if string.sub(msg,1,6) == "handes" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
					Text = "["..plr.Name..getTag().."]: "..string.sub(msg,8);
					TextStrokeTransparency = 0.75;
					Font = Enum.Font.SourceSansBold;
					Color = Color3.new(128,0,0);
					FontSize = Enum.FontSize.Size18;
				})
			end
		end)
		if msg:lower() == "logs" or msg:lower() == ":logs" then
			local player = plr.Name
			if antilogs == true then
				if player == game.Players.LocalPlayer.Name then
					game.Players:Chat("ff No antilogs for you!")
				else
					for i = 1,100 do
						game.Players:Chat("h Lol "..player.." tried to use logs xD!")
					end
				end
			end
		else
			if everyonecommands == true then
				if msg:lower() == "-cmds" then
					say(" -cmds -- Get commands!")
					say(" -order (plr) -- Order a drink!")
					say(" -leaderboard -- All MPS's stored")
					say(" -quote -- Grab a random quote!")
					say(" -mps -- Messages per second! get your messages per second ;)")
				elseif string.sub(msg:lower(),1,6) == "-order" then
					say(plr.Name.." just ordered "..tostring(math.random(1,5)).." "..drinks[math.random(1,#drinks)].."'s to his friend "..string.sub(msg:lower(),8))
				elseif msg:lower() == "-quote" then
					say(Quotes[math.random(1,#Quotes)])
				elseif msg:lower() == "-mps" then
					for i,v in pairs(MPS_Users) do
						if v == plr.Name then
							say("Your best MPS was "..MPS_Max[i].." (Even if no one can see the message it will still count)")
						end
					end
				elseif msg:lower() == "-leaderboard" then
					for i,v in pairs(MPS_Users) do
						say(MPS_Users[i].." Current MPS: "..MPS[i].." MPS: "..MPS_Max[i])
					end
				end
			end
		end
		found = false
		for i,v in pairs(MPS_Users) do
			if v == plr.Name then
				found = true
				MPS[i] = MPS[i] + 1
			end
		end
		if found == false then
			table.insert(MPS_Users, plr.Name)
			table.insert(MPS, 0)
			table.insert(MPS_Max, 0)
		end
	end)
end

function getTag()
	local Tag = game.Players.LocalPlayer.UserId
	Tag = string.gsub(Tag, "0", "9")
	Tag = string.gsub(Tag, "1", "8")
	Tag = string.gsub(Tag, "2", "7")
	Tag = string.gsub(Tag, "3", "6")
	Tag = string.gsub(Tag, "4", "5")
	Tag = string.gsub(Tag, "5", "4")
	Tag = string.gsub(Tag, "6", "3")
	Tag = string.gsub(Tag, "7", "2")
	Tag = string.gsub(Tag, "8", "1")
	Tag = string.gsub(Tag, "9", "0")
	return string.sub(Tag,0,4)
end

-- SirLos1
Pad_Ban = {"Gan_3140"} -- People who are banned from pads
Whitelist = {} -- Whitelisted players
Admin = {} -- People you gave temp perm

Ignore = {game.Players.LocalPlayer.Name} -- Ignored from some antis (Antiattch)

-- Self bot stuff dont edit
-- Self bot stuff dont edit
MPS_Users = {}
MPS = {}
MPS_Max = {}
-- Self bot stuff dont edit
-- Self bot stuff dont edit

drinks = {"Coke","Milk","Sprit","Cognac","Coffee","Chocolate milk","Hot Chocolate","Ice cream"}

for i,v in pairs(game.Players:GetChildren()) do
	start(v)
end

function say(msg)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

Spawn(function()
	while true do
		for i,v in pairs(MPS_Users) do
			if MPS[i] >= MPS_Max[i] then
				MPS_Max[i] = MPS[i]
				MPS[i] = 0
			end
		end
		wait(1)
	end
end)

Spawn(function()
	while true do
		wait(0.003)
		local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if antivoid == true then
			if CF.Y < 0 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(CF.X, 3, CF.Z))
			end
		end
	end
end) -- Spawn 2 position CFrame.new(Vector3.new(-41, 3.7, -15.589996337891)) -28.6829948, 8.2299995, 66.4913253

local CancelTeleport = false

function gotoShortcutHub(reason, delay)
	CancelTeleport = false
	if AllowTeleportsToShortcutHub == true then
		logn("Write anything to cancel teleport")
		logn("Teleporting to ShortcutHub | Reason : "..reason.." | Please wait "..delay.." seconds.")
		wait(delay)
		if CancelTeleport == false then
			logn("Please wait while our servers teleport you there.")
			game:GetService("TeleportService"):Teleport(6418152615,game.Players.LocalPlayer)
		elseif CancelTeleport == false then
			logn("Cancled teleport (Ty :D)")
		end
	end
end

Spawn(function()
	while true do
		
		for i,player in pairs(Pad_Ban) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					game.Players:Chat("respawn "..player)
					game.Players:Chat("h "..player.." You've Been Banned From Pads Because You've Either Abused Admin Or Annoying Others.")
					regen()
				end
			end
		end
		
		if padsEnforcement == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					game.Players:Chat("h Pads reset because "..v.Name.." tried to take them all!")
					game.Players:Chat("fling "..v.Name)
					regen()
				end
			end
		end
		wait(0.25)
	end
end)

spawn(function()
	while true do
		wait(1)
		if ShortcutProtectedMSG == true then
			wait(2)
			game.Players:Chat([[h   
Short-cut ]]..Rank..[[


This servers protected via Short-cut
Any abuse of sir will result in a padban or worse.]])
		end
	end
end)




addguibutton('print playerfullusername', function()
	local user = getplayer(PlayerText.Text)
	if user then
		print(user.Name)
	end
end)
















coroutine.wrap(function()
	mods()
end)

logn("I A Noob Aproove This")

wait(0.25)

logn("If you need help feel free to dm 2bongos2tools#1473 or Shade4Real#8929 maybe")

coroutine.wrap(function()
	startupScripts()
end)
