local Framework = nil

if Config.Framework == 'esx' then
    Framework = exports['es_extended']:getSharedObject()
elseif Config.Framework == 'qbcore' then
    Framework = exports['qb-core']:GetCoreObject()
elseif Config.Framework == 'king-core' then
    Framework = nil
end

-- Code --

if Config.Framework == 'esx' then
    Framework.RegisterServerCallback('king-garages:server:getPlayerVehicles', function(src, cb)
        local xPlayer = Framework.GetPlayerFromId(src)

        MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE identifier = @identifier', {
            ['identifier'] = xPlayer.identifier
        }, function(result)
            cb(result)
        end)
    end)

    Framework.RegisterServerCallback('king-garages:server:getVehicleData', function(src, callback, plate)
        MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {
            ['@plate'] = plate
        }, function(vehdata)
            callback(vehdata)
        end)
    end)
elseif Config.Framework == 'qbcore' then

elseif Config.Framework == 'king-core' then
    KingCalls.Register('king-garages:server:getPlayerVehicles', function()
        MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid', {
            ['citizenid'] = exports['king-core']:GetPlayerCitizenId(source)
        }, function(result)
            return result
        end)

        return nil
    end)

    KingCalls.Register('king-garages:server:getVehicleData', function(plate)
        MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {
            ['@plate'] = plate
        }, function(vehdata)
            return vehdata
        end)

        return nil
    end)
end

RegisterServerEvent('king-garages:server:updateVehicle', function(plate, fuel, state, mods, garagename, garageid)
	MySQL.update('UPDATE owned_vehicles SET fuel = @fuel, state = @state, mods = @mods, garage = @garage, garageid = @garageid WHERE plate = @plate', {
		['@plate'] = plate,
		['@fuel'] = fuel,
        ['@state'] = state,
        ['@mods'] = json.encode(mods),
        ['@garage'] = garagename,
        ['@garageid'] = garageid
	})
end)