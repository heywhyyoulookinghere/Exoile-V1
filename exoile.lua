-- EXOILE
-- SAY ,CMDS FOR A LIST OF COMMANDS
-- MADE WITH CARE

local command = function(...)game.Players:Chat(...)end
local chat = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ","
local hidemusicid = string.rep(0,700)
local spamreset = false

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
   print("spamreset -- spams the regen button")
   print("stopspam -- stops spamming the regen button")
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
if string.sub(msg:lower(), 0, 10) == prefix.."spamreset" then
   wait(0.1)
   spamreset = true
   wait(0.1)
while spamreset == true do
    wait()
    regen()
end
   sendnotif("Now spamming the regen button.")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."stopspam" then
   wait(0.1)
   spamreset = false
   sendnotif("Stopped spamming the regen.")
end
end)


