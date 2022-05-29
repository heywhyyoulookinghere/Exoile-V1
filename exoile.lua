-- EXOILE
-- SAY ,CMDS FOR A LIST OF COMMANDS
-- MADE WITH CARE

local command = function(...)game.Players:Chat(...)end
local chat = function(...)game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...,"All")end
local prefix = ","
local hidemusicid = string.rep(0,700)

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


game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 9) == prefix.."prefix " then
   prefix = string.sub(msg:lower(), 9, 9)
   sendnotif("Your prefix has been set to '"..string.sub(msg:lower(), 9, 9).."'")
   chat("i just changed my prefix xd")
end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
   print("---------------------MAIN COMMANDS--------------------------")
   print("prefix -- changes your current prefix")
   wait(0.1)
   sendnotif("Please check console for current commands.")
end
end)
