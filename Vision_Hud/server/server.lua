ESX = exports["es_extended"]:getSharedObject()

function ShowPlayers()
	local xPlayers = ESX.GetPlayers()
	PlayersOnline = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        PlayersOnline = PlayersOnline + 1
	end
    TriggerClientEvent('vision_hud:setPlayers', -1, PlayersOnline)
    SetTimeout(5000, ShowPlayers)
end

ShowPlayers()