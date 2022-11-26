fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'GaDGeT#8987'
description 'Garage system for ESX,QBCore and King Core'
version '1.1.2'

-- Code --

client_script {
    'client/cl_main.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_main.lua'
}

shared_script {
    '@ox_lib/init.lua',
    'config/config.lua'
}

-- UI --

ui_page 'html/index.html'
files {
    'html/index.html',
    'html/css/style.css',
    'html/js/script.js'
}

-- Misc --

exports {
    'InsideGarageZone',
    'InsideJobGarageZone',
    'InsideImpoundZone'
}