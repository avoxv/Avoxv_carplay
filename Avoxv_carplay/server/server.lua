-----------------For support, scripts, and more----------------
--------------- https://discord.gg/q4pCAqt34J -------------
---------------------------------------------------------------

RegisterNetEvent('Avoxv_carplay:syncmusic')
AddEventHandler('Avoxv_carplay:syncmusic', function(peds, vehNet, data)
    local veh = NetworkGetEntityFromNetworkId(vehNet)
	if veh ~= 0 then
        for k, v in pairs(peds) do
            TriggerClientEvent("Avoxv_carplay:playsound", v, data)
        end
	end
end)
