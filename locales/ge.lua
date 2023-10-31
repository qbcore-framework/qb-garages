local Translations = {
    error = {
        no_vehicles = 'ამ ადგილზე არ გააქვს წარმოებული ტრანსპორტი!',
        not_depot = 'თქვენი ტრანსპორტი არ არის დეპოში',
        not_owned = 'ამ ტრანსპორტს ვერ შეინახავთ',
        not_correct_type = 'ამ ტიპის ტრანსპორტი აქ არ შეიძლება შეინახოთ',
        not_enough = 'არ არის საკმარისი თანხა',
        no_garage = 'არ არის',
        vehicle_occupied = 'ამ ტრანსპორტს შეუძლებელია შეინახოთ, რადგან ის ცარიელი არ არის',
        vehicle_not_tracked = 'ტრანსპორტი ვერ იყო თვალის წინ',
        no_spawn = 'არეული ზონაში ძალა არ არის'
    },
    success = {
        vehicle_parked = 'ტრანსპორტი შენახულია',
        vehicle_tracked = 'ტრანსპორტი თვალის წინ',
    },
    status = {
        out = 'გარეთ',
        garaged = 'გარეჯი',
        impound = 'დაკონფისკირებული პოლიციის მიერ',
        house = 'სახლი',
    },
    info = {
        car_e = 'E - გარეჟი',
        sea_e = 'E - საზღვაო ბუნები',
        air_e = 'E - ჰანგარი',
        rig_e = 'E - ფლევარის პარკინგი',
        depot_e = 'E - დეპო',
        house_garage = 'E - სახლის გარეჟი',
    }
}

if GetConvar('qb_locale', 'en') == 'ge' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end