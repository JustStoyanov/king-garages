local ESX = exports['es_extended']:getSharedObject()
local PlayerData = ESX.GetPlayerData()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

-- █▀ ▀█▀ █▀█ █ █▄░█ █▀▀ █▀ --
-- ▄█ ░█░ █▀▄ █ █░▀█ █▄█ ▄█ --

local haveJobVehicle = false
local PlayerGarage, VehicleMods, CurrentGarage = {}, {}, {}

-- █▀▀ █░█ █▄░█ █▀▀ ▀█▀ █ █▀█ █▄░█ █▀ --
-- █▀░ █▄█ █░▀█ █▄▄ ░█░ █ █▄█ █░▀█ ▄█ --

local function parkVehicle()
    if IsPedInAnyVehicle(PlayerPedId()) then
        local plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId()))
        local fuel = exports['king-fuel']:GetFuel(GetVehiclePedIsIn(PlayerPedId()))
        local mods = ESX.Game.GetVehicleProperties(GetVehiclePedIsIn(PlayerPedId()))

        TaskLeaveAnyVehicle(PlayerPedId())
        TriggerServerEvent('king-garages:server:updateVehicle', plate, fuel, 'in', mods, CurrentGarage.name)
        Citizen.Wait(1700)
        DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), true))
    else
        Notify('Ти не си в автомобил.', 'error')
    end
end

local function openGarage()
    local PlayerVehicles = {}
    PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
    ESX.TriggerServerCallback("king-garages:server:getPlayerVehicles", function(result)
        if result ~= nil then
            table.wipe(PlayerVehicles)
            for king,roleplay in pairs(result) do
                local vehicleData = {
                    ['Name'] = Config.VehicleLabels[roleplay.model], 
                    ['Model'] = roleplay.model, 
                    ['Plate'] = roleplay.plate, 
                    ['Garage'] = roleplay.garage,
                    ['State'] = roleplay.state, 
                    ['Fuel'] = roleplay.fuel, 
                    ['Motor'] = 1000, 
                    ['Body'] = 1000,
                    ['Garage'] = 'Central'
                }
                table.insert(PlayerVehicles, vehicleData)
            end
            -- Opens the UI --
            SetNuiFocus(true, true)
            SendNUIMessage({
                action = "OpenGarage", 
                garagevehicles = PlayerVehicles
            })
            SetCursorLocation(0.9, 0.25)
        else
            Notify('Нямаш автомобили в гаража си.', 'error')
        end
    end)
end

local function openJobGarage()
    local JobVehiclesData = {}
    table.wipe(JobVehiclesData)
    for king,roleplay in pairs(Config.JobVehicles[ESX.PlayerData.job.label][ESX.PlayerData.job.grade_name]['whitelisted_vehicles']) do
        local jobVehicle = {
            ['Name'] = Config.VehicleLabels[roleplay.model], 
            ['Model'] = roleplay.model, 
            ['Plate'] = 'KCPD'..math.random(1111, 9999), 
            ['Garage'] = 'KCPD',
            ['State'] = 'in', 
            ['Fuel'] = 80, 
            ['Motor'] = 1000, 
            ['Body'] = 1000,
        }
        table.insert(JobVehiclesData, jobVehicle)
    end
    -- Opens the UI --
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OpenGarage", 
        garagevehicles = JobVehiclesData
    })
    SetCursorLocation(0.9, 0.25)
end

-- █░█ █▀ █▀▀ █▀█   █ █▄░█ ▀█▀ █▀▀ █▀█ █▀▀ ▄▀█ █▀▀ █▀▀ --
-- █▄█ ▄█ ██▄ █▀▄   █ █░▀█ ░█░ ██▄ █▀▄ █▀░ █▀█ █▄▄ ██▄ --

RegisterNUICallback('Click', function()
    PlaySound(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 0, 0, 1)
end)
  
RegisterNUICallback('CloseNui', function()
    SetNuiFocus(false, false)
end)

RegisterNUICallback('TakeOutVehicle', function(data)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        if CurrentGarage.name ~= 'KCPD' then
            if data.State == 'in' then
                ESX.TriggerServerCallback('king-garages:server:getVehicleMods', function(vehdata)
                    VehicleMods = vehdata
                    for king,roleplay in pairs(VehicleMods) do
                        if CurrentGarage.name == roleplay.garage then
                            exports['king-core']:Vehicle('spawn', data.Model, Config.ParkingLocations[CurrentGarage.id].x, Config.ParkingLocations[CurrentGarage.id].y, Config.ParkingLocations[CurrentGarage.id].z, Config.ParkingLocations[CurrentGarage.id].h, function(spawnedvehicle)
                                Citizen.Wait(500)
                                if roleplay.mods ~= nil then
                                    ESX.Game.SetVehicleProperties(spawnedvehicle, json.decode(roleplay.mods))
                                end
                                SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                                exports['king-fuel']:SetFuel(spawnedvehicle, data.Fuel)
                                TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound')
                            end, true)
                        else
                            Notify('Колата ти е в друг гараж.', 'error')
                        end
                    end
                end, data.Plate)
            else
                Notify('Колата ти не е в гаража.', 'error')
            end
        elseif CurrentGarage.name == 'KCPD' then
            exports['king-core']:Vehicle('spawn', data.Model, Config.JobGarages[ESX.PlayerData.job.label][CurrentGarage.id].x, Config.JobGarages[ESX.PlayerData.job.label][CurrentGarage.id].y, Config.JobGarages[ESX.PlayerData.job.label][CurrentGarage.id].z, Config.JobGarages[ESX.PlayerData.job.label][CurrentGarage.id].h, function(spawnedvehicle)
                Citizen.Wait(500)
                SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                exports['king-fuel']:SetFuel(spawnedvehicle, data.Fuel)
                haveJobVehicle = true
            end, true)
        end
    else
        Notify('Слизай от колата, девелак!', 'error')
    end
end)

-- █░░ █▀█ █▀█ █▀█ █▀ --
-- █▄▄ █▄█ █▄█ █▀▀ ▄█ --

Citizen.CreateThread(function()
    for king,roleplay in pairs(Config.GarageBlipLocations) do
        exports['king-core']:Blip('add', roleplay.x, roleplay.y, roleplay.z, 357, 3, 0.6, 'Гараж')
    end
    for king,roleplay in pairs(Config.ParkingLocations) do
        roleplay.parkingzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(2.7, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                if IsControlJustPressed(0, 38) then
                    CurrentGarage.id = king
                    CurrentGarage.name = roleplay.parkingname
                    TriggerEvent('king-garages:client:opengarage')
                end
            end,
            onEnter = function()
                exports['king-library']:TextUI('show', '[E] Гараж', 'info')
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
            end
        })
    end
end)

Citizen.CreateThread(function()
    for king,roleplay in pairs(Config.JobGarages['KCPD']) do
        roleplay.parkingzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(2.7, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                if ESX.PlayerData.job.label == 'KCPD' then
                    if IsControlJustPressed(0, 38) then
                        CurrentGarage.name = 'KCPD'
                        CurrentGarage.id = roleplay.garageid
                        if not haveJobVehicle then
                            openJobGarage()
                        elseif haveJobVehicle then
                            TaskLeaveAnyVehicle(PlayerPedId())
                            Citizen.Wait(1700)
                            haveJobVehicle = false
                            DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), true))
                        end
                    end
                end
            end,
            onEnter = function()
                if ESX.PlayerData.job.label == 'KCPD' then
                    exports['king-library']:TextUI('show', '[E] Гараж', 'info')
                end
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
            end
        })
    end
end)

-- █▀▀ █░█ █▀▀ █▄░█ ▀█▀ █▀ --
-- ██▄ ▀▄▀ ██▄ █░▀█ ░█░ ▄█ --

RegisterNetEvent('king-garages:client:opengarage')
AddEventHandler('king-garages:client:opengarage', function()
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        openGarage()
    else
        parkVehicle()
    end
end)

-- █▀▄ █▀▀ █▄▄ █░█ █▀▀ --
-- █▄▀ ██▄ █▄█ █▄█ █▄█ --

if Config.DevMode then
    RegisterCommand('garage_teste', function()
        for king,roleplay in pairs(Config.JobGarages['KCPD']) do
            print(roleplay.garageid)
        end
    end)
end

-- █▀▀ ▀▄▀ █▀█ █▀█ █▀█ ▀█▀ █▀ --
-- ██▄ █░█ █▀▀ █▄█ █▀▄ ░█░ ▄█ --

