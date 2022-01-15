local Translations = {
    error = {
        not_enough = "Ei tarpeaksi rahaa",
        not_impound = "Your car is not in impound",
        not_owned = "Ajoneuvoa ei omisteta",
        no_vehicles = "Sinulla ei ole ajoneuvoja tässä tallissa!",
        no_vehicles_impounded = "Sinulla ei ole ajoneuvoja varikolla!",
        vehicle_at_depot = "Sinun ajoneuvosi on ehkä varikolla!",
        impounded_by_police = "Tämä ajoneuvo on takavarikoitu poliisien toimesta!",
        someone_inside = "Ajoneuvoa ei voida tallettaa talliin sillä joku istuu siellä.",
    },
    success = {
        vehicle_parked = "Ajoneuvo parkkeerattu",
    },
    info = {
        public_garage = "Julkinen autotalli",
        gang_garage = "Jengien autotalli",
        job_garage = "Työtalli",
        house_garage = "Talon autotalli",
        impound = "Varikko",
        my_vehicles = "Ajoneuvoni",
        view_stored = "Katso sinun ajoneuvosi!",
        leave_garage = "⬅ Lähde tallista",
        leave_depot = "⬅ Lähde varikolta",
        garage = "Autotalli: %{value}",
        depot = "Varikko: %{value}",
        out = "Ulkona",
        garaged = "Tallissa",
        impounded = "Takavarikoitu poliisien toimesta",
        garage_line = "Alue: %{value}<br>Fuel: %{value2} | Moottori: %{value3} | Runko: %{value4}",
        depot_line = "Rekkari: %{value}<br>Bebsa: %{value2} | Moottori: %{value3} | Runko: %{value4}",
        garage_e = "~g~E~w~ - Autotalli",
        park_e = "~g~E~w~ - Parkkeeraa ajoneuvo",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
