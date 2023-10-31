local Translations = {
    error = {
        no_vehicles = 'Tässä sijainnissa ei ole ajoneuvoja!',
        not_depot = 'Ajoneuvosi ei ole varikolla',
        not_owned = 'Tätä ajoneuvoa ei voi säilyttää',
        not_correct_type = 'Tätä ajoneuvotyyppiä ei voi säilyttää täällä',
        not_enough = 'Ei tarpeeksi rahaa',
        no_garage = 'Ei yhtään',
        vehicle_occupied = 'Et voi säilyttää tätä ajoneuvoa, koska se ei ole tyhjä',
        vehicle_not_tracked = 'Ajoneuvoa ei voitu jäljittää',
        no_spawn = 'Alue on liian täynnä'
    },
    success = {
        vehicle_parked = 'Ajoneuvo tallennettu',
        vehicle_tracked = 'Ajoneuvo jäljitetty',
    },
    status = {
        out = 'Ulkona',
        garaged = 'Tallissa',
        impound = 'Poliisin takavarikoima',
        house = 'Talo',
    },
    info = {
        car_e = 'E - Autotalli',
        sea_e = 'E - Venevaja',
        air_e = 'E - Lentokonehalli',
        rig_e = 'E - Porapaikka',
        depot_e = 'E - Varikko',
        house_garage = 'E - Talon autotalli',
    }
}

if GetConvar('qb_locale', 'en') == 'fi' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end