local Translations = {
    error = {
        no_vehicles = "Não há veículos neste local!",
        not_impound = "Seu veículo não está no depósito",
        not_owned = "Este veículo não pode ser armazenado",
        not_correct_type = "Você não pode armazenar este tipo de veículo aqui",
        not_enough = "Dinheiro insuficiente",
        no_garage = "Nenhum",
        vehicle_occupied = "Você não pode armazenar este veículo, pois não está vazio",
    },
    success = {
        vehicle_parked = "Veículo armazenado",
    },
    menu = {
        header = {
            house_car = "Garagem da Casa %{value}",
            public_car = "Garagem Pública %{value}",
            public_sea = "Marina Pública %{value}",
            public_air = "Hangar Público %{value}",
            public_rig = "Estacionamento Público %{value}",
            job_car = "Garagem do Trabalho %{value}",
            job_sea = "Marina do Trabalho %{value}",
            job_air = "Hangar do Trabalho %{value}",
            job_rig = "Estacionamento do Trabalho %{value}",
            gang_car = "Garagem da Gangue %{value}",
            gang_sea = "Marina da Gangue %{value}",
            gang_air = "Hangar da Gangue %{value}",
            gang_rig = "Estacionamento da Gangue %{value}",
            depot_car = "Depósito %{value}",
            depot_sea = "Depósito %{value}",
            depot_air = "Depósito %{value}",
            depot_rig = "Depósito %{value}",
            vehicles = "Veículos Disponíveis",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
            unavailable_vehicle_model = "%{vehicle} | Veículo Indisponível",
        },
        leave = {
            car = "⬅ Sair da Garagem",
            sea = "⬅ Sair da Marina",
            air = "⬅ Sair do Hangar",
            rig = "⬅ Sair do Estacionamento",
        },
        text = {
            vehicles = "Ver veículos armazenados!",
            depot = "Placa: %{value}<br>Combustível: %{value2} | Motor: %{value3} | Carroceria: %{value4}",
            garage = "Estado: %{value}<br>Combustível: %{value2} | Motor: %{value3} | Carroceria: %{value4}",
        }
    },
    status = {
        out = "Fora",
        garaged = "Garado",
        impound = "Apreendido pela Polícia",
    },
    info = {
        car_e = "E - Garagem",
        sea_e = "E - Marina",
        air_e = "E - Hangar",
        rig_e = "E - Estacionamento",
        park_e = "E - Armazenar Veículo",
        house_garage = "Garagem da Casa",
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end