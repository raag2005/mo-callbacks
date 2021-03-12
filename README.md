# Mohr#6969 Callback functions

## Hvordan bruges det??

### Client side

**Brug et callback:**
```lua
    local args, du, skal, bruge = "Dette ", "Callback ", "Er ", "Måske "
    cCallback:TriggerServerCallback("NavnPåMitCallback", {args, du, skal, bruge}, function(values)
        print(values) -- Values er resultatet fra serverside
    end)
```

### Server side

**Lav et nyt callback:**
```lua
    sCallback:RegisterServerCallback("NavnPåMitCallback", function(args, du, skal, bruge)
        local callbackText = args..du..skal..bruge.."Lavet af Mohr"
        return callbackText
    end)
```

## Optimeret og ændret af OMikkel#3217

## Support
# Kontakt mig på DK FiveM, hvis der er fejl, mangler eller problemer. http://fivem.dk/discord
# Kun seriøse henvendelser.
