
DROP TABLE IF EXISTS `char_unlocks`;
CREATE TABLE `char_unlocks` (
  `charid` int(10) unsigned NOT NULL,
  `outpost_sandy` int(10) unsigned NOT NULL DEFAULT 0,
  `outpost_bastok` int(10) unsigned NOT NULL DEFAULT 0,
  `outpost_windy` int(10) unsigned NOT NULL DEFAULT 0,
  `mog_locker` int(10) unsigned NOT NULL DEFAULT 0,
  `runic_portal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `maw` int(10) unsigned NOT NULL DEFAULT 0,
  `campaign_sandy` int(10) unsigned NOT NULL DEFAULT 0,
  `campaign_bastok` int(10) unsigned NOT NULL DEFAULT 0,
  `campaign_windy` int(10) unsigned NOT NULL DEFAULT 0,
  `homepoints` blob DEFAULT NULL,
  `survivals` blob DEFAULT NULL,
  `traverser_start` TIMESTAMP DEFAULT 0,
  `traverser_claimed` int(10) unsigned NOT NULL DEFAULT 0,
  `abyssea_conflux` blob DEFAULT NULL,
  `waypoints` blob DEFAULT NULL,
  `eschan_portals` blob DEFAULT NULL,
  `claimed_deeds` blob DEFAULT NULL,
  `unique_event` blob DEFAULT NULL,
  PRIMARY KEY (`charid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
