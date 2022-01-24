local Translations = {
    error = {
        not_enough = "Nicht genug Geld!",
        not_impound = "Dein Fahrzeug wurde nicht abgeschleppt.",
        not_owned = "Dies ist nicht dein Fahrzeug!",
        no_vehicles = "Du hast keine Fahrzeuge in dieser Garage!",
        no_vehicles_impounded = "Du hast keine abgeschleppten Fahrzeuge!",
        vehicle_at_depot = "Dein Fahrzeug steht wahrscheinlich im Depot!",
        impounded_by_police = "Dieses Fahrzeug wurde durch das PD abgeschleppt!",
        someone_inside = "Zum Einparken müssen alle aus dem Fahrzeug aussteigen!",
    },
    success = {
        vehicle_parked = "Fahrzeug wurde eingeparkt!",
    },
    info = {
        public_garage = "Öffentliche Garage",
        gang_garage = "Gang Garage",
        job_garage = "Job Garage",
        house_garage = "Haus Garage",
        impound = "Abschlepphof",
        my_vehicles = "Meine Fahrzeuge",
        view_stored = "Sieh deine eingeparkten Fahrzeuge",
        leave_garage = "⬅ Garage verlassen",
        leave_depot = "⬅ Depot verlassen",
        garage = "Garage: %{value}",
        depot = "Depot: %{value}",
        out = "Ausgeparkt",
        garaged = "In der Garage",
        impounded = "Abgeschleppt durch Polizei",
        garage_line = "Ort: %{value}<br>Benzin: %{value2} | Motor: %{value3} | Zustand: %{value4}",
        depot_line = "Kennzeichen: %{value}<br>Benzin: %{value2} | Motor: %{value3} | Zustand: %{value4}",
        garage_e = "~g~E~w~ - Garage",
        park_e = "~g~E~w~ - Fahrzeug einparken",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
