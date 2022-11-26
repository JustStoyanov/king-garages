local Framework = nil

if Config.Framework == 'esx' then
    Framework = exports['es_extended']:getSharedObject()
elseif Config.Framework == 'qbcore' then
    Framework = exports['qb-core']:GetCoreObject()
elseif Config.Framework == 'king-core' then
    Framework = nil
end

-- █▀ ▀█▀ █▀█ █ █▄░█ █▀▀ █▀ --
-- ▄█ ░█░ █▀▄ █ █░▀█ █▄█ ▄█ --

local PlayerJob, PlayerJobGrade, PreviewedVehicle = nil, nil, nil
local PlayerGarage, VehicleMods, CurrentGarage, GarageInformationTable, PlayerDataJob = {}, {}, {}, {}, {}
local inGarageZone, inImpoundZone, inPoliceImpoundZone, haveJobVehicle, inJobGarageZone = false, false, false, false, false

-- █▀▀ █░█ █▄░█ █▀▀ ▀█▀ █ █▀█ █▄░█ █▀ --
-- █▀░ █▄█ █░▀█ █▄▄ ░█░ █ █▄█ █░▀█ ▄█ --

if Config.Framework == 'esx' then
    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function(xPlayer)
        PlayerJob = xPlayer.job.name
        PlayerJobGrade = xPlayer.job.grade_name
    end)

    RegisterNetEvent('esx:setJob')
    AddEventHandler('esx:setJob', function(job)
        PlayerJob = job.name
        PlayerJobGrade = job.grade_name
    end)
elseif Config.Framework == 'qbcore' then
    
elseif Config.Framework == 'king-core' then
    PlayerJob = exports['king-core']:GetPlayerJob()
    PlayerJobGrade = exports['king-core']:GetPlayerJobGrade()
end

local function GetJob(action)
    if Config.Framework == 'esx' then
        if action == 'name' then
            PlayerJob = Framework.GetPlayerData().job.name
        elseif action == 'grade' then
            PlayerJobGrade = Framework.GetPlayerData().job.grade_name
        end
    elseif Config.Framework == 'qbcore' then
        if action ==  'name' then
            -- PlayerJob = 
        elseif action == 'grade' then
            -- PlayerJobGrade = 
        end
    elseif Config.Framework == 'king-core' then
        PlayerJob = exports['king-core']:GetPlayerJob()
        PlayerJobGrade = exports['king-core']:GetPlayerJobGrade()
    end
end
local function AddParkingLocations()
    for king,roleplay in pairs(Config.BlipLocations['Garages']) do
        exports['king-core']:Blip('add', roleplay.x, roleplay.y, roleplay.z, 357, 2, 0.5, 'Гараж')
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
                --if Config.ControlPressing then
                    exports['king-library']:TextUI('show', 'Гараж', 'info')
                --end
                inGarageZone = true
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
                inGarageZone = false
            end
        })
    end
end
local function AddJobGarages()
    GetJob('name')
    Wait(100)
    if Config.Locations['JobGarages'][PlayerJob] ~= nil then
        for king,roleplay in pairs(Config.Locations['JobGarages'][PlayerJob]) do
            roleplay.parkingzone = lib.zones.box({
                coords = vec3(roleplay.x, roleplay.y, roleplay.z),
                size = vec3(2.7, 5, 3),
                rotation = roleplay.h,
                debug = false,
                inside = function()
                    if PlayerJob == roleplay.job then
                        CurrentGarage.name = PlayerJob
                        CurrentGarage.id = roleplay.garageid
                        if Config.ControlPressing then
                            if IsControlJustPressed(0, 38) then
                                TriggerEvent('king-garages:client:openJobGarage')
                            end
                        end
                    end
                end,
                onEnter = function()
                    --if Config.ControlPressing then
                        if PlayerJob == roleplay.job then
                            exports['king-library']:TextUI('show', 'Служебен Гараж', 'info')
                        end
                    --end
                    inJobGarageZone = true
                end,
                onExit = function()
                    exports['king-library']:TextUI('hide')
                    inJobGarageZone = false
                end
            })
        end
    end
end
local function AddImpound()
    for king,roleplay in pairs(Config.BlipLocations['Impounds']) do
        exports['king-core']:Blip('add', roleplay.x, roleplay.y, roleplay.z, 357, 17, 0.5, 'Наказателен Паркинг')
    end
    for king,roleplay in pairs(Config.Locations['Impound']) do
        roleplay.impoundzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(5, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                CurrentGarage.id = king
                CurrentGarage.name = roleplay.garageid
                if Config.ControlPressing then
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('king-garages:client:openImpound')
                    end
                end
            end,
            onEnter = function()
                --if Config.ControlPressing then
                    exports['king-library']:TextUI('show', 'Наказателен', 'info')
                --end
                inImpoundZone = true
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
                inImpoundZone = false
            end
        })
    end
end
local function AddPoliceImpound()
    for king,roleplay in pairs(Config.BlipLocations['PoliceImpounds']) do
        exports['king-core']:Blip('add', roleplay.x, roleplay.y, roleplay.z, 357, 3, 0.5, 'Конфискувани Коли')
    end

    for king,roleplay in pairs(Config.Locations['PoliceImpound']) do
         roleplay.policeimpoundzone = lib.zones.box({
            coords = vec3(roleplay.x, roleplay.y, roleplay.z),
            size = vec3(5, 5, 3),
            rotation = roleplay.h,
            debug = false,
            inside = function()
                CurrentGarage.id = king
                CurrentGarage.name = roleplay.garageid
                --if Config.ControlPressing then
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('king-garages:client:openPoliceImpound')
                    end
                --end
            end,
            onEnter = function()
                --if Config.ControlPressing then
                    exports['king-library']:TextUI('show', 'Наказателен', 'info')
                --end
                inPoliceImpoundZone = true
            end,
            onExit = function()
                exports['king-library']:TextUI('hide')
                inPoliceImpoundZone = false
            end
        })
    end
end
local function OpenPublicGarage(data, VehColission, FreezePosition, PedInVehicle, VehOut)
    if data.State == 'in' then
        if Config.Framework == 'esx' then
            Framework.TriggerServerCallback('king-garages:server:getVehicleData', function(vehdata)
                VehicleMods = vehdata
                for king,roleplay in pairs(VehicleMods) do
                    if CurrentGarage.name == roleplay.garage then
                        local GarageData = Config.Locations['ParkingLocations'][CurrentGarage.id]
                        if not IsAnyVehicleNearPoint(GarageData.x, GarageData.y, GarageData.z, 5.0) then
                            exports['king-core']:Vehicle('spawn', data.Model, GarageData.x, GarageData.y, GarageData.z, GarageData.h, function(spawnedvehicle)
                                if not VehOut then
                                    PreviewedVehicle = spawnedvehicle
                                end
                                Citizen.Wait(500)
                                if roleplay.mods ~= nil then
                                    Framework.Game.SetVehicleProperties(spawnedvehicle, json.decode(roleplay.mods))
                                end
                                SetEntityCollision(spawnedvehicle, VehColission)
                                FreezeEntityPosition(spawnedvehicle, FreezePosition)
                                SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                                -- exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                                if VehOut then
                                    TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound', CurrentGarage.id)
                                end
                            end, PedInVehicle, true)
                        else
                            Notify('Вече има кола на това място.', 'error')
                        end
                    else
                        Notify('Колата ти е в друг гараж.', 'error')
                    end
                end
            end, data.Plate)
        elseif Config.Framework == 'qbcore' then

        elseif Config.Framework == 'king-core' then
            VehicleMods = KingCalls.Execute('king-garages:server:getVehicleData', data.Plate)
            for king,roleplay in pairs(VehicleMods) do
                if CurrentGarage.name == roleplay.garage then
                    local GarageData = Config.Locations['ParkingLocations'][CurrentGarage.id]
                    if not IsAnyVehicleNearPoint(GarageData.x, GarageData.y, GarageData.z, 5.0) then
                        exports['king-core']:Vehicle('spawn', data.Model, GarageData.x, GarageData.y, GarageData.z, GarageData.h, function(spawnedvehicle)
                            if not VehOut then
                                PreviewedVehicle = spawnedvehicle
                            end
                            Citizen.Wait(500)
                            if roleplay.mods ~= nil then
                                exports['king-core']:GetClientExports('SetVehicleMods', spawnedvehicle, json.decode(roleplay.mods))
                            end
                            SetEntityCollision(spawnedvehicle, VehColission)
                            FreezeEntityPosition(spawnedvehicle, FreezePosition)
                            SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                            -- exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                            if VehOut then
                                TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound', CurrentGarage.id)
                            end
                        end, PedInVehicle, true)
                    else
                        Notify('Вече има кола на това място.', 'error')
                    end
                else
                    Notify('Колата ти е в друг гараж.', 'error')
                end
            end
        end
    else
        Notify('Колата ти е в наказателния паркинг.', 'error')
    end
end
local function OpenJobGarage(data, VehColission, FreezePosition, PedInVehicle, VehOut)
    GetJob('name')
    Wait(100)
    local GarageData = Config.Locations['JobGarages'][PlayerJob][CurrentGarage.id]
    if not IsAnyVehicleNearPoint(GarageData.x, GarageData.y, GarageData.z, 2) then
        if not haveJobVehicle then
            exports['king-core']:Vehicle('spawn', data.Model, GarageData.x, GarageData.y, GarageData.z, GarageData.h, function(spawnedvehicle)
                if not VehOut then
                    PreviewedVehicle = spawnedvehicle
                end
                Citizen.Wait(500)
                SetEntityCollision(spawnedvehicle, VehColission)
                FreezeEntityPosition(spawnedvehicle, FreezePosition)
                SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                if VehOut then
                    haveJobVehicle = true
                    TriggerServerEvent('king-core:server:giveVehicleKeys', 'give', data.Model, data.Plate)
                end
            end, PedInVehicle)
        else
            
        end
    else
        Notify('Вече има кола на това място.', 'error')
    end
end
local function OpenImpoundGarage(data, VehColission, FreezePosition, PedInVehicle, VehOut)
    if data.State == 'out' then
        if Config.Framework == 'esx' then
            Framework.TriggerServerCallback('king-garages:server:getVehicleData', function(vehdata)
                VehicleMods = vehdata
                for king,roleplay in pairs(VehicleMods) do
                    if CurrentGarage.name == roleplay.garage then
                        if not IsAnyVehicleNearPoint(Config.Locations['Impound'][CurrentGarage.id].x, Config.Locations['Impound'][CurrentGarage.id].y, Config.Locations['Impound'][CurrentGarage.id].z, 5.0) then
                            exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['Impound'][CurrentGarage.id].x, Config.Locations['Impound'][CurrentGarage.id].y, Config.Locations['Impound'][CurrentGarage.id].z, Config.Locations['Impound'][CurrentGarage.id].h, function(spawnedvehicle)
                                if not VehOut then
                                    PreviewedVehicle = spawnedvehicle
                                end
                                Citizen.Wait(500)
                                if roleplay.mods ~= nil then
                                    Framework.Game.SetVehicleProperties(spawnedvehicle, json.decode(roleplay.mods))
                                end
                                SetEntityCollision(spawnedvehicle, VehColission)
                                FreezeEntityPosition(spawnedvehicle, FreezePosition)
                                SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                                --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                                if VehOut then
                                    TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound', CurrentGarage.id)
                                end
                            end, PedInVehicle)
                        else
                            Notify('Вече има кола на това място.', 'error')
                        end
                    else
                        Notify('Колата ти е в друг гараж.', 'error')
                    end
                end
            end, data.Plate)
        elseif Config.Framework == 'qbcore' then

        elseif Config.Framework == 'king-core' then
            VehicleMods = KingCalls.Execute('king-garages:server:getVehicleData', data.Plate)
            for king,roleplay in pairs(VehicleMods) do
                if CurrentGarage.name == roleplay.garage then
                    if not IsAnyVehicleNearPoint(Config.Locations['Impound'][CurrentGarage.id].x, Config.Locations['Impound'][CurrentGarage.id].y, Config.Locations['Impound'][CurrentGarage.id].z, 5.0) then
                        exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['Impound'][CurrentGarage.id].x, Config.Locations['Impound'][CurrentGarage.id].y, Config.Locations['Impound'][CurrentGarage.id].z, Config.Locations['Impound'][CurrentGarage.id].h, function(spawnedvehicle)
                            if not VehOut then
                                PreviewedVehicle = spawnedvehicle
                            end
                            Citizen.Wait(500)
                            if roleplay.mods ~= nil then
                                exports['king-core']:GetClientExports('SetVehicleMods', spawnedvehicle, json.decode(roleplay.mods))
                            end
                            SetEntityCollision(spawnedvehicle, VehColission)
                            FreezeEntityPosition(spawnedvehicle, FreezePosition)
                            SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                            --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                            if VehOut then
                                TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'Impound', CurrentGarage.id)
                            end
                        end, PedInVehicle)
                    else
                        Notify('Вече има кола на това място.', 'error')
                    end
                else
                    Notify('Колата ти е в друг гараж.', 'error')
                end
            end
        end
    end
end
local function OpenPoliceImpoundGarage(data, VehColission, FreezePosition, PedInVehicle, VehOut)
    if data.State == 'in' or data.State == 'out' then
        if Config.Framework == 'esx' then
            Framework.TriggerServerCallback('king-garages:server:getVehicleData', function(vehdata)
                VehicleMods = vehdata
                for king,roleplay in pairs(VehicleMods) do
                    if CurrentGarage.name == roleplay.garage then
                        if not IsAnyVehicleNearPoint(Config.Locations['PoliceImpound'][CurrentGarage.id].x, Config.Locations['PoliceImpound'][CurrentGarage.id].y, Config.Locations['PoliceImpound'][CurrentGarage.id].z, 5.0) then
                            exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['PoliceImpound'][CurrentGarage.id].x, Config.Locations['PoliceImpound'][CurrentGarage.id].y, Config.Locations['PoliceImpound'][CurrentGarage.id].z, Config.Locations['PoliceImpound'][CurrentGarage.id].h, function(spawnedvehicle)
                                if not VehOut then
                                    PreviewedVehicle = spawnedvehicle
                                end
                                Citizen.Wait(500)
                                if roleplay.mods ~= nil then
                                    Framework.Game.SetVehicleProperties(spawnedvehicle, json.decode(roleplay.mods))
                                end
                                SetEntityCollision(spawnedvehicle, VehColission)
                                FreezeEntityPosition(spawnedvehicle, FreezePosition)
                                SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                                --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                                if VehOut then
                                    TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'PoliceImpound', CurrentGarage.id)
                                end
                            end, PedInVehicle)
                        else
                            Notify('Вече има кола на това място.', 'error')
                        end
                    else
                        Notify('Колата ти е в друг гараж.', 'error')
                    end
                end
            end, data.Plate)
        elseif Config.Framework == 'qbcore' then

        elseif Config.Framework == 'king-core' then
            VehicleMods = KingCalls.Execute('king-garages:server:getVehicleData', data.Plate)
            for king,roleplay in pairs(VehicleMods) do
                if CurrentGarage.name == roleplay.garage then
                    if not IsAnyVehicleNearPoint(Config.Locations['PoliceImpound'][CurrentGarage.id].x, Config.Locations['PoliceImpound'][CurrentGarage.id].y, Config.Locations['PoliceImpound'][CurrentGarage.id].z, 5.0) then
                        exports['king-core']:Vehicle('spawn', data.Model, Config.Locations['PoliceImpound'][CurrentGarage.id].x, Config.Locations['PoliceImpound'][CurrentGarage.id].y, Config.Locations['PoliceImpound'][CurrentGarage.id].z, Config.Locations['PoliceImpound'][CurrentGarage.id].h, function(spawnedvehicle)
                            if not VehOut then
                                PreviewedVehicle = spawnedvehicle
                            end
                            Citizen.Wait(500)
                            if roleplay.mods ~= nil then
                                exports['king-core']:GetClientExports('SetVehicleMods', spawnedvehicle, json.decode(roleplay.mods))
                            end
                            SetEntityCollision(spawnedvehicle, VehColission)
                            FreezeEntityPosition(spawnedvehicle, FreezePosition)
                            SetVehicleNumberPlateText(spawnedvehicle, data.Plate)
                            --exports['fuel-old']:SetFuel(spawnedvehicle, data.Fuel)
                            if VehOut then
                                TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods), 'PoliceImpound', CurrentGarage.id)
                            end
                        end, PedInVehicle)
                    else
                        Notify('Вече има кола на това място.', 'error')
                    end
                else
                    Notify('Колата ти е в друг гараж.', 'error')
                end
            end
        end
    end
end

-- █░█ █▀ █▀▀ █▀█   █ █▄░█ ▀█▀ █▀▀ █▀█ █▀▀ ▄▀█ █▀▀ █▀▀ --
-- █▄█ ▄█ ██▄ █▀▄   █ █░▀█ ░█░ ██▄ █▀▄ █▀░ █▀█ █▄▄ ██▄ --

RegisterNUICallback('Click', function()
    PlaySound(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 0, 0, 1)
end)
  
RegisterNUICallback('CloseNui', function()
    SetNuiFocus(false, false)
    DeleteEntity(PreviewedVehicle)
end)

RegisterNUICallback('UnselectVehicle', function()
    DeleteEntity(PreviewedVehicle)
end)

RegisterNUICallback('VehicleNotInGarage', function(data)
    if data.Pri4ina == nil then
        if data.State == 'in' then
            if Config.Framework == 'esx' then
                Framework.TriggerServerCallback('king-garages:server:getVehicleData', function(vehicleData)
                    GarageInformationTable = vehicleData
                    exports['king-library']:Notify('Колата ти е в дург гараж, маркирах ти го на GPS-а. Пак заповядай!', 'primary')
                    for king,roleplay in pairs(GarageInformationTable) do
                        local garagenumber = roleplay.garageid
                        SetNewWaypoint(Config.Locations['ParkingLocations'][tonumber(garagenumber)].x, Config.Locations['ParkingLocations'][tonumber(garagenumber)].y)
                    end
                end, data.Plate)
            elseif Config.Framework == 'qbcore' then

            elseif Config.Framework == 'king-core' then
                GarageInformationTable = KingCalls.Execute('king-garages:server:getVehicleData', data.Plate)
                exports['king-library']:Notify('Колата ти е в дург гараж, маркирах ти го на GPS-а. Пак заповядай!', 'primary')
                for king,roleplay in pairs(GarageInformationTable) do
                    local garagenumber = roleplay.garageid
                    SetNewWaypoint(Config.Locations['ParkingLocations'][tonumber(garagenumber)].x, Config.Locations['ParkingLocations'][tonumber(garagenumber)].y)
                end
            end
        else
            exports['king-library']:Notify('Колата ти е в наказателен паркинг, не ми се мисли кво си правил.', 'error')
        end
    else
        if Config.Framework == 'esx' then
            Framework.TriggerServerCallback('king-garages:server:getVehicleData', function(vehicleData)
                GarageInformationTable = vehicleData
                exports['king-library']:Notify('Колата ти е в дург гараж, маркирах ти го на GPS-а. Пак заповядай!', 'primary')
                for king,roleplay in pairs(GarageInformationTable) do
                    local garagenumber = roleplay.garageid
                    SetNewWaypoint(Config.Locations['Impound'].x, Config.Locations['Impound'].y)
                end
            end, data.Plate)
        elseif Config.Framework == 'qbcore' then
            
        elseif Config.Framework == 'king-core' then
            GarageInformationTable = KingCalls.Execute('king-garages:server:getVehicleData', data.Plate)
            exports['king-library']:Notify('Колата ти е в дург гараж, маркирах ти го на GPS-а. Пак заповядай!', 'primary')
            for king,roleplay in pairs(GarageInformationTable) do
                local garagenumber = roleplay.garageid
                SetNewWaypoint(Config.Locations['Impound'].x, Config.Locations['Impound'].y)
            end
        end
    end
end)

RegisterNUICallback('SelectVehicle', function(data)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        if CurrentGarage.name ~= PlayerJob and CurrentGarage.name ~= 'Impound' and CurrentGarage.name ~= 'PoliceImpound' then
            OpenPublicGarage(data, false, true, false, false)
        elseif CurrentGarage.name == 'Impound' then
            OpenImpoundGarage(data, false, true, false, false)
        elseif CurrentGarage.name == 'PoliceImpound' then
            OpenPoliceImpoundGarage(data, false, true, false, false)
        elseif CurrentGarage.name == PlayerJob then
            OpenJobGarage(data, false, true, false, false)
        end
    else
        Notify('Слизай от колата, девелак!', 'error')
    end
end)

RegisterNUICallback('TakeOutVehicle', function(data)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        if CurrentGarage.name ~= PlayerJob and CurrentGarage.name ~= 'Impound' and CurrentGarage.name ~= 'PoliceImpound' then
            OpenPublicGarage(data, true, false, true, true)
        elseif CurrentGarage.name == 'Impound' then
            OpenImpoundGarage(data, true, false, true, true)
        elseif CurrentGarage.name == 'PoliceImpound' then
            OpenPoliceImpoundGarage(data, true, false, true, true)
        elseif CurrentGarage.name == PlayerJob then
            OpenJobGarage(data, true, false, true, true)
        end
    else
        Notify('Слизай от колата, девелак!', 'error')
    end
end)

-- █░░ █▀█ █▀█ █▀█ █▀ --
-- █▄▄ █▄█ █▄█ █▀▀ ▄█ --

local playerNotLoaded = true
Citizen.CreateThread(function()
    AddParkingLocations()
    AddImpound()
    AddPoliceImpound()  
    -- Job Garages --
    while playerNotLoaded do
        if NetworkIsPlayerActive(PlayerId()) then
            playerNotLoaded = false
            AddJobGarages()
        else
            playerNotLoaded = true
        end
        Citizen.Wait(500)
    end
end)

-- █▀▀ █░█ █▀▀ █▄░█ ▀█▀ █▀ --
-- ██▄ ▀▄▀ ██▄ █░▀█ ░█░ ▄█ --

RegisterNetEvent('king-garages:client:opengarage')
AddEventHandler('king-garages:client:opengarage', function()
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        local PlayerVehicles = {}
        PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
        if Config.Framework == 'esx' then
            Framework.TriggerServerCallback("king-garages:server:getPlayerVehicles", function(result)
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
                            ['CurrentGarage'] = CurrentGarage.name
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
        elseif Config.Framework == 'qbcore' then

        elseif Config.Framework == 'king-core' then
            local result = KingCalls.Execute('king-garages:server:getPlayerVehicles')
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
                        ['CurrentGarage'] = CurrentGarage.name
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
        end
    else
        if IsPedInAnyVehicle(PlayerPedId()) then
            local plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId()))
            local fuel = 100 -- exports['fuel-old']:GetFuel(GetVehiclePedIsIn(PlayerPedId()))
            local mods = nil
            if Config.Framework == 'esx' then
                mods = Framework.Game.GetVehicleProperties(GetVehiclePedIsIn(PlayerPedId()))
            elseif Config.Framework == 'qbcore' then

            elseif Config.Framework == 'king-core' then
                mods = exports['king-core']:GetVehicleMods(GetVehiclePedIsIn(PlayerPedId()))
            end
    
            TaskLeaveAnyVehicle(PlayerPedId())
            TriggerServerEvent('king-garages:server:updateVehicle', plate, fuel, 'in', mods, CurrentGarage.name, CurrentGarage.name)
            Citizen.Wait(1700)
            DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), true))
        else
            Notify('Ти не си в автомобил.', 'error')
        end
    end
end)

RegisterNetEvent('king-garages:client:openJobGarage')
AddEventHandler('king-garages:client:openJobGarage', function()
    GetJob('name')
    GetJob('grade')
    Wait(100)
    if not haveJobVehicle then
        if not IsPedInAnyVehicle(PlayerPedId()) then
            local JobVehiclesData = {}
            table.wipe(JobVehiclesData)
            for king,roleplay in pairs(Config.JobVehicles[PlayerJob][PlayerJobGrade]['whitelisted_vehicles']) do
                local jobVehicle = {
                    ['Name'] = Config.VehicleLabels[roleplay.model], 
                    ['Model'] = roleplay.model, 
                    ['Plate'] = PlayerJob..math.random(1111, 9999), 
                    ['Garage'] = PlayerJob,
                    ['State'] = 'in', 
                    ['Fuel'] = 80, 
                    ['Motor'] = 1000, 
                    ['Body'] = 1000,
                    ['CurrentGarage'] = CurrentGarage.name
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
    else
        if IsPedInAnyVehicle(PlayerPedId()) then
            TaskLeaveAnyVehicle(PlayerPedId())
            Citizen.Wait(1700)
            haveJobVehicle = false
            DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), true))
        end
    end
end)

RegisterNetEvent('king-garages:client:openImpound')
AddEventHandler('king-garages:client:openImpound', function()
    local ImpoundedVehicles = {}
    if Config.Framework == 'esx' then
        Framework.TriggerServerCallback('king-garages:server:getPlayerVehicles', function(vehicleData)
            if vehicleData ~= nil then
                table.wipe(ImpoundedVehicles)
                for king,roleplay in pairs(vehicleData) do
                    if roleplay.garageid == 'Impound' and roleplay.state == 'out' then
                        local VehicleInformation = {
                            ['Name'] = Config.VehicleLabels[roleplay.model], 
                            ['Model'] = roleplay.model, 
                            ['Plate'] = roleplay.plate, 
                            ['Garage'] = roleplay.garage,
                            ['State'] = roleplay.state, 
                            ['Fuel'] = roleplay.fuel, 
                            ['Motor'] = 1000, 
                            ['Body'] = 1000,
                            ['CurrentGarage'] = 'Impound'
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
    elseif Config.Framework == 'qbcore' then

    elseif Config.Framework == 'king-core' then
        local vehicleData = KingCalls.Execute('king-garages:server:getPlayerVehicles')
        if vehicleData ~= nil then
            table.wipe(ImpoundedVehicles)
            for king,roleplay in pairs(vehicleData) do
                if roleplay.garageid == 'Impound' and roleplay.state == 'out' then
                    local VehicleInformation = {
                        ['Name'] = Config.VehicleLabels[roleplay.model], 
                        ['Model'] = roleplay.model, 
                        ['Plate'] = roleplay.plate, 
                        ['Garage'] = roleplay.garage,
                        ['State'] = roleplay.state, 
                        ['Fuel'] = roleplay.fuel, 
                        ['Motor'] = 1000, 
                        ['Body'] = 1000,
                        ['CurrentGarage'] = 'Impound'
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
    end
end)

RegisterNetEvent('king-garages:client:openPoliceImpound')
AddEventHandler('king-garages:client:openPoliceImpound', function()
    local PoliceImpoundedVehicles = {}
    if Config.Framework == 'esx' then
        Framework.TriggerServerCallback('king-garages:server:getPlayerVehicles', function(vehicleData)
            if vehicleData ~= nil then
                table.wipe(PoliceImpoundedVehicles)
                for king,roleplay in pairs(vehicleData) do
                    if roleplay.garage == 'PoliceImpound' then
                        table.insert(PoliceImpoundedVehicles, {
                            ['Name'] = Config.VehicleLabels[roleplay.model], 
                            ['Model'] = roleplay.model, 
                            ['Plate'] = roleplay.plate, 
                            ['Garage'] = roleplay.garage,
                            ['State'] = roleplay.state, 
                            ['Fuel'] = roleplay.fuel, 
                            ['Motor'] = 1000, 
                            ['Body'] = 1000,
                            ['CurrentGarage'] = 'PoliceImpound'
                        })
                    end
                end
                -- Opens the UI --
                SetNuiFocus(true, true)
                SendNUIMessage({
                    action = "OpenGarage",
                    garagevehicles = PoliceImpoundedVehicles
                })
                SetCursorLocation(0.9, 0.25)
            end
        end)
    elseif Config.Framework == 'qbcore' then

    elseif Config.Framework == 'king-core' then
        local vehicleData = KingCalls.Execute('king-garages:server:getPlayerVehicles')
        if vehicleData ~= nil then
            table.wipe(PoliceImpoundedVehicles)
            for king,roleplay in pairs(vehicleData) do
                if roleplay.garage == 'PoliceImpound' then
                    table.insert(PoliceImpoundedVehicles, {
                        ['Name'] = Config.VehicleLabels[roleplay.model], 
                        ['Model'] = roleplay.model, 
                        ['Plate'] = roleplay.plate, 
                        ['Garage'] = roleplay.garage,
                        ['State'] = roleplay.state, 
                        ['Fuel'] = roleplay.fuel, 
                        ['Motor'] = 1000, 
                        ['Body'] = 1000,
                        ['CurrentGarage'] = 'PoliceImpound'
                    })
                end
            end
            -- Opens the UI --
            SetNuiFocus(true, true)
            SendNUIMessage({
                action = "OpenGarage",
                garagevehicles = PoliceImpoundedVehicles
            })
            SetCursorLocation(0.9, 0.25)
        end
    end
end)

-- █▀▄ █▀▀ █▄▄ █░█ █▀▀ --
-- █▄▀ ██▄ █▄█ █▄█ █▄█ --

if Config.DevMode then
    RegisterCommand('garage_test', function()
        -- If I want to test something, I will type it here
        AddJobGarages()
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