-- EXOILE V1
-- SAY ,CMDS FOR A LIST OF COMMANDS
-- MADE WITH CARE

local command = function(...)game.Players:Chat(...)end
local chat = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ","
local hidemusicid = string.rep(0,700)
local spamreset = false
local locked = false

function sendnotif(msg)
  game.StarterGui:SetCore("SendNotification", {
      Title = "Exoile V1";
      Text = msg;
      Duration = 3;
      })
end

function clearlogs()
  for i = 1,100 do
    wait()
    command("ff stinky winky xd")
end
end

function chatdiscord()
   chat("join us today")
   chat("ff 5yyrFGAyDC")
   chat("exoile ontop")
end

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."prefix " then
   prefix = string.sub(msg:lower(), 9, 9)
   sendnotif("Prefix set to '"..string.sub(msg:lower(), 9, 9).."'")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
   print("---------------------MAIN COMMANDS--------------------------")
   print("prefix -- changes your current prefix")
   print("nok -- makes you not die by obby")
   print("server -- sends you the discord")
   print("spamregen -- spams the regen button")
   print("stopspam -- stops spamming the regen button")
   print("allpads -- grabs all pads")
   print("lock -- locks the server")
   print("unlock -- unlocks the server")
   print("house -- tps you to the house")
   print("pads -- tps you to the pads")
   print("move -- moves anything you're near")
   print("movebp -- moves the bp")
   print("regen -- regens the pads")
   print("rj -- forces you to rejoin")
   print("clearlogs -- clears the logs")
   wait(0.1)
   sendnotif("Please check console for current commands.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 4) == prefix.."nok" then
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
wait(0.1)
sendnotif("We have removed the ability to die from kill bricks.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."server" then
   wait(0.1)
   sendnotif("join our lovely server! discord.gg/5yyrFGAyDC")
   chatdiscord()
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."spamregen" then
   sendnotif("Now spamming the regen button.")
   wait(0.1)
   spamreset = true
while spamreset == true do
    wait()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."stopspam" then
   sendnotif("Stopped spamming the regen.")
   wait(0.1)
   spamreset = false
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
   sendnotif("Getting all pads.")
   wait(0.1)
   fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
   wait(0.1)
   local pads = Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")
for i, pad in pairs(pads) do
   pad.PrimaryPart = pad:FindFirstChild("Head")
   local pos = pad.PrimaryPart.CFrame
   wait(0)
   pad.PrimaryPart.CanCollide = false
   pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
   wait(0)
   pad:SetPrimaryPartCFrame(pos)
   pad.PrimaryPart.CanCollide = true
   wait(0)
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."lock" then
sendnotif("Currently locking down server.")
wait(0.1)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
wait(0.1)
local pads = Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")
for i, pad in pairs(pads) do
   pad.PrimaryPart = pad:FindFirstChild("Head")
   local pos = pad.PrimaryPart.CFrame
   wait(0)
   pad.PrimaryPart.CanCollide = false
   pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
   wait(0)
   pad:SetPrimaryPartCFrame(pos)
   pad.PrimaryPart.CanCollide = true
   wait(0)
end
locked = true
while locked == true do
  command("h server has been locked by Exoile V1.")
  wait(0.1)
  command("punish others")
  wait(0.1)
  command("blind others")
end
wait(0.1)
sendnotif("Locked server.")
end
end)


game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."unlock" then
sendnotif("Currently unlocking server.")
wait(0.1)
locked = false
wait(0.1)
command("reset all")
wait(0.1)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
wait(0.1)
sendnotif("Unlocked server.")
wait(0.1)
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg, 0, 4) == prefix.."rj" then 
wait(0.1)
local place = game:GetService("TeleportService")
local player = game:GetService("Players").LocalPlayer
place:Teleport(game.PlaceId, player)
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 7) == prefix.."movebp" then 
wait(0.1)
sendnotif("Moving the baseplate..")
command("respawn me")
wait()
command("sit me")
wait(0.9)
command("punish me")
wait(0.3)
command("unpunish me")
wait(0.1)
command("skydive me")
wait(0.1)
command("reset me")
wait(0.1)
clearlogs()
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 6) == prefix.."move" then 
wait(0.1)
sendnotif("Moving object near you.")
wait()
command("sit me")
wait(0.9)
command("punish me")
wait(0.3)
command("unpunish me")
wait(0.1)
command("skydive me")
wait(0.1)
command("reset me")
wait(0.1)
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."regen" then 
wait(0.1)
sendnotif("Resetting the pads.")
wait(0.1)
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
wait(0.1)
sendnotif("Resetted pads.")
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."pads" then
sendnotif("Tped to pads")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
end
	
if string.sub(msg:lower(), 0, 6) == prefix.."house" then
sendnotif("Tped to house")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
end
end)

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then 
wait(0.1)
sendnotif("Clearing the logs...")
wait(0.1)
clearlogs()
wait(0.1)
sendnotif("Cleared logs.")
end
end)
