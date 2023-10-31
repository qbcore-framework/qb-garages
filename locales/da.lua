local Translations = {
    error = {
        no_vehicles = 'Der er ingen køretøjer på denne placering!',
        not_depot = 'Dit køretøj er ikke i depotet',
        not_owned = 'Dette køretøj kan ikke opbevares',
        not_correct_type = 'Du kan ikke opbevare denne type køretøj her',
        not_enough = 'Ikke nok penge',
        no_garage = 'Ingen',
        vehicle_occupied = 'Du kan ikke opbevare dette køretøj, da det ikke er tomt',
        vehicle_not_tracked = 'Kunne ikke spore køretøjet',
        no_spawn = 'Området er for overfyldt'
    },
    success = {
        vehicle_parked = 'Køretøj opbevaret',
        vehicle_tracked = 'Køretøj sporet',
    },
    status = {
        out = 'Ude',
        garaged = 'I garagen',
        impound = 'Beslaglagt af politiet',
        house = 'Hus',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Bådhus',
        air_e = 'E - Hangar',
        rig_e = 'E - Rig Parkeringsplads',
        depot_e = 'E - Depot',
        house_garage = 'E - Husgarage',
    }
}

if GetConvar('qb_locale', 'en') == 'da' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end