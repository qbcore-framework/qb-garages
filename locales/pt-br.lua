local Translations = {
    error = {
        no_vehicles = "Não há veículos neste local!",
        not_impound = "Seu veículo não está no depósito",
        not_owned = "Você não pode armazenar este veículo",
        not_correct_type = "Você não pode armazenar este tipo de veículo aqui",
        not_enough = "Dinheiro insuficiente",
        no_garage = "Nenhum",
        vehicle_occupied = "Você não pode armazenar este veículo, pois ele não está vazio",
    },
    success = {
        vehicle_parked = "Veículo armazenado",
    },
    menu = {
        header = {
            house_car = "Garagem da Casa %{value}",
            public_car = "Garagem Pública %{value}",
            public_sea = "Hangar de Barcos Público %{value}",
            public_air = "Hangar Público %{value}",
            public_rig = "Estacionamento Público de Plataforma de Perfuração %{value}",
            job_car = "Garagem de Trabalho %{value}",
            job_sea = "Hangar de Barcos de Trabalho %{value}",
            job_air = "Hangar de Trabalho %{value}",
            job_rig = "Estacionamento de Plataforma de Perfuração de Trabalho %{value}",
            gang_car = "Garagem da Gangue %{value}",
            gang_sea = "Hangar de Barcos da Gangue %{value}",
            gang_air = "Hangar da Gangue %{value}",
            gang_rig = "Estacionamento de Plataforma de Perfuração da Gangue %{value}",
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
            sea = "⬅ Sair do Hangar de Barcos",
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
        garaged = "Na Garagem",
        impound = "Apreendido pela Polícia",
    },
    info = {
        car_e = "E - Garagem",
        sea_e = "E - Hangar de Barcos",
        air_e = "E - Hangar",
        rig_e = "E - Estacionamento de Plataforma de Perfuração",
        park_e = "E - Armazenar Veículo",
        house_garage = "Garagem da Casa",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
