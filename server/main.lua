ESX = exports['es_extended']:getSharedObject()

AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        Wait(1000)
        TriggerClientEvent("esx-shellspawner:spawnShells", -1, Config.Shells)
    end
end)

AddEventHandler("onResourceStop", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        TriggerClientEvent("esx-shellspawner:clearShells", -1)
    end
end)
