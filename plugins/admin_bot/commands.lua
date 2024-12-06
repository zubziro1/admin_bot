commands:Register("removeteamlimits", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    server:Execute("mp_autoteambalance 0")
    server:Execute("mp_limitteams 0")
end)

commands:Register("addbot_ct", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    server:Execute("bot_add CT")
end)

commands:Register("addbot_t", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    server:Execute("bot_add T")
end)

commands:Register("kickbot_ct", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    server:Execute("bot_kick CT")
end)

commands:Register("kickbot_t", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    server:Execute("bot_kick T")
end)

commands:Register("kickbot_all", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    server:Execute("bot_kick")
end)

commands:Register("adminbot_menu", function(playerid, args, argc, silent, prefix)
    if playerid == -1 then return end
    local player = GetPlayer(playerid)
    if not player then return end
    if player:IsFakeClient() then return end
    if not exports["admins"]:HasFlags(playerid, "z") then
        return ReplyToCommand(playerid, config:Fetch("admins.prefix"),
                FetchTranslation("admins.no_permission"))
    end

    local items = {}
    table.insert(items, {"Remove team limits", "sw_removeteamlimits"})
    table.insert(items, {"Add bot CT", "sw_addbot_ct"})
    table.insert(items, {"Add bot T", "sw_addbot_t"})
    table.insert(items, {"Kick bot CT", "sw_kickbot_ct"})
    table.insert(items, {"Kick bot T", "sw_kickbot_t"})
    table.insert(items, {"Kick all bots", "sw_kickbot_all"})

    menus:RegisterTemporary("adminbot_menu_" .. playerid, "Bots", config:Fetch("admins.amenucolor"), items)

    player:HideMenu()
    player:ShowMenu("adminbot_menu_" .. playerid)
end)