# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: caldav
# Generation Time: 2017-01-27 09:36:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ACCOUNT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ACCOUNT`;

CREATE TABLE `ACCOUNT` (
  `hostname` varchar(50) NOT NULL DEFAULT '',
  `userId` varchar(30) NOT NULL DEFAULT '',
  `userPw` varchar(512) DEFAULT '',
  PRIMARY KEY (`hostname`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CALENDAR
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CALENDAR`;

CREATE TABLE `CALENDAR` (
  `hostname` varchar(50) NOT NULL DEFAULT '',
  `userId` varchar(30) NOT NULL DEFAULT '',
  `calendarId` varchar(256) NOT NULL DEFAULT '',
  `calendarUrl` varchar(512) DEFAULT '',
  `calendarName` varchar(64) DEFAULT '',
  `cTag` varchar(512) DEFAULT '',
  PRIMARY KEY (`hostname`,`userId`,`calendarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EVENT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EVENT`;

CREATE TABLE `EVENT` (
  `hostname` varchar(50) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `calendarId` varchar(256) NOT NULL,
  `eventId` varchar(256) NOT NULL,
  `eventUrl` varchar(512) DEFAULT '',
  `eTag` varchar(512) DEFAULT '',
  PRIMARY KEY (`hostname`,`userId`,`calendarId`,`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
