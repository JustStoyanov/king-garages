local ESX = exports['es_extended']:getSharedObject()

-- Code --

ESX.RegisterServerCallback('king-garages:server:getPlayerVehicles', function(src, cb)
    local xPlayer = ESX.GetPlayerFromId(src)
    local PlayerVehicles = {}

    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE identifier = @identifier', {
        ['identifier'] = xPlayer.identifier
    }, function(result)
        cb(result)
    end)
end)

ESX.RegisterServerCallback('king-garages:server:getVehicleData', function(src, callback, plate)
    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {
        ['@plate'] = plate
    }, function(vehmods)
        callback(vehmods)
    end)
end)

RegisterServerEvent('king-garages:server:updateVehicle', function(plate, fuel, state, mods, garagename)
	MySQL.update('UPDATE owned_vehicles SET fuel = @fuel, state = @state, mods = @mods, garage = @garage WHERE plate = @plate', {
		['@plate'] = plate,
		['@fuel'] = fuel,
        ['@state'] = state,
        ['@mods'] = json.encode(mods),
        ['@garage'] = garagename
	})
end)