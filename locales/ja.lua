local Translations = {
    error = {
        no_vehicles = "この場所には車両がありません。",
        not_impound = "あなたの車両は押収車両保管庫にはありません。",
        not_owned = "車両を格納できませんでした。",
        not_correct_type = "このタイプの車両はここには格納できません。",
        not_enough = "お金が足りません。",
        no_garage = "無し",
        vehicle_occupied = "空ではない車両を格納することはできません。",
    },
    success = {
        vehicle_parked = "車両を格納しました。",
    },
    menu = {
        header = {
            house_car = "家のガレージ %{value}",
            public_car = "コインパーキング %{value}",
            public_sea = "ボートハウス %{value}",
            public_air = "公共格納庫 %{value}",
            public_rig = "リグロット %{value}",
            job_car = "仕事用ガレージ %{value}",
            job_sea = "仕事用ガレージ %{value}",
            job_air = "市五島ガレージ %{value}",
            job_rig = "リグロット %{value}",
            gang_car = "ギャング用ガレージ %{value}",
            gang_sea = "ギャング用ガレージ %{value}",
            gang_air = "ギャング用ガレージ %{value}",
            gang_rig = "ギャング用ガレージ %{value}",
            depot_car = "格納 %{value}",
            depot_sea = "格納 %{value}",
            depot_air = "格納 %{value}",
            depot_rig = "格納 %{value}",
            vehicles = "格納中の車両",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
            unavailable_vehicle_model = "%{vehicle} | 利用不可",
        },
        leave = {
            car = "ガレージを離れる",
            sea = "ボートハウスを離れる",
            air = "格納庫を離れる",
            rig = "リグロットを離れる",
        },
        text = {
            vehicles = "格納してある車両を確認します!",
            depot = "ナンバープレート: %{value}<br>ガソリン残量: %{value2} | エンジン稼働率: %{value3} | 車体: %{value4}",
            garage = "状態: %{value}<br>ガソリン残量: %{value2} | エンジン稼働率: %{value3} | 車体: %{value4}",
        }
    },
    status = {
        out = "出庫中",
        garaged = "格納中",
        impound = "警察により押収中",
    },
    info = {
        car_e = "E - ガレージ",
        sea_e = "E - ボートハウス",
        air_e = "E - 格納庫",
        rig_e = "E - リグロット",
        park_e = "E - 車両を格納",
        house_garage = "家のガレージ",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
