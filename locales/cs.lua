local Translations = {
    error = {
        not_enough = "Nemáš dostatek peněz",
        not_impound = "Vaše auto není zabavené",
        not_owned = "Vozidlo nikdo nevlastní",
        no_vehicles = "V této garáži nemáte žádné vozidla!",
        no_vehicles_impounded = "Nemáte žádné zabavené vozidla!",
        vehicle_at_depot = "Vaše vozidlo může být v depu!",
        impounded_by_police = "Toto vozidlo zabavila policie!",
        someone_inside = "Zkontrolujte, zda není někdo ve vozidle.",
    },
    success = {
        vehicle_parked = "Vozidlo je zaparkované",
    },
    info = {
        public_garage = "Veřejná Garáž",
        gang_garage = "Gang Garáž",
        job_garage = "Pracovní Garáž",
        house_garage = "Osobní Garáž",
        impound = "Odtahovka",
        my_vehicles = "Moje vozidla",
        view_stored = "Podívat se na svoje vozidla!",
        leave_garage = "⬅ Opustit Garáž",
        leave_depot = "⬅ Opustit depo",
        garage = "Garáž: %{value}",
        depot = "Depo: %{value}",
        out = "Ven",
        garaged = "Garážované",
        impounded = "Zabavené policií",
        garage_line = "State: %{value}<br>Palivo: %{value2} | Motor: %{value3} | Body: %{value4}",
        depot_line = "SPZ: %{value}<br>Palivo: %{value2} | Motor: %{value3} | Body: %{value4}",
        garage_e = "~g~E~w~ - Garáž",
        park_e = "~g~E~w~ - Zaparkovat Vozidlo",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
