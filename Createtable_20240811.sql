--
-- Table structure for table `tevent`
--

DROP TABLE IF EXISTS `tevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tevent` (
  `eventid` char(100) NOT NULL,
  `ieventid` int DEFAULT '0',
  `event_name` char(200) DEFAULT NULL,
  `period` char(100) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `noentry` int DEFAULT '0',
  `intervalmin` int DEFAULT '5',
  `modmin` int DEFAULT '4',
  `modsec` int DEFAULT '10',
  `fromorder` int DEFAULT '1',
  `toorder` int DEFAULT '10',
  `resethh` int DEFAULT '4',
  `resetmm` int DEFAULT '0',
  `nobasis` int DEFAULT '999999',
  `maxdsp` int DEFAULT '10',
  `cmap` int DEFAULT '1',
  `target` int DEFAULT '0',
  `rstatus` varchar(20) DEFAULT '',
  `maxpoint` int DEFAULT '0',
  `achk` int DEFAULT '0',
  `aclr` int DEFAULT '0',
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teventuser`
--

DROP TABLE IF EXISTS `teventuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teventuser` (
  `eventid` varchar(128) NOT NULL,
  `userno` int NOT NULL,
  `istarget` char(1) DEFAULT NULL,
  `iscntrbpoints` char(1) DEFAULT 'N',
  `graph` char(1) DEFAULT NULL,
  `color` char(20) DEFAULT NULL,
  `point` int DEFAULT NULL,
  `vld` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`eventid`,`userno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuser`
--

DROP TABLE IF EXISTS `tuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuser` (
  `userno` int NOT NULL,
  `userid` char(100) DEFAULT NULL,
  `user_name` char(200) DEFAULT NULL,
  `longname` char(200) DEFAULT NULL,
  `shortname` char(10) DEFAULT NULL,
  `genre` char(100) DEFAULT NULL,
  `rank` char(16) DEFAULT '',
  `nrank` varchar(60) DEFAULT '-',
  `prank` varchar(60) DEFAULT '-',
  `level` int DEFAULT '-1',
  `followers` int DEFAULT '-1',
  `fans` int DEFAULT '-1',
  `fans_lst` int DEFAULT '-1',
  `ts` datetime DEFAULT NULL,
  `getp` char(1) DEFAULT '',
  `graph` char(1) DEFAULT '',
  `color` char(20) DEFAULT '',
  `currentevent` varchar(128) DEFAULT '',
  PRIMARY KEY (`userno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuserhistory`
--

DROP TABLE IF EXISTS `tuserhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuserhistory` (
  `userno` int NOT NULL,
  `user_name` char(200) DEFAULT NULL,
  `genre` char(100) DEFAULT NULL,
  `rank` char(16) DEFAULT NULL,
  `nrank` varchar(60) DEFAULT '-',
  `prank` varchar(60) DEFAULT '-',
  `level` int DEFAULT NULL,
  `followers` int DEFAULT NULL,
  `fans` int DEFAULT '-1',
  `fans_lst` int DEFAULT '-1',
  `ts` datetime NOT NULL,
  PRIMARY KEY (`userno`,`ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
