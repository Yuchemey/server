-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Sorrowful Sage
-- Type: Assault Mission Giver
-- !pos 134.096 0.161 -30.401 50
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    -- local rank = xi.besieged.getMercenaryRank(player)
    -- local haveimperialIDtag
    -- local tokens = 3--player:getAssaultPoint(ILRUSI_ASSAULT_POINT)
--[[
    if player:hasKeyItem(xi.ki.IMPERIAL_ARMY_ID_TAG) then
        haveimperialIDtag = 1
    else
        haveimperialIDtag = 0
    end

    if rank > 0 then
        player:startEvent(278, rank, haveimperialIDtag, tokens, player:getCurrentAssault())
    else]]
        player:startEvent(284) -- no rank
    --end
end

entity.onEventUpdate = function(player, csid, option, npc)
--[[
    if csid == 278 then
        local categorytype = bit.band(option, 0x0F)
        if categorytype == 3 then
            -- low grade item
            local item = bit.rshift(option, 16)
        elseif categorytype == 4 then
            -- medium grade item
            local item = bit.rshift(option, 16)
        elseif categorytype == 5 then
            -- high grade item
            local item = bit.rshift(option, 16)
        end
    end
]]--
end

entity.onEventFinish = function(player, csid, option, npc)
    if csid == 278 then
        local selectiontype = bit.band(option, 0xF)
        if selectiontype == 1 then
            -- taken assault mission
            player:addAssault(bit.rshift(option, 4))
            player:delKeyItem(xi.ki.IMPERIAL_ARMY_ID_TAG)
            npcUtil.giveKeyItem(player, xi.ki.NYZUL_ISLE_ASSAULT_ORDERS)
        end
    end
end

return entity
