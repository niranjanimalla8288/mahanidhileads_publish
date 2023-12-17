
use mahanidhi_db;
DROP TABLE IF EXISTS `dbc_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbc_amenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT '0',
  `options` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


