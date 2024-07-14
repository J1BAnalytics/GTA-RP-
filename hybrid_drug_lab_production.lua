-- drug_production.lua

local productionStations = {
    hydroponics = vector3(1391.44, 3605.19, 38.94), -- Plant cultivation area
    methLab = vector3(1391.54, 3605.39, 38.94), -- Chemical synthesis area
}

local function StartHydroponics()
    local playerPed = GetPlayerPed(-1)
    local playerCoords = GetEntityCoords(playerPed)
    
    if #(playerCoords - productionStations.hydroponics) < 5.0 then
        TriggerEvent('chat:addMessage', { args = { 'Starting hydroponics cultivation...' } })
        Citizen.Wait(10000) -- Simulate time for cultivation
        TriggerEvent('chat:addMessage', { args = { 'Hydroponics cultivation complete! Proceed to meth lab.' } })
    else
        TriggerEvent('chat:addMessage', { args = { 'You need to be at the hydroponics station to start.' } })
    end
end

local function StartMethProduction()
    local playerPed = GetPlayerPed(-1)
    local playerCoords = GetEntityCoords(playerPed)
    
    if #(playerCoords - productionStations.methLab) < 5.0 then
        TriggerEvent('chat:addMessage', { args = { 'Starting meth production...' } })
        Citizen.Wait(15000) -- Simulate time for meth production
        TriggerEvent('chat:addMessage', { args = { 'Meth production complete! Your product is ready.' } })
    else
        TriggerEvent('chat:addMessage', { args = { 'You need to be at the meth lab station to start.' } })
    end
end

RegisterCommand('startHydroponics', function()
    StartHydroponics()
end, false)

RegisterCommand('startMethProduction', function()
    StartMethProduction()
end, false)
