local Translations = {
    error = {
        no_vehicles = 'Não há veículos neste local!',
        not_depot = 'Seu veículo não está no depósito',
        not_owned = 'Este veículo não pode ser armazenado',
        not_correct_type = 'Você não pode armazenar este tipo de veículo aqui',
        not_enough = 'Dinheiro insuficiente',
        no_garage = 'Nenhum',
        vehicle_occupied = 'Você não pode armazenar este veículo, pois ele não está vazio',
        vehicle_not_tracked = 'Não foi possível rastrear o veículo',
        no_spawn = 'Área muito lotada'
    },
    success = {
        vehicle_parked = 'Veículo armazenado',
        vehicle_tracked = 'Veículo rastreado',
    },
    status = {
        out = 'Fora',
        garaged = 'Na garagem',
        impound = 'Apreendido pela polícia',
        house = 'Casa',
    },
    info = {
        car_e = 'E - Garagem',
        sea_e = 'E - Hangar de barco',
        air_e = 'E - Hangar',
        rig_e = 'E - Local de plataforma de perfuração',
        depot_e = 'E - Depósito',
        house_garage = 'E - Garagem de casa',
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end