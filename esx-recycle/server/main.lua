ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local ItemTable = {
    "metalscrap",
    "plastic",
    "copper",
    "iron",
    "aluminum",
    "battery",
    "glass",
}


RegisterServerEvent("esx-recycle:server:getItem")
AddEventHandler("esx-recycle:server:getItem", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    for i = 1, math.random(1, 5), 1 do
        local randItem = ItemTable[math.random(1, #ItemTable)]
        local amount = math.random(2, 6)
        xPlayer.addInventoryItem(randItem, amount)
        Citizen.Wait(10)
    end
end)