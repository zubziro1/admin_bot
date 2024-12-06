AddEventHandler("OnPluginStart", function (event)
    GenerateMenu()
end)

AddEventHandler("OnAllPluginsLoaded", function(event)
    if GetPluginState("admins") == PluginState_t.Started then
        exports["admins"]:RegisterMenuCategory("admin_bot.menu.title", "admin_bot", "z")
    end

    return EventResult.Continue
end)