local Translations = {
    error = {
        no_vehicles = 'Não existem veículos nesta localização!',
        not_depot = 'O seu veículo não está no depósito',
        not_owned = 'Este veículo não pode ser armazenado',
        not_correct_type = 'Não pode armazenar este tipo de veículo aqui',
        not_enough = 'Dinheiro insuficiente',
        no_garage = 'Nenhum',
        vehicle_occupied = 'Não pode armazenar este veículo, pois não está vazio',
        vehicle_not_tracked = 'Não foi possível localizar o veículo',
        no_spawn = 'Área demasiado congestionada'
    },
    success = {
        vehicle_parked = 'Veículo armazenado',
        vehicle_tracked = 'Veículo localizado',
    },
    status = {
        out = 'Fora',
        garaged = 'Na garagem',
        impound = 'Apreendido pela polícia',
        house = 'Casa',
    },
    info = {
        car_e = 'E - Garagem',
        sea_e = 'E - Garagem para barcos',
        air_e = 'E - Hangar',
        rig_e = 'E - Local de plataforma',
        depot_e = 'E - Depósito',
        house_garage = 'E - Garagem da casa',
    }
}

if GetConvar('qb_locale', 'en') == 'pt' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end