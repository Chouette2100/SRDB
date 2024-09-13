DROP TABLE IF EXISTS `giftscore`;
CREATE TABLE `giftscore` (
  `giftid` int NOT NULL,
  `userno` int NOT NULL,
  `orderno` int NOT NULL,
  `score` int NOT NULL,
  `status` varchar(100) NOT NULL,  #  追加 2024-09-07
  `ts` datetime NOT NULL,
  PRIMARY KEY (`giftid`,`ts`,`userno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `viewergiftscore`;
CREATE TABLE `viewergiftscore` (
  `giftid` int NOT NULL,
  `viewerid` int NOT NULL,
  `orderno` int NOT NULL,
  `score` int NOT NULL,
  `status` varchar(100) NOT NULL,  #  追加 2024-09-08
  `ts` datetime NOT NULL,
  PRIMARY KEY (`giftid`,`ts`,`viewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `viewer`;
CREATE TABLE `viewer` (
  `viewerid` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `sname` varchar(512) NOT NULL,  #  2024-09-11
  `ts` datetime NOT NULL,
  PRIMARY KEY (`viewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `viewerhistory`;
CREATE TABLE `viewerhistory` (
  `viewerid` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `sname` varchar(512) NOT NULL,  #  2024-09-11
  `ts` datetime NOT NULL,
  PRIMARY KEY (`viewerid`, `ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
