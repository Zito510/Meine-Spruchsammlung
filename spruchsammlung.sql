-- MySQL dump 10.13  Distrib 9.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: spruchsammlung_db
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `sprueche`
--

DROP TABLE IF EXISTS `sprueche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprueche` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `autor` varchar(255) NOT NULL,
  `erstellt_am` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprueche`
--

LOCK TABLES `sprueche` WRITE;
/*!40000 ALTER TABLE `sprueche` DISABLE KEYS */;
INSERT INTO `sprueche` VALUES (1,'Der Weg ist das Ziel.','Konfuzius','2025-07-17 10:54:06'),(2,'Phantasie ist wichtiger als Wissen.','Albert Einstein','2025-07-17 10:54:06'),(3,'Ich weiß, dass ich nichts weiß.','Sokrates','2025-07-17 11:25:37'),(4,'Der Weg ist das Ziel.','Konfuzius','2025-07-17 11:28:23'),(5,'Phantasie ist wichtiger als Wissen, denn Wissen ist begrenzt.','Albert Einstein','2025-07-17 11:28:23'),(6,'Zwei Dinge sind unendlich: das Universum und die menschliche Dummheit. Beim Universum bin ich mir nicht ganz sicher.','Albert Einstein','2025-07-17 11:28:23'),(7,'Ich denke, also bin ich.','René Descartes','2025-07-17 11:28:23'),(8,'Sei du selbst die Veränderung, die du dir wünschst für diese Welt.','Mahatma Gandhi','2025-07-17 11:28:23'),(9,'Gut gemacht ist besser als gut gesagt.','Benjamin Franklin','2025-07-17 11:28:23'),(10,'Wir haben nichts zu fürchten außer der Furcht selbst.','Franklin D. Roosevelt','2025-07-17 11:28:23'),(11,'Das Leben ist wie eine Schachtel Pralinen. Man weiß nie, was man bekommt.','Forrest Gump','2025-07-17 11:28:23'),(12,'Ich bin dein Vater.','Darth Vader','2025-07-17 11:28:23'),(13,'Ich werde ihm ein Angebot machen, das er nicht ablehnen kann.','Der Pate','2025-07-17 11:28:23'),(14,'Ich komme wieder.','Terminator','2025-07-17 11:28:23'),(15,'Hier ist looking at you, Kleines.','Casablanca','2025-07-17 11:28:23'),(16,'Zeig mir das Geld!','Jerry Maguire','2025-07-17 11:28:23'),(17,'Niemand setzt Baby in die Ecke.','Dirty Dancing','2025-07-17 11:28:23'),(18,'Ich habe ein ganz mieses Gefühl bei der Sache.','Han Solo','2025-07-17 11:28:23'),(19,'Lebe lang und in Frieden.','Mr. Spock','2025-07-17 11:28:23'),(20,'Warum so ernst?','Joker (The Dark Knight)','2025-07-17 11:28:23'),(21,'Diejenigen, die verrückt genug sind zu denken, sie könnten die Welt verändern, tun es auch.','Steve Jobs','2025-07-17 11:28:23'),(22,'Wenn du durch die Hölle gehst, geh weiter.','Winston Churchill','2025-07-17 11:28:23'),(23,'Nur wer riskiert, zu weit zu gehen, kann herausfinden, wie weit man gehen kann.','T.S. Eliot','2025-07-17 11:28:23'),(24,'Ein kleiner Schritt für einen Menschen, aber ein riesiger Sprung für die Menschheit.','Neil Armstrong','2025-07-17 11:28:23'),(25,'Zu beneiden ist das Land, das Helden hat. Doch arm ist das Land, das welche braucht.','Van Zan','2025-07-17 11:28:23'),(26,'Ray, wenn dich jemand fragt, ob du ein Gott bist? sag einfach ?Ja!','Winston Zeddemore','2025-07-17 11:28:23'),(27,'Ich weiß, dass ich nichts weiß.','Sokrates','2025-07-17 11:28:23');
/*!40000 ALTER TABLE `sprueche` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-17 13:43:40
