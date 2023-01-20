local Translations = {
    error = {
        no_vehicles = "Sinulla ei ole ajoneuvoja tässä tallissa!",
        not_impound = "Autosi ei ole varikolla",
        not_owned = "Tätä ajoneuvoa ei voi säilyttää",
        not_correct_type = "Et voi säilyttää tämän tyyppistä ajoneuvoa täällä",
        not_enough = "Ei tarpeeksi rahaa",
        no_garage = "Ei mitään",
        vehicle_occupied = "Et voi säilyttää tätä ajoneuvoa, koska se ei ole tyhjä",
    },
    success = {
        vehicle_parked = "Ajoneuvo varastoitu",
    },
    menu = {
        header = {
            house_car = "House Garage %{value}",
            public_car = "Julkinen Autotalli %{value}",
            public_sea = "Julkinen venevaja %{value}",
            public_air = "julkinen Hangaari %{value}",
            public_rig = "Julkinen Rig Lot %{value}",
            job_car = "Työ Autotalli %{value}",
            job_sea = "Työ Venevaja %{value}",
            job_air = "Työ Hangaari %{value}",
            job_rig = "Rig Lot %{value}",
            gang_car = "Jengi Talli %{value}",
            gang_sea = "Jengi Venevaja %{value}",
            gang_air = "Jengi Hangaari %{value}",
            gang_rig = "Jengi Rig Lot %{value}",
            depot_car = "varikko %{value}",
            depot_sea = "varikko %{value}",
            depot_air = "varikko %{value}",
            depot_rig = "varikko %{value}",
            vehicles = "Käytettävissä olevat ajoneuvot",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
        },
        leave = {
            car = "⬅ Poistu tallista",
            sea = "⬅ Poistu Venevajasta",
            air = "⬅ Poistu Hangaarista",
            rig = "⬅ Poistu",
        },
        text = {
            vehicles = "Katso varastoituja ajoneuvoja!",
            depot = "Kilpi: %{value}<br>Bensa: %{value2} | Moottori: %{value3} | Kori: %{value4}",
            garage = "State: %{value}<br>Bensa: %{value2} | Moottori: %{value3} | Kori: %{value4}",
        }
    },
    status = {
        out = "Ulos",
        garaged = "Autotalli",
        impound = "Poliisin takavarikoitu",
    },
    info = {
        car_e = "E - Autoalli",
        sea_e = "E - Venetalli",
        air_e = "E - Hangar",
        rig_e = "E - Rig Lot",
        park_e = "E - Varastoi Ajoneuvo",
        house_garage = "Talon autotalli",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
