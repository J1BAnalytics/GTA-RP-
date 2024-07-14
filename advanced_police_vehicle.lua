-- police_vehicle.lua

RegisterCommand('policecar', function(source, args, rawCommand)
    local vehicleName = args[1] or 'police'
    local playerPed = GetPlayerPed(-1)
    local pos = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)

    RequestModel(vehicleName)
    while not HasModelLoaded(vehicleName) do
        Citizen.Wait(0)
    end

    local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, heading, true, false)
    SetPedIntoVehicle(playerPed, vehicle, -1)

    -- Apply customizations
    SetVehicleColours(vehicle, 0, 0)  -- primary, secondary
    SetVehicleNumberPlateText(vehicle, 'POLICE')
    ToggleVehicleMod(vehicle, 22, true)  -- Xenon headlights
    SetVehicleMod(vehicle, 23, 11, false)  -- Sport rims
    SetVehicleWindowTint(vehicle, 1)  -- Light smoke
    SetVehicleSiren(vehicle, true)
    -- Unique features
    AddVehicleMod(vehicle, 14, 4)  -- Roll cage
    AddVehicleMod(vehicle, 16, 3)  -- Engine upgrade
    AddVehicleMod(vehicle, 15, 2)  -- Transmission upgrade
    AddVehicleMod(vehicle, 18, 2)  -- Turbo
    AddVehicleMod(vehicle, 0, 4)  -- Custom front bumper

    SetModelAsNoLongerNeeded(vehicleName)
end, false)
