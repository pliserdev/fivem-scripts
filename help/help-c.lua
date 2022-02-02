RegisterCommand("help", function()
    msg("Discord server: DISCORD SERVER")
    msg("Server website: CHANGE ME")
    msg("Anything else you want!")
end, false)


function msg(text)
    TriggerEvent("chatMessage", "[Server]", {255,0,0}, text)
end