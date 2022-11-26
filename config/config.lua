Config = {}

-- Configuration --

Config.Framework = 'esx'
Config.DevMode = true
Config.ImpoundName = 'Impound'
Config.ControlPressing = false
Config.BlipLocations = { 
    ['PoliceImpounds'] = {
        { x = 442.25198, y = -1025.273, z = 28.715545 }
    },

    ['Impounds'] = {
        { x = 488.87152, y = -1313.118, z = 29.258459 },
        { x = 408.00949, y = -1636.939, z = 29.291952 },
        { x = 449.56762, y = -1968.298, z = 22.938747 },
        { x = 53.27016, y = -2566.453, z = 6.0045919 },
        { x = 776.49993, y = -2968.878, z = 5.8007206 },
        { x = -779.218, y = -2445.433, z = 14.570728 },
        { x = -740.5903, y = -1305.141, z = 5.000379 },
        { x = -1074.937, y = -1266.892, z = 5.9157404 }
    },

    ['Garages'] = {
        { x = 227.60412, y = -781.9088, z = 30.722974, blip }, -- Central Parking
        { x = 128.84950, y = -1069.903, z = 29.192344, blip }, -- Garage Legion behind Fleeca
        { x = 283.16525, y = -332.9557, z = 44.919830, blip }, -- Occupation Avenue
        { x = -335.2485, y = -759.4322, z = 53.379806, blip }, -- Red Parking
        { x = -72.48514, y = 6556.2993, z = 31.490812, blip }, -- Paleto Bay Near Clotheshop
        { x = 1791.9431, y = 4582.7250, z = 37.029750, blip }, -- Greap Seat Vegetable Shop
        { x = 10.359484, y = 6338.7075, z = 31.233154, blip }, -- Paleto Bay Chicken Parking
        { x = -776.9307, y = 5555.5063, z = 32.870132, blip }, -- Paleto Bay Near The Lift
        { x = 593.83795, y = 2731.2763, z = 41.379890, blip }, -- Sandy Harmony Mall
        { x = -273.1866, y = 6052.6816, z = 31.539558, blip }, -- Paleto Bay Infront of the Ammunationshop
        { x = -1911.480, y = 2050.7512, z = 140.73753, blip }, -- Vinarna
        { x = -2212.659, y = 4249.9545, z = 47.263767, blip }, -- Rokeri
        { x = 143.41383, y = 6609.5512, z = 31.444637, blip }, -- Paleto Bay Gas Station
        { x = 419.61569, y = -1332.577, z = 30.415050, blip }, -- Medical Centre
        { x = 469.58786, y = 3574.0764, z = 33.238582, blip }, -- Sandy Marina Drive
        { x = 1863.2821, y = 2604.2917, z = 45.672729, blip }, -- Prison
        { x = 1958.3137, y = 3768.8649, z = 32.201774, blip }, -- Sandy Main Gas Station
        { x = 1539.2220, y = 3770.8291, z = 34.050098, blip }, -- Sandy Near Boatshop
        { x = 2001.3833, y = 3071.0788, z = 47.049774, blip }, -- Sandy Yellow Jack
        { x = 692.11328, y = 636.97308, z = 128.60437, blip }, -- Vinewood Bowl
        { x = -318.7546, y = -921.5314, z = 31.605886, blip }, -- Parking near Red
        { x = -56.06664, y = -1833.635, z = 26.655824, blip }, -- Groove Street do benzinonstanciqta
        { x = -331.1633, y = -2731.302, z = 6.0250148, blip }, -- Nqkude do vodata
        { x = -2032.317, y = -460.7234, z = 11.462878, blip } -- Great Ocean Highway

    }
}

Config.Locations = {
    ['PoliceImpound'] = {
        [1] = { x = 449.41671, y = -1025.208, z = 28.585042, h = 188.27088, distance = 1.5, garageid = 'PoliceImpound', policeimpoundzone }
    },

    ['Impound'] = {
        ['Impound'] = { x = 486.8348, y = -1308.405, z = 29.260835, h = 232.95101, distance = 1.5, garageid = 'Impound', impoundzone },
        ['Impound2'] = { x = 416.81744, y = -1628.055, z = 29.291938, h = 322.79992, distance = 1.5, garageid = 'Impound2', impoundzone },
        ['Impound3'] = { x = 420.04788, y = -1638.866, z = 29.291929, h = 271.5086, distance = 1.5, garageid = 'Impound3', impoundzone },
        ['Impound4'] = { x = 418.03948, y = -1645.921, z = 29.291929, h = 232.68969, distance = 1.5, garageid = 'Impound4', impoundzone },
        ['Impound5'] = { x = 449.60653, y = -1961.479, z = 22.968311, h = 359.1278, distance = 1.5, garageid = 'Impound5', impoundzone },
        ['Impound6'] = { x = 453.95385, y = -1966.669, z = 22.960746, h = 359.06469, distance = 1.5, garageid = 'Impound6', impoundzone },
        ['Impound7'] = { x = 49.043972, y = -2567.012, z = 6.0045933, h = 174.60736, distance = 1.5, garageid = 'Impound7', impoundzone },
        ['Impound8'] = { x = 45.943729, y = -2567.041, z = 6.0045933, h = 176.14433, distance = 1.5, garageid = 'Impound8', impoundzone },
        ['Impound9'] = { x = 780.62084, y = -2953.893, z = 5.8007173, h = 248.2496, distance = 1.5, garageid = 'Impound9', impoundzone },
        ['Impound10'] = { x = 781.09155, y = -2969.012, z = 5.8007187, h = 254.5487, distance = 1.5, garageid = 'Impound10', impoundzone },
        ['Impound11'] = { x = 769.00067, y = -2963.563, z = 5.8007202, h = 282.73971, distance = 1.5, garageid = 'Impound11', impoundzone },
        ['Impound12'] = { x = 768.88616, y = -2974.821, z = 5.8007202, h = 295.2951, distance = 1.5, garageid = 'Impound12', impoundzone },
        ['Impound13'] = { x = -779.218, y = -2445.433, z = 14.570728, h = 336.74612, distance = 1.5, garageid = 'Impound13', impoundzone },
        ['Impound14'] = { x = -785.5524, y = -2441.524, z = 14.570716, h = 335.22256, distance = 1.5, garageid = 'Impound14', impoundzone },
        ['Impound15'] = { x = -740.5903, y = -1305.141, z = 5.000379, h = 231.85606, distance = 1.5, garageid = 'Impound15', impoundzone },
        ['Impound16'] = { x = -744.778, y = -1310.367, z = 5.0003795, h = 232.75369, distance = 1.5, garageid = 'Impound16', impoundzone },
        ['Impound17'] = { x = -1074.937, y = -1266.892, z = 5.9157404, h = 119.34638, distance = 1.5, garageid = 'Impound17', impoundzone },
        ['Impound18'] = { x = -1078.517, y = -1260.7, z = 5.7181844, h = 125.37468, distance = 1.5, garageid = 'Impound18', impoundzone },
    },

    ['JobGarages'] = {
        ['kcpd'] = {
            ['KCPD1'] = { x = 445.84762, y = -994.1708, z = 25.699855, h = 90.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD1', parkingzone },
            ['KCPD2'] = { x = 446.18252, y = -988.8669, z = 25.699842, h = 90.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD2', parkingzone },
            ['KCPD3'] = { x = 437.13143, y = -994.4346, z = 25.699861, h = 280.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD3', parkingzone },
            ['KCPD4'] = { x = 437.67630, y = -988.9340, z = 25.700178, h = 280.0, distance = 1.5, job = 'kcpd', garageid = 'KCPD4', parkingzone }
        },
    
        ['king_tunes'] = {
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
       [48] = { x = -308.0500, y = -757.3692, z = 33.968517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [49] = { x = -305.4132, y = -758.4147, z = 33.968517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [50] = { x = -295.5803, y = -762.0117, z = 33.968521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [51] = { x = -292.8646, y = -763.0910, z = 33.968521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [52] = { x = -356.6981, y = -756.6427, z = 38.768421, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [53] = { x = -342.0922, y = -757.1981, z = 38.769474, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [54] = { x = -337.3471, y = -751.4211, z = 38.768563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [55] = { x = -331.6111, y = -751.4358, z = 38.768563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [56] = { x = -323.0417, y = -752.2080, z = 38.768505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [57] = { x = -317.6162, y = -754.2041, z = 38.768505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [58] = { x = -341.0766, y = -767.0043, z = 38.769402, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [59] = { x = -308.0500, y = -757.3692, z = 38.768517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [60] = { x = -305.4132, y = -758.4147, z = 38.768517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [61] = { x = -295.5803, y = -762.0117, z = 38.768521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [62] = { x = -292.8646, y = -763.0910, z = 38.768521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [63] = { x = -356.6981, y = -756.6427, z = 43.568421, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [64] = { x = -342.0922, y = -757.1981, z = 43.569474, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [65] = { x = -337.3471, y = -751.4211, z = 43.568563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [66] = { x = -331.6111, y = -751.4358, z = 43.568563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [67] = { x = -323.0417, y = -752.2080, z = 43.568505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [68] = { x = -317.6162, y = -754.2041, z = 43.568505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [69] = { x = -341.0766, y = -767.0043, z = 43.569402, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [70] = { x = -308.0500, y = -757.3692, z = 43.568517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [71] = { x = -305.4132, y = -758.4147, z = 43.568517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [72] = { x = -295.5803, y = -762.0117, z = 43.568521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [73] = { x = -292.8646, y = -763.0910, z = 43.568521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [74] = { x = -356.6981, y = -756.6427, z = 48.468421, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [75] = { x = -342.0922, y = -757.1981, z = 48.469474, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [76] = { x = -337.3471, y = -751.4211, z = 48.468563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [77] = { x = -331.6111, y = -751.4358, z = 48.468563, h = 0.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [78] = { x = -323.0417, y = -752.2080, z = 48.468505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [79] = { x = -317.6162, y = -754.2041, z = 48.468505, h = 340.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [80] = { x = -341.0766, y = -767.0043, z = 48.469402, h = 90.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [81] = { x = -308.0500, y = -757.3692, z = 48.468517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [82] = { x = -305.4132, y = -758.4147, z = 48.468517, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [83] = { x = -295.5803, y = -762.0117, z = 48.468521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [84] = { x = -292.8646, y = -763.0910, z = 48.468521, h = 160.0, distance = 1.5, parkingname = 'Red Parking', parkingzone }, -- Red Parking
       [85] = { x = -285.5708, y = -887.9297, z = 31.081377, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [86] = { x = -296.6306, y = -885.9479, z = 31.081401, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [87] = { x = -303.8171, y = -884.3505, z = 31.081399, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [88] = { x = -310.9593, y = -882.7553, z = 31.081405, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [89] = { x = -321.7398, y = -880.4890, z = 31.074375, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [90] = { x = -328.9865, y = -878.6110, z = 31.072868, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [91] = { x = -336.3926, y = -876.8497, z = 31.072200, h = 350.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [92] = { x = -334.7403, y = -891.3906, z = 31.072208, h = 170.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [93] = { x = -327.4536, y = -893.2092, z = 31.072948, h = 170.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [94] = { x = -320.1462, y = -893.9978, z = 31.073898, h = 170.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [95] = { x = -313.0846, y = -896.2574, z = 31.075883, h = 170.0, distance = 1.5, parkingname = 'Parking near Red', parkingzone }, -- Parking near Red
       [96] = { x = 118.84507, y = -1069.338, z = 29.192350, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
       [97] = { x = 125.63401, y = -1069.660, z = 29.192348, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
       [98] = { x = 132.02522, y = -1069.918, z = 29.212230, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
       [99] = { x = 138.68869, y = -1069.909, z = 29.192377, h = 180.0, distance = 1.5, parkingname = 'Vespucci Boulevard', parkingzone }, -- Гаража зад fleeca до legion-а
       [100] = { x = 174.49397, y = -1012.009, z = 29.298437, h = 25.0, distance = 1.5, parkingname = 'Vespucci Boulevard 2', parkingzone }, -- Гаража пред fleeca до legion-а
       [101] = { x = 185.44444, y = -1015.458, z = 29.275678, h = 25.0, distance = 1.5, parkingname = 'Vespucci Boulevard 2', parkingzone }, -- Гаража пред fleeca до legion-а
       [102] = { x = 199.36233, y = -844.4554, z = 30.642433, h = 250.0, distance = 1.5, parkingname = 'Strawberry Avenue', parkingzone }, -- Гаража пред главен до legion-а
       [103] = { x = 210.80523, y = -848.5175, z = 30.354686, h = 250.0, distance = 1.5, parkingname = 'Strawberry Avenue', parkingzone }, -- Гаража пред главен до legion-а
       [104] = { x = 221.19888, y = -852.4896, z = 30.091753, h = 250.0, distance = 1.5, parkingname = 'Strawberry Avenue', parkingzone }, -- Гаража пред главен до legion-а
       [105] = { x = 232.51823, y = -856.3204, z = 29.808135, h = 250.0, distance = 1.5, parkingname = 'Strawberry Avenue', parkingzone }, -- Гаража пред главен до legion-а
       [106] = { x = 244.04896, y = -860.5477, z = 29.519498, h = 250.0, distance = 1.5, parkingname = 'Strawberry Avenue', parkingzone }, -- Гаража пред главен до legion-а
       [107] = { x = 347.02902, y = -950.5923, z = 29.406021, h = 310.0, distance = 1.5, parkingname = 'Atlee Street', parkingzone }, -- Гаража пред главен до legion-а
       [108] = { x = 355.80227, y = -951.6441, z = 29.438610, h = 310.0, distance = 1.5, parkingname = 'Atlee Street', parkingzone }, -- Гаража пред главен до legion-а
       [109] = { x = 365.45425, y = -952.0783, z = 29.423566, h = 310.0, distance = 1.5, parkingname = 'Atlee Street', parkingzone }, -- Гаража пред главен до legion-а
       [110] = { x = 458.71890, y = -925.0467, z = 35.972232, h = 300.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [111] = { x = 458.40039, y = -917.7383, z = 35.972232, h = 300.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [112] = { x = 464.75289, y = -905.1392, z = 35.972240, h = 120.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [113] = { x = 464.57156, y = -894.5847, z = 35.972240, h = 120.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [114] = { x = 471.21713, y = -895.1936, z = 35.972236, h = 240.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [115] = { x = 469.90447, y = -905.4692, z = 35.972213, h = 240.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [116] = { x = 484.56036, y = -909.1324, z = 35.972232, h = 290.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [117] = { x = 484.40618, y = -902.1239, z = 35.972240, h = 290.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [118] = { x = 484.33697, y = -894.6495, z = 35.972190, h = 290.0, distance = 1.5, parkingname = 'Sinner Street', parkingzone }, -- Гаража до РПУ
       [119] = { x = 467.59378, y = -1151.691, z = 29.291791, h = 90.0,  distance = 1.5, parkingname = 'Adam Apple Boulevard', parkingzone }, -- Гараж до полицейска школа
       [120] = { x = 450.70199, y = -1157.721, z = 29.291765, h = 267.0, distance = 1.5, parkingname = 'Adam Apple Boulevard', parkingzone }, -- Гараж до полицейска школа
       [121] = { x = 444.21487, y = -1163.837, z = 29.291856, h = 86.0, distance = 1.5, parkingname = 'Adam Apple Boulevard', parkingzone }, -- Гараж до полицейска школа
       [122] = { x = 419.37414, y = -1304.29, z = 32.203155, h = 145.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [123] = { x = 404.4772, y = -1292.241, z = 33.553688, h = 137.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [124] = { x = 387.35464, y = -1295.432, z = 33.553688, h = 44.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [125] = { x = 410.45394, y = -1297.036, z = 33.442657, h = 141.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [126] = { x = 379.39208, y = -1303.614, z = 33.55368, h = 226.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [127] = { x = 374.5238, y = -1322.744, z = 33.553691, h = 321.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [128] = { x = 392.45785, y = -1318.511, z = 33.66629, h = 319.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [129] = { x = 412.79925, y = -1318.058, z = 35.387508, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [130] = { x = 410.83004, y = -1332.841, z = 35.995288, h = 142.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [131] = { x = 423.99938, y = -1344.054, z = 35.746246, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [132] = { x = 437.79751, y = -1339.322, z = 34.875473, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [133] = { x = 446.17468, y = -1347.302, z = 33.64796, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [134] = { x = 440.8952, y = -1359.011, z = 33.553638, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [135] = { x = 465.58026, y = -1353.734, z = 33.553638, h = 235.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [136] = { x = 458.57199, y = -1337.803, z = 33.553638, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [137] = { x = 446.99481, y = -1327.508, z = 32.163219, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [138] = { x = 431.15646, y = -1315.004, z = 36.053478, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [139] = { x = 444.06494, y = -1325.477, z = 36.717052, h = 323.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [140] = { x = 455.45523, y = -1335.474, z = 38.430393, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [141] = { x = 465.78005, y = -1353.535, z = 38.553451, h = 50.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [142] = { x = 461.63278, y = -1357.856, z = 38.553413, h = 50.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [143] = { x = 454.55584, y = -1366.502, z = 38.553413, h = 50.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [144] = { x = 448.33123, y = -1373.789, z = 38.559459, h = 50.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [145] = { x = 434.51586, y = -1372.013, z = 38.56364, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [146] = { x = 429.14266, y = -1367.131, z = 38.451999, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [147] = { x = 382.82089, y = -1329.882, z = 38.446144, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [148] = { x = 374.9653, y = -1322.568, z = 38.553882, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [149] = { x = 377.97848, y = -1307.447, z = 38.553855, h = 230.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [150] = { x = 386.76519, y = -1295.431, z = 38.553882, h = 230.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [151] = { x = 399.48214, y = -1287.283, z = 38.553756, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [152] = { x = 407.4656, y = -1294.751, z = 38.553695, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [153] = { x = 416.72323, y = -1301.359, z = 37.711803, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [154] = { x = 424.48675, y = -1309.687, z = 36.354026, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [155] = { x = 407.00442, y = -1330.804, z = 40.770397, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [156] = { x = 412.7207, y = -1318.109, z = 40.384239, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [157] = { x = 404.24877, y = -1310.74, z = 38.994449, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [158] = { x = 398.23257, y = -1305.506, z = 38.553733, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [159] = { x = 395.35494, y = -1321.356, z = 38.995449, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [160] = { x = 395.35494, y = -1321.356, z = 43.995449, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [161] = { x = 404.24877, y = -1310.74, z = 43.994449, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [162] = { x = 398.23257, y = -1305.506, z = 43.553733, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [163] = { x = 412.7207, y = -1318.109, z = 45.384239, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [164] = { x = 407.00442, y = -1330.804, z = 45.770397, h = 320.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [165] = { x = 424.48675, y = -1309.687, z = 41.354026, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [166] = { x = 416.72323, y = -1301.359, z = 42.711803, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [167] = { x = 407.4656, y = -1294.751, z = 43.553695, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [168] = { x = 424.31417, y = -1309.787, z = 31.359748, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [169] = { x = 441.0195, y = -1323.562, z = 31.354194, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [170] = { x = 452.5953, y = -1333.003, z = 33.122047, h = 140.0, distance = 1.5, parkingname = 'Crusade Road', parkingzone }, -- Medical Centre
       [171] = { x = 335.27059, y = -1241.395, z = 30.585046, h = 180.0, distance = 1.5, parkingname = 'Benzinonstanciq1', parkingzone }, -- Гараж до бензинонстанция
       [172] = { x = 328.42404, y = -1241.606, z = 30.584972, h = 180.0, distance = 1.5, parkingname = 'Benzinonstanciq1', parkingzone }, -- Гараж до бензинонстанция
       [173] = { x = 318.54885, y = -1241.507, z = 30.14874, h = 1.0, distance = 1.5, parkingname = 'Benzinonstanciq1', parkingzone }, -- Гараж до бензинонстанция
       [174] = { x = 311.6268, y = -1240.898, z = 29.813634, h = 1.0, distance = 1.5, parkingname = 'Benzinonstanciq1', parkingzone }, -- Гараж до бензинонстанция
       [175] = { x = 278.53103, y = -1241.763, z = 29.19775, h = 3.0, distance = 1.5, parkingname = 'Benzinonstanciq2', parkingzone }, -- Гараж до бензинонстанция
       [179] = { x = 298.4761, y = -1241.887, z = 29.290887, h = 2.0, distance = 1.5, parkingname = 'Benzinonstanciq2', parkingzone }, -- Гараж до бензинонстанция
       [180] = { x = 291.83084, y = -1241.8, z = 29.251855, h = 180.0, distance = 1.5, parkingname = 'Benzinonstanciq2', parkingzone }, -- Гараж до бензинонстанция
       [181] = { x = 285.05184, y = -1241.267, z = 29.224016, h = 180.0, distance = 1.5, parkingname = 'Benzinonstanciq2', parkingzone }, -- Гараж до бензинонстанция
       [182] = { x = 102.46593, y = -1397.393, z = 29.275629, h = 140.0, distance = 1.5, parkingname = 'Strawberry Avenue Clotheshop', parkingzone }, -- Гараж до магазин за дрехи
       [183] = { x = 108.29087, y = -1402.625, z = 29.27473, h = 140.0, distance = 1.5, parkingname = 'Strawberry Avenue Clotheshop', parkingzone }, -- Гараж до магазин за дрехи
       [184] = { x = 148.42967, y = -1444.415, z = 29.141626, h = 320.0, distance = 1.5, parkingname = 'PMG', parkingzone }, -- Гараж до някво заведение
       [185] = { x = 154.0352, y = -1449.355, z = 29.141647, h = 320.0, distance = 1.5, parkingname = 'PMG', parkingzone }, -- Гараж до някво заведение
       [186] = { x = 159.38796, y = -1453.477, z = 29.141647, h = 320.0, distance = 1.5, parkingname = 'PMG', parkingzone }, -- Гараж до някво заведение
       [187] = { x = 164.66828, y = -1457.909, z = 29.141647, h = 320.0, distance = 1.5, parkingname = 'PMG', parkingzone }, -- Гараж до някво заведение
       [188] = { x = 169.95324, y = -1462.398, z = 29.141647, h = 320.0, distance = 1.5, parkingname = 'PMG', parkingzone }, -- Гараж до някво заведение
       [189] = { x = 447.47409, y = -1522.779, z = 29.269996, h = 135.0, distance = 1.5, parkingname = 'RDM', parkingzone }, -- Рандом паркинг
       [190] = { x = 442.06295, y = -1519.019, z = 29.275262, h = 140.0, distance = 1.5, parkingname = 'RDM', parkingzone }, -- Рандом паркинг
       [191] = { x = 437.50164, y = -1515.141, z = 29.283266, h = 140.0, distance = 1.5, parkingname = 'RDM', parkingzone }, -- Рандом паркинг
       [192] = { x = 436.35894, y = -1473.949, z = 29.301868, h = 280.0, distance = 1.5, parkingname = 'RDM2', parkingzone }, -- Рандом паркинг2
       [193] = { x = 439.55609, y = -1479.544, z = 29.301233, h = 110.0, distance = 1.5, parkingname = 'RDM2', parkingzone }, -- Рандом паркинг2
       [194] = { x = 441.27578, y = -1485.096, z = 29.300868, h = 110.0, distance = 1.5, parkingname = 'RDM2', parkingzone }, -- Рандом паркинг2
       [195] = { x = 678.35235, y = 620.20343, z = 128.91108, h = 330.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [196] = { x = 672.16424, y = 623.09765, z = 128.91108, h = 160.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [197] = { x = 668.59478, y = 610.96667, z = 128.91108, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [198] = { x = 674.93676, y = 608.35003, z = 128.91108, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [199] = { x = 681.57659, y = 605.87292, z = 128.91108, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [200] = { x = 696.25799, y = 600.46179, z = 128.91111, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [201] = { x = 702.80212, y = 597.88867, z = 128.91111, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [202] = { x = 700.19903, y = 613.62335, z = 128.91131, h = 160.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [203] = { x = 706.28302, y = 610.83862, z = 128.9113, h = 160.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [204] = { x = 712.97442, y = 608.63763, z = 128.9113, h = 160.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [205] = { x = 723.39251, y = 655.06237, z = 128.91131, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [206] = { x = 714.52728, y = 660.96826, z = 128.91131, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [207] = { x = 706.85559, y = 662.98419, z = 128.91131, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [208] = { x = 698.29718, y = 666.17553, z = 128.91131, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [209] = { x = 690.4057, y = 669.57861, z = 128.91131, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [210] = { x = 682.09063, y = 672.82391, z = 128.91111, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [211] = { x = 674.11846, y = 675.35827, z = 128.9111, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [212] = { x = 666.22552, y = 678.07214, z = 128.91108, h = 190.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [213] = { x = 662.06738, y = 626.70037, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [214] = { x = 660.58087, y = 623.43884, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [215] = { x = 659.12384, y = 620.1723, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Рандом паркинг2
       [216] = { x = 658.41094, y = 616.70739, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [217] = { x = 657.08697, y = 613.32214, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [218] = { x = 655.86987, y = 610.14379, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [219] = { x = 654.53179, y = 607.01245, z = 128.91108, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [220] = { x = 652.93621, y = 603.91308, z = 128.91107, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [221] = { x = 652.28686, y = 600.45953, z = 128.91094, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [222] = { x = 651.46661, y = 597.18206, z = 128.91094, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [223] = { x = 649.69866, y = 593.73382, z = 128.91094, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [224] = { x = 648.48828, y = 590.56842, z = 128.91094, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [225] = { x = 652.46447, y = 604.10174, z = 128.91094, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [226] = { x = 648.40991, y = 632.26086, z = 128.9109, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [227] = { x = 648.11798, y = 628.72222, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [228] = { x = 645.9624, y = 625.66375, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [229] = { x = 644.40374, y = 622.61968, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [230] = { x = 643.70379, y = 619.32092, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [231] = { x = 642.94238, y = 615.8048, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [232] = { x = 641.04016, y = 612.7124, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [233] = { x = 639.94927, y = 609.34387, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [234] = { x = 638.48132, y = 606.21697, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [235] = { x = 637.99017, y = 602.68341, z = 128.91108, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [236] = { x = 639.21588, y = 635.7669, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [237] = { x = 639.03186, y = 631.95648, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [238] = { x = 637.91186, y = 628.69836, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [239] = { x = 636.41571, y = 625.41906, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [240] = { x = 634.99438, y = 622.13458, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [241] = { x = 633.66595, y = 618.89306, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [242] = { x = 632.60034, y = 615.71368, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [243] = { x = 631.39654, y = 612.25823, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [244] = { x = 630.13134, y = 609.15136, z = 128.91101, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [245] = { x = 642.20831, y = 588.23028, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [246] = { x = 638.49163, y = 588.78765, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [247] = { x = 635.18444, y = 589.74725, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [248] = { x = 631.7918, y = 590.80804, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [249] = { x = 628.30645, y = 591.85437, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [250] = { x = 625.00207, y = 592.62976, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [251] = { x = 621.81915, y = 594.0158, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [252] = { x = 618.56494, y = 595.36407, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [253] = { x = 615.37811, y = 596.64459, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [254] = { x = 611.98089, y = 597.80267, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [255] = { x = 608.85266, y = 599.75213, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [256] = { x = 605.66564, y = 600.96954, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [257] = { x = 602.41546, y = 602.19964, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [258] = { x = 599.09808, y = 603.2207, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [259] = { x = 595.63092, y = 604.41986, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [260] = { x = 592.46685, y = 606.29559, z = 128.91091, h = 340.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [261] = { x = 624.00378, y = 637.57537, z = 128.9111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [262] = { x = 621.29327, y = 631.13348, z = 128.9111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [263] = { x = 619.10101, y = 624.56182, z = 128.9111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [264] = { x = 616.83398, y = 617.77416, z = 128.9111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [265] = { x = 614.58587, y = 611.16241, z = 128.9111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [266] = { x = 612.73712, y = 637.90893, z = 128.91111, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [267] = { x = 611.05761, y = 630.87512, z = 128.91111, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [268] = { x = 608.44433, y = 624.53881, z = 128.91111, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [269] = { x = 606.36413, y = 617.80163, z = 128.91111, h = 70.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [270] = { x = 589.95654, y = 611.85052, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [271] = { x = 592.3731, y = 618.51287, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [272] = {x = 594.86584, y = 625.13598, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [273] = { x = 596.75866, y = 631.87048, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [274] = { x = 599.38043, y = 638.19213, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [275] = { x = 601.91363, y = 644.79309, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [276] = { x = 601.16442, y = 645.0465, z = 128.91111, h = 250.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [277] = { x = 622.53948, y = 656.6596, z = 128.91111, h = 105.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [278] = { x = 616.17913, y = 654.97314, z = 128.91111, h = 105.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [279] = { x = 609.5675, y = 653.21783, z = 128.91108, h = 105.0, distance = 1.5, parkingname = 'BW', parkingzone }, -- Vinewood bowl
       [280] = { x = 1876.8286, y = 2614.9931, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [281] = { x = 1876.9372, y = 2618.7575, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [282] = { x = 1877.0938, y = 2622.3547, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [283] = { x = 1876.5408, y = 2625.673, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [284] = { x = 1876.492, y = 2629.1706, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [285] = { x = 1876.4688, y = 2632.802, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [286] = { x = 1876.4031, y = 2636.1203, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [287] = { x = 1876.3469, y = 2639.7543, z = 45.672729, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [289] = { x = 1876.2813, y = 2643.3569, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [290] = { x = 1876.4173, y = 2646.6525, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [291] = { x = 1876.6824, y = 2653.5676, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [292] = { x = 1876.5523, y = 2657.1574, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [293] = { x = 1876.6336, y = 2660.7775, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [294] = { x = 1876.7048, y = 2664.1596, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [295] = { x = 1876.8214, y = 2667.7841, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [296] = { x = 1876.8438, y = 2671.3593, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [297] = { x = 1877.3543, y = 2595.3574, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [298] = { x = 1877.217, y = 2591.9001, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [300] = { x = 1876.8302, y = 2588.238, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [301] = { x = 1876.9875, y = 2584.9501, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [302] = { x = 1877.5004, y = 2581.2907, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [303] = { x = 1877.2634, y = 2577.7656, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [304] = { x = 1876.9237, y = 2574.2114, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [305] = { x = 1876.5561, y = 2570.7607, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [306] = { x = 1876.5023, y = 2567.2116, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [307] = { x = 1876.8111, y = 2563.6735, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [308] = { x = 1876.8221, y = 2560.4038, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [309] = { x = 1876.9672, y = 2556.8051, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [310] = { x = 1876.9487, y = 2553.4121, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [311] = { x = 1877.0842, y = 2549.8469, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [312] = { x = 1876.5939, y = 2546.2641, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [313] = { x = 1876.4722, y = 2542.8876, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [314] = { x = 1876.3624, y = 2539.4189, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [315] = { x = 1876.5819, y = 2535.7431, z = 45.67274, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [316] = { x = 1868.9443, y = 2535.9067, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [317] = { x = 1869.132, y = 2542.977, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [318] = { x = 1868.9278, y = 2550.08, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [319] = { x = 1869.3535, y = 2556.8095, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [320] = { x = 1869.5113, y = 2563.7314, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [321] = { x = 1869.4996, y = 2570.9555, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [322] = { x = 1869.5855, y = 2577.7839, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [323] = { x = 1869.7373, y = 2584.7045, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [324] = { x = 1869.4497, y = 2591.7475, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [325] = { x = 1869.7679, y = 2595.3295, z = 45.672756, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [326] = { x = 1869.1295, y = 2615.3305, z = 45.672752, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [327] = { x = 1869.3784, y = 2621.9753, z = 45.672752, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [328] = { x = 1869.1094, y = 2629.2221, z = 45.672718, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [329] = { x = 1869.3879, y = 2635.9934, z = 45.672718, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [330] = { x = 1869.5804, y = 2643.0964, z = 45.671825, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [331] = { x = 1869.1022, y = 2650.0454, z = 45.671825, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [332] = { x = 1869.8637, y = 2657.1376, z = 45.671825, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [333] = { x = 1870.1802, y = 2664.205, z = 45.671825, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [334] = { x = 1869.1166, y = 2671.0905, z = 45.671825, h = 90.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [335] = { x = 1877.1535, y = 2674.684, z = 45.671825, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [336] = { x = 1855.337, y = 2620.5034, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [337] = { x = 1855, y = 2627.9379, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [338] = { x = 1855.0187, y = 2635.3583, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [339] = { x = 1854.4809, y = 2642.8149, z = 45.671821, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [340] = { x = 1854.3564, y = 2650.1291, z = 45.671821, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [341] = { x = 1854.0725, y = 2657.4899, z = 45.671821, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [342] = { x = 1854.1632, y = 2664.8593, z = 45.671821, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [343] = { x = 1854.4783, y = 2668.781, z = 45.671821, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [344] = { x = 1854.8625, y = 2578.531, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [345] = { x = 1854.6375, y = 2571.3937, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [346] = { x = 1854.994, y = 2563.9238, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [347] = { x = 1854.5111, y = 2556.6303, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [348] = { x = 1854.5296, y = 2548.8559, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [349] = { x = 1854.7899, y = 2541.8325, z = 45.672725, h = 270.0, distance = 1.5, parkingname = 'Prison', parkingzone }, -- Prison
       [350] = { x = 1994.109, y = 3071.833, z = 47.04467, h = 240.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [351] = { x = 1992.909, y = 3069.394, z = 47.049251, h = 240.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [352] = { x = 1994.9749, y = 3064.0795, z = 47.049167, h = 150.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [353] = { x = 1999.8372, y = 3060.3806, z = 47.049293, h = 150.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [354] = { x = 2007.9073, y = 3060.0705, z = 47.049991, h = 240.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [355] = { x = 2010.1146, y = 3062.3408, z = 47.049999, h = 240.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [356] = { x = 2006.8491, y = 3068.872, z = 47.049949, h = 330.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [357] = { x = 2003.3767, y = 3072.09, z = 47.050693, h = 330.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [358] = { x = 2012.1302, y = 3055.2312, z = 47.051086, h = 60.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [359] = { x = 2014.1163, y = 3059.6889, z = 47.050006, h = 60.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [360] = { x = 2015.894, y = 3063.373, z = 47.049999, h = 60.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [361] = { x = 2017.9149, y = 3067.4619, z = 47.064563, h = 60.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [362] = { x = 2015.4626, y = 3071.8129, z = 47.069007, h = 150.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [363] = { x = 2011.4287, y = 3072.8669, z = 47.067672, h = 150.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [364] = { x = 2008.6568, y = 3075.3237, z = 47.062496, h = 150.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [365] = { x = 2002.291, y = 3076.9074, z = 47.057186, h = 150.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [366] = { x = 1991.1962, y = 3076.2438, z = 47.023605, h = 240.0, distance = 1.5, parkingname = 'Kruchma', parkingzone }, -- Do kruchma
       [367] = { x = 1963.1529, y = 3766.8315, z = 32.196826, h = 30.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [368] = { x = 1959.6547, y = 3764.8459, z = 32.199169, h = 30.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [369] = { x = 1955.9868, y = 3762.7761, z = 32.201709, h = 30.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [370] = { x = 1952.8647, y = 3760.925, z = 32.203773, h = 30.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [371] = { x = 1949.5167, y = 3758.801, z = 32.205886, h = 30.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [372] = { x = 1926.8923, y = 3752.2263, z = 32.31071, h = 120.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [373] = { x = 1928.6916, y = 3748.7192, z = 32.306774, h = 300.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [374] = { x = 1930.8233, y = 3745.246, z = 32.306594, h = 300.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [375] = { x = 1932.5437, y = 3742.6906, z = 32.304794, h = 300.0, distance = 1.5, parkingname = 'Pale', parkingzone }, -- Paleto
       [376] = { x = 1708.2303, y = 3752.1472, z = 34.072776, h = 225.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
       [377] = { x = 1705.3502, y = 3749.3771, z = 34.00172, h = 225.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
       [378] = { x = 1702.3537, y = 3746.4606, z = 33.937435, h = 225.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
       [379] = { x = 1707.4621, y = 3762.7849, z = 34.27206, h = 320.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
       [380] = { x = 1704.4088, y = 3765.2958, z = 34.377769, h = 320.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
       [381] = { x = 1704.9664, y = 3772.3137, z = 34.509067, h = 220.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
        [382] = { x = 1708.7464, y = 3774.8579, z = 34.498447, h = 215.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
        [383] = { x = 1712.2058, y = 3777.2104, z = 34.502376, h = 220.0, distance = 1.5, parkingname = 'PaleORUJEEN', parkingzone }, -- Pred Orujeen Pale
        [384] = { x = 1542.5323, y = 3780.4726, z = 34.050083, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [385] = { x = 1546.2714, y = 3782.3554, z = 34.060546, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [386] = { x = 1549.8747, y = 3784.0087, z = 34.071445, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [387] = { x = 1557.247, y = 3788.6716, z = 34.097053, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [388] = { x = 1523.8917, y = 3767.0197, z = 34.050239, h = 220.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [389] = { x = 1516.8344, y = 3762.8293, z = 34.028266, h = 200.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [390] = { x = 1511.3802, y = 3761.1926, z = 34.005802, h = 200.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [391] = { x = 1497.8835, y = 3759.9311, z = 33.92403, h = 215.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [392] = { x = 1495.5845, y = 3757.8674, z = 33.900993, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [393] = { x = 1492.6118, y = 3755.9931, z = 33.872512, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [394] = { x = 1486.8583, y = 3752.9582, z = 33.806552, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [395] = { x = 1483.7785, y = 3751.4804, z = 33.773143, h = 215.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [396] = { x = 1481.2763, y = 3749.601, z = 33.744049, h = 215.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [397] = { x = 1478.7443, y = 3747.986, z = 33.713211, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [398] = { x = 1475.9665, y = 3746.2575, z = 33.677429, h = 205.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [399] = { x = 1473.0189, y = 3744.7272, z = 33.645664, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [400] = { x = 1467.1542, y = 3741.6362, z = 33.586143, h = 215.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [401] = { x = 1461.3468, y = 3738.8339, z = 33.534225, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [402] = { x = 1458.8377, y = 3737.3999, z = 33.514068, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [403] = { x = 1455.7841, y = 3735.833, z = 33.489402, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [404] = { x = 1453.1815, y = 3734.5759, z = 33.470344, h = 210.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [405] = { x = 1449.483, y = 3733.5578, z = 33.452018, h = 205.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [406] = { x = 1446.7133, y = 3732.3745, z = 33.441646, h = 205.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [407] = { x = 1464.4821, y = 3740.1091, z = 33.56042, h = 215.0, distance = 1.5, parkingname = 'PaleLODKI', parkingzone }, -- Pred boat house /golqm parking/
        [408] = { x = 1424.1304, y = 3624.4438, z = 34.869361, h = 195.0, distance = 1.5, parkingname = 'PaleRN', parkingzone }, -- Ramdom maluk parking
        [409] = { x = 1420.2899, y = 3623.6025, z = 34.8582, h = 200.0, distance = 1.5, parkingname = 'PaleRN', parkingzone }, -- Ramdom maluk parking
        [410] = { x = 1416.4652, y = 3622.8737, z = 34.859519, h = 200.0, distance = 1.5, parkingname = 'PaleRN', parkingzone }, -- Ramdom maluk parking
        [410] = { x = 899.44763, y = 3645.9956, z = 32.761466, h = 95.0, distance = 1.5, parkingname = 'PaleRNMG', parkingzone }, -- Ramdom maluk parking do magazin
        [411] = { x = 899.6217, y = 3649.4204, z = 32.760162, h = 95.0, distance = 1.5, parkingname = 'PaleRNMG', parkingzone }, -- Ramdom maluk parking do magazin
        [412] = { x = 899.40838, y = 3653.4101, z = 32.761577, h = 90.0, distance = 1.5, parkingname = 'PaleRNMG', parkingzone }, -- Ramdom maluk parking do magazin
        [413] = { x = 475.57, y = 3567.0588, z = 33.238597, h = 350.0, distance = 1.5, parkingname = 'Paleguz', parkingzone }, -- Gr. v guza na geografiqta - pale
        [414] = { x = 472.36212, y = 3568.8266, z = 33.238597, h = 350.0, distance = 1.5, parkingname = 'Paleguz', parkingzone }, -- Gr. v guza na geografiqta - pale
        [415] = { x = 468.68246, y = 3568.1962, z = 33.238597, h = 350.0, distance = 1.5, parkingname = 'Paleguz', parkingzone }, -- Gr. v guza na geografiqta - pale
        [416] = { x = 461.15338, y = 3570.2458, z = 33.238597, h = 350.0, distance = 1.5, parkingname = 'Paleguz', parkingzone }, -- Gr. v guza na geografiqta - pale
        [417] = { x = 457.60598, y = 3570.7583, z = 33.238597, h = 350.0, distance = 1.5, parkingname = 'Paleguz', parkingzone }, -- Gr. v guza na geografiqta - pale
        [418] = { x = 329.91778, y = 3457.9304, z = 35.995597, h = 215.0, distance = 1.5, parkingname = 'Palekur', parkingzone }, -- Gr. v guza na geografiqta - pale2
        [419] = { x = 315.28732, y = 3447.1213, z = 36.367954, h = 40.0, distance = 1.5, parkingname = 'Palekur', parkingzone }, -- Gr. v guza na geografiqta - pale2
        [420] = { x = 322.32662, y = 3452.2653, z = 36.188461, h = 30.0, distance = 1.5, parkingname = 'Palekur', parkingzone }, -- Gr. v guza na geografiqta - pale2
        [421] = { x = 1691.4855, y = 4762.2441, z = 41.921482, h = 90.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [422] = { x = 1690.8715, y = 4766.5986, z = 41.921482, h = 90.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [423] = { x = 1690.8563, y = 4770.3798, z = 41.921482, h = 90.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [424] = { x = 1690.6387, y = 4774.166, z = 41.921482, h = 90.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [425] = { x = 1690.4008, y = 4778.3164, z = 41.921482, h = 85.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [426] = { x = 1691.1409, y = 4782.1752, z = 41.921482, h = 90.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [427] = { x = 1691.4655, y = 4788.2119, z = 41.921482, h = 90.0, distance = 1.5, parkingname = 'arcadekur', parkingzone }, -- ne znam, nqkude
        [428] = { x = 1785.0812, y = 4584.1049, z = 37.470142, h = 190.0, distance = 1.5, parkingname = 'nqkuvparkingk', parkingzone }, -- ne znam, nqkude1
        [429] = { x = 1789.3062, y = 4584.5444, z = 37.361492, h = 190.0, distance = 1.5, parkingname = 'nqkuvparkingk', parkingzone }, -- ne znam, nqkude1
        [430] = { x = 1793.4427, y = 4585.2998, z = 37.217895, h = 190.0, distance = 1.5, parkingname = 'nqkuvparkingk', parkingzone }, -- ne znam, nqkude1
        [431] = { x = 1797.4613, y = 4586.1557, z = 37.179908, h = 190.0, distance = 1.5, parkingname = 'nqkuvparkingk', parkingzone }, -- ne znam, nqkude1
        [432] = { x = 1801.0849, y = 4586.7563, z = 37.083538, h = 190.0, distance = 1.5, parkingname = 'nqkuvparkingk', parkingzone }, -- ne znam, nqkude1
        [433] = { x = 1719.8002, y = 6410.0375, z = 33.90023, h = 160.0, distance = 1.5, parkingname = 'paletupp', parkingzone }, -- ne znam, nqkude2
        [434] = { x = 1722.5391, y = 6408.4614, z = 34.105995, h = 160.0, distance = 1.5, parkingname = 'paletupp', parkingzone }, -- ne znam, nqkude2
        [435] = { x = 1726.9556, y = 6406.7924, z = 34.312103, h = 160.0, distance = 1.5, parkingname = 'paletupp', parkingzone }, -- ne znam, nqkude2
        [436] = { x = 1729.8562, y = 6405.2602, z = 34.49435, h = 160.0, distance = 1.5, parkingname = 'paletupp', parkingzone }, -- ne znam, nqkude2
        [437] = { x = 1732.4827, y = 6404.2558, z = 34.631572, h = 160.0, distance = 1.5, parkingname = 'paletupp', parkingzone }, -- ne znam, nqkude2
        [438] = { x = 1735.3649, y = 6401.8066, z = 34.889293, h = 150.0, distance = 1.5, parkingname = 'paletupp', parkingzone }, -- ne znam, nqkude2
        [439] = { x = 146.06834, y = 6611.0507, z = 31.832977, h = 2.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [440] = { x = 150.9111, y = 6606.0717, z = 31.873329, h = 1.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [441] = { x = 155.86256, y = 6601.1689, z = 31.850757, h = 2.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [442] = { x = 155.73623, y = 6593.7104, z = 31.844869, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [443] = { x = 150.97021, y = 6599.1831, z = 31.844867, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [444] = { x = 146.01387, y = 6603.9741, z = 31.854295, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [445] = { x = 140.82211, y = 6607.9155, z = 31.844867, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [446] = { x = 181.25891, y = 6632.6704, z = 31.572488, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [447] = { x = 184.5982, y = 6632.7895, z = 31.560388, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [448] = { x = 188.03335, y = 6632.0942, z = 31.558134, h = 180.0, distance = 1.5, parkingname = 'fdsfdsfds', parkingzone }, -- Pale, do benzinostanciq
        [449] = { x = 94.756271, y = 6373.3085, z = 31.225761, h = 15.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale,  glaven garaj 
        [450] = { x = 80.71553, y = 6366.3237, z = 31.229078, h = 15.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale,   glaven garaj
        [451] = { x = 77.219009, y = 6364.5283, z = 31.229063, h = 15.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale,  glaven garaj 
        [452] = { x = 73.761062, y = 6363.3251, z = 31.22974, h  = 10.0 , distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [453] = { x = 70.349571, y = 6361.3579, z = 31.22948, h = 15.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale,   glaven garaj
        [454] = { x = 80.68338, y = 6396.0273, z = 31.225759, h = 130.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale,  glaven garaj
        [455] = { x = 77.688858, y = 6398.4125, z = 31.225759, h = 130.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [456] = { x = 75.329643, y = 6401.5205, z = 31.225759, h = 310.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj     
        [457] = { x = 72.585296, y = 6404.0009, z = 31.225759, h = 310.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [458] = { x = 64.596359, y = 6406.8447, z = 31.225763, h = 30.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale,  glaven garaj
        [459] = { x = 61.913909, y = 6403.7988, z = 31.225763, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj
        [460] = { x = 59.347621, y = 6400.4096, z = 31.225763, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [461] = { x = 65.822227, y = 6380.3007, z = 31.239854, h = 40.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [462] = { x = 62.784832, y = 6377.601, z = 31.239854, h = 30.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [463] = { x = 60.471309, y = 6374.6743, z = 31.239854, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [464] = { x = 54.497528, y = 6367.4638, z = 31.239852, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [465] = { x = 51.700813, y = 6364.833, z = 31.239852, h = 30.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [466] = { x = 48.357315, y = 6362.1518, z = 31.239852, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [467] = { x = 50.869312, y = 6393.2998, z = 31.225759, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [468] = { x = 45.205001, y = 6387.7978, z = 31.225759, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [469] = { x = 40.027832, y = 6381.8779, z = 31.225761, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [470] = { x = 27.828655, y = 6368.7182, z = 31.228237, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [471] = { x = 22.533889, y = 6363.6, z = 31.229833, h = 220.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj
        [472] = { x = 16.834997, y = 6358.2231, z = 31.230594, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [473] = { x = 11.341585, y = 6353.2143, z = 31.228738, h = 30.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [474] = { x = 25.073074, y = 6346.0283, z = 31.239852, h = 30.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [475] = { x = 31.10774, y = 6350.727, z = 31.239852, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj  
        [476] = { x = 31.260028, y = 6333.4096, z = 31.231134, h = 15.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [477] = { x = 24.359283, y = 6329.4614, z = 31.231122, h = 20.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [478] = { x = 17.685094, y = 6325.4184, z = 31.2308, h = 200.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [479] = { x = 10.857374, y = 6321.4692, z = 31.230691, h = 200.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [480] = { x = 7.4290928, y = 6319.7607, z = 31.230998, h = 200.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [481] = { x = -16.99109, y = 6324.5278, z = 31.231233, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [482] = { x = -11.19311, y = 6329.7119, z = 31.230789, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [483] = { x = -5.972865, y = 6335.7167, z = 31.230037, h = 215.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [484] = { x = -0.142228, y = 6341.2011, z = 31.229427, h = 210.0, distance = 1.5, parkingname = 'paleglgrr', parkingzone }, -- Pale, glaven garaj 
        [485] = { x = -80.34783, y = 6333.8916, z = 31.490358, h = 230.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [486] = { x = -74.84728, y = 6339.1875, z = 31.490348, h = 220.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [487] = { x = -77.22373, y = 6347.4843, z = 31.490375, h = 50.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [488] = { x = -82.56845, y = 6341.3598, z = 31.490371, h = 230.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [489] = { x = -81.52261, y = 6357.706, z = 31.490365, h = 230.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [490] = { x = -87.67256, y = 6352.2426, z = 31.490365, h = 220.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [491] = { x = -93.19934, y = 6347.103, z = 31.490365, h = 230.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [492] = { x = -98.5202, y = 6341.9487, z = 31.490365, h = 227.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [493] = { x = -101.1457, y = 6338.9101, z = 31.490365, h = 227.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [494] = { x = -77.00537, y = 6335.7148, z = 31.490367, h = 225.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [495] = { x = -72.31363, y = 6342.1884, z = 31.490375, h = 230.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [496] = { x = -79.3841, y = 6344.0307, z = 31.490371, h = 50.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [497] = { x = -85.16925, y = 6338.8159, z = 31.490371, h = 50.0, distance = 1.5, parkingname = 'motelpalep', parkingzone }, -- Pale, motel parking
        [498] = { x = -136.3396, y = 6309.1171, z = 31.498687, h = 315.0, distance = 1.5, parkingname = 'jhgjgfjyjgh', parkingzone }, -- Pale, malki random mesta
        [499] = { x = -139.4916, y = 6311.8286, z = 31.517263, h = 135.0, distance = 1.5, parkingname = 'jhgjgfjyjgh', parkingzone }, -- Pale, malki random mesta
        [500] = { x = -129.0923, y = 6285.5297, z = 31.355598, h = 230.0, distance = 1.5, parkingname = 'hjhgjhg', parkingzone }, -- Pale, maluk parking
        [501] = { x = -131.9942, y = 6283.9335, z = 31.349796, h = 40.0, distance = 1.5, parkingname = 'hjhgjhg', parkingzone }, -- Pale, maluk parking
        [502] = { x = -133.596, y = 6280.9267, z = 31.349153, h = 40.0, distance = 1.5, parkingname = 'hjhgjhg', parkingzone }, -- Pale, maluk parking
        [503] = { x = -136.4993, y = 6279.1088, z = 31.343732, h = 223.0, distance = 1.5, parkingname = 'hjhgjhg', parkingzone }, -- Pale, maluk parking
        [504] = { x = -138.6574, y = 6276.4843, z = 31.341178, h = 221.0, distance = 1.5, parkingname = 'hjhgjhg', parkingzone }, -- Pale, maluk parking
        [505] = { x = -140.9123, y = 6274.0898, z = 31.338113, h = 225.0, distance = 1.5, parkingname = 'hjhgjhg', parkingzone }, -- Pale, maluk parking
        [506] = { x = -133.01, y = 6262.2597, z = 31.135612, h = 262.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [507] = { x = -129.7449, y = 6265.9248, z = 31.121335, h = 260.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [508] = { x = -125.586, y = 6268.9125, z = 31.128803, h = 260.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [509] = { x = -135.4776, y = 6258.6337, z = 31.149354, h = 266.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [510] = { x = -139.1397, y = 6255.6489, z = 31.159139, h = 265.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [511] = { x = -143.0192, y = 6252.4008, z = 31.169832, h = 258.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [512] = { x = -145.5561, y = 6248.9033, z = 31.174831, h = 266.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [513] = { x = -149.6397, y = 6245.6196, z = 31.175699, h = 261.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [514] = { x = -152.9753, y = 6242.3715, z = 31.177793, h = 260.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [515] = { x = -155.6052, y = 6238.9829, z = 31.179441, h = 256.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [516] = { x = -159.252, y = 6235.541, z = 31.178562, h = 270.0, distance = 1.5, parkingname = 'jhfhts', parkingzone }, -- Pale, malki parkomesta
        [517] = { x = -149.3488, y = 6361.5541, z = 31.4906, h = 222.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [518] = { x = -152.3019, y = 6359.0175, z = 31.49076, h = 230.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [519] = { x = -154.2049, y = 6356.29, z = 31.49061, h = 47.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [520] = { x = -136.9245, y = 6357.1494, z = 31.49061, h = 232.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [521] = { x = -133.4746, y = 6348.9658, z = 31.490701, h = 41.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [522] = { x = -136.1046, y = 6346.5659, z = 31.490741, h = 45.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [523] = { x = -139.3408, y = 6344.7148, z = 31.49076, h = 44.0, distance = 1.5, parkingname = 'bankomatpaleg', parkingzone }, -- Pale, do nqkuv bankomat garaj
        [524] = { x = -37.46723, y = 6536.3706, z = 31.490926, h = 136.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [525] = { x = -39.62951, y = 6539.4829, z = 31.490915, h = 137.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [526] = { x = -42.09671, y = 6541.7431, z = 31.490907, h = 140.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [527] = { x = -44.54986, y = 6544.3286, z = 31.490852, h = 133.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [528] = { x = -46.77216, y = 6546.6909, z = 31.490852, h = 140.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [529] = { x = -48.9319, y = 6549.3676, z = 31.490852, h = 140.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [530] = { x = -54.28603, y = 6554.3779, z = 31.490852, h = 138.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [531] = { x = -58.92493, y = 6559.5004, z = 31.490852, h = 136.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [532] = { x = -63.7574, y = 6563.9584, z = 31.490816, h = 137.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [533] = { x = -74.73564, y = 6567.4941, z = 31.490697, h = 225.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [534] = { x = -77.74288, y = 6566.0507, z = 31.490806, h = 224.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [535] = { x = -80.39267, y = 6563.559, z = 31.490806, h = 230.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [536] = { x = -83.10721, y = 6561.2871, z = 31.490806, h = 221.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [537] = { x = -85.91388, y = 6558.7968, z = 31.490806, h = 226.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [538] = { x = -91.35901, y = 6549.1464, z = 31.490806, h = 316.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [539] = { x = -86.51237, y = 6544.4775, z = 31.490806, h = 321.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [540] = { x = -84.1581, y = 6542.0932, z = 31.490806, h = 314.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [541] = { x = -88.90698, y = 6546.8461, z = 31.49081, h = 315.0, distance = 1.5, parkingname = 'magzpalegp', parkingzone }, -- Pred magazin, pale
        [542] = { x = -266.9694, y = 6067.7812, z = 31.464534, h = 124.0, distance = 1.5, parkingname = 'dofrusfrus', parkingzone }, -- Pred pojarnikarite pale
        [543] = { x = -394.6133, y = 6111.666, z = 31.339189, h = 320.0, distance = 1.5, parkingname = 'dofrusfrus', parkingzone }, -- Pred pojarnikarite pale
        [544] = { x = -270.4123, y = 6070.0913, z = 31.464664, h = 124.0, distance = 1.5, parkingname = 'nqkuvgarajpale2', parkingzone }, -- Pale, garaj2
        [545] = { x = -263.9682, y = 6065.1044, z = 31.464401, h = 124.0, distance = 1.5, parkingname = 'nqkuvgarajpale2', parkingzone }, -- Pale, garaj2
        [546] = { x = -260.74, y = 6062.8056, z = 31.57481, h = 126.0, distance = 1.5, parkingname = 'nqkuvgarajpale2', parkingzone }, -- Pale, garaj2
        [547] = { x = -258.4037, y = 6059.6367, z = 31.730741, h = 308.0, distance = 1.5, parkingname = 'nqkuvgarajpale2', parkingzone }, -- Pale, garaj2
        [548] = { x = -256.3231, y = 6056.8378, z = 31.963943, h = 307.0, distance = 1.5, parkingname = 'nqkuvgarajpale2', parkingzone }, -- Pale, garaj2
        [549] = { x = -393.9714, y = 6062.0004, z = 31.500116, h = 203.0, distance = 1.5, parkingname = 'jhgjukjh', parkingzone }, -- Pale, malki parkomesta
        [550] = { x = -396.9717, y = 6059.8183, z = 31.500116, h = 207.0, distance = 1.5, parkingname = 'Paleto', parkingzone }, -- Pale, malki parkomesta
        [551] = { x = -772.8292, y = 5563.4306, z = 33.485706, h = 90.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [552] = { x = -771.7587, y = 5566.5766, z = 33.485706, h = 90.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [553] = { x = -771.5506, y = 5569.4873, z = 33.485706, h = 90.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [554] = { x = -771.5968, y = 5572.6113, z = 33.485706, h = 90.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [555] = { x = -771.5188, y = 5575.4467, z = 33.485706, h = 90.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [556] = { x = -771.5559, y = 5578.4082, z = 33.485706, h = 90.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [557] = { x = -762.8879, y = 5548.06, z = 33.486045, h = 180.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [558] = { x = -759.3514, y = 5548.6118, z = 33.485683, h = 180.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [559] = { x = -755.7969, y = 5548.6293, z = 33.485683, h = 180.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [560] = { x = -752.2785, y = 5548.4116, z = 33.485691, h = 180.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [561] = { x = -743.9077, y = 5536.9008, z = 33.485683, h = 30.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [562] = { x = -746.5933, y = 5534.8208, z = 33.485683, h = 30.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [563] = { x = -749.5722, y = 5532.478, z = 33.485683, h = 210.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [564] = { x = -752.9428, y = 5531.0112, z = 33.485668, h = 210.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [565] = { x = -756.5592, y = 5529.7993, z = 33.48524, h = 30.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [566] = { x = -759.5278, y = 5527.5844, z = 33.484699, h = 215.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [567] = { x = -762.6182, y = 5525.9833, z = 33.484264, h = 30.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [568] = { x = -765.3184, y = 5523.562, z = 33.483348, h = 210.0, distance = 1.5, parkingname = 'Procopio Promenade', parkingzone }, -- Преди палето, лифта
        [569] = { x = -2196.802, y = 4269.6694, z = 48.538562, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [570] = { x = -2194.113, y = 4268.0415, z = 48.560462, h = 150.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [571] = { x = -2191.706, y = 4266.3876, z = 48.61457, h = 150.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [572] = { x = -2192.197, y = 4247.1015, z = 48.020328, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [573] = { x = -2194.61, y = 4245.0297, z = 47.911056, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [574] = { x = -2197.3, y = 4243.7177, z = 47.9136, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [575] = { x = -2205.529, y = 4247.7255, z = 47.616443, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [576] = { x = -2207.838, y = 4245.6547, z = 47.642219, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [577] = { x = -2210.755, y = 4244.6811, z = 47.576866, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [578] = { x = -2212.12, y = 4241.1318, z = 47.589214, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [579] = { x = -2214.918, y = 4239.5224, z = 47.422286, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [580] = { x = -2217.132, y = 4237.852, z = 47.341487, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [581] = { x = -2218.578, y = 4233.8955, z = 47.294898, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [582] = { x = -2220.993, y = 4232.0283, z = 47.158069, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [583] = { x = -2223.242, y = 4230.1459, z = 47.084934, h = 40.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Rokeri
        [584] = { x = -1918.707, y = 2056.8647, z = 140.73568, h = 260.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [585] = { x = -1919.213, y = 2052.8767, z = 140.73568, h = 260.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [586] = { x = -1919.815, y = 2048.7434, z = 140.73568, h = 260.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [587] = { x = -1920.572, y = 2044.556, z = 140.7356, h = 260.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [588] = { x = -1923.067, y = 2040.2497, z = 140.7350, h = 260.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [589] = { x = -1923.833, y = 2036.3836, z = 140.73509, h = 260.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [590] = { x = -1906.432, y = 2021.1342, z = 140.78977, h = 270.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [591] = { x = -1906.473, y = 2017.0972, z = 140.94279, h = 270.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [592] = { x = -1906.212, y = 2013.1434, z = 141.24075, h = 270.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [593] = { x = -1906.075, y = 2008.9216, z = 141.5624, h = 270.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [594] = { x = -1906.136, y = 2004.6796, z = 141.82119, h = 270.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [595] = { x = -1906.251, y = 2000.2448, z = 141.99693, h = 270.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [596] = { x = -1895.592, y = 2034.46, z = 140.7414500, h = 160.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [597] = { x = -1899.751, y = 2035.7899, z = 140.74035, h = 160.0, distance = 1.5, parkingname = 'Buen Vino Road', parkingzone }, -- Vinarna
        [598] = { x = 584.34075, y = 2721.5781, z = 42.06020700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [599] = { x = 581.0935, y = 2721.333, z = 42.0602070000, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [600] = { x = 578.23797, y = 2720.758, z = 42.060207000, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [601] = { x = 575.15814, y = 2720.8178, z = 42.06020700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [602] = { x = 572.11071, y = 2720.1457, z = 42.06020700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [603] = { x = 568.81243, y = 2719.1696, z = 42.06020700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [604] = { x = 565.70019, y = 2719.124, z = 42.060207000, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [605] = { x = 562.88385, y = 2719.1809, z = 42.06020700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [606] = { x = 559.78912, y = 2719.2221, z = 42.06020700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [607] = { x = 602.69213, y = 2722.3449, z = 41.89175700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [608] = { x = 605.78771, y = 2722.6406, z = 41.89175700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [609] = { x = 608.72106, y = 2723.0363, z = 41.89175700, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [610] = { x = 611.9107, y = 2723.4196, z = 41.891757000, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [611] = { x = 615.03741, y = 2723.4443, z = 41.88486400, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [612] = { x = 618.04901, y = 2723.9809, z = 41.85452200, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [613] = { x = 621.3255, y = 2724.3127, z = 41.828632000, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [614] = { x = 624.20074, y = 2724.6264, z = 41.80524800, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [615] = { x = 626.90893, y = 2724.9697, z = 41.79790400, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [616] = { x = 629.85064, y = 2725.2949, z = 41.79497999, h = 5.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [617] = { x = 623.12371, y = 2738.7358, z = 41.971622, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [618] = { x = 620.15246, y = 2738.6887, z = 41.965553, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [619] = { x = 617.05126, y = 2738.1953, z = 41.953350, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [620] = { x = 614.29772, y = 2737.914, z = 41.9516600, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [621] = { x = 610.87701, y = 2737.6098, z = 41.965934, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [622] = { x = 607.90124, y = 2737.3791, z = 41.967185, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [623] = { x = 604.87646, y = 2737.2741, z = 41.991008, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [624] = { x = 601.90673, y = 2737.1052, z = 41.992900, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [625] = { x = 598.78948, y = 2736.7829, z = 42.060287, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [626] = { x = 595.36810, y = 2737.1140, z = 42.060249, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [627] = { x = 592.67016, y = 2736.9389, z = 42.060249, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [628] = { x = 589.33563, y = 2736.8015, z = 42.060218, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [629] = { x = 586.69555, y = 2736.3188, z = 42.059200, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [630] = { x = 583.25488, y = 2736.6740, z = 41.994796, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [631] = { x = 580.55334, y = 2736.2500, z = 42.015193, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [632] = { x = 577.39385, y = 2736.0100, z = 42.019519, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [633] = { x = 574.28912, y = 2735.9699, z = 42.053508, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [634] = { x = 570.98358, y = 2735.0048, z = 42.060142, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [635] = { x = 568.03845, y = 2734.5661, z = 42.060134, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [636] = { x = 565.17016, y = 2734.3986, z = 42.060134, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [637] = { x = 562.09918, y = 2734.1196, z = 42.060134, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [638] = { x = 559.08300, y = 2733.7934, z = 42.060134, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [639] = { x = 555.63244, y = 2733.3859, z = 42.060134, h = 185.0, distance = 1.5, parkingname = 'Route68', parkingzone }, -- Do magazin za drehi, Sandi
        [640] = { x = 736.97766, y = 2512.4724, z = 73.225395, h = 270.0, distance = 1.5, parkingname = 'Rebel', parkingzone }, -- Rebel ,maluk parking
        [641] = { x = 736.47100, y = 2519.3498, z = 73.212989, h = 270.0, distance = 1.5, parkingname = 'Rebel', parkingzone }, -- Rebel ,maluk parking
        -----------------------------------------------------------------------------------------------------------------------------------------------
        [642] = { x = 459.90576, y = -1083.616, z = 29.202810, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [643] = { x = 459.43624, y = -1091.165, z = 29.202768, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [644] = { x = 459.31301, y = -1098.591, z = 29.201538, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [645] = { x = 459.02023, y = -1109.007, z = 29.200412, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [646] = { x = 472.53094, y = -1109.103, z = 29.199598, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [647] = { x = 472.23669, y = -1102.632, z = 29.200830, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [648] = { x = 472.39691, y = -1095.824, z = 29.202032, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [649] = { x = 472.50347, y = -1088.841, z = 29.203899, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [650] = { x = 485.56896, y = -1102.586, z = 29.200819, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [651] = { x = 485.35223, y = -1109.188, z = 29.199649, h = 80.00, distance = 1.5, parkingname = 'Near MRPD', parkingzone }, -- Garaj do RPU
        [652] = { x = -326.9849, y = -1495.046, z = 30.67218, h = 0.0000, distance = 1.5, parkingname = 'Gas Station Innocence Boulevard', parkingzone }, -- Benzinonstanciq
        [653] = { x = -330.2414, y = -1495.059, z = 30.669889, h = 0.000, distance = 1.5, parkingname = 'Gas Station Innocence Boulevard', parkingzone }, -- Benzinonstanciq
        [654] = { x = -333.3588, y = -1494.695, z = 30.645008, h = 0.000, distance = 1.5, parkingname = 'Gas Station Innocence Boulevard', parkingzone }, -- Benzinonstanciq
        [655] = { x = -336.5367, y = -1494.517, z = 30.616523, h = 0.000, distance = 1.5, parkingname = 'Gas Station Innocence Boulevard', parkingzone }, -- Benzinonstanciq
        [656] = { x = -62.75103, y = -1840.507, z = 26.683807, h = 320.0, distance = 1.5, parkingname = 'Grove Street', parkingzone }, -- Garaj Groove Street
        [657] = { x = -60.11374, y = -1842.68, z = 26.583816, h = 320.00, distance = 1.5, parkingname = 'Grove Street', parkingzone }, -- Garaj Groove Street
        [658] = { x = -56.97837, y = -1844.501, z = 26.478771, h = 320.0, distance = 1.5, parkingname = 'Grove Street', parkingzone }, -- Garaj Groove Street
        [659] = { x = -54.3247, y = -1846.998, z = 26.369958, h= 320.000, distance = 1.5, parkingname = 'Grove Street', parkingzone }, -- Garaj Groove Street
        [660] = { x = -51.75278, y = -1848.89, z = 26.273418, h= 320.000, distance = 1.5, parkingname = 'Grove Street', parkingzone }, -- Garaj Groove Street
        [661] = { x = -44.72821, y = -1840.927, z = 26.202911, h = 144.0, distance = 1.5, parkingname = 'Grove Street', parkingzone }, -- Garaj Groove Street
        [662] = { x = -59.16369, y = -1745.715, z = 29.351448, h = 54.628005, distance = 1.5, parkingname = 'Grove Street Gas Station', parkingzone }, -- Garaj Groove Street
        [663] = { x = -57.38534, y = -1743.208, z = 29.355722, h = 51.258850, distance = 1.5, parkingname = 'Grove Street Gas Station', parkingzone }, -- Garaj Groove Street
        [664] = { x = -51.31116, y = -1762.02, z = 29.10713, h = 231.5482300, distance = 1.5, parkingname = 'Grove Street Gas Station', parkingzone }, -- Garaj Groove Street
        [665] = { x = -54.34522, y = -1764.074, z = 28.945116, h = 53.748622, distance = 1.5, parkingname = 'Grove Street Gas Station', parkingzone }, -- Garaj Groove Street
        [666] = { x = -338.889, y = -2737.189, z = 6.0356016, h = 315.00, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [667] = { x = -336.8903, y = -2739.398, z = 6.0317058, h = 315.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [668] = { x = -334.6516, y = -2741.626, z = 6.0276103, h = 315.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [669] = { x = -332.6263, y = -2744.392, z = 6.0237307, h = 315.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [670] = { x = -330.3676, y = -2746.287, z = 6.0200681, h = 315.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [671] = { x = -327.8132, y = -2748.496, z = 6.0152812, h = 315.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [672] = { x = -325.5519, y = -2750.993, z = 6.011496, h = 315.00, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [673] = { x = -313.8648, y = -2739.022, z = 6.0028123, h = 137.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [674] = { x = -318.3732, y = -2734.662, z = 6.004796, h = 129.05, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [675] = { x = -320.7633, y = -2731.835, z = 6.0056123, h = 140.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [676] = { x = -322.8147, y = -2729.821, z = 6.008902, h = 130.00, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [677] = { x = -324.9114, y = -2727.406, z = 6.0085372, h = 130.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [678] = { x = -327.5473, y = -2725.031, z = 6.0098381, h = 130.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [679] = { x = -329.4511, y = -2723.149, z = 6.0088291, h = 130.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [680] = { x = -332.0167, y = -2720.823, z = 6.0066895, h = 130.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [681] = { x = -334.0043, y = -2718.612, z = 6.0049304, h = 130.0, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [682] = { x = -316.0682, y = -2736.842, z = 6.003086, h = 130.00, distance = 1.5, parkingname = 'Plaice place', parkingzone }, -- Do vodichka
        [683] = { x = -2051.286, y = -448.8803, z = 11.407938, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [684] = { x = -2048.987, y = -451.1124, z = 11.404816, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [685] = { x = -2046.778, y = -452.9971, z = 11.404516, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [686] = { x = -2044.147, y = -455.0076, z = 11.407381, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [687] = { x = -2041.889, y = -457.1177, z = 11.404523, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [688] = { x = -2039.333, y = -458.9783, z = 11.408491, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [689] = { x = -2037.023, y = -460.8849, z = 11.409029, h = 140.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [690] = { x = -2064.228, y = -453.0922, z = 11.638699, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [691] = { x = -2061.941, y = -455.9956, z = 11.680035, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [692] = { x = -2059.61, y = -458.1794, z = 11.686021, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [693] = { x = -2057.36, y = -460.2564, z = 11.690912, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [694] = { x = -2049.727, y = -466.3872, z = 11.679973, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [695] = { x = -2047.362, y = -468.2142, z = 11.675124, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [696] = { x = -2044.789, y = -470.2901, z = 11.667093, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [697] = { x = -2042.347, y = -472.3358, z = 11.652577, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [698] = { x = -2040.087, y = -474.0328, z = 11.635981, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [699] = { x = -2033.291, y = -479.8599, z = 11.685334, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [700] = { x = -2031.051, y = -481.7519, z = 11.699561, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [701] = { x = -2029.133, y = -483.8572, z = 11.719941, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [702] = { x = -2026.216, y = -485.7655, z = 11.705181, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [703] = { x = -2024.145, y = -487.5836, z = 11.712049, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [704] = { x = -2017.494, y = -493.076, z = 11.707118, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [705] = { x = -2015.299, y = -495.0838, z = 11.708938, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [706] = { x = -2013.072, y = -497.0268, z = 11.70047, h = 320.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [707] = { x = -2005.402, y = -487.7564, z = 11.409651, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [708] = { x = -2007.83, y = -485.624, z = 11.410303, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [709] = { x = -2012.078, y = -481.3266, z = 11.418776, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [710] = { x = -2017.088, y = -477.5171, z = 11.412234, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [712] = { x = -2021.567, y = -473.361, z = 11.417022, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [713] = { x = -2024.228, y = -471.6069, z = 11.410237, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [714] = { x = -2019.337, y = -475.7934, z = 11.409697, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka
        [715] = { x = -2014.573, y = -479.7837, z = 11.410697, h = 145.0, distance = 1.5, parkingname = 'Great Ocean Highway', parkingzone }, -- Do vodichka

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
    ['kcpd'] = {
        [0] = {
            ['grade'] = 'kadet',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' }
            }
        },
        [1] = {
            ['grade'] = 'third_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' }
            }
        },
        [2] = {
            ['grade'] = 'second_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' }
            }
        },
        [3] = {
            ['grade'] = 'first_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' }
            }
        },
        [4] = {
            ['grade'] = 'serjant_first_grade',
            ['whitelisted_vehicles'] = {
                { model = 'nforce7' },
                { model = 'policebretro' },
                { model = 'nforce6' },
                { model = 'nforce9' },
                { model = 'polthrust' }
            }
        },
        [5] = {
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
        [6] = {
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
        [7] = {
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
        [8] = {
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
        [9] = {
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
        [10] = {
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
        [11] = {
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
        [12] = {
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
