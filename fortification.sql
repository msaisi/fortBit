/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.14 : Database - fortification
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fortification` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fortification`;

/*Table structure for table ` brands` */

DROP TABLE IF EXISTS ` brands`;

CREATE TABLE ` brands` (
  `brand_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `brand_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table ` brands` */

/*Table structure for table `accesslog` */

DROP TABLE IF EXISTS `accesslog`;

CREATE TABLE `accesslog` (
  `accessLogID` bigint(20) NOT NULL AUTO_INCREMENT,
  `usersID` bigint(20) NOT NULL,
  `logOnstamp` timestamp NULL DEFAULT NULL,
  `logOffstamp` timestamp NULL DEFAULT NULL,
  `remoteIP` varchar(45) NOT NULL,
  PRIMARY KEY (`accessLogID`),
  KEY `users_accessLog` (`usersID`),
  CONSTRAINT `users_accessLog` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accesslog` */

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `brand_name` varchar(45) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `brands` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `company_code` varchar(45) NOT NULL,
  `other_info` varchar(3000) NOT NULL,
  `company_type_id` int(11) NOT NULL,
  `foodtype` varchar(250) NOT NULL,
  `contact_person` varchar(250) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `affiliation` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`company_id`),
  KEY `company_type_id` (`company_type_id`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`company_type_id`) REFERENCES `company_type` (`company_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`company_id`,`company_name`,`company_code`,`other_info`,`company_type_id`,`foodtype`,`contact_person`,`emailAddress`,`phone`,`affiliation`,`location`,`address`) values (1,'MOPHS','MOPHS','sa',1,'0','admin admin','admin@admin.com','','MOPHS','',''),(18,'Pwani Oil Products Limited','CMMP','Oil Factoty',3,'4(Oil)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Oil','Mombasa','Address'),(19,'Tss','CMPP1','Tss Maize',3,'2(Maize)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Maize','Mombasa','My address'),(20,'Tss','CMPP2','Tss Wheat',3,'3(Wheat)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Wheat','Mombasa','My address'),(21,'Mombasa Maize Miller - Milly Branch','CMMP4','Maize millers',3,'2(Maize)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Maize','Mombasa','My address'),(22,'Mombasa Maize Millers-mombasa','CMP509','Maize address',3,'2(Maize)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Maize','Mombasa','My address'),(23,'Mombasa Maize Miller - Milly Branch','CMPP5','Mombasa Maize Miller - Milly Branch wheat',3,'3(Wheat)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Wheat','Mombasa','My address'),(24,'Mombasa Maize Millers-mombasa','CMP1098','Mombasa Maize Millers-mombasa wheat',3,'3(Wheat)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Wheat','Mombasa','My address'),(25,'Kapa Oil Refineries Ltd','cpmpty','Other info',3,'4(Oil)','Michael Saisi','msaisimunye80@gmail.com','0724754035','Oil','Nairobi','My address');

/*Table structure for table `company_type` */

DROP TABLE IF EXISTS `company_type`;

CREATE TABLE `company_type` (
  `company_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`company_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `company_type` */

insert  into `company_type`(`company_type_id`,`company_type_name`) values (1,'MOPHS'),(2,'OVERSIGHT'),(3,'FOOD INDUSRTRIES');

/*Table structure for table `companybrands` */

DROP TABLE IF EXISTS `companybrands`;

CREATE TABLE `companybrands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(250) NOT NULL,
  `company_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `companybrands_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `companybrands` */

insert  into `companybrands`(`brand_id`,`brand_name`,`company_id`,`description`) values (1,'FRESH FRI OIL',18,'FRESH FRI OIL'),(2,'POPCO  OIL',18,'POPCO  OIL'),(3,'SALIT  OIL',18,'SALIT  OIL'),(4,'DIRIA',18,'DIRIA'),(5,'MPISHI POA',18,'MPISHI POA'),(6,'FRYMATE',18,'FRYMATE'),(7,'PWANI SBF',18,'PWANI SBF'),(8,'FRY KING',18,'FRY KING'),(9,'JAMII ALL PURPOSE',20,'JAMII ALL PURPOSE'),(10,'JAMII CHAPATI',20,'JAMII CHAPATI'),(11,'TSS BAKERS FLOUR',20,'TSS BAKERS FLOUR'),(12,'FRESH ZAIT',18,'FRESH ZAIT'),(13,'NAKEEL',18,'NAKEEL'),(14,'MOTOMOTO',18,'Motomoto'),(15,'ROYAL FRY',18,'ROYAL FRY'),(21,'KASUKU',25,'KASUKU'),(22,'TILLY',25,'TILLY'),(23,'ALPA',25,'ALPA'),(24,'WHITE GOLD',25,'WHITE GOLD'),(25,'RINA (Pure Vegetable Palm Oil)',25,'RINA (Pure Vegetable Palm Oil)'),(26,'SOJA',25,'SOJA'),(27,'SPECIAL BAKERS COMPOUND',25,'SPECIAL BAKERS COMPOUND'),(28,'RINA (Sunflower Oil)',25,'RINA (Sunflower Oil)'),(29,'CAPTAIN COOK',25,'CAPTAIN COOK'),(30,'KAPA',25,'KAPA'),(31,'RINA (Edible Fats)',25,'RINA (Edible Fats)'),(32,'SEAGULL',25,'SEAGULL'),(33,'PRESTIGE',25,'PRESTIGE');

/*Table structure for table `devices` */

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `deviceSerialNumber` varchar(50) NOT NULL,
  `deviceType` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`deviceSerialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `devices` */

insert  into `devices`(`deviceSerialNumber`,`deviceType`,`remarks`) values ('6754320','Drier','In good condition'),('6754321','Balance','In good condition'),('6754327','Pump','In good condition'),('6754351','Spraying/Drip Equipment','In good condition'),('76465','Feeding Tubes','In good condition'),('7865432','Blender','In good condition'),('89899','Stirrer','In good condition'),('93431','Blending Tanks','In good condition');

/*Table structure for table `externalfortifiedb1` */

DROP TABLE IF EXISTS `externalfortifiedb1`;

CREATE TABLE `externalfortifiedb1` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` date DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `signature` varchar(15) NOT NULL,
  `opening` varchar(45) DEFAULT NULL,
  `closing` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `factoryName` (`factoryName`),
  CONSTRAINT `externalfortifiedb1_ibfk_1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `externalfortifiedb1` */

/*Table structure for table `externalfortifiedb2` */

DROP TABLE IF EXISTS `externalfortifiedb2`;

CREATE TABLE `externalfortifiedb2` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` date DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `productionArea` varchar(45) DEFAULT NULL,
  `packageArea` varchar(45) DEFAULT NULL,
  `warehouse` varchar(45) DEFAULT NULL,
  `staffFacilities` varchar(45) DEFAULT NULL,
  `hygiene` varchar(45) DEFAULT NULL,
  `protectiveGear` varchar(45) DEFAULT NULL,
  `trainingInTasks` varchar(45) DEFAULT NULL,
  `receiptStoragePremix` varchar(45) DEFAULT NULL,
  `premixDilution` varchar(45) DEFAULT NULL,
  `feederVerification` varchar(45) DEFAULT NULL,
  `QCSaltSampling` varchar(45) DEFAULT NULL,
  `iodineTest` varchar(45) DEFAULT NULL,
  `iodineCompoundUptoDate` varchar(45) DEFAULT NULL,
  `COAPerLot` varchar(45) DEFAULT NULL,
  `iodineStorageAdequate` varchar(45) DEFAULT NULL,
  `FIFOSystem` varchar(45) DEFAULT NULL,
  `iodineCompoundHandling` varchar(45) DEFAULT NULL,
  `premixPreparation` varchar(10) NOT NULL,
  `premixStorageHandling` varchar(45) DEFAULT NULL,
  `feederSprayerRecord` varchar(45) DEFAULT NULL,
  `feederLevelAdequate` varchar(45) DEFAULT NULL,
  `saltProductionPremixRecords` varchar(45) DEFAULT NULL,
  `saltSamplingEachShift` varchar(45) DEFAULT NULL,
  `saltProductionPremixRight` varchar(45) DEFAULT NULL,
  `iodineResultLess40MgPerKg` varchar(45) DEFAULT NULL,
  `internalTest` varchar(45) DEFAULT NULL,
  `externalTest` varchar(45) DEFAULT NULL,
  `dailyCompositeSamples` varchar(45) DEFAULT NULL,
  `last30SamplesAvailable` varchar(45) DEFAULT NULL,
  `labelingSpecifications` varchar(45) NOT NULL,
  `fortifiedSaltStoredAdequate` varchar(45) DEFAULT NULL,
  `recommendations` varchar(45) DEFAULT NULL,
  `correctiveActions` varchar(45) DEFAULT NULL,
  `assessmentOfCorrectiveAction` tinyint(4) DEFAULT NULL COMMENT '1-adequtuate, 0-inadequate',
  `comments` varchar(45) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestionsForImprovement` varchar(45) DEFAULT NULL,
  `premixType` varchar(45) DEFAULT NULL COMMENT 'iodate/iodine',
  `idComposite` varchar(45) DEFAULT NULL,
  `iodineMgPerKg0` varchar(45) DEFAULT NULL,
  `refIodine` varchar(45) DEFAULT NULL,
  `iodineMgPerKg1` varchar(45) DEFAULT NULL,
  `idOther` varchar(45) DEFAULT NULL,
  `iodineMgPerKg2` varchar(45) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `fk_TableB2(13)_AuditInspect_Manufacturer_FCenters1` (`factoryName`),
  CONSTRAINT `fk_TableB2(13)_AuditInspect_Manufacturer_FCenters1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `externalfortifiedb2` */

/*Table structure for table `externalfortifiedb3` */

DROP TABLE IF EXISTS `externalfortifiedb3`;

CREATE TABLE `externalfortifiedb3` (
  `transcationNumber` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(25) NOT NULL,
  `dateOfInspection` date NOT NULL,
  `factoryName` varchar(45) NOT NULL,
  `factoryRepresentative` varchar(45) DEFAULT NULL,
  `areasVisited` varchar(100) NOT NULL COMMENT 'a comma separated list',
  `nonCompliances` text NOT NULL,
  `suggestionsForImprovement` text NOT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(25) NOT NULL,
  `inspectorDate` date NOT NULL,
  `receivedDate` date NOT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transcationNumber`),
  KEY `manufacturerCompName` (`factoryName`),
  CONSTRAINT `externalfortifiedb3_ibfk_1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `externalfortifiedb3` */

/*Table structure for table `externaliodizationb1` */

DROP TABLE IF EXISTS `externaliodizationb1`;

CREATE TABLE `externaliodizationb1` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `inventoryUpToDate` varchar(45) DEFAULT NULL,
  `sufficientIodine3Months` varchar(45) DEFAULT NULL,
  `adequateStorage` varchar(45) DEFAULT NULL,
  `potassiumIodateAmounts` varchar(45) DEFAULT NULL,
  `premixRecords` varchar(45) DEFAULT NULL,
  `FIFOSystem` varchar(45) DEFAULT NULL,
  `saltVsPremix` varchar(45) DEFAULT NULL,
  `iodizedSaltUpToDate` varchar(45) DEFAULT NULL,
  `saltPerKgAdequate` varchar(45) DEFAULT NULL,
  `sampleNumber` varchar(45) DEFAULT NULL,
  `iodineContent0` varchar(45) DEFAULT NULL,
  `sampleReprocessed` varchar(45) DEFAULT NULL,
  `iodineContent1` varchar(45) DEFAULT NULL,
  `nonCompliances` varchar(255) NOT NULL DEFAULT 'none',
  `suggestionsForImprovement` varchar(255) NOT NULL DEFAULT 'none',
  `receivedBy` varchar(45) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `factoryName` (`factoryName`),
  CONSTRAINT `externaliodizationb1_ibfk_1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `externaliodizationb1` */

/*Table structure for table `factories` */

DROP TABLE IF EXISTS `factories`;

CREATE TABLE `factories` (
  `factoryNumber` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `manufacturerFortName` varchar(45) NOT NULL,
  PRIMARY KEY (`factoryNumber`,`manufacturerFortName`),
  UNIQUE KEY `Manufacturer_FCentre_Name_UNIQUE` (`factoryName`),
  KEY `fk_Manufacturer_FCenters_Manufacturer_Fortifier1` (`manufacturerFortName`),
  CONSTRAINT `factories_ibfk_1` FOREIGN KEY (`manufacturerFortName`) REFERENCES `manufacturerfortified` (`manufactuerFortName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `factories` */

insert  into `factories`(`factoryNumber`,`factoryName`,`location`,`address`,`phoneNumber`,`manufacturerFortName`) values (1,'Kensalt','Nairobi','uiu','1212','Kensalt'),(2,'Salt Iod',NULL,NULL,NULL,'Kensalt'),(3,'Ken Iodization I','Pwani','678','4567898','Kensalt'),(4,'Nzoia Plant','Nzoia','9877 ','56789','Mumias Sugar'),(5,'Bidco Main','Thika','9876 GH','654','Bidco Oil Ltd'),(6,'Unga Mill I','Kitale','PO BOX 4568-998','4567','Unga Limited'),(7,'Wheat Mill I','Nakuru','PO BOX 34-54','78654','Ngano Millers Limited');

/*Table structure for table `food_types` */

DROP TABLE IF EXISTS `food_types`;

CREATE TABLE `food_types` (
  `foodtype_Id` int(11) NOT NULL AUTO_INCREMENT,
  `food_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`foodtype_Id`),
  KEY `vehicleName` (`food_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `food_types` */

/*Table structure for table `foods_markettable` */

DROP TABLE IF EXISTS `foods_markettable`;

CREATE TABLE `foods_markettable` (
  `productMarketID` int(11) NOT NULL AUTO_INCREMENT,
  `sample_no` varchar(100) NOT NULL,
  `date_collected` varchar(50) NOT NULL,
  `time_collected` varchar(50) NOT NULL,
  `prod_name` varchar(250) NOT NULL,
  `collection_method` text NOT NULL,
  `collection_reason` text NOT NULL,
  `collector` varchar(250) NOT NULL,
  `dealer` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `sample_size` double NOT NULL,
  `date_dispatched` varchar(50) NOT NULL,
  `laboratory` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `invoice_date` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `vehicle_type` varchar(250) NOT NULL,
  `specimen_seal` varchar(250) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`productMarketID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `foods_markettable` */

insert  into `foods_markettable`(`productMarketID`,`sample_no`,`date_collected`,`time_collected`,`prod_name`,`collection_method`,`collection_reason`,`collector`,`dealer`,`manufacturer`,`sample_size`,`date_dispatched`,`laboratory`,`invoice_no`,`remarks`,`invoice_date`,`company_name`,`vehicle_type`,`specimen_seal`,`signature`,`time_added`,`edited_by`,`time_edited`) values (1,'66','2014-03-06','01:21 PM','rytry6576','76556','5765','765','56','76',75,'2014-03-05','dfhgdr','yuyiuyuy','uyyuy','2014-03-06','','Maize','567','','2014-03-06','N/A','0000-00-00'),(2,'uyu','2014-03-06','01:48 PM','fdgd','fdgd','dfgdf','dfg','dfg','dfg',54,'2014-03-06','dfgdf','dfgdf','dfdfgdfgdfg','2014-03-06','','Oil','dfgfdg','admin','2014-03-06','N/A','0000-00-00');

/*Table structure for table `foodtype` */

DROP TABLE IF EXISTS `foodtype`;

CREATE TABLE `foodtype` (
  `vehicleId` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleName` varchar(100) NOT NULL,
  PRIMARY KEY (`vehicleId`),
  KEY `vehicleName` (`vehicleName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `foodtype` */

insert  into `foodtype`(`vehicleId`,`vehicleName`) values (2,'Maize'),(4,'Oil'),(1,'Salt'),(5,'Sugar'),(3,'Wheat');

/*Table structure for table `internalfortifieda1` */

DROP TABLE IF EXISTS `internalfortifieda1`;

CREATE TABLE `internalfortifieda1` (
  `receiptNumber` int(11) NOT NULL AUTO_INCREMENT,
  `productType` varchar(10) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `inspectedBy` varchar(45) DEFAULT NULL,
  `purchaseOrderNumber` varchar(11) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `integrityObservation` varchar(45) NOT NULL,
  `lotNumber` varchar(11) DEFAULT NULL,
  `lotObservation` varchar(45) NOT NULL,
  `productionDate` varchar(11) DEFAULT NULL,
  `productObservation` varchar(45) NOT NULL,
  `expiryDate` varchar(11) DEFAULT NULL,
  `expirationObservation` varchar(45) NOT NULL,
  `contentClaimedLabel` varchar(45) DEFAULT NULL,
  `contentObservation` varchar(45) NOT NULL,
  `certificateOfAnalysis` varchar(45) DEFAULT NULL,
  `certificateObservation` varchar(45) NOT NULL,
  `other` varchar(45) DEFAULT NULL,
  `otherObservation` varchar(45) NOT NULL,
  `accepted` tinyint(1) DEFAULT '1' COMMENT '1-accepted, 0-rejected',
  `reasonsForRejection` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) NOT NULL,
  PRIMARY KEY (`receiptNumber`),
  KEY `fk_TableA2(23)_PremixType` (`productType`),
  KEY `fk_TableA2(23)_Manufacturer_Compound1` (`manufacturerCompName`),
  CONSTRAINT `fk_TableA2(23)_Manufacturer_Compound1` FOREIGN KEY (`manufacturerCompName`) REFERENCES `manufacturercompound` (`manufacturerCompName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TableA2(23)_PremixType` FOREIGN KEY (`productType`) REFERENCES `premixtype` (`productName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `internalfortifieda1` */

/*Table structure for table `internalfortifieda2` */

DROP TABLE IF EXISTS `internalfortifieda2`;

CREATE TABLE `internalfortifieda2` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` date DEFAULT NULL,
  `supplierCOA` varchar(45) DEFAULT NULL,
  `noOfDrums` int(11) DEFAULT NULL,
  `lotId` varchar(45) DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT 'n/a',
  `transactedBy` varchar(40) NOT NULL,
  `dateOfReporting` date DEFAULT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `manufacturerCompName` (`manufacturerCompName`),
  KEY `supplierCOA` (`supplierCOA`),
  KEY `lotId` (`lotId`),
  CONSTRAINT `internalfortifieda2_ibfk_1` FOREIGN KEY (`manufacturerCompName`) REFERENCES `manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `internalfortifieda2` */

/*Table structure for table `internalfortifieda2dispatched` */

DROP TABLE IF EXISTS `internalfortifieda2dispatched`;

CREATE TABLE `internalfortifieda2dispatched` (
  `dispatchedNumberA2` int(11) NOT NULL AUTO_INCREMENT,
  `transactedBy` varchar(45) NOT NULL,
  `dateOfReporting` varchar(10) NOT NULL,
  `internalFortifiedA2ID` int(11) NOT NULL,
  `lotID` int(11) NOT NULL,
  `receiptAndQCReview` varchar(40) NOT NULL,
  PRIMARY KEY (`dispatchedNumberA2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `internalfortifieda2dispatched` */

/*Table structure for table `internalfortifiedb1` */

DROP TABLE IF EXISTS `internalfortifiedb1`;

CREATE TABLE `internalfortifiedb1` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` date DEFAULT NULL,
  `fillerWeight` double DEFAULT NULL,
  `iodineWeight` double DEFAULT NULL,
  `finalPremixWeight1` double DEFAULT NULL,
  `startTime` varchar(8) DEFAULT NULL,
  `endTime` varchar(8) DEFAULT NULL,
  `finalPremixWeight` double DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `factoryName` (`factoryName`),
  CONSTRAINT `internalfortifiedb1_ibfk_1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `internalfortifiedb1` */

/*Table structure for table `internalfortifiedb2` */

DROP TABLE IF EXISTS `internalfortifiedb2`;

CREATE TABLE `internalfortifiedb2` (
  `checkNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` date NOT NULL,
  `deviceCondition` tinyint(1) NOT NULL DEFAULT '1',
  `observations` varchar(45) DEFAULT NULL,
  `checkedBy` varchar(45) DEFAULT NULL,
  `deviceCompNumber` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`checkNumber`),
  KEY `deviceCompNumber` (`deviceCompNumber`,`manufacturerCompName`),
  KEY `manufacturerCompName` (`manufacturerCompName`),
  CONSTRAINT `internalfortifiedb2_ibfk_1` FOREIGN KEY (`deviceCompNumber`) REFERENCES `manucdevices` (`deviceCompNumber`),
  CONSTRAINT `internalfortifiedb2_ibfk_2` FOREIGN KEY (`manufacturerCompName`) REFERENCES `manucdevices` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `internalfortifiedb2` */

/*Table structure for table `internalfortifiedc1` */

DROP TABLE IF EXISTS `internalfortifiedc1`;

CREATE TABLE `internalfortifiedc1` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(8) DEFAULT NULL,
  `saltProducedMT` double DEFAULT NULL,
  `premixUsed` double DEFAULT NULL,
  `saltFortVsPremixUsed` double DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `factoryName` (`factoryName`),
  CONSTRAINT `internalfortifiedc1_ibfk_1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `internalfortifiedc1` */

/*Table structure for table `maize_externalfortb1` */

DROP TABLE IF EXISTS `maize_externalfortb1`;

CREATE TABLE `maize_externalfortb1` (
  `maize_externalfortB1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `opening` varchar(45) DEFAULT NULL,
  `closing` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_externalfortB1ID`),
  KEY `maize_externalfortB1_manufacturerfortified` (`factoryName`),
  CONSTRAINT `maize_externalfortB1_manufacturerfortified` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_externalfortb1` */

/*Table structure for table `maize_externalfortb2` */

DROP TABLE IF EXISTS `maize_externalfortb2`;

CREATE TABLE `maize_externalfortb2` (
  `maize_externalfortb2ID` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `productionArea` varchar(45) DEFAULT NULL,
  `packagingArea` varchar(45) DEFAULT NULL,
  `warehouse` varchar(45) DEFAULT NULL,
  `staffFacilities` varchar(45) NOT NULL,
  `hygiene` varchar(45) DEFAULT NULL,
  `protectiveClothing` varchar(45) DEFAULT NULL,
  `trainnedInTasks` varchar(45) DEFAULT NULL,
  `receiptAndStorage` varchar(45) DEFAULT NULL,
  `premixDilution` varchar(45) DEFAULT NULL,
  `feederVerification` varchar(45) DEFAULT NULL,
  `samplingOfMaize` varchar(45) DEFAULT NULL,
  `ironSpotTest` varchar(45) DEFAULT NULL,
  `premixInventory` varchar(45) DEFAULT NULL,
  `COAReceived` varchar(45) DEFAULT NULL,
  `premixStored` varchar(45) DEFAULT NULL,
  `premixHandledWell` varchar(45) DEFAULT NULL,
  `premixDilutionApplicable` varchar(45) DEFAULT NULL,
  `homogeneityAssessed` varchar(45) DEFAULT NULL,
  `adequateStorage` varchar(45) DEFAULT NULL,
  `recordsOfFeeder` varchar(45) DEFAULT NULL,
  `premixLevel` varchar(45) DEFAULT NULL,
  `recordsOfFlour` varchar(45) DEFAULT NULL,
  `flourSamplesTaken` varchar(45) DEFAULT NULL,
  `ratioMaizeProduced` varchar(45) DEFAULT NULL,
  `ironContent` varchar(45) DEFAULT NULL,
  `spotTest` varchar(45) DEFAULT NULL,
  `quantitativeMethodIron` varchar(45) DEFAULT NULL,
  `quantitativeMethodVitamin` varchar(45) DEFAULT NULL,
  `dailyCompositeSamples` varchar(45) DEFAULT NULL,
  `last30Samples` varchar(45) DEFAULT NULL,
  `labelingMeetsSpecifications` varchar(45) DEFAULT NULL,
  `fortifiedMaizeFlour` varchar(45) DEFAULT NULL,
  `FIFOSystemFlour` varchar(45) DEFAULT NULL,
  `FIFOSystemPremix` varchar(45) DEFAULT NULL,
  `recommendations` varchar(45) DEFAULT NULL,
  `correctiveActions` varchar(45) DEFAULT NULL,
  `assessmentOfCorrectiveAction` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestionsForImprovement` varchar(45) DEFAULT NULL,
  `premixType` varchar(45) DEFAULT NULL,
  `compositeID` varchar(45) DEFAULT NULL,
  `factoryEstimatesIronMgPerKg` decimal(10,0) DEFAULT NULL,
  `labResultsIronMgPerKg` decimal(10,0) DEFAULT NULL,
  `inspectionVitaminMgPerKg0` decimal(10,0) DEFAULT NULL,
  `IDOther` varchar(45) DEFAULT NULL,
  `ironMgPerKg2` decimal(10,0) DEFAULT NULL,
  `vitaminAMgPerKg1` decimal(10,0) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  `supervisorDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_externalfortb2ID`),
  KEY `maize_externalfortb2_iodizationcenters` (`factoryName`),
  CONSTRAINT `maize_externalfortb2_iodizationcenters` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_externalfortb2` */

/*Table structure for table `maize_externalfortb3` */

DROP TABLE IF EXISTS `maize_externalfortb3`;

CREATE TABLE `maize_externalfortb3` (
  `maize_externalfortb3ID` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(45) NOT NULL,
  `dateOfInspection` varchar(45) NOT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `factoryRepresentative` varchar(45) DEFAULT NULL,
  `areasVisited` varchar(100) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestionsForImprovement` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `inspectorDate` varchar(45) DEFAULT NULL,
  `receivedDate` varchar(45) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  `supervisorDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_externalfortb3ID`),
  KEY `maize_externalfortb3_iodizationcenters` (`factoryName`),
  CONSTRAINT `maize_externalfortb3_iodizationcenters` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_externalfortb3` */

/*Table structure for table `maize_internalforta1` */

DROP TABLE IF EXISTS `maize_internalforta1`;

CREATE TABLE `maize_internalforta1` (
  `maize_internalforta1ID` int(11) NOT NULL AUTO_INCREMENT,
  `productType` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `inspectedBy` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `integrityObservation` varchar(45) DEFAULT NULL,
  `lotNumber` varchar(10) DEFAULT NULL,
  `lotObservation` varchar(45) DEFAULT NULL,
  `productionDate` varchar(10) DEFAULT NULL,
  `productionObservation` varchar(45) DEFAULT NULL,
  `expiryDate` varchar(10) DEFAULT NULL,
  `expiryObservation` varchar(45) DEFAULT NULL,
  `micronutrientLevels` varchar(10) DEFAULT NULL,
  `micronutrientObservation` varchar(45) DEFAULT NULL,
  `certificateOfAnalysis` varchar(10) DEFAULT NULL,
  `certificateOfAnalysisObservation` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  `otherObservation` varchar(45) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `reasonsForRejection` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `receivedDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_internalforta1ID`),
  KEY `maize_internalforta1_premixtype` (`productType`),
  KEY `maize_internalforta1_manufacturercompound` (`manufacturerCompName`),
  CONSTRAINT `maize_internalforta1_manufacturercompound` FOREIGN KEY (`manufacturerCompName`) REFERENCES `manufacturercompound` (`manufacturerCompName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `maize_internalforta1_premixtype` FOREIGN KEY (`productType`) REFERENCES `premixtype` (`productName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_internalforta1` */

/*Table structure for table `maize_internalforta2` */

DROP TABLE IF EXISTS `maize_internalforta2`;

CREATE TABLE `maize_internalforta2` (
  `maize_internalforta2ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `quantityReceived` double DEFAULT NULL,
  `lotID` varchar(45) DEFAULT NULL,
  `expiryDate` varchar(45) DEFAULT NULL,
  `dispatchedQuantity` double DEFAULT NULL,
  `reportingDate` varchar(45) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_internalforta2ID`),
  KEY `maize_internalforta2_manufacturercompound` (`manufacturerCompName`),
  CONSTRAINT `maize_internalforta2_manufacturercompound` FOREIGN KEY (`manufacturerCompName`) REFERENCES `manufacturercompound` (`manufacturerCompName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_internalforta2` */

/*Table structure for table `maize_internalfortb1` */

DROP TABLE IF EXISTS `maize_internalfortb1`;

CREATE TABLE `maize_internalfortb1` (
  `maize_internalfortb1ID` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `productionRate` double DEFAULT NULL,
  `theoreticFeederFlow` double DEFAULT NULL,
  `feederFlow1` double DEFAULT NULL,
  `feederFlow2` double DEFAULT NULL,
  `feederFlow3` double DEFAULT NULL,
  `CV` varchar(45) DEFAULT NULL,
  `adjusted` varchar(45) DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_internalfortb1ID`),
  KEY `factoryName` (`factoryName`),
  CONSTRAINT `maize_internalfortb1_ibfk_1` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_internalfortb1` */

/*Table structure for table `maize_internalfortb2` */

DROP TABLE IF EXISTS `maize_internalfortb2`;

CREATE TABLE `maize_internalfortb2` (
  `maize_internalfortb2ID` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `flourProducedMT` double DEFAULT NULL,
  `lotID` varchar(45) DEFAULT NULL,
  `premixUsed` double DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_internalfortb2ID`),
  KEY `maize_internalfortb2_iodizationcenters` (`factoryName`),
  CONSTRAINT `maize_internalfortb2_iodizationcenters` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_internalfortb2` */

/*Table structure for table `maize_internalfortc1` */

DROP TABLE IF EXISTS `maize_internalfortc1`;

CREATE TABLE `maize_internalfortc1` (
  `maize_internalfortc1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `maizeFlourProduced` double DEFAULT NULL,
  `premixUsed` double DEFAULT NULL,
  `maizeFlourVSPremix` double DEFAULT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `compositeSample` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maize_internalfortc1ID`),
  KEY `maize_internalfortc1_iodizationcenters` (`factoryName`),
  CONSTRAINT `maize_internalfortc1_iodizationcenters` FOREIGN KEY (`factoryName`) REFERENCES `factories` (`factoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_internalfortc1` */

/*Table structure for table `maize_markettable` */

DROP TABLE IF EXISTS `maize_markettable`;

CREATE TABLE `maize_markettable` (
  `MaizeMarketID` int(11) NOT NULL AUTO_INCREMENT,
  `sample_no` varchar(100) NOT NULL,
  `date_collected` varchar(50) NOT NULL,
  `time_collected` varchar(50) NOT NULL,
  `prod_name` varchar(250) NOT NULL,
  `collection_method` text NOT NULL,
  `collection_reason` text NOT NULL,
  `collector` varchar(250) NOT NULL,
  `dealer` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `sample_size` double NOT NULL,
  `date_dispatched` varchar(50) NOT NULL,
  `laboratory` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `invoice_date` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `specimen_seal` varchar(250) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`MaizeMarketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maize_markettable` */

/*Table structure for table `maize_productiontable` */

DROP TABLE IF EXISTS `maize_productiontable`;

CREATE TABLE `maize_productiontable` (
  `MaizeProductionID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_month` varchar(20) NOT NULL,
  `opening_balance` double NOT NULL,
  `qty_delivered` double NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `qty_rejected` double NOT NULL,
  `qty_issued` double NOT NULL,
  `closing_balance` double NOT NULL,
  `dosage_rate` double NOT NULL,
  `theoretical_prod` double NOT NULL,
  `actual_prod` double NOT NULL,
  `production_unfort` double NOT NULL,
  `exp_fort` double NOT NULL,
  `exp_unfort` double NOT NULL,
  `fort_brands` text NOT NULL,
  `unfort_brands` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(20) NOT NULL DEFAULT '0000-00-00',
  `edited_by` varchar(250) NOT NULL DEFAULT 'N/A',
  `time_edited` varchar(20) NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`MaizeProductionID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `maize_productiontable` */

insert  into `maize_productiontable`(`MaizeProductionID`,`prod_month`,`opening_balance`,`qty_delivered`,`supplier`,`qty_rejected`,`qty_issued`,`closing_balance`,`dosage_rate`,`theoretical_prod`,`actual_prod`,`production_unfort`,`exp_fort`,`exp_unfort`,`fort_brands`,`unfort_brands`,`company_id`,`year`,`signature`,`time_added`,`edited_by`,`time_edited`) values (1,'October',597220,0,'GAIN',0,569452,27768,20,3720,2777.8,0,2277.8,0,'N/A','N/A',19,'2013','3ADM6182','2014-03-16','N/A','0000-00-00'),(2,'November',27768,925000,'GAIN',0,338402,614366,19.95,3600,1353.6,0,1353.6,0,'N/A','N/A',19,'2013','3ADM6182','2014-03-16','N/A','0000-00-00'),(3,'December',614366,20100,'MUHLE',0,521384,113082,19.95,3780,2085.5,0,2085.5,0,'N/A','N/A',19,'2013','3ADM6182','2014-03-16','N/A','0000-00-00'),(4,'January',113082,175000,'MUHLE',0,1102124,814042,39.8,3906,2402.4,0,2402.4,0,'N/A','N/A',19,'2014','3ADM6182','2014-03-16','N/A','0000-00-00'),(5,'February',0,0,'N/A',0,0,0,0,0,1922.826,1922.826,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(6,'March',0,0,'N/A',0,0,0,0,0,2590.549,2590.549,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(7,'April',0,0,'N/A',0,0,0,0,0,2776.492,2776.492,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(8,'May',0,0,'N/A',0,0,0,0,0,3638.342,3638.342,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(9,'June',0,0,'N/A',0,0,0,0,0,2572.788,2572.788,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(10,'July',1250,1250,'N/A',0,1025,1475,500,2950,2296.973,0,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(11,'August',1475,2500,'N/A',0,925,3050,500,1850,1800,0,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(12,'September',3050,1250,'N/A',0,1000,3300,500,2000,2257,0,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(13,'October',2000,1250,'N/A',0,1350,1900,0,0,2655,0,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(14,'November',1900,1250,'N/A',0,1525,1625,0,0,2994,0,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00'),(15,'December',1625,1250,'N/A',0,1575,1300,0,0,3172,0,0,0,'N/A','N/A',21,'2013','3ADM2408','2014-03-16','N/A','0000-00-00');

/*Table structure for table `manucdevices` */

DROP TABLE IF EXISTS `manucdevices`;

CREATE TABLE `manucdevices` (
  `manufacturerCompName` varchar(45) NOT NULL,
  `deviceCompNumber` varchar(45) NOT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`manufacturerCompName`,`deviceCompNumber`),
  KEY `deviceCompNumber` (`deviceCompNumber`),
  CONSTRAINT `manucdevices_ibfk_1` FOREIGN KEY (`manufacturerCompName`) REFERENCES `factories` (`factoryName`),
  CONSTRAINT `manucdevices_ibfk_2` FOREIGN KEY (`deviceCompNumber`) REFERENCES `devices` (`deviceSerialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manucdevices` */

insert  into `manucdevices`(`manufacturerCompName`,`deviceCompNumber`,`remarks`) values ('Bidco Main','6754321','Good'),('Bidco Main','6754327','Good'),('Bidco Main','76465','Good'),('Bidco Main','7865432','Good'),('Bidco Main','89899','Good'),('Bidco Main','93431','Good'),('Ken Iodization I','6754320',NULL),('Ken Iodization I','6754321',NULL),('Ken Iodization I','6754327',NULL),('Ken Iodization I','6754351',NULL),('Ken Iodization I','7865432',NULL);

/*Table structure for table `manufacturercompound` */

DROP TABLE IF EXISTS `manufacturercompound`;

CREATE TABLE `manufacturercompound` (
  `manufacturerId` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`manufacturerId`),
  UNIQUE KEY `Manufacturer_Name_UNIQUE` (`manufacturerCompName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `manufacturercompound` */

insert  into `manufacturercompound`(`manufacturerId`,`manufacturerCompName`,`address`,`phoneNumber`,`location`) values (1,'Salt Iod','vcv','3434','Kisumu'),(4,'Kensalt','a','d','b'),(5,'Oxfirm','678 Jakarta','232323','India'),(6,'TeraChloro Inc.','Pinto St','8765','Singapore');

/*Table structure for table `manufacturerfortified` */

DROP TABLE IF EXISTS `manufacturerfortified`;

CREATE TABLE `manufacturerfortified` (
  `manufacturerFortId` int(11) NOT NULL AUTO_INCREMENT,
  `manufactuerFortName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `vehicleName` varchar(100) NOT NULL,
  PRIMARY KEY (`manufacturerFortId`),
  UNIQUE KEY `Manufactuer_FName_UNIQUE` (`manufactuerFortName`),
  KEY `vehicleName` (`vehicleName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `manufacturerfortified` */

insert  into `manufacturerfortified`(`manufacturerFortId`,`manufactuerFortName`,`address`,`location`,`phoneNumber`,`vehicleName`) values (1,'Kensalt','vbvb','Magadi','5454','Salt'),(2,'Mumias Sugar','PO BOX 4567','Mumias','3445','Sugar'),(3,'Bidco Oil Ltd','887 JK','Thika','987654','Oil'),(4,'Unga Limited','PO BOX 4567-998','Kitale','2345567','Maize'),(5,'Ngano Millers Limited','PO BOX 980-778','Nakuru','23478','Wheat');

/*Table structure for table `manufacturers` */

DROP TABLE IF EXISTS `manufacturers`;

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(45) NOT NULL,
  `manufacturer_email` varchar(45) NOT NULL,
  `manufacturer_location` varchar(45) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manufacturers` */

/*Table structure for table `oil_markettable` */

DROP TABLE IF EXISTS `oil_markettable`;

CREATE TABLE `oil_markettable` (
  `OilMarketID` int(11) NOT NULL AUTO_INCREMENT,
  `sample_no` varchar(100) NOT NULL,
  `date_collected` varchar(50) NOT NULL,
  `time_collected` varchar(50) NOT NULL,
  `prod_name` varchar(250) NOT NULL,
  `collection_method` text NOT NULL,
  `collection_reason` text NOT NULL,
  `collector` varchar(250) NOT NULL,
  `dealer` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `sample_size` double NOT NULL,
  `date_dispatched` varchar(50) NOT NULL,
  `laboratory` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `invoice_date` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `specimen_seal` varchar(250) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`OilMarketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oil_markettable` */

/*Table structure for table `oil_productiontable` */

DROP TABLE IF EXISTS `oil_productiontable`;

CREATE TABLE `oil_productiontable` (
  `OilProductionID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_month` varchar(20) NOT NULL,
  `opening_balance` double NOT NULL,
  `qty_delivered` double NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `qty_rejected` double NOT NULL,
  `qty_issued_o_f` double NOT NULL,
  `qty_issued_m` double NOT NULL,
  `closing_balance` double NOT NULL,
  `dosage_rate_o_f` double NOT NULL,
  `theoretical_prod` double NOT NULL,
  `actual_prod_oil` double NOT NULL,
  `actual_prod_fats` double NOT NULL,
  `dosage_rate_m` double NOT NULL,
  `theoretical_prod_m` double NOT NULL,
  `actual_prod_m` double NOT NULL,
  `production_unfort` double NOT NULL,
  `exp_fats` double NOT NULL,
  `exp_oil` double NOT NULL,
  `brands` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`OilProductionID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `oil_productiontable` */

insert  into `oil_productiontable`(`OilProductionID`,`prod_month`,`opening_balance`,`qty_delivered`,`supplier`,`qty_rejected`,`qty_issued_o_f`,`qty_issued_m`,`closing_balance`,`dosage_rate_o_f`,`theoretical_prod`,`actual_prod_oil`,`actual_prod_fats`,`dosage_rate_m`,`theoretical_prod_m`,`actual_prod_m`,`production_unfort`,`exp_fats`,`exp_oil`,`brands`,`company_id`,`year`,`signature`,`time_added`,`edited_by`,`time_edited`) values (1,'September',787,87,'8',7,87,8,7,8,7,78,8,567,78,7,87,8,78,'FRESH FRI OIL,POPCO  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF',18,'2000','3ADM8790','2014-03-21','N/A','0000-00-00');

/*Table structure for table `oil_productiontable1` */

DROP TABLE IF EXISTS `oil_productiontable1`;

CREATE TABLE `oil_productiontable1` (
  `OilProductionID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_month` varchar(20) NOT NULL,
  `opening_balance` double NOT NULL,
  `qty_delivered` double NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `qty_rejected` double NOT NULL,
  `qty_issued` double NOT NULL,
  `closing_balance` double NOT NULL,
  `dosage_rate` double NOT NULL,
  `theoretical_prod` double NOT NULL,
  `actual_prod` double NOT NULL,
  `production_unfort` double NOT NULL,
  `exp_fort` double NOT NULL,
  `exp_unfort` double NOT NULL,
  `fort_brands` text NOT NULL,
  `unfort_brands` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(20) NOT NULL DEFAULT '0000-00-00',
  `edited_by` varchar(250) NOT NULL DEFAULT 'N/A',
  `time_edited` varchar(20) NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`OilProductionID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `oil_productiontable1` */

insert  into `oil_productiontable1`(`OilProductionID`,`prod_month`,`opening_balance`,`qty_delivered`,`supplier`,`qty_rejected`,`qty_issued`,`closing_balance`,`dosage_rate`,`theoretical_prod`,`actual_prod`,`production_unfort`,`exp_fort`,`exp_unfort`,`fort_brands`,`unfort_brands`,`company_id`,`year`,`signature`,`time_added`,`edited_by`,`time_edited`) values (1,'February',0,165.225,'D-BASF',0,165.225,0,35,4720.725,4720.725,0,2517,2184,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(2,'March',0,169.397515,'D-BASF',0,169.397515,0,35,4839.929,4839.929,0,2946,1705,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(3,'April',0,193.967,'D-BASF',0,193.967,0,35,5541.914,5541.914,0,3259,2129,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(4,'May',0,237.975,'D-BASF',0,237.975,0,35,6799.27392,6799.27392,0,3826,2483,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(5,'June',0,301.958,'D-BASF',0,301.958,0,35,8627.37292,8627.37292,0,6099,1988,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(6,'July',0,270.566,'D-BASF',0,270.566,0,35,7730.46616,7730.46616,0,6464,2384,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(7,'July',0,18.0564,'D-BASF',0,18.0564,0,35,480.742,480.742,0,4503,3074,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2012','3ADM8790','2014-03-18','N/A','0000-00-00'),(8,'August',0,31.2865,'D-BASF',0,31.2865,0,35,893.9,893.9,0,4242,3305,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2012','3ADM8790','2014-03-18','N/A','0000-00-00'),(10,'September',0,54.985,'D-BASF',0,54.985,0,35,1571,1571,0,5644,2867,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2012','3ADM8790','2014-03-18','N/A','0000-00-00'),(11,'October',0,64.267,'D-BASF',0,64.267,0,35,1836.2,1836.2,0,5334,3121,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2012','3ADM8790','2014-03-18','N/A','0000-00-00'),(12,'November',0,80.96893,'D-BASF',0,80.96893,0,35,2313.398,2313.398,0,3905,3090,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2012','3ADM8790','2014-03-18','N/A','0000-00-00'),(13,'December',0,61.1315,'D-SBF',0,61.1315,0,35,1746.6,1746.6,0,4622,2750,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2012','3ADM8790','2014-03-18','N/A','0000-00-00'),(14,'January',0,50.60965,'D-SBF',0,50.60965,0,35,1445.99,1445.99,0,4480,2076,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(15,'November',0,313.975,'D-BASF',0,313.975,0,0.035,8970.733146,8970.733146,0,6464,2384,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00'),(16,'January',0,306.88,'D-BASF',0,8768,0,0.035,8768,8768,0,4480,2076,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2014','3ADM8790','2014-03-18','N/A','0000-00-00'),(17,'December',0,240.912,'D-BASF',0,6883.21,0,0.035,6883.21,6883.21,0,6464,2384,'FRESH FRI OIL,POPCO  OIL,SALIT  OIL,DIRIA,MPISHI POA,FRYMATE,PWANI SBF,FRY KING','N/A',18,'2013','3ADM8790','2014-03-18','N/A','0000-00-00');

/*Table structure for table `oil_tablea1` */

DROP TABLE IF EXISTS `oil_tablea1`;

CREATE TABLE `oil_tablea1` (
  `fortifiedOilA1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `supplierCOANumber` varchar(45) DEFAULT NULL,
  `numberOfCans` double DEFAULT NULL,
  `lotID` varchar(45) DEFAULT NULL,
  `expirationDate` varchar(45) DEFAULT NULL,
  `dispatchedLotID` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fortifiedOilA1ID`),
  KEY `fortifiedOilA1_manufacturerfortified` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oil_tablea1` */

/*Table structure for table `oil_tableb1` */

DROP TABLE IF EXISTS `oil_tableb1`;

CREATE TABLE `oil_tableb1` (
  `fortifiedoilb1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `batchNumber` varchar(45) DEFAULT NULL,
  `batchSize` double DEFAULT NULL,
  `vitaminAAmount` double DEFAULT NULL,
  `premixStart` varchar(8) DEFAULT NULL,
  `premixEnd` varchar(8) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fortifiedoilb1ID`),
  KEY `fortifiedoilb1_manufacturerfortified` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oil_tableb1` */

/*Table structure for table `oil_tableb2` */

DROP TABLE IF EXISTS `oil_tableb2`;

CREATE TABLE `oil_tableb2` (
  `fortifiedoilb2ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) NOT NULL,
  `deviceCondition` tinyint(1) NOT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `checkedBy` varchar(45) DEFAULT NULL,
  `deviceCompNumber` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fortifiedoilb2ID`),
  KEY `deviceCompNumber` (`deviceCompNumber`),
  KEY `manufacturerCompName` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oil_tableb2` */

/*Table structure for table `oil_tablec1` */

DROP TABLE IF EXISTS `oil_tablec1`;

CREATE TABLE `oil_tablec1` (
  `fortifiedOilC1ID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftTime` varchar(8) DEFAULT NULL,
  `oilProduced` double DEFAULT NULL,
  `premixUsed` double DEFAULT NULL,
  `oilFortified` double DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fortifiedOilC1ID`),
  KEY `fortifiedOilC1_iodizationcenters` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oil_tablec1` */

/*Table structure for table `premixtype` */

DROP TABLE IF EXISTS `premixtype`;

CREATE TABLE `premixtype` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE KEY `ProdName_UNIQUE` (`productName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `premixtype` */

insert  into `premixtype`(`productId`,`productName`) values (2,'Iodate'),(1,'Iodine'),(3,'Vitamins and mineral premix');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

/*Table structure for table `salt_markettable` */

DROP TABLE IF EXISTS `salt_markettable`;

CREATE TABLE `salt_markettable` (
  `SaltMarketID` int(11) NOT NULL AUTO_INCREMENT,
  `sample_no` varchar(100) NOT NULL,
  `date_collected` varchar(50) NOT NULL,
  `time_collected` varchar(50) NOT NULL,
  `prod_name` varchar(250) NOT NULL,
  `collection_method` text NOT NULL,
  `collection_reason` text NOT NULL,
  `collector` varchar(250) NOT NULL,
  `dealer` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `sample_size` double NOT NULL,
  `date_dispatched` varchar(50) NOT NULL,
  `laboratory` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `invoice_date` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `specimen_seal` varchar(250) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`SaltMarketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salt_markettable` */

/*Table structure for table `smallscalea1` */

DROP TABLE IF EXISTS `smallscalea1`;

CREATE TABLE `smallscalea1` (
  `transactionNumber` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `harvestYear` int(11) NOT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `weightKg` double DEFAULT NULL,
  `lotNumber` varchar(45) DEFAULT NULL,
  `contentOfIodine` int(11) NOT NULL,
  PRIMARY KEY (`transactionNumber`),
  KEY `manufacturerCompName` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `smallscalea1` */

/*Table structure for table `smallscalea1dispatched` */

DROP TABLE IF EXISTS `smallscalea1dispatched`;

CREATE TABLE `smallscalea1dispatched` (
  `smallScaleA1DispatchedID` int(11) NOT NULL AUTO_INCREMENT,
  `harvestYear` double NOT NULL,
  `amountUsed` double NOT NULL,
  `smallScaleA1ID` int(11) NOT NULL,
  `amountOfPremixProduced` double NOT NULL,
  PRIMARY KEY (`smallScaleA1DispatchedID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `smallscalea1dispatched` */

/*Table structure for table `smallscalea2` */

DROP TABLE IF EXISTS `smallscalea2`;

CREATE TABLE `smallscalea2` (
  `transcationNumber` int(11) NOT NULL AUTO_INCREMENT,
  `harvestYear` double NOT NULL,
  `dates` date DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `weightKg` double DEFAULT NULL,
  `lotNumber` varchar(45) DEFAULT NULL,
  `contentIodine` double NOT NULL,
  PRIMARY KEY (`transcationNumber`),
  KEY `manufacturerCompound_smallScaleA2` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `smallscalea2` */

/*Table structure for table `smallscalea2dispatched` */

DROP TABLE IF EXISTS `smallscalea2dispatched`;

CREATE TABLE `smallscalea2dispatched` (
  `dispatchedNumber` int(11) NOT NULL AUTO_INCREMENT,
  `harvestYear` int(11) NOT NULL,
  `contentOfIodine` double NOT NULL,
  `amountUsed` double NOT NULL,
  `amountOfSaltProduced` double NOT NULL,
  `smallScaleA2ID` int(11) NOT NULL,
  PRIMARY KEY (`dispatchedNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `smallscalea2dispatched` */

/*Table structure for table `sugar_externalfortb1` */

DROP TABLE IF EXISTS `sugar_externalfortb1`;

CREATE TABLE `sugar_externalfortb1` (
  `sugar_externalfortB1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `opening` varchar(45) DEFAULT NULL,
  `closing` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_externalfortB1ID`),
  KEY `sugar_externalfortB1_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_externalfortb1` */

/*Table structure for table `sugar_externalfortb2` */

DROP TABLE IF EXISTS `sugar_externalfortb2`;

CREATE TABLE `sugar_externalfortb2` (
  `sugar_externalfortB2ID` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `productionArea` varchar(45) DEFAULT NULL,
  `packagingArea` varchar(45) DEFAULT NULL,
  `warehouse` varchar(45) DEFAULT NULL,
  `staffFacilities` varchar(45) DEFAULT NULL,
  `hygiene` varchar(45) DEFAULT NULL,
  `protectiveClothing` varchar(45) DEFAULT NULL,
  `trainedInTasks` varchar(45) DEFAULT NULL,
  `receiptAndStorage` varchar(45) DEFAULT NULL,
  `feederVerification` varchar(45) DEFAULT NULL,
  `sugarSampling` varchar(45) DEFAULT NULL,
  `vitaminAAssay` varchar(45) DEFAULT NULL,
  `premixInventory` varchar(45) DEFAULT NULL,
  `adequateStorage` varchar(45) DEFAULT NULL,
  `FIFOSystem` varchar(45) DEFAULT NULL,
  `deliveredAdequately` varchar(45) DEFAULT NULL,
  `retinolLevels` varchar(45) DEFAULT NULL,
  `feederFlow` varchar(45) DEFAULT NULL,
  `feederRecords` varchar(45) DEFAULT NULL,
  `feederAdjusted` varchar(45) DEFAULT NULL,
  `premixLevelAdequate` varchar(45) DEFAULT NULL,
  `maintenanceEvidence` varchar(45) DEFAULT NULL,
  `sugarRecords` varchar(45) DEFAULT NULL,
  `sugarSamples` varchar(45) DEFAULT NULL,
  `sugarRatio` varchar(45) DEFAULT NULL,
  `retinolResults` varchar(45) DEFAULT NULL,
  `semiQuantitativeMethod` varchar(45) DEFAULT NULL,
  `internalLab` varchar(45) DEFAULT NULL,
  `externalLab` varchar(45) DEFAULT NULL,
  `dailySamples` varchar(45) DEFAULT NULL,
  `last30Samples` varchar(45) DEFAULT NULL,
  `labelingSpecifications` varchar(45) DEFAULT NULL,
  `fortifiedSugar` varchar(45) DEFAULT NULL,
  `FIFOSystemDispatch` varchar(45) DEFAULT NULL,
  `recommendations` varchar(45) DEFAULT NULL,
  `correctiveActions` varchar(45) DEFAULT NULL,
  `assessment` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestions` varchar(45) DEFAULT NULL,
  `premixType` varchar(45) DEFAULT NULL,
  `IDSamples` varchar(45) DEFAULT NULL,
  `estimatedAverage0` varchar(45) DEFAULT NULL,
  `inspectionResults0` varchar(45) DEFAULT NULL,
  `IDOtherSamples` varchar(45) DEFAULT NULL,
  `estimatedAverage1` varchar(45) DEFAULT NULL,
  `inspectionResults1` varchar(45) DEFAULT NULL,
  `officerName` varchar(45) DEFAULT NULL,
  `officerSignature` varchar(45) DEFAULT NULL,
  `officerDate` varchar(45) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  `supervisorSignature` varchar(45) DEFAULT NULL,
  `supervisorDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_externalfortB2ID`),
  KEY `sugar_externalfortB2_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_externalfortb2` */

/*Table structure for table `sugar_externalfortb3` */

DROP TABLE IF EXISTS `sugar_externalfortb3`;

CREATE TABLE `sugar_externalfortb3` (
  `sugar_externalfortB3ID` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `areasVisited` varchar(100) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestionsForImprovement` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `inspectorDate` varchar(45) DEFAULT NULL,
  `receivedDate` varchar(45) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  `supervisorDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_externalfortB3ID`),
  KEY `sugar_externalfortB3_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_externalfortb3` */

/*Table structure for table `sugar_internalforta1` */

DROP TABLE IF EXISTS `sugar_internalforta1`;

CREATE TABLE `sugar_internalforta1` (
  `sugar_internalfortA1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `clean` varchar(45) DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `reportingDate` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortA1ID`),
  KEY `sugar_internalfortA1_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalforta1` */

/*Table structure for table `sugar_internalforta2` */

DROP TABLE IF EXISTS `sugar_internalforta2`;

CREATE TABLE `sugar_internalforta2` (
  `sugar_internalfortA2ID` int(11) NOT NULL AUTO_INCREMENT,
  `generalCleanUp` varchar(45) DEFAULT NULL,
  `generalCleanUpCondition` varchar(45) DEFAULT NULL,
  `generalCleanUpObservation` varchar(45) DEFAULT NULL,
  `lubrication` varchar(45) DEFAULT NULL,
  `lubricationCondition` varchar(45) DEFAULT NULL,
  `lubricationObservation` varchar(45) DEFAULT NULL,
  `oilAspertion` varchar(45) DEFAULT NULL,
  `oilAspertionCondition` varchar(45) DEFAULT NULL,
  `oilAspertionObservation` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  `otherCondition` varchar(45) DEFAULT NULL,
  `otherObservation` varchar(45) DEFAULT NULL,
  `scalesCleanUp` varchar(45) DEFAULT NULL,
  `scalesCleanUpCondition` varchar(45) DEFAULT NULL,
  `scalesCleanUpObservation` varchar(45) DEFAULT NULL,
  `scalesCalibrated` varchar(45) DEFAULT NULL,
  `scalesCalibratedCondition` varchar(45) DEFAULT NULL,
  `scalesCalibratedObservation` varchar(45) DEFAULT NULL,
  `bathCleanUp` varchar(45) DEFAULT NULL,
  `bathCleanUpCondition` varchar(45) DEFAULT NULL,
  `bathCleanUpObservation` varchar(45) DEFAULT NULL,
  `bathTemperature` varchar(45) DEFAULT NULL,
  `bathTemperatureCondition` varchar(45) DEFAULT NULL,
  `bathTemperatureObservation` varchar(45) DEFAULT NULL,
  `stirrerPerformance` varchar(45) DEFAULT NULL,
  `stirrerPerformanceCondition` varchar(45) DEFAULT NULL,
  `stirrerPerformaneObservation` varchar(45) DEFAULT NULL,
  `nitrogenPerformance` varchar(45) DEFAULT NULL,
  `nitrogenPerformanceCondition` varchar(45) DEFAULT NULL,
  `nitrogenPerformanceObservation` varchar(45) DEFAULT NULL,
  `cartsCleanUp` varchar(45) DEFAULT NULL,
  `cartsCleanUpCondition` varchar(45) DEFAULT NULL,
  `cartsCleanUpObservation` varchar(45) DEFAULT NULL,
  `mobility` varchar(45) DEFAULT NULL,
  `mobilityCondition` varchar(45) DEFAULT NULL,
  `mobilityObservation` varchar(45) DEFAULT NULL,
  `integrity` varchar(45) DEFAULT NULL,
  `integrityCondition` varchar(45) DEFAULT NULL,
  `integrityObservation` varchar(45) DEFAULT NULL,
  `sewingPerformance` varchar(45) DEFAULT NULL,
  `sewingPerformanceCondition` varchar(45) DEFAULT NULL,
  `sewingPerformanceObservation` varchar(45) DEFAULT NULL,
  `cylinderCleanUp` varchar(45) DEFAULT NULL,
  `cylinderCleanUpCondition` varchar(45) DEFAULT NULL,
  `cylinderCleanUpObservation` varchar(45) DEFAULT NULL,
  `flaskCleanUp` varchar(45) DEFAULT NULL,
  `flaskCleanUpCondition` varchar(45) DEFAULT NULL,
  `flaskCleanUpObservation` varchar(45) DEFAULT NULL,
  `spatulaCleanUp` varchar(45) DEFAULT NULL,
  `spatulaCleanUpCondition` varchar(45) DEFAULT NULL,
  `spatulaCleanUpObservation` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `deviceCompNumber` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortA2ID`),
  KEY `sugar_internalfortA2_ibfk_1` (`deviceCompNumber`),
  KEY `sugar_internalfortA2_ibfk_2` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalforta2` */

/*Table structure for table `sugar_internalforta3` */

DROP TABLE IF EXISTS `sugar_internalforta3`;

CREATE TABLE `sugar_internalforta3` (
  `sugar_internalfortA3ID` int(11) NOT NULL AUTO_INCREMENT,
  `blenderDate` varchar(45) DEFAULT NULL,
  `blenderMaintenance` varchar(45) DEFAULT NULL,
  `blenderCalibration` varchar(45) DEFAULT NULL,
  `benderObservation` varchar(45) DEFAULT NULL,
  `blenderNextCalibration` varchar(45) DEFAULT NULL,
  `scalesDate` varchar(45) DEFAULT NULL,
  `scalesMaintenance` varchar(45) DEFAULT NULL,
  `scalesCalibration` varchar(45) DEFAULT NULL,
  `scalesObservation` varchar(45) DEFAULT NULL,
  `scalesNextCalibration` varchar(45) DEFAULT NULL,
  `balanceDate` varchar(45) DEFAULT NULL,
  `balanceMaintenance` varchar(45) DEFAULT NULL,
  `balanceCalibration` varchar(45) DEFAULT NULL,
  `balanceObservation` varchar(45) DEFAULT NULL,
  `balanceNextCalibration` varchar(45) DEFAULT NULL,
  `heatingBathDate` varchar(45) DEFAULT NULL,
  `heatingBathMaintenance` varchar(45) DEFAULT NULL,
  `heatingBathCalibration` varchar(45) DEFAULT NULL,
  `heatingBathObservation` varchar(45) DEFAULT NULL,
  `heatingBathNextCalibration` varchar(45) DEFAULT NULL,
  `electricStirrerDate` varchar(45) DEFAULT NULL,
  `electricStirrerMaintenance` varchar(45) DEFAULT NULL,
  `electricStirrerCalibration` varchar(45) DEFAULT NULL,
  `electricStirrerObservation` varchar(45) DEFAULT NULL,
  `electricStirrerNextCalibration` varchar(45) DEFAULT NULL,
  `nitrogenDeviceDate` varchar(45) DEFAULT NULL,
  `nitrogenDeviceMaintenance` varchar(45) DEFAULT NULL,
  `nitrogenDeviceCalibration` varchar(45) DEFAULT NULL,
  `nitrogenDeviceObservation` varchar(45) DEFAULT NULL,
  `nitrogenDeviceNextCalibration` varchar(45) DEFAULT NULL,
  `cartsDate` varchar(45) DEFAULT NULL,
  `cartsMaintenance` varchar(45) DEFAULT NULL,
  `cartsCalibration` varchar(45) DEFAULT NULL,
  `cartsObservation` varchar(45) DEFAULT NULL,
  `cartsNextCalibration` varchar(45) DEFAULT NULL,
  `sewingMachineDate` varchar(45) DEFAULT NULL,
  `sewingMachineMaintenance` varchar(45) DEFAULT NULL,
  `sewingMachineCalibration` varchar(45) DEFAULT NULL,
  `sewingMachineObservation` varchar(45) DEFAULT NULL,
  `sewingMachineNextCalibration` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortA3ID`),
  KEY `sugar_internalfortA3_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalforta3` */

/*Table structure for table `sugar_internalfortb1` */

DROP TABLE IF EXISTS `sugar_internalfortb1`;

CREATE TABLE `sugar_internalfortb1` (
  `sugar_internalfortB1ID` int(11) NOT NULL AUTO_INCREMENT,
  `harvestYear` varchar(45) DEFAULT NULL,
  `premixQuantity` double DEFAULT NULL,
  `sugarProduction` double DEFAULT NULL,
  `sugarInventory` double DEFAULT NULL,
  `sugarCost` double DEFAULT NULL,
  `vitaminAInventory` double DEFAULT NULL,
  `vitaminACost` double DEFAULT NULL,
  `antioxidantInventory` double DEFAULT NULL,
  `antioxidantCost` double DEFAULT NULL,
  `vegetableOilInventory` double DEFAULT NULL,
  `vegetableOilCost` double DEFAULT NULL,
  `polythyleneInventory` double DEFAULT NULL,
  `polythyleneCost` double DEFAULT NULL,
  `polypropyleneInventory` double DEFAULT NULL,
  `polypropyleneCost` double DEFAULT NULL,
  `nitrogenInventory` double DEFAULT NULL,
  `nitrogenCost` double DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `preparedDate` varchar(45) DEFAULT NULL,
  `approvedBy` varchar(45) DEFAULT NULL,
  `approvedDate` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortB1ID`),
  KEY `sugar_internalfortB1_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalfortb1` */

/*Table structure for table `sugar_internalfortc1` */

DROP TABLE IF EXISTS `sugar_internalfortc1`;

CREATE TABLE `sugar_internalfortc1` (
  `sugar_internalfortC1ID` int(11) NOT NULL AUTO_INCREMENT,
  `premixType` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `lotNumber` varchar(45) DEFAULT NULL,
  `expirationDate` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `COA` varchar(45) DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortC1ID`),
  KEY `sugar_intenalfortC1_ibfk_1` (`manufacturerCompName`),
  KEY `sugar_internalfortC1_ibfk_2` (`premixType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalfortc1` */

/*Table structure for table `sugar_internalfortc2` */

DROP TABLE IF EXISTS `sugar_internalfortc2`;

CREATE TABLE `sugar_internalfortc2` (
  `sugar_internalfortB2ID` int(11) NOT NULL AUTO_INCREMENT,
  `vitaminABalance` double DEFAULT NULL,
  `vitaminAReceived` double DEFAULT NULL,
  `vitaminA1` double DEFAULT NULL,
  `vitaminA2` double DEFAULT NULL,
  `vitaminA3` double DEFAULT NULL,
  `vitaminA4` double DEFAULT NULL,
  `vitaminA5` double DEFAULT NULL,
  `vitaminA6` double DEFAULT NULL,
  `sugarBalance` double DEFAULT NULL,
  `sugarReceived` double DEFAULT NULL,
  `sugar1` double DEFAULT NULL,
  `sugar2` double DEFAULT NULL,
  `sugar3` double DEFAULT NULL,
  `sugar4` double DEFAULT NULL,
  `sugar5` double DEFAULT NULL,
  `sugar6` double DEFAULT NULL,
  `vegetableOilBalance` double DEFAULT NULL,
  `vegetableOilReceived` double DEFAULT NULL,
  `vegetableOil1` double DEFAULT NULL,
  `vegetableOil2` double DEFAULT NULL,
  `vegetableOil3` double DEFAULT NULL,
  `vegetableOil4` double DEFAULT NULL,
  `vegetableOil5` double DEFAULT NULL,
  `vegetableOil6` double DEFAULT NULL,
  `ronoxanBalance` double DEFAULT NULL,
  `ronoxanReceived` double DEFAULT NULL,
  `ronoxan1` double DEFAULT NULL,
  `ronoxan2` double DEFAULT NULL,
  `ronoxan3` double DEFAULT NULL,
  `ronoxan4` double DEFAULT NULL,
  `ronoxan5` double DEFAULT NULL,
  `ronoxan6` double DEFAULT NULL,
  `nitrogenBalance` double DEFAULT NULL,
  `nitrogenReceived` double DEFAULT NULL,
  `nitrogen1` double DEFAULT NULL,
  `nitrogen2` double DEFAULT NULL,
  `nitrogen3` double DEFAULT NULL,
  `nitrogen4` double DEFAULT NULL,
  `nitrogen5` double DEFAULT NULL,
  `nitrogen6` double DEFAULT NULL,
  `polythyleneBalance` double DEFAULT NULL,
  `polythyleneReceived` double DEFAULT NULL,
  `polythylene1` double DEFAULT NULL,
  `polythylene2` double DEFAULT NULL,
  `polythylene3` double DEFAULT NULL,
  `polythylene4` double DEFAULT NULL,
  `polythylene5` double DEFAULT NULL,
  `polythylene6` double DEFAULT NULL,
  `polypropyleneBalance` double DEFAULT NULL,
  `polypropyleneReceived` double DEFAULT NULL,
  `polypropylene1` double DEFAULT NULL,
  `polypropylene2` double DEFAULT NULL,
  `polypropylene3` double DEFAULT NULL,
  `polypropylene4` double DEFAULT NULL,
  `polypropylene5` double DEFAULT NULL,
  `polypropylene6` double DEFAULT NULL,
  `sewingThreadBalance` double DEFAULT NULL,
  `sewingThreadReceived` double DEFAULT NULL,
  `sewingThread1` double DEFAULT NULL,
  `sewingThread2` double DEFAULT NULL,
  `sewingThread3` double DEFAULT NULL,
  `sewingThread4` double DEFAULT NULL,
  `sewingThread5` double DEFAULT NULL,
  `sewingThread6` double DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortB2ID`),
  KEY `sugar_internalfortC2_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalfortc2` */

/*Table structure for table `sugar_internalfortc3` */

DROP TABLE IF EXISTS `sugar_internalfortc3`;

CREATE TABLE `sugar_internalfortc3` (
  `sugar_internalfortC3ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `lotID` double DEFAULT NULL,
  `bagsProduced` double DEFAULT NULL,
  `deliveryNumber` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `dispatchedLotID` double DEFAULT NULL,
  `dispatchedBags` double DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `transactionDate` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortC3ID`),
  KEY `sugar_internalfortC3_factories` (`factoryName`),
  KEY `sugar_internalfortC3_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalfortc3` */

/*Table structure for table `sugar_internalfortd1` */

DROP TABLE IF EXISTS `sugar_internalfortd1`;

CREATE TABLE `sugar_internalfortd1` (
  `sugar_internalfortD1ID` int(11) NOT NULL AUTO_INCREMENT,
  `lotsID` double DEFAULT NULL,
  `productionDate` varchar(45) DEFAULT NULL,
  `samplesDate` varchar(45) DEFAULT NULL,
  `laboratoryReport` varchar(45) DEFAULT NULL,
  `reportDate` varchar(45) DEFAULT NULL,
  `vitaminA` double DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalfortD1ID`),
  KEY `sugar_internalfortD1_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalfortd1` */

/*Table structure for table `sugar_internalqca1` */

DROP TABLE IF EXISTS `sugar_internalqca1`;

CREATE TABLE `sugar_internalqca1` (
  `sugar_internalQCA1ID` int(11) NOT NULL AUTO_INCREMENT,
  `harvestYear` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `numberOfBags` double DEFAULT NULL,
  `lotID0` double DEFAULT NULL,
  `productionDate` varchar(45) DEFAULT NULL,
  `dispatchedBags` double DEFAULT NULL,
  `lotID1` double DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `receivedDate` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalQCA1ID`),
  KEY `sugar_internalQCA1_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalqca1` */

/*Table structure for table `sugar_internalqcb1` */

DROP TABLE IF EXISTS `sugar_internalqcb1`;

CREATE TABLE `sugar_internalqcb1` (
  `sugar_internalQCB1ID` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `harvestYear` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `productionRate` double DEFAULT NULL,
  `theoreticalFeederFlow` double DEFAULT NULL,
  `feederFlow1` double DEFAULT NULL,
  `feederFlow2` double DEFAULT NULL,
  `feederFlow3` double DEFAULT NULL,
  `adjusted` varchar(45) DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalQCB1ID`),
  KEY `sugar_internalQCB1_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalqcb1` */

/*Table structure for table `sugar_internalqcb2` */

DROP TABLE IF EXISTS `sugar_internalqcb2`;

CREATE TABLE `sugar_internalqcb2` (
  `sugar_internalQCB2ID` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `harvestYear` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `sugarProduced` double DEFAULT NULL,
  `bagNumbers` double DEFAULT NULL,
  `lotID` varchar(45) DEFAULT NULL,
  `sugarPremixRatio` double DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalQCB2ID`),
  KEY `sugar_internalQCB2_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalqcb2` */

/*Table structure for table `sugar_internalqcc1` */

DROP TABLE IF EXISTS `sugar_internalqcc1`;

CREATE TABLE `sugar_internalqcc1` (
  `sugar_internalQCC1ID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftTime` varchar(45) DEFAULT NULL,
  `sugarProduced` double DEFAULT NULL,
  `premixUsed0` double DEFAULT NULL,
  `fortifiedSugar` varchar(45) DEFAULT NULL,
  `premixUsed1` double DEFAULT NULL,
  `sugarPremix` double DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sugar_internalQCC1ID`),
  KEY `sugar_internalQCC1_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_internalqcc1` */

/*Table structure for table `sugar_markettable` */

DROP TABLE IF EXISTS `sugar_markettable`;

CREATE TABLE `sugar_markettable` (
  `SugarMarketID` int(11) NOT NULL AUTO_INCREMENT,
  `sample_no` varchar(100) NOT NULL,
  `date_collected` varchar(50) NOT NULL,
  `time_collected` varchar(50) NOT NULL,
  `prod_name` varchar(250) NOT NULL,
  `collection_method` text NOT NULL,
  `collection_reason` text NOT NULL,
  `collector` varchar(250) NOT NULL,
  `dealer` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `sample_size` double NOT NULL,
  `date_dispatched` varchar(50) NOT NULL,
  `laboratory` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `invoice_date` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `specimen_seal` varchar(250) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`SugarMarketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sugar_markettable` */

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(45) NOT NULL,
  `supplier_email` varchar(45) NOT NULL,
  `supplier_location` varchar(45) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suppliers` */

/*Table structure for table `user_rolers` */

DROP TABLE IF EXISTS `user_rolers`;

CREATE TABLE `user_rolers` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_rolers` */

insert  into `user_rolers`(`role_id`,`role`) values (1,'sa'),(2,'Administrator');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `usersID` bigint(20) NOT NULL AUTO_INCREMENT,
  `usersFullnames` varchar(80) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `userPassword` varchar(45) NOT NULL,
  `userRights` tinyint(1) NOT NULL,
  `user_role` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `affiliation` varchar(250) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `activationcode` varchar(250) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`usersID`),
  KEY `user_role` (`user_role`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`usersID`,`usersFullnames`,`userName`,`userPassword`,`userRights`,`user_role`,`company_id`,`affiliation`,`userEmail`,`activationcode`,`is_active`) values (1,'admin admin','admin','0192023a7bbd73250516f069df18b500',1,1,1,'MOPHS','admin@admin.com','y',1),(27,'Michael Saisi','3ADM8790','74ac823ea47c40b3aed1a2452a40d890',1,1,18,'Oil','msaisimunye80@gmail.com','y',1),(28,'Michael Saisi','3ADM6182','fc00fe1c3903d1c8f14dc35d4cafd428',1,1,19,'Maize','msaisimunye80@gmail.com','y',1),(29,'Michael Saisi','3ADM0651','3113379d37f2ba3008076c7ca5b5f5cb',1,1,20,'Wheat','msaisimunye80@gmail.com','y',1),(30,'Michael Saisi','3ADM2408','5a12e3260086b24dca996e4ab0655b8e',1,1,21,'Maize','msaisimunye80@gmail.com','y',1),(31,'Michael Saisi','3ADM1830','7eb61544135d756b8cb20c368c9effac',1,1,22,'Maize','msaisimunye80@gmail.com','y',1),(32,'Michael Saisi','3ADM3586','239b08847f384b2f1b7ca7042877d0e9',1,1,23,'Wheat','msaisimunye80@gmail.com','y',1),(33,'Michael Saisi','3ADM2687','5e442ef85c02d2892695b32362691bb8',1,1,24,'Wheat','msaisimunye80@gmail.com','y',1),(34,'Michael Saisi','3ADM9146','fcea920f7412b5da7be0cf42b8c93759',1,1,25,'Oil','msaisimunye80@gmail.com','y',1);

/*Table structure for table `vehicle_type` */

DROP TABLE IF EXISTS `vehicle_type`;

CREATE TABLE `vehicle_type` (
  `vehicleId` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleName` varchar(100) NOT NULL,
  PRIMARY KEY (`vehicleId`),
  KEY `vehicleName` (`vehicleName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_type` */

/*Table structure for table `wheat_externalfortb1` */

DROP TABLE IF EXISTS `wheat_externalfortb1`;

CREATE TABLE `wheat_externalfortb1` (
  `wheat_externalFortB1ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `signature` varchar(45) DEFAULT NULL,
  `opening` varchar(45) DEFAULT NULL,
  `closing` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_externalFortB1ID`),
  KEY `wheat_externalFortB1_manufacturerFortified` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_externalfortb1` */

/*Table structure for table `wheat_externalfortb2` */

DROP TABLE IF EXISTS `wheat_externalfortb2`;

CREATE TABLE `wheat_externalfortb2` (
  `wheat_externalFortB2ID` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `productionArea` varchar(45) DEFAULT NULL,
  `packagingArea` varchar(45) DEFAULT NULL,
  `warehouse` varchar(45) DEFAULT NULL,
  `staffFacilities` varchar(45) DEFAULT NULL,
  `hygiene` varchar(45) DEFAULT NULL,
  `wearingProtective` varchar(45) DEFAULT NULL,
  `trainnedInTasks` varchar(45) DEFAULT NULL,
  `receiptAndStorage` varchar(45) DEFAULT NULL,
  `premixDilutionApplicable` varchar(45) DEFAULT NULL,
  `feederVerification` varchar(45) DEFAULT NULL,
  `samplingOfWheatFlour` varchar(45) DEFAULT NULL,
  `ironSpotTest` varchar(45) DEFAULT NULL,
  `premixInventory` varchar(45) DEFAULT NULL,
  `COAReceived` varchar(45) DEFAULT NULL,
  `premixStored` varchar(45) DEFAULT NULL,
  `FIFOSystemPremix` varchar(45) DEFAULT NULL,
  `FIFOSystemFlour` varchar(45) DEFAULT NULL,
  `premixHandledWell` varchar(45) DEFAULT NULL,
  `premixDilution` varchar(45) DEFAULT NULL,
  `homogeneityAssessed` varchar(45) DEFAULT NULL,
  `adequateStorage` varchar(45) DEFAULT NULL,
  `recordsOfFeeder` varchar(45) DEFAULT NULL,
  `premixLevel` varchar(45) DEFAULT NULL,
  `recordsOfFlour` varchar(45) DEFAULT NULL,
  `flourSamples` varchar(45) DEFAULT NULL,
  `ratioWheatProduced` varchar(45) DEFAULT NULL,
  `ironContent` varchar(45) DEFAULT NULL,
  `spotTestIron` varchar(45) DEFAULT NULL,
  `quantitativeMethodIron` varchar(45) DEFAULT NULL,
  `quantitativeMethodVitaminA` varchar(45) DEFAULT NULL,
  `dailyCompositeSamples` varchar(45) DEFAULT NULL,
  `labellingMeetsSpecifications` varchar(45) DEFAULT NULL,
  `fortifiedWheatFlour` varchar(45) DEFAULT NULL,
  `recommendations` varchar(45) DEFAULT NULL,
  `correctiveActionsTaken` varchar(45) DEFAULT NULL,
  `assessment` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestions` varchar(45) DEFAULT NULL,
  `typeOfIron` varchar(45) DEFAULT NULL,
  `compositeID` varchar(45) DEFAULT NULL,
  `factoryEstimatesIronMgPerKg` double DEFAULT NULL,
  `labResultsIronMgPerKg` double DEFAULT NULL,
  `inspectionVitaminMgPerKg0` double DEFAULT NULL,
  `IDOtherSamples` varchar(45) DEFAULT NULL,
  `ironMgPerKg2` double DEFAULT NULL,
  `vitaminAMgPerKg1` double DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  `supervisorDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_externalFortB2ID`),
  KEY `factoryName` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_externalfortb2` */

/*Table structure for table `wheat_externalfortb3` */

DROP TABLE IF EXISTS `wheat_externalfortb3`;

CREATE TABLE `wheat_externalfortb3` (
  `wheat_externalFortB3ID` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionRegistry` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  `dateOfInspection` varchar(45) DEFAULT NULL,
  `factoryRepresentative` varchar(45) DEFAULT NULL,
  `areasVisited` varchar(100) DEFAULT NULL,
  `nonCompliances` varchar(45) DEFAULT NULL,
  `suggestionsForImprovement` varchar(45) DEFAULT NULL,
  `publicHealthOfficer` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `inspectorDate` varchar(45) DEFAULT NULL,
  `receivedDate` varchar(45) DEFAULT NULL,
  `supervisorName` varchar(45) DEFAULT NULL,
  `supervisorDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_externalFortB3ID`),
  KEY `wheat_externalFortB3_factories` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_externalfortb3` */

/*Table structure for table `wheat_internalforta1` */

DROP TABLE IF EXISTS `wheat_internalforta1`;

CREATE TABLE `wheat_internalforta1` (
  `wheat_internalFortA1ID` int(11) NOT NULL AUTO_INCREMENT,
  `productType` varchar(10) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  `inspectedBy` varchar(45) DEFAULT NULL,
  `purchaseOrderNumber` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `integrityObservation` varchar(45) DEFAULT NULL,
  `lotNumber` varchar(10) DEFAULT NULL,
  `lotObservation` varchar(45) DEFAULT NULL,
  `productionDate` varchar(10) DEFAULT NULL,
  `productionObservation` varchar(45) DEFAULT NULL,
  `expiryDate` varchar(10) DEFAULT NULL,
  `expiryObservation` varchar(45) DEFAULT NULL,
  `micronutrientLevelsInLabel` varchar(10) DEFAULT NULL,
  `micronutrientObservation` varchar(45) DEFAULT NULL,
  `certificateOfAnalysis` varchar(10) DEFAULT NULL,
  `coaObservation` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  `otherObservation` varchar(45) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `reasonsForRejection` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_internalFortA1ID`),
  KEY `wheat_internalFortA1_premixType` (`productType`),
  KEY `wheat_internalFortA1_manufacturercompound` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_internalforta1` */

/*Table structure for table `wheat_internalforta2` */

DROP TABLE IF EXISTS `wheat_internalforta2`;

CREATE TABLE `wheat_internalforta2` (
  `wheat_internalFortA2ID` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `lotID0` varchar(45) DEFAULT NULL,
  `expiryDate` varchar(45) DEFAULT NULL,
  `dispatchedQuantity` double DEFAULT NULL,
  `lotID1` varchar(45) DEFAULT NULL,
  `reportingDate` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  `manufacturerCompName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_internalFortA2ID`),
  KEY `wheat_internalFortA2_ibfk_1` (`manufacturerCompName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_internalforta2` */

/*Table structure for table `wheat_internalfortb1` */

DROP TABLE IF EXISTS `wheat_internalfortb1`;

CREATE TABLE `wheat_internalfortb1` (
  `wheat_internalFortB1ID` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `productionRate` double DEFAULT NULL,
  `theoreticalFeederFlow` double DEFAULT NULL,
  `feederFlow1` double DEFAULT NULL,
  `feederFlow2` double DEFAULT NULL,
  `feederFlow3` double DEFAULT NULL,
  `adjusted` varchar(45) DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `transactedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_internalFortB1ID`),
  KEY `wheat_internalFortB1_iodizationcenters` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_internalfortb1` */

/*Table structure for table `wheat_internalfortb2` */

DROP TABLE IF EXISTS `wheat_internalfortb2`;

CREATE TABLE `wheat_internalfortb2` (
  `wheat_internalFortB2ID` int(11) NOT NULL AUTO_INCREMENT,
  `factoryName` varchar(45) DEFAULT NULL,
  `shiftTime` varchar(45) DEFAULT NULL,
  `flourProduced` double DEFAULT NULL,
  `lotID` varchar(45) DEFAULT NULL,
  `premixUsed` double DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `observations` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_internalFortB2ID`),
  KEY `wheat_internalFortB2_iodizationCenter` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_internalfortb2` */

/*Table structure for table `wheat_internalfortc1` */

DROP TABLE IF EXISTS `wheat_internalfortc1`;

CREATE TABLE `wheat_internalfortc1` (
  `wheat_internalFortC1ID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftTime` varchar(45) DEFAULT NULL,
  `wheatProduced` double DEFAULT NULL,
  `premixUsed` double DEFAULT NULL,
  `wheatFlourVSPremix` double DEFAULT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `dates` varchar(45) DEFAULT NULL,
  `responsible` varchar(45) DEFAULT NULL,
  `factoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wheat_internalFortC1ID`),
  KEY `wheat_internalFortC1_iodizationcenters` (`factoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_internalfortc1` */

/*Table structure for table `wheat_markettable` */

DROP TABLE IF EXISTS `wheat_markettable`;

CREATE TABLE `wheat_markettable` (
  `WheatMarketID` int(11) NOT NULL AUTO_INCREMENT,
  `sample_no` varchar(100) NOT NULL,
  `date_collected` varchar(50) NOT NULL,
  `time_collected` varchar(50) NOT NULL,
  `prod_name` varchar(250) NOT NULL,
  `collection_method` text NOT NULL,
  `collection_reason` text NOT NULL,
  `collector` varchar(250) NOT NULL,
  `dealer` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `sample_size` double NOT NULL,
  `date_dispatched` varchar(50) NOT NULL,
  `laboratory` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `invoice_date` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `specimen_seal` varchar(250) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(250) NOT NULL,
  `edited_by` varchar(250) NOT NULL,
  `time_edited` varchar(250) NOT NULL,
  PRIMARY KEY (`WheatMarketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_markettable` */

/*Table structure for table `wheat_production` */

DROP TABLE IF EXISTS `wheat_production`;

CREATE TABLE `wheat_production` (
  `WheatProductionID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_month` varchar(20) NOT NULL,
  `opening_prmx_balance` double NOT NULL,
  `qty_prmx_delivered` double NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `qty_prmx_rejected` double NOT NULL,
  `qty_issued_o_f` double NOT NULL,
  `qty_issued_m` double NOT NULL,
  `closing_balance` double NOT NULL,
  `dosage_rate_o_f` double NOT NULL,
  `theoretical_prod` double NOT NULL,
  `actual_prod_oil` double NOT NULL,
  `actual_prod_fats` double NOT NULL,
  `dosage_rate_m` double NOT NULL,
  `theoretical_prod_m` double NOT NULL,
  `actual_prod_m` double NOT NULL,
  `production_unfort` double NOT NULL,
  `exp_fats` double NOT NULL,
  `exp_oil` double NOT NULL,
  `brands` text NOT NULL,
  PRIMARY KEY (`WheatProductionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wheat_production` */

/*Table structure for table `wheat_productiontable` */

DROP TABLE IF EXISTS `wheat_productiontable`;

CREATE TABLE `wheat_productiontable` (
  `WheatProductionID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_month` varchar(20) NOT NULL,
  `opening_balance` double NOT NULL,
  `qty_delivered` double NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `qty_rejected` double NOT NULL,
  `qty_issued` double NOT NULL,
  `closing_balance` double NOT NULL,
  `dosage_rate` double NOT NULL,
  `theoretical_prod` double NOT NULL,
  `actual_prod` double NOT NULL,
  `production_unfort` double NOT NULL,
  `exp_fort` double NOT NULL,
  `exp_unfort` double NOT NULL,
  `fort_brands` text NOT NULL,
  `unfort_brands` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `signature` varchar(250) NOT NULL,
  `time_added` varchar(20) NOT NULL DEFAULT '0000-00-00',
  `edited_by` varchar(250) NOT NULL DEFAULT 'N/A',
  `time_edited` varchar(20) NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`WheatProductionID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `wheat_productiontable` */

insert  into `wheat_productiontable`(`WheatProductionID`,`prod_month`,`opening_balance`,`qty_delivered`,`supplier`,`qty_rejected`,`qty_issued`,`closing_balance`,`dosage_rate`,`theoretical_prod`,`actual_prod`,`production_unfort`,`exp_fort`,`exp_unfort`,`fort_brands`,`unfort_brands`,`company_id`,`year`,`signature`,`time_added`,`edited_by`,`time_edited`) values (1,'February',1383849,0,'MUHLE',0,878791,505058,37.7,3276,1757.58,0,0,0,'N/A','N/A',20,'2014','3ADM0651','2014-03-16','N/A','0000-00-00'),(2,'February',0,0,'N/A',0,0,0,0,0,4811.069,4811.069,0,4811.069,'N/A','N/A',23,'2013','3ADM3586','2014-03-16','N/A','0000-00-00'),(3,'March',0,0,'N/A',0,0,0,0,0,6418.461,6418.461,0,6418.461,'N/A','N/A',23,'2013','3ADM3586','2014-03-16','N/A','0000-00-00'),(4,'April',0,0,'N/A',0,0,0,0,0,7211.891,7211.891,0,7211.891,'N/A','N/A',23,'2013','3ADM3586','2014-03-16','N/A','0000-00-00'),(5,'May',0,0,'N/A',0,0,0,0,0,7854.388,7854.388,0,7854.388,'N/A','N/A',23,'2013','3ADM3586','2014-03-16','N/A','0000-00-00'),(6,'June',1250,1250,'N/A',0,1425,1075,500,2850,5501.272,2650.1,0,2851,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00'),(7,'July',1075,2500,'N/A',0,3150,425,500,6300,6267.383,0,0,0,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00'),(8,'August',425,3750,'N/A',0,3550,625,500,7100,7075.759,0,0,0,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00'),(9,'September',625,3750,'N/A',0,3000,1375,500,6000,6221,0,0,0,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00'),(10,'October',1375,3750,'N/A',0,3225,1900,500,0,6490,0,0,0,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00'),(11,'November',1900,3750,'N/A',0,3875,1775,500,0,7672,0,0,0,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00'),(12,'December',1775,3700,'N/A',0,3675,1850,500,0,7347,0,0,0,'N/A','N/A',23,'2013','3ADM3586','2014-03-17','N/A','0000-00-00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
