local Translations = {
    error = {
        no_vehicles = 'There are no vehicles in this location!',
        not_depot = 'Your vehicle is not in depot',
        not_owned = 'This vehicle can\'t be stored',
        not_correct_type = 'You can\'t store this type of vehicle here',
        not_enough = 'Not enough money',
        no_garage = 'None',
        vehicle_occupied = 'You can\'t store this vehicle as it is not empty',
        vehicle_not_tracked = 'Could not track vehicle',
        no_spawn = 'Area too crowded'
    },
    success = {
        vehicle_parked = 'Vehicle Stored',
        vehicle_tracked = 'Vehicle Tracked',
    },
    status = {
        out = 'Out',
        garaged = 'Garaged',
        impound = 'Impounded By Police',
        house = 'House',
    },
    info = {
        car_e = 'E - Garage',
        sea_e = 'E - Boathouse',
        air_e = 'E - Hangar',
        rig_e = 'E - Rig Lot',
        depot_e = 'E - Depot',
        house_garage = 'E - House Garage',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})