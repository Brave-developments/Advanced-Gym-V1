local QBCore = exports['qb-core']:GetCoreObject()



local function addItem(source, item, count)
    if config.inventory == 'ox_inventory' then
        return exports['ox_inventory']:AddItem(source, item, count)
    elseif config.inventory == 'qb-inventory' then
        return exports['qb-inventory']:AddItem(source, item, count)
    elseif config.inventory == 'ps-inventory' then
        return exports['ps-inventory']:AddItem(source, item, count)
    else
        local Player = QBCore.Functions.GetPlayer(source)
        if Player then
            Player.Functions.AddItem(item, count)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], 'add', count)
        end
    end
end

local function notifyItemChange(item, action)
    if config.inventory == 'ox_inventory' then
        -- ox_inventory handles this automatically
    elseif config.inventory == 'qb-inventory' or config.inventory == 'default' then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], action)
    elseif config.inventory == 'ps-inventory' then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], action)
    end
end


RegisterServerEvent('dynyx-gym:server:GivePass', function(price, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveMoney('cash', price) then
        addItem(src, item, 1) -- Adds the gym pass using addItem function
        notifyItemChange(item, "add") -- Notify player about the added item
        TriggerClientEvent('QBCore:Notify', src, 'You have successfully purchased a gym pass!', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not Enough Money', 'error')
    end
end)

QBCore.Functions.CreateCallback('dynyx-gym:server:CheckMoney', function(source, cb, price)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local CashAmount = Player.Functions.GetMoney('cash')

    if CashAmount >= price then
        cb(true)
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not Enough Money', 'error')
        cb(false)
    end
end)
