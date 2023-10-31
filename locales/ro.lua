local Translations = {
    error = {
        no_vehicles = 'Nu există vehicule în această locație!',
        not_depot = 'Vehiculul dvs. nu este în depozit',
        not_owned = 'Acest vehicul nu poate fi stocat',
        not_correct_type = 'Nu puteți stoca acest tip de vehicul aici',
        not_enough = 'Nu aveți suficientă bani',
        no_garage = 'Niciunul',
        vehicle_occupied = 'Nu puteți stoca acest vehicul deoarece nu este gol',
        vehicle_not_tracked = 'Nu s-a putut urmări vehiculul',
        no_spawn = 'Zona este prea aglomerată'
    },
    success = {
        vehicle_parked = 'Vehiculul a fost depozitat',
        vehicle_tracked = 'Vehiculul a fost urmărit',
    },
    status = {
        out = 'Ieșit',
        garaged = 'În garaj',
        impound = 'Confiscat de poliție',
        house = 'Casa',
    },
    info = {
        car_e = 'E - Garaj',
        sea_e = 'E - Hangar pentru bărci',
        air_e = 'E - Hangar',
        rig_e = 'E - Locul platformei de foraj',
        depot_e = 'E - Depozit',
        house_garage = 'E - Garaj de casă',
    }
}

if GetConvar('qb_locale', 'en') == 'ro' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end