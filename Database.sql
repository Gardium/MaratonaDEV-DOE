-- --------------------------------------------------------
-- Host:                         
-- Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2020-05-24 17:09:07
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for doe
CREATE DATABASE IF NOT EXISTS `doe` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `doe`;


-- Dumping structure for table doe.donors
CREATE TABLE IF NOT EXISTS `donors` (
  `ID` int(10) NOT NULL auto_increment,
  `NAME` varchar(50) NOT NULL default '0',
  `EMAIL` varchar(50) NOT NULL default '0',
  `BLOOD` varchar(3) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table doe.donors: ~0 rows (approximately)
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
