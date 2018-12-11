-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: edify
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `license` (
  `license_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `user_notes` varchar(200) DEFAULT NULL,
  `admin_notes` varchar(200) DEFAULT NULL,
  `frn_user_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`license_id`),
  UNIQUE KEY `file_UNIQUE` (`file`),
  KEY `frn_user_id_idx` (`frn_user_id`),
  CONSTRAINT `frn_user_id` FOREIGN KEY (`frn_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (52,'criminal','ba1d0601e7d5d0041eae6473570e8c07.jpg','i am not a criminal','',20,'Awaiting Approval'),(53,'siteplan','e7733ea748534a3d679bace791494d2c.jpg','plan to have lunch','',20,'Denied'),(54,'criminal','6069919769bfc958cebe2fa99333eec9.jpg','yum','',20,'Accepted'),(55,'floorplan','1677ecbfb933299569ac04317e25de55.jpg','yummy','deny',20,'Denied'),(56,'criminal','7f7b3f73afb38ebfd0092b204a771fbf.gif','woo','great',32,'Denied'),(57,'reference','682324381bba8ce174050ad28313eda9.png','',NULL,35,'Awaiting Approval'),(58,'reference','9334ae2ff1afce5cca153dbef0c5854d.gif','','',20,'Denied'),(59,'criminal','380db0eb3db0426ff0d14fb3fe7beb92.gif','','Approved',20,'Accepted'),(60,'criminal','8efee80aab4fb4f71a5d9cff93b6b192.png','','',20,'Denied'),(61,'criminal','46d6eb8fc45b7439713465fbcc9edf03.gif','','Not a criminal',20,'Accepted'),(62,'siteplan','633483a2587b16b25218987c5f24a6d7.gif','','Why is this a gif',20,'Denied'),(63,'criminal','caee37b5ab5bfc4b2fe141909d9df404.png','','',36,'Awaiting Approval'),(64,'siteplan','9350ea7b308e6488c8c5f1d785f79f65.PNG','','',37,'Awaiting Approval');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `education` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (20,'Mika','Shaw','user','mshaw@shaw.ca','vancouver','user','adas'),(22,'admin','admin','admin','admin','vancouver','admin','adss'),(23,'Nick','Me','$2b$10$0PBatJgfu/gllYBRyLK/.e0HsTteVSEYJs8U5CzinyZ3uCj422vaO','nick@me.ca','New Westminister','user',NULL),(24,'Captain','Falco','$2b$10$MzdL2JGAUWcaosgHDqRp9eqKIBBTRgU/y3yVvGQwbfNFTWHWj1nOy','f@zero.ca','vancouver','user','racer'),(25,'super','super','super','super','north vancouver','owner','smart'),(26,'Free','jeff','$2b$10$m8RiXYL2kQ8KVeJUOffCLO1YQNXEzeJEbGetItYemohh358VCo7..','free@jeff.com','adsdsa','user','dadsdsa'),(27,'falcon','falcon','$2b$10$lZCJ4nlP.qn4PgIAJDFZvuLVsbKV04GG9DEgu9RVlfqmuQQb7fGAG','blue@falcon.ca','yeet','user','A123456789'),(28,'yee','yee','$2b$10$.Qw0SgScesG7Esw9/AoEueXppNZPgIsqLudCqsZFsRNRFqsqokbS2','yee@yee.com','yee','user','yee'),(29,'Garry','Larry','$2b$10$0Z7.Jap/EmtiKa.HJ48FG.xHIOXb62w4GDTv6C0/pbN9Et1rtihXG','garry@larry.com','Vancouver','user','Background'),(30,'account','one','Password1','account@one.ca','N/A','admin','N/A'),(31,'Jessie','Jones','$2b$10$tWP9zu1UYPxCrD6yvdvPkOK9GslP82tr0WijBudJ6bWizOh/4yj2m','jessie@jones.com','Surrey','user','Nursing'),(32,'Pedram','Nazari','$2b$10$mhq3tBSRHs.Q293WaMq5JOgCjhJO3Ph8ss5hRR/UfEmosuqqss0HO','pedjunk@gmail.com','North Vancovuer','user','Computing'),(33,'Ko','Iketani','$2b$10$WeNYrnCRZpJZOk4lqJ97WOZsNfr6Oftn8S7C6uILjPDFDnnTuh8n.','aa@gmail.com','Burnaby','user','Computer'),(34,'Monkey','Paw','$2b$10$aEVDEI7auQo4mpf.GB.R6uEj9J0O6WJfelD3yGBCiikMF3uATMgx6','monkey@gmail.com','Vancouver','user','PHD'),(35,'alexa','phan','$2b$10$5.bR9yiQKfd1Ym4GFXjfWe26rckiWC1H4CFt3AHNcXuIphnBFhNiC','alex@gmail.com','van','user','tech'),(36,'Susanna','Kan','$2b$10$3cUpvmsE3QbWQyFdgD4g/eTVqUTzxHcqQnJC1NPyDNIjf/wCJAwJ6','skan10@bcit.ca','Burnaby','user','Education'),(37,'Poop','Poop','$2b$10$MhIVNlgtKARWBOuas9rreOU8ZdEn6tT5RrtWbCXKRDofJNR7dPUnS','hello@hotmail.com','Zimbabwe','user','Grade 2'),(38,'a','ads','$2b$10$b32fTiQ5uEVrnYsinKtO3.HPbgA2y3441Zag.ciVhzbNreb4zvq12','a@a.com','qw','user','sdfda');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 16:17:07
