sCallback = {}

function RegisterServerCallback(name, func)
    sCallback[name] = func
end

RegisterServerEvent("mo-callback:TriggerServerCallback")
AddEventHandler("mo-callback:TriggerServerCallback", function(name, args)
    local source = source
    TriggerClientEvent("mo-callback:RecieveServerCallback", source, name, sCallback[name](table.unpack(args)))
end)