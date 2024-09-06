CREATE TABLE `giftscore` (
  `giftid` int NOT NULL,
  `userno` int NOT NULL,
  `orderno` int NOT NULL,
  `score` int NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`giftid`,`ts`,`userno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `viewergiftscore` (
  `giftid` int NOT NULL,
  `viewerid` int NOT NULL,
  `orderno` int NOT NULL,
  `score` int NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`giftid`,`ts`,`viewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `viewer` (
  `viewerid` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`viewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
desc viewer;

CREATE TABLE `viewerhistory` (
  `viewerid` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`viewerid`, `ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
desc viewerhistory;
