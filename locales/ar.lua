local Translations = {
    error = {
        no_vehicles = 'لا يوجد مركبات في هذا المكان!',
        not_depot = 'مركبتك ليست في المستودع',
        not_owned = 'لا يمكن تخزين هذه المركبة',
        not_correct_type = 'لا يمكنك تخزين هذا النوع من المركبات هنا',
        not_enough = 'لا يوجد مال كافي',
        no_garage = 'لا شيء',
        vehicle_occupied = 'لا يمكنك تخزين هذه المركبة لأنها ليست فارغة',
        vehicle_not_tracked = 'تعذر تعقب المركبة',
        no_spawn = 'المنطقة مزدحمة جدًا'
    },
    success = {
        vehicle_parked = 'تم تخزين المركبة',
        vehicle_tracked = 'تم تعقب المركبة',
    },
    status = {
        out = 'خارج',
        garaged = 'تم التخزين',
        impound = 'مصادرة من قبل الشرطة',
        house = 'منزل',
    },
    info = {
        car_e = 'E - المرآب',
        sea_e = 'E - مرفأ القوارب',
        air_e = 'E - الجناح',
        rig_e = 'E - موقف الحفر',
        depot_e = 'E - المستودع',
        house_garage = 'E - مرآب المنزل',
    }
}

if GetConvar('qb_locale', 'en') == 'ar' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end