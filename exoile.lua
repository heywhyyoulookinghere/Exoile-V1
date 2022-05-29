-- EXOILE
-- SAY ,CMDS FOR A LIST OF COMMANDS
-- MADE WITH CARE

local command = function(...)game.Players:Chat(...)end
local chat = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ","
local hidemusicid = string.rep(0,700)
local spamreset = false
local takeover = false

function sendnotif(msg)
  game.StarterGui:SetCore("SendNotification", {
      Title = "Exoile";
      Text = msg;
      Duration = 3;
      })
end

function regen()
fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

function leavemessage()
  for i = 1,100 do
    wait()
    command("m exploited by exoile client.")
end
end

function dropdiscord()
  for i = 1,7 do
    wait()
    chat("discord here")
end
end

function clearlogs()
  for i = 1,100 do
    wait()
    command("ff stinky winky xd")
end
end

game.Players.LocalPlayer.Chatted:connect(function(msg)
if string.sub(msg:lower(), 0, 8) == prefix.."prefix " then
   prefix = string.sub(msg:lower(), 9, 9)
   sendnotif("Prefix set to '"..string.sub(msg:lower(), 9, 9).."'")
   wait(1)
   chat("i just changed my prefix xd")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
   print("---------------------MAIN COMMANDS--------------------------")
   print("prefix -- changes your current prefix")
   print("nok -- makes you not die by obby")
   print("dascard -- sends you the discord")
   print("spamregen -- spams the regen button")
   print("stopspam -- stops spamming the regen button")
   print("allpads -- grabs all pads")
   print("takeover -- takes over server")
   print("stoptakeover -- stops the takeover")
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
if string.sub(msg:lower(), 0, 8) == prefix.."dascard" then
   wait(0.1)
   sendnotif("discord here")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 10) == prefix.."spamregen" then
   sendnotif("Now spamming the regen button.")
   wait(0.1)
   spamreset = true
while spamreset == true do
    wait()
    regen()
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
if string.sub(msg:lower(), 0, 12) == prefix.."allpads" then
   sendnotif("Getting all pads.")
   wait(0.1)
   regen()
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

function takeover()
   local pads = Workspace.Terrain._Game.Admin.Pads:GetChildren("Head")
   regen()
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

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."takeover" then
   sendnotif("Taking over server.")
   wait(0.1)
   takeover()
   wait(0.1)
   if not takeover then
   takeover = true
   end
while takeover == true do
  wait(0.1)
  command("h taken over by exoile")
  wait(0.1)
  command("punish others")
  wait(0.1)
  command("blind others")
  wait(0.1)
end
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 13) == prefix.."stoptakeover" then
   sendnotif("Fixing server.")
   wait(0.1)
   if takeover then
   takeover = false
   end
   wait(0.1)
   command("unblind all")
   wait(0.1)
   command("reset all")
end
end)
