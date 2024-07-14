-- ems_uniform.lua

RegisterCommand('emsuniform', function(source, args, rawCommand)
    local ped = GetPlayerPed(-1)
    local emsOutfit = {
        tshirt_1 = 15, tshirt_2 = 0,
        torso_1 = 43, torso_2 = 0,
        arms = 88,
        pants_1 = 34, pants_2 = 0,
        shoes_1 = 10, shoes_2 = 0,
        chain_1 = 0, chain_2 = 0,
        mask_1 = 0, mask_2 = 0,
        bproof_1 = 0, bproof_2 = 0,
        decals_1 = 0, decals_2 = 0,
    }

    for k, v in pairs(emsOutfit) do
        SetPedComponentVariation(ped, k, v)
    end
end, false)
