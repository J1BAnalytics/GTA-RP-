-- enhanced_spotlight.lua

RegisterCommand('spotlight', function(source, args, rawCommand)
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    if vehicle ~= 0 then
        SetVehicleSearchlight(vehicle, true, true)
        TriggerEvent('chat:addMessage', {
            args = { 'Spotlight activated with enhanced brightness!' }
        })
    else
        TriggerEvent('chat:addMessage', {
            args = { 'You are not in a vehicle!' }
        })
    end
end, false)
