cCallback = {}

function TriggerServerCallback(name, args, cb)
    TriggerServerEvent("mo-callback:TriggerServerCallback", name, args)
    while not cCallback[name] do
        Wait(1)
    end
    cb(cCallback[name])
end

RegisterNetEvent("mo-callback:RecieveServerCallback")
AddEventHandler("mo-callback:RecieveServerCallback", function(name, data)
    cCallback[name] = data
end)
