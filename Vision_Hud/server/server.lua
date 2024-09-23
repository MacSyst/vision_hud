SetConvarServerInfo('tags', 'Vision-Scripts')

function ShowPlayers()
    local PlayersOnline = 0
    local players = GetPlayers()

    for i = 1, #players do
        PlayersOnline = PlayersOnline + 1
    end

    TriggerClientEvent('vision_hud:setPlayers', -1, PlayersOnline)
    SetTimeout(5000, ShowPlayers)
end

ShowPlayers()
