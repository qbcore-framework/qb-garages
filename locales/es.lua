local Translations = {
    error = {
        not_enough = "No tienes dinero.",
        not_impound = "Tu carro no esta confiscado.",
        not_owned = "Tu no eres el dueño del auto.",
        no_vehicles = "¡No tienes ningún vehículo en este garaje!",
        no_vehicles_impounded = "¡No tienes ningún vehículo confiscado!",
        vehicle_at_depot = "Tu auto esta en el almacen de autos!",
        impounded_by_police = "Este carro fue confiscado por la policía.",
        someone_inside = "Carro no se guardo. Compruebe si hay alguien dentro del auto.",
    },
    success = {
        vehicle_parked = "Carro estacionado!",
    },
    info = {
        public_garage = "Garaje Publico",
        gang_garage = "Garaje de Pandilla",
        job_garage = "Garaje del Trabajo",
        house_garage = "Garaje de Casa",
        impound = "Confiscado",
        my_vehicles = "Mis Carros",
        view_stored = "Ver tus carros en el garaje",
        leave_garage = "⬅ Salir del Garaje",
        leave_depot = "⬅ Salir del Almacenamiento",
        garage = "Garaje: %{value}",
        depot = "Almacenamiento: %{value}",
        out = "Afuera",
        garaged = "Garaje",
        impounded = "Confiscado por la policía.",
        garage_line = "Estado: %{value}<br>Gasolina: %{value2} | Motor: %{value3} | Cuerpo: %{value4}",
        depot_line = "Placa: %{value}<br>Gasolina: %{value2} | Motor: %{value3} | Cuerpo: %{value4}",
        garage_e = "~g~E~w~ - Garaje",
        park_e = "~g~E~w~ - Estacionar Carro",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
