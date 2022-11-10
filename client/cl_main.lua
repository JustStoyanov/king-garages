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

local haveJobVehicle, inJobGarageZone = false, false
local inGarageZone, inImpoundZone = false, false
local PlayerGarage, VehicleMods, CurrentGarage = {}, {}, {}

-- █▀▀ █░█ █▄░█ █▀▀ ▀█▀ █ █▀█ █▄░█ █▀ --
-- █▀░ █▄█ █░▀█ █▄▄ ░█░ █ █▄█ █░▀█ ▄█ --



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
        if CurrentGarage.name ~= ESX.PlayerData.job.label and CurrentGarage.name ~= 'Impound' then
            if data.State == 'in' then
                ESX.TriggerServerCallback('king-garages:server:getVehicleData', function(vehdata)
                    VehicleMods = vehdata
                    for king,roleplay in pairs(VehicleMods) do
                        if CurrentGarage.name == roleplay.garage then
                            if not IsAnyVehicleNearPoint(Config.Locations['ParkingLocations'][CurrentGarage.id].x, Config.Locations['ParkingLocations'][CurrentGarage.id].y, Config.Locations['ParkingLocations'][CurrentGarage.id].z, 5.0) then
                                exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['ParkingLocations'][CurrentGarage.id].x, Config.Locations['ParkingLocations'][CurrentGarage.id].y, Config.Locations['ParkingLocations'][CurrentGarage.id].z, Config.Locations['ParkingLocations'][CurrentGarage.id].h, function(spawnedvehicle)
                                    Citizen.Wait(500)
                                    if roleplay.mods ~= nil then
                                        ESX.Game.SetVehicleProperties(spawnedvehicle, json.decode(roleplay.mods))
                                    end
                                    SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                                    --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                                    TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound')
                                end, true)
                            else
                                Notify('Вече има кола на това място.', 'error')
                            end
                        else
                            Notify('Колата ти е в друг гараж.', 'error')
                        end
                    end
                end, data.Plate)
            else
                Notify('Колата ти не е в гаража.', 'error')
            end
        elseif CurrentGarage.name == 'Impound' then
            if data.State == 'out' then
                ESX.TriggerServerCallback('king-garages:server:getVehicleData', function(vehdata)
                    VehicleMods = vehdata
                    for king,roleplay in pairs(VehicleMods) do
                        if CurrentGarage.name == roleplay.garage then
                            if not IsAnyVehicleNearPoint(Config.Locations['Impound'][CurrentGarage.id].x, Config.Locations['Impound'][CurrentGarage.id].y, Config.Locations['Impound'][CurrentGarage.id].z, 5.0) then
                                exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['Impound'][CurrentGarage.id].x, Config.Locations['Impound'][CurrentGarage.id].y, Config.Locations['Impound'][CurrentGarage.id].z, Config.Locations['Impound'][CurrentGarage.id].h, function(spawnedvehicle)
                                    Citizen.Wait(500)
                                    if roleplay.mods ~= nil then
                                        ESX.Game.SetVehicleProperties(spawnedvehicle, json.decode(roleplay.mods))
                                    end
                                    SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                                    --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                                    TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound')
                                end, true)
                            else
                                Notify('Вече има кола на това място.', 'error')
                            end
                        else
                            Notify('Колата ти е в друг гараж.', 'error')
                        end
                    end
                end, data.Plate)
            end
        elseif CurrentGarage.name == ESX.PlayerData.job.label then
            if not IsAnyVehicleNearPoint(Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].x, Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].y, Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].z, 2) then
                exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].x, Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].y, Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].z, Config.Locations['JobGarages'][ESX.PlayerData.job.label][CurrentGarage.id].h, function(spawnedvehicle)
                    Citizen.Wait(500)
                    SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                    --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                    TriggerServerEvent('king-core:server:giveVehicleKeys', 'give', data.Model, data.Plate)
                    haveJobVehicle = true
                end, true)
            else
                Notify('Вече има кола на това място.', 'error')
            end
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
    for king,roleplay in pairs(Config.Locations['ParkingLocations']) do
        roleplay.parkingzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(2.7, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                CurrentGarage.id = king
                CurrentGarage.name = roleplay.parkingname
                if Config.ControlPressing then
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('king-garages:client:opengarage')
                    end
                end
            end,
            onEnter = function()
                if Config.ControlPressing then
                    exports['king-library']:TextUI('show', '[E] Гараж', 'info')
                end
                inGarageZone = true
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
                inGarageZone = false
            end
        })
    end
end)

Citizen.CreateThread(function()
    for king,roleplay in pairs(Config.Locations['JobGarages'][ESX.PlayerData.job.label]) do
        roleplay.parkingzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(2.7, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                if ESX.PlayerData.job.name == roleplay.job then
                    CurrentGarage.name = ESX.PlayerData.job.label
                    CurrentGarage.id = roleplay.garageid
                    if Config.ControlPressing then
                        if IsControlJustPressed(0, 38) then
                            TriggerEvent('king-garages:client:openJobGarage')
                        end
                    end
                end
            end,
            onEnter = function()
                if Config.ControlPressing then
                    if ESX.PlayerData.job.name == roleplay.job then
                        exports['king-library']:TextUI('show', '[E] Гараж', 'info')
                    end
                end
                inJobGarageZone = true
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
                inJobGarageZone = false
            end
        })
    end
end)

Citizen.CreateThread(function()
    for king,roleplay in pairs(Config.Locations['Impound']) do
        roleplay.impoundzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(5, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                CurrentGarage.name = 'Impound'
                CurrentGarage.id = roleplay.garageid
                if Config.ControlPressing then
                    if IsControlJustPressed(0, 38) then
                        CurrentGarage.name = 'Impound'
                        TriggerEvent('king-garages:client:openImpound')
                    end
                end
            end,
            onEnter = function()
                if Config.ControlPressing then
                    exports['king-library']:TextUI('show', '[E] Наказателен', 'info')
                end
                inImpoundZone = true
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
                inImpoundZone = false
            end
        })
    end
end)

-- █▀▀ █░█ █▀▀ █▄░█ ▀█▀ █▀ --
-- ██▄ ▀▄▀ ██▄ █░▀█ ░█░ ▄█ --

RegisterNetEvent('king-garages:client:opengarage')
AddEventHandler('king-garages:client:opengarage', function()
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
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
                        ['Body'] = 1000
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
    else
        if IsPedInAnyVehicle(PlayerPedId()) then
            local plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId()))
            local fuel = exports['fuel-old']:GetFuel(GetVehiclePedIsIn(PlayerPedId()))
            local mods = ESX.Game.GetVehicleProperties(GetVehiclePedIsIn(PlayerPedId()))
    
            TaskLeaveAnyVehicle(PlayerPedId())
            TriggerServerEvent('king-garages:server:updateVehicle', plate, fuel, 'in', mods, CurrentGarage.name)
            Citizen.Wait(1700)
            DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), true))
        else
            Notify('Ти не си в автомобил.', 'error')
        end
    end
end)

RegisterNetEvent('king-garages:client:openJobGarage', function()
    if not haveJobVehicle then
        local JobVehiclesData = {}
        table.wipe(JobVehiclesData)
        for king,roleplay in pairs(Config.JobVehicles[ESX.PlayerData.job.label][ESX.PlayerData.job.grade_name]['whitelisted_vehicles']) do
            local jobVehicle = {
                ['Name'] = Config.VehicleLabels[roleplay.model], 
                ['Model'] = roleplay.model, 
                ['Plate'] = ESX.PlayerData.job.label..math.random(1111, 9999), 
                ['Garage'] = ESX.PlayerData.job.label,
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
    else
        TaskLeaveAnyVehicle(PlayerPedId())
        Citizen.Wait(1700)
        haveJobVehicle = false
        DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), true))
    end
end)

RegisterNetEvent('king-garages:client:openImpound', function()
    local ImpoundedVehicles = {}
    ESX.TriggerServerCallback('king-garages:server:getPlayerVehicles', function(vehicleData)
        if vehicleData ~= nil then
            table.wipe(ImpoundedVehicles)
            for king,roleplay in pairs(vehicleData) do
                if roleplay.garage == 'Impound' then
                    local VehicleInformation = {
                        ['Name'] = Config.VehicleLabels[roleplay.model], 
                        ['Model'] = roleplay.model, 
                        ['Plate'] = roleplay.plate, 
                        ['Garage'] = 'ASDWEBRAT',
                        ['State'] = roleplay.state, 
                        ['Fuel'] = roleplay.fuel, 
                        ['Motor'] = 1000, 
                        ['Body'] = 1000
                    }
                    table.insert(ImpoundedVehicles, VehicleInformation)
                end
            end
            -- Opens the UI --
            SetNuiFocus(true, true)
            SendNUIMessage({
                action = "OpenGarage",
                garagevehicles = ImpoundedVehicles
            })
            SetCursorLocation(0.9, 0.25)
        end
    end)
end)

-- █▀▄ █▀▀ █▄▄ █░█ █▀▀ --
-- █▄▀ ██▄ █▄█ █▄█ █▄█ --

if Config.DevMode then
    RegisterCommand('garage_test', function()
        -- If I want to test something, I will type it here
    end)
end

-- █▀▀ ▀▄▀ █▀█ █▀█ █▀█ ▀█▀ █▀ --
-- ██▄ █░█ █▀▀ █▄█ █▀▄ ░█░ ▄█ --

function InsideGarageZone()
    return inGarageZone
end

function InsideJobGarageZone()
    return inJobGarageZone
end

function InsideImpoundZone()
    return inImpoundZone
end