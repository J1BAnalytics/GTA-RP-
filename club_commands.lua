-- strip_club_commands.lua

RegisterCommand('storeMoney', function(source, args, rawCommand)
    local safeType = args[1]
    local amount = tonumber(args[2])
    
    if safeType and amount then
        if safeType == 'basic' then
            StoreMoneyInSafe('basicSafe', amount)
        elseif safeType == 'enhanced' then
            StoreMoneyInSafe('enhancedSafe', amount)
        else
            TriggerEvent('chat:addMessage', { args = { 'Invalid safe type! Use "basic" or "enhanced".' } })
        end
    else
        TriggerEvent('chat:addMessage', { args = { 'Usage: /storeMoney [basic/enhanced] [amount]' } })
    end
end, false)

RegisterCommand('retrieveMoney', function(source, args, rawCommand)
    local safeType = args[1]
    local amount = tonumber(args[2])
    
    if safeType and amount then
        if safeType == 'basic' then
            RetrieveMoneyFromSafe('basicSafe', amount)
        elseif safeType == 'enhanced' then
            RetrieveMoneyFromSafe('enhancedSafe', amount)
        else
            TriggerEvent('chat:addMessage', { args = { 'Invalid safe type! Use "basic" or "enhanced".' } })
        end
    else
        TriggerEvent('chat:addMessage', { args = { 'Usage: /retrieveMoney [basic/enhanced] [amount]' } })
    end
end, false)
