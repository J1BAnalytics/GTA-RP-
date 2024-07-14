-- advanced_mlo.lua

local interiors = {
    {
        name = "Advanced Gang Hideout",
        coords = vector3(1391.34, 3604.99, 38.94), -- Example coordinates
        interiorProps = {
            "gang_lights", -- Custom lighting
            "gang_music", -- Background music
            "gang_weapons", -- Weapon racks
            "gang_drugs", -- Drug lab
            "gang_security", -- Security cameras
        },
    },
    {
        name = "Police Station Expansion",
        coords = vector3(441.25, -981.96, 30.69), -- Example coordinates
        interiorProps = {
            "police_evidence", -- Evidence room
            "police_armory", -- Armory
            "police_interrogation", -- Interrogation room
            "police_locker_room", -- Locker room
            "police_garage", -- Garage with unique vehicles
        },
    },
    {
        name = "Modern Hospital Wing",
        coords = vector3(337.36, -1396.59, 32.51), -- Example coordinates
        interiorProps = {
            "hospital_emergency", -- Emergency room
            "hospital_surgery", -- Surgery room
            "hospital_pharmacy", -- Pharmacy
            "hospital_waiting_area", -- Waiting area
            "hospital_helipad", -- Helipad for emergency helicopters
        },
    },
}

local function LoadInterior(interior)
    for _, propName in ipairs(interior.interiorProps) do
        EnableInteriorProp(interior.coords, propName)
        RefreshInterior(interior.coords)
    end
end

Citizen.CreateThread(function()
    for _, interior in ipairs(interiors) do
        LoadInterior(interior)
    end
end)
