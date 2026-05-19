local Translations = {
    error = {
        no_vehicles = 'Non ci sono veicoli in questa posizione!',
        not_depot = 'Il tuo veicolo non è in deposito',
        not_owned = 'Questo veicolo non può essere depositato',
        not_correct_type = 'Non puoi depositare questo tipo di veicolo qui',
        not_enough = 'Soldi insufficienti',
        no_garage = 'Nessuno',
        vehicle_occupied = 'Non puoi depositare questo veicolo perché non è vuoto',
        vehicle_not_tracked = 'Impossibile tracciare il veicolo',
        no_spawn = 'Area troppo affollata'
    },
    success = {
        vehicle_parked = 'Veicolo depositato',
        vehicle_tracked = 'Veicolo tracciato',
    },
    status = {
        out = 'Fuori',
        garaged = 'In garage',
        impound = 'Sequestrato dalla polizia',
        house = 'Casa',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Rimessaggio barche',
        air_e = 'E - Hangar',
        rig_e = 'E - Piazzale',
        depot_e = 'E - Deposito',
        house_garage = 'E - Garage di casa',
    }
}

if GetConvar('qb_locale', 'en') == 'it' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end