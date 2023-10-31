local Translations = {
    error = {
        no_vehicles = 'Er zijn geen voertuigen op deze locatie!',
        not_depot = 'Uw voertuig bevindt zich niet in het depot',
        not_owned = 'Dit voertuig kan niet worden opgeslagen',
        not_correct_type = 'Je kunt dit type voertuig hier niet opslaan',
        not_enough = 'Niet genoeg geld',
        no_garage = 'Geen',
        vehicle_occupied = 'Je kunt dit voertuig niet opslaan omdat het niet leeg is',
        vehicle_not_tracked = 'Kon voertuig niet volgen',
        no_spawn = 'Gebied te druk'
    },
    success = {
        vehicle_parked = 'Voertuig opgeslagen',
        vehicle_tracked = 'Voertuig gevolgd',
    },
    status = {
        out = 'Uit',
        garaged = 'In de garage',
        impound = 'In beslag genomen door de politie',
        house = 'Huis',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Boothuis',
        air_e = 'E - Hangar',
        rig_e = 'E - Rig Lot',
        depot_e = 'E - Depot',
        house_garage = 'E - Huis garage',
    }
}

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end