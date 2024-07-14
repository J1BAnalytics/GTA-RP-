-- drug_lab.lua

local drugLabs = {
    {
        name = "Hybrid Drug Lab",
        coords = vector3(1391.34, 3604.99, 38.94), -- Example coordinates
        interiorProps = {
            "hydroponics_plants",
            "meth_lab_equipment",
            "ventilation_system",
            "security_cameras",
            "storage_containers"
        },
    }
}

local function LoadDrugLab(drugLab)
    for _, propName in ipairs(drugLab.interiorProps) do
        EnableInteriorProp(drugLab.coords, propName)
        RefreshInterior(drugLab.coords)
    end
end

Citizen.CreateThread(function()
    for _, drugLab in ipairs(drugLabs) do
        LoadDrugLab(drugLab)
    end
end)
