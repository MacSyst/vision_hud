local OnlinePlayers = 0

RegisterNetEvent("vision_hud:setPlayers")
AddEventHandler("vision_hud:setPlayers", function(players)
    OnlinePlayers = players
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerId = GetPlayerServerId(PlayerId())

        SendNUIMessage({
            id = playerId,
            playersonline = OnlinePlayers,
        })
    end
end)
