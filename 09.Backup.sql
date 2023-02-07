
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: libreria
-- ------------------------------------------------------
-- Server version	8.0.31
select * from autor;
use libreria;


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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id_autor` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) NOT NULL,
  `id_pais` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_autor`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `autor_info`
--

DROP TABLE IF EXISTS `autor_info`;
/*!50001 DROP VIEW IF EXISTS `autor_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `autor_info` AS SELECT 
 1 AS `id_autor`,
 1 AS `nombre_completo`,
 1 AS `pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `autor_libro`
--

DROP TABLE IF EXISTS `autor_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor_libro` (
  `id_autor` smallint unsigned NOT NULL,
  `id_libro` smallint unsigned NOT NULL,
  KEY `id_autor` (`id_autor`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `autor_libro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  CONSTRAINT `autor_libro_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor_libro`
--

LOCK TABLES `autor_libro` WRITE;
/*!40000 ALTER TABLE `autor_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `autor_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Adventura'),(2,'Comedia'),(3,'Clasicos'),(4,'Superheroes'),(5,'Fantasias'),(6,'Infantiles'),(7,'Drama'),(8,'Terror'),(9,'Misterio'),(10,'Crimen'),(11,'Romantico'),(12,'Feminista'),(13,'Matematica'),(14,'Bibliografia'),(15,'Deportes'),(16,'Viajes'),(17,'Academico'),(18,'Adventura'),(19,'Comedia'),(20,'Clasicos'),(21,'Superheroes'),(22,'Fantasias'),(23,'Infantiles'),(24,'Drama'),(25,'Terror'),(26,'Misterio'),(27,'Crimen'),(28,'Romantico'),(29,'Feminista'),(30,'Matematica'),(31,'Bibliografia'),(32,'Deportes'),(33,'Viajes'),(34,'Academico'),(35,'Adventura'),(36,'Comedia'),(37,'Clasicos'),(38,'Superheroes'),(39,'Fantasias'),(40,'Infantiles'),(41,'Drama'),(42,'Terror'),(43,'Misterio'),(44,'Crimen'),(45,'Romantico'),(46,'Feminista'),(47,'Matematica'),(48,'Bibliografia'),(49,'Deportes'),(50,'Viajes'),(51,'Academico'),(52,'Adventura'),(53,'Comedia'),(54,'Clasicos'),(55,'Superheroes'),(56,'Fantasias'),(57,'Infantiles'),(58,'Drama'),(59,'Terror'),(60,'Misterio'),(61,'Crimen'),(62,'Romantico'),(63,'Feminista'),(64,'Matematica'),(65,'Bibliografia'),(66,'Deportes'),(67,'Viajes'),(68,'Academico'),(69,'Adventura'),(70,'Comedia'),(71,'Clasicos'),(72,'Superheroes'),(73,'Fantasias'),(74,'Infantiles'),(75,'Drama'),(76,'Terror'),(77,'Misterio'),(78,'Crimen'),(79,'Romantico'),(80,'Feminista'),(81,'Matematica'),(82,'Bibliografia'),(83,'Deportes'),(84,'Viajes'),(85,'Academico'),(86,'Adventura'),(87,'Comedia'),(88,'Clasicos'),(89,'Superheroes'),(90,'Fantasias'),(91,'Infantiles'),(92,'Drama'),(93,'Terror'),(94,'Misterio'),(95,'Crimen'),(96,'Romantico'),(97,'Feminista'),(98,'Matematica'),(99,'Bibliografia'),(100,'Deportes'),(101,'Viajes'),(102,'Academico'),(103,'Adventura'),(104,'Comedia'),(105,'Clasicos'),(106,'Superheroes'),(107,'Fantasias'),(108,'Infantiles'),(109,'Drama'),(110,'Terror'),(111,'Misterio'),(112,'Crimen'),(113,'Romantico'),(114,'Feminista'),(115,'Matematica'),(116,'Bibliografia'),(117,'Deportes'),(118,'Viajes'),(119,'Academico'),(120,'Adventura'),(121,'Comedia'),(122,'Clasicos'),(123,'Superheroes'),(124,'Fantasias'),(125,'Infantiles'),(126,'Drama'),(127,'Terror'),(128,'Misterio'),(129,'Crimen'),(130,'Romantico'),(131,'Feminista'),(132,'Matematica'),(133,'Bibliografia'),(134,'Deportes'),(135,'Viajes'),(136,'Academico'),(137,'Adventura'),(138,'Comedia'),(139,'Clasicos'),(140,'Superheroes'),(141,'Fantasias'),(142,'Infantiles'),(143,'Drama'),(144,'Terror'),(145,'Misterio'),(146,'Crimen'),(147,'Romantico'),(148,'Feminista'),(149,'Matematica'),(150,'Bibliografia'),(151,'Deportes'),(152,'Viajes'),(153,'Academico');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_libro`
--

DROP TABLE IF EXISTS `categoria_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_libro` (
  `id_categoria` tinyint unsigned NOT NULL,
  `id_libro` smallint unsigned NOT NULL,
  KEY `id_categoria` (`id_categoria`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `categoria_libro_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `categoria_libro_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_libro`
--

LOCK TABLES `categoria_libro` WRITE;
/*!40000 ALTER TABLE `categoria_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int unsigned NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(2,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(3,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(4,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(5,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(6,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(7,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(8,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(9,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(10,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(11,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(12,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(13,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(14,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(15,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(16,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(17,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(18,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(19,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(20,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(21,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(22,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(23,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(24,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(25,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(26,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(27,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(28,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(29,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(30,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(31,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(32,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(33,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(34,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(35,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(36,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(37,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(38,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(39,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(40,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(41,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(42,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(43,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(44,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(45,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(46,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(47,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(48,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(49,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(50,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(51,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(52,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(53,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(54,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(55,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(56,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(57,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(58,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(59,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(60,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(61,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(62,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(63,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(64,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(65,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(66,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(67,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(68,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(69,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(70,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(71,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(72,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(73,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(74,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(75,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(76,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(77,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(78,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(79,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(80,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(81,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(82,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(83,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(84,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(85,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(86,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(87,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(88,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(89,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(90,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(91,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(92,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(93,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(94,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(95,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(96,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(97,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(98,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(99,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(100,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(101,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(102,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(103,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(104,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(105,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(106,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(107,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(108,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(109,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(110,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(111,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(112,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(113,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(114,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(115,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(116,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(117,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(118,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(119,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(120,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(121,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(122,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(123,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(124,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(125,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(126,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(127,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(128,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(129,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(130,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(131,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(132,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(133,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(134,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(135,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(136,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(137,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(138,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(139,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(140,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(141,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(142,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(143,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(144,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(145,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(146,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(147,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(148,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(149,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(150,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(151,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(152,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(153,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(154,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(155,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(156,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(157,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(158,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(159,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(160,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(161,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(162,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(163,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(164,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(165,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(166,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(167,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(168,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(169,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(170,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(171,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(172,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(173,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(174,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(175,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(176,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(177,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(178,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(179,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(180,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(181,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(182,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(183,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(184,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(185,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(186,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(187,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(188,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(189,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(190,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(191,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(192,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(193,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(194,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(195,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(196,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(197,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(198,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(199,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(200,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(201,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(202,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(203,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(204,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(205,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(206,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(207,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(208,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(209,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(210,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(211,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(212,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(213,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(214,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(215,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(216,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(217,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(218,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(219,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(220,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(221,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(222,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(223,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(224,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(225,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(226,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(227,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(228,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(229,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(230,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(231,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(232,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(233,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(234,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(235,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(236,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(237,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(238,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(239,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(240,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(241,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(242,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(243,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(244,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(245,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(246,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(247,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(248,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(249,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(250,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(251,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(252,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(253,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(254,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(255,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(256,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(257,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(258,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(259,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(260,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(261,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(262,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(263,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(264,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(265,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(266,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(267,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(268,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(269,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(270,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(271,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(272,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(273,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(274,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(275,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(276,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(277,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(278,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(279,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(280,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(281,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(282,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(283,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(284,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(285,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(286,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(287,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(288,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(289,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(290,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(291,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(292,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(293,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(294,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(295,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(296,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(297,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(298,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(299,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(300,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(301,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(302,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(303,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(304,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(305,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(306,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(307,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(308,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(309,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(310,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(311,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(312,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(313,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(314,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(315,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(316,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(317,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(318,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(319,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(320,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(321,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(322,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(323,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(324,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(325,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(326,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(327,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(328,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(329,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(330,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(331,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(332,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(333,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(334,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(335,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(336,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(337,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(338,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(339,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(340,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(341,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(342,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(343,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(344,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(345,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(346,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(347,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(348,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(349,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(350,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(351,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(352,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(353,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(354,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(355,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(356,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(357,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(358,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(359,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(360,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(361,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(362,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(363,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(364,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(365,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(366,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(367,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(368,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(369,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(370,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(371,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(372,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(373,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(374,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(375,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(376,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01'),(377,'Luis','Gonzalez',45052263,'5716627961','lgonzalez0@gmail.com','1950-12-03'),(378,'Lara','Rivera',48808333,'9833704792','lrivera@gmail.com','1961-06-03'),(379,'Tano','Fernandez',38931774,'2775502630','tfernandez@gmail.com','1946-03-08'),(380,'Morgan','Martinez',46617101,'7709991932','mmartinez@gmail.com','2001-01-10'),(381,'Lautaro','Lopez',40643709,'5641304618','llopez@gmail.com','1986-05-30'),(382,'Andres','Ruiz',31631991,'8362105839','aruiz5@gmail.com','1945-09-30'),(383,'Chiqui','Diaz',45465031,'5246940213','cdiaz@gmail.com','1974-03-28'),(384,'Cassondra','Romero',31844893,'2251940018','cromero@gmail.com','1955-06-07'),(385,'Nadia','colucci',39792687,'8965986794','ncolucci@gmail.com','1940-10-17'),(386,'Hilda','Jimenez',30245423,'4354674240','hjimenez@gmail.com','1989-03-20'),(387,'Roman','Benetelli',42368235,'8304418456','rbenetteli@gmail.com','1949-08-15'),(388,'Ariel','Aguero',41528188,'7138361044','aguero@gmail.com','1986-12-27'),(389,'Mela','Bandel',34541293,'9085095187','mbandel@gmail.com','1988-01-16'),(390,'Olivia','Fernandez',34743549,'7329898345','ofernandez@gmail.com','1973-06-28'),(391,'Ari','Smith',44946439,'1122901626','asmith@gmail.com','1962-05-11'),(392,'Cathy','Novesco',42593410,'8109124656','cnovesco@gmail.com','1979-01-09'),(393,'Rebecca','Lanister',37797317,'8342452115','rlanister@gmail.com','1980-12-30'),(394,'Lily','Vacci',38256811,'9549761296','liacovaccin@gmail.com','1941-02-08'),(395,'Nicole','Lombardi',40722439,'7299837030','nlombardi@gmail.com','1979-05-30'),(396,'Brandon','Gelder',47965235,'8914491933','bgelderp@gmail.com','1987-11-14'),(397,'Laura','Eefting',47102539,'5435975340','leeftingq@gmail.com','1995-07-14'),(398,'Lourdes','Knok',32932989,'1936680322','lknoks@gmail.com','1944-02-26'),(399,'Julian','Spencer',38025908,'4816945827','jspencert@gmail.com','1990-01-06'),(400,'Willow','Beevens',45395195,'9667160351','wbeevensu@gmail.com','1960-12-06'),(401,'Margot','Lovstrom',44087268,'1123142729','mlovstromv@gmail.com','1979-01-19'),(402,'Sasha','McConnal',46588134,'3416726962','smcconnalw@gmail.com','1980-12-17'),(403,'Daniel','Selcraig',40692788,'2868471870','dselcraigx@gmail.com','1967-05-20'),(404,'Emilia','Wilbore',43055430,'2786437709','ewilborey@gmail.com','1998-08-17'),(405,'Leo','Langfat',32209120,'7646485114','llangfatz@gmail.com','1997-03-01'),(406,'Miranda','Grover',37619656,'2084987834','mgrover10@gmail.com','1942-12-16'),(407,'Genesis','Hartzenberg',47347407,'3115035506','ghartzenberg11@gmail.com','1976-08-18'),(408,'Fede','Ockwell',42806477,'3423908320','bockwell12@gmail.com','1970-09-03'),(409,'Nacho','Londors',44827735,'5595914462','nlondors13@gmail.com','1985-01-14'),(410,'Sara','Grogor',44568826,'8578406432','sgrogor14@gmail.com','1946-07-08'),(411,'Camila','Maykin',43783993,'2211321077','cmaykin15@gmail.com','1995-07-27'),(412,'Agustin','Flancinbaum',34960913,'7631016256','aflancinbaum16@gmail.com','1949-05-02'),(413,'Lucia','Cham',38566893,'5996100075','lcham18@gmail.com','2000-02-28'),(414,'Mateo','Hinder',35300610,'6016195310','vhinder19@gmail.com','1957-12-16'),(415,'Carlos','Livens',39140593,'5497499786','clivens1a@gmail.com','1997-11-08'),(416,'Martina','Monsey',45782268,'4392296558','mmonsey1b@gmail.com','1995-06-10'),(417,'Martin','Abbatini',47902554,'3505138085','mabbatini1c@gmail.com','1972-06-10'),(418,'Julieta','Teasdale-Markie',39084373,'4703349301','jteasdalemarkie1d@gmail.com','1973-12-01'),(419,'Luis','Augie',39713589,'6291553062','laugie1e@gmail.com','1995-08-30'),(420,'David','Tustin',35612213,'5197613604','dtustin1f@gmail.com','1980-09-06'),(421,'Virginie','Ebourne',32975589,'9794143885','vebourne1g@gmail.com','1965-06-13'),(422,'Maria','Fireman',47271186,'9083482924','mfireman1h@gmail.com','1946-06-18'),(423,'Juan','Skoyles',41839785,'1905820208','jskoyles1j@gmail.com','1995-12-01');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolver_libro`
--

DROP TABLE IF EXISTS `devolver_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolver_libro` (
  `id_devolver_libro` int unsigned NOT NULL AUTO_INCREMENT,
  `id_prestamo` int unsigned NOT NULL,
  `fecha_devolucion` datetime NOT NULL,
  PRIMARY KEY (`id_devolver_libro`),
  KEY `id_prestamo` (`id_prestamo`),
  CONSTRAINT `devolver_libro_ibfk_1` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamo` (`id_prestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolver_libro`
--

LOCK TABLES `devolver_libro` WRITE;
/*!40000 ALTER TABLE `devolver_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolver_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editor` (
  `id_editor` smallint unsigned NOT NULL AUTO_INCREMENT,
  `editor` varchar(30) NOT NULL,
  PRIMARY KEY (`id_editor`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
INSERT INTO `editor` VALUES (1,'Errara Natura'),(2,'Caro Raggio'),(3,'Menoscuarto'),(4,'Lornamead'),(5,'Nórdica'),(6,'Blackie Books'),(7,'Visor'),(8,'Hiperión'),(9,'La Isla de Siltolá'),(10,'Pálido Fuego'),(11,'Renacimiento'),(12,'Mirahadas'),(13,'Pre-textos'),(14,'Sexto Piso'),(15,'Acantilado'),(16,'De Conatus'),(17,'Cabaret Voltaire'),(18,'La Huerta Grande'),(19,'Impedimenta'),(20,'La Umbría y la Solana'),(21,'Paricalcitol'),(22,'Lovastatin'),(23,'Secret Roll-On'),(24,'Errara Natura'),(25,'Caro Raggio'),(26,'Menoscuarto'),(27,'Lornamead'),(28,'Nórdica'),(29,'Blackie Books'),(30,'Visor'),(31,'Hiperión'),(32,'La Isla de Siltolá'),(33,'Pálido Fuego'),(34,'Renacimiento'),(35,'Mirahadas'),(36,'Pre-textos'),(37,'Sexto Piso'),(38,'Acantilado'),(39,'De Conatus'),(40,'Cabaret Voltaire'),(41,'La Huerta Grande'),(42,'Impedimenta'),(43,'La Umbría y la Solana'),(44,'Paricalcitol'),(45,'Lovastatin'),(46,'Secret Roll-On'),(47,'Errara Natura'),(48,'Caro Raggio'),(49,'Menoscuarto'),(50,'Lornamead'),(51,'Nórdica'),(52,'Blackie Books'),(53,'Visor'),(54,'Hiperión'),(55,'La Isla de Siltolá'),(56,'Pálido Fuego'),(57,'Renacimiento'),(58,'Mirahadas'),(59,'Pre-textos'),(60,'Sexto Piso'),(61,'Acantilado'),(62,'De Conatus'),(63,'Cabaret Voltaire'),(64,'La Huerta Grande'),(65,'Impedimenta'),(66,'La Umbría y la Solana'),(67,'Paricalcitol'),(68,'Lovastatin'),(69,'Secret Roll-On'),(70,'Errara Natura'),(71,'Caro Raggio'),(72,'Menoscuarto'),(73,'Lornamead'),(74,'Nórdica'),(75,'Blackie Books'),(76,'Visor'),(77,'Hiperión'),(78,'La Isla de Siltolá'),(79,'Pálido Fuego'),(80,'Renacimiento'),(81,'Mirahadas'),(82,'Pre-textos'),(83,'Sexto Piso'),(84,'Acantilado'),(85,'De Conatus'),(86,'Cabaret Voltaire'),(87,'La Huerta Grande'),(88,'Impedimenta'),(89,'La Umbría y la Solana'),(90,'Paricalcitol'),(91,'Lovastatin'),(92,'Secret Roll-On'),(93,'Errara Natura'),(94,'Caro Raggio'),(95,'Menoscuarto'),(96,'Lornamead'),(97,'Nórdica'),(98,'Blackie Books'),(99,'Visor'),(100,'Hiperión'),(101,'La Isla de Siltolá'),(102,'Pálido Fuego'),(103,'Renacimiento'),(104,'Mirahadas'),(105,'Pre-textos'),(106,'Sexto Piso'),(107,'Acantilado'),(108,'De Conatus'),(109,'Cabaret Voltaire'),(110,'La Huerta Grande'),(111,'Impedimenta'),(112,'La Umbría y la Solana'),(113,'Paricalcitol'),(114,'Lovastatin'),(115,'Secret Roll-On'),(116,'Errara Natura'),(117,'Caro Raggio'),(118,'Menoscuarto'),(119,'Lornamead'),(120,'Nórdica'),(121,'Blackie Books'),(122,'Visor'),(123,'Hiperión'),(124,'La Isla de Siltolá'),(125,'Pálido Fuego'),(126,'Renacimiento'),(127,'Mirahadas'),(128,'Pre-textos'),(129,'Sexto Piso'),(130,'Acantilado'),(131,'De Conatus'),(132,'Cabaret Voltaire'),(133,'La Huerta Grande'),(134,'Impedimenta'),(135,'La Umbría y la Solana'),(136,'Paricalcitol'),(137,'Lovastatin'),(138,'Secret Roll-On'),(139,'Errara Natura'),(140,'Caro Raggio'),(141,'Menoscuarto'),(142,'Lornamead'),(143,'Nórdica'),(144,'Blackie Books'),(145,'Visor'),(146,'Hiperión'),(147,'La Isla de Siltolá'),(148,'Pálido Fuego'),(149,'Renacimiento'),(150,'Mirahadas'),(151,'Pre-textos'),(152,'Sexto Piso'),(153,'Acantilado'),(154,'De Conatus'),(155,'Cabaret Voltaire'),(156,'La Huerta Grande'),(157,'Impedimenta'),(158,'La Umbría y la Solana'),(159,'Paricalcitol'),(160,'Lovastatin'),(161,'Secret Roll-On'),(162,'Errara Natura'),(163,'Caro Raggio'),(164,'Menoscuarto'),(165,'Lornamead'),(166,'Nórdica'),(167,'Blackie Books'),(168,'Visor'),(169,'Hiperión'),(170,'La Isla de Siltolá'),(171,'Pálido Fuego'),(172,'Renacimiento'),(173,'Mirahadas'),(174,'Pre-textos'),(175,'Sexto Piso'),(176,'Acantilado'),(177,'De Conatus'),(178,'Cabaret Voltaire'),(179,'La Huerta Grande'),(180,'Impedimenta'),(181,'La Umbría y la Solana'),(182,'Paricalcitol'),(183,'Lovastatin'),(184,'Secret Roll-On'),(185,'Errara Natura'),(186,'Caro Raggio'),(187,'Menoscuarto'),(188,'Lornamead'),(189,'Nórdica'),(190,'Blackie Books'),(191,'Visor'),(192,'Hiperión'),(193,'La Isla de Siltolá'),(194,'Pálido Fuego'),(195,'Renacimiento'),(196,'Mirahadas'),(197,'Pre-textos'),(198,'Sexto Piso'),(199,'Acantilado'),(200,'De Conatus'),(201,'Cabaret Voltaire'),(202,'La Huerta Grande'),(203,'Impedimenta'),(204,'La Umbría y la Solana'),(205,'Paricalcitol'),(206,'Lovastatin'),(207,'Secret Roll-On');
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma_libro`
--

DROP TABLE IF EXISTS `idioma_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idioma_libro` (
  `id_idioma_libro` smallint unsigned NOT NULL AUTO_INCREMENT,
  `idioma_libro` varchar(30) NOT NULL,
  PRIMARY KEY (`id_idioma_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma_libro`
--

LOCK TABLES `idioma_libro` WRITE;
/*!40000 ALTER TABLE `idioma_libro` DISABLE KEYS */;
INSERT INTO `idioma_libro` VALUES (1,'Portugues'),(2,'Aleman'),(3,'Mandarin'),(4,'Español'),(5,'Ingles'),(6,'Japones'),(7,'Frances'),(8,'Italiano'),(9,'Hindi'),(10,'Arabe'),(11,'Indonesio'),(12,'Turco'),(13,'Coreano'),(14,'Tailandes'),(15,'Marati'),(16,'Catalan'),(17,'Polaco'),(18,'Tswana'),(19,'Burmese'),(20,'Bulgaro'),(21,'Croata'),(22,'Finnish'),(23,'Portugues'),(24,'Aleman'),(25,'Mandarin'),(26,'Español'),(27,'Ingles'),(28,'Japones'),(29,'Frances'),(30,'Italiano'),(31,'Hindi'),(32,'Arabe'),(33,'Indonesio'),(34,'Turco'),(35,'Coreano'),(36,'Tailandes'),(37,'Marati'),(38,'Catalan'),(39,'Polaco'),(40,'Tswana'),(41,'Burmese'),(42,'Bulgaro'),(43,'Croata'),(44,'Finnish'),(45,'Portugues'),(46,'Aleman'),(47,'Mandarin'),(48,'Español'),(49,'Ingles'),(50,'Japones'),(51,'Frances'),(52,'Italiano'),(53,'Hindi'),(54,'Arabe'),(55,'Indonesio'),(56,'Turco'),(57,'Coreano'),(58,'Tailandes'),(59,'Marati'),(60,'Catalan'),(61,'Polaco'),(62,'Tswana'),(63,'Burmese'),(64,'Bulgaro'),(65,'Croata'),(66,'Finnish'),(67,'Portugues'),(68,'Aleman'),(69,'Mandarin'),(70,'Español'),(71,'Ingles'),(72,'Japones'),(73,'Frances'),(74,'Italiano'),(75,'Hindi'),(76,'Arabe'),(77,'Indonesio'),(78,'Turco'),(79,'Coreano'),(80,'Tailandes'),(81,'Marati'),(82,'Catalan'),(83,'Polaco'),(84,'Tswana'),(85,'Burmese'),(86,'Bulgaro'),(87,'Croata'),(88,'Finnish'),(89,'Portugues'),(90,'Aleman'),(91,'Mandarin'),(92,'Español'),(93,'Ingles'),(94,'Japones'),(95,'Frances'),(96,'Italiano'),(97,'Hindi'),(98,'Arabe'),(99,'Indonesio'),(100,'Turco'),(101,'Coreano'),(102,'Tailandes'),(103,'Marati'),(104,'Catalan'),(105,'Polaco'),(106,'Tswana'),(107,'Burmese'),(108,'Bulgaro'),(109,'Croata'),(110,'Finnish'),(111,'Portugues'),(112,'Aleman'),(113,'Mandarin'),(114,'Español'),(115,'Ingles'),(116,'Japones'),(117,'Frances'),(118,'Italiano'),(119,'Hindi'),(120,'Arabe'),(121,'Indonesio'),(122,'Turco'),(123,'Coreano'),(124,'Tailandes'),(125,'Marati'),(126,'Catalan'),(127,'Polaco'),(128,'Tswana'),(129,'Burmese'),(130,'Bulgaro'),(131,'Croata'),(132,'Finnish'),(133,'Portugues'),(134,'Aleman'),(135,'Mandarin'),(136,'Español'),(137,'Ingles'),(138,'Japones'),(139,'Frances'),(140,'Italiano'),(141,'Hindi'),(142,'Arabe'),(143,'Indonesio'),(144,'Turco'),(145,'Coreano'),(146,'Tailandes'),(147,'Marati'),(148,'Catalan'),(149,'Polaco'),(150,'Tswana'),(151,'Burmese'),(152,'Bulgaro'),(153,'Croata'),(154,'Finnish'),(155,'Portugues'),(156,'Aleman'),(157,'Mandarin'),(158,'Español'),(159,'Ingles'),(160,'Japones'),(161,'Frances'),(162,'Italiano'),(163,'Hindi'),(164,'Arabe'),(165,'Indonesio'),(166,'Turco'),(167,'Coreano'),(168,'Tailandes'),(169,'Marati'),(170,'Catalan'),(171,'Polaco'),(172,'Tswana'),(173,'Burmese'),(174,'Bulgaro'),(175,'Croata'),(176,'Finnish'),(177,'Portugues'),(178,'Aleman'),(179,'Mandarin'),(180,'Español'),(181,'Ingles'),(182,'Japones'),(183,'Frances'),(184,'Italiano'),(185,'Hindi'),(186,'Arabe'),(187,'Indonesio'),(188,'Turco'),(189,'Coreano'),(190,'Tailandes'),(191,'Marati'),(192,'Catalan'),(193,'Polaco'),(194,'Tswana'),(195,'Burmese'),(196,'Bulgaro'),(197,'Croata'),(198,'Finnish');
/*!40000 ALTER TABLE `idioma_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_libro`
--

DROP TABLE IF EXISTS `inventario_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_libro` (
  `id_inventario_libro` smallint unsigned NOT NULL AUTO_INCREMENT,
  `id_libro` smallint unsigned NOT NULL,
  `id_libro_status` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_inventario_libro`),
  KEY `id_libro` (`id_libro`),
  KEY `id_libro_status` (`id_libro_status`),
  CONSTRAINT `inventario_libro_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`),
  CONSTRAINT `inventario_libro_ibfk_2` FOREIGN KEY (`id_libro_status`) REFERENCES `libro_status` (`id_libro_status`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_libro`
--

LOCK TABLES `inventario_libro` WRITE;
/*!40000 ALTER TABLE `inventario_libro` DISABLE KEYS */;
INSERT INTO `inventario_libro` VALUES (1,13,4),(2,15,4),(3,20,4),(4,17,4),(5,12,4),(7,13,4),(8,15,4),(9,20,4),(10,17,4),(11,12,4),(12,13,4),(13,17,4),(14,11,4),(15,13,4),(16,6,1),(17,16,1),(18,8,1),(19,7,1),(20,17,1),(21,14,1),(22,9,3),(23,16,1),(24,15,1),(25,17,1),(26,18,1),(27,2,1),(29,13,4),(30,15,4),(31,20,4),(32,17,4),(33,12,4),(34,13,4),(35,17,4),(36,11,4),(37,13,4),(38,6,1),(39,16,1),(40,8,1),(41,7,1),(42,17,1),(43,14,1),(44,9,3),(45,16,1),(46,15,1),(47,17,1),(48,18,1),(49,2,1),(50,3,1),(51,9,1),(52,16,1),(53,7,1),(55,13,4),(56,15,4),(57,20,4),(58,17,4),(59,12,4),(60,13,4),(61,17,4),(62,11,4),(63,13,4),(64,6,1),(65,16,1),(66,8,1),(67,7,1),(68,17,1),(69,14,1),(70,9,3),(71,16,1),(72,15,1),(73,17,1),(74,18,1),(75,2,1),(76,3,1),(77,9,1),(78,16,1),(79,7,1),(81,13,4),(82,15,4),(83,20,4),(84,17,4),(85,12,4),(86,13,4),(87,17,4),(88,11,4),(89,13,4),(90,6,1),(91,16,1),(92,8,1),(93,7,1),(94,17,1),(95,14,1),(96,9,3),(97,16,1),(98,15,1),(99,17,1),(100,18,1),(101,2,1),(102,3,1),(103,9,1),(104,16,1),(105,7,1),(106,3,3),(107,8,2),(108,18,2),(109,8,2),(110,6,2),(112,13,4),(113,15,4),(114,20,4),(115,17,4),(116,12,4),(117,13,4),(118,17,4),(119,11,4),(120,13,4),(121,6,1),(122,16,1),(123,8,1),(124,7,1),(125,17,1),(126,14,1),(127,9,3),(128,16,1),(129,15,1),(130,17,1),(131,18,1),(132,2,1),(133,3,1),(134,9,1),(135,16,1),(136,7,1),(137,3,3),(138,8,2),(139,18,2),(140,8,2),(141,6,2),(142,15,2),(143,7,2),(144,3,2),(145,11,2),(146,10,2),(148,13,4),(149,15,4),(150,20,4),(151,17,4),(152,12,4),(153,13,4),(154,17,4),(155,11,4),(156,13,4),(157,6,1),(158,16,1),(159,8,1),(160,7,1),(161,17,1),(162,14,1),(163,9,3),(164,16,1),(165,15,1),(166,17,1),(167,18,1),(168,2,1),(169,3,1),(170,9,1),(171,16,1),(172,7,1),(173,3,3),(174,8,2),(175,18,2),(176,8,2),(177,6,2),(178,15,2),(179,7,2),(180,3,2),(181,11,2),(182,10,2),(183,8,1);
/*!40000 ALTER TABLE `inventario_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `id_libro` smallint unsigned NOT NULL AUTO_INCREMENT,
  `id_editor` smallint unsigned NOT NULL,
  `titulo` varchar(128) NOT NULL,
  `descrip_libro` text,
  `fecha_publicacion` date DEFAULT NULL,
  `id_idioma_libro` smallint unsigned NOT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `id_editor` (`id_editor`),
  KEY `id_idioma_libro` (`id_idioma_libro`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`id_editor`) REFERENCES `editor` (`id_editor`),
  CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`id_idioma_libro`) REFERENCES `idioma_libro` (`id_idioma_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (2,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(3,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(4,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(6,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(7,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(8,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(9,7,'Marfil','Proin risus.','2007-02-12',18),(10,8,'Heidi','In congue.','1998-01-01',46),(11,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(12,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(13,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(14,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(15,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(16,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(17,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(18,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(19,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(20,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(21,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(22,21,'Lolita','Nullam varius.','1937-08-27',16),(23,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8),(24,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(25,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(26,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(27,7,'Marfil','Proin risus.','2007-02-12',18),(28,8,'Heidi','In congue.','1998-01-01',46),(29,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(30,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(31,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(32,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(33,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(34,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(35,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(36,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(37,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(38,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(39,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(40,21,'Lolita','Nullam varius.','1937-08-27',16),(41,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8),(42,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(43,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(44,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(45,7,'Marfil','Proin risus.','2007-02-12',18),(46,8,'Heidi','In congue.','1998-01-01',46),(47,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(48,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(49,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(50,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(51,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(52,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(53,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(54,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(55,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(56,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(57,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(58,21,'Lolita','Nullam varius.','1937-08-27',16),(59,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8),(60,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(61,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(62,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(63,7,'Marfil','Proin risus.','2007-02-12',18),(64,8,'Heidi','In congue.','1998-01-01',46),(65,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(66,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(67,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(68,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(69,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(70,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(71,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(72,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(73,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(74,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(75,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(76,21,'Lolita','Nullam varius.','1937-08-27',16),(77,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8),(78,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(79,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(80,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(81,7,'Marfil','Proin risus.','2007-02-12',18),(82,8,'Heidi','In congue.','1998-01-01',46),(83,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(84,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(85,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(86,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(87,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(88,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(89,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(90,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(91,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(92,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(93,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(94,21,'Lolita','Nullam varius.','1937-08-27',16),(95,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8),(96,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(97,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(98,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(99,7,'Marfil','Proin risus.','2007-02-12',18),(100,8,'Heidi','In congue.','1998-01-01',46),(101,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(102,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(103,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(104,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(105,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(106,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(107,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(108,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(109,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(110,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(111,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(112,21,'Lolita','Nullam varius.','1937-08-27',16),(113,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8),(114,15,'Los 7 maridos de Evelin Hugo','Pellentesque at NULL,a.','1998-05-12',43),(115,4,'El visitante','Morbi non quam nec dui luctus rutrum.','1991-12-02',40),(116,11,'Nosotros en la luna','Phasellus sit amet erat.','1999-07-19',8),(117,7,'Marfil','Proin risus.','2007-02-12',18),(118,8,'Heidi','In congue.','1998-01-01',46),(119,12,'La reina Roja','Vestibulum ac est lacinia nisi venenatis tristique.','1946-03-05',33),(120,7,'It','Quisque porta volutpat erat.','1932-04-06',31),(121,7,'A dos metros de ti','Aliquam sit amet diam in magna bibendum imperdiet.','1998-09-03',46),(122,21,'La mil y una noches','Cras non velit nec nisi vulputate nonummy.','1960-01-10',49),(123,1,'Sinsajo','Mauris lacinia sapien quis libero.','1980-09-15',30),(124,11,'Antes de diciembre','Cras non velit nec nisi vulputate nonummy.','1951-08-08',39),(125,8,'Boulevard','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','1962-03-17',12),(126,24,'Ciudades de papel','Suspendisse potenti.','1963-12-19',20),(127,6,'Perfectos Mentiroso','Aenean sit amet justo.','1954-08-08',27),(128,23,'Buscando a Alaska','Donec vitae nisi.','1990-08-02',29),(129,19,'Mujercitas','Curabitur gravida nisi at nibh.','1997-05-22',23),(130,21,'Lolita','Nullam varius.','1937-08-27',16),(131,12,'Cinder','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','1935-02-09',8);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `libro_info`
--

DROP TABLE IF EXISTS `libro_info`;
/*!50001 DROP VIEW IF EXISTS `libro_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `libro_info` AS SELECT 
 1 AS `id_libro`,
 1 AS `titulo`,
 1 AS `descrip_libro`,
 1 AS `fecha_publicacion`,
 1 AS `editor`,
 1 AS `idioma_libro`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `libro_status`
--

DROP TABLE IF EXISTS `libro_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro_status` (
  `id_libro_status` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `libro_status` varchar(30) NOT NULL,
  PRIMARY KEY (`id_libro_status`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_status`
--

LOCK TABLES `libro_status` WRITE;
/*!40000 ALTER TABLE `libro_status` DISABLE KEYS */;
INSERT INTO `libro_status` VALUES (1,'Stock'),(2,'Perdido'),(3,'Eliminado'),(4,'Borrado'),(5,'Stock'),(6,'Perdido'),(7,'Eliminado'),(8,'Borrado'),(9,'Stock'),(10,'Perdido'),(11,'Eliminado'),(12,'Borrado'),(13,'Stock'),(14,'Perdido'),(15,'Eliminado'),(16,'Borrado'),(17,'Stock'),(18,'Perdido'),(19,'Eliminado'),(20,'Borrado'),(21,'Stock'),(22,'Perdido'),(23,'Eliminado'),(24,'Borrado'),(25,'Stock'),(26,'Perdido'),(27,'Eliminado'),(28,'Borrado'),(29,'Stock'),(30,'Perdido'),(31,'Eliminado'),(32,'Borrado'),(33,'Stock'),(34,'Perdido'),(35,'Eliminado'),(36,'Borrado');
/*!40000 ALTER TABLE `libro_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `libros_disponibles`
--

DROP TABLE IF EXISTS `libros_disponibles`;
/*!50001 DROP VIEW IF EXISTS `libros_disponibles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `libros_disponibles` AS SELECT 
 1 AS `id_libro`,
 1 AS `titulo`,
 1 AS `cantidad_en_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `libros_perdidos`
--

DROP TABLE IF EXISTS `libros_perdidos`;
/*!50001 DROP VIEW IF EXISTS `libros_perdidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `libros_perdidos` AS SELECT 
 1 AS `id_inventario_libro`,
 1 AS `id_libro`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `libros_prestados`
--

DROP TABLE IF EXISTS `libros_prestados`;
/*!50001 DROP VIEW IF EXISTS `libros_prestados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `libros_prestados` AS SELECT 
 1 AS `id_inventario_libro`,
 1 AS `id_libro`,
 1 AS `titulo`,
 1 AS `fecha_prestamo`,
 1 AS `devuelta_esperada`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Portugal'),(2,'Suiza'),(3,'China'),(4,'Peru'),(5,'Estados Unidos'),(6,'Austria'),(7,'Polonia'),(8,'Colombia'),(9,'Japon'),(10,'Rusia'),(11,'Francia'),(12,'Mexico'),(13,'Uruguay'),(14,'Croacia'),(15,'Brasil'),(16,'Argentina'),(17,'Honduras'),(18,'España'),(19,'Cuba'),(20,'Portugal'),(21,'Suiza'),(22,'China'),(23,'Peru'),(24,'Estados Unidos'),(25,'Austria'),(26,'Polonia'),(27,'Colombia'),(28,'Japon'),(29,'Rusia'),(30,'Francia'),(31,'Mexico'),(32,'Uruguay'),(33,'Croacia'),(34,'Brasil'),(35,'Argentina'),(36,'Honduras'),(37,'España'),(38,'Cuba'),(39,'Portugal'),(40,'Suiza'),(41,'China'),(42,'Peru'),(43,'Estados Unidos'),(44,'Austria'),(45,'Polonia'),(46,'Colombia'),(47,'Japon'),(48,'Rusia'),(49,'Francia'),(50,'Mexico'),(51,'Uruguay'),(52,'Croacia'),(53,'Brasil'),(54,'Argentina'),(55,'Honduras'),(56,'España'),(57,'Cuba'),(58,'Portugal'),(59,'Suiza'),(60,'China'),(61,'Peru'),(62,'Estados Unidos'),(63,'Austria'),(64,'Polonia'),(65,'Colombia'),(66,'Japon'),(67,'Rusia'),(68,'Francia'),(69,'Mexico'),(70,'Uruguay'),(71,'Croacia'),(72,'Brasil'),(73,'Argentina'),(74,'Honduras'),(75,'España'),(76,'Cuba'),(77,'Portugal'),(78,'Suiza'),(79,'China'),(80,'Peru'),(81,'Estados Unidos'),(82,'Austria'),(83,'Polonia'),(84,'Colombia'),(85,'Japon'),(86,'Rusia'),(87,'Francia'),(88,'Mexico'),(89,'Uruguay'),(90,'Croacia'),(91,'Brasil'),(92,'Argentina'),(93,'Honduras'),(94,'España'),(95,'Cuba'),(96,'Portugal'),(97,'Suiza'),(98,'China'),(99,'Peru'),(100,'Estados Unidos'),(101,'Austria'),(102,'Polonia'),(103,'Colombia'),(104,'Japon'),(105,'Rusia'),(106,'Francia'),(107,'Mexico'),(108,'Uruguay'),(109,'Croacia'),(110,'Brasil'),(111,'Argentina'),(112,'Honduras'),(113,'España'),(114,'Cuba'),(115,'Portugal'),(116,'Suiza'),(117,'China'),(118,'Peru'),(119,'Estados Unidos'),(120,'Austria'),(121,'Polonia'),(122,'Colombia'),(123,'Japon'),(124,'Rusia'),(125,'Francia'),(126,'Mexico'),(127,'Uruguay'),(128,'Croacia'),(129,'Brasil'),(130,'Argentina'),(131,'Honduras'),(132,'España'),(133,'Cuba'),(134,'Portugal'),(135,'Suiza'),(136,'China'),(137,'Peru'),(138,'Estados Unidos'),(139,'Austria'),(140,'Polonia'),(141,'Colombia'),(142,'Japon'),(143,'Rusia'),(144,'Francia'),(145,'Mexico'),(146,'Uruguay'),(147,'Croacia'),(148,'Brasil'),(149,'Argentina'),(150,'Honduras'),(151,'España'),(152,'Cuba'),(153,'Portugal'),(154,'Suiza'),(155,'China'),(156,'Peru'),(157,'Estados Unidos'),(158,'Austria'),(159,'Polonia'),(160,'Colombia'),(161,'Japon'),(162,'Rusia'),(163,'Francia'),(164,'Mexico'),(165,'Uruguay'),(166,'Croacia'),(167,'Brasil'),(168,'Argentina'),(169,'Honduras'),(170,'España'),(171,'Cuba');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `id_prestamo` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` smallint unsigned NOT NULL,
  `id_inventario_libro` smallint unsigned NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_vencimiento` datetime NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_inventario_libro` (`id_inventario_libro`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`id_inventario_libro`) REFERENCES `inventario_libro` (`id_inventario_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prestamo_por_libro`
--

DROP TABLE IF EXISTS `prestamo_por_libro`;
/*!50001 DROP VIEW IF EXISTS `prestamo_por_libro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prestamo_por_libro` AS SELECT 
 1 AS `id_libro`,
 1 AS `titulo`,
 1 AS `veces_prestado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prestamos_vencidos`
--

DROP TABLE IF EXISTS `prestamos_vencidos`;
/*!50001 DROP VIEW IF EXISTS `prestamos_vencidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prestamos_vencidos` AS SELECT 
 1 AS `id_prestamo`,
 1 AS `id_inventario_libro`,
 1 AS `titulo`,
 1 AS `id_cliente`,
 1 AS `cliente`,
 1 AS `telefono`,
 1 AS `email`,
 1 AS `fecha_vencimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `registro_borrado_devolver_libro`
--

DROP TABLE IF EXISTS `registro_borrado_devolver_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_borrado_devolver_libro` (
  `id_registro` int unsigned NOT NULL AUTO_INCREMENT,
  `id_prestamo` int unsigned DEFAULT NULL,
  `id_devolver_libro` int unsigned DEFAULT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `usuario_manejo_consultas` varchar(80) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `tiempo_registro` time DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_borrado_devolver_libro`
--

LOCK TABLES `registro_borrado_devolver_libro` WRITE;
/*!40000 ALTER TABLE `registro_borrado_devolver_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_borrado_devolver_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_declaracion`
--

DROP TABLE IF EXISTS `registro_declaracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_declaracion` (
  `id_declaracion` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `declaracion` varchar(6) NOT NULL,
  PRIMARY KEY (`id_declaracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_declaracion`
--

LOCK TABLES `registro_declaracion` WRITE;
/*!40000 ALTER TABLE `registro_declaracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_declaracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_prestamo`
--

DROP TABLE IF EXISTS `registro_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_prestamo` (
  `id_registro` int unsigned NOT NULL AUTO_INCREMENT,
  `id_declaracion` tinyint unsigned DEFAULT NULL,
  `id_prestamo` int unsigned DEFAULT NULL,
  `id_cliente` smallint unsigned DEFAULT NULL,
  `id_inventario_libro` smallint unsigned DEFAULT NULL,
  `usuario_manejo_consultas` varchar(80) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `tiempo_registro` time DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `id_declaracion` (`id_declaracion`),
  CONSTRAINT `registro_prestamo_ibfk_1` FOREIGN KEY (`id_declaracion`) REFERENCES `registro_declaracion` (`id_declaracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_prestamo`
--

LOCK TABLES `registro_prestamo` WRITE;
/*!40000 ALTER TABLE `registro_prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion_almacenamiento`
--

DROP TABLE IF EXISTS `ubicacion_almacenamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion_almacenamiento` (
  `id_inventario_libro` smallint unsigned NOT NULL,
  `estante` tinyint unsigned NOT NULL,
  `seccion_estante` tinyint unsigned NOT NULL,
  KEY `id_inventario_libro` (`id_inventario_libro`),
  CONSTRAINT `ubicacion_almacenamiento_ibfk_1` FOREIGN KEY (`id_inventario_libro`) REFERENCES `inventario_libro` (`id_inventario_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion_almacenamiento`
--

LOCK TABLES `ubicacion_almacenamiento` WRITE;
/*!40000 ALTER TABLE `ubicacion_almacenamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicacion_almacenamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'libreria'
--

--
-- Dumping routines for database 'libreria'
--
/*!50003 DROP FUNCTION IF EXISTS `obtener_id_libro_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_id_libro_status`(libro_status_argumento VARCHAR(30)) RETURNS tinyint unsigned
    READS SQL DATA
BEGIN
	DECLARE id_resultado_status tinyint unsigned;

	SET id_resultado_status := (
        SELECT id_libro_status
        FROM libro_status
        WHERE UPPER(libro_status) LIKE UPPER(libro_status_argumento)
    );

	RETURN id_resultado_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_libro_disponible_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_libro_disponible_stock`(id_libro SMALLINT) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE disponibilidad_stock INT;

    SET disponibilidad_stock = (
		SELECT
			COUNT(il.id_inventario_libro) AS disponibilidad_stock
        FROM inventario_libro AS il
        INNER JOIN libro_status AS ls
			ON il.id_libro_status = ls.id_libro_status
        WHERE il.id_libro = id_libro AND ls.libro_status LIKE 'Stock'
        );

	RETURN disponibilidad_stock;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_veces_prestado_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_veces_prestado_libro`(id_book SMALLINT) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE veces_prestado INT;

    SET veces_prestado = (
		SELECT
			COUNT(g.id_perstamo) AS veces_prestado
        FROM prestamo AS g
        INNER JOIN inventario_libro AS il
			ON p.id_inventario_libro = il.id_inventario_libro
		INNER JOIN libro AS p
			ON il.id_libro = p.id_libro
        WHERE p.id_libro = id_libro
        );

	RETURN veces_prestado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizacion_libro_status_de_id_devolver_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizacion_libro_status_de_id_devolver_libro`(
	IN id_devolver_libro_argumento int unsigned,
	IN id_libro_status_argumento tinyint unsigned)
BEGIN
	SET @id_inventario_libro_para_actualizar = (
        SELECT p.id_inventario_libro
        FROM prestamo AS p
		INNER JOIN devolver_libro AS dl
			ON p.id_prestamo = dl.id_prestamo
		WHERE dl.id_devolver_libro = id_devolver_libro_argumento
    );

    CALL actualizacion_libro_status(
		@id_inventario_libro_para_actualizar,
		id_libro_status_argumento
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_libro_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_libro_status`(
	IN id_inventario_libro_argumento smallint unsigned,
	IN id_libro_status_argumento tinyint unsigned)
BEGIN
    UPDATE inventario_libro
    SET id_libro_status = id_libro_status_argumento
    WHERE id_inventario_libro = id_inventario_libro_argumento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_libro_status_de_id_devolver_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_libro_status_de_id_devolver_libro`(
	IN id_devolver_libro_argumento int unsigned,
	IN id_libro_status_argumento tinyint unsigned)
BEGIN
	SET @id_inventario_libro_para_actualizar = (
        SELECT p.id_inventario_libro
        FROM prestamo AS p
		INNER JOIN devolver_libro AS dl
			ON p.id_prestamo = dl.id_prestamo
		WHERE dl.id_devolver_libro = id_devolver_libro_argumento
    );

    CALL actualizar_libro_status(
		@id_inventario_libro_para_actualizar,
		id_libro_status_argumento
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualiza_libro_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualiza_libro_status`(
	IN id_inventario_libro_argumento smallint unsigned,
	IN id_libro_status_argumento tinyint unsigned)
BEGIN
    UPDATE inventario_libro
    SET id_libro_status = id_libro_status_argumento
    WHERE id_inventario_libro = id_inventario_libro_argumento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_categoria_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_categoria_libro`(
	IN id_categoria tinyint,
	IN id_libro tinyint)
BEGIN
    CALL introducir_o_eliminar_categoria_libro("DELETE", id_categoria, id_libro);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `encargar_libros_por` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `encargar_libros_por`(IN columna_para_encargar_por VARCHAR(30), IN forma_pedido VARCHAR(4))
BEGIN
	IF  columna_para_encargar_por <> "" THEN
		SET @pedido_consulta = CONCAT_WS(" ", "PEDIR POR", columna_para_encargar_por, forma_pedido); 
	ELSE
		SET @pedido_consulta = "";
	END IF;
    SET @resultado_consulta = CONCAT_WS(" ", "SELECT * FROM libro", @pedido_consulta);
    PREPARE declaración_resultadot FROM @resultado_consulta;
    EXECUTE declaración_resultado; 
    DEALLOCATE PREPARE declaración_resultado; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `encarga_libros_por` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `encarga_libros_por`(IN columna_para_encargar_por VARCHAR(30), IN forma_pedido VARCHAR(4))
BEGIN
	IF  columna_para_encarga_por <> "" THEN
		SET @pedido_consulta = CONCAT_WS(" ", "PEDIR POR", columna_para_encarga_por, forma_pedido); 
	ELSE
		SET @pedido_consulta = "";
	END IF;
    SET @resultado_consulta = CONCAT_WS(" ", "SELECT * FROM libro", @pedido_consulta);
    PREPARE declaración_resultadot FROM @resultado_consulta;
    EXECUTE declaración_resultado; 
    DEALLOCATE PREPARE declaración_resultado; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `introduce_o_eliminar_categoria_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `introduce_o_eliminar_categoria_libro`(
	IN declaración_en VARCHAR(6),
	IN id_categoria tinyint,
	IN id_libro tinyint)
etiqueta_proc: BEGIN
	IF UPPER(declaración_enn) LIKE "DELETE" THEN
		-- ELIMINAR DECLARACION
		SET @resultado_consulta = CONCAT_WS(" ", "DELETE FROM categoria_libro WHERE id_categoria =", id_categoria, "AND id_libro =", id_libro);
	ELSEIF UPPER(declaración_en) LIKE "INSERT" THEN
		SET @resultado_consulta = CONCAT_WS(" ", "INSERT INTO categoria_libro VALUES (", id_categoria, ",", id_libro, ")");
	ELSE
		LEAVE etiqueta_proc;
	END IF;

    PREPARE declaración_resultado FROM @resultado_consulta;
    EXECUTE declaración_resultado; 
    DEALLOCATE PREPARE declaración_resultado; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `introducir_categoria_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `introducir_categoria_libro`(
	IN id_categoria tinyint,
	IN id_libro tinyint)
BEGIN
    CALL introduce_o_eliminar_categoria_libro("INSERT", id_categoria, id_libro); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `introducir_o_eliminar_categoria_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `introducir_o_eliminar_categoria_libro`(
	IN declaración_en VARCHAR(6),
	IN id_categoria tinyint,
	IN id_libro tinyint)
etiqueta_proc: BEGIN
	IF UPPER(declaración_enn) LIKE "DELETE" THEN
		-- ELIMINAR DECLARACION
		SET @resultado_consulta = CONCAT_WS(" ", "DELETE FROM categoria_libro WHERE id_categoria =", id_categoria, "AND id_libro =", id_libro);
	ELSEIF UPPER(declaración_en) LIKE "INSERT" THEN
		SET @resultado_consulta = CONCAT_WS(" ", "INSERT INTO categoria_libro VALUES (", id_categoria, ",", id_libro, ")");
	ELSE
		LEAVE etiqueta_proc;
	END IF;

    PREPARE declaración_resultado FROM @resultado_consulta;
    EXECUTE declaración_resultado; 
    DEALLOCATE PREPARE declaración_resultado; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrarse_en_tabla_registro_prestamo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrarse_en_tabla_registro_prestamo`(
	IN id_declaración_argumento tinyint unsigned,
	IN id_prestamo_argumento int unsigned,
	IN id_cliente_argumento smallint unsigned,
	IN id_inventario_libro_argumento smallint unsigned)
BEGIN
	INSERT INTO `registro_prestamo` (
		id_declaracion,
		id_prestamo,
		id_cliente,
		id_inventario_libro,
		usuario_ejecutando_consulta,
		fecha_prestamo,
		tiempo_prestamo
	)
	VALUES (
		id_declaracion_argumento, 
		id_prestamo_argumento, 
		id_cliente_argumento,
		id_inventario_libro_argumento, 
		CURRENT_USER(), 
		CURRENT_DATE(), 
		CURRENT_TIME() 
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `autor_info`
--

/*!50001 DROP VIEW IF EXISTS `autor_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `autor_info` AS select `a`.`id_autor` AS `id_autor`,concat(`a`.`nombre`,' ',`a`.`apellido`) AS `nombre_completo`,`p`.`pais` AS `pais` from (`autor` `a` join `pais` `p` on((`p`.`id_pais` = `p`.`id_pais`))) order by `a`.`id_autor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libro_info`
--

/*!50001 DROP VIEW IF EXISTS `libro_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libro_info` AS select `l`.`id_libro` AS `id_libro`,`l`.`titulo` AS `titulo`,`l`.`descrip_libro` AS `descrip_libro`,`l`.`fecha_publicacion` AS `fecha_publicacion`,`e`.`editor` AS `editor`,`ll`.`idioma_libro` AS `idioma_libro` from ((`libro` `l` join `editor` `e` on((`l`.`id_editor` = `e`.`id_editor`))) join `idioma_libro` `ll` on((`ll`.`idioma_libro` = `ll`.`id_idioma_libro`))) order by `l`.`id_libro` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libros_disponibles`
--

/*!50001 DROP VIEW IF EXISTS `libros_disponibles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libros_disponibles` AS select `il`.`id_libro` AS `id_libro`,`l`.`titulo` AS `titulo`,count(`il`.`id_inventario_libro`) AS `cantidad_en_stock` from ((`inventario_libro` `il` join `libro_status` `ls` on((`il`.`id_libro_status` = `ls`.`id_libro_status`))) join `libro` `l` on((`il`.`id_libro` = `l`.`id_libro`))) where (`ls`.`libro_status` like 'Stock') group by `il`.`id_libro` order by `il`.`id_libro` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libros_perdidos`
--

/*!50001 DROP VIEW IF EXISTS `libros_perdidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libros_perdidos` AS select `lp`.`id_inventario_libro` AS `id_inventario_libro`,`l`.`id_libro` AS `id_libro`,`l`.`titulo` AS `titulo` from ((`inventario_libro` `lp` join `libro` `l` on((`lp`.`id_libro` = `l`.`id_libro`))) join `libro_status` `ls` on((`lp`.`id_libro_status` = `ls`.`id_libro_status`))) where (`ls`.`libro_status` like 'Perdido') order by `l`.`id_libro` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `libros_prestados`
--

/*!50001 DROP VIEW IF EXISTS `libros_prestados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `libros_prestados` AS select `il`.`id_inventario_libro` AS `id_inventario_libro`,`l`.`id_libro` AS `id_libro`,`l`.`titulo` AS `titulo`,`p`.`fecha_prestamo` AS `fecha_prestamo`,`p`.`fecha_vencimiento` AS `devuelta_esperada` from (((`inventario_libro` `il` join `libro` `l` on((`il`.`id_libro` = `l`.`id_libro`))) join `prestamo` `p` on((`il`.`id_inventario_libro` = `p`.`id_inventario_libro`))) join `libro_status` `ls` on((`il`.`id_libro_status` = `ls`.`id_libro_status`))) where ((`ls`.`libro_status` like 'Prestado') and `p`.`id_prestamo` in (select `dl`.`id_prestamo` from `devolver_libro` `dl`) is false) order by `p`.`fecha_vencimiento` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prestamo_por_libro`
--

/*!50001 DROP VIEW IF EXISTS `prestamo_por_libro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prestamo_por_libro` AS select `l`.`id_libro` AS `id_libro`,`l`.`titulo` AS `titulo`,count(`p`.`id_prestamo`) AS `veces_prestado` from ((`libro` `l` join `inventario_libro` `il` on((`l`.`id_libro` = `il`.`id_libro`))) join `prestamo` `p` on((`il`.`id_inventario_libro` = `p`.`id_inventario_libro`))) group by `l`.`id_libro` order by count(`p`.`id_prestamo`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prestamos_vencidos`
--

/*!50001 DROP VIEW IF EXISTS `prestamos_vencidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prestamos_vencidos` AS select `p`.`id_prestamo` AS `id_prestamo`,`p`.`id_inventario_libro` AS `id_inventario_libro`,`l`.`titulo` AS `titulo`,`p`.`id_cliente` AS `id_cliente`,concat(`c`.`nombre`,' ',`c`.`apellido`) AS `cliente`,`c`.`telefono` AS `telefono`,`c`.`email` AS `email`,`p`.`fecha_vencimiento` AS `fecha_vencimiento` from ((((`prestamo` `p` join `cliente` `c` on((`p`.`id_prestamo` = `c`.`id_cliente`))) join `inventario_libro` `il` on((`p`.`id_inventario_libro` = `il`.`id_inventario_libro`))) join `libro` `l` on((`il`.`id_libro` = `l`.`id_libro`))) join `libro_status` `ls` on((`il`.`id_libro_status` = `ls`.`id_libro_status`))) where ((`ls`.`libro_status` like 'Prestado') and `p`.`id_prestamo` in (select `dl`.`id_prestamo` from `devolver_libro` `dl`) is false) order by `p`.`fecha_vencimiento` */;
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

-- Dump completed on 2023-01-12 17:23:07
