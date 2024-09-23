fx_version 'cerulean'
game 'gta5'

description 'Vision_Hud'
author 'benrizzz'

version '1.0.0'

lua54 'yes'

shared_script '@es_extended/imports.lua'

ui_page 'ui/ui.html'

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua',
}

files {
    'ui/css/ui.css',
    'ui/img/logo.png',
    'ui/script/ui.js',
    'ui/ui.html'
}
