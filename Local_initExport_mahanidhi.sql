-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mahanidhi_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
  `Id` int NOT NULL AUTO_INCREMENT,
  `CategoryId` int DEFAULT NULL,
  `Options` varchar(100) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ThumnailImagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesstags`
--

DROP TABLE IF EXISTS `businesstags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businesstags` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesstags`
--

LOCK TABLES `businesstags` WRITE;
/*!40000 ALTER TABLE `businesstags` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesstags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `StateId` int DEFAULT NULL,
  `GPSLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `StateId` (`StateId`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`StateId`) REFERENCES `states` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityareas`
--

DROP TABLE IF EXISTS `cityareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cityareas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CityId` int DEFAULT NULL,
  `PinCode` varchar(10) DEFAULT NULL,
  `GPSLocation` varchar(255) DEFAULT NULL,
  `SearchRadiusInKms` float DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CityId` (`CityId`),
  CONSTRAINT `cityareas_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `cities` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityareas`
--

LOCK TABLES `cityareas` WRITE;
/*!40000 ALTER TABLE `cityareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cityareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityserviceprovidercategories`
--

DROP TABLE IF EXISTS `cityserviceprovidercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cityserviceprovidercategories` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CityId` int DEFAULT NULL,
  `ServiceProviderCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CityId` (`CityId`),
  KEY `ServiceProviderCategoryId` (`ServiceProviderCategoryId`),
  CONSTRAINT `cityserviceprovidercategories_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `cities` (`Id`),
  CONSTRAINT `cityserviceprovidercategories_ibfk_2` FOREIGN KEY (`ServiceProviderCategoryId`) REFERENCES `serviceprovidercategories` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityserviceprovidercategories`
--

LOCK TABLES `cityserviceprovidercategories` WRITE;
/*!40000 ALTER TABLE `cityserviceprovidercategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cityserviceprovidercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `CurrencyCode` varchar(10) DEFAULT NULL,
  `TelecomeCode` varchar(10) DEFAULT NULL,
  `CurrencySymbol` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LoginOTP` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfiels`
--

DROP TABLE IF EXISTS `customfiels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customfiels` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CategoryId` int DEFAULT NULL,
  `FieldName` varchar(50) DEFAULT NULL,
  `FieldTitle` varchar(50) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Options` varchar(50) DEFAULT NULL,
  `IsRequired` tinyint(1) DEFAULT NULL,
  `HelpText` varchar(50) DEFAULT NULL,
  `ShowInDetail` varchar(100) DEFAULT NULL,
  `ShowInSearch` varchar(100) DEFAULT NULL,
  `SortOrder` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfiels`
--

LOCK TABLES `customfiels` WRITE;
/*!40000 ALTER TABLE `customfiels` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfiels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PostId` int DEFAULT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `Long_Text` varchar(100) DEFAULT NULL,
  `FeaturedImage` varchar(100) DEFAULT NULL,
  `HasTimeLimit` int DEFAULT NULL,
  `ActivationDate` datetime DEFAULT NULL,
  `ExpirationDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(20) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `PublishTime` datetime DEFAULT NULL,
  `LastUpdatedTime` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ContactPerson` varchar(255) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `SupportNumber` varchar(20) DEFAULT NULL,
  `SupportEmail` varchar(255) DEFAULT NULL,
  `AddressLine1` varchar(255) DEFAULT NULL,
  `AddressLine2` varchar(255) DEFAULT NULL,
  `AddressLine3` varchar(255) DEFAULT NULL,
  `StateId` int DEFAULT NULL,
  `CityId` int DEFAULT NULL,
  `PinCode` varchar(10) DEFAULT NULL,
  `CountryId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `StateId` (`StateId`),
  KEY `CityId` (`CityId`),
  KEY `CountryId` (`CountryId`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`StateId`) REFERENCES `states` (`Id`),
  CONSTRAINT `organization_ibfk_2` FOREIGN KEY (`CityId`) REFERENCES `cities` (`Id`),
  CONSTRAINT `organization_ibfk_3` FOREIGN KEY (`CountryId`) REFERENCES `country` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmodes`
--

DROP TABLE IF EXISTS `paymentmodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmodes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmodes`
--

LOCK TABLES `paymentmodes` WRITE;
/*!40000 ALTER TABLE `paymentmodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `DurationInMonths` int DEFAULT NULL,
  `IsBannerAdd` tinyint(1) DEFAULT NULL,
  `PositionInListing` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceproviderbadges`
--

DROP TABLE IF EXISTS `serviceproviderbadges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceproviderbadges` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ServiceProviderId` int DEFAULT NULL,
  `BadgeId` int DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `IsVoid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ServiceProviderId` (`ServiceProviderId`),
  KEY `BadgeId` (`BadgeId`),
  CONSTRAINT `serviceproviderbadges_ibfk_1` FOREIGN KEY (`ServiceProviderId`) REFERENCES `serviceproviders` (`Id`),
  CONSTRAINT `serviceproviderbadges_ibfk_2` FOREIGN KEY (`BadgeId`) REFERENCES `badges` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceproviderbadges`
--

LOCK TABLES `serviceproviderbadges` WRITE;
/*!40000 ALTER TABLE `serviceproviderbadges` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceproviderbadges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceproviderbusinesstags`
--

DROP TABLE IF EXISTS `serviceproviderbusinesstags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceproviderbusinesstags` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ServiceProviderId` int DEFAULT NULL,
  `BusinessTagId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ServiceProviderId` (`ServiceProviderId`),
  KEY `BusinessTagId` (`BusinessTagId`),
  CONSTRAINT `serviceproviderbusinesstags_ibfk_1` FOREIGN KEY (`ServiceProviderId`) REFERENCES `serviceproviders` (`Id`),
  CONSTRAINT `serviceproviderbusinesstags_ibfk_2` FOREIGN KEY (`BusinessTagId`) REFERENCES `businesstags` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceproviderbusinesstags`
--

LOCK TABLES `serviceproviderbusinesstags` WRITE;
/*!40000 ALTER TABLE `serviceproviderbusinesstags` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceproviderbusinesstags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovidercategories`
--

DROP TABLE IF EXISTS `serviceprovidercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceprovidercategories` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ThumnailImagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovidercategories`
--

LOCK TABLES `serviceprovidercategories` WRITE;
/*!40000 ALTER TABLE `serviceprovidercategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceprovidercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovidercategoryservices`
--

DROP TABLE IF EXISTS `serviceprovidercategoryservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceprovidercategoryservices` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovidercategoryservices`
--

LOCK TABLES `serviceprovidercategoryservices` WRITE;
/*!40000 ALTER TABLE `serviceprovidercategoryservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceprovidercategoryservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceproviderreviews`
--

DROP TABLE IF EXISTS `serviceproviderreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceproviderreviews` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int DEFAULT NULL,
  `ReviewDescription` text,
  `ReviewTitle` varchar(255) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `ReviewDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CustomerId` (`CustomerId`),
  CONSTRAINT `serviceproviderreviews_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customers` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceproviderreviews`
--

LOCK TABLES `serviceproviderreviews` WRITE;
/*!40000 ALTER TABLE `serviceproviderreviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceproviderreviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceproviders`
--

DROP TABLE IF EXISTS `serviceproviders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceproviders` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `BusinessName` varchar(255) DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `MainCategoryId` int DEFAULT NULL,
  `ThumnailImagePath` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `WatsAppNumber` varchar(20) DEFAULT NULL,
  `AddressLine1` varchar(255) DEFAULT NULL,
  `AddressLine2` varchar(255) DEFAULT NULL,
  `AddressLine3` varchar(255) DEFAULT NULL,
  `PinCode` varchar(10) DEFAULT NULL,
  `GPSLocation` varchar(255) DEFAULT NULL,
  `ContactPerson` varchar(255) DEFAULT NULL,
  `GSTNumber` varchar(20) DEFAULT NULL,
  `CINNumber` varchar(20) DEFAULT NULL,
  `EnrolledDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `YearOfEstablishment` int DEFAULT NULL,
  `WorkingHours` varchar(255) DEFAULT NULL,
  `Holidays` varchar(255) DEFAULT NULL,
  `ModesOfPayment` varchar(255) DEFAULT NULL,
  `CurrentRating` float DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `SubCategoryId` (`SubCategoryId`),
  KEY `MainCategoryId` (`MainCategoryId`),
  CONSTRAINT `serviceproviders_ibfk_1` FOREIGN KEY (`SubCategoryId`) REFERENCES `serviceprovidersubcategories` (`Id`),
  CONSTRAINT `serviceproviders_ibfk_2` FOREIGN KEY (`MainCategoryId`) REFERENCES `serviceprovidercategories` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceproviders`
--

LOCK TABLES `serviceproviders` WRITE;
/*!40000 ALTER TABLE `serviceproviders` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceproviders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceproviderservices`
--

DROP TABLE IF EXISTS `serviceproviderservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceproviderservices` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ServiceProviderCategoryServicesId` int DEFAULT NULL,
  `ServiceProviderId` int DEFAULT NULL,
  `ThumnailImagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ServiceProviderCategoryServicesId` (`ServiceProviderCategoryServicesId`),
  KEY `ServiceProviderId` (`ServiceProviderId`),
  CONSTRAINT `serviceproviderservices_ibfk_1` FOREIGN KEY (`ServiceProviderCategoryServicesId`) REFERENCES `serviceprovidercategoryservices` (`Id`),
  CONSTRAINT `serviceproviderservices_ibfk_2` FOREIGN KEY (`ServiceProviderId`) REFERENCES `serviceproviders` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceproviderservices`
--

LOCK TABLES `serviceproviderservices` WRITE;
/*!40000 ALTER TABLE `serviceproviderservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceproviderservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovidersubcategories`
--

DROP TABLE IF EXISTS `serviceprovidersubcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceprovidersubcategories` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ParentCategoryId` int DEFAULT NULL,
  `MainCategoryId` int DEFAULT NULL,
  `ThumnailImagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ParentCategoryId` (`ParentCategoryId`),
  KEY `MainCategoryId` (`MainCategoryId`),
  CONSTRAINT `serviceprovidersubcategories_ibfk_1` FOREIGN KEY (`ParentCategoryId`) REFERENCES `serviceprovidersubcategories` (`Id`),
  CONSTRAINT `serviceprovidersubcategories_ibfk_2` FOREIGN KEY (`MainCategoryId`) REFERENCES `serviceprovidercategories` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovidersubcategories`
--

LOCK TABLES `serviceprovidersubcategories` WRITE;
/*!40000 ALTER TABLE `serviceprovidersubcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceprovidersubcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovidersubscriptions`
--

DROP TABLE IF EXISTS `serviceprovidersubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceprovidersubscriptions` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ServiceProviderId` int DEFAULT NULL,
  `PlanId` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ContractDocPath` varchar(255) DEFAULT NULL,
  `SubscriptionAmount` decimal(10,2) DEFAULT NULL,
  `ListingPosition` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ServiceProviderId` (`ServiceProviderId`),
  KEY `PlanId` (`PlanId`),
  CONSTRAINT `serviceprovidersubscriptions_ibfk_1` FOREIGN KEY (`ServiceProviderId`) REFERENCES `serviceproviders` (`Id`),
  CONSTRAINT `serviceprovidersubscriptions_ibfk_2` FOREIGN KEY (`PlanId`) REFERENCES `plans` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovidersubscriptions`
--

LOCK TABLES `serviceprovidersubscriptions` WRITE;
/*!40000 ALTER TABLE `serviceprovidersubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceprovidersubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovidersubscriptionspayments`
--

DROP TABLE IF EXISTS `serviceprovidersubscriptionspayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceprovidersubscriptionspayments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ServiceProviderId` int DEFAULT NULL,
  `ServiceProviderSubscriptionId` int DEFAULT NULL,
  `PaidAmount` decimal(10,2) DEFAULT NULL,
  `PaymentModeId` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `TransactionReference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ServiceProviderId` (`ServiceProviderId`),
  KEY `ServiceProviderSubscriptionId` (`ServiceProviderSubscriptionId`),
  KEY `PaymentModeId` (`PaymentModeId`),
  CONSTRAINT `serviceprovidersubscriptionspayments_ibfk_1` FOREIGN KEY (`ServiceProviderId`) REFERENCES `serviceproviders` (`Id`),
  CONSTRAINT `serviceprovidersubscriptionspayments_ibfk_2` FOREIGN KEY (`ServiceProviderSubscriptionId`) REFERENCES `serviceprovidersubscriptions` (`Id`),
  CONSTRAINT `serviceprovidersubscriptionspayments_ibfk_3` FOREIGN KEY (`PaymentModeId`) REFERENCES `paymentmodes` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovidersubscriptionspayments`
--

LOCK TABLES `serviceprovidersubscriptionspayments` WRITE;
/*!40000 ALTER TABLE `serviceprovidersubscriptionspayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceprovidersubscriptionspayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CountryId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CountryId` (`CountryId`),
  CONSTRAINT `states_ibfk_1` FOREIGN KEY (`CountryId`) REFERENCES `country` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`),
  CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-12-17 11:57:50
