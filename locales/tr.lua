local Translations = {
    error = {
        no_vehicles = 'Bu konumda araç yok!',
        not_depot = 'Araç depoda değil',
        not_owned = 'Bu araç depolanamaz',
        not_correct_type = 'Bu tür bir aracı buraya depolayamazsınız',
        not_enough = 'Yeterli para yok',
        no_garage = 'Hiç yok',
        vehicle_occupied = 'Bu aracı boş olmadığı için depolayamazsınız',
        vehicle_not_tracked = 'Araç izlenemedi',
        no_spawn = 'Bölge çok kalabalık'
    },
    success = {
        vehicle_parked = 'Araç depolandı',
        vehicle_tracked = 'Araç izlendi',
    },
    status = {
        out = 'Dışarıda',
        garaged = 'Garajda',
        impound = 'Polis tarafından alıkonuldu',
        house = 'Ev',
    },
    info = {
        car_e = 'E - Garaj',
        sea_e = 'E - Tekne garajı',
        air_e = 'E - Hangar',
        rig_e = 'E - Sondaj platformu yeri',
        depot_e = 'E - Depo',
        house_garage = 'E - Ev garajı',
    }
}

if GetConvar('qb_locale', 'en') == 'tr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end