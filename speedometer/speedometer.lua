function text(content)
    SetTextFont(0)
    SetTextPorportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.9,0.7)
end

Citizen.CreateThread(function()

    while true do
        Citizen.wait(2)

        
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1),false))*2.2369
        
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end    
    end


end)