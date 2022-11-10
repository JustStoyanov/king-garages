Config = {}

-- Configuration --

Config.DevMode = false
Config.ImpoundName = 'Impound'
Config.ControlPressing = false
Config.GarageBlipLocations = {
    { x = 227.60412, y = -781.9088, z = 30.722974, blip }, -- Главен Гараж
    { x = 128.84950, y = -1069.903, z = 29.192344, blip }, -- Гаража зад fleeca до legion-а
    { x = 283.16525, y = -332.9557, z = 44.919830, blip }, -- Occupation Avenue
    { x = 283.16525, y = -332.9557, z = 44.919830, blip }, -- Red Parking
}

Config.Locations = {
    ['Impound'] = {
        ['Impound1'] = { x = 486.8348, y = -1308.405, z = 29.260835, h = 232.95101, distance = 1.5, garageid = 'Impound1', impoundzone }
    },

    ['JobGarages'] = {
        ['KCPD'] = {
            ['KCPD1'] = { x = 445.84762, y = -994.1708, z = 25.699855, h = 90.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD1', parkingzone },
            ['KCPD2'] = { x = 446.18252, y = -988.8669, z = 25.699842, h = 90.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD2', parkingzone },
            ['KCPD3'] = { x = 437.13143, y = -994.4346, z = 25.699861, h = 280.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD3', parkingzone },
            ['KCPD4'] = { x = 437.67630, y = -988.9340, z = 25.700178, h = 280.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD4', parkingzone }
        },
    
        ['King Tunes'] = {
            ['King Tunes1'] = { x = 124.49122, y = -3047.531, z = 7.0408916, h = 260.0, distance = 1.5, job = 'king_tunes', garageid = 'King Tunes1', parkingzone },
            ['King Tunes2'] = { x = 124.47714, y = -3041.367, z = 7.0408916, h = 260.0, distance = 1.5, job = 'king_tunes', garageid = 'King Tunes2', parkingzone },
            ['King Tunes3'] = { x = 124.53906, y = -3035.318, z = 7.0408916, h = 260.0, distance = 1.5, job = 'king_tunes', garageid = 'King Tunes3', parkingzone },
        }
    },
    
    ['ParkingLocations'] = {
        [1] = { x = 227.01277, y = -771.5708, z = 30.783857, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [2] = { x = 225.13673, y = -776.5526, z = 30.773427, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [3] = { x = 222.78570, y = -784.1531, z = 30.765306, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [4] = { x = 220.77500, y = -789.3566, z = 30.765838, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [5] = { x = 218.35182, y = -796.3085, z = 30.768150, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [6] = { x = 216.38066, y = -801.3527, z = 30.793756, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [7] = { x = 207.16755, y = -798.3727, z = 30.986684, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [8] = { x = 208.85337, y = -793.5561, z = 30.949356, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [9] = { x = 211.85939, y = -786.3146, z = 30.891523, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [10] = { x = 214.12472, y = -781.2974, z = 30.856950, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [11] = { x = 217.40715, y = -773.8880, z = 30.823503, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [12] = { x = 218.97296, y = -769.4886, z = 30.816034, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [13] = { x = 242.44602, y = -777.5194, z = 30.652790, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [14] = { x = 241.21350, y = -782.1348, z = 30.603460, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [15] = { x = 239.13648, y = -790.3497, z = 30.523069, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [16] = { x = 236.92425, y = -795.1248, z = 30.500244, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [17] = { x = 233.66259, y = -802.3024, z = 30.473236, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [18] = { x = 232.18840, y = -807.7727, z = 30.441129, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [19] = { x = 233.01296, y = -773.9608, z = 30.738611, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [20] = { x = 231.18141, y = -778.7935, z = 30.712379, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [21] = { x = 228.48529, y = -786.3255, z = 30.697439, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [22] = { x = 226.55522, y = -791.2108, z = 30.678628, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [23] = { x = 223.82804, y = -798.9561, z = 30.661596, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [24] = { x = 221.97802, y = -803.7878, z = 30.678428, h = 70.0, distance = 1.5, parkingname = 'Central', parkingzone }, -- Главен Гараж
        [25] = { x = 106.35281, y = -1063.195, z = 29.192346, h = 70.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [26] = { x = 110.95535, y = -1052.735, z = 29.203161, h = 70.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [27] = { x = 121.15685, y = -1080.992, z = 29.192930, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [28] = { x = 128.49424, y = -1081.500, z = 29.212236, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [29] = { x = 135.78657, y = -1081.691, z = 29.193611, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [30] = { x = 143.24874, y = -1081.598, z = 29.192344, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [31] = { x = 150.93791, y = -1081.516, z = 29.212219, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [32] = { x = 158.29385, y = -1081.569, z = 29.192375, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
        [33] = { x = 295.23733, y = -343.2663, z = 44.919876, h = 250.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [34] = { x = 298.47592, y = -333.2808, z = 44.919887, h = 250.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [35] = { x = 282.57843, y = -327.2095, z = 44.919883, h = 250.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [36] = { x = 278.75576, y = -336.5630, z = 44.919883, h = 250.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [37] = { x = 284.50540, y = -338.8932, z = 44.919879, h = 70.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [38] = { x = 288.34014, y = -329.3495, z = 44.919879, h = 70.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [39] = { x = 270.90649, y = -322.6307, z = 44.919876, h = 70.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [40] = { x = 266.84262, y = -332.2683, z = 44.919883, h = 70.0, distance = 1.5, parkingname = 'Occupation Avenue', parkingzone }, -- Occupation Avenue
        [41] = { x = -356.6981, y = -756.6427, z = 33.968421, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
        [42] = { x = -342.0922, y = -757.1981, z = 33.969474, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
        [43] = { x = -337.3471, y = -751.4211, z = 33.968563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
        [44] = { x = -331.6111, y = -751.4358, z = 33.968563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
        [45] = { x = -323.0417, y = -752.208, z = 33.968505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
        [46] = { x = -317.6162, y = -754.2041, z = 33.968505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
        [47] = { x = -341.0766, y = -767.0043, z = 33.969402, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
    }
}

Config.VehicleLabels = {
    ['t20'] = 'T20',
    ['JESTGPR'] = 'King Jester',
    ['REAGPR'] = 'King Reaper',
    ['m3f80'] = 'BMW M3 F80',
    ['nforce7'] = 'Crown Victoria',
    ['policebretro'] = 'Retro Bike',
    ['nforce6'] = 'Charger (стар)',
    ['nforce9'] = 'Tahoe (старо)',
    ['polthrust'] = 'Мотор',
    ['nforce3'] = 'Ford Taurus',
    ['nforce10'] = 'Explorer',
    ['nforce1'] = 'Charger (нов)',
    ['nforce11'] = 'Tahoe (ново)'
}

Config.JobVehicles = {
    ['KCPD'] = {
        ['kadet'] = {
            ['grade'] = 'kadet',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' }
            }
        },
        ['third_grade'] = {
            ['grade'] = 'third_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' }
            }
        },
        ['second_grade'] = {
            ['grade'] = 'second_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' }
            }
        },
        ['first_grade'] = {
            ['grade'] = 'first_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' }
            }
        },
        ['serjant_first_grade'] = {
            ['grade'] = 'serjant_first_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' }
            }
        },
        ['serjant_second_grade'] = {
            ['grade'] = 'serjant_second_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' }
            }
        },
        ['detectiv_first_grade'] = {
            ['grade'] = 'detectiv_first_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' }
            }
        },
        ['detectiv_second_grade'] = {
            ['grade'] = 'detectiv_second_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' },
                { model = 'nforce1'}
            }
        },
        ['leitenant'] = {
            ['grade'] = 'leitenant',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' },
                { model = 'nforce1'}
            }
        },
        ['captain'] = {
            ['grade'] = 'captain',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' },
                { model = 'nforce1'},
                { model = 'nforce11' }
            } 
        },
        ['comandir'] = {
            ['grade'] = 'comandir',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' },
                { model = 'nforce1'},
                { model = 'nforce11' }
            }
        },
        ['chief'] = {
            ['grade'] = 'chief',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' },
                { model = 'nforce1'},
                { model = 'nforce11' }
            }
        },
        ['boss'] = {
            ['grade'] = 'boss',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' },
                { model = 'nforce3' },
                { model = 'nforce10' },
                { model = 'nforce1'},
                { model = 'nforce11' }
            }
        }
    },
    ['King Tunes'] = {
        ['novice'] = {
            ['grade'] = 'novice',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' }
            }
        }
    }
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