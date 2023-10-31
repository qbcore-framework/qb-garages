local Translations = {
    error = {
        no_vehicles = 'Es gibt keine Fahrzeuge an diesem Ort!',
        not_depot = 'Ihr Fahrzeug befindet sich nicht im Depot',
        not_owned = 'Dieses Fahrzeug kann nicht eingelagert werden',
        not_correct_type = 'Sie können diesen Fahrzeugtyp hier nicht abstellen',
        not_enough = 'Nicht genug Geld',
        no_garage = 'Keine',
        vehicle_occupied = 'Sie können dieses Fahrzeug nicht einlagern, da es nicht leer ist',
        vehicle_not_tracked = 'Fahrzeug konnte nicht verfolgt werden',
        no_spawn = 'Bereich zu überfüllt'
    },
    success = {
        vehicle_parked = 'Fahrzeug eingelagert',
        vehicle_tracked = 'Fahrzeug verfolgt',
    },
    status = {
        out = 'Draußen',
        garaged = 'In der Garage',
        impound = 'Von der Polizei beschlagnahmt',
        house = 'Haus',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Bootshaus',
        air_e = 'E - Hangar',
        rig_e = 'E - Rig Parkplatz',
        depot_e = 'E - Depot',
        house_garage = 'E - Hausgarage',
    }
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end