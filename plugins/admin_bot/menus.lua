function GenerateMenu()
    menus:Unregister("admin_bot")

    menus:Register("admin_bot", FetchTranslation("admin_bot.menu.title"), tostring(config:Fetch("admins.amenucolor")), {
          {"Remove team limits", "sw_removeteamlimits"},
          {"Add bot CT", "sw_addbot_ct"},
          {"Add bot T", "sw_addbot_t"},
          {"Kick bot CT", "sw_kickbot_ct"},
          {"Kick bot T", "sw_kickbot_t"},
          {"Kick all bots", "sw_kickbot_all"}
    })
end