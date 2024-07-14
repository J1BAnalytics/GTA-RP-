-- drug_lab_security.lua

local securitySystems = {
    cameras = vector3(1391.64, 3605.59, 38.94), -- Security camera location
    storage = vector3(1391.74, 3605.79, 38.94) -- Storage container location
}

local function MonitorSecurity()
    local playerPed = GetPlayerPed(-1)
    local playerCoords = GetEntityCoords(playerPed)
    
    if #(playerCoords - securitySystems.cameras) < 5.0 then
        TriggerEvent('chat:addMessage', { args = { 'Monitoring security cameras...' } })
        -- Add camera monitoring logic here
    else
        TriggerEvent('chat:addMessage', { args = { 'You need to be at the security station to monitor cameras.' } })
    end
end

local function AccessStorage()
    local playerPed = GetPlayerPed(-1)
    local playerCoords = GetEntityCoords(playerPed)
    
    if #(playerCoords - securitySystems.storage) < 5.0 then
        TriggerEvent('chat:addMessage', { args = { 'Accessing storage containers...' } })
        -- Add storage access logic here
    else
        TriggerEvent('chat:addMessage', { args = { 'You need to be at the storage area to access containers.' } })
    end
end

RegisterCommand('monitorSecurity', function()
    MonitorSecurity()
end, false)

RegisterCommand('accessStorage', function()
    AccessStorage()
end, false)
