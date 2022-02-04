local Translations = {
    error = {
        not_impound = "Your car is not in impound",
        not_owned = "Vehicle not owned",
        no_vehicles = "You don't have any vehicles in this garage!",
        no_vehicles_impounded = "You don't have any impounded vehicles!",
        vehicle_at_depot = "Your vehicle may be at the depot!",
        vehicle_at_same_garage = "The vehicle is already in this garage!",
        impounded_by_police = "This vehicle was impounded by the police!",
        someone_inside = "Vehicle not stored, please check if is someone inside the car.",
        vehicle_not_transfered = "Vehicle not Transferred",
        no_vehicle_this_garage = "The vehicle is not in this garage!",
        not_enough_money = "You don\'t have enough money!",
    },
    success = {
        vehicle_parked = "Vehicle Parked",
        vehicle_transfered = "Vehicle Transferred",
    },
    info = {
        public_garage = "Public Garage",
        gang_garage = "Gang Garage",
        job_garage = "Job Garage",
        house_garage = "House Garage",
        impound = "Impound",
        my_vehicles = "My Vehicles",
        view_stored = "View your stored vehicles!",
        leave_garage = "⬅ Leave Garage",
        leave_depot = "⬅ Leave Depot",
        garage = "Garage: %{value}",
        depot = "Depot: %{value}",
        out = "Out",
        garaged = "Garaged",
        impounded = "Impounded By Police",
        garage_line = "State: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
        depot_line = "Plate: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
        garage_e = "~g~E~w~ - Garage",
        park_e = "~g~E~w~ - Park Vehicle",
    },
    menu = {
        spawn = "Spawn",
        transfer =  "Transfer ($1250)",
        goBack = "< Go Back",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
