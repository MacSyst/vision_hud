local OnlinePlayers = 0

RegisterNetEvent("vision_hud:setPlayers")
AddEventHandler("vision_hud:setPlayers", function(players)
    OnlinePlayers = players
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        while ESX.GetPlayerData().job == nil do
            Citizen.Wait(10)
        end

        ESX.PlayerData = ESX.GetPlayerData()
        
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            playersonline = OnlinePlayers,
        })
    end
end)
