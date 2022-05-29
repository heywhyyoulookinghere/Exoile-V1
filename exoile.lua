-- EXOILE
-- SAY ,CMDS FOR A LIST OF COMMANDS
-- MADE WITH CARE

local command = function(...)game.Players:Chat(...)end
local prefix = ","

function sendnotif(msg)
  game.StarterGui:SetCore("SendNotification", {
      Title = "Exoile";
      Text = msg;
      Duration = 3;
      })
end
