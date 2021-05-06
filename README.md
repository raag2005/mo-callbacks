# Mohr Callback functions
### edit af Raag2005

## Changelog
 - 😜 Added exports til server og client
 - 😎 Ændrede lidt her og der

## Client side
```lua
    local cCallback = exports["mo-callbacks"]

    local args, du, skal, bruge = "Dette ", "Callback ", "Er ", "Måske "
    cCallback:TriggerServerCallback("NavnPåMitCallback", {args, du, skal, bruge}, function(values)
        print(values) -- Values er resultatet fra serverside
    end)
```

## Server side
```lua
    local sCallback = exports["mo-callbacks"]

    sCallback:RegisterServerCallback("NavnPåMitCallback", function(args, du, skal, bruge)
        local callbackText = args .. du .. skal .. bruge .. " Lavet af Mohr"
        return callbackText
    end)
```

## Support
Kontakt Mohr eller Raag2005 på DK FiveM, hvis der er fejl, mangler eller problemer. *http://fivem.dk/discord* - Kun seriøse henvendelser.