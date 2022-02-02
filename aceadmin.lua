add_ace Admin administrator allow

add_principal identifier.steam:XXXXXXXXXXXXXXXX Admin

--[[
   if IsPlayerAceAllowed(source,"administrator") then
   else TriggerClientEvent("no-perms", source)
   end

   RegisterNetEvent("no-perms")
   AddEventHandler("no-perms", function()
        TriggerEvent("chatMessage", "[Error]", {255,0,0}, "No permission to do this!")
   end)
    ^^^^ in client.lua scripts as its client based
]]