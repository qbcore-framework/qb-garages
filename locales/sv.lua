local Translations = {
    error = {
        no_vehicles = 'Det finns inga fordon på den här platsen!',
        not_depot = 'Ditt fordon är inte i depån',
        not_owned = 'Det går inte att lagra detta fordon',
        not_correct_type = 'Du kan inte lagra den här typen av fordon här',
        not_enough = 'Inte tillräckligt med pengar',
        no_garage = 'Inget',
        vehicle_occupied = 'Du kan inte lagra detta fordon eftersom det inte är tomt',
        vehicle_not_tracked = 'Det gick inte att spåra fordonet',
        no_spawn = 'Området är för trångt'
    },
    success = {
        vehicle_parked = 'Fordon lagrat',
        vehicle_tracked = 'Fordon spårat',
    },
    status = {
        out = 'Ute',
        garaged = 'I garaget',
        impound = 'Beslagtaget av polisen',
        house = 'Hus',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Båthus',
        air_e = 'E - Hangar',
        rig_e = 'E - Plats för borrigg',
        depot_e = 'E - Depå',
        house_garage = 'E - Husgarage',
    }
}

if GetConvar('qb_locale', 'en') == 'sv' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end