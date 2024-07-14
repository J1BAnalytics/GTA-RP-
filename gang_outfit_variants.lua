-- gang_clothes.lua

local gangOutfits = {
    -- Variant 1
    {
        tshirt_1 = 15, tshirt_2 = 0,
        torso_1 = 65, torso_2 = 2,
        arms = 31,
        pants_1 = 9, pants_2 = 7,
        shoes_1 = 12, shoes_2 = 6,
        chain_1 = 0, chain_2 = 0,
        mask_1 = 0, mask_2 = 0,
        bproof_1 = 0, bproof_2 = 0,
        sunglasses_1 = 5, sunglasses_2 = 0,
    },
    -- Variant 2
    {
        tshirt_1 = 15, tshirt_2 = 1,
        torso_1 = 66, torso_2 = 2,
        arms = 32,
        pants_1 = 10, pants_2 = 8,
        shoes_1 = 13, shoes_2 = 7,
        chain_1 = 1, chain_2 = 1,
        mask_1 = 1, mask_2 = 1,
        bproof_1 = 1, bproof_2 = 0,
        sunglasses_1 = 6, sunglasses_2 = 0,
    },
    -- Variant 3
    {
        tshirt_1 = 15, tshirt_2 = 2,
        torso_1 = 67, torso_2 = 3,
        arms = 33,
        pants_1 = 11, pants_2 = 9,
        shoes_1 = 14, shoes_2 = 8,
        chain_1 = 2, chain_2 = 2,
        mask_1 = 2, mask_2 = 2,
        bproof_1 = 2, bproof_2 = 0,
        sunglasses_1 = 7, sunglasses_2 = 0,
    },
    -- Variant 4
    {
        tshirt_1 = 15, tshirt_2 = 3,
        torso_1 = 68, torso_2 = 4,
        arms = 34,
        pants_1 = 12, pants_2 = 10,
        shoes_1 = 15, shoes_2 = 9,
        chain_1 = 3, chain_2 = 3,
        mask_1 = 3, mask_2 = 3,
        bproof_1 = 3, bproof_2 = 0,
        sunglasses_1 = 8, sunglasses_2 = 0,
    },
    -- Variant 5
    {
        tshirt_1 = 15, tshirt_2 = 4,
        torso_1 = 69, torso_2 = 5,
        arms = 35,
        pants_1 = 13, pants_2 = 11,
        shoes_1 = 16, shoes_2 = 10,
        chain_1 = 4, chain_2 = 4,
        mask_1 = 4, mask_2 = 4,
        bproof_1 = 4, bproof_2 = 0,
        sunglasses_1 = 9, sunglasses_2 = 0,
    },
    -- Variant 6
    {
        tshirt_1 = 15, tshirt_2 = 5,
        torso_1 = 70, torso_2 = 6,
        arms = 36,
        pants_1 = 14, pants_2 = 12,
        shoes_1 = 17, shoes_2 = 11,
        chain_1 = 5, chain_2 = 5,
        mask_1 = 5, mask_2 = 5,
        bproof_1 = 5, bproof_2 = 0,
        sunglasses_1 = 10, sunglasses_2 = 0,
    },
    -- Variant 7
    {
        tshirt_1 = 15, tshirt_2 = 6,
        torso_1 = 71, torso_2 = 7,
        arms = 37,
        pants_1 = 15, pants_2 = 13,
        shoes_1 = 18, shoes_2 = 12,
        chain_1 = 6, chain_2 = 6,
        mask_1 = 6, mask_2 = 6,
        bproof_1 = 6, bproof_2 = 0,
        sunglasses_1 = 11, sunglasses_2 = 0,
    },
    -- Variant 8
    {
        tshirt_1 = 15, tshirt_2 = 7,
        torso_1 = 72, torso_2 = 8,
        arms = 38,
        pants_1 = 16, pants_2 = 14,
        shoes_1 = 19, shoes_2 = 13,
        chain_1 = 7, chain_2 = 7,
        mask_1 = 7, mask_2 = 7,
        bproof_1 = 7, bproof_2 = 0,
        sunglasses_1 = 12, sunglasses_2 = 0,
    },
    -- Variant 9
    {
        tshirt_1 = 15, tshirt_2 = 8,
        torso_1 = 73, torso_2 = 9,
        arms = 39,
        pants_1 = 17, pants_2 = 15,
        shoes_1 = 20, shoes_2 = 14,
        chain_1 = 8, chain_2 = 8,
        mask_1 = 8, mask_2 = 8,
        bproof_1 = 8, bproof_2 = 0,
        sunglasses_1 = 13, sunglasses_2 = 0,
    },
    -- Variant 10
    {
        tshirt_1 = 15, tshirt_2 = 9,
        torso_1 = 74, torso_2 = 10,
        arms = 40,
        pants_1 = 18, pants_2 = 16,
        shoes_1 = 21, shoes_2 = 15,
        chain_1 = 9, chain_2 = 9,
        mask_1 = 9, mask_2 = 9,
        bproof_1 = 9, bproof_2 = 0,
        sunglasses_1 = 14, sunglasses_2 = 0,
    },
}

RegisterCommand('gangoutfit', function(source, args, rawCommand)
    local ped = GetPlayerPed(-1)
    local variant = tonumber(args[1]) or 1

    if variant < 1 or variant > 10 then
        variant = 1
    end

    local outfit = gangOutfits[variant]

    for k, v in pairs(outfit) do
        SetPedComponentVariation(ped, k, v)
    end
end, false)
