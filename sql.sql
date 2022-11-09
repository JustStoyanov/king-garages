CREATE TABLE `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL, -- дефаута тряа да е 'Central'
  `state` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;