# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: gdcLite
# Generation Time: 2014-11-07 17:40:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table danceclasses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `danceclasses`;

CREATE TABLE `danceclasses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dancestyle_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `week` date DEFAULT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `danceclasses` WRITE;
/*!40000 ALTER TABLE `danceclasses` DISABLE KEYS */;

INSERT INTO `danceclasses` (`id`, `dancestyle_id`, `teacher_id`, `location_id`, `active`, `date`, `week`, `time`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,1,'2014-12-01','2014-11-24','6:00 PM - 7:30 PM',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,3,2,1,1,'2014-12-02','2014-11-25','6:00 PM - 7:30 PM',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,2,3,1,1,'2014-12-02','2014-11-25','7:30 PM - 9:00 PM',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(4,1,1,1,1,'2014-12-03','2014-11-26','6:00 PM - 7:30 PM',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `danceclasses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dancestyles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dancestyles`;

CREATE TABLE `dancestyles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `dancestyles` WRITE;
/*!40000 ALTER TABLE `dancestyles` DISABLE KEYS */;

INSERT INTO `dancestyles` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Hip-Hop','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,'Jazzfunk','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,'Zumba','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `dancestyles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(11,6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;

INSERT INTO `locations` (`id`, `name`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`)
VALUES
	(1,'G-Force Dance Center','Unit 104 & 105,\nCorporate Building,\n101 Mother Ignacia Street,\nQuezon City, Philippines',14.636963,121.030221,'2014-10-21 00:00:00','2014-10-21 00:00:00'),
	(2,'asdfasdf','asdfasdf',1231.000000,21312.000000,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_20_172219_create_teachers_table',1),
	('2014_10_20_184221_create_danceclasses_table',2),
	('2014_10_20_185052_create_dancestyles_table',3),
	('2014_10_20_185608_create_locations_table',4);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teachers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classimg` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnumber` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;

INSERT INTO `teachers` (`id`, `firstname`, `lastname`, `middlename`, `address`, `birthdate`, `email`, `img`, `classimg`, `cnumber`, `created_at`, `updated_at`)
VALUES
	(1,'Junichi','Ishii','','836 Torp Lodge Suite 910\nJadafort, MO 97976-3138','2001-09-07','lucy27@murphy.info','ish','class_ishii',0,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(2,'Cheme','Sta. Maria','','047 Randall Harbors Suite 087\nDaughertyview, IN 81604','1987-10-23','dicki.oswaldo@gmail.com','cheme','class_cheme',0,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(3,'Myka','Gonzaga','Espina','99958 Americo Cove\nJabaribury, AL 19856','2001-05-22','lewis.crist@paucek.org','myka','class_myka',1,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(4,'Heber','Toy','Roob','454 Windler Pass\nTyreehaven, KS 14823-3970','1997-11-08','anderson66@yahoo.com','placeholder',NULL,508896,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(5,'Porter','Beahan','Ondricka','66523 Dickinson Cliff Apt. 672\nLake Stacy, DE 40933','2008-03-02','maria05@towne.net','placeholder',NULL,0,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(6,'Wilburn','Schumm','Schiller','16452 Mazie Manor Suite 227\nBrendonfort, DC 76426-8579','2005-08-17','erosenbaum@yahoo.com','placeholder',NULL,0,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(7,'Paul','Terry','Hessel','4507 Reyna Ville\nNew Arielside, FL 99063-7131','1992-11-04','qcartwright@mclaughlin.info','placeholder',NULL,729,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(8,'Sedrick','Nolan','Corwin','999 Andres Lights\nNorth Kalebmouth, NH 71197','1974-03-02','oceane.breitenberg@williamson.org','placeholder',NULL,300,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(9,'Garett','Keeling','Gulgowski','6761 Konopelski Viaduct Suite 743\nCamilaland, OK 93324-8525','1997-08-13','veum.velva@yahoo.com','placeholder',NULL,2147483647,'2014-10-20 17:28:35','2014-10-20 17:28:35'),
	(10,'Agustin','Schultz','Buckridge','6865 Green Glens\nEast May, HI 93589','1971-08-20','geovany.fisher@balistreri.com','placeholder',NULL,83,'2014-10-20 17:28:35','2014-10-20 17:28:35');

/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
