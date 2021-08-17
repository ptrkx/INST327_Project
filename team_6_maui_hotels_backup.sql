CREATE DATABASE  IF NOT EXISTS `maui_hotels` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `maui_hotels`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: maui_hotels
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenities_id` int NOT NULL,
  `amenities_name` varchar(45) NOT NULL,
  PRIMARY KEY (`amenities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Pool'),(2,'Free Wi-Fi'),(3,'Outdoor barbeque grills'),(4,'Spa'),(5,'Fitness room'),(6,'Hot tub'),(7,'Laundry'),(8,'Restaurant/Bar'),(9,'Wedding Venue'),(10,'Room service'),(11,'Free parking'),(12,'Breakfast'),(13,'Valet'),(14,'Airport shuttle'),(15,'Front Desk Service'),(16,'Childcare Services'),(17,'Business Centers/Meeting Rooms'),(18,'Gift Shop'),(19,'Golf');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `amenities_view`
--

DROP TABLE IF EXISTS `amenities_view`;
/*!50001 DROP VIEW IF EXISTS `amenities_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `amenities_view` AS SELECT 
 1 AS `Hotel Name`,
 1 AS `City`,
 1 AS `Phone Number`,
 1 AS `Number of Amenities`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds` (
  `bed_id` int NOT NULL,
  `bed_type` varchar(45) NOT NULL,
  PRIMARY KEY (`bed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (1,'king'),(2,'queen'),(3,'full'),(4,'double'),(5,'twin');
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beds_room_join`
--

DROP TABLE IF EXISTS `beds_room_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds_room_join` (
  `bed_id` int NOT NULL,
  `room_id` int NOT NULL,
  `num_beds` int NOT NULL,
  KEY `fk_room_id_idx` (`room_id`),
  KEY `fk_bed_id` (`bed_id`),
  CONSTRAINT `fk_bed_id` FOREIGN KEY (`bed_id`) REFERENCES `beds` (`bed_id`),
  CONSTRAINT `fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds_room_join`
--

LOCK TABLES `beds_room_join` WRITE;
/*!40000 ALTER TABLE `beds_room_join` DISABLE KEYS */;
INSERT INTO `beds_room_join` VALUES (1,1,1),(1,2,1),(4,3,2),(2,4,1),(1,5,1),(5,5,2),(1,6,1),(2,7,2),(1,8,1),(2,9,2),(1,10,1),(1,11,1),(1,12,2),(2,13,1),(1,14,1),(2,15,1),(1,16,1),(1,17,1),(1,18,2),(1,19,1),(1,20,2),(4,21,2),(1,22,1),(2,23,1),(1,24,1),(4,24,2),(4,25,2),(1,26,1),(4,26,2),(1,27,1),(1,28,1),(2,28,1),(2,29,1);
/*!40000 ALTER TABLE `beds_room_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cheap_excursions`
--

DROP TABLE IF EXISTS `cheap_excursions`;
/*!50001 DROP VIEW IF EXISTS `cheap_excursions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cheap_excursions` AS SELECT 
 1 AS `Organization Name`,
 1 AS `Street Address`,
 1 AS `Zip Code`,
 1 AS `State`,
 1 AS `Phone Number`,
 1 AS `Cost Per Person`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cuisine_type`
--

DROP TABLE IF EXISTS `cuisine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuisine_type` (
  `cuisine_id` int NOT NULL,
  `cuisine_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cuisine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisine_type`
--

LOCK TABLES `cuisine_type` WRITE;
/*!40000 ALTER TABLE `cuisine_type` DISABLE KEYS */;
INSERT INTO `cuisine_type` VALUES (1,'American'),(2,'Chinese'),(3,'Italian'),(4,'Turkish'),(5,'Seafood'),(6,'Hawaiian'),(7,'Filipino '),(8,'Mexican'),(9,'Japanese'),(10,'Thai'),(11,'Caribbean'),(12,'Indian'),(13,'Vietnamese'),(14,'Mediterranean');
/*!40000 ALTER TABLE `cuisine_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excursion_orgs`
--

DROP TABLE IF EXISTS `excursion_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excursion_orgs` (
  `organization_id` int NOT NULL,
  `organization_name` varchar(45) NOT NULL,
  `sub_region_id` int NOT NULL,
  `street_address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip_code` varchar(45) NOT NULL,
  `state` char(2) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`organization_id`),
  KEY `fk_exc_sub_region_id` (`sub_region_id`),
  CONSTRAINT `fk_exc_sub_region_id` FOREIGN KEY (`sub_region_id`) REFERENCES `locations` (`sub_region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excursion_orgs`
--

LOCK TABLES `excursion_orgs` WRITE;
/*!40000 ALTER TABLE `excursion_orgs` DISABLE KEYS */;
INSERT INTO `excursion_orgs` VALUES (1,'Maui Waveriders',2,'2021 S Kihei Rd','Kihei','96753','HI','(808) 875-4761'),(2,'Trilogy Excursions',1,'675 Wharf St','Lahaina','96761','HI','(888) 225-6284'),(3,'Blue Hawaiian Helicopters',3,'1 Lelepio Pl','Kahului','96732','HI','(808) 871-8844'),(4,'West Maui Parasail',1,'675 Wharf St','Lahaina','96761','HI','(808) 661-4060'),(5,'Maui Mountatin Activities',3,'3040 Kahekili Hwy','Wailuku','96793','HI','(808) 242-5558'),(6,'Maui Kayak Adventures',2,'61 Halekuai St #2','Kihei','96753','HI','(808) 875-4848'),(7,'Sea Maui',1,'2435 Kaanapali Pkwy','Lahaina','96761','HI','(808) 732-6284'),(8,'Maui Off-Road Adventures',1,'4900 HI-30','Lahaina','96761','HI','(808) 495-0950'),(9,'Old Lahaina Luau',1,'1251 Front St','Lahaina','96761','HI','(808) 667-1998'),(10,'Lahaina Cruise Company',1,'675 Wharf St','Lahaina','96761','HI','(808) 667-6165'),(11,'Bike Maui',3,'810 Haiku Rd #120','Haiku','96708','HI','(808) 575-9575'),(12,'Calypso Maui',3,'Slip 82, South Ferry Dock 101 Ma’alaea Road','Wailuku','96793','HI','(808) 856-4260'),(13,'Valley Isle Excursions',3,'466 E Ahuli\'u Way','Wailuku','96793','HI','(808) 871-5224'),(14,'Jungle Zipline Maui',3,'50 E Waipio Rd','Haiku','96708','HI','(855) 628-4947'),(15,'Epic Maui Hikes',2,'1215 S Kihei Rd','Kihei','96753','HI','(808) 879-5270'),(16,'Kelii\'s Kayak Tours',2,'1993 S Kihei Rd','Kihei','96753','HI','(808) 874-7652');
/*!40000 ALTER TABLE `excursion_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excursion_type_join`
--

DROP TABLE IF EXISTS `excursion_type_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excursion_type_join` (
  `organization_id` int NOT NULL,
  `type_id` int NOT NULL,
  `cost_per_person` decimal(5,2) NOT NULL,
  `time_consumption` int DEFAULT NULL,
  `min_age` int DEFAULT NULL,
  KEY `fk_type_id_idx` (`type_id`),
  KEY `fk_orgainzation_id` (`organization_id`),
  CONSTRAINT `fk_orgainzation_id` FOREIGN KEY (`organization_id`) REFERENCES `excursion_orgs` (`organization_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type_of_excursion` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excursion_type_join`
--

LOCK TABLES `excursion_type_join` WRITE;
/*!40000 ALTER TABLE `excursion_type_join` DISABLE KEYS */;
INSERT INTO `excursion_type_join` VALUES (1,12,70.00,2,10),(2,13,89.00,2,NULL),(2,3,140.00,5,NULL),(2,14,135.00,3,NULL),(3,6,359.00,1,NULL),(4,5,90.00,1,6),(5,2,110.00,2,7),(5,1,180.00,2,16),(6,7,89.00,2,6),(6,3,89.00,2,6),(6,4,89.00,2,6),(7,13,68.00,2,NULL),(7,4,65.00,2,NULL),(7,3,98.00,2,NULL),(8,1,189.00,2,7),(9,15,125.00,3,NULL),(10,14,99.95,3,NULL),(10,3,119.50,6,NULL),(11,11,109.00,6,12),(12,14,99.95,3,NULL),(12,4,39.85,2,NULL),(12,3,129.95,6,NULL),(13,8,179.99,11,NULL),(14,9,135.00,2,6),(15,10,199.00,4,5),(16,7,85.00,3,10),(16,3,74.00,3,NULL),(7,14,129.00,3,NULL),(10,4,19.95,2,NULL);
/*!40000 ALTER TABLE `excursion_type_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_amenities_join`
--

DROP TABLE IF EXISTS `hotel_amenities_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_amenities_join` (
  `amenities_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  KEY `fk_amenities_id_idx` (`amenities_id`),
  KEY `fk_amenities_hotel_overview1_idx` (`hotel_id`),
  CONSTRAINT `fk_amenities_hotel_overview1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_overview` (`hotel_id`),
  CONSTRAINT `fk_amenities_id` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`amenities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_amenities_join`
--

LOCK TABLES `hotel_amenities_join` WRITE;
/*!40000 ALTER TABLE `hotel_amenities_join` DISABLE KEYS */;
INSERT INTO `hotel_amenities_join` VALUES (1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(11,5),(14,5),(15,5),(18,5),(17,5),(1,1),(2,1),(4,1),(5,1),(8,1),(9,1),(10,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(1,4),(2,4),(18,4),(13,4),(4,4),(5,4),(6,4),(8,4),(9,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(1,2),(2,2),(3,2),(4,2),(5,2),(8,2),(9,2),(15,2),(16,2),(17,2),(18,2),(19,2),(1,3),(2,3),(4,3),(5,3),(8,3),(14,3),(16,3),(1,6),(2,6),(3,6),(4,6),(6,6),(7,6),(8,6),(11,6),(19,6),(1,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(15,7),(17,7),(19,7),(2,8),(3,8),(4,8),(6,8),(7,8),(11,8),(19,8),(1,11),(2,11),(3,11),(4,11),(5,11),(11,11),(16,11),(18,11),(1,12),(5,12),(6,12),(7,12),(8,12),(17,12),(1,13),(2,13),(5,13),(6,13),(7,13),(8,13),(14,13),(18,13),(1,14),(2,14),(3,14),(4,14),(6,14),(11,14),(15,14),(16,14),(1,15),(6,15),(8,15),(10,15),(15,15),(17,15),(18,15),(1,9),(2,9),(5,9),(6,9),(7,9),(8,9),(12,9),(14,9),(15,9),(17,9),(19,9),(2,10),(4,10),(5,10),(7,10),(8,10),(9,10),(10,10),(11,10),(12,10),(15,10),(17,10),(19,10);
/*!40000 ALTER TABLE `hotel_amenities_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_overview`
--

DROP TABLE IF EXISTS `hotel_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_overview` (
  `hotel_id` int NOT NULL,
  `hotel_name` varchar(60) NOT NULL,
  `hotel_phone_number` varchar(45) NOT NULL,
  `sub_region_id` int NOT NULL,
  `street_address` varchar(60) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `state` char(2) NOT NULL,
  `beachside` tinyint DEFAULT NULL,
  `family_friendly` tinyint DEFAULT NULL,
  `pet_friendly` tinyint DEFAULT NULL,
  `hotel_rating` decimal(3,2) NOT NULL,
  `hotel_type_id` int NOT NULL,
  `parent_company_id` int DEFAULT NULL,
  PRIMARY KEY (`hotel_id`),
  KEY `fk_hot_sub_region_id` (`sub_region_id`),
  KEY `fk_hotel_type_id_idx` (`hotel_type_id`),
  KEY `fk_parent_company_id_idx` (`parent_company_id`),
  CONSTRAINT `fk_hot_sub_region_id` FOREIGN KEY (`sub_region_id`) REFERENCES `locations` (`sub_region_id`),
  CONSTRAINT `fk_hotel_type_id` FOREIGN KEY (`hotel_type_id`) REFERENCES `hotel_type` (`hotel_type_id`),
  CONSTRAINT `fk_parent_company_id` FOREIGN KEY (`parent_company_id`) REFERENCES `parent_company` (`parent_company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_overview`
--

LOCK TABLES `hotel_overview` WRITE;
/*!40000 ALTER TABLE `hotel_overview` DISABLE KEYS */;
INSERT INTO `hotel_overview` VALUES (1,'The Westin Maui Resort & Spa','808-667-2525',1,'2365 Kaanapali Pkwy','Lahaina','96761','HI',1,1,1,4.30,3,1),(2,'Aston Kaanapali Shores','808-667-2211',1,'3445 Lower Honoapiilani Rd','Lahaina','96761','HI',1,1,0,4.40,3,2),(3,'Montage Kapalua Bay','808-662-6600',1,'1 Bay Dr','Lahaina','96761','HI',1,1,0,4.70,3,3),(4,'The Ritz-Carlton, Kapalua','808-669-6200',1,'1 Ritz Carlton Dr','Kapalua','96761','HI',1,1,0,4.60,2,5),(5,'Aston Maui Kaanapali Villas','808-667-7791',1,'45 Kai Ala Dr','Lahaina','96761','HI',1,1,1,4.40,1,2),(6,'Luana Kai','808-879-1268',2,'940 S Kihei Rd','Kihei','96753','HI',1,1,0,4.50,5,4),(7,'Wailea Beach Resort','808-879-1922',2,'3700 Wailea Alanui Dr','Wailea','96753','HI',1,1,0,4.60,3,6),(8,'Makena Oceanfront Cottage','760-802-4303',2,'5232 Makena Rd A','Wailea','96753','HI',1,1,0,5.00,4,7),(9,'Residence Inn by Marriott Maui Wailea','808-891-7460',2,'75 Wailea Ike Dr','Wailea','96753','HI',1,1,1,4.60,2,6),(10,'Paia Inn','808-579-6000',3,'93 Hana Hwy','Paia','96779','HI',1,1,0,4.60,6,10),(11,'Kaanapali Alii Resort','808-667-1400',1,'50 0hea Kai Dr','Lahaina','96761','HI',1,1,0,4.70,3,8),(12,'Courtyard by Marriott Maui Kahului Airport','808-871-1800',3,'531 Keolani Pl','Kahului','96732','HI',1,1,0,4.30,2,1),(13,'Maui Beach Hotel','808-877-0051',3,'170 W Kaahumanu Ave','Kahului','96732','HI',0,1,1,3.80,2,9),(14,'Aston Maui Banyan','808-875-0004',2,'2575 S Hihei Rd','Kihei','96753','HI',0,1,0,4.20,3,2),(15,'Royal Lahaina Resort','808-661-3611',1,'2780 Kekaa Dr','Lahaina','96761','HI',1,1,0,4.30,3,NULL);
/*!40000 ALTER TABLE `hotel_overview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_type`
--

DROP TABLE IF EXISTS `hotel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_type` (
  `hotel_type_id` int NOT NULL,
  `hotel_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`hotel_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_type`
--

LOCK TABLES `hotel_type` WRITE;
/*!40000 ALTER TABLE `hotel_type` DISABLE KEYS */;
INSERT INTO `hotel_type` VALUES (1,'villas'),(2,'traditional hotel'),(3,'resort'),(4,'cottage'),(5,'condos'),(6,'inn');
/*!40000 ALTER TABLE `hotel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!50001 DROP VIEW IF EXISTS `hotels`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hotels` AS SELECT 
 1 AS `Hotel Name`,
 1 AS `Address`,
 1 AS `Amenities`,
 1 AS `Average Room Price`,
 1 AS `Bed Type`,
 1 AS `Room View`,
 1 AS `Room Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `sub_region_id` int NOT NULL,
  `sub_region` varchar(45) NOT NULL,
  PRIMARY KEY (`sub_region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'West Maui'),(2,'South Maui'),(3,'Central Maui');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_company`
--

DROP TABLE IF EXISTS `parent_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_company` (
  `parent_company_id` int NOT NULL,
  `parent_company_name` varchar(45) NOT NULL,
  PRIMARY KEY (`parent_company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_company`
--

LOCK TABLES `parent_company` WRITE;
/*!40000 ALTER TABLE `parent_company` DISABLE KEYS */;
INSERT INTO `parent_company` VALUES (1,'Marriott Bonvoy'),(2,'Aqua-Aston Hospitality'),(3,'Preferred Hotels & Resorts'),(4,'Blue Water Development'),(5,'The Ritz-Carlton Hotel Company'),(6,'Marriott International'),(7,'Makena Oceanfront Cottage'),(8,'Destination Residences Hawai\'i'),(9,'OLS Hotels and Resorts'),(10,'Paia Inn');
/*!40000 ALTER TABLE `parent_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `restaurant_id` int NOT NULL,
  `sub_region_id` int NOT NULL,
  `price_range` varchar(45) NOT NULL,
  `cuisine_id` int NOT NULL,
  `rating` int NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `street_address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip_code` varchar(45) NOT NULL,
  `state` char(2) NOT NULL,
  `atmosphere` varchar(45) DEFAULT NULL,
  `accepted_payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`),
  KEY `fk_res_sub_region_id` (`sub_region_id`),
  KEY `fk_cuisine_id_idx` (`cuisine_id`),
  CONSTRAINT `fk_cuisine_id` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisine_type` (`cuisine_id`),
  CONSTRAINT `fk_res_sub_region_id` FOREIGN KEY (`sub_region_id`) REFERENCES `locations` (`sub_region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,1,'$$$',1,5,'11:00:00','22:00:00','(808)-243-4766','3550 Wailea Alanui Dr','Wailea','96753','HI','fine dinning','all'),(2,2,'$$$$',1,5,'16:00:00','22:00:00','(808)-879-1110','1881 S Kihei Rd ste 3','Kihei','96753','HI','fine dinning','all'),(3,2,'$$$$',2,5,'11:00:00','20:00:00','(808)-871-7782','425 Koloa st Suite 104','Kahului','96732','HI','casual dinning','all'),(4,3,'$$$$',5,5,'11:00:00','22:00:00','(808)-879-1110','1670 Honoapiilani Hwy','Wailuku','96793','HI','casual dinning','all'),(5,3,'$$$$',3,5,'16:00:00','21:30:00','(808)-667-5117','27 Lahainaluna Rd Lahaina Inn','Lahaina','96761','HI','fine dinning','all'),(6,1,'$$$$',3,5,'17:30:00','22:00:00','(808)-579-3354','115 Baldwin Ave ','Paia','96779','HI','fine dinning','all'),(7,1,'$$$',1,5,'15:00:00','21:00:00','(808)-669-6400','1 Bay Club PI','Kapalua','96779','HI','fine dinning','all'),(8,3,'$$$',4,4,'07:00:00','23:30:00','(808)-727-2521','1945 S Kihei Road','Kihei','96779','HI','quick serve ','all'),(9,2,'$$$$',3,5,'11:00:00','21:00:00','(808)-579-8488','799 Poho PI','Paia','96779','HI','Buffet','all'),(10,3,'$$$$',1,5,'06:30:00','21:00:00','(808)-573-1234','3550 Wailea Alanui Dr','Wailea','96779','HI','casual dinning','all'),(11,2,'$$$$',1,5,'17:00:00','23:30:00','(808)-874-8000','3900 Wailea Alanui Drive','Wailea','96779','HI','fast casual','all'),(12,1,'$$$$',1,5,'11:00:00','22:00:00','(808)-669-6425','744 Front St','Lahaina','96779','HI','fine dinning','all'),(13,2,'$$$',5,5,'11:30:00','21:00:00','(808)-875-2210','4100 Wailea Alanui Drive','Wailea','96779','HI','fine dinning','all'),(14,3,'$$$',5,5,'17:00:00','22:00:00','(808)-667-4796','200 Nohea Kai Drive','Lahaina','96779','HI','Buffet','all'),(15,3,'$$',8,5,'11:00:00','21:00:00','(808)-214-5590','5095 Napilihau St Ste 107','Lahaina','96761','HI','casual dinning','all'),(16,3,'$$',7,5,'06:00:00','16:00:00','(808)-856-0049','840 Wainee St Ste A7','Lahaina','96761','HI','casual dinning','all'),(17,3,'$$',8,5,'10:30:00','21:00:00','(808)-276-3060','741 Wainee St','Lahaina','96761','HI','food truck','Cash '),(18,3,'$$',7,4,'11:00:00','21:00:00','(808)-875-7782','2439 S Kihei Rd Ste A107','Kihei','96753','HI','fast food','all'),(19,3,'$$$',10,5,'18:00:00','21:30:00','(808)-875-8258','2395 S Kihei Rd ','Kihei','96753','HI','casual dinning','all'),(20,3,'$$',11,4,'11:00:00','20:30:00','(808)-874-5605','2439 S Kihei Rd','Kihei','96753','HI','casual dinning','all'),(21,3,'$$',1,4,'11:00:00','23:00:00','(808)-891-2322','10 Wailea Gateway PI Ste-B-201','Kihei','96753','HI','family dinning','all'),(22,2,'$$',9,5,'11:00:00','15:00:00','(808)-871-7766','190 Alamaha St Unit 7A','Kahului','96732','HI','cafe','all'),(23,3,'$$',12,5,'11:00:00','19:00:00','(808)-868-4544','2119 Vineyard St ','Wailuku','96793','HI','casual dinning','all'),(24,3,'$$',13,5,'11:00:00','14:00:00','(808)-243-3454','2050 Main St Ste 4','Wailuku','96793','HI','fast casual','all'),(25,3,'$$',14,4,'10:00:00','21:30:00','(808)-243-9560','1792 Main St ','Wailuku','96793','HI','casual dinning','all'),(26,1,'$$',15,4,'08:30:00','21:00:00','(808)-579-6323','42 Baldwin Ave ','Paia','96779','HI','casual dinning','all'),(27,1,'$$',3,5,'11:00:00','21:00:00','(808)-579-8989','89 Hana Hwy','Paia','96779','HI','casual dinning','all'),(28,3,'$$',7,4,'08:00:00','22:00:00','(808)-661-3322','1285 Front St','Lahaina','96761','HI','casual dinning','all'),(29,3,'$$',7,4,'11:00:00','22:30:00','(808)-661-4811','845 Front St Ste A','Lahaina','96761','HI','family dinning','all'),(30,3,'$$',6,5,'11:00:00','15:00:00','(808)-419-8980','22 Alahele Pl','Kihei','96753','HI','food truck','all');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL,
  `room_type_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `num_guest` int NOT NULL,
  `room_view_id` int NOT NULL,
  `kitchenette` tinyint NOT NULL,
  `cost_per_night` decimal(9,2) NOT NULL,
  `balcony` tinyint NOT NULL,
  `sofa_bed` tinyint NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `fk_room_type_id_idx` (`room_type_id`),
  KEY `fk_room_view_id_idx` (`room_view_id`),
  KEY `fk_hotel_id` (`hotel_id`),
  CONSTRAINT `fk_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_overview` (`hotel_id`),
  CONSTRAINT `fk_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`),
  CONSTRAINT `fk_room_view_id` FOREIGN KEY (`room_view_id`) REFERENCES `room_view` (`room_view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,4,4,1,1,1344.00,1,1),(2,1,4,4,6,1,1544.00,1,1),(3,4,5,3,6,1,375.00,1,1),(4,3,5,2,5,1,276.25,1,0),(5,5,6,6,7,1,179.00,1,1),(6,5,6,4,6,1,159.00,1,0),(7,3,7,4,6,0,649.00,1,0),(8,3,7,4,2,0,899.00,1,1),(9,6,8,4,2,1,650.00,1,0),(10,2,7,4,2,0,929.00,1,1),(11,1,3,4,6,1,1375.00,0,1),(12,1,3,6,2,1,1025.00,0,1),(13,3,2,2,5,0,235.00,0,0),(14,2,2,4,6,1,305.00,1,1),(15,1,1,2,6,0,429.00,1,0),(16,1,1,4,4,0,479.00,1,0),(17,1,11,4,1,1,1109.00,1,1),(18,1,11,6,5,1,1329.00,1,1),(19,3,12,4,8,0,279.00,0,1),(20,2,12,4,8,1,409.00,0,1),(21,3,13,4,6,0,139.00,0,0),(22,3,13,4,2,1,254.00,0,0),(23,2,14,4,4,1,219.00,1,0),(24,2,14,6,1,1,285.00,1,0),(25,4,15,4,6,1,213.00,0,0),(26,2,15,6,2,1,266.00,1,1),(27,4,9,3,8,1,402.64,0,1),(28,2,9,5,8,1,972.64,0,1),(29,3,10,2,9,0,329.00,0,0),(30,2,10,2,1,0,699.00,1,0);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `room_type_id` int NOT NULL,
  `room_type` varchar(20) NOT NULL,
  PRIMARY KEY (`room_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'residence'),(2,'suite'),(3,'standard '),(4,'studio'),(5,'condo'),(6,'cottage');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_view`
--

DROP TABLE IF EXISTS `room_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_view` (
  `room_view_id` int NOT NULL,
  `room_view` varchar(45) NOT NULL,
  PRIMARY KEY (`room_view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_view`
--

LOCK TABLES `room_view` WRITE;
/*!40000 ALTER TABLE `room_view` DISABLE KEYS */;
INSERT INTO `room_view` VALUES (1,'Partial ocean'),(2,'Oceanfront'),(3,'Parking lot'),(4,'Resort'),(5,'Mountain'),(6,'Garden'),(7,'Park'),(8,'Not Specified'),(9,'Town');
/*!40000 ALTER TABLE `room_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `south_restaurants`
--

DROP TABLE IF EXISTS `south_restaurants`;
/*!50001 DROP VIEW IF EXISTS `south_restaurants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `south_restaurants` AS SELECT 
 1 AS `Restaurant Rating`,
 1 AS `Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type_of_excursion`
--

DROP TABLE IF EXISTS `type_of_excursion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_of_excursion` (
  `type_id` int NOT NULL,
  `name_of_event` varchar(45) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_excursion`
--

LOCK TABLES `type_of_excursion` WRITE;
/*!40000 ALTER TABLE `type_of_excursion` DISABLE KEYS */;
INSERT INTO `type_of_excursion` VALUES (1,'ATV riding tour'),(2,'Horseback riding tour'),(3,'Snorkeling'),(4,'Whale watching '),(5,'Parasailing '),(6,'Helicopter Tour'),(7,'Kayaking'),(8,'Driving tour'),(9,'Ziplining'),(10,'Hiking tour'),(11,'Biking tour'),(12,'Surfing lessons'),(13,'Boat rides'),(14,'Dinner cruise'),(15,'Luau');
/*!40000 ALTER TABLE `type_of_excursion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vieworganizationsinlahaina`
--

DROP TABLE IF EXISTS `vieworganizationsinlahaina`;
/*!50001 DROP VIEW IF EXISTS `vieworganizationsinlahaina`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vieworganizationsinlahaina` AS SELECT 
 1 AS `Organization Name`,
 1 AS `Number of Events Offered`,
 1 AS `Average Amount of Time`,
 1 AS `Full Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `amenities_view`
--

/*!50001 DROP VIEW IF EXISTS `amenities_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `amenities_view` AS select `hotel_overview`.`hotel_name` AS `Hotel Name`,`hotel_overview`.`city` AS `City`,`hotel_overview`.`hotel_phone_number` AS `Phone Number`,count(distinct `hotel_amenities_join`.`amenities_id`) AS `Number of Amenities` from ((`hotel_overview` join `hotel_amenities_join` on((`hotel_overview`.`hotel_id` = `hotel_amenities_join`.`hotel_id`))) join `amenities` on((`hotel_amenities_join`.`amenities_id` = `amenities`.`amenities_id`))) group by `hotel_overview`.`city` having (count(distinct `hotel_amenities_join`.`amenities_id`) > 8) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cheap_excursions`
--

/*!50001 DROP VIEW IF EXISTS `cheap_excursions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cheap_excursions` AS select distinct `excursion_orgs`.`organization_name` AS `Organization Name`,`excursion_orgs`.`street_address` AS `Street Address`,`excursion_orgs`.`zip_code` AS `Zip Code`,`excursion_orgs`.`state` AS `State`,`excursion_orgs`.`phone_number` AS `Phone Number`,`excursion_type_join`.`cost_per_person` AS `Cost Per Person` from (`excursion_orgs` join `excursion_type_join` on((`excursion_orgs`.`organization_id` = `excursion_type_join`.`organization_id`))) where (`excursion_type_join`.`cost_per_person` < 80) order by `excursion_orgs`.`organization_name` desc,'Cost Per Person' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hotels`
--

/*!50001 DROP VIEW IF EXISTS `hotels`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hotels` AS select `ho`.`hotel_name` AS `Hotel Name`,concat(`ho`.`street_address`,', ',`ho`.`city`,', ',`ho`.`state`,' ',`ho`.`zip_code`) AS `Address`,`a`.`amenities_name` AS `Amenities`,round(avg(`r`.`cost_per_night`),2) AS `Average Room Price`,`b`.`bed_type` AS `Bed Type`,`t`.`room_view` AS `Room View`,`t`.`room_type` AS `Room Type` from ((((((`amenities` `a` join `hotel_amenities_join` `haj` on((`a`.`amenities_id` = `haj`.`amenities_id`))) join `hotel_overview` `ho` on((`haj`.`hotel_id` = `ho`.`hotel_id`))) join `room` `r` on((`haj`.`hotel_id` = `r`.`hotel_id`))) join (select `r`.`room_id` AS `room_id`,`rv`.`room_view` AS `room_view`,`rt`.`room_type` AS `room_type` from ((`room_view` `rv` join `room` `r` on((`rv`.`room_view_id` = `r`.`room_view_id`))) join `room_type` `rt` on((`r`.`room_type_id` = `rt`.`room_type_id`)))) `t` on((`r`.`room_id` = `t`.`room_id`))) join `beds_room_join` `brj` on((`t`.`room_id` = `brj`.`room_id`))) join `beds` `b` on((`brj`.`bed_id` = `b`.`bed_id`))) where ((`t`.`room_view` = 'Oceanfront') and (`t`.`room_type` = 'suite')) group by `ho`.`hotel_name` having ((avg(`r`.`cost_per_night`) < 800) and (`b`.`bed_type` = 'king')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `south_restaurants`
--

/*!50001 DROP VIEW IF EXISTS `south_restaurants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `south_restaurants` AS select `r`.`rating` AS `Restaurant Rating`,concat(`r`.`street_address`,', ',`r`.`city`,', ',`r`.`state`,' ',`r`.`zip_code`) AS `Address` from (`restaurants` `r` join `cuisine_type` `ct` on((`r`.`cuisine_id` = `ct`.`cuisine_id`))) where (`r`.`sub_region_id` in (select `locations`.`sub_region_id` from `locations` where (`locations`.`sub_region_id` = 2)) and (`r`.`rating` > 3)) order by `r`.`city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vieworganizationsinlahaina`
--

/*!50001 DROP VIEW IF EXISTS `vieworganizationsinlahaina`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vieworganizationsinlahaina` AS select `excursion_orgs`.`organization_name` AS `Organization Name`,count(`excursion_type_join`.`type_id`) AS `Number of Events Offered`,concat(convert(format(avg(`excursion_type_join`.`time_consumption`),2) using utf8mb4),' hour(s)') AS `Average Amount of Time`,concat(`excursion_orgs`.`street_address`,', ',`excursion_orgs`.`city`,', ',`excursion_orgs`.`state`,' ',`excursion_orgs`.`zip_code`) AS `Full Address` from (`excursion_orgs` join `excursion_type_join` on((`excursion_orgs`.`organization_id` = `excursion_type_join`.`organization_id`))) where (`excursion_orgs`.`city` = 'Lahaina') group by `excursion_orgs`.`organization_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-11 21:40:41
