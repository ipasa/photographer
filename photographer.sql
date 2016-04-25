-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: photographer
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
<<<<<<< HEAD

--
-- Database: `photographer`
--

-- --------------------------------------------------------
=======
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
>>>>>>> 53c83ccaf51a14617bbc2f64375fe1f6fccf57c5

--
-- Table structure for table `categorylists`
--

DROP TABLE IF EXISTS `categorylists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorylists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorylists`
--

LOCK TABLES `categorylists` WRITE;
/*!40000 ALTER TABLE `categorylists` DISABLE KEYS */;
INSERT INTO `categorylists` VALUES (1,'Abstract'),(2,'Animals'),(3,'Black and White'),(4,'Celebrities'),(5,'City & Architecture'),(6,'Commercial'),(7,'Concert'),(8,'Family'),(9,'Fashion'),(10,'Film'),(11,'Fine Art'),(12,'Food'),(13,'Journalism'),(14,'Landscapes'),(15,'Macro'),(16,'Nature'),(17,'People'),(18,'Performing Arts'),(19,'Sport'),(20,'Still Life'),(21,'Street'),(22,'Transportation'),(23,'Travel'),(24,'Underwater'),(25,'Urban Exploration'),(26,'Wedding'),(27,'Uncategorised');
/*!40000 ALTER TABLE `categorylists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`,`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,'2016-04-24 18:46:07','2016-04-24 18:46:07'),(1,2,'2016-04-24 19:05:57','2016-04-24 19:05:57'),(1,3,'2016-04-24 18:02:37','2016-04-24 18:02:37'),(1,5,'2016-04-24 19:42:42','2016-04-24 19:42:42'),(3,5,'2016-04-24 20:47:11','2016-04-24 20:47:11'),(3,11,'2016-04-25 19:59:03','2016-04-25 19:59:03'),(4,8,'2016-04-25 18:06:52','2016-04-25 18:06:52'),(5,10,'2016-04-25 19:24:49','2016-04-25 19:24:49'),(5,11,'2016-04-25 19:32:36','2016-04-25 19:32:36'),(5,12,'2016-04-25 19:24:08','2016-04-25 19:24:08');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_title` varchar(255) NOT NULL,
  `image_description` varchar(600) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_category` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `view_counter` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (3,'Test Image Upload - 1','Dummy data for test image','571d2fadbfc83.jpg',16,3,0,'2016-04-24 20:44:31','2016-04-24 20:42:21'),(4,'Test Image Upload - 2','','571d2ff5bcc59.jpg',1,3,3,'2016-04-25 11:10:31','2016-04-25 21:10:31'),(5,'Test Image Upload - 3','','571d3044b53d7.jpg',9,3,1,'2016-04-25 11:12:32','2016-04-25 21:12:32'),(6,'Test Image Upload - 4','','571d30a7c3500.jpg',15,3,0,'2016-04-24 20:46:31','2016-04-24 20:46:31'),(7,'Test Image Upload - 6','','571d312e44d32.jpg',1,3,0,'2016-04-24 20:48:46','2016-04-24 20:48:46'),(8,'Test Image Upload - 7','','571d322f6e7d0.jpg',1,3,0,'2016-04-24 20:53:03','2016-04-24 20:53:03'),(9,'light trail by sohel','light trail','571dcfbcbd4b6.jpg',1,4,0,'2016-04-25 18:05:16','2016-04-25 18:05:16'),(10,'Upload Test Image','','571dd0ef05e29.jpg',16,3,1,'2016-04-25 19:19:40','2016-04-26 05:19:40'),(11,'test data upload','','571dd121144e7.jpg',16,3,0,'2016-04-25 18:11:13','2016-04-25 18:11:13'),(12,'khik khik ','','571de21f0aedb.jpg',17,5,0,'2016-04-25 19:23:43','2016-04-25 19:23:43');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Hasan Hafiz Pasha','mach.pasha@gmail.com','$2y$10$/Hxr3lYMe5YtbfLAjOLziu.7vZMhe/O2Jlclv4TFxRdKOeGjjrV52','2016-04-24 20:29:27','2016-04-24 20:29:27'),(4,'Abu Sohel','abusoheljnu@gmail.com','$2y$10$2klMD5sDGl2/cDfiLDNC2ewN82RQWCI1zHN49jfszBYbYkAQ7eNqm','2016-04-25 17:57:21','2016-04-25 17:57:21'),(5,'jilani khandaker','jilanikhandaker@yahoo.com','$2y$10$7RKkNN25kKJNlRWysoAEYOjk5cQ3HJpMDQxutr.cFsfeuQzlnL//u','2016-04-25 19:20:34','2016-04-25 19:20:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-25 15:25:42
