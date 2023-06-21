-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `infermiere`
--

DROP TABLE IF EXISTS `infermiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infermiere` (
  `idinfermiere` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idinfermiere`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infermiere`
--

LOCK TABLES `infermiere` WRITE;
/*!40000 ALTER TABLE `infermiere` DISABLE KEYS */;
INSERT INTO `infermiere` VALUES (1,'Valentina','Lodovini','valentinilodovini@gmail.com'),(2,'Claudio','Bisio','claudiobisio@libero.it'),(3,'Claudia ','Gerini','claudiogerini@yahoo.it'),(4,'Ambra','Angiolini','ambraangiolini@hotmail.com'),(5,'Laura','Chiatti','laurachiatti@libero.it'),(6,'Cristina','Chiabotto','cristinachiabotto@hotmail.it'),(7,'Sabrina','Ferilli','sabrinaferilli@yahoo.com'),(8,'Nicole','Luzardi','nicoleluzardi@gmail.com'),(9,'Monica','Bellucci','monicabellucci@gmail.com'),(10,'Massimo','Boldi','massimoboldi@gmail.com'),(11,'Christian','De Sica','christiandesica@gmail.com'),(12,'Alessandra','Mastronardi','alessandramastronardi@libero.it'),(13,'Claudia','Pandolfi','claudiapandolfi@yahoo.it'),(14,'Aida','Yespica','aidayespica@hotmail.it'),(15,'Elisabetta','Canalis','elisabettacanalis@gmail.com'),(16,'Checco','Zalone','checcozalone@libero.it');
/*!40000 ALTER TABLE `infermiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `idmedico` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idmedico`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Enrico','Forlanini','enricoforlanini@gmail.com'),(2,'Emma ','Strada','emmastrada@gmail.com'),(3,'Mario','Almondo','marioalmondo@hotmail.it'),(4,'Samantha','Cristoforetti','samanthacristoforetti@outlook.com'),(5,'Rita','Montalcini','ritamontalcini@libero.it'),(6,'Emily','Warren','emilywarren@gmail.com'),(7,'Franco','Levi','francolevi@hotmail.com'),(8,'Leonardo','Da Vinci','leonardodavinci@gmail.com'),(9,'Giulio','Natta','giulionatta@libero.it'),(10,'Giovanna','Gabetta','giovannagabetta@gmail.com'),(11,'Renzo ','Piano','renzopiano@yahoo.it'),(12,'Matilde','Schiavon','matildeschiavon@hotmail.it'),(13,'Alessandra','Buonfati','alessandrabuonfati@gmail.com'),(14,'Attilio','Alto','attilioalto@yahoo.it'),(15,'Enrico','Fermi','enricofermi@libero.it'),(16,'Giovanni','Ferrara','giovanniferrara@gmail.com');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patologia`
--

DROP TABLE IF EXISTS `patologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patologia` (
  `idpatologia` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idpatologia`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patologia`
--

LOCK TABLES `patologia` WRITE;
/*!40000 ALTER TABLE `patologia` DISABLE KEYS */;
INSERT INTO `patologia` VALUES (1,'Piaghe'),(2,'Ipertensione'),(3,'Artrite'),(4,'Osteoporosi primaria'),(5,'Malattie cardiovascolari'),(6,'Cardiopatie'),(7,'Osteoporosi secondaria'),(8,'Protesi articolari'),(9,'Polmonite'),(10,'Broncopolmonite'),(11,'Bronchite');
/*!40000 ALTER TABLE `patologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paziente`
--

DROP TABLE IF EXISTS `paziente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paziente` (
  `idpaziente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `datadinascita` datetime NOT NULL,
  `sesso` varchar(45) NOT NULL,
  `nazionalita` varchar(45) NOT NULL,
  `n_cellulare` varchar(45) DEFAULT NULL,
  `cod_fiscale` char(16) DEFAULT NULL,
  PRIMARY KEY (`idpaziente`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paziente`
--

LOCK TABLES `paziente` WRITE;
/*!40000 ALTER TABLE `paziente` DISABLE KEYS */;
INSERT INTO `paziente` VALUES (1,'Alberto','Quattrocchi','albertoquattrocchi@gmail.com','1945-08-30 00:00:00','maschio','italia','+393456143910','QTTLRT99M30H501T'),(2,'Ciro','Esposito','ciroesposito@gmail.com','1938-06-15 00:00:00','maschio','italia','+393666143619','SPSCRI88H15F839H'),(3,'Giovanni','Rossi','giovannirossi@gmail.com','1948-05-21 00:00:00','maschio','italia','+393456134567','RSSGNN95L02H501C'),(4,'Giuseppe','Deluca','giuseppedeluca@gmail.com','1957-04-24 00:00:00','maschio','italia','+393446156765','DLCGSP64A12'),(5,'Jean','Bernard','jeanbernard@gmail.com','1946-05-31 00:00:00','femmina','francia','+44613445','NULL'),(6,'Francesco','Greco','grancescogreco@libero.it','1946-12-21 00:00:00','mascio','italia','+393456134567','GRCFRN89N04F839P'),(7,'Claudia','Mancini','claudiamancini@libero.it','1951-11-23 00:00:00','femmina','italia','+393456168123','MNCCLD67M30H501M'),(8,'Irene','Costa','irenecosta@gmail.com','1937-10-24 00:00:00','femmina','italia','+393361565678','CSTRNI92D53L'),(9,'Albert','Fisher','albertfisher@gmail.com','1960-03-21 00:00:00','maschio','germania','+43613456','NULL'),(10,'Giacomo','Santoro','giacomosantoro@yahoo.it','1956-05-11 00:00:00','maschio','italia','+393316145872','SNTGCM97S19F250R'),(11,'Susanna ','Leone','susannaleone@libero.it','1933-07-21 00:00:00','femmina','italia','+393356134546','LNESNN65t62H282Q'),(12,'Matilde','Rinaldi','matilderinaldi@gmail.com','1957-03-21 00:00:00','femmina','italia','+39331612345478','RNLMLD64L71G188D'),(13,'Antonio','Faraone','antoniofaraone@libero.it','1945-01-01 00:00:00','maschio','italia','+393456123567','FRNNTN99P09G187T'),(14,'Will','Smith','willsmith@gmail.com','1956-02-21 00:00:00','maschio','usa','+16123456','NULL'),(15,'Chiara','Lombardi','chiaralombardi@virgilio.it','1945-09-03 00:00:00','femmina','italia','+393336134563','LMBCHR89C71A944W'),(16,'Gabriele','Conte','gabrieleconte@gmail.com','1934-12-21 00:00:00','maschio','italia','+393476123435','CNTGRL66A17M082T'),(17,'Federica','Rizzi','federicarizzi@gmail.com','1945-12-20 00:00:00','femmina','italia','+393336154345','RZZFRC78T58D612C'),(18,'Ludovica','Sabatini','ludovicasabatini@libero.it','1948-03-20 00:00:00','femmina','italia','+393456123243','SBTLVC92T29I726Y'),(19,'Giulio','Mazza','giuliomazza@libero.it','1939-04-21 00:00:00','maschio','italia','+393316123432','MZZGLI96E43D969A'),(20,'Francesco','Caputo','francescocaputo','1949-11-30 00:00:00','maschio','talia','+393336123456','CPTFNC69M31E506I');
/*!40000 ALTER TABLE `paziente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visita`
--

DROP TABLE IF EXISTS `visita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visita` (
  `idvisita` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `costo` float NOT NULL,
  `ambulatorio` int(11) NOT NULL,
  `tipo` tinyint(4) NOT NULL,
  `medico_idmedico` int(11) NOT NULL,
  `patologia_idpatologia` int(11) NOT NULL,
  `paziente_idpaziente` int(11) NOT NULL,
  `infermiere_idinfermiere` int(11) NOT NULL,
  `stanza` int(11) NOT NULL,
  `piano` int(11) NOT NULL,
  `codice_gravita` int(11) NOT NULL,
  PRIMARY KEY (`idvisita`),
  KEY `fk_visita_medico1_idx` (`medico_idmedico`),
  KEY `fk_visita_patologia1_idx` (`patologia_idpatologia`),
  KEY `fk_visita_paziente1_idx` (`paziente_idpaziente`),
  KEY `fk_visita_infermiere1_idx` (`infermiere_idinfermiere`),
  CONSTRAINT `fk_visita_infermiere1` FOREIGN KEY (`infermiere_idinfermiere`) REFERENCES `infermiere` (`idinfermiere`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_visita_medico1` FOREIGN KEY (`medico_idmedico`) REFERENCES `medico` (`idmedico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_visita_patologia1` FOREIGN KEY (`patologia_idpatologia`) REFERENCES `patologia` (`idpatologia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_visita_paziente1` FOREIGN KEY (`paziente_idpaziente`) REFERENCES `paziente` (`idpaziente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` VALUES (149,'2019-12-21 00:00:00',70,1,1,4,1,15,6,101,1,1),(150,'2019-10-15 00:00:00',45.5,2,0,7,5,7,16,203,2,2),(151,'2019-01-07 00:00:00',80,3,1,9,7,18,8,305,3,3),(152,'2020-02-11 00:00:00',37.4,1,0,9,10,17,2,102,1,3),(153,'2020-06-15 00:00:00',53.5,3,0,11,4,11,1,302,3,3),(154,'2019-05-31 00:00:00',90,4,1,13,3,16,12,401,4,2),(155,'2020-07-21 00:00:00',120,4,1,5,1,10,5,404,4,1),(156,'2019-08-15 00:00:00',40.8,2,0,3,2,19,14,201,2,3),(157,'2019-03-13 00:00:00',60,3,1,10,4,3,7,300,3,1),(158,'2020-01-23 00:00:00',100,4,1,14,3,5,3,403,4,2),(159,'2019-04-20 00:00:00',70,2,1,8,5,20,4,201,2,1),(160,'2020-03-17 00:00:00',150,1,1,1,11,14,16,104,1,3),(161,'2019-09-21 00:00:00',53.2,2,0,15,6,12,9,205,2,1),(162,'2019-10-08 00:00:00',80,3,1,6,8,2,15,302,3,2),(163,'2019-11-25 00:00:00',48.3,1,0,2,10,1,10,105,1,3),(164,'2020-04-11 00:00:00',80,2,1,12,6,4,11,200,2,1),(165,'2018-12-29 00:00:00',44.5,3,0,16,4,6,13,303,3,2),(166,'2020-04-18 00:00:00',80,1,1,7,9,13,3,102,1,3),(167,'2019-09-12 00:00:00',47.9,2,0,16,2,9,7,201,2,1),(168,'2020-04-21 00:00:00',90,4,1,2,1,8,10,404,4,1),(169,'2019-05-07 00:00:00',57.5,2,0,13,2,16,12,205,2,3),(170,'2020-01-29 00:00:00',37.4,1,0,9,11,17,2,102,1,3),(171,'2020-04-15 00:00:00',120,1,1,4,9,15,6,101,1,2),(172,'2019-10-22 00:00:00',75,3,1,14,4,5,3,302,3,1),(173,'2020-05-18 00:00:00',52.5,2,0,5,5,10,5,203,2,3),(174,'2019-03-01 00:00:00',38.9,2,0,1,2,14,16,204,2,1),(175,'2020-06-17 00:00:00',70,3,1,8,7,20,4,305,3,2),(176,'2020-05-26 00:00:00',47.9,2,0,11,6,11,1,202,2,1),(177,'2020-04-01 00:00:00',90,3,1,10,8,3,7,301,3,2),(178,'2019-09-04 00:00:00',53.4,4,0,15,3,12,9,404,2,3);
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `visitaintramoenia`
--

DROP TABLE IF EXISTS `visitaintramoenia`;
/*!50001 DROP VIEW IF EXISTS `visitaintramoenia`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `visitaintramoenia` AS SELECT 
 1 AS `idvisita`,
 1 AS `data`,
 1 AS `costo`,
 1 AS `ambulatorio`,
 1 AS `tipo`,
 1 AS `stanza`,
 1 AS `piano`,
 1 AS `codice_gravita`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `visitaintramoenia`
--

/*!50001 DROP VIEW IF EXISTS `visitaintramoenia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `visitaintramoenia` AS select `visita`.`idvisita` AS `idvisita`,`visita`.`data` AS `data`,`visita`.`costo` AS `costo`,`visita`.`ambulatorio` AS `ambulatorio`,`visita`.`tipo` AS `tipo`,`visita`.`stanza` AS `stanza`,`visita`.`piano` AS `piano`,`visita`.`codice_gravita` AS `codice_gravita` from `visita` where (`visita`.`tipo` = 1) */;
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

-- Dump completed on 2020-07-24 15:55:33
