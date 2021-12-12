local QBCore = exports['qb-core']:GetCoreObject()

-- Main Event

RegisterServerEvent("dilza_crafting:craft")
AddEventHandler("dilza_crafting:craft", function(item, retrying)
    local src = source
    craft(src, item, retrying)
end)

RegisterServerEvent("dilza_crafting:itemCrafted")
AddEventHandler("dilza_crafting:itemCrafted", function(item, count)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Config.Recipes[item].SuccessRate > math.random(0, Config.Recipes[item].SuccessRate) then
        if Config.Recipes[item].isGun then
            Player.Functions.AddItem(item, 1)
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        else
            Player.Functions.AddItem(item, count)
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        end
        print("Yes :)")
        Player.Functions.SetMetaData("craftingrep", Player.PlayerData.metadata["craftingrep"]+(Config.ExperiancePerCraft))
    else
        print("No :(")
    end
end)

-- Main Function

function craft(src, item)
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local cancraft = false
    local total = 0
    local count = 0
    local reward = Config.Recipes[item].count
    
    for k, v in pairs(Config.Recipes[item].Ingredients) do
        total = total + 1
        local mat = xPlayer.Functions.GetItemByName(k)
        if mat ~= nil and mat.amount >= v then
            count = count + 1
        end
    end
    if total == count then
        cancraft = true
    else
        print("No :(")
    end

    if cancraft then
        for k, v in pairs(Config.Recipes[item].Ingredients) do
            if not Config.PermanentItems[k] then
                print(k)
                xPlayer.Functions.RemoveItem(k, v)
                TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[k], "remove")
            end
        end
        TriggerClientEvent("dilza_crafting:craftStart", src, item, reward)
    end
end
