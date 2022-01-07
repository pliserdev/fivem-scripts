RegisterCommand('car', function(source, args)
    local vehicleName = args[1] or 'adder'
    -- check vehicle
    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(VehicleName) then
        TriggerEvent('chat:addMessage', {
            args = {'Vehicle not recognised ' .. vehicleName}
        })
        return
    end

    -- load model
    RequestModel(vehicleName)
    -- wait for model to load
    while not HasModelLoaded(vehicleName) do
        Wait(500)
    end

    -- get player position
    local playerPed = PlayerPedId()
    local pos = GetEntityCoords(playerPed)

    --create vehicle
    local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntityHeading(playerPed), true, false)

    -- set player ped in driver seat
    SetPedIntoVehicle(playerPed, vehicle, -1)

    --give game the vehicle
    SetEntityAsNoLongerNeeded(vehicle)

    --release the model
    SetModelAsNoLongerNeeded(vehicleName)

    -- inform
    TriggerEvent('chat:addMessage', {
        args = {'You have spawned a ' .. vehicleName}
    })
end, false)

RegisterCommand('dv', function()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    DeleteEntity(vehicle)
end, false)