-- MariaDB dump 10.19  Distrib 10.9.8-MariaDB, for Linux (x86_64)
--
-- Host: 10.200.208.126    Database: kgrassi2693_kgsb_clothing_db_project
-- ------------------------------------------------------
-- Server version	10.4.33-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BOTTOMS`
--

DROP TABLE IF EXISTS `BOTTOMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOTTOMS` (
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `LENGTH` varchar(50) DEFAULT NULL,
  `NUM_OF_POCKETS` int(11) DEFAULT NULL,
  `TYPE` varchar(50) NOT NULL,
  `WAISTBAND` varchar(50) DEFAULT NULL,
  `IS_RIPPED` tinyint(1) DEFAULT NULL,
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  CONSTRAINT `BOTTOMS_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOTTOMS`
--

LOCK TABLES `BOTTOMS` WRITE;
/*!40000 ALTER TABLE `BOTTOMS` DISABLE KEYS */;
INSERT INTO `BOTTOMS` VALUES
(1,'32','Ankle',4,'Jeans','Normal',1),
(5,'30','Mid Thigh',3,'Shorts','High-Waisted',0),
(1,'38','Ankle',4,'Jeans','Normal',1),
(5,'40','Mid Thigh',3,'Shorts','High-Waisted',0),
(10,'28','Mini',3,'Skirt','High-Waisted',0),
(14,'M','Ankle',0,'Leggings','Normal',0),
(1,'30','Ankle',4,'Jeans','Normal',1),
(5,'44','Mid Thigh',3,'Shorts','High-Waisted',0),
(10,'34','Mini',3,'Skirt','High-Waisted',0),
(14,'L','Ankle',0,'Leggings','Normal',0),
(20,'36','Ankle',100,'Cargo Pants','High-Waisted',0);
/*!40000 ALTER TABLE `BOTTOMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUS_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_FNAME` varchar(50) DEFAULT NULL,
  `CUS_LNAME` varchar(50) NOT NULL,
  `CUS_PHONE` bigint(10) DEFAULT NULL,
  `CUS_EMAIL` varchar(100) DEFAULT NULL,
  `CUS_STATE` varchar(2) DEFAULT NULL,
  `CUS_CITY` varchar(100) NOT NULL,
  `CUS_ZIP` int(5) NOT NULL,
  `CUS_ADDRESS` varchar(100) NOT NULL,
  PRIMARY KEY (`CUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES
(1,'Guiseppe','Cassin',NULL,'otis16@example.com','Ok','Smithamton',94217,'427 Aiyana Divide'),
(2,'Jon','Gerhold',NULL,'qkuhic@example.org','No','Bogisichmouth',99737,'4367 Goldner Summit Apt. 668'),
(3,'Emerald','Kerluke',4074155342,'iwyman@example.com','Io','Port Allanfort',98232,'3293 Michele Plains'),
(4,'Bryana','Mayer',NULL,'berry65@example.com','Mi','Trantowfurt',21765,'02664 Barrows Shoal Apt. 288'),
(5,'Tremayne','Hettinger',1671758098,'palma73@example.net','Ma','Cartwrightchester',4139,'63492 Baumbach Rapids Apt. 728'),
(6,'Lavern','Schoen',2147483647,'jdouglas@example.com','No','Heaneyberg',26090,'988 Ebert Spring'),
(7,'Jeffery','Ritchie',NULL,'lilyan75@example.org','Or','McKenzieborough',99964,'4503 Fahey Mission Suite 814'),
(8,'Kiara','Adams',NULL,'curtis.mitchell@example.com','Ne','Lake Bernadinechester',36755,'63842 Schaefer Mountains'),
(9,'Claire','Kihn',NULL,'wshanahan@example.com','De','Lavadaborough',7330,'36968 Bailee Isle Apt. 803'),
(10,'Amya','Harvey',NULL,'karelle.johns@example.org','Wi','Port Allyton',55543,'3913 Corwin Springs Suite 213'),
(11,'Darby','Beatty',2147483647,'jessica94@example.net','Fl','West Jeremiemouth',76243,'2120 Deanna Junctions'),
(12,'Ella','Collins',NULL,'kristian78@example.org','Ar','Skylaport',48612,'278 Moises Springs'),
(13,'Lonie','Kunze',NULL,'kayla35@example.com','Ma','East Davin',27397,'975 Alejandrin Plaza'),
(14,'Tessie','Flatley',NULL,'amalia47@example.org','In','Purdyside',2062,'22300 Kane Hills'),
(15,'Flavie','Bernhard',NULL,'tevin85@example.org','Lo','Granvilleton',62100,'5311 Bernier Heights Suite 076'),
(16,'Dorcas','Barton',5959271548,'fjohns@example.org','No','Isaacview',39057,'5489 Lockman Point Apt. 784'),
(17,'London','Wilderman',NULL,'christina.nitzsche@example.org','Te','Lake Cheyanne',66241,'348 Ambrose Station'),
(18,'Meda','Dibbert',NULL,'katrina.bayer@example.com','Mo','Kerluketon',15533,'32918 Taryn Streets Apt. 187'),
(19,'Germaine','Schmitt',NULL,'arnulfo.batz@example.org','Oh','Douglasburgh',11434,'04627 Kunde Field Suite 900'),
(20,'Blake','Streich',NULL,'cleve30@example.com','Ar','Port Kacey',81996,'0571 Dortha Trail'),
(21,'Daphnee','Tromp',NULL,'wolff.norris@example.net','Mi','Leopoldfort',94229,'9947 Macejkovic Village Apt. 726'),
(22,'Beth','Trantow',2155830957,'zoie11@example.net','Io','Altenwerthstad',54781,'2375 Von Knolls'),
(23,'D\'angelo','Wisozk',NULL,'iwest@example.org','Ka','Lakinville',44943,'40537 Kaleb Highway Suite 719'),
(24,'Karolann','Roob',NULL,'collin.anderson@example.com','Or','Kemmermouth',46922,'5137 Schmitt Spur Suite 591'),
(25,'Marques','Miller',NULL,'amos.schuster@example.com','Di','Bahringermouth',56173,'433 West Tunnel'),
(26,'Titus','Von',1392971048,'jamaal.paucek@example.net','Ne','North Waino',53744,'44465 Swaniawski Island Apt. 609'),
(27,'Eladio','Nienow',NULL,'sschultz@example.org','Ke','New Malikaview',33659,'682 Travon Track'),
(28,'Rex','Hane',1521943758,'joelle.stiedemann@example.com','Wy','Lake Christineborough',57291,'346 Alaina Field Suite 016'),
(29,'Lacey','Fritsch',3253821948,'eloise59@example.com','Mi','New Damaris',24277,'6031 Jacey Mountains Suite 602'),
(30,'Domenico','Morar',2147483647,'ortiz.foster@example.net','So','Eldonstad',54893,'64763 Stiedemann Port'),
(31,'Annetta','D\'Amore',NULL,'cole.felipe@example.org','Vi','Port Sydney',13863,'921 Renner Center Apt. 996'),
(32,'Lee','Cruickshank',NULL,'freeman.hessel@example.net','Ne','Port Emmanuellechester',32630,'4095 Stamm Meadow Apt. 764'),
(33,'Concepcion','Mitchell',NULL,'yadira65@example.com','Ne','Schowalterhaven',63534,'06520 Timmothy Station'),
(34,'Barry','Abernathy',2147483647,'dshields@example.net','Di','North Joe',82126,'391 Rempel Land'),
(35,'Glenna','Eichmann',NULL,'reilly.merl@example.com','Te','Christiansenberg',22220,'670 Carroll Circles Apt. 307'),
(36,'Amaya','Fritsch',NULL,'annalise.fisher@example.net','Or','West Ryderview',70279,'1054 Vincent Shoal Suite 048'),
(37,'Adrian','Haley',NULL,'unikolaus@example.com','Ok','Lake Mia',74587,'1449 Dickinson Cliffs Suite 010'),
(38,'Marquis','Ernser',5030001048,'shawn.roberts@example.org','Ne','Kertzmannfurt',47986,'24621 Spencer Stream'),
(39,'Stefanie','Heathcote',NULL,'maxie63@example.net','Mi','East Dallas',64129,'613 Herzog Wall'),
(40,'Nora','Swaniawski',NULL,'imorar@example.org','Te','South Bulah',92529,'325 Daisha Ramp Suite 126'),
(41,'Cleveland','O\'Connell',5491841947,'paris.purdy@example.org','Io','Reeseborough',56622,'14613 Gust Falls'),
(42,'Velma','Zieme',NULL,'eldon.kautzer@example.com','Ne','Port Alene',49483,'806 Herzog Mills'),
(43,'Eulah','Hermann',NULL,'strosin.francisca@example.org','Al','West Maxwellport',59080,'062 Gutkowski Islands Apt. 220'),
(44,'Valentin','Beahan',NULL,'rita76@example.com','Ne','Joymouth',9103,'6798 Katherine Ports Apt. 039'),
(45,'Cayla','D\'Amore',5942491057,'wintheiser.megane@example.net','Co','North Laurianefort',26671,'7802 Baby Creek'),
(46,'Perry','Kihn',NULL,'maurice80@example.org','Ut','Marcelinoton',83824,'672 Kiera Shoal'),
(47,'Theresia','Ullrich',NULL,'kautzer.trycia@example.com','Ne','Vinniebury',23025,'418 Shane Stravenue Apt. 669'),
(48,'Jerome','Hoeger',3114078415,'monty.herman@example.com','Wy','South Carole',91378,'71727 Conroy Avenue'),
(49,'Brock','Towne',4691849280,'scotty63@example.org','Wi','Konopelskimouth',49172,'1547 Kieran Trail Suite 120'),
(50,'Caden','Welch',2147483647,'mraz.scottie@example.org','We','South Abigail',72338,'30362 Marquardt Hill Apt. 260'),
(51,'Nels','Rogahn',6091092859,'emclaughlin@example.org','No','Kristytown',97469,'407 Aletha Neck Apt. 213'),
(52,'Ima','Green',9300972358,'ludwig.nitzsche@example.org','Te','Port Auroremouth',39312,'8170 Pearlie Spurs Apt. 350'),
(53,'Clifton','Labadie',4561953829,'dlebsack@example.com','Ok','Ethelville',17894,'525 Zulauf Gateway Apt. 149'),
(54,'Fay','Doyle',NULL,'ritchie.emelia@example.com','Oh','West Blanchefurt',82467,'204 Otha Camp'),
(55,'Vance','Kuhlman',NULL,'veum.orpha@example.com','Ut','South Tyresechester',69520,'221 Kub Mills'),
(56,'Geovanny','Mosciski',NULL,'bfriesen@example.net','Vi','Salliefort',34691,'5064 Beer Spring'),
(57,'Ressie','Little',4351039589,'ischimmel@example.net','Vi','South Elissastad',67242,'751 Johnny Tunnel'),
(58,'Maida','Murray',2345230284,'lauren.grant@example.net','Al','Bauchland',88890,'16976 Kade Mission'),
(59,'Willard','Weissnat',7458612859,'melissa57@example.org','In','New Genoveva',84188,'34036 Pfeffer Trace Suite 462'),
(60,'Alvis','Tromp',NULL,'gerda28@example.org','Wi','Lake Cecil',79964,'822 Rhett Lodge'),
(61,'Keenan','Bashirian',NULL,'owiza@example.org','Rh','D\'angeloville',55625,'944 Sporer Junction'),
(62,'Lavinia','Abbott',8949241058,'clemmie.beer@example.net','Ke','Port Madisyn',76703,'63227 Gibson Creek Apt. 268'),
(63,'Marques','Green',6311059381,'hahn.rodrick@example.org','Rh','Wehnerland',90693,'47562 Ford Fork Apt. 758'),
(64,'Hilma','Heller',7860611958,'tmetz@example.net','Rh','Melliemouth',95255,'6742 Guido Knolls'),
(65,'Alberta','Klein',NULL,'becker.austyn@example.org','Mi','Dorothyport',5285,'4463 Joyce Burg'),
(66,'Leila','Bernhard',NULL,'brycen.bogan@example.org','Ma','Trantowmouth',5727,'514 Rice Mountain Apt. 713'),
(67,'Rebeka','Hudson',NULL,'gmccullough@example.net','So','Port Mariana',31238,'991 Vern Greens'),
(68,'Lenny','Mayer',NULL,'danny.harris@example.com','Ar','Chandlershire',62448,'0077 McLaughlin Dam Suite 690'),
(69,'Erling','Hermiston',2147483647,'waters.jadyn@example.net','Ma','East Hilton',64860,'66921 Gwendolyn Lights'),
(70,'Idell','Rodriguez',NULL,'mitchell.sheridan@example.org','Mi','Batzchester',92558,'228 Gunnar Bridge'),
(71,'Jennie','O\'Connell',NULL,'hettinger.brody@example.com','Ca','West Sharon',9514,'148 Joelle Causeway'),
(72,'Gretchen','Runolfsson',NULL,'kenya.langworth@example.com','Ma','New Venaborough',99263,'529 Laverne Point Suite 688'),
(73,'Vanessa','Bayer',NULL,'ekautzer@example.org','Lo','South Kianaborough',52082,'95822 Pfannerstill Junctions Suite 020'),
(74,'Marquise','Blanda',6640507346,'nathaniel80@example.com','Io','Port Camilla',25755,'381 Gerlach Forks'),
(75,'Conrad','Barrows',2147483647,'block.rae@example.com','So','South Nicholauschester',91755,'130 Rafaela Meadow'),
(76,'Cooper','Rempel',7218970217,'myrtie14@example.org','Ne','South Leonorton',78165,'94928 Dach Mountain Apt. 488'),
(77,'June','Rath',3253468396,'sadie.schamberger@example.net','We','New Wilma',84788,'5427 Alanna Forest'),
(78,'Darien','Bogan',1126926230,'verlie54@example.org','Ut','West Dayna',29953,'74195 Mitchell Hill Apt. 230'),
(79,'Yasmine','Krajcik',4081239687,'haleigh.padberg@example.net','Or','South Quintenborough',14038,'87454 Al Hill'),
(80,'Brisa','Torphy',NULL,'eda.dietrich@example.net','Te','Heavenland',48421,'730 Maybell Keys Apt. 738'),
(81,'Osborne','Conn',3814600578,'rath.kiara@example.net','Ne','Davisstad',3242,'15613 Hodkiewicz Way'),
(82,'Marlin','Schinner',2108731345,'elody.kuhic@example.net','Mo','Ornburgh',31487,'2509 Jamal Springs Apt. 645'),
(83,'Felipe','Mante',2147483647,'zieme.soledad@example.com','Rh','Alexisland',52467,'213 Valentin Ports'),
(84,'Nona','Dibbert',7086052849,'gabe.homenick@example.org','Mo','Romaton',18209,'00084 Cortney Lodge'),
(85,'Nakia','Hessel',NULL,'jedidiah.smitham@example.org','Ve','Wiltonland',11934,'260 Jaylen Center'),
(86,'Federico','Waters',8270981437,'jamil35@example.org','Di','Gordonborough',84002,'255 Botsford Pass'),
(87,'Tate','Gleason',NULL,'zulauf.joelle@example.org','Pe','Solonhaven',4389,'811 Trystan Fields Apt. 715'),
(88,'Kade','Smith',4894345869,'trent70@example.org','Ka','Gorczanyville',45570,'918 Nolan Viaduct Suite 215'),
(89,'Tina','Bayer',5539991111,'pvonrueden@example.net','Al','New Carmenville',52907,'994 Celestino Plaza Suite 287'),
(90,'Queenie','Yost',NULL,'bryon.kirlin@example.org','Ma','Cormiermouth',90810,'856 Considine Street Suite 447'),
(91,'Virginia','Kilback',NULL,'wgreen@example.org','So','Erdmanshire',77753,'0445 Rosendo Falls Apt. 948'),
(92,'Augustus','Howell',NULL,'awehner@example.com','Co','Lowechester',24603,'744 Gonzalo Grove Apt. 146'),
(93,'Kathryne','Will',NULL,'cbrakus@example.net','Ne','Lake Krystina',69726,'2990 Buckridge Hollow Apt. 836'),
(94,'Orlando','Turner',NULL,'ella.smitham@example.org','We','Kuphalfort',14221,'24852 Stanton Unions Suite 959'),
(95,'Savanah','Yundt',NULL,'hfriesen@example.org','Ok','South Breannamouth',24744,'9415 Dach Circle Suite 428'),
(96,'Julia','Schulist',2021230979,'lizeth.lehner@example.com','So','Rudyside',37200,'3056 Adrien Wall'),
(97,'Rowena','Hayes',NULL,'reymundo.hickle@example.net','Ge','Krystinabury',36822,'8150 Johnson Wells Suite 341'),
(98,'Michaela','Miller',3831234567,'jacobs.alec@example.com','Ne','Devonfurt',85315,'378 Bennett Alley Suite 735'),
(99,'Claude','Vandervort',NULL,'ebba.yundt@example.org','Ne','Cullenview',54459,'553 Edwin Fork Suite 832'),
(100,'Gladys','Toy',7844501234,'sunny.marvin@example.com','Mi','Keeblershire',46363,'779 Leuschke Square');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_FNAME` varchar(50) DEFAULT NULL,
  `EMP_LNAME` varchar(50) NOT NULL,
  `STORE_NUM` int(11) NOT NULL,
  `EMP_HIREDATE` date NOT NULL,
  `EMP_FIREDATE` date DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `STORE_NUM` (`STORE_NUM`),
  CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`STORE_NUM`) REFERENCES `STORE` (`STORE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES
(1,'John','Doe',1,'2023-03-15','2024-01-15'),
(2,'Jane','Smith',2,'2023-05-20','2024-03-20'),
(3,'Michael','Johnson',3,'2022-12-10','2024-02-28'),
(4,'Jennifer','Anderson',4,'2022-10-25','2024-01-10'),
(5,'David','Martinez',5,'2023-02-28','2024-04-05'),
(6,'Jessica','Taylor',6,'2022-01-10','2023-05-15'),
(7,'Matthew','Wilson',7,'2022-11-05','2024-03-25'),
(8,'Emily','Brown',8,'2023-08-15','2024-02-15'),
(9,'Christopher','Clark',9,'2023-07-20','2024-03-10'),
(10,'Ashley','White',10,'2023-04-30','2024-05-20'),
(11,'Daniel','Thomas',11,'2023-06-10','2024-01-28'),
(12,'Amanda','Jackson',12,'2022-09-25','2024-04-10'),
(13,'Andrew','Harris',13,'2022-08-05','2024-03-20'),
(14,'Samantha','Allen',14,'2023-01-15','2024-02-28'),
(15,'James','Young',15,'2023-03-20','2024-04-15'),
(16,'Sarah','Scott',16,'2023-05-05','2024-03-30'),
(17,'Ryan','Hill',17,'2023-07-10','2024-02-28'),
(18,'Nicole','King',18,'2022-12-28','2024-05-15'),
(19,'Justin','Gonzalez',19,'2023-04-15','2024-03-05'),
(20,'Elizabeth','Lopez',20,'2023-02-10','2024-02-20'),
(21,'Alex','Gomez',1,'2023-08-10','2024-03-15'),
(22,'Victoria','Hernandez',2,'2022-09-15','2023-04-20'),
(23,'Jacob','Diaz',3,'2021-10-20','2023-05-25'),
(24,'Megan','Martinez',4,'2021-11-25','2023-06-01'),
(25,'Tyler','Ramirez',5,'2022-12-01','2023-07-05'),
(26,'Madison','Torres',6,'2023-01-05','2023-08-10'),
(27,'Caleb','Gonzalez',7,'2024-02-10','2024-04-04'),
(28,'Olivia','Perez',8,'2024-03-15','2024-03-17'),
(29,'Ethan','Flores',9,'2022-04-20','2023-11-25'),
(30,'Hannah','Sanchez',10,'2022-05-25','2023-12-01'),
(31,'Noah','Nguyen',11,'2019-06-01','2024-01-05'),
(32,'Abigail','Rivera',12,'2023-07-05','2024-02-10'),
(33,'William','Lopez',13,'2023-08-10','2023-09-15'),
(34,'Sophia','Harris',14,'2020-09-15','2023-04-20'),
(35,'Aiden','Clark',15,'2019-10-20','2023-05-25'),
(36,'Emma','King',16,'2020-11-25','2021-06-01'),
(37,'Logan','Scott',17,'2019-12-01','2021-07-05'),
(38,'Grace','Taylor',18,'2020-01-05','2022-08-10'),
(39,'Jackson','Martin',19,'2020-02-10','2023-09-15'),
(40,'Chloe','Garcia',20,'2021-03-15','2023-10-20'),
(41,'Robert','Lee',1,'2020-06-20',NULL),
(42,'Megan','Perez',2,'2021-07-25',NULL),
(43,'William','Moore',3,'2022-08-10',NULL),
(44,'Kimberly','Garcia',4,'2023-01-05',NULL),
(45,'Joseph','Rodriguez',5,'2019-03-15',NULL),
(46,'Lauren','Nguyen',6,'2018-04-20',NULL),
(47,'Anthony','Rivera',7,'2017-09-30',NULL),
(48,'Stephanie','Chavez',8,'2016-05-10',NULL),
(49,'Kevin','Torres',9,'2015-08-05',NULL),
(50,'Rachel','Kim',10,'2014-07-20',NULL),
(51,'Brandon','Hernandez',11,'2012-12-15',NULL),
(52,'Melissa','Nguyen',12,'2013-02-28',NULL),
(53,'Jonathan','Gonzalez',13,'2014-06-05',NULL),
(54,'Michelle','Perez',14,'2015-11-10',NULL),
(55,'Thomas','Smith',15,'2016-04-30',NULL),
(56,'Kayla','Johnson',16,'2017-05-25',NULL),
(57,'Christopher','Martinez',17,'2018-09-15',NULL),
(58,'Lindsey','Brown',18,'2019-10-20',NULL),
(59,'Justin','Clark',19,'2020-03-01',NULL),
(60,'Alyssa','Lee',20,'2021-08-10',NULL),
(61,'Isabella','Carol',1,'2022-09-28',NULL),
(62,'Toni','Yvette',2,'2008-02-03',NULL),
(63,'Helen','Slack',3,'2000-01-01',NULL),
(64,'Liam','Rodriguez',1,'2023-08-10',NULL),
(65,'Mia','Gutierrez',2,'2022-09-15',NULL),
(66,'Elijah','Vasquez',3,'2021-10-20',NULL),
(67,'Avery','Cruz',4,'2020-11-25',NULL),
(68,'Michael','Romero',5,'2021-12-01',NULL),
(69,'Nora','Wright',6,'2022-01-05',NULL),
(70,'James','Ortiz',7,'2023-02-10',NULL),
(71,'Emily','Alvarez',8,'2024-03-15',NULL),
(72,'Benjamin','Dunn',9,'2023-04-20',NULL),
(73,'Sofia','Hayes',10,'2022-05-25',NULL),
(74,'Lucas','Fisher',11,'2021-06-01',NULL),
(75,'Luna','Snyder',12,'2020-07-05',NULL),
(76,'Jack','Burns',13,'2019-08-10',NULL),
(77,'Aria','Ford',14,'2018-09-15',NULL),
(78,'Gabriel','Pearson',15,'2017-10-20',NULL),
(79,'Evelyn','Reyes',16,'2016-11-25',NULL),
(80,'Alexander','Harrison',17,'2015-12-01',NULL),
(81,'Scarlett','Gomez',18,'2014-01-05',NULL),
(82,'Mateo','Bishop',19,'2013-02-10',NULL),
(83,'Aubrey','Valdez',20,'2012-03-15',NULL),
(84,'Mason','Church',1,'2011-08-10',NULL),
(85,'Elena','Fleming',2,'2012-09-15',NULL),
(86,'Levi','Schultz',3,'2013-10-20',NULL),
(87,'Madeline','Weaver',4,'2023-11-25',NULL),
(88,'Christopher','Cortez',5,'2022-12-01',NULL),
(89,'Layla','Mendez',6,'2024-01-05',NULL),
(90,'Oliver','May',7,'2023-02-10',NULL),
(91,'Aurora','Nicholson',8,'2022-03-15',NULL),
(92,'Julian','Yu',9,'2021-04-20',NULL),
(93,'Paisley','Lamb',10,'2020-05-25',NULL),
(94,'Wyatt','Briggs',11,'2021-06-01',NULL),
(95,'Hazel','Park',12,'2022-07-05',NULL),
(96,'Henry','Hurst',13,'2023-08-10',NULL),
(97,'Lily','Mcclure',14,'2019-09-15',NULL),
(98,'Sebastian','Zhang',15,'2018-10-20',NULL),
(99,'Elizabeth','Parrish',16,'2017-11-25',NULL),
(100,'Owen','Cameron',17,'2016-12-01',NULL),
(101,'Stella','Patterson',18,'2015-01-05',NULL),
(102,'Ryan','Wu',19,'2014-02-10',NULL),
(103,'Clara','Tran',20,'2013-03-15',NULL),
(104,'Daniel','Yates',1,'2012-08-10',NULL),
(105,'Isla','Singleton',2,'2011-09-15',NULL),
(106,'Matthew','Todd',3,'2010-10-20',NULL),
(107,'Nova','Cross',4,'2011-11-25',NULL),
(108,'Nathan','Barr',5,'2012-12-01',NULL),
(109,'Emma','Wang',6,'2013-01-05',NULL),
(110,'Amelia','Holland',7,'2014-02-10',NULL),
(111,'Carter','Trujillo',8,'2015-03-15',NULL),
(112,'Harper','Dickson',9,'2016-04-20',NULL),
(113,'Leo','Vaughn',10,'2017-05-25',NULL),
(114,'Aaliyah','Kaiser',11,'2018-06-01',NULL),
(115,'Grayson','Montgomery',12,'2019-07-05',NULL),
(116,'Peyton','Davenport',13,'2020-08-10',NULL),
(117,'Zoey','Bentley',14,'2021-09-15',NULL),
(118,'David','Faulkner',15,'2022-10-20',NULL),
(119,'Ella','Patrick',16,'2023-11-25',NULL),
(120,'Caleb','Hood',17,'2014-12-01',NULL),
(121,'Violet','Adams',18,'2015-01-05',NULL),
(122,'Luke','Marsh',19,'2023-02-10',NULL),
(123,'Natalie','Hooper',20,'2024-03-15',NULL),
(124,'Olivia','Wilkinson',1,'2017-03-20',NULL),
(125,'Ethan','Owens',2,'2018-08-10',NULL),
(126,'Avery','Mackenzie',3,'2009-05-15',NULL),
(127,'Ella','Montgomery',4,'2010-11-01',NULL),
(128,'Gabriel','Rogers',5,'2011-02-20',NULL),
(129,'Chloe','Reid',6,'2012-09-25',NULL),
(130,'Lucas','Holmes',7,'2013-06-15',NULL),
(131,'Amelia','Mitchell',8,'2014-04-30',NULL),
(132,'Jackson','Barnes',9,'2015-01-10',NULL),
(133,'Lily','Bennett',10,'2016-07-20',NULL),
(134,'Mason','Bryant',11,'2017-10-05',NULL),
(135,'Harper','Harper',12,'2018-12-15',NULL),
(136,'Evelyn','Ross',13,'2008-04-25',NULL),
(137,'Jacob','Russell',14,'2009-09-01',NULL),
(138,'Grace','Ward',15,'2010-02-15',NULL),
(139,'Logan','Henderson',16,'2011-08-20',NULL),
(140,'Sophia','Coleman',17,'2012-11-30',NULL),
(141,'Alexander','Simmons',18,'2013-06-10',NULL),
(142,'Avery','Ferguson',19,'2014-12-05',NULL),
(143,'Liam','Powell',20,'2015-03-20',NULL),
(144,'Ava','Porter',1,'2016-05-30',NULL),
(145,'William','Cooper',2,'2017-10-10',NULL),
(146,'Abigail','Olson',3,'2018-03-15',NULL),
(147,'Noah','Peters',4,'2008-02-20',NULL),
(148,'Emma','Bishop',5,'2009-06-01',NULL),
(149,'Isabella','Vargas',6,'2010-09-10',NULL),
(150,'James','Kennedy',7,'2011-11-25',NULL),
(151,'Mia','Harrison',8,'2012-12-30',NULL),
(152,'Elijah','Washington',9,'2013-04-05',NULL),
(153,'Charlotte','Gordon',10,'2014-08-15',NULL),
(154,'Benjamin','Dixon',11,'2015-10-20',NULL),
(155,'Avery','Matthews',12,'2016-01-30',NULL),
(156,'Mia','Fisher',13,'2017-06-10',NULL),
(157,'Michael','Griffin',14,'2018-09-25',NULL),
(158,'Emily','Nelson',15,'2019-02-05',NULL),
(159,'Daniel','Hansen',16,'2020-04-15',NULL),
(160,'Sofia','Watson',17,'2021-07-20',NULL),
(161,'Logan','Daniels',18,'2022-10-30',NULL),
(162,'Aria','Ramirez',19,'2023-12-05',NULL),
(163,'Matthew','West',20,'2017-04-20',NULL),
(164,'Harper','Foster',1,'2018-08-01',NULL),
(165,'Daniel','Spencer',2,'2009-02-10',NULL),
(166,'Charlotte','Baker',3,'2010-07-25',NULL),
(167,'Alexander','Bell',4,'2011-12-30',NULL),
(168,'Ella','Chapman',5,'2012-03-05',NULL),
(169,'Aiden','Hernandez',6,'2013-09-15',NULL),
(170,'Aria','Wagner',7,'2014-11-20',NULL),
(171,'Sebastian','Harvey',8,'2015-04-01',NULL),
(172,'Scarlett','Fernandez',9,'2016-08-10',NULL),
(173,'Liam','Cole',10,'2017-11-25',NULL),
(174,'Zoe','Fuller',11,'2018-02-28',NULL),
(175,'Carter','Sullivan',12,'2019-06-05',NULL),
(176,'Luna','Haynes',13,'2020-09-15',NULL),
(177,'Jackson','Andrews',14,'2021-11-20',NULL),
(178,'Eleanor','Blackburn',15,'2023-03-01',NULL),
(179,'Grayson','Shaw',16,'2024-05-10',NULL),
(180,'Aurora','Fowler',17,'2010-08-15',NULL),
(181,'Landon','Stone',18,'2011-12-20',NULL),
(182,'Leah','Gill',19,'2012-02-25',NULL),
(183,'Lucas','Rossi',20,'2013-07-05',NULL),
(184,'Knoelle','Grassi',4,'2008-04-30',NULL),
(185,'Julia','Sammonds',13,'2012-11-15','2024-04-04'),
(186,'Bob','The Builder',1,'2024-04-04','2024-04-05');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `EMPLOYEE_STORE`
--

DROP TABLE IF EXISTS `EMPLOYEE_STORE`;
/*!50001 DROP VIEW IF EXISTS `EMPLOYEE_STORE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `EMPLOYEE_STORE` AS SELECT
 1 AS `EMP_ID`,
  1 AS `EMP_FNAME`,
  1 AS `EMP_LNAME`,
  1 AS `STORE_NUM`,
  1 AS `STORE_NAME` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY` (
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `INVENT_INSTOCK` int(11) DEFAULT NULL,
  `INV_NOTES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PROD_NUM`,`PROD_SIZE`),
  CONSTRAINT `INVENTORY_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES
(1,'30',376173,NULL),
(1,'32',596,NULL),
(1,'38',98,NULL),
(2,'5.0',6929,NULL),
(2,'8.5',6999,NULL),
(2,'9.0',6525,NULL),
(3,'L',144,NULL),
(3,'M',4638,NULL),
(3,'S',9312,NULL),
(4,'L',2096,NULL),
(4,'XL',3574,NULL),
(4,'XS',2618,NULL),
(5,'30',1307,NULL),
(5,'40',4774,NULL),
(5,'44',7408,NULL),
(6,'10.5',7771,NULL),
(6,'6.5',9229,NULL),
(6,'8.5',799730,NULL),
(7,'M',5713,NULL),
(7,'S',6051,NULL),
(7,'XL',9172,NULL),
(8,'L',1573464,NULL),
(8,'M',2871,NULL),
(8,'S',998,NULL),
(8,'XL',4942,NULL),
(9,'L',798774,NULL),
(9,'S',9624,NULL),
(10,'28',2245,NULL),
(10,'34',556,NULL),
(11,'7.0',3917,NULL),
(11,'9.0',1171,NULL),
(12,'L',867,NULL),
(12,'XXL',8464,NULL),
(13,'M',854624,NULL),
(13,'S',8746,NULL),
(14,'L',5288,NULL),
(14,'M',5780,NULL),
(15,'6.0',2878,NULL),
(15,'9.0',2410,NULL),
(16,'M',91,NULL),
(16,'S',839888,NULL),
(17,'L',3232,NULL),
(17,'S',729740,NULL),
(18,'7.5',1632,NULL),
(18,'9.5',3281,NULL),
(19,'M',8029,NULL),
(19,'S',8905,NULL),
(20,'36',9980,NULL);
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_CODE` int(11) NOT NULL,
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `PROD_PRICE` decimal(10,2) NOT NULL,
  `QTY_SOLD` int(11) NOT NULL,
  `PURCHASE_DATE` date NOT NULL,
  `TOTAL_PRICE` decimal(12,2) GENERATED ALWAYS AS (`QTY_SOLD` * `PROD_PRICE`) VIRTUAL,
  `STORE_ID` int(11) NOT NULL,
  PRIMARY KEY (`INVOICE_ID`),
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  KEY `STORE_ID` (`STORE_ID`),
  KEY `CUS_CODE` (`CUS_CODE`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`),
  CONSTRAINT `INVOICE_ibfk_2` FOREIGN KEY (`STORE_ID`) REFERENCES `STORE` (`STORE_NUM`),
  CONSTRAINT `INVOICE_ibfk_3` FOREIGN KEY (`CUS_CODE`) REFERENCES `CUSTOMER` (`CUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES
(1,3,1,'30',9.99,33,'1991-10-31',329.67,3),
(2,16,6,'8.5',21.99,50,'1986-03-05',1099.50,16),
(3,17,6,'8.5',21.99,77,'2006-01-23',1693.23,17),
(4,22,8,'L',25.99,12,'2017-07-16',311.88,1),
(5,23,8,'L',27.99,65,'2005-03-24',1819.35,2),
(6,24,8,'L',27.99,53,'1997-11-17',1483.47,3),
(7,25,8,'L',27.99,62,'1993-05-15',1735.38,4),
(8,26,9,'L',28.99,97,'1991-11-08',2812.03,5),
(9,27,9,'L',28.99,21,'1997-08-28',608.79,6),
(10,34,13,'M',39.99,13,'1989-04-01',519.87,13),
(11,35,13,'M',39.99,54,'2019-03-07',2159.46,14),
(12,40,16,'S',59.99,8,'1983-10-09',479.92,19),
(13,41,16,'S',59.99,95,'2003-01-13',5699.05,20),
(14,42,17,'S',59.99,62,'2019-06-29',3719.38,21),
(15,43,17,'S',69.99,32,'1978-04-24',2239.68,1),
(16,51,1,'30',9.99,51,'1978-04-27',509.49,9),
(17,64,6,'8.5',21.99,39,'2012-02-14',857.61,1),
(18,65,6,'8.5',21.99,11,'1997-12-17',241.89,2),
(19,70,8,'L',25.99,70,'1992-05-08',1819.30,7),
(20,71,8,'L',27.99,87,'1980-04-28',2435.13,8),
(21,72,8,'L',27.99,95,'1979-02-17',2659.05,9),
(22,73,8,'L',27.99,77,'1990-11-08',2155.23,10),
(23,74,9,'L',28.99,49,'2007-06-29',1420.51,11),
(24,75,9,'L',28.99,36,'1991-12-09',1043.64,12),
(25,82,13,'M',39.99,9,'2005-03-31',359.91,19),
(26,83,13,'M',39.99,48,'1976-01-02',1919.52,20),
(27,88,16,'S',59.99,17,'1981-12-24',1019.83,4),
(28,89,16,'S',59.99,4,'1986-12-01',239.96,5),
(29,90,17,'S',59.99,49,'2009-10-16',2939.51,6),
(30,91,17,'S',69.99,83,'2017-05-21',5809.17,7),
(31,99,1,'30',9.99,29,'1992-03-09',289.71,15),
(32,12,6,'8.5',21.99,52,'2019-01-04',1143.48,7),
(33,13,6,'8.5',21.99,22,'2010-12-18',483.78,8),
(34,18,8,'L',25.99,2,'2019-08-16',51.98,13),
(35,19,8,'L',27.99,58,'1971-02-19',1623.42,14),
(36,20,8,'L',27.99,83,'1996-04-07',2323.17,15),
(37,21,8,'L',27.99,22,'1983-01-18',615.78,16),
(38,22,9,'L',28.99,1,'2021-05-28',28.99,17),
(39,23,9,'L',28.99,82,'2000-07-26',2377.18,18),
(40,30,13,'M',39.99,54,'1995-12-09',2159.46,4),
(41,31,13,'M',39.99,65,'2004-05-28',2599.35,5),
(42,36,16,'S',59.99,11,'1977-04-13',659.89,10),
(43,37,16,'S',59.99,78,'2018-07-24',4679.22,11),
(44,38,17,'S',59.99,99,'1977-12-03',5939.01,12),
(45,39,17,'S',69.99,93,'1973-10-17',6509.07,13),
(46,47,1,'30',9.99,66,'1998-05-03',659.34,11),
(47,60,6,'8.5',21.99,7,'1990-12-20',153.93,13),
(48,61,6,'8.5',21.99,94,'2006-10-24',2067.06,14),
(49,66,8,'L',25.99,58,'1998-01-12',1507.42,19),
(50,67,8,'L',27.99,58,'2017-07-14',1623.42,20),
(51,68,8,'L',27.99,70,'1973-10-01',1959.30,11),
(52,69,8,'L',27.99,55,'1984-07-02',1539.45,1),
(53,70,9,'L',28.99,28,'2002-05-12',811.72,2),
(54,71,9,'L',28.99,94,'2003-02-02',2725.06,3),
(55,78,13,'M',39.99,12,'1998-10-21',479.88,10),
(56,79,13,'M',39.99,20,'1973-03-22',799.80,11),
(57,84,16,'S',59.99,5,'2008-06-01',299.95,16),
(58,85,16,'S',59.99,34,'2020-03-16',2039.66,17),
(59,86,17,'S',59.99,1,'1996-03-11',59.99,18),
(60,87,17,'S',69.99,68,'1996-12-02',4759.32,19),
(61,95,1,'30',9.99,50,'2015-09-11',499.50,6),
(62,8,6,'8.5',21.99,42,'2011-06-13',923.58,19),
(63,9,6,'8.5',21.99,15,'2010-06-09',329.85,20),
(64,14,8,'L',25.99,74,'2013-11-19',1923.26,4),
(65,15,8,'L',27.99,15,'2002-09-10',419.85,5),
(66,16,8,'L',27.99,70,'1973-04-16',1959.30,6),
(67,17,8,'L',27.99,37,'1982-12-14',1035.63,7),
(68,18,9,'L',28.99,29,'1975-02-07',840.71,8),
(69,19,9,'L',28.99,67,'2015-07-26',1942.33,9),
(70,26,13,'M',39.99,98,'1986-04-23',3919.02,16),
(71,27,13,'M',39.99,91,'1985-07-08',3639.09,17),
(72,32,16,'S',59.99,16,'2018-11-21',959.84,1),
(73,33,16,'S',59.99,71,'2003-12-10',4259.29,2),
(74,34,17,'S',59.99,21,'1997-09-11',1259.79,3),
(75,35,17,'S',69.99,41,'2016-03-03',2869.59,4),
(76,43,1,'30',9.99,76,'1984-07-15',759.24,12),
(77,56,6,'8.5',21.99,37,'2010-11-22',813.63,4),
(78,57,6,'8.5',21.99,22,'2004-03-09',483.78,5),
(79,62,8,'L',25.99,45,'1989-11-27',1169.55,10),
(80,63,8,'L',27.99,97,'2013-05-30',2715.03,11),
(81,64,8,'L',27.99,64,'1998-05-09',1791.36,12),
(82,65,8,'L',27.99,16,'2001-02-16',447.84,13),
(83,66,9,'L',28.99,30,'2002-08-19',869.70,14),
(84,67,9,'L',28.99,21,'1994-06-24',608.79,15),
(85,74,13,'M',39.99,13,'1995-06-04',519.87,1),
(86,75,13,'M',39.99,52,'2012-06-15',2079.48,2),
(87,80,16,'S',59.99,98,'1975-01-04',5879.02,7),
(88,81,16,'S',59.99,35,'2017-03-21',2099.65,8),
(89,82,17,'S',59.99,3,'1994-09-03',179.97,9),
(90,83,17,'S',69.99,2,'1995-02-17',139.98,10),
(91,91,1,'30',9.99,99,'2014-11-16',989.01,18),
(92,37,11,'9.0',69.99,2,'2020-03-18',139.98,15),
(93,17,5,'44',19.99,17,'2020-03-23',339.83,1),
(94,6,14,'M',21.99,8,'2022-04-01',175.92,18),
(95,98,16,'M',18.99,0,'2023-01-17',0.00,4),
(96,14,20,'36',0.99,20,'2023-10-27',19.80,18),
(97,22,6,'8.5',14.99,5,'2023-06-22',74.95,19),
(98,19,18,'9.5',9.99,7,'2024-04-03',69.93,15),
(99,44,13,'S',18.99,7,'2021-05-07',132.93,14),
(100,68,2,'8.5',49.99,1,'2020-08-18',49.99,15);
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER UPDATE_INVENTORY_SOLD
BEFORE INSERT ON INVOICE
FOR EACH ROW
BEGIN
    DECLARE NEW_INVENT INT;
    DECLARE NEW_STORE_INVENT INT;

    SET NEW_INVENT = (
        SELECT INVENT_INSTOCK - NEW.QTY_SOLD
        FROM INVENTORY
        WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE
        LIMIT 1
    );

    SET NEW_STORE_INVENT = (
        SELECT INVENT_INSTOCK - NEW.QTY_SOLD
        FROM STORE_INVENTORY
        WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE AND STORE_NUM = NEW.STORE_ID
        LIMIT 1
    );

    IF NEW_INVENT < 0 OR NEW_STORE_INVENT < 0 THEN
        SET NEW.QTY_SOLD = 0;
    END IF;

    UPDATE INVENTORY
    SET INVENT_INSTOCK = INVENT_INSTOCK - NEW.QTY_SOLD
    WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE;

    UPDATE STORE_INVENTORY
    SET INVENT_INSTOCK = INVENT_INSTOCK - NEW.QTY_SOLD
    WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE AND STORE_NUM = NEW.STORE_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER UPDATE_INVOICE_HISTORY
    AFTER INSERT ON INVOICE FOR EACH ROW
    BEGIN
        IF EXISTS (SELECT 1 FROM INVOICE_HISTORY WHERE CUS_CODE=NEW.CUS_CODE) THEN
            UPDATE INVOICE_HISTORY
                SET TOTAL_QTY = TOTAL_QTY+NEW.QTY_SOLD,
                    TOTAL_PRICE = TOTAL_PRICE + NEW.TOTAL_PRICE
            WHERE CUS_CODE = NEW.CUS_CODE;
        end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER CREATE_INVOICE_HISTORY
    AFTER INSERT ON INVOICE
    FOR EACH ROW
    BEGIN
        DECLARE CUSTOMER_EXISTS INT;
        DECLARE HISTORY_EXISTS INT;

        SELECT COUNT(*) INTO CUSTOMER_EXISTS FROM CUSTOMER WHERE CUS_CODE = NEW.CUS_CODE;

        IF CUSTOMER_EXISTS = 1 THEN
            SELECT COUNT(*) INTO HISTORY_EXISTS FROM INVOICE_HISTORY WHERE CUS_CODE = NEW.CUS_CODE;
            IF HISTORY_EXISTS = 0 THEN
                INSERT INTO INVOICE_HISTORY(CUS_CODE, TOTAL_QTY, TOTAL_PRICE) VALUES (NEW.CUS_CODE, NEW.QTY_SOLD, NEW.TOTAL_PRICE);
                END IF;
        end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `INVOICE_HISTORY`
--

DROP TABLE IF EXISTS `INVOICE_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE_HISTORY` (
  `INV_HIST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_CODE` int(11) NOT NULL,
  `TOTAL_QTY` int(11) NOT NULL,
  `TOTAL_PRICE` decimal(10,0) NOT NULL,
  PRIMARY KEY (`INV_HIST_ID`),
  KEY `CUS_CODE` (`CUS_CODE`),
  CONSTRAINT `INVOICE_HISTORY_ibfk_1` FOREIGN KEY (`CUS_CODE`) REFERENCES `CUSTOMER` (`CUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE_HISTORY`
--

LOCK TABLES `INVOICE_HISTORY` WRITE;
/*!40000 ALTER TABLE `INVOICE_HISTORY` DISABLE KEYS */;
INSERT INTO `INVOICE_HISTORY` VALUES
(1,3,33,330),
(2,16,120,3059),
(3,17,131,3069),
(4,22,18,416),
(5,23,147,4196),
(6,24,53,1483),
(7,25,62,1735),
(8,26,195,6731),
(9,27,112,4248),
(10,34,34,1780),
(11,35,95,5029),
(12,40,8,480),
(13,41,95,5699),
(14,42,62,3719),
(15,43,108,2999),
(16,51,51,509),
(17,64,103,2649),
(18,65,27,690),
(19,70,98,2631),
(20,71,181,5160),
(21,72,95,2659),
(22,73,77,2155),
(23,74,62,1941),
(24,75,88,3123),
(25,82,12,540),
(26,83,50,2060),
(27,88,17,1020),
(28,89,4,240),
(29,90,49,2940),
(30,91,182,6798),
(31,99,29,290),
(32,12,52,1143),
(33,13,22,484),
(34,18,31,893),
(35,19,132,3635),
(36,20,83,2323),
(37,21,22,616),
(38,30,54,2159),
(39,31,65,2599),
(40,36,11,660),
(41,37,80,4819),
(42,38,99,5939),
(43,39,93,6509),
(44,47,66,659),
(45,60,7,154),
(46,61,94,2067),
(47,66,88,2377),
(48,67,79,2232),
(49,68,71,2009),
(50,69,55,1539),
(51,78,12,480),
(52,79,20,800),
(53,84,5,300),
(54,85,34,2040),
(55,86,1,60),
(56,87,68,4759),
(57,95,50,500),
(58,8,42,924),
(59,9,15,330),
(60,14,94,1943),
(61,15,15,420),
(62,32,16,960),
(63,33,71,4259),
(64,56,37,814),
(65,57,22,484),
(66,62,45,1170),
(67,63,97,2715),
(68,80,98,5879),
(69,81,35,2100),
(70,6,8,176),
(71,98,0,0),
(72,44,7,133);
/*!40000 ALTER TABLE `INVOICE_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `PROD_NUM` int(11) NOT NULL,
  `PROD_NAME` varchar(50) NOT NULL,
  `PROD_PRICE` decimal(10,2) NOT NULL,
  `PROD_DESCRIPTION` text DEFAULT NULL,
  `PROD_CAT` varchar(1) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  PRIMARY KEY (`PROD_NUM`,`PROD_SIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES
(1,'Blue Jeans',39.99,'Classic Blue Jeans','B','30'),
(1,'Blue Jeans',39.99,'Classic Blue Jeans','B','32'),
(1,'Blue Jeans',39.99,'Classic Blue Jeans','B','38'),
(2,'Canvas Sneakers',49.99,'Blue High Top Canvas Sneakers','S','5.0'),
(2,'Canvas Sneakers',49.99,'Blue High Top Canvas Sneakers','S','8.5'),
(2,'Canvas Sneakers',49.99,'Blue High Top Canvas Sneakers','S','9.0'),
(3,'Cropped T-Shirt',29.99,'Basic Cropped Cotton Shirt','T','L'),
(3,'Cropped T-Shirt',29.99,'Basic Cropped Cotton Shirt','T','M'),
(3,'Cropped T-Shirt',29.99,'Basic Cropped Cotton Shirt','T','S'),
(4,'Fleece Hoodie',25.99,'Blue Fleece Jacket','T','L'),
(4,'Fleece Hoodie',25.99,'Blue Fleece Jacket','T','XL'),
(4,'Fleece Hoodie',25.99,'Blue Fleece Jacket','T','XS'),
(5,'Casual Shorts',19.99,'Denim High-waisted Shorts','B','30'),
(5,'Casual Shorts',19.99,'Denim High-waisted Shorts','B','40'),
(5,'Casual Shorts',19.99,'Denim High-waisted Shorts','B','44'),
(6,'Beach sandals',14.99,'Brown Beach Sandals','S','10.5'),
(6,'Beach sandals',14.99,'Brown Beach Sandals','S','6.5'),
(6,'Beach sandals',14.99,'Brown Beach Sandals','S','8.5'),
(7,'Silk Blouse',27.99,'White Bottom-up Silk Blouse','T','M'),
(7,'Silk Blouse',27.99,'White Bottom-up Silk Blouse','T','S'),
(7,'Silk Blouse',27.99,'White Bottom-up Silk Blouse','T','XL'),
(8,'Leather Jacket',59.99,'Black Zip-up Leather Jacket','T','L'),
(8,'Leather Jacket',59.99,'Black Zip-up Leather Jacket','T','M'),
(8,'Leather Jacket',59.99,'Black Zip-up Leather Jacket','T','S'),
(8,'Leather Jacket',59.99,'Black Zip-up Leather Jacket','T','XL'),
(9,'Cotton Shirt',15.99,'Basic Red Cotton Shirt','T','L'),
(9,'Cotton Shirt',15.99,'Basic Red Cotton Shirt','T','S'),
(10,'Denim Skirt',22.99,'Denim Mini Skirt','B','28'),
(10,'Denim Skirt',22.99,'Denim Mini Skirt','B','34'),
(11,'Ankle Boots',69.99,'Black Ankle Boots','S','7.0'),
(11,'Ankle Boots',69.99,'Black Ankle Boots','S','9.0'),
(12,'Suit Jacket',79.99,'Formal Black Suit Jacket','T','L'),
(12,'Suit Jacket',79.99,'Formal Black Suit Jacket','T','XXL'),
(13,'Polo Shirt',18.99,'Yellow Short-Sleeved Collared Polo Shirt','T','M'),
(13,'Polo Shirt',18.99,'Yellow Short-Sleeved Collared Polo Shirt','T','S'),
(14,'Stretch Leggings',21.99,'Black Stretch Leggings','B','L'),
(14,'Stretch Leggings',21.99,'Black Stretch Leggings','B','M'),
(15,'High Heels',34.99,'Black High Heels','S','6.0'),
(15,'High Heels',34.99,'Black High Heels','S','9.0'),
(16,'Knit Sweater',18.99,'Blue Knit Sweater','T','M'),
(16,'Knit Sweater',18.99,'Blue Knit Sweater','T','S'),
(17,'Winter Coat',79.99,'Blue Button-Up Winter coat','T','L'),
(17,'Winter Coat',79.99,'Blue Button-Up Winter coat','T','S'),
(18,'Flip Flops',9.99,'Blue Plastic Flip flops','S','7.5'),
(18,'Flip Flops',9.99,'Blue Plastic Flip flops','S','9.5'),
(19,'Button-up Cardigan',28.99,'Yellow Button-up cardigan','T','M'),
(19,'Button-up Cardigan',28.99,'Yellow Button-up cardigan','T','S'),
(20,'Pocket Pants',0.99,'Pockets, Pockets, and more Pockets!','B','36');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER CREATE_INVENTORY
    AFTER INSERT ON PRODUCT
    FOR EACH ROW
    BEGIN
        DECLARE INVENTORY_EXISTS INT;
        SELECT COUNT(*) INTO INVENTORY_EXISTS FROM INVENTORY WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE;

        IF INVENTORY_EXISTS = 0 THEN
            INSERT INTO INVENTORY(PROD_NUM, PROD_SIZE, INVENT_INSTOCK) VALUES (NEW.PROD_NUM, NEW.PROD_SIZE, 0);
        end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER CREATE_STORE_INVENTORY2
    AFTER INSERT ON PRODUCT
    FOR EACH ROW
    BEGIN
        INSERT INTO STORE_INVENTORY(PROD_NUM, STORE_NUM, INVENT_INSTOCK, PROD_SIZE)
            SELECT NEW.PROD_NUM, STORE_NUM, 0, NEW.PROD_SIZE FROM STORE;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PRODUCT_ORDER`
--

DROP TABLE IF EXISTS `PRODUCT_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_ORDER` (
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `VEN_NUM` int(11) NOT NULL,
  `ORDER_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_DATE` date NOT NULL,
  `ORDER_QTY` int(11) NOT NULL,
  `ORDER_COST` decimal(12,2) NOT NULL,
  `ORDER_NOTES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ORDER_NUM`),
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  KEY `VEN_NUM` (`VEN_NUM`),
  CONSTRAINT `PRODUCT_ORDER_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`),
  CONSTRAINT `PRODUCT_ORDER_ibfk_2` FOREIGN KEY (`VEN_NUM`) REFERENCES `PRODUCT_VENDOR` (`VENDOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2049 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_ORDER`
--

LOCK TABLES `PRODUCT_ORDER` WRITE;
/*!40000 ALTER TABLE `PRODUCT_ORDER` DISABLE KEYS */;
INSERT INTO `PRODUCT_ORDER` VALUES
(1,'30',3,1003,'1989-09-01',17734,69379.94,'Rerum in voluptatem adipisci voluptas accusamus iste quia. Reprehenderit ipsam placeat eos aliquam r'),
(6,'8.5',16,1016,'1994-08-01',35005,16305.91,'Ducimus dolorem vero voluptatibus numquam qui perspiciatis. Tenetur mollitia consequatur aut consequ'),
(6,'8.5',17,1017,'2018-04-26',37976,42631.22,'Eos quia iste deserunt voluptate est architecto. Vero nisi aut ipsa iste. Minus illo deserunt eum ev'),
(8,'L',22,1022,'2000-10-27',8572,32115.90,'Vel maxime aliquam placeat nulla incidunt. Voluptatem autem alias possimus delectus fugit. Vitae fac'),
(8,'L',23,1023,'1985-01-26',3573,63922.00,'Recusandae impedit ut autem sed eaque. Consequatur quo corporis aut animi pariatur velit doloremque.'),
(8,'L',24,1024,'1988-09-25',2800,44857.65,'Autem deleniti aperiam reiciendis omnis tenetur quas facere. Iste accusantium minus nihil velit eum '),
(8,'L',25,1025,'2017-10-15',64,64892.58,'Quis id non aspernatur consectetur rerum nemo et. Ab a magni est consequatur et sint. Minima enim ad'),
(9,'L',26,1026,'2001-11-03',32301,17138.00,'Consequatur inventore consequuntur odit tempore repellat consequatur qui. Est quis aperiam mollitia '),
(9,'L',27,1027,'1978-09-13',28307,43017.59,'Laudantium pariatur minima quas facere aut consequatur labore autem. Placeat blanditiis nesciunt tem'),
(13,'M',4,1034,'2010-01-21',28187,74778.01,'Aut illum quia esse. Dolore dignissimos accusamus voluptas excepturi voluptatibus nihil laborum volu'),
(13,'M',5,1035,'1985-04-20',17083,58043.00,'Beatae explicabo hic perferendis voluptatem occaecati. Eveniet aut incidunt numquam fugiat nesciunt '),
(16,'S',10,1040,'2008-04-18',7036,79079.33,'Eius est amet eum explicabo. Eos voluptates voluptas quo iure eaque excepturi et. Laborum illo beata'),
(16,'S',11,1041,'1989-09-18',31294,63742.40,'Culpa nulla cumque earum quo nisi aut. Qui iure assumenda qui. Beatae aperiam vel qui ut vel hic dol'),
(17,'S',12,1042,'2007-10-08',13365,16655.00,'Eum nemo exercitationem ab facilis. Nihil quaerat beatae quaerat eum. Numquam eos repellendus pariat'),
(17,'S',13,1043,'2015-12-11',21809,40339.36,'Incidunt dolores ipsam vel iure. Quisquam reiciendis at aut voluptates ipsam. Sapiente voluptas volu'),
(1,'30',21,1051,'1980-12-15',30695,93472.32,'Nesciunt pariatur culpa incidunt explicabo. In animi facilis iure tempora quibusdam. Amet nesciunt q'),
(6,'8.5',4,1064,'1971-08-20',22656,40058.14,'Hic odit sed sint ex. Ipsa eligendi quos architecto nihil. Doloribus veniam quia odio laborum rem cu'),
(6,'8.5',5,1065,'1970-08-13',13441,77375.55,'Iusto mollitia consequatur aut ipsa voluptate error. Minus porro officia aut harum voluptas a eligen'),
(8,'L',10,1070,'2006-05-16',37471,98765.17,'Non veniam reprehenderit quia delectus laborum quia enim distinctio. Illo aspernatur tempore illum e'),
(8,'L',11,1071,'1998-08-05',31650,8638.01,'Sed quam nihil est ipsam. Recusandae laboriosam dolorem saepe quas et. Facilis et aut quibusdam mole'),
(8,'L',12,1072,'1983-07-13',22304,12438.50,'Exercitationem totam sed perferendis voluptas rerum ipsum. Esse quia deleniti sit quasi. Molestias d'),
(8,'L',13,1073,'1979-12-16',10259,9532.50,'Placeat velit ad perspiciatis eum rerum. Unde harum odit libero. Quibusdam dicta cumque cum adipisci'),
(9,'L',14,1074,'2020-03-15',7620,62675.56,'Provident eius accusantium sit. Quam consequatur ea quis neque delectus ea est. Ea est laborum paria'),
(9,'L',15,1075,'1995-04-10',1267,68478.42,'Iste sed adipisci totam vero maiores. Rerum qui maiores aut ut quod est debitis. A culpa maiores mol'),
(13,'M',22,1082,'2013-09-12',2223,74198.55,'Quidem vitae delectus incidunt. Enim culpa sunt dolorum excepturi dicta similique laudantium officia'),
(13,'M',23,1083,'1999-01-09',6898,21527.88,'Ipsa veritatis aut qui ea consequatur. Dolorem hic sunt nostrum eaque non asperiores odio. Quis veri'),
(16,'S',28,1088,'1975-09-25',36516,35302.39,'Rerum odio est pariatur et deleniti. Facilis suscipit quidem ea placeat illo enim officiis. Est solu'),
(16,'S',29,1089,'2006-01-15',31794,47309.95,'Qui velit ab dolor aut optio accusamus. Minima aut id repellendus. Voluptatum similique qui vero. Qu'),
(17,'S',30,1090,'1981-02-07',10328,90299.23,'Nulla quisquam expedita beatae fuga. Et cupiditate ut voluptatem sapiente laborum.'),
(17,'S',1,1091,'2017-05-30',9030,22562.15,'Vero nihil nam sed nulla. Laboriosam aut maiores qui. Reiciendis voluptas eaque sed doloribus.'),
(1,'30',9,1099,'1990-10-22',7598,46257.20,'Sit assumenda assumenda dolorem iste quis ut. Ipsum corrupti quis eveniet recusandae velit non.'),
(6,'8.5',22,1112,'2005-04-23',23950,35147.68,'Ut dolores quisquam sint omnis. Omnis facere ipsa perspiciatis deserunt nam.'),
(6,'8.5',23,1113,'2006-09-23',15827,56845.45,'Eos ullam minus aspernatur quis nemo voluptatibus et sapiente. Officia temporibus qui consequatur. O'),
(8,'L',28,1118,'1974-07-27',3689,35436.07,'Delectus id eos amet qui rerum velit quidem natus. Omnis aspernatur consequatur magni aut molestiae '),
(8,'L',29,1119,'2024-02-24',1696,5259.91,'Est quia suscipit repudiandae nihil velit. Beatae ratione est rerum et quisquam.'),
(8,'L',30,1120,'2002-03-23',18188,41898.84,'Rem qui et sunt minima doloremque illo est. Fuga provident libero porro recusandae cupiditate. Est v'),
(8,'L',1,1121,'1997-06-11',32366,14556.00,'Qui deserunt sapiente recusandae temporibus rerum eos eum ut. Eos minus aliquid quos tempora molliti'),
(9,'L',2,1122,'2015-09-29',20956,3423.73,'Sit eos voluptate aut ut aut sunt rem. Eligendi tempore et aspernatur omnis. Minus id occaecati dolo'),
(9,'L',3,1123,'1972-01-21',1315,40102.00,'Consequuntur itaque qui quis et rerum praesentium. Dolores aut corporis adipisci cum aut laudantium '),
(13,'M',10,1130,'1989-01-23',26148,10222.20,'Amet soluta neque et suscipit dolor quidem veritatis est. Quia facere consectetur libero quis cum ve'),
(13,'M',11,1131,'2020-06-01',7375,8273.92,'Aliquam nobis asperiores saepe non. Id quis mollitia dolores assumenda mollitia et.'),
(16,'S',16,1136,'2008-06-20',36320,54185.09,'Error eius velit occaecati quia dolorem tempore dolor. Incidunt deserunt aut quis consequuntur animi'),
(16,'S',17,1137,'1976-09-02',14887,75709.00,'Ab laudantium soluta sunt aut nemo neque et labore. Possimus quisquam consequatur voluptatem ut iure'),
(17,'S',18,1138,'1986-09-23',15388,22841.91,'Odit a eaque enim qui. Aut qui non non sunt distinctio. Quidem laborum aspernatur vel illum. Maiores'),
(17,'S',19,1139,'1983-09-15',1434,26396.89,'Consequatur at aut repudiandae laudantium iste commodi. Ea est blanditiis saepe sit iusto maiores re'),
(1,'30',27,1147,'1989-07-21',33078,340.64,'Ab quia id natus natus. Pariatur sit ea voluptate excepturi similique est. In iste ut accusamus esse'),
(6,'8.5',10,1160,'1979-11-24',4356,22200.07,'Accusamus deleniti illum alias quasi asperiores aut ut. Reiciendis dolorem dolor voluptatem commodi '),
(6,'8.5',11,1161,'2010-12-12',11173,46800.47,'Vel et quidem molestiae rerum quis consequuntur inventore. Sit eum excepturi vitae. Aspernatur hic o'),
(8,'L',16,1166,'1978-06-24',26581,59278.85,'Ut laboriosam accusamus reiciendis accusamus. Quam sit provident est voluptatem consequuntur.'),
(8,'L',17,1167,'2014-05-11',4705,80478.79,'Quis atque autem dolor iste eaque voluptas. Voluptatem at dolorem assumenda unde qui odio et. Dolore'),
(8,'L',18,1168,'1998-10-09',8743,3579.16,'Magni iure et odio magni mollitia. Omnis et itaque molestias et et tempore officia. Rerum ratione et'),
(8,'L',19,1169,'1986-03-11',22999,10063.17,'Odio voluptates vitae voluptatem unde at dolores recusandae. Voluptatem et est aut deserunt nesciunt'),
(9,'L',20,1170,'1974-12-02',7320,31616.04,'Non et assumenda in. Soluta quod doloribus facilis eligendi excepturi. Veniam amet enim distinctio p'),
(9,'L',21,1171,'1996-10-22',29388,71346.56,'Sunt explicabo dolores veniam ab reiciendis. Et excepturi dolore blanditiis. Illum eveniet error sit'),
(13,'M',28,1178,'1970-02-15',4386,97468.86,'Aut qui quisquam est ea minima eaque et quae. Laborum ea provident sed voluptas quo qui maxime at. M'),
(13,'M',29,1179,'1990-10-14',21912,40183.55,'Assumenda consequuntur consequatur quas doloribus nisi ipsam. Explicabo repellendus iusto animi quas'),
(16,'S',4,1184,'1984-12-01',9152,58346.80,'Perferendis tenetur repellat qui eveniet porro. Architecto aut recusandae et quia molestiae.'),
(16,'S',5,1185,'1970-12-03',13829,38708.28,'Natus quia fuga nam sed nisi. Maxime perferendis minus voluptatum doloribus culpa minima harum. Debi'),
(17,'S',6,1186,'1990-04-15',207,82632.72,'Dicta voluptas temporibus velit dolorem quisquam magni est. Illo omnis ad aut impedit. Sit deleniti '),
(17,'S',7,1187,'1988-03-21',37727,58196.36,'Molestias maxime exercitationem sed et ducimus quos. In quia quidem repellendus. Aut modi est nemo r'),
(1,'30',15,1195,'2022-02-25',14823,87873.82,'Dolorem officia quasi ex quis tempora veritatis dolorem mollitia. Odio ab et et voluptatem eligendi.'),
(6,'8.5',28,1208,'2008-02-12',20662,54036.40,'Vel quia dolorem deserunt numquam. Molestiae pariatur dicta rerum rerum possimus ullam odio. Digniss'),
(6,'8.5',29,1209,'1985-03-29',35566,10611.94,'Magnam quibusdam eligendi quae. Perferendis nam magnam qui illum. Blanditiis dolore aut quis nostrum'),
(8,'L',4,1214,'1986-03-10',35037,37485.72,'Quis laudantium libero aut aut voluptatibus quia. Et qui modi est deleniti. Necessitatibus reprehend'),
(8,'L',5,1215,'2012-01-30',1253,67347.82,'Qui odio unde et quod cumque sed. Et consequatur sapiente eum et.'),
(8,'L',6,1216,'1970-05-31',12486,98623.76,'Explicabo eligendi et facilis non odio doloribus. Consequuntur cumque qui incidunt dolores. Culpa ac'),
(8,'L',7,1217,'1986-01-02',6610,76446.43,'Minus voluptate sapiente provident quia. Delectus rerum ipsam id totam exercitationem. Explicabo exe'),
(9,'L',8,1218,'1971-10-03',19359,76260.90,'Incidunt id facilis veritatis veritatis quia sint voluptatum quaerat. Nesciunt inventore sint perfer'),
(9,'L',9,1219,'1992-07-21',3467,28284.68,'Eos aliquid dolore eos perferendis possimus consectetur dolore. Consequatur nemo sit tenetur magni a'),
(13,'M',16,1226,'1984-04-07',37208,94191.40,'Ducimus voluptatibus at illum ea aspernatur sed voluptate ut. Nihil ex et et quisquam ab. Quasi fugi'),
(13,'M',17,1227,'2021-11-15',22764,93441.62,'Ipsam voluptates commodi cupiditate repellendus consectetur dolor. Ipsum iusto voluptatibus et esse '),
(16,'S',22,1232,'1994-04-21',20370,1368.75,'Saepe enim dicta aut. Nostrum quis ut quam autem quos. Aspernatur id qui sed placeat.'),
(16,'S',23,1233,'1980-01-06',28576,18826.43,'Facilis ea accusamus provident fugit. Repudiandae velit nobis quam sed qui nostrum. Aut et excepturi'),
(17,'S',24,1234,'1993-02-14',20246,88709.62,'Illum et iure nulla quia magnam. Consequuntur facilis corrupti soluta enim libero. Hic veritatis nec'),
(17,'S',25,1235,'1971-02-16',37655,48121.12,'Et in pariatur ducimus quia. Et ducimus voluptas dolorum eligendi commodi distinctio rerum iste. Occ'),
(1,'30',3,1243,'2017-09-09',6809,43700.85,'Ea qui quae culpa. Vel ratione eum quis molestias eius. Quaerat dolor ex sunt voluptatem error volup'),
(6,'8.5',16,1256,'2002-05-23',10510,99107.84,'Dolor voluptatem id natus doloremque accusamus. Repellat tempore eligendi numquam omnis error aut vo'),
(6,'8.5',17,1257,'1985-01-06',7819,16872.47,'Quia in distinctio tempora reprehenderit cupiditate culpa voluptas. Vel itaque enim doloremque volup'),
(8,'L',22,1262,'1977-09-30',9254,2050.77,'Laborum itaque provident quia veniam expedita omnis at. Alias pariatur quis dolores sequi. In et exp'),
(8,'L',23,1263,'1993-02-09',30179,45628.94,'Laboriosam non itaque expedita sit. Quae magni fugit rerum expedita. Beatae soluta dolor veritatis r'),
(8,'L',24,1264,'2014-04-03',23305,51348.62,'Rerum pariatur quam totam quidem. Qui facilis aut id porro enim distinctio consequatur. Voluptatem s'),
(8,'L',25,1265,'2022-05-31',35259,38036.40,'Commodi molestiae rem est voluptas. Enim velit et modi aperiam temporibus. Voluptas consectetur vel '),
(9,'L',26,1266,'2002-08-07',13857,92064.40,'Facere nemo recusandae magni neque aperiam qui. Perspiciatis distinctio natus quibusdam nisi exercit'),
(9,'L',27,1267,'1991-11-09',1753,1076.81,'Voluptate neque nihil id quasi sit. Facilis aliquam dolorem officiis libero. Sunt aut deserunt nam i'),
(13,'M',4,1274,'1978-08-16',26711,43134.82,'Aliquam praesentium dignissimos ut minus ut magnam. Iusto impedit ex est qui rerum temporibus. Quia '),
(13,'M',5,1275,'1971-10-12',674,99797.72,'Et ad provident accusantium pariatur sit unde repellat sunt. Optio cupiditate eos cumque deserunt.'),
(16,'S',10,1280,'2004-10-02',11557,23146.66,'Eos id eligendi sapiente praesentium sint praesentium. Error ut aut corrupti ad. Aut enim ex qui off'),
(16,'S',11,1281,'1981-03-04',5918,65900.06,'Blanditiis esse officiis doloremque quis et dolores in. Quas porro et ut qui pariatur ut cumque.'),
(17,'S',12,1282,'1993-07-03',1710,47181.00,'Nostrum ratione dolores cupiditate expedita sed. Illum officiis quo optio voluptates quo. Quam est q'),
(17,'S',13,1283,'2022-11-15',11297,43178.39,'Dignissimos magni molestiae natus blanditiis maxime corporis. Qui voluptatibus a rerum sed autem per'),
(1,'30',21,1291,'2014-08-14',25249,56696.33,'Dignissimos sunt natus aut quod corporis. Voluptatem facilis iusto architecto. Adipisci aperiam exce'),
(6,'8.5',4,1304,'2000-06-07',4382,19060.40,'Perspiciatis natus consequatur sint minima optio. Amet corporis ducimus in voluptatem distinctio in.'),
(6,'8.5',5,1305,'2018-06-18',34843,7802.00,'At illo dolores consequatur provident libero repellat impedit. Nesciunt eius esse et placeat quibusd'),
(8,'L',10,1310,'1980-02-24',9925,63760.00,'Corporis accusamus soluta explicabo dolorum sit. Cumque delectus deleniti iure ut. Voluptas non accu'),
(8,'L',11,1311,'1997-05-12',17556,89169.05,'Neque sed provident fugiat commodi temporibus nihil consequuntur. Perspiciatis magnam in est quisqua'),
(8,'L',12,1312,'2023-05-24',9885,54566.24,'Aut nobis nostrum molestiae ratione. Ipsa aut eos quidem dolor quibusdam. Et voluptatem sint hic. Ne'),
(8,'L',13,1313,'1999-05-30',982,8846.05,'Molestiae amet totam mollitia non et voluptas quis nesciunt. Ut illo sed praesentium et sed. Ullam e'),
(9,'L',14,1314,'1983-01-15',28517,38386.60,'Itaque blanditiis dicta magni qui. Modi aut dolores voluptate cumque impedit itaque ex. Ratione perf'),
(9,'L',15,1315,'1985-05-29',25724,89975.00,'Magni dignissimos est veniam autem ipsam doloremque suscipit. Quis numquam est nisi aspernatur volup'),
(13,'M',22,1322,'1971-04-25',30723,11009.50,'Veritatis officiis voluptatibus voluptatibus suscipit. Cumque provident totam cupiditate qui. Blandi'),
(13,'M',23,1323,'2006-06-14',10261,63089.84,'Qui aut totam qui nisi libero quos. Ut ea qui vitae maxime eum cupiditate harum rem. Sunt ullam dign'),
(16,'S',28,1328,'2010-06-27',31254,55442.91,'Et animi similique accusantium fuga libero. Fuga quas repudiandae non tenetur ullam velit. Ut nisi o'),
(16,'S',29,1329,'2016-01-08',35803,61420.00,'Ratione et molestiae necessitatibus aut. Omnis beatae voluptatem dolorum perspiciatis earum et quo i'),
(17,'S',30,1330,'2019-06-20',6675,12006.15,'Aut esse consequuntur debitis et. Accusantium id dolore et qui. Dolor eos tempore perferendis aut ev'),
(17,'S',1,1331,'2015-09-25',18219,17753.00,'Nisi aperiam nesciunt dolorem. Nesciunt qui sunt asperiores sed. Et ex maiores eum sequi sit suscipi'),
(1,'30',9,1339,'1996-03-15',4805,34154.74,'Tempora quia tempore ut fugit. Perspiciatis saepe voluptas praesentium odit.'),
(6,'8.5',22,1352,'1984-11-02',31548,5968.70,'Tempore aut quidem deleniti doloremque et cupiditate cumque. Veniam quidem voluptas impedit est sapi'),
(6,'8.5',23,1353,'1984-06-19',19750,41615.75,'Laboriosam amet quia iste modi aut quaerat. Repudiandae iste non recusandae suscipit et est voluptat'),
(8,'L',28,1358,'1973-01-19',36844,87151.69,'Magnam et harum ut exercitationem fugit consequatur ut ipsa. Eveniet iure labore voluptas sapiente a'),
(8,'L',29,1359,'1975-05-24',21366,69707.45,'Mollitia voluptate sunt error minima et officia ad. Dolor necessitatibus atque nihil et. Et et nemo '),
(8,'L',30,1360,'1975-05-26',34990,68986.00,'Qui quisquam nam autem excepturi laboriosam. Porro ea reprehenderit ut alias sed nihil. Dolorem labo'),
(8,'L',1,1361,'1973-10-26',19843,88343.88,'Ut nemo rerum atque repellat. Et qui unde consequatur magnam laboriosam ut dolore. Corrupti voluptas'),
(9,'L',2,1362,'1992-12-11',21220,14774.09,'Voluptatem libero qui quaerat qui et facere amet. Sunt et architecto itaque dolores aspernatur nam d'),
(9,'L',3,1363,'2008-07-28',9436,17216.09,'Exercitationem nam voluptatem officiis dolorem excepturi. Reiciendis reprehenderit repudiandae dolor'),
(13,'M',10,1370,'2018-11-01',25894,77619.00,'At sequi temporibus est odio eius. Ut est consequatur fuga atque. Quo itaque aspernatur officiis et '),
(13,'M',11,1371,'2005-01-03',22216,6922.00,'Quas sunt quia autem quas. Voluptatem sunt quibusdam exercitationem quisquam non et.'),
(16,'S',16,1376,'2010-02-22',17850,8154.54,'Earum quisquam molestiae est ea error. Et debitis numquam eum reiciendis. Consequatur asperiores quo'),
(16,'S',17,1377,'2006-04-26',13990,58540.60,'Dolores nihil natus mollitia natus autem quas et. Dolor recusandae a porro laborum perspiciatis.'),
(17,'S',18,1378,'2023-04-05',30442,33431.06,'Est quisquam aut autem libero. Commodi voluptate unde dignissimos laborum accusamus unde. Qui vel es'),
(17,'S',19,1379,'2011-10-11',33633,16264.00,'Quia ea dolorum iure culpa. Minus voluptatem voluptatem perspiciatis non necessitatibus. Adipisci mo'),
(1,'30',27,1387,'2009-04-27',12704,24019.59,'Est sed maiores laboriosam illo. Omnis occaecati saepe accusantium consequatur. Nam expedita necessi'),
(6,'8.5',10,1400,'1984-01-12',33388,66535.06,'Mollitia esse quae quis quibusdam. Ab quia placeat voluptas perspiciatis rerum. Quo non provident am'),
(6,'8.5',11,1401,'1979-01-03',4062,58495.40,'Et repudiandae mollitia eum similique tempora. Quidem incidunt vel iure fugit itaque tempore itaque.'),
(8,'L',16,1406,'2021-10-14',10564,68441.59,'Voluptatibus magnam doloremque nesciunt. Exercitationem laboriosam quia sed laboriosam inventore et.'),
(8,'L',17,1407,'2008-05-01',22807,54886.68,'Magnam nostrum quisquam aut dolorem aut. Aut quia quos ut. Amet ipsam repellat minus.'),
(8,'L',18,1408,'2003-10-27',36773,54358.91,'Eos et rem sint. Quidem et ut provident et inventore molestiae. Et nisi tempore blanditiis.'),
(8,'L',19,1409,'1996-08-26',32586,67899.43,'Itaque magni facere esse quibusdam perspiciatis temporibus. Nihil sit praesentium voluptatibus eos. '),
(9,'L',20,1410,'1983-05-05',9465,28903.16,'Id minima et aperiam sed magnam itaque voluptas. Ut tempore tempore voluptas eius. Suscipit tempora '),
(9,'L',21,1411,'1993-01-11',34488,6964.99,'Voluptatem quia ex numquam. At eligendi debitis et veritatis dolores sapiente. Sint praesentium repe'),
(13,'M',28,1418,'1978-09-06',26244,69663.00,'Veniam autem repudiandae hic facilis voluptatibus perspiciatis id. Vel quia expedita qui ipsa beatae'),
(13,'M',29,1419,'2007-02-15',32416,23289.97,'Et saepe nesciunt ut numquam nemo ducimus nesciunt. Necessitatibus aut quaerat nihil a. Aliquid et m'),
(16,'S',4,1424,'1997-11-30',18323,67461.49,'Omnis voluptatum amet animi nemo. Repellat dolor necessitatibus voluptatem temporibus mollitia offic'),
(16,'S',5,1425,'2008-06-03',8706,78103.59,'Officia earum rem sapiente accusantium. Error adipisci aliquid repudiandae atque sequi vel sit. Aspe'),
(17,'S',6,1426,'1989-06-17',19390,94057.31,'Sint sed aut sapiente explicabo quis qui fuga. Voluptatem ut aliquid odio quia impedit amet. Unde si'),
(17,'S',7,1427,'1974-06-16',13525,85741.87,'Perferendis aperiam modi ut dolores autem ut et. Omnis accusantium cum magni tenetur. Aspernatur cum'),
(1,'30',15,1435,'2019-09-28',29487,34039.07,'Rerum ut iste dolor. Voluptatem ut odit qui omnis minus ea. Eum veniam quasi dignissimos quae et.'),
(6,'8.5',28,1448,'1973-02-11',27029,66655.73,'Et magni est iusto aut et itaque deserunt sed. Quia deleniti adipisci ea debitis aliquam qui ratione'),
(6,'8.5',29,1449,'2007-10-24',4951,7759.23,'Ab sunt itaque dicta beatae repellendus modi dolore. Quia facere alias sit voluptatum. Tempore sed a'),
(8,'L',4,1454,'1989-10-26',15783,6849.33,'Mollitia aut dignissimos ut. Tenetur voluptatem delectus quibusdam eos ut ducimus repudiandae. Iusto'),
(8,'L',5,1455,'2009-04-08',23508,8852.79,'Omnis libero provident tenetur sint. Nihil mollitia aliquam ullam fugit eaque minus aut magnam. Mole'),
(8,'L',6,1456,'2023-12-31',2811,60770.29,'Dolore nisi ut perspiciatis. Non fugiat consequatur ut rem amet ea. Quia omnis dicta consequatur qui'),
(8,'L',7,1457,'1990-07-21',15062,68564.95,'Eum consequatur et maxime libero deserunt ab in. Aliquam et consequatur amet qui reprehenderit lauda'),
(9,'L',8,1458,'1993-04-30',25915,84833.51,'Aut delectus suscipit eos porro. Nam tenetur ullam sint placeat laboriosam. Unde mollitia corrupti q'),
(9,'L',9,1459,'1980-02-07',32731,69351.87,'Veniam molestias saepe quidem id eligendi quae accusantium. Doloremque id sunt ab molestiae sequi. I'),
(13,'M',16,1466,'1971-06-14',35115,15531.93,'Occaecati qui consequatur maiores dolor aut earum dolor. Laudantium dolor magnam facere eaque. Nostr'),
(13,'M',17,1467,'2004-09-27',6306,27666.00,'Sit nihil eaque recusandae. Voluptatem corrupti laudantium sapiente voluptas aspernatur ad quibusdam'),
(16,'S',22,1472,'2020-03-14',24330,34884.26,'Rerum ad animi facere et modi qui veniam. Molestiae quis unde velit sed ipsum labore eos.'),
(16,'S',23,1473,'1971-08-29',23408,19308.62,'Eum itaque id provident dignissimos. Qui soluta est quibusdam accusamus cum aut. Ipsam culpa autem a'),
(17,'S',24,1474,'1979-02-05',17764,9245.00,'Sapiente vel ducimus et. Doloremque sequi alias nemo molestiae cumque hic distinctio. Quam maxime ea'),
(17,'S',25,1475,'1979-09-15',33000,4496.43,'Dolor et quis hic architecto quidem vero. Consequatur veritatis quas sed hic minima. Quasi consequun'),
(1,'30',3,1483,'1974-09-09',29568,75426.38,'Id sed corporis beatae illum labore animi. Nam quia debitis aut repellat aspernatur optio. Itaque fa'),
(6,'8.5',16,1496,'1973-09-21',7508,79483.43,'Voluptatibus occaecati est modi ut qui quis. Quibusdam quaerat et corporis. Voluptas nulla vitae aut'),
(6,'8.5',17,1497,'2005-01-11',28063,21271.21,'Sit exercitationem explicabo ipsa. Quibusdam ut voluptas perferendis nihil.'),
(8,'L',22,1502,'2023-04-01',32536,60981.34,'Possimus nisi saepe ex neque molestiae enim. Doloremque qui autem ipsam. Magni qui molestiae velit e'),
(8,'L',23,1503,'2005-10-25',32945,65561.71,'Aut qui accusantium fuga explicabo voluptatem. Omnis omnis sunt tenetur explicabo doloribus dolor. V'),
(8,'L',24,1504,'1999-09-11',4773,55735.10,'Similique sequi in molestiae quia expedita ad excepturi. Corporis eos delectus tempora. Et in culpa '),
(8,'L',25,1505,'1987-07-14',12125,87113.53,'Neque voluptas et suscipit non temporibus ut qui quos. Est consequatur sunt qui non doloribus ut eos'),
(9,'L',26,1506,'1976-11-27',8511,38689.91,'Laudantium qui consequuntur esse aut minus aut explicabo. Perferendis blanditiis ipsa dolorum ab ali'),
(9,'L',27,1507,'1987-04-12',2877,91807.52,'Odio occaecati quaerat totam molestias quis nulla dignissimos. Ipsam iusto voluptate vitae eum venia'),
(13,'M',4,1514,'1994-09-16',5543,96032.00,'Quibusdam inventore adipisci et vel est. Velit non doloribus eos velit tempore qui vero. Porro offic'),
(13,'M',5,1515,'1975-05-22',23540,34143.00,'Doloribus ut et vitae quam consequuntur excepturi harum. Placeat blanditiis modi non et et quibusdam'),
(16,'S',10,1520,'1991-08-31',38061,88889.27,'Eligendi sunt veniam qui quo provident dolorum saepe. Repudiandae deleniti error dicta laborum illum'),
(16,'S',11,1521,'2023-08-12',32388,21025.15,'Modi error et tempore eius quibusdam et qui. Saepe omnis quas et ea nihil ut. Dolor omnis quo quia q'),
(17,'S',12,1522,'2008-03-20',30407,4591.60,'Ea vitae dolores autem aut non velit deleniti. Officiis et vel qui rerum quam ipsum aperiam. Quod au'),
(17,'S',13,1523,'2001-11-06',12473,13159.00,'Suscipit aperiam qui fugit debitis libero ex incidunt. Nam reiciendis dolorum expedita. Dolores aliq'),
(1,'30',21,1531,'1993-08-24',21746,87101.39,'Et distinctio ad tenetur consequuntur. Qui ea et hic eius. Repellendus explicabo sit dolore. Volupta'),
(6,'8.5',4,1544,'1979-07-10',31612,96275.90,'Omnis fuga odio quam autem sequi est sit. Nihil qui accusamus et ullam explicabo dolorem. Aut hic es'),
(6,'8.5',5,1545,'1975-10-17',21245,39956.00,'Nobis dolorum ex id earum veniam. In voluptatem perspiciatis sapiente ea quam. Est ab quia voluptas '),
(8,'L',10,1550,'1979-01-23',33184,38183.78,'Aperiam est at quae ut. Minima rerum cum ducimus ea. Excepturi nam esse facilis dolorem dolorem id s'),
(8,'L',11,1551,'1977-11-15',16093,62688.00,'Illo harum cupiditate hic sint hic tempore. Enim aperiam et minima sed. Suscipit et perspiciatis adi'),
(8,'L',12,1552,'1972-01-23',35586,43810.62,'Quo rerum quis cupiditate et sed sunt. Itaque consequatur ut velit ut laudantium hic porro atque. No'),
(8,'L',13,1553,'1974-12-03',25330,97227.00,'Aliquid quasi quia sed laboriosam. Voluptas numquam magni aperiam. Perferendis architecto praesentiu'),
(9,'L',14,1554,'2004-02-23',20766,49819.74,'Magni minus illo consectetur quibusdam dolor. Eos fugit sunt repellendus vel. Non est ut adipisci si'),
(9,'L',15,1555,'1997-09-29',10912,95475.03,'Unde eos et earum explicabo suscipit est et. Sit sit maiores et molestias. Molestiae ipsa itaque eli'),
(13,'M',22,1562,'2002-09-01',1550,87509.45,'Nisi dolor debitis iure architecto corporis quo. Rem quae debitis animi sunt fuga non quo. Deserunt '),
(13,'M',23,1563,'2010-11-26',20483,59058.14,'Sit sed voluptas iure deserunt rerum eum quas. Voluptas aut nulla amet beatae odit non. Aut facilis '),
(16,'S',28,1568,'2014-05-24',4443,46763.46,'Velit rerum itaque voluptatem aut quos occaecati. Et aspernatur officia eum in excepturi. Aut provid'),
(16,'S',29,1569,'2018-02-14',15260,38261.49,'Quia ducimus quisquam sed culpa voluptas eveniet. Et minus soluta aut quis autem. Nulla laboriosam v'),
(17,'S',30,1570,'2003-01-15',26029,46296.88,'Commodi autem modi molestiae reprehenderit laboriosam iure necessitatibus. Corporis dignissimos quam'),
(17,'S',1,1571,'1974-12-20',31099,66229.72,'Modi natus voluptatem similique et eos. Dolorum ducimus error blanditiis quia dolores dignissimos. V'),
(1,'30',9,1579,'1977-05-21',8048,91232.47,'Velit similique voluptatem hic sed rem. Et amet aut sequi ut qui natus.'),
(6,'8.5',22,1592,'2013-11-24',20676,11804.33,'Dolores ducimus est et. Et temporibus cumque blanditiis minima eos ex. Neque dicta iusto non qui.'),
(6,'8.5',23,1593,'2002-11-04',22359,80500.70,'Occaecati corporis tempore omnis voluptatibus aut praesentium. Reiciendis dicta magnam sit ducimus s'),
(8,'L',28,1598,'2000-09-30',28651,8300.00,'Deserunt consectetur ullam veritatis deleniti at voluptas. Qui omnis pariatur voluptatem aperiam rec'),
(8,'L',29,1599,'1989-08-11',1185,59026.56,'Facere aut odio nihil iusto et. Sunt aut dignissimos voluptatibus omnis quia numquam at ea. Et aut p'),
(8,'L',30,1600,'1974-08-20',23745,89293.39,'Porro et autem numquam deserunt ipsum animi sed. Fugiat qui maxime et aut a quia aut et. Et dolorem '),
(8,'L',1,1601,'1995-04-27',342,47397.76,'Velit soluta et debitis. Labore a vero nemo aliquam et. Voluptatem aut cupiditate accusamus rem volu'),
(9,'L',2,1602,'2001-11-21',34807,18783.17,'Maxime eum rerum est nam. Ipsam illo eos earum est modi est. Quaerat et voluptatem sequi sunt. Aut s'),
(9,'L',3,1603,'2010-04-03',37317,19089.71,'Molestias error quae laudantium sint non et. Quidem omnis corporis voluptas ut. Magnam ut exercitati'),
(13,'M',10,1610,'1979-01-31',19711,82297.04,'Quo quis temporibus magni repudiandae dolores quidem. Dolores nihil odio nobis commodi. Omnis molest'),
(13,'M',11,1611,'1972-05-27',13092,75216.83,'Assumenda eveniet illo ex iure. Cumque est qui magnam praesentium. Sint voluptas quae fugiat volupta'),
(16,'S',16,1616,'1991-11-06',33003,63047.97,'Voluptas repellat veritatis sit tempore vel. Nisi ut suscipit et tempora perspiciatis et. Dolorem no'),
(16,'S',17,1617,'1984-04-30',5055,28356.65,'Quasi numquam repudiandae assumenda adipisci aut quidem. Sint voluptas doloribus soluta autem adipis'),
(17,'S',18,1618,'1994-11-14',5504,22273.72,'Tenetur consequuntur et quia quisquam itaque aut in. Est nesciunt non voluptates provident fugiat. Q'),
(17,'S',19,1619,'1986-09-01',36702,78770.51,'Dolorem fuga vel sed quaerat. Debitis numquam non consequatur omnis sapiente odio. Tempora voluptate'),
(1,'30',27,1627,'2020-08-27',1286,57764.73,'Quo nisi harum excepturi ut aut enim alias. Consequatur quo ipsam quam architecto. Tempore similique'),
(6,'8.5',10,1640,'2023-02-07',4170,41214.52,'Consequatur laboriosam repellendus repudiandae nihil voluptatum quaerat. Corporis unde deserunt et e'),
(6,'8.5',11,1641,'1982-11-05',29464,40280.33,'Fuga amet magni dolorem vero asperiores ipsa. Inventore expedita eveniet explicabo nemo qui unde ips'),
(8,'L',16,1646,'1987-04-25',21109,42780.99,'Tempore similique magnam aperiam ad aliquam deserunt voluptatem. Explicabo dicta est dolore dicta be'),
(8,'L',17,1647,'2012-11-29',13094,80127.00,'Dolores commodi itaque at. Amet dolorum ex assumenda doloremque aut quaerat. Odio repudiandae volupt'),
(8,'L',18,1648,'2000-09-13',2396,79030.10,'Consequuntur neque voluptatibus atque assumenda autem aspernatur aut. Ut nihil et quis consequatur d'),
(8,'L',19,1649,'1970-06-26',22596,94666.72,'Est ut voluptas iure fuga et officia laudantium. Tempore aut aspernatur distinctio sed. Aliquid iste'),
(9,'L',20,1650,'1994-05-16',22664,78248.58,'Facere ullam neque doloremque id cupiditate quia excepturi. Accusamus dolorem corporis est sint et a'),
(9,'L',21,1651,'2007-02-27',36552,2577.58,'Optio impedit facilis a. Hic vel hic ipsa eum. Veritatis laboriosam maiores libero iure molestiae.'),
(13,'M',28,1658,'1973-03-10',17245,99353.42,'Deserunt enim unde atque commodi inventore ab vitae. Rerum doloribus accusamus nulla consectetur et.'),
(13,'M',29,1659,'2022-08-28',37106,83526.68,'Alias accusamus quasi provident ipsum ullam reiciendis voluptas molestiae. Sed ipsam magni quia anim'),
(16,'S',4,1664,'2002-07-25',15825,45738.00,'Numquam laudantium doloremque voluptas. Nisi laudantium perferendis soluta. Repellat voluptatum dolo'),
(16,'S',5,1665,'2005-02-03',7113,63704.00,'Vel placeat architecto voluptate cupiditate blanditiis itaque hic. Totam dolores distinctio omnis in'),
(17,'S',6,1666,'2010-03-01',14361,21029.80,'Ea officia fugiat explicabo et quisquam amet et. Repellat quod consequatur enim earum quod doloribus'),
(17,'S',7,1667,'2008-04-13',6978,33351.11,'Consequuntur aut doloribus earum et similique. Et et aliquid in harum molestiae in. Quaerat perspici'),
(1,'30',15,1675,'2011-08-24',13284,34564.85,'Et totam laboriosam omnis molestiae sint est. Repellendus sint et nesciunt cum. Nihil dolorem sit re'),
(6,'8.5',28,1688,'2016-04-18',8063,45130.37,'Accusamus rem voluptatem aliquid voluptas deserunt. Corporis velit recusandae enim dignissimos. Est '),
(6,'8.5',29,1689,'1975-08-02',3455,67924.72,'Temporibus est esse quod ad necessitatibus. Voluptate vel rerum sed quam. Maiores perspiciatis venia'),
(8,'L',4,1694,'1977-10-18',16576,30351.36,'Culpa quia esse consequuntur eveniet doloribus. Aliquid delectus facere molestiae debitis. Rerum quo'),
(8,'L',5,1695,'2019-05-16',27069,82972.38,'Voluptatem recusandae atque eligendi minima perferendis quibusdam. Voluptas beatae facilis deleniti '),
(8,'L',6,1696,'2018-05-18',9452,5075.09,'Aut sint doloremque omnis laborum. Eos veritatis eaque magnam consequatur commodi. Voluptas quia est'),
(8,'L',7,1697,'2017-01-08',24784,89306.72,'Occaecati omnis est optio molestiae. Tempore optio magni sapiente impedit totam fugiat est. Reiciend'),
(9,'L',8,1698,'1970-02-08',524,88465.12,'Et voluptatum aut placeat et hic aut. Incidunt et odio rerum non dolorem alias nesciunt iusto.'),
(9,'L',9,1699,'2013-04-28',2667,29643.26,'Quis dignissimos labore doloribus velit beatae molestias quos aspernatur. Quas dolores odit eligendi'),
(13,'M',16,1706,'1991-03-16',26426,58611.61,'Reiciendis esse commodi consequatur nemo. Optio sint nihil ex eum pariatur quo. Quibusdam animi sunt'),
(13,'M',17,1707,'1977-08-17',33498,627.30,'Et natus qui dolor at dolor. Similique dicta sit pariatur commodi rerum. Eius sit repudiandae repell'),
(16,'S',22,1712,'1985-02-03',13297,69140.00,'At accusamus eaque eum sit quia eveniet repellendus. Sed eum enim beatae consequatur.'),
(16,'S',23,1713,'1994-10-30',1964,82617.29,'Occaecati consectetur corporis quam dolorem quaerat quod. Incidunt fugiat consequatur vitae iusto a '),
(17,'S',24,1714,'1970-08-02',9235,50446.74,'Ratione nulla ea itaque ut laboriosam et rerum. Fuga et enim earum quidem dicta ipsum. Velit aliquid'),
(17,'S',25,1715,'1995-03-19',19416,78180.20,'Qui ratione ratione fugiat voluptas reprehenderit veritatis ipsum et. Similique sit nisi libero vita'),
(1,'30',3,1723,'1992-04-25',14164,86943.20,'Id quia est similique voluptas et culpa repellat. Modi rerum atque rerum doloremque repellat ut faci'),
(6,'8.5',16,1736,'2002-01-14',23980,86759.20,'Sed modi odio sint est rerum necessitatibus qui. Aperiam quasi aliquam qui possimus nemo ipsum repre'),
(6,'8.5',17,1737,'1982-05-13',15176,38475.43,'Consectetur neque quibusdam tempora harum fugit ad. Doloremque in repellendus doloribus enim volupta'),
(8,'L',22,1742,'2010-08-25',9464,39427.64,'Sapiente eius accusamus provident. Ab molestiae autem dolorum provident tenetur sequi iure amet. Odi'),
(8,'L',23,1743,'1978-10-05',28905,70041.03,'Ut voluptatem voluptatem ullam neque illum laborum. Odit consequatur ea beatae impedit non. Molestia'),
(8,'L',24,1744,'1984-02-01',23031,16000.00,'Qui totam impedit et qui laudantium. Minus qui unde sunt neque voluptas ipsum. Officiis consectetur '),
(8,'L',25,1745,'1972-10-05',26972,89957.10,'Consequatur distinctio laudantium qui dolor repellat. Officiis eos et repellendus quae eveniet recus'),
(9,'L',26,1746,'2007-05-23',26501,47171.84,'Fugiat voluptatibus ut quisquam aut voluptatem dolorem. Ipsa soluta pariatur cumque perspiciatis hic'),
(9,'L',27,1747,'2019-06-09',20371,95362.23,'Eos facere saepe velit rem. Sed dolorum praesentium officiis molestias quod. Tempora facilis facilis'),
(13,'M',4,1754,'1988-06-29',10603,84404.80,'Ea sapiente eum non quibusdam sunt distinctio neque. Voluptatibus omnis inventore veritatis harum ve'),
(13,'M',5,1755,'2021-12-13',35961,25637.00,'Vitae quia fuga natus molestiae placeat. Totam sunt quasi ipsam. Necessitatibus omnis quis labore qu'),
(16,'S',10,1760,'1992-10-29',29609,13494.03,'Molestiae ratione ad nulla mollitia. Necessitatibus officiis non sed nisi. Quod eum ea voluptates eu'),
(16,'S',11,1761,'1992-12-01',5350,95989.46,'Est ad quae autem vel. Modi aut voluptates est commodi perspiciatis eos quae. Voluptatibus non quia '),
(17,'S',12,1762,'1987-08-01',11150,70122.62,'Dolore impedit voluptatum dolorem vel dolorem. Porro cumque voluptatum ut natus. Aut hic saepe rerum'),
(17,'S',13,1763,'2004-03-09',3253,51578.67,'Omnis consectetur et eos placeat rem enim. Cum repellat corporis libero quidem eum sunt. Praesentium'),
(1,'30',21,1771,'2016-12-18',19365,71249.50,'Itaque sed eveniet sint porro quia doloremque repellendus est. Magnam culpa id ut molestiae officia '),
(6,'8.5',4,1784,'1987-05-22',19982,1757.00,'Vel ut et nemo eligendi provident. Quia eius inventore tenetur unde quia sunt at velit. Et doloremqu'),
(6,'8.5',5,1785,'1997-09-19',31168,64348.27,'Quo eius nisi laboriosam qui. Impedit sapiente tempore sed rerum. Praesentium reprehenderit nemo lab'),
(8,'L',10,1790,'1994-03-03',31643,24251.00,'Officiis rerum at et ratione quo adipisci aut vel. Dolores quia qui aut assumenda voluptate. Delenit'),
(8,'L',11,1791,'1985-03-03',7677,75051.95,'Omnis esse sed harum id aspernatur aspernatur. Adipisci voluptatibus officiis ipsam impedit ex volup'),
(8,'L',12,1792,'2017-07-29',32211,35133.50,'Impedit quia mollitia tempora quis et dicta ratione. In adipisci ut veniam. Voluptas consequuntur do'),
(8,'L',13,1793,'2009-01-16',7109,95722.42,'Earum totam voluptas ut non et. Accusamus dolorem omnis maiores eius. Ut est magnam perferendis arch'),
(9,'L',14,1794,'1989-06-28',21317,12960.00,'Quia quia quis quia quia vel nisi est repellat. Sed mollitia nemo vel non quo tenetur aut. Quas qui '),
(9,'L',15,1795,'1980-07-08',21224,40706.23,'Quia sunt quod quo esse autem et. Voluptas reiciendis similique hic temporibus. Omnis eaque et moles'),
(13,'M',22,1802,'1989-03-03',20537,59972.94,'Nobis tempora dolorem ea tempore inventore rerum veniam. Et illo est quas. Consequatur est vel moles'),
(13,'M',23,1803,'2018-03-25',18231,61878.70,'Sunt quas est voluptas nobis qui dolor amet. Optio iste ipsa quas sunt illum molestiae. Quae exercit'),
(16,'S',28,1808,'2011-09-29',22261,65945.00,'Et laudantium repellendus sed et dolorem. Et consequuntur dolor non non rerum. Pariatur sequi expedi'),
(16,'S',29,1809,'2005-05-20',19189,34123.00,'Aspernatur iure fuga alias placeat aut labore harum. Iusto itaque consectetur et similique et modi.'),
(17,'S',30,1810,'2010-10-07',33948,80499.52,'Et eaque consequatur tempore officiis sunt et. Neque in officia fugit. Iure est dolores dolor.'),
(17,'S',1,1811,'1985-07-28',19083,43721.04,'Et dolores perferendis voluptates quasi. Quisquam voluptatem minima praesentium. Id beatae architect'),
(1,'30',9,1819,'2007-08-06',10787,36520.31,'Amet nemo aliquid assumenda velit est ut. Accusantium aspernatur commodi recusandae facere sequi est'),
(6,'8.5',22,1832,'2008-11-01',3257,17495.90,'Dolor quia velit dolor voluptatem ea. Quia accusantium corrupti fugiat quia enim ea. Et iusto iste i'),
(6,'8.5',23,1833,'2015-08-31',15754,88718.09,'Id rerum ut accusantium earum facilis voluptatibus. Rem vel ipsum architecto suscipit. Voluptas fugi'),
(8,'L',28,1838,'2023-03-08',18042,62254.92,'Ratione ut debitis molestias dolor consequatur. Neque in nulla corrupti perferendis aliquid. Et id d'),
(8,'L',29,1839,'1994-12-07',836,31364.76,'Fugiat quas porro ullam maxime facilis ratione voluptates nam. Saepe voluptates excepturi voluptates'),
(8,'L',30,1840,'1981-09-14',34525,14482.25,'Dolorem sunt perspiciatis iste dignissimos dignissimos. Sunt dolor ut eos in voluptates. Ut magnam m'),
(8,'L',1,1841,'2002-10-04',13117,61536.61,'Architecto vero quia facere temporibus. Occaecati dolor amet perspiciatis id. Iure ut et vitae assum'),
(9,'L',2,1842,'2003-06-14',12055,10325.82,'Autem explicabo nemo veniam ut. Sed vitae incidunt sunt sint ratione iusto ducimus. Et quos repellen'),
(9,'L',3,1843,'1998-06-29',9031,2771.15,'Quia est magnam voluptas. Et tempore qui fuga qui quam pariatur ratione. Aut occaecati et laboriosam'),
(13,'M',10,1850,'1991-07-26',21511,25875.96,'Sit libero tempora sed ab. Quo et placeat optio. Rerum est et debitis dolores excepturi. Natus volup'),
(13,'M',11,1851,'1985-06-21',27870,66004.89,'Temporibus esse nesciunt culpa minus esse. Est similique amet praesentium est nam incidunt. Aut qui '),
(16,'S',16,1856,'1996-01-10',11111,46428.34,'Sunt quisquam voluptatem voluptate accusamus sit. Facere quaerat numquam vel impedit. Consequuntur r'),
(16,'S',17,1857,'2011-08-07',26030,90921.00,'Nam ratione aut perferendis quam. Velit et est accusamus soluta quia incidunt et. Deserunt nam solut'),
(17,'S',18,1858,'1997-11-19',23946,75788.26,'Ut laborum nobis veniam est quia voluptatem et. Quia a rerum veritatis autem.'),
(17,'S',19,1859,'1972-05-28',23612,1161.52,'Ex voluptas eos molestiae qui sit omnis. Voluptates quibusdam corporis est nihil impedit corporis vo'),
(1,'30',27,1867,'1995-11-07',30140,15156.90,'Qui placeat sed nihil dolores earum est id. Consequatur eaque deserunt eligendi ratione. Qui sed id '),
(6,'8.5',10,1880,'1998-01-10',18532,32782.38,'Nostrum tempore expedita error architecto rem ducimus. Dolor laudantium voluptas qui saepe. Cumque n'),
(6,'8.5',11,1881,'1986-09-08',36468,16697.62,'Exercitationem et vel est. Ducimus nostrum exercitationem possimus rerum. Voluptas nulla accusamus n'),
(8,'L',16,1886,'2013-03-14',35750,85996.36,'Eos soluta fugiat qui autem velit quis. Eveniet non cupiditate rerum reprehenderit pariatur rerum au'),
(8,'L',17,1887,'1988-04-19',3021,52404.62,'In soluta occaecati libero voluptatibus consectetur autem rerum. Rerum expedita eum amet eos sed. Er'),
(8,'L',18,1888,'1970-03-05',28243,26437.66,'Qui labore magni quia reiciendis ut eaque. Sed quod ipsam sed ut mollitia in iure. Sunt eum repellat'),
(8,'L',19,1889,'1975-02-09',18714,90037.04,'Earum aut unde sint veniam cum dolores. Blanditiis nesciunt quia reiciendis repellendus et et except'),
(9,'L',20,1890,'1977-01-09',12794,958.13,'Quas tempora vitae saepe vitae eius voluptate in. Neque qui officia vero explicabo. Eos necessitatib'),
(9,'L',21,1891,'1985-01-13',19482,77131.25,'Quas ea ut natus iusto vero est. Pariatur qui ut molestiae et. Rerum ut sapiente reprehenderit sed e'),
(13,'M',28,1898,'2021-04-10',9249,65419.96,'Dolor quaerat occaecati totam incidunt ut saepe. Voluptatem repudiandae sint voluptatem exercitation'),
(13,'M',29,1899,'1974-05-01',22208,89504.31,'Rerum unde voluptate consequatur quis. Sed tempora commodi a adipisci consequatur. Officia quis sint'),
(16,'S',4,1904,'1971-01-12',35810,16654.43,'Esse eveniet maiores rerum qui doloribus consequatur. Voluptates sint reprehenderit et sit ut fugiat'),
(16,'S',5,1905,'1978-11-21',11393,37470.07,'Est facilis sed eos. Explicabo laborum quia suscipit est. Rerum molestias veniam dignissimos sunt qu'),
(17,'S',6,1906,'2001-10-11',17131,83251.86,'Voluptatem hic aut occaecati. Quasi ducimus labore consequuntur in et. Laudantium aut earum voluptat'),
(17,'S',7,1907,'2008-03-07',11768,31964.62,'Porro quia dolorem velit dolore beatae expedita itaque expedita. Assumenda aliquam ipsam omnis. A au'),
(1,'30',15,1915,'1987-04-10',14680,96994.43,'Dolores adipisci ut quo aut et voluptatem voluptatem. Et quos dolor doloribus deleniti. Voluptas qui'),
(6,'8.5',28,1928,'2000-06-24',27887,44265.14,'Dolorem cupiditate eum possimus voluptas. Consectetur nostrum possimus numquam est perferendis venia'),
(6,'8.5',29,1929,'1999-11-30',15459,92200.00,'Nobis exercitationem dolore ut corrupti et voluptas. Voluptas tempore ex earum vel omnis excepturi e'),
(8,'L',4,1934,'1984-10-24',4680,26034.20,'Sed et impedit at vitae. Modi ut totam velit possimus magni. Fuga tenetur magni dolorem nihil iusto '),
(8,'L',5,1935,'2020-07-03',29414,89147.13,'Inventore voluptas non dolor iste repellat minus corrupti. Distinctio dolor molestias dignissimos ab'),
(8,'L',6,1936,'2006-06-20',29133,40171.15,'Cupiditate accusamus exercitationem beatae delectus consequuntur sapiente sit. Vel quis itaque lauda'),
(8,'L',7,1937,'1997-04-10',7188,47490.47,'Tempora quis deserunt enim. Consectetur ullam quia rerum blanditiis. Et aut sit velit.'),
(9,'L',8,1938,'2013-07-08',34176,3575.31,'Vitae doloribus et voluptas nihil. Ipsam repellat et sunt corporis deleniti itaque consequatur.'),
(9,'L',9,1939,'2009-12-28',33930,27358.00,'Culpa tempora provident quia. Debitis optio aut magnam sequi qui vel quod. Suscipit eos ullam in ut '),
(13,'M',16,1946,'1982-11-11',28542,65102.46,'Voluptate deleniti aut aut quo vel eveniet sit. Voluptas facilis deserunt ducimus animi.'),
(13,'M',17,1947,'1970-03-24',22976,18678.61,'Culpa iure qui non et culpa. Blanditiis non explicabo tempore quibusdam ipsum. Rem inventore volupta'),
(16,'S',22,1952,'1987-12-08',32357,31900.50,'Illo esse enim qui et. Nihil tenetur et est nihil molestiae. Dolores modi dolores esse asperiores ni'),
(16,'S',23,1953,'2016-02-08',28137,1811.44,'Quo saepe occaecati non. Nihil voluptatum quaerat consequatur omnis. Similique sed hic nobis.'),
(17,'S',24,1954,'2008-08-17',11777,13862.78,'Quae incidunt enim eligendi iste eveniet eaque laboriosam. Esse excepturi quos qui assumenda unde in'),
(17,'S',25,1955,'1973-03-30',28065,33170.04,'Dignissimos neque repudiandae et sequi. Praesentium necessitatibus itaque et ut. Consequatur expedit'),
(1,'30',3,1963,'1984-09-23',30499,84041.84,'Est praesentium hic maxime id et nulla. Doloribus officia quod autem quis ea. Suscipit veniam et sae'),
(6,'8.5',16,1976,'2015-06-16',6800,64247.20,'Harum et voluptatem et amet sed. Officiis deleniti reiciendis aut aut. Doloribus dolores odio ea.'),
(6,'8.5',17,1977,'1989-04-12',8478,63516.50,'Cum iste placeat soluta nihil excepturi deleniti. Temporibus quos exercitationem unde quo beatae est'),
(8,'L',22,1982,'2021-10-08',23945,77635.64,'Et eos omnis maxime quis et. Corporis ut eius porro nihil aperiam tenetur aut. Et deleniti eveniet o'),
(8,'L',23,1983,'1986-12-11',16136,40151.52,'Nam quia recusandae quo eveniet non est. Rerum debitis saepe ipsam qui qui. Quia et occaecati itaque'),
(8,'L',24,1984,'2012-09-13',16237,29538.01,'Esse voluptatem asperiores quidem unde. Et enim quasi qui quo. Vero molestias ea voluptates vitae. N'),
(8,'L',25,1985,'1995-02-02',38477,59647.57,'A quaerat enim aperiam natus explicabo ad accusantium. Placeat reprehenderit odio qui dolor. Accusan'),
(9,'L',26,1986,'2016-04-19',31700,31391.93,'Tempora laborum accusamus consequuntur aliquam commodi nobis inventore recusandae. Voluptatem sed sa'),
(9,'L',27,1987,'1978-02-20',21058,42661.57,'Libero voluptas odit voluptas magni. Et eum exercitationem id maxime totam id consequatur alias. Ea '),
(13,'M',4,1994,'1992-05-05',18796,11994.61,'Dolore blanditiis totam iste quasi blanditiis suscipit. Omnis quod in tempora. Ut voluptatem et dolo'),
(13,'M',5,1995,'2008-02-04',28172,9471.90,'Ipsam molestiae veniam placeat enim. Temporibus quas voluptate qui consequatur omnis officiis nihil.'),
(16,'S',10,2000,'1973-04-10',24657,11274.17,'Amet blanditiis optio dignissimos laboriosam quia voluptatem. Laborum error harum architecto aut et '),
(1,'30',14,2001,'2022-07-11',28,84.99,'Blue Jeans by Corwin-Walsh'),
(1,'32',27,2002,'2021-09-28',596,2429.57,'Blue Jeans by Ziemann-Bogisich'),
(1,'38',4,2003,'2014-04-30',98,414.14,'Blue Jeans by Cronin, Fisher and Hudson'),
(2,'5.0',24,2004,'2012-08-20',6929,105320.14,'Canvas Sneakers by Kerluke, Bergnaum and Schiller'),
(2,'8.5',14,2005,'2020-01-06',7000,14103.32,'Canvas Sneakers by Corwin-Walsh'),
(2,'9.0',18,2006,'2015-03-20',6525,21510.14,'Canvas Sneakers by Jacobi, Wolff and Dach'),
(3,'L',2,2007,'2004-09-19',144,1151.25,'Cropped T-Shirt by Hilpert-Abernathy'),
(3,'M',6,2008,'2009-10-10',4638,15252.21,'Cropped T-Shirt by Conn, Cassin and Wisoky'),
(3,'S',27,2009,'2004-04-12',9312,21513.26,'Cropped T-Shirt by Ziemann-Bogisich'),
(4,'L',21,2010,'2021-10-17',2096,15135.32,'Fleece Hoodie by Hintz, VonRueden and Schuppe'),
(4,'XL',28,2011,'2005-11-19',3574,25103.63,'Fleece Hoodie by Dicki-Howell'),
(4,'XS',21,2012,'2015-03-20',2618,50124.31,'Fleece Hoodie by Hintz, VonRueden and Schuppe'),
(5,'30',9,2013,'2023-05-26',1307,5213.63,'Casual Shorts by Fadel, Maggio and Zemlak'),
(5,'40',5,2014,'2005-12-23',4774,12420.25,'Casual Shorts by Runte-Schroeder'),
(5,'44',30,2015,'2021-10-17',7425,165303.54,'Casual Shorts by Reichert-Monahan'),
(6,'10.5',1,2016,'2020-07-27',7771,525254.25,'Beach Sandals by Harber LLC'),
(6,'6.5',20,2017,'2016-08-21',9229,936323.63,'Beach Sandals by Kuvalis, Runolfsdottir and Kovacek'),
(6,'8.5',12,2018,'2022-08-13',1753,36301.31,'Beach Sandals by Hyatt, Schuster and Jones'),
(7,'M',3,2019,'2016-07-09',5713,52520.52,'Silk Blouse by Huel-Howell'),
(7,'S',18,2020,'2018-02-04',6051,20530.36,'Silk Blouse by Jacobi, Wolff and Dach'),
(7,'XL',24,2021,'2016-06-02',9172,525203.35,'Silk Blouse by Kerluke, Bergnaum and Schiller'),
(8,'L',9,2022,'2018-02-04',6440,52063.36,'Leather Jacket by Fadel, Maggio and Zemlak'),
(8,'M',16,2023,'2022-08-13',2871,25202.52,'Leather Jacket by Harvey LLC'),
(8,'S',25,2024,'2016-07-09',998,9257.25,'Leather Jacket by Mraz PLC'),
(8,'XL',26,2025,'2020-02-13',4942,12529.25,'Leather Jacket by Schmidt Ltd'),
(9,'L',17,2026,'2020-07-27',3687,25203.35,'Cotton Shirt by Ritchie LLC'),
(9,'S',29,2027,'2016-07-09',9624,252062.56,'Cotton Shirt by Kohler LLC'),
(10,'28',9,2028,'2019-04-20',2245,25205.25,'Denim Skirt by Fadel, Maggio and Zemlak'),
(10,'34',22,2029,'2022-08-13',556,7052.52,'Denim Skirt by Windler-Willms'),
(11,'7.0',28,2030,'2016-07-18',3917,25205.25,'Ankle Boots by Dicki-Howell'),
(11,'9.0',9,2031,'2020-03-16',1173,9362.26,'Ankle Boots by Fadel, Maggio and Zemlak'),
(12,'L',22,2032,'2015-05-04',867,11262.33,'Suit Jacket by Windler-Willms'),
(12,'XXL',3,2033,'2021-03-19',8464,126036.36,'Suit Jacket by Huel-Howell'),
(13,'M',16,2034,'2020-02-13',1559,15026.74,'Polo Shirt by Harvey LLC'),
(13,'S',12,2035,'2023-12-19',8753,95026.46,'Polo Shirt by Hyatt, Schuster and Jones'),
(14,'L',27,2036,'2016-02-22',5288,25936.36,'Stretch Leggings by Ziemann-Bogisich'),
(14,'M',1,2037,'2021-12-15',5788,25936.25,'Stretch Leggings by Harber LLC'),
(15,'6.0',10,2038,'2022-12-10',2878,25267.36,'High Heels by Schuppe, Kuhic and Romaguera'),
(15,'9.0',21,2039,'2018-02-04',2410,25296.26,'High Heels by Hintz, VonRueden and Schuppe'),
(16,'M',27,2040,'2022-07-22',91,1592.52,'Knit Sweater by Ziemann-Bogisich'),
(16,'S',4,2041,'2014-04-04',7134,57260.03,'Knit Sweater by Cronin, Fisher and Hudson'),
(17,'L',13,2042,'2022-12-10',3232,82592.62,'Winter Coat by Konopelski-Sporer'),
(17,'S',6,2043,'2021-03-19',1513,20632.26,'Winter Coat by Conn, Cassin and Wisoky'),
(18,'7.5',26,2044,'2016-06-02',1632,9260.36,'Flip Flops by Schmidt Ltd'),
(18,'9.5',13,2045,'2021-03-19',3288,11583.26,'Flip Flops by Konopelski-Sporer'),
(19,'M',30,2046,'2024-02-10',8029,72693.36,'Button-up Cardigan by Reichert-Monahan'),
(19,'S',27,2047,'2021-12-15',8905,83063.63,'Button-up Cardigan by Ziemann-Bogisich'),
(20,'36',19,2048,'2024-02-03',10000,100.99,'Pocket Pants by Cremin Group');
/*!40000 ALTER TABLE `PRODUCT_ORDER` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER UPDATE_VENDOR_TOTALS
    AFTER INSERT ON PRODUCT_ORDER
    FOR EACH ROW
    BEGIN
        UPDATE PRODUCT_VENDOR
            SET VEN_TOTAL_BILLED = VEN_TOTAL_BILLED + NEW.ORDER_QTY
        WHERE VENDOR_ID = NEW.VEN_NUM;
        UPDATE PRODUCT_VENDOR
            SET VEN_TOTAL_PRODUCED = VEN_TOTAL_PRODUCED + NEW.ORDER_QTY WHERE VENDOR_ID = NEW.VEN_NUM;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER UPDATE_INVENTORY
    AFTER INSERT ON PRODUCT_ORDER
    FOR EACH ROW
    BEGIN
        UPDATE INVENTORY
        SET INVENT_INSTOCK = INVENT_INSTOCK + NEW.ORDER_QTY
        WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER UPDATE_STORE_INVENTORY
    AFTER INSERT ON PRODUCT_ORDER
    FOR EACH ROW
    BEGIN
        DECLARE TOTAL_ORDERED INT;
        DECLARE TOTAL_STORES INT;
        DECLARE QTY_PER_STORE INT;
        DECLARE REMAINDER INT;

        SET TOTAL_ORDERED = NEW.ORDER_QTY;

        SELECT COUNT(*) INTO TOTAL_STORES FROM STORE;
        SET QTY_PER_STORE = TOTAL_ORDERED DIV TOTAL_STORES;
        SET REMAINDER = TOTAL_ORDERED - (QTY_PER_STORE * TOTAL_STORES);
        UPDATE STORE_INVENTORY
            SET INVENT_INSTOCK = INVENT_INSTOCK+ QTY_PER_STORE
        WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE;
        IF REMAINDER > 0 THEN
            UPDATE STORE_INVENTORY
                SET INVENT_INSTOCK = INVENT_INSTOCK + REMAINDER
            WHERE PROD_NUM = NEW.PROD_NUM AND PROD_SIZE = NEW.PROD_SIZE AND STORE_NUM = (SELECT STORE_NUM FROM STORE LIMIT 1);
        end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PRODUCT_VENDOR`
--

DROP TABLE IF EXISTS `PRODUCT_VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_VENDOR` (
  `VENDOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VEN_NAME` varchar(50) NOT NULL,
  `VEN_COUNTRY` varchar(50) NOT NULL,
  `VEN_STATE` varchar(2) DEFAULT NULL,
  `VEN_CITY` varchar(100) NOT NULL,
  `VEN_ADDRESS` varchar(50) NOT NULL,
  `VEN_TOTAL_BILLED` decimal(12,2) DEFAULT 0.00,
  `VEN_TOTAL_PRODUCED` int(11) DEFAULT 0,
  PRIMARY KEY (`VENDOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_VENDOR`
--

LOCK TABLES `PRODUCT_VENDOR` WRITE;
/*!40000 ALTER TABLE `PRODUCT_VENDOR` DISABLE KEYS */;
INSERT INTO `PRODUCT_VENDOR` VALUES
(1,'Harber LLC','Nauru','Co','Abshireburgh','4780 Watsica Land',156658.00,156658),
(2,'Hilpert-Abernathy','Jersey','In','Welchburgh','750 Mante Oval Apt. 858',89182.00,89182),
(3,'Huel-Howell','Angola','Ma','Lake Johanshire','0812 Beahan Island Suite 272',170050.00,170050),
(4,'Cronin, Fisher and Hudson','Anguilla','Ca','North Maia','1622 Haley Mountain',326890.00,326890),
(5,'Runte-Schroeder','Qatar','Al','Strosinstad','08653 Bertha Radial',333186.00,333186),
(6,'Conn, Cassin and Wisoky','Bhutan','Ok','Runolfsdottirtown','2339 Murray Pines Apt. 604',111122.00,111122),
(7,'Schaefer LLC','Syrian Arab Republic','No','Rodolfofort','321 Hilda Mission Apt. 941',123642.00,123642),
(8,'Bayer-Romaguera','Guam','Ge','Boehmchester','776 Bechtelar Trail',79974.00,79974),
(9,'Fadel, Maggio and Zemlak','New Zealand','Ve','Brownmouth','3239 Bins Branch Suite 211',115198.00,115198),
(10,'Schuppe, Kuhic and Romaguera','Reunion','Co','Shanahanfort','87529 Elinor Plain',379731.00,379731),
(11,'Terry-Kozey','El Salvador','Id','Lake Ashtyn','21892 Felipa Lodge',299646.00,299646),
(12,'Hyatt, Schuster and Jones','Norway','Mi','Gerholdchester','883 Gisselle Neck',167124.00,167124),
(13,'Konopelski-Sporer','Fiji','Ma','West Joana','572 Hickle Way',99032.00,99032),
(14,'Corwin-Walsh','Jamaica','Mi','South Richie','175 Terry Islands',85248.00,85248),
(15,'Emard-Lakin','Congo','Io','East Ignacio','3922 Brakus Terrace Suite 600',131401.00,131401),
(16,'Harvey LLC','Pakistan','Al','New Abelardo','8776 Heller Knoll Suite 592',407812.00,407812),
(17,'Ritchie LLC','Samoa','No','Port Leora','05296 Hirthe Fort',290332.00,290332),
(18,'Jacobi, Wolff and Dach','Saudi Arabia','Ar','North Bradley','9078 Wilber Skyway',164011.00,164011),
(19,'Cremin Group','Switzerland','Or','Feliciaton','1677 Kylie Bypass',202276.00,202276),
(20,'Kuvalis, Runolfsdottir and Kovacek','Paraguay','Pe','Port Angelchester','8866 Lourdes Shoal Suite 085',61472.00,61472),
(21,'Hintz, VonRueden and Schuppe','Montserrat','Ne','Lake Ludwig','87973 Anjali Roads Apt. 531',224089.00,224089),
(22,'Windler-Willms','Netherlands','Rh','Jarrodborough','5370 Abbigail Lodge Suite 048',310012.00,310012),
(23,'Fritsch, Vandervort and O\'Keefe','Lebanon','Or','Schmittmouth','09273 Wava Row Suite 396',323386.00,323386),
(24,'Kerluke, Bergnaum and Schiller','Ghana','De','Julienville','20720 Lind Wall Suite 634',145269.00,145269),
(25,'Mraz PLC','British Virgin Islands','Ca','North Tellyport','933 Darrin Trace',232031.00,232031),
(26,'Schmidt Ltd','El Salvador','Ut','Collinsfurt','89529 Aliza Ranch Suite 218',119444.00,119444),
(27,'Ziemann-Bogisich','Lithuania','Ne','Mullerchester','8017 Sawayn Vista Suite 791',175766.00,175766),
(28,'Dicki-Howell','Grenada','Ne','Kennediton','388 Larkin Corners Apt. 681',329956.00,329956),
(29,'Kohler LLC','Mauritania','Ge','Madalineberg','78696 Claire Knoll',309826.00,309826),
(30,'Reichert-Monahan','Namibia','Ar','Kozeymouth','77397 Rhea Plaza',203882.00,203882);
/*!40000 ALTER TABLE `PRODUCT_VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVIEW`
--

DROP TABLE IF EXISTS `REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REVIEW` (
  `REVIEW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `CUS_CODE` int(11) NOT NULL,
  `RATING` int(1) NOT NULL,
  `REVIEW_DATE` date NOT NULL,
  `COMMENTS` text DEFAULT NULL,
  PRIMARY KEY (`REVIEW_ID`),
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  KEY `CUS_CODE` (`CUS_CODE`),
  CONSTRAINT `REVIEW_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`),
  CONSTRAINT `REVIEW_ibfk_2` FOREIGN KEY (`CUS_CODE`) REFERENCES `CUSTOMER` (`CUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVIEW`
--

LOCK TABLES `REVIEW` WRITE;
/*!40000 ALTER TABLE `REVIEW` DISABLE KEYS */;
INSERT INTO `REVIEW` VALUES
(1,1,'32',94,4,'2024-04-01','Great fit and quality!'),
(2,2,'9.0',58,5,'2020-04-01','Love these sneakers, very comfortable.'),
(3,3,'S',44,3,'2021-04-02','Shirt is okay, but shrunk a bit after washing.'),
(4,4,'L',23,4,'2022-04-02','Nice hoodie, keeps me warm.'),
(5,5,'30',37,4,'2023-04-03','Good shorts for everyday wear.'),
(6,6,'8.5',97,5,'2024-04-03','Comfortable sandals, perfect for the beach.'),
(7,7,'XL',96,5,'2023-04-04','Love this blouse, very elegant.'),
(8,8,'S',46,4,'2022-04-04','Stylish leather jacket.'),
(9,9,'S',75,3,'2021-04-05','Shirt is a bit thin, but comfortable.'),
(10,10,'34',53,4,'2020-04-05','Good fit, durable skirt.'),
(11,11,'9.0',33,5,'2021-04-06','Perfect fit and very stylish.'),
(12,12,'XXL',72,4,'2022-04-06','Great jacket, nice fabric.'),
(13,13,'S',13,3,'2023-04-07','Polo is a bit tight.'),
(14,14,'M',99,4,'2023-04-07','Leggings are comfortable and stretchy.'),
(15,15,'9.0',78,5,'2022-04-08','Heels are perfect for parties.'),
(16,16,'S',25,5,'2021-04-08','Love this sweater, very stylish and comfortable.'),
(17,17,'S',71,4,'2020-04-09','Coat fits well and looks elegant.'),
(18,18,'9.5',27,1,'2021-04-09','Flip flops broke after one use.'),
(19,19,'S',55,4,'2022-04-10','Nice cardigan, comfortable to wear.'),
(20,20,'36',79,4,'2023-04-10','Good quality pants, true to size.'),
(21,4,'L',23,5,'2021-08-10','Great Hoodie! Very Warm.'),
(22,8,'M',86,3,'2020-06-14','Okay Jacket. Gets too hot.'),
(23,4,'XL',12,1,'2021-12-11','Terrible Hoodie! The arm broke off after a wash.'),
(24,20,'36',83,5,'2020-12-21','Great Pants with many pockets.'),
(25,7,'S',16,2,'2022-12-18','This blouse does not look great. Fits nice.'),
(26,20,'36',14,5,'2021-04-02',NULL),
(27,8,'XL',45,4,'2020-10-24','This jacket fits a little tight.'),
(28,9,'L',99,5,'2023-10-11','This shirt fits and looks great!'),
(29,15,'6.0',19,4,'2021-04-20','These heels look great but hurt my feet.'),
(30,1,'32',57,4,'2023-02-20',NULL),
(31,15,'9.0',94,1,'2022-12-30','I HATE THESE HEELS AND BROKE MY ANKLE'),
(32,16,'M',33,2,'2023-11-15','The Sweater started ripping after I washed it'),
(33,19,'M',89,5,'2022-11-05',NULL),
(34,20,'36',96,4,'2021-03-26','I keep losing my phone in the pockets.'),
(35,17,'L',52,2,'2022-09-20','This coat does not keep me very warm.'),
(36,5,'40',48,4,'2023-02-11',NULL),
(37,4,'L',71,5,'2021-07-16',NULL),
(38,8,'S',70,1,'2022-12-02','Hate this coat.'),
(39,1,'30',46,1,'2021-04-12','I ripped the pants in a week.'),
(40,7,'S',77,3,'2023-11-01',NULL),
(41,1,'38',21,4,'2023-04-11','The jeans fit perfectly, very comfortable to wear.'),
(42,2,'8.5',22,5,'2024-02-11','Great sneakers, excellent quality and very stylish.'),
(43,3,'M',23,3,'2024-01-12','The shirt is nice, but the fabric feels a bit thin.'),
(44,4,'XL',24,4,'2023-11-12','Hoodie is very cozy and warm.'),
(45,5,'44',25,5,'2022-10-13','Shorts are fantastic, perfect for casual outings.'),
(46,6,'10.5',26,5,'2019-04-13','Sandals are comfortable and durable.'),
(47,7,'S',27,4,'2021-04-30','Blouse is elegant and fits well.'),
(48,8,'M',28,3,'2015-07-26','Leather jacket is stylish but a bit stiff.'),
(49,9,'S',29,4,'2023-07-15','Good quality cotton shirt, true to size.'),
(50,10,'34',30,4,'2022-09-15','Skirt is comfortable and well-made.'),
(51,11,'9.0',31,5,'2017-02-16','Boots are amazing, very comfortable for all-day wear.'),
(52,12,'L',32,4,'2024-03-16','Suit Jacket fits well and looks great.'),
(53,13,'S',33,3,'2021-10-17','Polo is a bit tight around the shoulders.'),
(54,14,'L',34,4,'2022-01-17','Leggings are soft and stretchy, perfect for workouts.'),
(55,15,'9.0',35,5,'2017-11-28','Heels are durable and comfortable.'),
(56,16,'M',36,5,'2022-09-28','Sweater is stylish and comfortable.'),
(57,17,'L',37,4,'2024-04-01','Coat is elegant and fits nicely.'),
(58,18,'7.5',38,3,'2020-04-19','Flip flops are slightly uncomfortable, but good quality.'),
(59,19,'S',39,4,'2024-04-20','Cardigan is comfortable and breathable.'),
(60,20,'36',40,4,'2024-04-20','Pants fit perfectly and are very comfortable to wear.'),
(61,1,'32',76,4,'2024-03-20','The jeans are of good quality and fit perfectly.'),
(62,2,'5.0',30,5,'2024-03-21','Sneakers are comfortable and stylish.'),
(63,3,'M',82,3,'2024-03-22','The shirt is okay, but the color is slightly different from the picture.'),
(64,4,'XS',73,4,'2024-03-23','Hoodie is soft and warm, perfect for chilly days.'),
(65,5,'40',39,5,'2024-03-24','Shorts are excellent quality and very comfortable.'),
(66,6,'6.5',87,5,'2024-03-25','Sandals are durable and fit perfectly.'),
(67,7,'S',55,4,'2024-03-26','Blouse is lovely, but the fabric wrinkles easily.'),
(68,8,'XL',32,3,'2024-03-27','Leather jacket is stylish but a bit heavy.'),
(69,9,'L',63,4,'2024-03-28','Cotton shirt is soft and fits well.'),
(70,10,'28',26,4,'2024-03-29','Skirt is comfortable and has a nice fit.'),
(71,11,'9.0',39,5,'2024-03-30','Boots are very comfortable for long walks.'),
(72,12,'XXL',66,4,'2024-03-31','Jacket is good quality and true to size.'),
(73,13,'S',23,3,'2024-04-01','Polo is a bit snug, but overall nice.'),
(74,14,'L',49,4,'2024-04-02','Leggings are stretchy and comfortable.'),
(75,15,'6.0',68,5,'2024-04-03','Heels are durable and well-made.'),
(76,16,'S',12,5,'2024-04-04','Sweater is stylish and comfortable for daily wear.'),
(77,17,'L',94,4,'2024-04-05','Coat is elegant and fits nicely.'),
(78,18,'7.5',47,3,'2024-04-06','Sandlars are slightly large, but good quality.'),
(79,19,'S',68,4,'2024-04-07','Cardigan is comfortable and breathable.'),
(80,20,'36',85,4,'2024-04-08','Pants fit perfectly and are very comfortable.'),
(81,1,'32',97,4,'2024-01-01','Great quality jeans, highly recommended.'),
(82,2,'5.0',34,5,'2024-01-02','Sneakers are very comfortable and stylish.'),
(83,3,'M',77,3,'2024-01-03','The cropped shirt is nice but a bit tight.'),
(84,4,'L',93,4,'2024-01-04','Fleece hoodie is warm and cozy.'),
(85,5,'40',16,5,'2024-01-05','Shorts fit perfectly and are very comfortable.'),
(86,6,'6.5',95,5,'2024-01-06','Beach sandals are durable and comfortable.'),
(87,7,'S',67,4,'2024-01-07','Silk blouse is elegant and versatile.'),
(88,8,'XL',88,3,'2024-01-08','Leather jacket is stylish but a bit heavy.'),
(89,9,'L',7,4,'2024-01-09','Cotton shirt is soft and comfortable.'),
(90,10,'28',79,4,'2024-01-10','The Skirt is of good quality and fit nicely.'),
(91,11,'9.0',23,5,'2024-01-11','Ankle boots are stylish and comfortable.'),
(92,12,'L',82,4,'2024-01-12','Suit jacket is well-tailored and looks sharp.'),
(93,13,'S',29,3,'2024-01-13','Polo is comfortable but a bit tight.'),
(94,14,'L',45,4,'2024-01-14',NULL),
(95,15,'9.0',96,5,'2024-01-15','High Heels are cute and comfortable.'),
(96,16,'S',5,5,'2024-01-16','Knit Sweater is soft and cozy.'),
(97,17,'L',69,3,'2024-01-17','Winter Coat is warm but a bit bulky.'),
(98,18,'7.5',70,4,'2024-01-18','Flip flops are nice but a bit tacky.'),
(99,19,'S',33,4,'2024-01-19','Cardigan is good quality and fits well.'),
(100,20,'36',74,4,'2024-01-20','Pocket pants are comfortable and have lots of pockets.');
/*!40000 ALTER TABLE `REVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHOES`
--

DROP TABLE IF EXISTS `SHOES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHOES` (
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `HEEL_HEIGHT` varchar(10) DEFAULT NULL,
  `SHOE_TYPE` varchar(20) NOT NULL,
  `FASTENINGS` varchar(20) NOT NULL,
  `WIDTH` varchar(2) NOT NULL,
  `ARCH_SUPPORT` varchar(10) DEFAULT NULL,
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  CONSTRAINT `SHOES_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOES`
--

LOCK TABLES `SHOES` WRITE;
/*!40000 ALTER TABLE `SHOES` DISABLE KEYS */;
INSERT INTO `SHOES` VALUES
(2,'9.0','Flat','Sneaker','Laces','EW','Basic'),
(6,'8.5','Flat','Sandal','Buckle','EW','Poor'),
(2,'5.0','Flat','Sneaker','Laces','N','Basic'),
(6,'10.5','Flat','Sandal','Buckle','EW','Poor'),
(11,'7.0','Short','Boot','Zipper','S','Good'),
(15,'6.0','High','Heel','Buckle','S','Terrible'),
(2,'8.5','Flat','Sneaker','Laces','N','Basic'),
(6,'6.5','Flat','Sandal','Buckle','N','Poor'),
(11,'9.0','Short','Boot','Zipper','EW','Good'),
(15,'9.0','High','Heel','Buckle','N','Terrible'),
(18,'7.5','Flat','Sandal','None','N','Terrible'),
(18,'9.5','Flat','Sandal','None','EW','Terrible');
/*!40000 ALTER TABLE `SHOES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORE`
--

DROP TABLE IF EXISTS `STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STORE` (
  `STORE_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `STORE_NAME` varchar(50) NOT NULL,
  `STORE_STATE` varchar(2) DEFAULT NULL,
  `STORE_ZIP` int(5) NOT NULL,
  `STORE_CITY` varchar(50) NOT NULL,
  `STORE_ADDRESS` varchar(50) NOT NULL,
  PRIMARY KEY (`STORE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE`
--

LOCK TABLES `STORE` WRITE;
/*!40000 ALTER TABLE `STORE` DISABLE KEYS */;
INSERT INTO `STORE` VALUES
(1,'Rath-Borer','In',7220,'South Gwendolyn','7885 Issac Valley Suite 929'),
(2,'Rice, Senger and Roberts','Te',46858,'Smithamhaven','8771 Francisco Stravenue'),
(3,'Heathcote, Wiegand and Kozey','Wa',98519,'Lake Theo','022 Rippin Causeway Apt. 491'),
(4,'Runte, Kunze and Larkin','Mo',50924,'Rosieborough','2323 Frida Green Apt. 583'),
(5,'Dach-O\'Conner','Ge',63944,'New Novellaberg','86026 Kellie Ramp'),
(6,'West, Gorczany and Hudson','Mo',68641,'South Loy','78338 Ebba Ferry'),
(7,'Weber-Gottlieb','Mi',85974,'Priceberg','953 Vergie Meadow'),
(8,'Crooks and Sons','Il',82680,'North Naomie','132 Adolphus Skyway Apt. 679'),
(9,'Stroman Ltd','So',26231,'South Susanaton','864 Grady Extension'),
(10,'VonRueden-Ruecker','Mi',31081,'South Bridget','05091 Brendon Garden'),
(11,'Yost, Gaylord and Brakus','Mi',75371,'Dorcasberg','754 Abbey Mill Apt. 696'),
(12,'Stiedemann, Hegmann and Emard','Wi',98083,'West Charlotte','875 Camilla Springs'),
(13,'Wiegand, Lindgren and Powlowski','Id',67600,'Willhaven','523 Feil Lodge Apt. 092'),
(14,'Stark and Sons','Ma',73907,'Port Kaitlynview','96507 Pacocha Ridges Suite 806'),
(15,'Bauch and Sons','Fl',79006,'Lake Brenda','537 Dariana Lodge Apt. 910'),
(16,'Schuster-Kohler','Pe',44646,'Fisherside','72518 Robyn Track Apt. 827'),
(17,'Jones Inc','Te',91552,'Williamsonmouth','5523 Buck Cape Apt. 704'),
(18,'Steuber-Homenick','Al',37419,'Julieberg','93916 Ward Tunnel Suite 229'),
(19,'Wehner, Koelpin and Stiedemann','Ka',82748,'Twilaside','68526 Lindsey Fort Suite 324'),
(20,'Walker Group','De',64968,'Torranceville','65298 Schiller Camp'),
(21,'The Pocket Store','Fl',34741,'Kissimmee','3010 Thacker Ave');
/*!40000 ALTER TABLE `STORE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`kgrassi2693`@`%`*/ /*!50003 TRIGGER CREATE_STORE_INVENTORY
    AFTER INSERT ON STORE
    FOR EACH ROW
    BEGIN
        INSERT INTO STORE_INVENTORY(PROD_NUM, STORE_NUM, INVENT_INSTOCK, PROD_SIZE)
            SELECT PROD_NUM, NEW.STORE_NUM, 0, PROD_SIZE FROM PRODUCT;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `STORE_INVENTORY`
--

DROP TABLE IF EXISTS `STORE_INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STORE_INVENTORY` (
  `STORE_INVENT_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_NUM` int(11) NOT NULL,
  `STORE_NUM` int(11) NOT NULL,
  `INVENT_INSTOCK` int(11) DEFAULT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  PRIMARY KEY (`STORE_INVENT_NUM`),
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  KEY `STORE_NUM` (`STORE_NUM`),
  CONSTRAINT `STORE_INVENTORY_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`),
  CONSTRAINT `STORE_INVENTORY_ibfk_2` FOREIGN KEY (`STORE_NUM`) REFERENCES `STORE` (`STORE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=1489 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE_INVENTORY`
--

LOCK TABLES `STORE_INVENTORY` WRITE;
/*!40000 ALTER TABLE `STORE_INVENTORY` DISABLE KEYS */;
INSERT INTO `STORE_INVENTORY` VALUES
(1,1,1,36,'32'),
(2,1,2,28,'32'),
(3,1,3,28,'32'),
(4,1,4,28,'32'),
(5,1,5,28,'32'),
(6,1,6,28,'32'),
(7,1,7,28,'32'),
(8,1,8,28,'32'),
(9,1,9,28,'32'),
(10,1,10,28,'32'),
(11,1,11,28,'32'),
(12,1,12,28,'32'),
(13,1,13,28,'32'),
(14,1,14,28,'32'),
(15,1,15,28,'32'),
(16,1,16,28,'32'),
(17,1,17,28,'32'),
(18,1,18,28,'32'),
(19,1,19,28,'32'),
(20,1,20,28,'32'),
(21,1,21,28,'32'),
(32,2,1,325,'9.0'),
(33,2,2,310,'9.0'),
(34,2,3,310,'9.0'),
(35,2,4,310,'9.0'),
(36,2,5,310,'9.0'),
(37,2,6,310,'9.0'),
(38,2,7,310,'9.0'),
(39,2,8,310,'9.0'),
(40,2,9,310,'9.0'),
(41,2,10,310,'9.0'),
(42,2,11,310,'9.0'),
(43,2,12,310,'9.0'),
(44,2,13,310,'9.0'),
(45,2,14,310,'9.0'),
(46,2,15,310,'9.0'),
(47,2,16,310,'9.0'),
(48,2,17,310,'9.0'),
(49,2,18,310,'9.0'),
(50,2,19,310,'9.0'),
(51,2,20,310,'9.0'),
(52,2,21,310,'9.0'),
(63,3,1,452,'S'),
(64,3,2,443,'S'),
(65,3,3,443,'S'),
(66,3,4,443,'S'),
(67,3,5,443,'S'),
(68,3,6,443,'S'),
(69,3,7,443,'S'),
(70,3,8,443,'S'),
(71,3,9,443,'S'),
(72,3,10,443,'S'),
(73,3,11,443,'S'),
(74,3,12,443,'S'),
(75,3,13,443,'S'),
(76,3,14,443,'S'),
(77,3,15,443,'S'),
(78,3,16,443,'S'),
(79,3,17,443,'S'),
(80,3,18,443,'S'),
(81,3,19,443,'S'),
(82,3,20,443,'S'),
(83,3,21,443,'S'),
(94,4,1,116,'L'),
(95,4,2,99,'L'),
(96,4,3,99,'L'),
(97,4,4,99,'L'),
(98,4,5,99,'L'),
(99,4,6,99,'L'),
(100,4,7,99,'L'),
(101,4,8,99,'L'),
(102,4,9,99,'L'),
(103,4,10,99,'L'),
(104,4,11,99,'L'),
(105,4,12,99,'L'),
(106,4,13,99,'L'),
(107,4,14,99,'L'),
(108,4,15,99,'L'),
(109,4,16,99,'L'),
(110,4,17,99,'L'),
(111,4,18,99,'L'),
(112,4,19,99,'L'),
(113,4,20,99,'L'),
(114,4,21,99,'L'),
(125,5,1,67,'30'),
(126,5,2,62,'30'),
(127,5,3,62,'30'),
(128,5,4,62,'30'),
(129,5,5,62,'30'),
(130,5,6,62,'30'),
(131,5,7,62,'30'),
(132,5,8,62,'30'),
(133,5,9,62,'30'),
(134,5,10,62,'30'),
(135,5,11,62,'30'),
(136,5,12,62,'30'),
(137,5,13,62,'30'),
(138,5,14,62,'30'),
(139,5,15,62,'30'),
(140,5,16,62,'30'),
(141,5,17,62,'30'),
(142,5,18,62,'30'),
(143,5,19,62,'30'),
(144,5,20,62,'30'),
(145,5,21,62,'30'),
(156,6,1,38504,'8.5'),
(157,6,2,38072,'8.5'),
(158,6,3,38083,'8.5'),
(159,6,4,38046,'8.5'),
(160,6,5,38061,'8.5'),
(161,6,6,38083,'8.5'),
(162,6,7,38031,'8.5'),
(163,6,8,38061,'8.5'),
(164,6,9,38083,'8.5'),
(165,6,10,38083,'8.5'),
(166,6,11,38083,'8.5'),
(167,6,12,38083,'8.5'),
(168,6,13,38076,'8.5'),
(169,6,14,37989,'8.5'),
(170,6,15,38083,'8.5'),
(171,6,16,38033,'8.5'),
(172,6,17,38006,'8.5'),
(173,6,18,38083,'8.5'),
(174,6,19,38036,'8.5'),
(175,6,20,38068,'8.5'),
(176,6,21,38083,'8.5'),
(187,7,1,452,'XL'),
(188,7,2,436,'XL'),
(189,7,3,436,'XL'),
(190,7,4,436,'XL'),
(191,7,5,436,'XL'),
(192,7,6,436,'XL'),
(193,7,7,436,'XL'),
(194,7,8,436,'XL'),
(195,7,9,436,'XL'),
(196,7,10,436,'XL'),
(197,7,11,436,'XL'),
(198,7,12,436,'XL'),
(199,7,13,436,'XL'),
(200,7,14,436,'XL'),
(201,7,15,436,'XL'),
(202,7,16,436,'XL'),
(203,7,17,436,'XL'),
(204,7,18,436,'XL'),
(205,7,19,436,'XL'),
(206,7,20,436,'XL'),
(207,7,21,436,'XL'),
(218,8,1,58,'S'),
(219,8,2,47,'S'),
(220,8,3,47,'S'),
(221,8,4,47,'S'),
(222,8,5,47,'S'),
(223,8,6,47,'S'),
(224,8,7,47,'S'),
(225,8,8,47,'S'),
(226,8,9,47,'S'),
(227,8,10,47,'S'),
(228,8,11,47,'S'),
(229,8,12,47,'S'),
(230,8,13,47,'S'),
(231,8,14,47,'S'),
(232,8,15,47,'S'),
(233,8,16,47,'S'),
(234,8,17,47,'S'),
(235,8,18,47,'S'),
(236,8,19,47,'S'),
(237,8,20,47,'S'),
(238,8,21,47,'S'),
(249,9,1,38489,'L'),
(250,9,2,38014,'L'),
(251,9,3,37948,'L'),
(252,9,4,38042,'L'),
(253,9,5,37945,'L'),
(254,9,6,38021,'L'),
(255,9,7,38042,'L'),
(256,9,8,38013,'L'),
(257,9,9,37975,'L'),
(258,9,10,38042,'L'),
(259,9,11,37993,'L'),
(260,9,12,38006,'L'),
(261,9,13,38042,'L'),
(262,9,14,38012,'L'),
(263,9,15,38021,'L'),
(264,9,16,38042,'L'),
(265,9,17,38041,'L'),
(266,9,18,37960,'L'),
(267,9,19,38042,'L'),
(268,9,20,38042,'L'),
(269,9,21,38042,'L'),
(280,1,1,18,'38'),
(281,1,2,4,'38'),
(282,1,3,4,'38'),
(283,1,4,4,'38'),
(284,1,5,4,'38'),
(285,1,6,4,'38'),
(286,1,7,4,'38'),
(287,1,8,4,'38'),
(288,1,9,4,'38'),
(289,1,10,4,'38'),
(290,1,11,4,'38'),
(291,1,12,4,'38'),
(292,1,13,4,'38'),
(293,1,14,4,'38'),
(294,1,15,4,'38'),
(295,1,16,4,'38'),
(296,1,17,4,'38'),
(297,1,18,4,'38'),
(298,1,19,4,'38'),
(299,1,20,4,'38'),
(300,1,21,4,'38'),
(311,2,1,349,'5.0'),
(312,2,2,329,'5.0'),
(313,2,3,329,'5.0'),
(314,2,4,329,'5.0'),
(315,2,5,329,'5.0'),
(316,2,6,329,'5.0'),
(317,2,7,329,'5.0'),
(318,2,8,329,'5.0'),
(319,2,9,329,'5.0'),
(320,2,10,329,'5.0'),
(321,2,11,329,'5.0'),
(322,2,12,329,'5.0'),
(323,2,13,329,'5.0'),
(324,2,14,329,'5.0'),
(325,2,15,329,'5.0'),
(326,2,16,329,'5.0'),
(327,2,17,329,'5.0'),
(328,2,18,329,'5.0'),
(329,2,19,329,'5.0'),
(330,2,20,329,'5.0'),
(331,2,21,329,'5.0'),
(342,3,1,238,'M'),
(343,3,2,220,'M'),
(344,3,3,220,'M'),
(345,3,4,220,'M'),
(346,3,5,220,'M'),
(347,3,6,220,'M'),
(348,3,7,220,'M'),
(349,3,8,220,'M'),
(350,3,9,220,'M'),
(351,3,10,220,'M'),
(352,3,11,220,'M'),
(353,3,12,220,'M'),
(354,3,13,220,'M'),
(355,3,14,220,'M'),
(356,3,15,220,'M'),
(357,3,16,220,'M'),
(358,3,17,220,'M'),
(359,3,18,220,'M'),
(360,3,19,220,'M'),
(361,3,20,220,'M'),
(362,3,21,220,'M'),
(373,4,1,138,'XS'),
(374,4,2,124,'XS'),
(375,4,3,124,'XS'),
(376,4,4,124,'XS'),
(377,4,5,124,'XS'),
(378,4,6,124,'XS'),
(379,4,7,124,'XS'),
(380,4,8,124,'XS'),
(381,4,9,124,'XS'),
(382,4,10,124,'XS'),
(383,4,11,124,'XS'),
(384,4,12,124,'XS'),
(385,4,13,124,'XS'),
(386,4,14,124,'XS'),
(387,4,15,124,'XS'),
(388,4,16,124,'XS'),
(389,4,17,124,'XS'),
(390,4,18,124,'XS'),
(391,4,19,124,'XS'),
(392,4,20,124,'XS'),
(393,4,21,124,'XS'),
(404,5,1,234,'40'),
(405,5,2,227,'40'),
(406,5,3,227,'40'),
(407,5,4,227,'40'),
(408,5,5,227,'40'),
(409,5,6,227,'40'),
(410,5,7,227,'40'),
(411,5,8,227,'40'),
(412,5,9,227,'40'),
(413,5,10,227,'40'),
(414,5,11,227,'40'),
(415,5,12,227,'40'),
(416,5,13,227,'40'),
(417,5,14,227,'40'),
(418,5,15,227,'40'),
(419,5,16,227,'40'),
(420,5,17,227,'40'),
(421,5,18,227,'40'),
(422,5,19,227,'40'),
(423,5,20,227,'40'),
(424,5,21,227,'40'),
(435,6,1,371,'10.5'),
(436,6,2,370,'10.5'),
(437,6,3,370,'10.5'),
(438,6,4,370,'10.5'),
(439,6,5,370,'10.5'),
(440,6,6,370,'10.5'),
(441,6,7,370,'10.5'),
(442,6,8,370,'10.5'),
(443,6,9,370,'10.5'),
(444,6,10,370,'10.5'),
(445,6,11,370,'10.5'),
(446,6,12,370,'10.5'),
(447,6,13,370,'10.5'),
(448,6,14,370,'10.5'),
(449,6,15,370,'10.5'),
(450,6,16,370,'10.5'),
(451,6,17,370,'10.5'),
(452,6,18,370,'10.5'),
(453,6,19,370,'10.5'),
(454,6,20,370,'10.5'),
(455,6,21,370,'10.5'),
(466,7,1,273,'M'),
(467,7,2,272,'M'),
(468,7,3,272,'M'),
(469,7,4,272,'M'),
(470,7,5,272,'M'),
(471,7,6,272,'M'),
(472,7,7,272,'M'),
(473,7,8,272,'M'),
(474,7,9,272,'M'),
(475,7,10,272,'M'),
(476,7,11,272,'M'),
(477,7,12,272,'M'),
(478,7,13,272,'M'),
(479,7,14,272,'M'),
(480,7,15,272,'M'),
(481,7,16,272,'M'),
(482,7,17,272,'M'),
(483,7,18,272,'M'),
(484,7,19,272,'M'),
(485,7,20,272,'M'),
(486,7,21,272,'M'),
(497,8,1,75622,'L'),
(498,8,2,74891,'L'),
(499,8,3,74903,'L'),
(500,8,4,74820,'L'),
(501,8,5,74941,'L'),
(502,8,6,74886,'L'),
(503,8,7,74849,'L'),
(504,8,8,74869,'L'),
(505,8,9,74861,'L'),
(506,8,10,74834,'L'),
(507,8,11,74789,'L'),
(508,8,12,74892,'L'),
(509,8,13,74938,'L'),
(510,8,14,74898,'L'),
(511,8,15,74873,'L'),
(512,8,16,74934,'L'),
(513,8,17,74956,'L'),
(514,8,18,74956,'L'),
(515,8,19,74898,'L'),
(516,8,20,74898,'L'),
(517,8,21,74956,'L'),
(528,10,1,125,'28'),
(529,10,2,106,'28'),
(530,10,3,106,'28'),
(531,10,4,106,'28'),
(532,10,5,106,'28'),
(533,10,6,106,'28'),
(534,10,7,106,'28'),
(535,10,8,106,'28'),
(536,10,9,106,'28'),
(537,10,10,106,'28'),
(538,10,11,106,'28'),
(539,10,12,106,'28'),
(540,10,13,106,'28'),
(541,10,14,106,'28'),
(542,10,15,106,'28'),
(543,10,16,106,'28'),
(544,10,17,106,'28'),
(545,10,18,106,'28'),
(546,10,19,106,'28'),
(547,10,20,106,'28'),
(548,10,21,106,'28'),
(559,11,1,197,'7.0'),
(560,11,2,186,'7.0'),
(561,11,3,186,'7.0'),
(562,11,4,186,'7.0'),
(563,11,5,186,'7.0'),
(564,11,6,186,'7.0'),
(565,11,7,186,'7.0'),
(566,11,8,186,'7.0'),
(567,11,9,186,'7.0'),
(568,11,10,186,'7.0'),
(569,11,11,186,'7.0'),
(570,11,12,186,'7.0'),
(571,11,13,186,'7.0'),
(572,11,14,186,'7.0'),
(573,11,15,186,'7.0'),
(574,11,16,186,'7.0'),
(575,11,17,186,'7.0'),
(576,11,18,186,'7.0'),
(577,11,19,186,'7.0'),
(578,11,20,186,'7.0'),
(579,11,21,186,'7.0'),
(590,12,1,404,'XXL'),
(591,12,2,403,'XXL'),
(592,12,3,403,'XXL'),
(593,12,4,403,'XXL'),
(594,12,5,403,'XXL'),
(595,12,6,403,'XXL'),
(596,12,7,403,'XXL'),
(597,12,8,403,'XXL'),
(598,12,9,403,'XXL'),
(599,12,10,403,'XXL'),
(600,12,11,403,'XXL'),
(601,12,12,403,'XXL'),
(602,12,13,403,'XXL'),
(603,12,14,403,'XXL'),
(604,12,15,403,'XXL'),
(605,12,16,403,'XXL'),
(606,12,17,403,'XXL'),
(607,12,18,403,'XXL'),
(608,12,19,403,'XXL'),
(609,12,20,403,'XXL'),
(610,12,21,403,'XXL'),
(621,13,1,433,'S'),
(622,13,2,416,'S'),
(623,13,3,416,'S'),
(624,13,4,416,'S'),
(625,13,5,416,'S'),
(626,13,6,416,'S'),
(627,13,7,416,'S'),
(628,13,8,416,'S'),
(629,13,9,416,'S'),
(630,13,10,416,'S'),
(631,13,11,416,'S'),
(632,13,12,416,'S'),
(633,13,13,416,'S'),
(634,13,14,409,'S'),
(635,13,15,416,'S'),
(636,13,16,416,'S'),
(637,13,17,416,'S'),
(638,13,18,416,'S'),
(639,13,19,416,'S'),
(640,13,20,416,'S'),
(641,13,21,416,'S'),
(652,14,1,288,'M'),
(653,14,2,275,'M'),
(654,14,3,275,'M'),
(655,14,4,275,'M'),
(656,14,5,275,'M'),
(657,14,6,275,'M'),
(658,14,7,275,'M'),
(659,14,8,275,'M'),
(660,14,9,275,'M'),
(661,14,10,275,'M'),
(662,14,11,275,'M'),
(663,14,12,275,'M'),
(664,14,13,275,'M'),
(665,14,14,275,'M'),
(666,14,15,275,'M'),
(667,14,16,275,'M'),
(668,14,17,275,'M'),
(669,14,18,267,'M'),
(670,14,19,275,'M'),
(671,14,20,275,'M'),
(672,14,21,275,'M'),
(683,15,1,138,'6.0'),
(684,15,2,137,'6.0'),
(685,15,3,137,'6.0'),
(686,15,4,137,'6.0'),
(687,15,5,137,'6.0'),
(688,15,6,137,'6.0'),
(689,15,7,137,'6.0'),
(690,15,8,137,'6.0'),
(691,15,9,137,'6.0'),
(692,15,10,137,'6.0'),
(693,15,11,137,'6.0'),
(694,15,12,137,'6.0'),
(695,15,13,137,'6.0'),
(696,15,14,137,'6.0'),
(697,15,15,137,'6.0'),
(698,15,16,137,'6.0'),
(699,15,17,137,'6.0'),
(700,15,18,137,'6.0'),
(701,15,19,137,'6.0'),
(702,15,20,137,'6.0'),
(703,15,21,137,'6.0'),
(714,16,1,11,'M'),
(715,16,2,4,'M'),
(716,16,3,4,'M'),
(717,16,4,4,'M'),
(718,16,5,4,'M'),
(719,16,6,4,'M'),
(720,16,7,4,'M'),
(721,16,8,4,'M'),
(722,16,9,4,'M'),
(723,16,10,4,'M'),
(724,16,11,4,'M'),
(725,16,12,4,'M'),
(726,16,13,4,'M'),
(727,16,14,4,'M'),
(728,16,15,4,'M'),
(729,16,16,4,'M'),
(730,16,17,4,'M'),
(731,16,18,4,'M'),
(732,16,19,4,'M'),
(733,16,20,4,'M'),
(734,16,21,4,'M'),
(745,8,1,151,'M'),
(746,8,2,136,'M'),
(747,8,3,136,'M'),
(748,8,4,136,'M'),
(749,8,5,136,'M'),
(750,8,6,136,'M'),
(751,8,7,136,'M'),
(752,8,8,136,'M'),
(753,8,9,136,'M'),
(754,8,10,136,'M'),
(755,8,11,136,'M'),
(756,8,12,136,'M'),
(757,8,13,136,'M'),
(758,8,14,136,'M'),
(759,8,15,136,'M'),
(760,8,16,136,'M'),
(761,8,17,136,'M'),
(762,8,18,136,'M'),
(763,8,19,136,'M'),
(764,8,20,136,'M'),
(765,8,21,136,'M'),
(776,9,1,464,'S'),
(777,9,2,458,'S'),
(778,9,3,458,'S'),
(779,9,4,458,'S'),
(780,9,5,458,'S'),
(781,9,6,458,'S'),
(782,9,7,458,'S'),
(783,9,8,458,'S'),
(784,9,9,458,'S'),
(785,9,10,458,'S'),
(786,9,11,458,'S'),
(787,9,12,458,'S'),
(788,9,13,458,'S'),
(789,9,14,458,'S'),
(790,9,15,458,'S'),
(791,9,16,458,'S'),
(792,9,17,458,'S'),
(793,9,18,458,'S'),
(794,9,19,458,'S'),
(795,9,20,458,'S'),
(796,9,21,458,'S'),
(807,1,1,18117,'30'),
(808,1,2,17923,'30'),
(809,1,3,17890,'30'),
(810,1,4,17923,'30'),
(811,1,5,17923,'30'),
(812,1,6,17873,'30'),
(813,1,7,17923,'30'),
(814,1,8,17923,'30'),
(815,1,9,17872,'30'),
(816,1,10,17923,'30'),
(817,1,11,17857,'30'),
(818,1,12,17847,'30'),
(819,1,13,17923,'30'),
(820,1,14,17923,'30'),
(821,1,15,17894,'30'),
(822,1,16,17923,'30'),
(823,1,17,17923,'30'),
(824,1,18,17824,'30'),
(825,1,19,17923,'30'),
(826,1,20,17923,'30'),
(827,1,21,17923,'30'),
(838,2,1,340,'8.5'),
(839,2,2,333,'8.5'),
(840,2,3,333,'8.5'),
(841,2,4,333,'8.5'),
(842,2,5,333,'8.5'),
(843,2,6,333,'8.5'),
(844,2,7,333,'8.5'),
(845,2,8,333,'8.5'),
(846,2,9,333,'8.5'),
(847,2,10,333,'8.5'),
(848,2,11,333,'8.5'),
(849,2,12,333,'8.5'),
(850,2,13,333,'8.5'),
(851,2,14,333,'8.5'),
(852,2,15,332,'8.5'),
(853,2,16,333,'8.5'),
(854,2,17,333,'8.5'),
(855,2,18,333,'8.5'),
(856,2,19,333,'8.5'),
(857,2,20,333,'8.5'),
(858,2,21,333,'8.5'),
(869,3,1,24,'L'),
(870,3,2,6,'L'),
(871,3,3,6,'L'),
(872,3,4,6,'L'),
(873,3,5,6,'L'),
(874,3,6,6,'L'),
(875,3,7,6,'L'),
(876,3,8,6,'L'),
(877,3,9,6,'L'),
(878,3,10,6,'L'),
(879,3,11,6,'L'),
(880,3,12,6,'L'),
(881,3,13,6,'L'),
(882,3,14,6,'L'),
(883,3,15,6,'L'),
(884,3,16,6,'L'),
(885,3,17,6,'L'),
(886,3,18,6,'L'),
(887,3,19,6,'L'),
(888,3,20,6,'L'),
(889,3,21,6,'L'),
(900,4,1,174,'XL'),
(901,4,2,170,'XL'),
(902,4,3,170,'XL'),
(903,4,4,170,'XL'),
(904,4,5,170,'XL'),
(905,4,6,170,'XL'),
(906,4,7,170,'XL'),
(907,4,8,170,'XL'),
(908,4,9,170,'XL'),
(909,4,10,170,'XL'),
(910,4,11,170,'XL'),
(911,4,12,170,'XL'),
(912,4,13,170,'XL'),
(913,4,14,170,'XL'),
(914,4,15,170,'XL'),
(915,4,16,170,'XL'),
(916,4,17,170,'XL'),
(917,4,18,170,'XL'),
(918,4,19,170,'XL'),
(919,4,20,170,'XL'),
(920,4,21,170,'XL'),
(931,5,1,348,'44'),
(932,5,2,353,'44'),
(933,5,3,353,'44'),
(934,5,4,353,'44'),
(935,5,5,353,'44'),
(936,5,6,353,'44'),
(937,5,7,353,'44'),
(938,5,8,353,'44'),
(939,5,9,353,'44'),
(940,5,10,353,'44'),
(941,5,11,353,'44'),
(942,5,12,353,'44'),
(943,5,13,353,'44'),
(944,5,14,353,'44'),
(945,5,15,353,'44'),
(946,5,16,353,'44'),
(947,5,17,353,'44'),
(948,5,18,353,'44'),
(949,5,19,353,'44'),
(950,5,20,353,'44'),
(951,5,21,353,'44'),
(962,6,1,449,'6.5'),
(963,6,2,439,'6.5'),
(964,6,3,439,'6.5'),
(965,6,4,439,'6.5'),
(966,6,5,439,'6.5'),
(967,6,6,439,'6.5'),
(968,6,7,439,'6.5'),
(969,6,8,439,'6.5'),
(970,6,9,439,'6.5'),
(971,6,10,439,'6.5'),
(972,6,11,439,'6.5'),
(973,6,12,439,'6.5'),
(974,6,13,439,'6.5'),
(975,6,14,439,'6.5'),
(976,6,15,439,'6.5'),
(977,6,16,439,'6.5'),
(978,6,17,439,'6.5'),
(979,6,18,439,'6.5'),
(980,6,19,439,'6.5'),
(981,6,20,439,'6.5'),
(982,6,21,439,'6.5'),
(993,7,1,291,'S'),
(994,7,2,288,'S'),
(995,7,3,288,'S'),
(996,7,4,288,'S'),
(997,7,5,288,'S'),
(998,7,6,288,'S'),
(999,7,7,288,'S'),
(1000,7,8,288,'S'),
(1001,7,9,288,'S'),
(1002,7,10,288,'S'),
(1003,7,11,288,'S'),
(1004,7,12,288,'S'),
(1005,7,13,288,'S'),
(1006,7,14,288,'S'),
(1007,7,15,288,'S'),
(1008,7,16,288,'S'),
(1009,7,17,288,'S'),
(1010,7,18,288,'S'),
(1011,7,19,288,'S'),
(1012,7,20,288,'S'),
(1013,7,21,288,'S'),
(1024,8,1,242,'XL'),
(1025,8,2,235,'XL'),
(1026,8,3,235,'XL'),
(1027,8,4,235,'XL'),
(1028,8,5,235,'XL'),
(1029,8,6,235,'XL'),
(1030,8,7,235,'XL'),
(1031,8,8,235,'XL'),
(1032,8,9,235,'XL'),
(1033,8,10,235,'XL'),
(1034,8,11,235,'XL'),
(1035,8,12,235,'XL'),
(1036,8,13,235,'XL'),
(1037,8,14,235,'XL'),
(1038,8,15,235,'XL'),
(1039,8,16,235,'XL'),
(1040,8,17,235,'XL'),
(1041,8,18,235,'XL'),
(1042,8,19,235,'XL'),
(1043,8,20,235,'XL'),
(1044,8,21,235,'XL'),
(1055,10,1,36,'34'),
(1056,10,2,26,'34'),
(1057,10,3,26,'34'),
(1058,10,4,26,'34'),
(1059,10,5,26,'34'),
(1060,10,6,26,'34'),
(1061,10,7,26,'34'),
(1062,10,8,26,'34'),
(1063,10,9,26,'34'),
(1064,10,10,26,'34'),
(1065,10,11,26,'34'),
(1066,10,12,26,'34'),
(1067,10,13,26,'34'),
(1068,10,14,26,'34'),
(1069,10,15,26,'34'),
(1070,10,16,26,'34'),
(1071,10,17,26,'34'),
(1072,10,18,26,'34'),
(1073,10,19,26,'34'),
(1074,10,20,26,'34'),
(1075,10,21,26,'34'),
(1086,11,1,73,'9.0'),
(1087,11,2,55,'9.0'),
(1088,11,3,55,'9.0'),
(1089,11,4,55,'9.0'),
(1090,11,5,55,'9.0'),
(1091,11,6,55,'9.0'),
(1092,11,7,55,'9.0'),
(1093,11,8,55,'9.0'),
(1094,11,9,55,'9.0'),
(1095,11,10,55,'9.0'),
(1096,11,11,55,'9.0'),
(1097,11,12,55,'9.0'),
(1098,11,13,55,'9.0'),
(1099,11,14,55,'9.0'),
(1100,11,15,53,'9.0'),
(1101,11,16,55,'9.0'),
(1102,11,17,55,'9.0'),
(1103,11,18,55,'9.0'),
(1104,11,19,55,'9.0'),
(1105,11,20,55,'9.0'),
(1106,11,21,55,'9.0'),
(1117,12,1,47,'L'),
(1118,12,2,41,'L'),
(1119,12,3,41,'L'),
(1120,12,4,41,'L'),
(1121,12,5,41,'L'),
(1122,12,6,41,'L'),
(1123,12,7,41,'L'),
(1124,12,8,41,'L'),
(1125,12,9,41,'L'),
(1126,12,10,41,'L'),
(1127,12,11,41,'L'),
(1128,12,12,41,'L'),
(1129,12,13,41,'L'),
(1130,12,14,41,'L'),
(1131,12,15,41,'L'),
(1132,12,16,41,'L'),
(1133,12,17,41,'L'),
(1134,12,18,41,'L'),
(1135,12,19,41,'L'),
(1136,12,20,41,'L'),
(1137,12,21,41,'L'),
(1148,13,1,41100,'M'),
(1149,13,2,40650,'M'),
(1150,13,3,40702,'M'),
(1151,13,4,40648,'M'),
(1152,13,5,40637,'M'),
(1153,13,6,40702,'M'),
(1154,13,7,40702,'M'),
(1155,13,8,40702,'M'),
(1156,13,9,40702,'M'),
(1157,13,10,40690,'M'),
(1158,13,11,40682,'M'),
(1159,13,12,40702,'M'),
(1160,13,13,40689,'M'),
(1161,13,14,40648,'M'),
(1162,13,15,40702,'M'),
(1163,13,16,40604,'M'),
(1164,13,17,40611,'M'),
(1165,13,18,40702,'M'),
(1166,13,19,40693,'M'),
(1167,13,20,40654,'M'),
(1168,13,21,40702,'M'),
(1179,14,1,268,'L'),
(1180,14,2,251,'L'),
(1181,14,3,251,'L'),
(1182,14,4,251,'L'),
(1183,14,5,251,'L'),
(1184,14,6,251,'L'),
(1185,14,7,251,'L'),
(1186,14,8,251,'L'),
(1187,14,9,251,'L'),
(1188,14,10,251,'L'),
(1189,14,11,251,'L'),
(1190,14,12,251,'L'),
(1191,14,13,251,'L'),
(1192,14,14,251,'L'),
(1193,14,15,251,'L'),
(1194,14,16,251,'L'),
(1195,14,17,251,'L'),
(1196,14,18,251,'L'),
(1197,14,19,251,'L'),
(1198,14,20,251,'L'),
(1199,14,21,251,'L'),
(1210,15,1,130,'9.0'),
(1211,15,2,114,'9.0'),
(1212,15,3,114,'9.0'),
(1213,15,4,114,'9.0'),
(1214,15,5,114,'9.0'),
(1215,15,6,114,'9.0'),
(1216,15,7,114,'9.0'),
(1217,15,8,114,'9.0'),
(1218,15,9,114,'9.0'),
(1219,15,10,114,'9.0'),
(1220,15,11,114,'9.0'),
(1221,15,12,114,'9.0'),
(1222,15,13,114,'9.0'),
(1223,15,14,114,'9.0'),
(1224,15,15,114,'9.0'),
(1225,15,16,114,'9.0'),
(1226,15,17,114,'9.0'),
(1227,15,18,114,'9.0'),
(1228,15,19,114,'9.0'),
(1229,15,20,114,'9.0'),
(1230,15,21,114,'9.0'),
(1241,16,1,40424,'S'),
(1242,16,2,39925,'S'),
(1243,16,3,39996,'S'),
(1244,16,4,39979,'S'),
(1245,16,5,39992,'S'),
(1246,16,6,39996,'S'),
(1247,16,7,39898,'S'),
(1248,16,8,39961,'S'),
(1249,16,9,39996,'S'),
(1250,16,10,39985,'S'),
(1251,16,11,39918,'S'),
(1252,16,12,39996,'S'),
(1253,16,13,39996,'S'),
(1254,16,14,39996,'S'),
(1255,16,15,39996,'S'),
(1256,16,16,39991,'S'),
(1257,16,17,39962,'S'),
(1258,16,18,39996,'S'),
(1259,16,19,39988,'S'),
(1260,16,20,39901,'S'),
(1261,16,21,39996,'S'),
(1272,17,1,172,'L'),
(1273,17,2,153,'L'),
(1274,17,3,153,'L'),
(1275,17,4,153,'L'),
(1276,17,5,153,'L'),
(1277,17,6,153,'L'),
(1278,17,7,153,'L'),
(1279,17,8,153,'L'),
(1280,17,9,153,'L'),
(1281,17,10,153,'L'),
(1282,17,11,153,'L'),
(1283,17,12,153,'L'),
(1284,17,13,153,'L'),
(1285,17,14,153,'L'),
(1286,17,15,153,'L'),
(1287,17,16,153,'L'),
(1288,17,17,153,'L'),
(1289,17,18,153,'L'),
(1290,17,19,153,'L'),
(1291,17,20,153,'L'),
(1292,17,21,153,'L'),
(1303,18,1,92,'7.5'),
(1304,18,2,77,'7.5'),
(1305,18,3,77,'7.5'),
(1306,18,4,77,'7.5'),
(1307,18,5,77,'7.5'),
(1308,18,6,77,'7.5'),
(1309,18,7,77,'7.5'),
(1310,18,8,77,'7.5'),
(1311,18,9,77,'7.5'),
(1312,18,10,77,'7.5'),
(1313,18,11,77,'7.5'),
(1314,18,12,77,'7.5'),
(1315,18,13,77,'7.5'),
(1316,18,14,77,'7.5'),
(1317,18,15,77,'7.5'),
(1318,18,16,77,'7.5'),
(1319,18,17,77,'7.5'),
(1320,18,18,77,'7.5'),
(1321,18,19,77,'7.5'),
(1322,18,20,77,'7.5'),
(1323,18,21,77,'7.5'),
(1334,19,1,425,'S'),
(1335,19,2,424,'S'),
(1336,19,3,424,'S'),
(1337,19,4,424,'S'),
(1338,19,5,424,'S'),
(1339,19,6,424,'S'),
(1340,19,7,424,'S'),
(1341,19,8,424,'S'),
(1342,19,9,424,'S'),
(1343,19,10,424,'S'),
(1344,19,11,424,'S'),
(1345,19,12,424,'S'),
(1346,19,13,424,'S'),
(1347,19,14,424,'S'),
(1348,19,15,424,'S'),
(1349,19,16,424,'S'),
(1350,19,17,424,'S'),
(1351,19,18,424,'S'),
(1352,19,19,424,'S'),
(1353,19,20,424,'S'),
(1354,19,21,424,'S'),
(1365,17,1,35202,'S'),
(1366,17,2,34753,'S'),
(1367,17,3,34732,'S'),
(1368,17,4,34712,'S'),
(1369,17,5,34753,'S'),
(1370,17,6,34704,'S'),
(1371,17,7,34670,'S'),
(1372,17,8,34753,'S'),
(1373,17,9,34750,'S'),
(1374,17,10,34751,'S'),
(1375,17,11,34753,'S'),
(1376,17,12,34654,'S'),
(1377,17,13,34660,'S'),
(1378,17,14,34753,'S'),
(1379,17,15,34753,'S'),
(1380,17,16,34753,'S'),
(1381,17,17,34753,'S'),
(1382,17,18,34752,'S'),
(1383,17,19,34685,'S'),
(1384,17,20,34753,'S'),
(1385,17,21,34691,'S'),
(1396,18,1,168,'9.5'),
(1397,18,2,156,'9.5'),
(1398,18,3,156,'9.5'),
(1399,18,4,156,'9.5'),
(1400,18,5,156,'9.5'),
(1401,18,6,156,'9.5'),
(1402,18,7,156,'9.5'),
(1403,18,8,156,'9.5'),
(1404,18,9,156,'9.5'),
(1405,18,10,156,'9.5'),
(1406,18,11,156,'9.5'),
(1407,18,12,156,'9.5'),
(1408,18,13,156,'9.5'),
(1409,18,14,156,'9.5'),
(1410,18,15,149,'9.5'),
(1411,18,16,156,'9.5'),
(1412,18,17,156,'9.5'),
(1413,18,18,156,'9.5'),
(1414,18,19,156,'9.5'),
(1415,18,20,156,'9.5'),
(1416,18,21,156,'9.5'),
(1427,19,1,389,'M'),
(1428,19,2,382,'M'),
(1429,19,3,382,'M'),
(1430,19,4,382,'M'),
(1431,19,5,382,'M'),
(1432,19,6,382,'M'),
(1433,19,7,382,'M'),
(1434,19,8,382,'M'),
(1435,19,9,382,'M'),
(1436,19,10,382,'M'),
(1437,19,11,382,'M'),
(1438,19,12,382,'M'),
(1439,19,13,382,'M'),
(1440,19,14,382,'M'),
(1441,19,15,382,'M'),
(1442,19,16,382,'M'),
(1443,19,17,382,'M'),
(1444,19,18,382,'M'),
(1445,19,19,382,'M'),
(1446,19,20,382,'M'),
(1447,19,21,382,'M'),
(1458,20,1,480,'36'),
(1459,20,2,476,'36'),
(1460,20,3,476,'36'),
(1461,20,4,476,'36'),
(1462,20,5,476,'36'),
(1463,20,6,476,'36'),
(1464,20,7,476,'36'),
(1465,20,8,476,'36'),
(1466,20,9,476,'36'),
(1467,20,10,476,'36'),
(1468,20,11,476,'36'),
(1469,20,12,476,'36'),
(1470,20,13,476,'36'),
(1471,20,14,476,'36'),
(1472,20,15,476,'36'),
(1473,20,16,476,'36'),
(1474,20,17,476,'36'),
(1475,20,18,456,'36'),
(1476,20,19,476,'36'),
(1477,20,20,476,'36'),
(1478,20,21,476,'36');
/*!40000 ALTER TABLE `STORE_INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TOPS`
--

DROP TABLE IF EXISTS `TOPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOPS` (
  `PROD_NUM` int(11) NOT NULL,
  `PROD_SIZE` varchar(6) NOT NULL,
  `SLEEVE_LENGTH` varchar(25) NOT NULL,
  `COLLAR_TYPE` varchar(50) NOT NULL,
  `IS_CROPPED` tinyint(1) DEFAULT NULL,
  `DESIGN` varchar(100) NOT NULL,
  KEY `PROD_NUM` (`PROD_NUM`,`PROD_SIZE`),
  CONSTRAINT `TOPS_ibfk_1` FOREIGN KEY (`PROD_NUM`, `PROD_SIZE`) REFERENCES `PRODUCT` (`PROD_NUM`, `PROD_SIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOPS`
--

LOCK TABLES `TOPS` WRITE;
/*!40000 ALTER TABLE `TOPS` DISABLE KEYS */;
INSERT INTO `TOPS` VALUES
(3,'S','Short','Scoop',1,'Plain'),
(4,'L','Long','Crew',0,'Plain'),
(7,'XL','Long','Polo',0,'Plain'),
(8,'S','Long','Polo',1,'Plain'),
(9,'L','Mid-Arm','Vee',0,'Plain'),
(3,'M','Short','Scoop',1,'Plain'),
(4,'XS','Long','Crew',0,'Stripped'),
(7,'M','Long','Polo',0,'Plain'),
(8,'L','Long','Polo',1,'Plain'),
(12,'XXL','Long','Polo',0,'Plain'),
(13,'S','Short','Polo',0,'Plain'),
(16,'M','Long','Scoop',0,'Plain'),
(8,'M','Long','Polo',1,'Plain'),
(9,'S','Short','Crew',0,'Stripes'),
(3,'L','Short','Short',1,'Plain'),
(4,'XL','Long','Crew',0,'Plain'),
(7,'S','Long','Polo',0,'Plain'),
(8,'XL','Long','Polo',1,'Plain'),
(12,'L','Long','Polo',0,'Stars'),
(13,'M','Short','Polo',0,'Spots'),
(16,'S','Long','Vee',0,'Plain'),
(17,'L','Long','Scoop',0,'Plain'),
(19,'S','Long','Vee',0,'Plain'),
(17,'S','Long','Polo',0,'Flowers'),
(19,'M','Long','Polo',0,'Flowers');
/*!40000 ALTER TABLE `TOPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `EMPLOYEE_STORE`
--

/*!50001 DROP VIEW IF EXISTS `EMPLOYEE_STORE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kgrassi2693`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `EMPLOYEE_STORE` AS select `e`.`EMP_ID` AS `EMP_ID`,`e`.`EMP_FNAME` AS `EMP_FNAME`,`e`.`EMP_LNAME` AS `EMP_LNAME`,`e`.`STORE_NUM` AS `STORE_NUM`,`s`.`STORE_NAME` AS `STORE_NAME` from (`EMPLOYEE` `e` join `STORE` `s` on(`e`.`STORE_NUM` = `s`.`STORE_NUM`)) */;
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

-- Dump completed on 2024-04-06 10:11:29
