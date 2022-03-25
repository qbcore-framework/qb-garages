local Translations = {
    error = {
        no_vehicles = "Nincsen jármüved ebben a garázsban!",
        not_impound = "A jármüved nincs lefoglalva",
        not_owned = "Ez a jármü más tulajdona",
        not_correct_type = "Ez a típust nem parkolhatod ide.",
        not_enough = "Nincs elég pénzed",
        no_garage = "None",
        not_enough_space = "Valami útban van!"
    },
    success = {
        vehicle_parked = "Jármü leparkolva",
    },
    menu = {
        header = {
            house_car = "%{value} ház garázs",
            public_car = "%{value} garázs",
            public_sea = "%{value} csónakház",
            public_air = "%{value} hangár",
            job_car = "%{value} céges garázs",
            job_sea = "%{value} céges csónakház",
            job_air = "%{value} céges hangár",
            gang_car = "%{value} banda garázs",
            gang_sea = "%{value} banda csónakház",
            gang_air = "%{value} banda hangár",
            depot_car = "%{value}",
            depot_sea = "%{value}",
            depot_air = "%{value}",
            vehicles = "Elérhető jármüvek",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
        },
        leave = {
            car = "⬅ Garázs menü bezárása",
            sea = "⬅ Csónakház menü bezárása",
            air = "⬅ Hangár menü bezárása",
        },
        text = {
            vehicles = "Élérhető jármüvek megtekintése!",
            depot = "Rendszám: %{value}<br>Üzemanyag: %{value2} | Motor: %{value3} | Karosszéria: %{value4}",
            garage = "Állapot: %{value}<br>Üzemanyag: %{value2} | Motor: %{value3} | Karosszéria: %{value4}",
        }
    },
    status = {
        out = "Nincs parkolva",
        garaged = "Parkolva",
        impound = "Lefoglalva rendőrég állattal",
    },
    info = {
        car_e = "~g~E~w~ - Garázs",
        sea_e = "~g~E~w~ - Csónakház",
        air_e = "~g~E~w~ - Hangár",
        park_e = "~g~E~w~ - Jármü parkolása",
        house_garage = "Ház garázs",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
