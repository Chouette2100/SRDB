-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: showroom
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bbslog`
--

DROP TABLE IF EXISTS `bbslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbslog` (
  `id` int NOT NULL,
  `cnt` int DEFAULT '4',
  `rlink` int DEFAULT '-1',
  `title` varchar(100) DEFAULT '',
  `name` varchar(100) DEFAULT '',
  `body` varchar(400) DEFAULT '',
  `ctime` datetime NOT NULL,
  `color` varchar(20) DEFAULT 'black',
  `ra` char(16) DEFAULT '',
  `ua` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `campaignid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `campaignname` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `startedat` datetime NOT NULL,
  `endedat` datetime NOT NULL,
  PRIMARY KEY (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
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
  `nobasis` int DEFAULT '164614',
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
-- Table structure for table `eventrank`
--

DROP TABLE IF EXISTS `eventrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventrank` (
  `eventid` char(100) NOT NULL,
  `userid` int NOT NULL,
  `ts` datetime NOT NULL,
  `listner` varchar(200) NOT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `lsnid` int DEFAULT NULL,
  `t_lsnid` int NOT NULL,
  `norder` int DEFAULT NULL,
  `nrank` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `increment` int DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`eventid`,`userid`,`ts`,`t_lsnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eventuser`
--

DROP TABLE IF EXISTS `eventuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventuser` (
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
-- Table structure for table `giftranking`
--

DROP TABLE IF EXISTS `giftranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftranking` (
  `campaignid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `grid` int NOT NULL,
  `grname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `grtype` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `norder` int NOT NULL,
  `startedat` datetime DEFAULT NULL,
  `endedat` datetime DEFAULT NULL,
  PRIMARY KEY (`campaignid`,`grid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftscore`
--

DROP TABLE IF EXISTS `giftscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftscore` (
  `giftid` int NOT NULL,
  `userno` int NOT NULL,
  `orderno` int NOT NULL,
  `score` int NOT NULL,
  `status` varchar(100) NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`giftid`,`ts`,`userno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameters` (
  `scope` int DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `value` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `points` (
  `ts` datetime NOT NULL,
  `user_id` int NOT NULL,
  `eventid` varchar(128) NOT NULL,
  `point` int DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `gap` int DEFAULT NULL,
  `pstatus` varchar(25) DEFAULT '',
  `qstatus` varchar(25) DEFAULT '',
  `ptime` varchar(25) DEFAULT '',
  `qtime` varchar(25) DEFAULT '',
  PRIMARY KEY (`eventid`,`user_id`,`ts`),
  KEY `points_point` (`point`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `timeacq`
--

DROP TABLE IF EXISTS `timeacq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeacq` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `t` datetime DEFAULT NULL,
  KEY `idx` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19698 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `eventid` char(100) NOT NULL,
  `userid` int NOT NULL,
  `sampletm1` datetime NOT NULL,
  `sampletm2` datetime DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `target` int DEFAULT '-1',
  `totalpoint` int DEFAULT NULL,
  `earnedpoint` int DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`eventid`,`userid`,`sampletm1`)
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

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userno` int NOT NULL,
  `userid` char(100) DEFAULT NULL,
  `user_name` char(200) DEFAULT NULL,
  `longname` char(200) DEFAULT NULL,
  `shortname` char(10) DEFAULT NULL,
  `genre` char(100) DEFAULT '',
  `genreid` int DEFAULT '-1',
  `rank` char(16) DEFAULT '',
  `nrank` varchar(60) DEFAULT '-',
  `prank` varchar(60) DEFAULT '-',
  `irank` int DEFAULT '-1',
  `inrank` int DEFAULT '-1',
  `iprank` int DEFAULT '-1',
  `itrank` int DEFAULT '-1',
  `level` int DEFAULT '-1',
  `followers` int DEFAULT '-1',
  `fans` int DEFAULT '-1',
  `fanpower` int DEFAULT '-1',
  `fans_lst` int DEFAULT '-1',
  `fanpower_lst` int DEFAULT '-1',
  `ts` datetime DEFAULT NULL,
  `getp` char(1) DEFAULT '',
  `graph` char(1) DEFAULT '',
  `color` char(20) DEFAULT '',
  `currentevent` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`userno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userhistory`
--

DROP TABLE IF EXISTS `userhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userhistory` (
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

--
-- Table structure for table `viewer`
--

DROP TABLE IF EXISTS `viewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer` (
  `viewerid` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `sname` varchar(512) NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`viewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `viewergiftscore`
--

DROP TABLE IF EXISTS `viewergiftscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewergiftscore` (
  `giftid` int NOT NULL,
  `viewerid` int NOT NULL,
  `orderno` int NOT NULL,
  `score` int NOT NULL,
  `status` varchar(100) NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`giftid`,`ts`,`viewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `viewerhistory`
--

DROP TABLE IF EXISTS `viewerhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewerhistory` (
  `viewerid` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `sname` varchar(512) NOT NULL,
  `ts` datetime NOT NULL,
  PRIMARY KEY (`viewerid`,`ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wevent`
--

DROP TABLE IF EXISTS `wevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wevent` (
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
-- Table structure for table `weventuser`
--

DROP TABLE IF EXISTS `weventuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weventuser` (
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
-- Table structure for table `wuser`
--

DROP TABLE IF EXISTS `wuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuser` (
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
-- Table structure for table `wuserhistory`
--

DROP TABLE IF EXISTS `wuserhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuserhistory` (
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-30 22:54:33
