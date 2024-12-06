function GenerateMenu()
    menus:Unregister("admin_bot")

    menus:Register("admin_bot", FetchTranslation("admins.adminbot.menu.title"), tostring(config:Fetch("admins.amenucolor")), {
        { FetchTranslation("admins.adminmenu.bot.addbotct"), "sw_adminbot_menu" }
    })
end