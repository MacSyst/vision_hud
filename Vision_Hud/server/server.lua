local players = 0
ESX = exports["es_extended"]:getSharedObject()

AddEventHandler('esx:playerLoaded', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        players = players + 1
    end
end)

AddEventHandler('esx:playerDropped', function(source)
    players = players - 1
end)


function ShowPlayers()
    TriggerClientEvent('vision_hud:setPlayers', -1, players)
    SetTimeout(5000, ShowPlayers)
end

ShowPlayers()
