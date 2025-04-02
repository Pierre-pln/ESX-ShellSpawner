QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        Wait(1000)
        TriggerClientEvent("gr-shellspawner:spawnShells", -1, Config.Shells)
    end
end)

AddEventHandler("onResourceStop", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        TriggerClientEvent("gr-shellspawner:clearShells", -1)
    end
end)
