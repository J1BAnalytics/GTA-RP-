-- strip_club_safe.lua

local stripClub = {
    name = "Vanilla Unicorn Strip Club",
    coords = vector3(128.0, -1298.0, 29.0), -- Example coordinates
    basicSafe = {
        location = vector3(129.0, -1299.0, 29.0),
        capacity = 10000, -- Maximum money the basic safe can hold
    },
    enhancedSafe = {
        location = vector3(130.0, -1300.0, 29.0),
        capacity = 50000, -- Maximum money the enhanced safe can hold
    },
}

local safes = {
    basicSafe = {
        currentMoney = 0,
        capacity = stripClub.basicSafe.capacity
    },
    enhancedSafe = {
        currentMoney = 0,
        capacity = stripClub.enhancedSafe.capacity
    }
}

local function StoreMoneyInSafe(safeType, amount)
    if safes[safeType].currentMoney + amount <= safes[safeType].capacity then
        safes[safeType].currentMoney = safes[safeType].currentMoney + amount
        TriggerEvent('chat:addMessage', { args = { 'Money stored successfully!' } })
    else
        TriggerEvent('chat:addMessage', { args = { 'Safe is full or amount exceeds capacity!' } })
    end
end

local function RetrieveMoneyFromSafe(safeType, amount)
    if safes[safeType].currentMoney >= amount then
        safes[safeType].currentMoney = safes[safeType].currentMoney - amount
        TriggerEvent('chat:addMessage', { args = { 'Money retrieved successfully!' } })
    else
        TriggerEvent('chat:addMessage', { args = { 'Not enough money in the safe!' } })
    end
end
