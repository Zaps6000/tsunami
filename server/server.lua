RegisterServerEvent('Play:ServerSound')
AddEventHandler('Play:ServerSound', function(soundName, soundVolume)
    TriggerClientEvent('Play:Sound', -1, soundName, soundVolume)
end)


AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    local message = ""
    if eventData.secondsRemaining == 900 then
        TriggerEvent('Play:ServerSound', 'Alert', 0.1)
        message = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 0, .9); border-radius: 2px;"><b> [SYSTEM] </b> <i>Tsunami Warning!</i> <br>Time Remaining: 15 minutes</div>'
        TriggerClientEvent('changeWeather', 'THUNDER')
    elseif eventData.secondsRemaining == 300 then
        TriggerEvent('Play:ServerSound', 'Alert', 0.1)
        message = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 0, .9); border-radius: 2px;"><b> [SYSTEM] </b> <i>Tsunami Warning!</i> <br>Time Remaining: 5 minutes</div>'
        TriggerClientEvent('changeWeather', 'THUNDER')

    elseif eventData.secondsRemaining == 80 then
        TriggerEvent('Play:ServerSound', 'Alert', 0.1)
        message = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 0, .9); border-radius: 2px;"><b> [SYSTEM] </b> <i>Tsunami Warning!</i> <br>Time Remaining: 1 minute and 20 seconds</div>'
         TriggerClientEvent('changeWeather', 'THUNDER')

        end
          if message ~= "" then
        TriggerClientEvent('chat:addMessage', -1, { template = message })
    end
end)
