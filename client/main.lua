local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local PlayerGang = {}
local PlayerJob = {}
local currentHouseGarage = nil
local OutsideVehicles = {}

-- Create peds for garage locations

Citizen.CreateThread(function()
    for _,v in pairs(Garages) do
      RequestModel(GetHashKey("ig_trafficwarden"))
      while not HasModelLoaded(GetHashKey("ig_trafficwarden")) do
        Wait(1)
      end
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, 0x5719786D,v.takeVehicle.x,v.takeVehicle.y,(v.takeVehicle.z - 1.0), 3374176, false, true)
      SetEntityHeading(ped, v[4])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end) 

--Menus
local function MenuGarage(type, garage, indexgarage)
    local header
    local leave
    if type == "house" then
        header = Lang:t("menu.header."..type.."_car", {value = garage.label})
        leave = Lang:t("menu.leave.car")
    else 
        header = Lang:t("menu.header."..type.."_"..garage.vehicle, {value = garage.label})
        leave = Lang:t("menu.leave."..garage.vehicle)
    end

    exports['qb-menu']:openMenu({
        {
            header = header,
            isMenuHeader = true
        },
        {
            header = Lang:t("menu.header.vehicles"),
            txt = Lang:t("menu.text.vehicles"),
            params = {
                event = "qb-garages:client:VehicleList",
                args = {
                    type = type,
                    garage = garage,
                    index = indexgarage,
                }
            }
        },
        {
            header = leave,
            txt = "",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
    })
end
local function ClearMenu()
	TriggerEvent("qb-menu:closeMenu")
end
local function closeMenuFull()
    ClearMenu()
end
local function doCarDamage(currentVehicle, veh)
	local engine = veh.engine + 0.0
	local body = veh.body + 0.0

    Wait(100)
    if body < 900.0 then
		SmashVehicleWindow(currentVehicle, 0)
		SmashVehicleWindow(currentVehicle, 1)
		SmashVehicleWindow(currentVehicle, 2)
		SmashVehicleWindow(currentVehicle, 3)
		SmashVehicleWindow(currentVehicle, 4)
		SmashVehicleWindow(currentVehicle, 5)
		SmashVehicleWindow(currentVehicle, 6)
		SmashVehicleWindow(currentVehicle, 7)
	end
	if body < 800.0 then
		SetVehicleDoorBroken(currentVehicle, 0, true)
		SetVehicleDoorBroken(currentVehicle, 1, true)
		SetVehicleDoorBroken(currentVehicle, 2, true)
		SetVehicleDoorBroken(currentVehicle, 3, true)
		SetVehicleDoorBroken(currentVehicle, 4, true)
		SetVehicleDoorBroken(currentVehicle, 5, true)
		SetVehicleDoorBroken(currentVehicle, 6, true)
	end
	if engine < 700.0 then
		SetVehicleTyreBurst(currentVehicle, 1, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 2, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 3, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 4, false, 990.0)
	end
	if engine < 500.0 then
		SetVehicleTyreBurst(currentVehicle, 0, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 5, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 6, false, 990.0)
		SetVehicleTyreBurst(currentVehicle, 7, false, 990.0)
	end
    SetVehicleEngineHealth(currentVehicle, engine)
    SetVehicleBodyHealth(currentVehicle, body)

end

local function CheckPlayers(vehicle, garage)
    for i = -1, 5, 1 do
        local seat = GetPedInVehicleSeat(vehicle, i)
        if seat then
            TaskLeaveVehicle(seat, vehicle, 0)
            if garage then
                SetEntityCoords(seat, garage.takeVehicle.x, garage.takeVehicle.y, garage.takeVehicle.z)
            end
        end
    end
    SetVehicleDoorsLocked(vehicle)
    Wait(1500)
    QBCore.Functions.DeleteVehicle(vehicle)
end

local function round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

RegisterNetEvent("qb-garages:client:VehicleList", function(data)
    local type = data.type
    local garage = data.garage
    local indexgarage = data.index
    local header
    local leave
    if type == "house" then
        header = Lang:t("menu.header."..type.."_car", {value = garage.label})
        leave = Lang:t("menu.leave.car")
    else 
        header = Lang:t("menu.header."..type.."_"..garage.vehicle, {value = garage.label})
        leave = Lang:t("menu.leave."..garage.vehicle)
    end

    QBCore.Functions.TriggerCallback("qb-garage:server:GetGarageVehicles", function(result)
        if result == nil then
            QBCore.Functions.Notify(Lang:t("error.no_vehicles"), "error", 5000)
        else
            local MenuGarageOptions = {
                {
                    header = header,
                    isMenuHeader = true
                },
            }
            for k, v in pairs(result) do
                local enginePercent = round(v.engine / 10, 0)
                local bodyPercent = round(v.body / 10, 0)
                local currentFuel = v.fuel
                local vname = QBCore.Shared.Vehicles[v.vehicle].name

                if v.state == 0 then
                    v.state = Lang:t("status.out")
                elseif v.state == 1 then
                    v.state = Lang:t("status.garaged")
                elseif v.state == 2 then
                    v.state = Lang:t("status.impound")
                end
                if type == "depot" then
                    MenuGarageOptions[#MenuGarageOptions+1] = {
                        header = Lang:t('menu.header.depot', {value = vname, value2 = v.depotprice}),
                        txt = Lang:t('menu.text.depot', {value = v.plate, value2 = currentFuel, value3 = enginePercent, value4 = bodyPercent}),
                        params = {
                            event = "qb-garages:client:TakeOutDepot",
                            args = {
                                vehicle = v,
                                type = type,
                                garage = garage,
                                index = indexgarage,
                            }
                        }
                    }
                else
                    MenuGarageOptions[#MenuGarageOptions+1] = {
                        header = Lang:t('menu.header.garage', {value = vname, value2 = v.plate}),
                        txt = Lang:t('menu.text.garage', {value = v.state, value2 = currentFuel, value3 = enginePercent, value4 = bodyPercent}),
                        params = {
                            event = "qb-garages:client:takeOutGarage",
                            args = {
                                vehicle = v,
                                type = type,
                                garage = garage,
                                index = indexgarage,
                            }
                        }
                    }
                end
            end

            MenuGarageOptions[#MenuGarageOptions+1] = {
                header = leave,
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            }
            exports['qb-menu']:openMenu(MenuGarageOptions)
        end
    end, indexgarage, type, garage.vehicle)
end)

RegisterNetEvent('qb-garages:client:takeOutGarage', function(data)
    local type = data.type
    local vehicle = data.vehicle
    local garage = data.garage
    local spawn = false

    if type == "depot" then         --If depot, check if vehicle is not already spawned on the map
        local VehExists = DoesEntityExist(OutsideVehicles[vehicle.plate])        
        if not VehExists then
            spawn = true
        else
            QBCore.Functions.Notify(Lang:t("error.not_impound"), "error", 5000)
            spawn = false
        end
    else
        spawn = true
    end
    if spawn then
        local location
        local heading
        if type == "house" then
            location = garage.takeVehicle
            heading = garage.takeVehicle.h
        else
            location = garage.spawnPoint
            heading = garage.spawnPoint.w
        end
    
        QBCore.Functions.SpawnVehicle(vehicle.vehicle, function(veh)
            QBCore.Functions.TriggerCallback('qb-garage:server:GetVehicleProperties', function(properties)
    
                if vehicle.plate then
                    OutsideVehicles[vehicle.plate] = veh
                    TriggerServerEvent('qb-garages:server:UpdateOutsideVehicles', OutsideVehicles)
                end
    
                QBCore.Functions.SetVehicleProperties(veh, properties)
                SetVehicleNumberPlateText(veh, vehicle.plate)
                SetEntityHeading(veh, heading)
                exports['LegacyFuel']:SetFuel(veh, vehicle.fuel)
                doCarDamage(veh, vehicle)
                SetEntityAsMissionEntity(veh, true, true)
                TriggerServerEvent('qb-garage:server:updateVehicleState', 0, vehicle.plate, vehicle.garage)
                closeMenuFull()
                TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
                SetVehicleEngineOn(veh, true, true)
            end, vehicle.plate)
    
        end, location, true)
    end
end)

local function enterVehicle(veh, indexgarage, type, garage)
    local plate = QBCore.Functions.GetPlate(veh)
    QBCore.Functions.TriggerCallback('qb-garage:server:checkOwnership', function(owned)
        if owned then
            local bodyDamage = math.ceil(GetVehicleBodyHealth(veh))
            local engineDamage = math.ceil(GetVehicleEngineHealth(veh))
            local totalFuel = exports['LegacyFuel']:GetFuel(veh)
            TriggerServerEvent('qb-garage:server:updateVehicle', 1, totalFuel, engineDamage, bodyDamage, plate, indexgarage)
            CheckPlayers(veh, garage)
            if plate then
                OutsideVehicles[plate] = nil
                TriggerServerEvent('qb-garages:server:UpdateOutsideVehicles', OutsideVehicles)
            end
            QBCore.Functions.Notify(Lang:t("success.vehicle_parked"), "primary", 4500)
        else
            QBCore.Functions.Notify(Lang:t("error.not_owned"), "error", 3500)
        end
    end, plate, type, indexgarage, PlayerGang.name)
end

RegisterNetEvent('qb-garages:client:setHouseGarage', function(house, hasKey)
    currentHouseGarage = house
    hasGarageKey = hasKey
end)

RegisterNetEvent('qb-garages:client:houseGarageConfig', function(garageConfig)
    HouseGarages = garageConfig
end)

RegisterNetEvent('qb-garages:client:addHouseGarage', function(house, garageInfo)
    HouseGarages[house] = garageInfo
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    PlayerGang = PlayerData.gang
    PlayerJob = PlayerData.job
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(gang)
    PlayerGang = gang
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerJob = job
end)

CreateThread(function()
    for _, garage in pairs(Garages) do
        if garage.showBlip then
            local Garage = AddBlipForCoord(garage.takeVehicle.x, garage.takeVehicle.y, garage.takeVehicle.z)
            SetBlipSprite (Garage, garage.blipNumber)
            SetBlipDisplay(Garage, 4)
            SetBlipScale  (Garage, 0.60)
            SetBlipAsShortRange(Garage, true)
            SetBlipColour(Garage, 3)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(garage.blipName)
            EndTextCommandSetBlipName(Garage)
        end
    end
end)

RegisterNetEvent('qb-garages:client:TakeOutDepot', function(data)
    local vehicle = data.vehicle

    if vehicle.depotprice ~= 0 then
        TriggerServerEvent("qb-garage:server:PayDepotPrice", data)
    else
        TriggerEvent("qb-garages:client:takeOutGarage", data)
    end
end)

-- Create event for opening garage menu

RegisterNetEvent('qb-garages:client:menuGarage', function()
    local pos = GetEntityCoords(PlayerPedId())
    for index, garage in pairs(Garages) do
        local takeDist = #(pos - garage.takeVehicle)
        if takeDist <= 15 then
            MenuGarage(garage.type, garage, index)
            currentGarage = k
        end
    end
end)

-- Create event for storing a car
RegisterNetEvent('qb-garages:client:storeVehicle', function()
    local pos = GetEntityCoords(PlayerPedId())
    for index, garage in pairs(Garages) do
        local putDist = #(pos - garage.takeVehicle)
        if putDist <= 15 then
            local ped = PlayerPedId()
            local curVeh = GetVehiclePedIsIn(ped)
            local vehClass = GetVehicleClass(curVeh)
            --Check vehicle type for garage
            if garage.vehicle == "car" or not garage.vehicle then
                if vehClass ~= 14 and vehClass ~= 15 and vehClass ~= 16 then
                    enterVehicle(curVeh, index, garage.type)
                else
                    QBCore.Functions.Notify(Lang:t("error.not_correct_type"), "error", 3500)
                end
            elseif garage.vehicle == "air" then
                if vehClass == 15 or vehClass == 16 then
                    enterVehicle(curVeh, index, garage.type)
                else
                    QBCore.Functions.Notify(Lang:t("error.not_correct_type"), "error", 3500)
                end
            elseif garage.vehicle == "sea" then
                if vehClass == 14 then
                    enterVehicle(curVeh, index, garage.type, garage)
                else
                    QBCore.Functions.Notify(Lang:t("error.not_correct_type"), "error", 3500)
                end
            end
        end
    end
end)

-- Add target for the created peds
local GaragePeds = {
    `ig_trafficwarden`,
}
exports['qb-target']:AddTargetModel(GaragePeds, {
    options = {
        {
            type = "client",
            event = "qb-garages:client:menuGarage",
            icon = "fa-solid fa-car-rear",
            label = "Open Garage",
            job = "all"
        },
        {
            type = "client",
            event = "qb-garages:client:storeVehicle",
            icon = "fa-solid fa-car-rear",
            label = "Store Vehicle",
            job = "all"
        },
    },
    distance = 8.5,
})