cCallback = {
    function cCallback:TriggerServerCallback(name, args, cb)
        TriggerServerEvent("mo-callback:TriggerServerCallback", name, args)
        while not self[name] do
            Wait(1)
        end
        cb(self[name])
    end
}
RegisterNetEvent("mo-callback:RecieveServerCallback")
AddEventHandler("mo-callback:RecieveServerCallback", function(name, data)
    cCallback[name] = data
end)
