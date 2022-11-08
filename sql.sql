CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT 'Central',
  `state` varchar(50) DEFAULT 'out',
  `mods` longtext DEFAULT NULL,
  `fuel` text NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `owned_vehicles` (`id`, `identifier`, `model`, `plate`, `garage`, `state`, `mods`, `fuel`) VALUES
(1, '9261ef86911d88504abe0cddf59673e91d31a2bf', 'JESTGPR', 'GADGET23', '1358', 'out', '{\"color2\":0,\"modDial\":3,\"modSuspension\":3,\"modBackWheels\":-1,\"modSideSkirt\":2,\"neonColor\":[32,255,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"modSmokeEnabled\":1,\"modTrunk\":0,\"modPlateHolder\":0,\"modRightFender\":0,\"modLivery\":-1,\"modDashboard\":0,\"modBrakes\":2,\"modExhaust\":4,\"color1\":0,\"modTank\":-1,\"modRearBumper\":13,\"modRoof\":4,\"modSeats\":6,\"modArchCover\":2,\"fuelLevel\":57.2,\"modAirFilter\":-1,\"plateIndex\":0,\"modDoorSpeaker\":6,\"bodyHealth\":996.5,\"modTrimA\":4,\"tyreSmokeColor\":[32,255,0],\"modOrnaments\":1,\"plate\":\"GADGET23\",\"modSpeakers\":-1,\"windowTint\":1,\"wheelColor\":92,\"tankHealth\":999.4,\"modEngine\":3,\"customPrimaryColor\":[32,255,0],\"modHood\":7,\"extras\":[],\"modFender\":1,\"modGrille\":7,\"modFrontWheels\":-1,\"model\":1563678437,\"modTransmission\":2,\"customSecondaryColor\":[32,255,0],\"modAerials\":-1,\"modEngineBlock\":2,\"windowsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false},\"pearlescentColor\":55,\"modHydrolic\":-1,\"modTurbo\":1,\"modSteeringWheel\":4,\"xenonColor\":4,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false},\"modHorns\":-1,\"dirtLevel\":15.0,\"modTrimB\":0,\"modVanityPlate\":5,\"modStruts\":-1,\"modXenon\":1,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"neonEnabled\":[1,1,1,1],\"engineHealth\":959.7,\"modFrame\":2,\"wheels\":1,\"modArmor\":4,\"modLightbar\":-1,\"modSpoilers\":6,\"modFrontBumper\":2,\"modDoorR\":-1}', '57.199951171875'),
(2, '2454378d5ebda7454683c03536dc41ba8cc9a5fd', 'm3f80', 'GADGET24', 'Central', 'out', 'null', '91.70001220703124');

ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `owned_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
