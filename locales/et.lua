local Translations = {
    error = {
        no_vehicles = 'Selles kohas ei ole sõidukeid!',
        not_depot = 'Teie sõiduk ei ole depoos',
        not_owned = 'Seda sõidukit ei saa hoida',
        not_correct_type = 'Te ei saa seda tüüpi sõidukit siia hoida',
        not_enough = 'Piisavalt raha pole',
        no_garage = 'Puudub',
        vehicle_occupied = 'Te ei saa seda sõidukit hoida, kuna see pole tühi',
        vehicle_not_tracked = 'Sõidukit ei õnnestunud jälgida',
        no_spawn = 'Ala on liiga rahvarohke'
    },
    success = {
        vehicle_parked = 'Sõiduk on salvestatud',
        vehicle_tracked = 'Sõiduk on jälgitud',
    },
    status = {
        out = 'Väljas',
        garaged = 'Garaažis',
        impound = 'Politsei poolt konfiskeeritud',
        house = 'Maja',
    },
    info = {
        car_e = 'E - Garaaž',
        sea_e = 'E - Paadimaja',
        air_e = 'E - Hangaar',
        rig_e = 'E - Puurplatvormi parkimiskoht',
        depot_e = 'E - Depoo',
        house_garage = 'E - Maja garaaž',
    }
}

if GetConvar('qb_locale', 'en') == 'et' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end