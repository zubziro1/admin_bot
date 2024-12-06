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
