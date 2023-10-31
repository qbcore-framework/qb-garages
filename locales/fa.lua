local Translations = {
    error = {
        no_vehicles = 'ترددی در این مکان وجود ندارد!',
        not_depot = 'وسیلهٔ شما در دیپو نیست',
        not_owned = 'نمی‌توانید این وسیله را ذخیره کنید',
        not_correct_type = 'نمی‌توانید این نوع وسیله را در اینجا ذخیره کنید',
        not_enough = 'موجودی کافی نیست',
        no_garage = 'ندارد',
        vehicle_occupied = 'نمی‌توانید این وسیله را ذخیره کنید چون پر است',
        vehicle_not_tracked = 'وسیله را نمی‌توان پیگیری کرد',
        no_spawn = 'محل بسیار شلوغ است'
    },
    success = {
        vehicle_parked = 'وسیله ذخیره شد',
        vehicle_tracked = 'وسیله پیگیری شد',
    },
    status = {
        out = 'خارج',
        garaged = 'در گاراژ',
        impound = 'توسط پلیس ضبط شده',
        house = 'خانه',
    },
    info = {
        car_e = 'E - گاراژ',
        sea_e = 'E - کشتی‌گیری',
        air_e = 'E - هانگار',
        rig_e = 'E - محل پارک پلتفرم حفاری',
        depot_e = 'E - دیپو',
        house_garage = 'E - گاراژ خانه',
    }
}

if GetConvar('qb_locale', 'en') == 'fa' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end