local ESX = exports['es_extended']:getSharedObject()

-- Code --

local CurrentGarage = {}
local InsideGarageZone = false
local PlayerGarage = {}
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
                vehicle = {
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
                table.insert(PlayerVehicles, vehicle)
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

-- Nui --

RegisterNUICallback('Click', function()
    PlaySound(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 0, 0, 1)
end)
  
RegisterNUICallback('CloseNui', function()
    SetNuiFocus(false, false)
end)

local VehicleMods = {}
RegisterNUICallback('TakeOutVehicle', function(data)
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
                        TriggerServerEvent('king-garages:server:updateVehicle', data.Plate, data.Fuel, 'out', json.decode(roleplay.mods))
                    end, true)
                else
                    Notify('Колата ти е в друг гараж.', 'error')
                end
            end
        end, data.Plate)
    else
        Notify('Колата ти не е в гаража.', 'error')
    end
end)

-- Loops --

Citizen.CreateThread(function()
    local waittime = 500
    local inZone = false
    local alreadyShown = false
    --------------------------
    for king,roleplay in pairs(Config.GarageBlipLocations) do
        exports['king-core']:Blip('add', roleplay.x, roleplay.y, roleplay.z, 357, 3, 0.6, 'Гараж')
    end
    while true do
        for king,roleplay in pairs(Config.ParkingLocations) do
            if #(GetEntityCoords(PlayerPedId()) - vector3(roleplay.x, roleplay.y, roleplay.z)) < roleplay.distance then
                if IsControlJustPressed(0, 38) then
                    CurrentGarage.id = king
                    CurrentGarage.name = roleplay.parkingname
                    exports['king-library']:TextUI('hide')
                    TriggerEvent('king-garages:client:opengarage')
                end
                inZone = true
                waittime = 4
                break
            else
                inZone = false
                waittime = 500
            end
        end
        Citizen.Wait(waittime)
        -- TextUI --
        if not alreadyShown and inZone then
            exports['king-library']:TextUI('show', '[E] Гараж', 'info')
            alreadyShown = true
        elseif alreadyShown and not inZone then
            exports['king-library']:TextUI('hide')
            alreadyShown = false
        end
    end
end)

-- Events --

RegisterNetEvent('king-garages:client:opengarage')
AddEventHandler('king-garages:client:opengarage', function()
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        openGarage()
    else
        parkVehicle()
    end
end)

-- Debug --



-- Exports --

function openGarageMenu(VehicleTable)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OpenGarage", 
        garagevehicles = VehicleTable
    })
end