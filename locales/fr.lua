local Translations = {
    error = {
        no_vehicles = 'Il n\'y a pas de véhicules à cet endroit !',
        not_depot = 'Votre véhicule n\'est pas au dépôt',
        not_owned = 'Ce véhicule ne peut pas être stocké',
        not_correct_type = 'Vous ne pouvez pas stocker ce type de véhicule ici',
        not_enough = 'Pas assez d\'argent',
        no_garage = 'Aucun',
        vehicle_occupied = 'Vous ne pouvez pas stocker ce véhicule car il n\'est pas vide',
        vehicle_not_tracked = 'Impossible de suivre le véhicule',
        no_spawn = 'Zone trop encombrée'
    },
    success = {
        vehicle_parked = 'Véhicule stocké',
        vehicle_tracked = 'Véhicule suivi',
    },
    status = {
        out = 'Dehors',
        garaged = 'Dans le garage',
        impound = 'Saisi par la police',
        house = 'Maison',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Hangar à bateaux',
        air_e = 'E - Hangar',
        rig_e = 'E - Emplacement de la plateforme de forage',
        depot_e = 'E - Dépôt',
        house_garage = 'E - Garage de maison',
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end