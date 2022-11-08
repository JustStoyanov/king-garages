Config = {}

-- Configuration --

Config.GarageBlipLocations = {
    { x = 227.60412, y = -781.9088, z = 30.722974, blip }, -- Главен Гараж
    { x = 128.8495, y = -1069.903, z = 29.192344, blip } -- Гаража зад fleeca до legion-а
}

Config.ParkingLocations = {
    [1] = { x = 227.01277, y = -771.5708, z = 30.783857, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [2] = { x = 225.13673, y = -776.5526, z = 30.773427, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [3] = { x = 222.78570, y = -784.1531, z = 30.765306, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [4] = { x = 220.77500, y = -789.3566, z = 30.765838, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [5] = { x = 218.35182, y = -796.3085, z = 30.768150, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [6] = { x = 216.38066, y = -801.3527, z = 30.793756, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [7] = { x = 207.16755, y = -798.3727, z = 30.986684, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [8] = { x = 208.85337, y = -793.5561, z = 30.949356, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [9] = { x = 211.85939, y = -786.3146, z = 30.891523, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [10] = { x = 214.12472, y = -781.2974, z = 30.856950, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [11] = { x = 217.40715, y = -773.8880, z = 30.823503, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [12] = { x = 218.97296, y = -769.4886, z = 30.816034, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [13] = { x = 242.44602, y = -777.5194, z = 30.652790, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [14] = { x = 241.21350, y = -782.1348, z = 30.603460, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [15] = { x = 239.13648, y = -790.3497, z = 30.523069, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [16] = { x = 236.92425, y = -795.1248, z = 30.500244, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [17] = { x = 233.66259, y = -802.3024, z = 30.473236, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [18] = { x = 232.18840, y = -807.7727, z = 30.441129, h = 70.0, distance = 1.0, parkingname = 'Central' }, -- Главен Гараж
    [19] = { x = 106.35281, y = -1063.195, z = 29.192346, h = 70.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [20] = { x = 110.95535, y = -1052.735, z = 29.203161, h = 70.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [21] = { x = 121.15685, y = -1080.992, z = 29.192930, h = 150.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [22] = { x = 128.49424, y = -1081.500, z = 29.212236, h = 150.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [23] = { x = 135.78657, y = -1081.691, z = 29.193611, h = 150.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [24] = { x = 143.24874, y = -1081.598, z = 29.192344, h = 150.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [25] = { x = 150.93791, y = -1081.516, z = 29.212219, h = 150.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
    [26] = { x = 158.29385, y = -1081.569, z = 29.192375, h = 150.0, distance = 1.0, parkingname = 'Vespucci Boulevard' }, -- Гаража зад fleeca до legion-а
}

Config.JobGarages = {
    ['Police'] = {
        
    }
}

Config.VehicleLabels = {
    ['t20'] = 'T20',
    ['JESTGPR'] = 'King Jester',
    ['m3f80'] = 'BMW M3 F80'
}

-- Functions --

function Notify(msg, type)
    if type == 'info' then
        exports['king-library']:Notify(msg, 'primary')
    elseif type == 'success' then
        exports['king-library']:Notify(msg, 'success')
    elseif type == 'error' then
        exports['king-library']:Notify(msg, 'error')
    end
end

function TextUI(msg, type)
    if type == 'info' then
        exports['king-library']:TextUI('show', msg, 'info')
    elseif type == 'success' then
        exports['king-library']:TextUI('show', msg, 'success')
    elseif type == 'error' then
        exports['king-library']:TextUI('show', msg, 'error')
    elseif type == 'hide' then
        exports['king-library']:TextUI('hide')
    end
end