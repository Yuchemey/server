-----------------------------------
-- Area: Lufaise_Meadows
--  Mob: Gigas Slinger
-----------------------------------
mixins = { require('scripts/mixins/fomor_hate') }
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobSpawn = function(mob)
    mob:setLocalVar('fomorHateAdj', 1)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
