-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: martfury
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'tbhunhACYfd71IUWOglZBYiFf8ld4A4w',1,'2024-05-29 21:30:51','2024-05-29 21:30:51','2024-05-29 21:30:51');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2029-05-30 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(2,'Top Slider Image 2','2029-05-30 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 1','2029-05-30 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 2','2029-05-30 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(5,'Homepage middle 3','2029-05-30 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(6,'Homepage big 1','2029-05-30 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(7,'Homepage bottom small','2029-05-30 00:00:00','not_set','BRTTYNDZ0SSS','promotion/7.jpg','/products',0,7,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(8,'Product sidebar','2029-05-30 00:00:00','product-sidebar','Z1L20XAR3SRH','promotion/8.jpg','/products',0,8,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL),(9,'Homepage big 2','2029-05-30 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Recusandae laborum et eaque saepe animi commodi. Perspiciatis reiciendis velit earum. Voluptas fuga fuga sequi aperiam commodi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(2,'Fashion',0,'Itaque officiis expedita animi cum odio sed. Dolorem et est cumque enim. Possimus id non occaecati dolor aperiam aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(3,'Electronic',0,'Eius hic quo sit quia. Dolores quidem animi sint perferendis pariatur aut quas. Consequuntur impedit officia sit quia aspernatur. Accusamus sed iste omnis voluptas debitis ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(4,'Commercial',0,'Autem ut quia vel harum doloribus molestiae. Molestiae omnis minus exercitationem architecto et nostrum aspernatur. Non et qui impedit in.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-29 21:30:52','2024-05-29 21:30:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Marianna Treutel DDS','rebeka62@example.com','(661) 604-1380','892 Adela Flats Apt. 608\nSouth Barneyfort, PA 02610-3402','Ipsam quam corporis deleniti sed commodi.','Corrupti aliquid totam reiciendis. Cumque aut consequatur sunt. Laboriosam id sint cupiditate repudiandae. Odio vero impedit non voluptate reprehenderit sit ut. Odit odio id molestiae. Ipsa laudantium odit suscipit illum cupiditate. Necessitatibus commodi nihil dignissimos praesentium. Sed sed corporis molestiae aspernatur illo hic repellendus voluptate. Rerum consectetur et quo dolores aspernatur doloremque. Quasi accusamus quia nulla impedit distinctio ut quisquam.',NULL,'read','2024-05-29 21:30:51','2024-05-29 21:30:51'),(2,'Delores Prohaska','rhea28@example.org','(412) 360-3661','4102 Schaefer Terrace Apt. 498\nLake Anissa, NM 58778','Repellendus est ex sed sunt eos sunt.','Omnis debitis nam dolorum corrupti. Sapiente cupiditate voluptatem ut aut ut necessitatibus. Eligendi sit cumque quasi reprehenderit. Consectetur explicabo facere rem delectus. Doloribus fuga ad velit quisquam quae. Natus et eligendi dolor mollitia. Deserunt corrupti et repellendus laboriosam repellat cumque. Facilis odit quibusdam eaque dolorem amet aut. Enim eius odio dolor ea et dolorem. Nesciunt est adipisci et sit. Eum non qui est. Nihil reiciendis similique aut.',NULL,'unread','2024-05-29 21:30:51','2024-05-29 21:30:51'),(3,'Reynold Stiedemann','okon.geraldine@example.com','815-621-9580','45352 Hyatt Turnpike\nHyattchester, OK 85216','Voluptas quia excepturi ut aspernatur hic.','Non ipsa sed et ab vero pariatur. Sapiente excepturi quas enim possimus atque et quo. Saepe quia sit est porro et corrupti deleniti. Et impedit ea nihil sit eum aliquid. Fugiat consequatur deserunt velit blanditiis asperiores quibusdam. Totam iusto aut autem ratione accusantium. Sunt aut rerum tempore adipisci nulla. Voluptatem tempora non autem nihil. Maxime porro est eligendi. Quia fugiat quasi et praesentium totam. Quidem sequi commodi optio suscipit laborum. Dolorem maxime fugiat aut.',NULL,'unread','2024-05-29 21:30:51','2024-05-29 21:30:51'),(4,'Cortez Spencer','aiden57@example.com','+1.585.949.3629','2853 Prudence Skyway Apt. 777\nEast Nayeli, KS 14106-1514','Modi veritatis consequatur expedita rem.','Ipsam velit earum earum temporibus. Necessitatibus reiciendis velit est ullam dignissimos voluptas et. Odit tempore aliquid omnis fugit autem. Ut tempora ea non nihil. Ratione eius in soluta quasi recusandae deleniti asperiores. Id excepturi similique consequuntur debitis est. Voluptatem alias ipsa qui esse omnis facere.',NULL,'unread','2024-05-29 21:30:51','2024-05-29 21:30:51'),(5,'Angus Fahey','sdenesik@example.org','+16513171570','293 Karli Drive\nSkilesstad, CO 40427','Rerum explicabo in quas eveniet.','Sunt optio laudantium laudantium qui consequatur dolores. Saepe eius ut cupiditate est natus error. Odit ut distinctio eius et odit facere. Eligendi nesciunt ducimus consequatur facilis. Et laborum error et praesentium. Est sed ratione molestias sapiente sunt illo. Dolorem similique eos praesentium iure. Nisi enim molestias ipsa qui animi ipsam odit. Amet tenetur explicabo ut aut pariatur velit nostrum. Et amet nam culpa eligendi. Commodi blanditiis consequatur dolorem enim provident.',NULL,'unread','2024-05-29 21:30:51','2024-05-29 21:30:51'),(6,'Chandler Metz','dmoore@example.org','(361) 715-4245','5671 Fahey Trail Apt. 603\nSchoenburgh, ID 62380-1231','Ut quisquam sapiente molestias nemo labore.','Rerum vel porro quas qui et natus recusandae quis. Similique quis repellendus ut veniam eveniet. Reprehenderit explicabo numquam veritatis molestiae in eius. Magni maxime nihil eligendi quas asperiores in. Eaque molestias aut sed dicta rerum itaque hic. Molestias minus et animi aut officiis optio ullam. Cum rem omnis aut explicabo. Aut at quia exercitationem at occaecati. Totam architecto et et suscipit cum cum.',NULL,'unread','2024-05-29 21:30:51','2024-05-29 21:30:51'),(7,'Ms. Helene Fisher MD','damore.hal@example.com','402-664-2301','95422 Laury Well\nEthelmouth, GA 04932-3219','Ut corrupti et quia sed eos esse.','Consectetur atque velit odit eveniet iusto aut. Est similique ut libero officiis minus ea. Asperiores quia excepturi reprehenderit et laboriosam. Qui cumque nisi dicta facilis esse necessitatibus eum. Explicabo eius nisi dolores in doloribus odit iure. Sit ullam omnis ipsa sapiente sed incidunt. Alias quae officia quibusdam voluptates nam quae iste. Quibusdam corrupti voluptatem porro eum in laborum et.',NULL,'read','2024-05-29 21:30:51','2024-05-29 21:30:51'),(8,'Mona Mann','trace.dietrich@example.com','726-767-8499','9623 Holly Fall Apt. 114\nSouth Ruby, MD 63818','Molestias temporibus aut quia minima.','Qui id voluptas est tempore. Consequatur sequi et quo optio. Perspiciatis illum sequi autem aut. Voluptates quos consectetur unde non eveniet. Et itaque eveniet autem explicabo voluptatem. Eius quia quae est placeat in. Consectetur minus et quia eaque at. Est et quibusdam doloremque ex nulla natus quia. Et non accusamus autem corrupti accusantium voluptas ad. Distinctio eos voluptatem quia quo. Ut occaecati vel cum qui dolor.',NULL,'read','2024-05-29 21:30:51','2024-05-29 21:30:51'),(9,'Glennie Bauch','victoria50@example.com','+1-718-355-7267','90059 Bruen Views Apt. 290\nSouth Andres, MS 08572-9597','Vel temporibus deleniti in esse quis vitae.','Libero aperiam voluptas voluptatem nulla. Commodi voluptatem inventore ea est tempore dolores et. Ad qui alias sapiente animi quis. Quam aut ut et totam optio ut a. Sit adipisci amet porro unde et. Iure quas voluptates ipsa consequatur. Iste nam est rerum dolor enim sed. Consequatur omnis ratione maxime a. Nihil occaecati repellendus voluptatum expedita porro sequi autem quo. Nihil voluptatum eligendi eius iure ut ut. Maxime et vitae possimus vitae animi tempora dignissimos vel.',NULL,'read','2024-05-29 21:30:51','2024-05-29 21:30:51'),(10,'Dino Oberbrunner','treutel.luna@example.org','706.544.2613','75106 Morissette Ports\nNew Maximilliaside, MI 26339-2875','Quo nulla omnis porro laboriosam.','Velit hic vitae facere repellat enim quia. Quia facilis facere ut voluptas sint quas. Consequatur eligendi voluptatibus ipsum temporibus placeat et cumque. Omnis nostrum qui doloribus ipsam sunt ut. Qui eveniet debitis id quaerat repudiandae corrupti. Nulla non qui exercitationem expedita. Deleniti et consectetur vero cum ipsa soluta. Sit delectus sit quo. Culpa quae quibusdam dolores dolor impedit blanditiis rerum aliquid.',NULL,'read','2024-05-29 21:30:51','2024-05-29 21:30:51');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2024-05-29 21:30:35','2024-05-29 21:30:35');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(2,'EUR','€',0,2,1,0,0.84,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(3,'VND','₫',0,0,2,0,23203,'2024-05-29 21:30:35','2024-05-29 21:30:35'),(4,'NGN','₦',1,2,2,0,895.52,'2024-05-29 21:30:35','2024-05-29 21:30:35');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Alfreda Douglas I','customer@botble.com','+13318650825','CN','Tennessee','Orvalshire','60141 Gavin Drive Apt. 752',1,1,'2024-05-29 21:30:46','2024-05-29 21:30:46','72084'),(2,'Alfreda Douglas I','customer@botble.com','+19566960835','KE','Arkansas','North Birdieview','6767 Benjamin Shores Apt. 925',1,0,'2024-05-29 21:30:46','2024-05-29 21:30:46','06029-4103'),(3,'Nathanial Terry II','vendor@botble.com','+14587425157','GN','Oregon','North Xandermouth','932 Satterfield Islands',2,1,'2024-05-29 21:30:46','2024-05-29 21:30:46','30248-2646'),(4,'Nathanial Terry II','vendor@botble.com','+19786620374','LK','Minnesota','Jordiport','11180 Tyrese Viaduct Apt. 721',2,0,'2024-05-29 21:30:46','2024-05-29 21:30:46','37355'),(5,'Gaylord Zemlak','breana.rempel@example.com','+18185622394','MU','Utah','Schmidtbury','37642 Howe Shores',3,1,'2024-05-29 21:30:46','2024-05-29 21:30:46','85985'),(6,'Khalid Gaylord MD','oswaldo.denesik@example.com','+15614351581','SR','Pennsylvania','Goodwinmouth','89159 Ollie Squares Apt. 559',4,1,'2024-05-29 21:30:47','2024-05-29 21:30:47','37537-7269'),(7,'Prof. Kailee Nolan','anastasia19@example.org','+18053346315','VG','Nevada','East Ernesto','78193 Denesik Mountain Suite 416',5,1,'2024-05-29 21:30:47','2024-05-29 21:30:47','05619'),(8,'Cornelius Medhurst','cwiegand@example.org','+13088527630','DK','Montana','Fisherberg','77306 Samara Inlet Apt. 699',6,1,'2024-05-29 21:30:47','2024-05-29 21:30:47','13555'),(9,'Benton Rath','borer.grayson@example.net','+15637164904','GP','New York','North Wiltonland','455 Walker Mill Apt. 222',7,1,'2024-05-29 21:30:48','2024-05-29 21:30:48','63743-7462'),(10,'Courtney Kunde','lavina.harvey@example.org','+13209969071','MY','Oregon','East Austynland','6572 Naomi Mill Suite 438',8,1,'2024-05-29 21:30:48','2024-05-29 21:30:48','60561-0760'),(11,'Prof. Easton Weber Sr.','javon.rowe@example.com','+16783709982','BD','Montana','Darwinport','322 Ozella Motorway Apt. 301',9,1,'2024-05-29 21:30:48','2024-05-29 21:30:48','60317-6618'),(12,'Josie Wisoky','yadira.senger@example.com','+12837046029','VU','Wyoming','Elmoview','5037 Haley Forks Apt. 027',10,1,'2024-05-29 21:30:49','2024-05-29 21:30:49','15253');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Alfreda Douglas I','customer@botble.com','$2y$12$bU59fp5r4.Xk0TBKzWewy.sQ3YhFNlfCpvg6JwJc89NJ.EYcdO1M2','customers/7.jpg','1991-05-21','+15593035721',NULL,'2024-05-29 21:30:46','2024-05-29 21:30:46','2024-05-30 04:30:46',NULL,'activated',NULL,0,NULL),(2,'Nathanial Terry II','vendor@botble.com','$2y$12$i8kQXhr4.ZW.6iXxSvKr1O4mqmULX5BpiaCyJn4AYefbPP/64Nfae','customers/3.jpg','2002-05-15','+16145527012',NULL,'2024-05-29 21:30:46','2024-05-29 21:30:56','2024-05-30 04:30:46',NULL,'activated',NULL,1,'2024-05-30 04:30:56'),(3,'Gaylord Zemlak','breana.rempel@example.com','$2y$12$DCRsvkSPFLWjKvCyvJzEneAkqFL9wVmPrIkmgzKvUNTvDR9mF71Da','customers/1.jpg','1982-05-03','+12815413534',NULL,'2024-05-29 21:30:46','2024-05-29 21:30:56','2024-05-30 04:30:46',NULL,'activated',NULL,1,'2024-05-30 04:30:56'),(4,'Khalid Gaylord MD','oswaldo.denesik@example.com','$2y$12$NkUv5nJrgl9z4jzMQfchkOAf/.j/Zd4oL6cA6Z5kVieaJThsXp.Ny','customers/2.jpg','1993-05-09','+16505917213',NULL,'2024-05-29 21:30:47','2024-05-29 21:30:56','2024-05-30 04:30:47',NULL,'activated',NULL,1,'2024-05-30 04:30:56'),(5,'Prof. Kailee Nolan','anastasia19@example.org','$2y$12$lyO5tfyOAcJKyjwnHtb6G.LTCETAzzqCmo/kpzXL30mfc3IrWcekq','customers/3.jpg','1991-05-15','+17265395188',NULL,'2024-05-29 21:30:47','2024-05-29 21:30:47','2024-05-30 04:30:47',NULL,'activated',NULL,0,NULL),(6,'Cornelius Medhurst','cwiegand@example.org','$2y$12$w5I0.3v.HBnOrE1kMCOQ6.a9AppUalBUoYF3c2ky0jCjYEmhSKmqe','customers/4.jpg','1977-05-29','+12206771184',NULL,'2024-05-29 21:30:47','2024-05-29 21:30:47','2024-05-30 04:30:47',NULL,'activated',NULL,0,NULL),(7,'Benton Rath','borer.grayson@example.net','$2y$12$WOpVGimkEJZLekm0f28iZuAxR.sUQUmvFD4VwAj3w6BHID/rkkOze','customers/5.jpg','1996-05-22','+19786409129',NULL,'2024-05-29 21:30:48','2024-05-29 21:30:48','2024-05-30 04:30:48',NULL,'activated',NULL,0,NULL),(8,'Courtney Kunde','lavina.harvey@example.org','$2y$12$SFAqLuAZMgw/hHmTYfpUz.GVkJqAzi5sDXvOftrTcbj9Tvj.WO7TK','customers/6.jpg','1974-05-29','+13188090098',NULL,'2024-05-29 21:30:48','2024-05-29 21:30:57','2024-05-30 04:30:48',NULL,'activated',NULL,1,'2024-05-30 04:30:57'),(9,'Prof. Easton Weber Sr.','javon.rowe@example.com','$2y$12$QTenArmDbAk2DUub68271ueLJDqQvPcgxmXG2DPDGizMY3YRSuSCG','customers/7.jpg','1974-05-20','+13857971897',NULL,'2024-05-29 21:30:48','2024-05-29 21:30:48','2024-05-30 04:30:48',NULL,'activated',NULL,0,NULL),(10,'Josie Wisoky','yadira.senger@example.com','$2y$12$2Wkew5Q5Yk0dLZ7nfxlkZeT5hCGDVOwnGjqlEXcCatC/6ZfT1zczC','customers/8.jpg','1989-05-08','+15863817916',NULL,'2024-05-29 21:30:49','2024-05-29 21:30:49','2024-05-30 04:30:49',NULL,'activated',NULL,0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,59.385,10,5),(1,2,12.15,17,4),(1,3,14.6,17,1),(1,4,175.1136,19,5),(1,5,431.49,14,4),(1,6,240.62,19,5),(1,7,401.94,7,2),(1,8,723.002,13,1),(1,9,392.92,14,4),(1,10,462.6,19,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-06-29 00:00:00','published','2024-05-29 21:30:50','2024-05-29 21:30:50');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(1,2,'2 Year',10,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(1,3,'3 Year',20,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(2,4,'4GB',0,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(2,5,'8GB',10,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(2,6,'16GB',20,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(3,7,'Core i5',0,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(3,8,'Core i7',10,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(3,9,'Core i9',20,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(4,10,'128GB',0,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(4,11,'256GB',10,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(4,12,'512GB',20,9999,0,'2024-05-29 21:30:55','2024-05-29 21:30:55');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-05-29 21:30:55','2024-05-29 21:30:55'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-05-29 21:30:55','2024-05-29 21:30:55');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-05-29 21:30:45','2024-05-29 21:30:45',0),(2,'Size','size','text',1,1,1,'published',1,'2024-05-29 21:30:45','2024-05-29 21:30:45',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(6,2,'S','s',NULL,NULL,1,1,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(7,2,'M','m',NULL,NULL,0,2,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(8,2,'L','l',NULL,NULL,0,3,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-05-29 21:30:45','2024-05-29 21:30:45'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-05-29 21:30:45','2024-05-29 21:30:45');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (3,8),(3,14),(4,20),(5,1),(5,11),(6,6),(6,8),(7,1),(7,9),(7,14),(8,20),(9,9),(9,15),(9,18),(11,7),(11,13),(11,22),(12,7),(12,17),(12,19),(13,5),(14,2),(14,5),(14,11),(15,6),(15,22),(16,10),(16,14),(17,9),(17,16),(18,7),(18,15),(18,21),(19,1),(19,17),(20,12),(20,13),(20,22),(22,4),(22,16),(23,3),(23,12),(23,19),(24,3),(24,11),(25,4),(25,16),(25,21),(26,3),(26,10),(26,15),(27,2),(27,10),(27,17),(28,5),(28,6),(28,20),(28,22),(28,23),(29,21),(29,23),(30,2),(30,8),(30,13),(30,15),(30,17),(30,18),(31,3),(31,13),(31,16),(31,19),(31,20),(31,21),(32,14),(33,2),(33,4),(33,9),(33,18),(34,6),(34,10),(34,11),(34,12),(35,1),(35,4),(35,19),(35,23),(36,7),(36,18),(37,8),(37,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,3),(1,6),(1,10),(1,17),(1,18),(2,1),(2,4),(2,14),(2,15),(2,16),(2,22),(2,23),(3,5),(3,7),(3,8),(3,9),(3,11),(3,12),(3,13),(3,19),(3,20),(3,21);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-05-29 21:30:36','2024-05-29 21:30:36',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-05-29 21:30:36','2024-05-29 21:30:36',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-05-29 21:30:36','2024-05-29 21:30:36',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,6,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,9,0,0.00,'fixed',1),(1,10,0,0.00,'fixed',1),(1,13,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,16,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,4,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,8,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,13,0,0.00,'fixed',1),(4,16,0,0.00,'fixed',1),(4,18,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,6,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,12,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,12,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(7,4,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(7,16,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,10,0,0.00,'fixed',1),(9,15,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,3,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,16,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,4,0,0.00,'fixed',1),(13,10,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,16,0,0.00,'fixed',1),(14,3,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,7,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,18,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,13,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(17,1,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,4,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,8,0,0.00,'fixed',1),(17,10,0,0.00,'fixed',1),(17,19,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,15,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,15,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,12,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,19,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,3,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(2,25,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(3,26,'ecommerce/digital-product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(4,31,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(5,31,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(6,31,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(7,31,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(8,32,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(9,32,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(10,32,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(11,32,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(12,33,'ecommerce/digital-product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(13,33,'ecommerce/digital-product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(14,33,'ecommerce/digital-product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(15,33,'ecommerce/digital-product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:43\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-05-29 21:30:43','2024-05-29 21:30:43'),(16,42,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(17,42,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(18,42,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(19,43,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(20,43,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(21,43,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(22,44,'ecommerce/digital-product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(23,44,'ecommerce/digital-product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(24,44,'ecommerce/digital-product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(25,52,'ecommerce/digital-product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(26,52,'ecommerce/digital-product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(27,60,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(28,60,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(29,60,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(30,60,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(31,61,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(32,61,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(33,61,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(34,61,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(35,62,'ecommerce/digital-product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(36,62,'ecommerce/digital-product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(37,62,'ecommerce/digital-product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(38,62,'ecommerce/digital-product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:44\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-05-29 21:30:44','2024-05-29 21:30:44'),(39,71,'ecommerce/digital-product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:45\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-05-29 21:30:45','2024-05-29 21:30:45'),(40,71,'ecommerce/digital-product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:45\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:45','2024-05-29 21:30:45'),(41,71,'ecommerce/digital-product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:45\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:45','2024-05-29 21:30:45'),(42,72,'ecommerce/digital-product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:45\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-05-29 21:30:45','2024-05-29 21:30:45'),(43,72,'ecommerce/digital-product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:45\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-05-29 21:30:45','2024-05-29 21:30:45'),(44,72,'ecommerce/digital-product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-05-30 04:30:45\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-05-29 21:30:45','2024-05-29 21:30:45');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(2,18),(3,6),(3,9),(3,12),(3,15),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-05-29 21:30:36','2024-05-29 21:30:36'),(2,'New','#02856e','published','2024-05-29 21:30:36','2024-05-29 21:30:36'),(3,'Sale','#fe9931','published','2024-05-29 21:30:36','2024-05-29 21:30:36');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,4),(1,5),(1,6),(2,4),(2,5),(3,1),(3,2),(3,6),(4,3),(4,4),(4,5),(5,3),(5,4),(6,4),(6,5),(7,2),(7,3),(7,5),(8,1),(8,6),(9,4),(9,6),(10,1),(10,4),(10,5),(11,2),(11,3),(11,5),(12,1),(12,4),(12,5),(13,1),(13,4),(14,2),(14,3),(14,5),(15,3),(15,4),(16,4),(16,5),(16,6),(17,2),(17,6),(18,4),(18,5),(19,3),(19,4),(20,3),(20,6),(21,5),(22,2),(22,3),(22,5),(23,1),(23,2),(23,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(2,'Mobile',NULL,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(3,'Iphone',NULL,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(4,'Printer',NULL,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(5,'Office',NULL,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(6,'IT',NULL,'published','2024-05-29 21:30:50','2024-05-29 21:30:50');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(9,1,5),(11,1,6),(13,1,7),(19,1,10),(25,1,13),(29,1,15),(45,1,23),(65,1,33),(93,1,47),(101,1,51),(107,1,54),(1,2,1),(3,2,2),(5,2,3),(15,2,8),(17,2,9),(21,2,11),(23,2,12),(27,2,14),(33,2,17),(37,2,19),(43,2,22),(49,2,25),(59,2,30),(71,2,36),(73,2,37),(79,2,40),(81,2,41),(83,2,42),(103,2,52),(111,2,56),(35,3,18),(41,3,21),(47,3,24),(51,3,26),(53,3,27),(57,3,29),(63,3,32),(75,3,38),(91,3,46),(99,3,50),(109,3,55),(31,4,16),(39,4,20),(61,4,31),(85,4,43),(95,4,48),(105,4,53),(55,5,28),(67,5,34),(69,5,35),(77,5,39),(87,5,44),(89,5,45),(97,5,49),(4,6,2),(14,6,7),(20,6,10),(36,6,18),(46,6,23),(82,6,41),(90,6,45),(92,6,46),(108,6,54),(6,7,3),(12,7,6),(16,7,8),(18,7,9),(22,7,11),(24,7,12),(48,7,24),(58,7,29),(72,7,36),(98,7,49),(100,7,50),(102,7,51),(26,8,13),(30,8,15),(34,8,17),(44,8,22),(50,8,25),(52,8,26),(56,8,28),(64,8,32),(70,8,35),(74,8,37),(78,8,39),(80,8,40),(84,8,42),(2,9,1),(8,9,4),(10,9,5),(32,9,16),(38,9,19),(40,9,20),(54,9,27),(60,9,30),(62,9,31),(68,9,34),(106,9,53),(28,10,14),(42,10,21),(66,10,33),(76,10,38),(86,10,43),(88,10,44),(94,10,47),(96,10,48),(104,10,52),(110,10,55),(112,10,56);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,3,1),(6,29,4,1),(7,30,4,0),(8,31,5,1),(9,32,5,0),(10,33,5,0),(11,34,6,1),(12,35,6,0),(13,36,6,0),(14,37,7,1),(15,38,7,0),(16,39,8,1),(17,40,8,0),(18,41,8,0),(19,42,9,1),(20,43,9,0),(21,44,9,0),(22,45,10,1),(23,46,10,0),(24,47,10,0),(25,48,11,1),(26,49,11,0),(27,50,12,1),(28,51,12,0),(29,52,13,1),(30,53,14,1),(31,54,14,0),(32,55,14,0),(33,56,15,1),(34,57,15,0),(35,58,16,1),(36,59,16,0),(37,60,17,1),(38,61,17,0),(39,62,17,0),(40,63,18,1),(41,64,19,1),(42,65,19,0),(43,66,20,1),(44,67,20,0),(45,68,20,0),(46,69,20,0),(47,70,20,0),(48,71,21,1),(49,72,21,0),(50,73,22,1),(51,74,22,0),(52,75,22,0),(53,76,22,0),(54,77,23,1),(55,78,23,0),(56,79,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-05-30',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-102-A0',0,14,0,1,1,5,0,0,80.25,NULL,NULL,NULL,20.00,15.00,20.00,866.00,NULL,35166,'2024-05-29 21:30:42','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,1,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-159-A0',0,18,0,1,1,3,0,0,40.5,NULL,NULL,NULL,12.00,14.00,14.00,529.00,NULL,21705,'2024-05-29 21:30:42','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-120-A0',0,20,0,1,1,3,0,0,20,NULL,NULL,NULL,17.00,20.00,18.00,680.00,NULL,184403,'2024-05-29 21:30:42','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-164-A0',0,16,0,1,1,1,0,0,544,473.28,NULL,NULL,17.00,17.00,10.00,758.00,NULL,26053,'2024-05-29 21:30:42','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-173-A0',0,15,0,1,1,2,0,0,757,NULL,NULL,NULL,10.00,13.00,20.00,593.00,NULL,156917,'2024-05-29 21:30:42','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,2,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-123-A0',0,17,0,1,1,5,0,0,454,NULL,NULL,NULL,17.00,11.00,15.00,758.00,NULL,119826,'2024-05-29 21:30:42','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-142-A0',0,19,0,1,1,1,0,0,522,NULL,NULL,NULL,17.00,16.00,12.00,660.00,NULL,36063,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-133-A0',0,15,0,1,1,1,0,0,1201,840.7,NULL,NULL,20.00,17.00,20.00,823.00,NULL,125090,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-131-A0',0,15,0,1,1,4,0,0,517,NULL,NULL,NULL,16.00,16.00,19.00,886.00,NULL,57853,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-133-A0',0,18,0,1,0,3,0,0,1285,NULL,NULL,NULL,18.00,17.00,11.00,632.00,NULL,152350,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-191-A0',0,20,0,1,0,3,0,0,1167,NULL,NULL,NULL,14.00,17.00,10.00,814.00,NULL,21741,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-181-A0',0,16,0,1,0,2,0,0,586,503.96,NULL,NULL,20.00,20.00,14.00,702.00,NULL,81153,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-200-A0',0,17,0,1,0,1,0,0,526,NULL,NULL,NULL,18.00,11.00,12.00,520.00,NULL,151730,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,3,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-177-A0',0,13,0,1,0,4,0,0,540,NULL,NULL,NULL,18.00,14.00,19.00,524.00,NULL,106424,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-192-A0',0,12,0,1,0,6,0,0,551,NULL,NULL,NULL,13.00,17.00,16.00,885.00,NULL,35170,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-183-A0',0,16,0,1,0,1,0,0,542,384.82,NULL,NULL,16.00,19.00,16.00,500.00,NULL,175300,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-111-A0',0,15,0,1,0,5,0,0,555,NULL,NULL,NULL,19.00,12.00,19.00,646.00,NULL,58819,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,4,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-165-A0',0,11,0,1,0,3,0,0,1073,NULL,NULL,NULL,20.00,19.00,20.00,606.00,NULL,124823,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-194-A0',0,16,0,1,0,7,0,0,907,NULL,NULL,NULL,10.00,19.00,10.00,577.00,NULL,163623,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-130-A0',0,11,0,1,0,1,0,0,996,886.44,NULL,NULL,18.00,13.00,18.00,698.00,NULL,178773,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-168-A0',0,19,0,1,0,2,0,0,611,NULL,NULL,NULL,20.00,18.00,10.00,819.00,NULL,126199,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,1,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-132-A0',0,18,0,1,0,6,0,0,437,NULL,NULL,NULL,16.00,11.00,10.00,727.00,NULL,62981,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-196-A0',0,20,0,1,0,3,0,0,517,NULL,NULL,NULL,10.00,15.00,12.00,745.00,NULL,177599,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-102-A0',0,14,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,15.00,20.00,866.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-102-A0-A1',0,14,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,15.00,20.00,866.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-102-A0-A2',0,14,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,15.00,20.00,866.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-159-A0',0,18,0,1,0,3,1,0,40.5,NULL,NULL,NULL,12.00,14.00,14.00,529.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-120-A0',0,20,0,1,0,3,1,0,20,NULL,NULL,NULL,17.00,20.00,18.00,680.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(29,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-164-A0',0,16,0,1,0,1,1,0,544,473.28,NULL,NULL,17.00,17.00,10.00,758.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(30,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-164-A0-A1',0,16,0,1,0,1,1,0,544,478.72,NULL,NULL,17.00,17.00,10.00,758.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(31,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-173-A0',0,15,0,1,0,2,1,0,757,NULL,NULL,NULL,10.00,13.00,20.00,593.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(32,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-173-A0-A1',0,15,0,1,0,2,1,0,757,NULL,NULL,NULL,10.00,13.00,20.00,593.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-173-A0-A2',0,15,0,1,0,2,1,0,757,NULL,NULL,NULL,10.00,13.00,20.00,593.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(34,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-123-A0',0,17,0,1,0,5,1,0,454,NULL,NULL,NULL,17.00,11.00,15.00,758.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(35,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-123-A0-A1',0,17,0,1,0,5,1,0,454,NULL,NULL,NULL,17.00,11.00,15.00,758.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-123-A0-A2',0,17,0,1,0,5,1,0,454,NULL,NULL,NULL,17.00,11.00,15.00,758.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(37,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-142-A0',0,19,0,1,0,1,1,0,522,NULL,NULL,NULL,17.00,16.00,12.00,660.00,NULL,0,'2024-05-29 21:30:43','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-142-A0-A1',0,19,0,1,0,1,1,0,522,NULL,NULL,NULL,17.00,16.00,12.00,660.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(39,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-133-A0',0,15,0,1,0,1,1,0,1201,840.7,NULL,NULL,20.00,17.00,20.00,823.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(40,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-133-A0-A1',0,15,0,1,0,1,1,0,1201,876.73,NULL,NULL,20.00,17.00,20.00,823.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(41,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-133-A0-A2',0,15,0,1,0,1,1,0,1201,960.8,NULL,NULL,20.00,17.00,20.00,823.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(42,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-131-A0',0,15,0,1,0,4,1,0,517,NULL,NULL,NULL,16.00,16.00,19.00,886.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(43,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-131-A0-A1',0,15,0,1,0,4,1,0,517,NULL,NULL,NULL,16.00,16.00,19.00,886.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(44,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-131-A0-A2',0,15,0,1,0,4,1,0,517,NULL,NULL,NULL,16.00,16.00,19.00,886.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-133-A0',0,18,0,1,0,3,1,0,1285,NULL,NULL,NULL,18.00,17.00,11.00,632.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-133-A0-A1',0,18,0,1,0,3,1,0,1285,NULL,NULL,NULL,18.00,17.00,11.00,632.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-133-A0-A2',0,18,0,1,0,3,1,0,1285,NULL,NULL,NULL,18.00,17.00,11.00,632.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(48,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-191-A0',0,20,0,1,0,3,1,0,1167,NULL,NULL,NULL,14.00,17.00,10.00,814.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(49,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-191-A0-A1',0,20,0,1,0,3,1,0,1167,NULL,NULL,NULL,14.00,17.00,10.00,814.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(50,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-181-A0',0,16,0,1,0,2,1,0,586,503.96,NULL,NULL,20.00,20.00,14.00,702.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(51,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-181-A0-A1',0,16,0,1,0,2,1,0,586,468.8,NULL,NULL,20.00,20.00,14.00,702.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(52,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-200-A0',0,17,0,1,0,1,1,0,526,NULL,NULL,NULL,18.00,11.00,12.00,520.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(53,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-177-A0',0,13,0,1,0,4,1,0,540,NULL,NULL,NULL,18.00,14.00,19.00,524.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(54,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-177-A0-A1',0,13,0,1,0,4,1,0,540,NULL,NULL,NULL,18.00,14.00,19.00,524.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(55,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-177-A0-A2',0,13,0,1,0,4,1,0,540,NULL,NULL,NULL,18.00,14.00,19.00,524.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(56,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-192-A0',0,12,0,1,0,6,1,0,551,NULL,NULL,NULL,13.00,17.00,16.00,885.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(57,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-192-A0-A1',0,12,0,1,0,6,1,0,551,NULL,NULL,NULL,13.00,17.00,16.00,885.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-183-A0',0,16,0,1,0,1,1,0,542,384.82,NULL,NULL,16.00,19.00,16.00,500.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(59,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-183-A0-A1',0,16,0,1,0,1,1,0,542,439.02,NULL,NULL,16.00,19.00,16.00,500.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(60,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-111-A0',0,15,0,1,0,5,1,0,555,NULL,NULL,NULL,19.00,12.00,19.00,646.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(61,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-111-A0-A1',0,15,0,1,0,5,1,0,555,NULL,NULL,NULL,19.00,12.00,19.00,646.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(62,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-111-A0-A2',0,15,0,1,0,5,1,0,555,NULL,NULL,NULL,19.00,12.00,19.00,646.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(63,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-165-A0',0,11,0,1,0,3,1,0,1073,NULL,NULL,NULL,20.00,19.00,20.00,606.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-194-A0',0,16,0,1,0,7,1,0,907,NULL,NULL,NULL,10.00,19.00,10.00,577.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-194-A0-A1',0,16,0,1,0,7,1,0,907,NULL,NULL,NULL,10.00,19.00,10.00,577.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-130-A0',0,11,0,1,0,1,1,0,996,886.44,NULL,NULL,18.00,13.00,18.00,698.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-130-A0-A1',0,11,0,1,0,1,1,0,996,856.56,NULL,NULL,18.00,13.00,18.00,698.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(68,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','SW-130-A0-A2',0,11,0,1,0,1,1,0,996,697.2,NULL,NULL,18.00,13.00,18.00,698.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-3.jpg\"]','SW-130-A0-A3',0,11,0,1,0,1,1,0,996,717.12,NULL,NULL,18.00,13.00,18.00,698.00,NULL,0,'2024-05-29 21:30:44','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-130-A0-A4',0,11,0,1,0,1,1,0,996,707.16,NULL,NULL,18.00,13.00,18.00,698.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(71,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-168-A0',0,19,0,1,0,2,1,0,611,NULL,NULL,NULL,20.00,18.00,10.00,819.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(72,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-168-A0-A1',0,19,0,1,0,2,1,0,611,NULL,NULL,NULL,20.00,18.00,10.00,819.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(73,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-132-A0',0,18,0,1,0,6,1,0,437,NULL,NULL,NULL,16.00,11.00,10.00,727.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(74,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-132-A0-A1',0,18,0,1,0,6,1,0,437,NULL,NULL,NULL,16.00,11.00,10.00,727.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-132-A0-A2',0,18,0,1,0,6,1,0,437,NULL,NULL,NULL,16.00,11.00,10.00,727.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-3.jpg\"]','SW-132-A0-A3',0,18,0,1,0,6,1,0,437,NULL,NULL,NULL,16.00,11.00,10.00,727.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-196-A0',0,20,0,1,0,3,1,0,517,NULL,NULL,NULL,10.00,15.00,12.00,745.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-196-A0-A1',0,20,0,1,0,3,1,0,517,NULL,NULL,NULL,10.00,15.00,12.00,745.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(79,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-196-A0-A2',0,20,0,1,0,3,1,0,517,NULL,NULL,NULL,10.00,15.00,12.00,745.00,NULL,0,'2024-05-29 21:30:45','2024-05-29 21:30:57','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,10,NULL,NULL,7,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/16.jpg\",\"products\\/18.jpg\",\"products\\/20-3.jpg\"]'),(2,8,NULL,NULL,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/22-3.jpg\"]'),(3,3,NULL,NULL,11,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/7.jpg\",\"products\\/9-1.jpg\",\"products\\/20-1.jpg\"]'),(4,9,NULL,NULL,17,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-1.jpg\",\"products\\/12.jpg\",\"products\\/18-1.jpg\"]'),(5,7,NULL,NULL,12,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/10-2.jpg\",\"products\\/21.jpg\"]'),(6,10,NULL,NULL,13,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/16.jpg\"]'),(7,3,NULL,NULL,15,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/18-2.jpg\"]'),(8,7,NULL,NULL,15,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-2.jpg\",\"products\\/8-1.jpg\",\"products\\/21.jpg\",\"products\\/23.jpg\"]'),(9,3,NULL,NULL,12,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/14.jpg\"]'),(11,5,NULL,NULL,16,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/19.jpg\",\"products\\/21-1.jpg\"]'),(12,2,NULL,NULL,21,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/19-3.jpg\",\"products\\/22-3.jpg\",\"products\\/23.jpg\"]'),(13,2,NULL,NULL,15,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/11-3.jpg\"]'),(14,9,NULL,NULL,13,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\",\"products\\/17-3.jpg\"]'),(15,10,NULL,NULL,10,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/17-3.jpg\"]'),(16,3,NULL,NULL,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-2.jpg\",\"products\\/15-1.jpg\"]'),(17,4,NULL,NULL,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23.jpg\"]'),(19,9,NULL,NULL,21,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/10.jpg\",\"products\\/11.jpg\"]'),(20,4,NULL,NULL,23,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12.jpg\",\"products\\/20.jpg\"]'),(21,5,NULL,NULL,14,3.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\"]'),(22,10,NULL,NULL,11,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/17-1.jpg\",\"products\\/17-3.jpg\"]'),(23,7,NULL,NULL,10,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/21-1.jpg\"]'),(24,1,NULL,NULL,17,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/18.jpg\"]'),(25,9,NULL,NULL,3,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\"]'),(26,1,NULL,NULL,4,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/8-3.jpg\",\"products\\/20.jpg\"]'),(27,6,NULL,NULL,23,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/21-2.jpg\",\"products\\/22-1.jpg\"]'),(28,1,NULL,NULL,7,5.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/20-2.jpg\"]'),(29,9,NULL,NULL,16,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/5-3.jpg\",\"products\\/10-2.jpg\",\"products\\/14.jpg\"]'),(30,4,NULL,NULL,6,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/23.jpg\"]'),(31,7,NULL,NULL,9,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(32,3,NULL,NULL,10,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/2.jpg\",\"products\\/10-1.jpg\",\"products\\/21-2.jpg\"]'),(33,3,NULL,NULL,18,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-2.jpg\"]'),(34,4,NULL,NULL,17,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/18-1.jpg\",\"products\\/20-3.jpg\",\"products\\/22-1.jpg\"]'),(35,10,NULL,NULL,23,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\",\"products\\/18-3.jpg\",\"products\\/22.jpg\"]'),(36,8,NULL,NULL,20,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/23-3.jpg\"]'),(37,5,NULL,NULL,18,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/13-1.jpg\"]'),(38,2,NULL,NULL,9,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/12-3.jpg\"]'),(39,8,NULL,NULL,9,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-2.jpg\"]'),(40,3,NULL,NULL,21,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-3.jpg\",\"products\\/12.jpg\",\"products\\/22-3.jpg\"]'),(41,6,NULL,NULL,18,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/20.jpg\"]'),(43,9,NULL,NULL,19,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\"]'),(44,1,NULL,NULL,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/16.jpg\"]'),(45,1,NULL,NULL,13,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12.jpg\"]'),(46,6,NULL,NULL,17,2.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/23-3.jpg\"]'),(48,7,NULL,NULL,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11.jpg\",\"products\\/12-1.jpg\",\"products\\/17.jpg\"]'),(49,6,NULL,NULL,7,2.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(50,4,NULL,NULL,12,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-2.jpg\"]'),(51,7,NULL,NULL,17,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/8.jpg\",\"products\\/20-2.jpg\",\"products\\/23-3.jpg\"]'),(53,5,NULL,NULL,20,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/6.jpg\",\"products\\/20-2.jpg\"]'),(54,1,NULL,NULL,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/8-3.jpg\",\"products\\/9-2.jpg\",\"products\\/20-3.jpg\"]'),(56,5,NULL,NULL,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/10-2.jpg\",\"products\\/12-3.jpg\",\"products\\/18-3.jpg\"]'),(57,9,NULL,NULL,2,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-3.jpg\",\"products\\/5.jpg\",\"products\\/12-3.jpg\",\"products\\/20.jpg\"]'),(58,10,NULL,NULL,1,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-2.jpg\",\"products\\/15-1.jpg\"]'),(61,5,NULL,NULL,13,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-3.jpg\",\"products\\/19-2.jpg\"]'),(63,4,NULL,NULL,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-1.jpg\",\"products\\/20-2.jpg\"]'),(64,10,NULL,NULL,5,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/19-3.jpg\"]'),(66,9,NULL,NULL,5,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13.jpg\",\"products\\/22-1.jpg\"]'),(67,1,NULL,NULL,20,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/8-1.jpg\"]'),(69,7,NULL,NULL,5,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/8-1.jpg\",\"products\\/18-2.jpg\"]'),(70,1,NULL,NULL,1,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-2.jpg\"]'),(71,4,NULL,NULL,18,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13-1.jpg\",\"products\\/20-1.jpg\"]'),(73,8,NULL,NULL,5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/15.jpg\",\"products\\/21-2.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]'),(75,6,NULL,NULL,5,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\"]'),(76,5,NULL,NULL,23,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/23.jpg\"]'),(77,1,NULL,NULL,16,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/18-2.jpg\"]'),(78,8,NULL,NULL,12,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-3.jpg\"]'),(79,3,NULL,NULL,9,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/14.jpg\",\"products\\/15-1.jpg\",\"products\\/18-2.jpg\"]'),(82,1,NULL,NULL,11,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/23-3.jpg\"]'),(83,2,NULL,NULL,14,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-2.jpg\"]'),(84,1,NULL,NULL,6,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]'),(85,2,NULL,NULL,10,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/13.jpg\"]'),(86,2,NULL,NULL,1,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-3.jpg\",\"products\\/15.jpg\"]'),(87,2,NULL,NULL,4,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-3.jpg\",\"products\\/12.jpg\",\"products\\/22-2.jpg\"]'),(88,5,NULL,NULL,22,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-2.jpg\"]'),(89,8,NULL,NULL,3,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(94,8,NULL,NULL,22,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-2.jpg\",\"products\\/11-1.jpg\",\"products\\/20-3.jpg\",\"products\\/21.jpg\"]'),(97,5,NULL,NULL,8,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/17.jpg\"]'),(98,4,NULL,NULL,13,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-3.jpg\",\"products\\/23-3.jpg\"]'),(99,2,NULL,NULL,19,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/4-1.jpg\",\"products\\/9-1.jpg\"]'),(102,8,NULL,NULL,6,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5.jpg\",\"products\\/7.jpg\"]'),(103,3,NULL,NULL,8,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-1.jpg\",\"products\\/13.jpg\",\"products\\/19.jpg\",\"products\\/21-2.jpg\"]'),(105,3,NULL,NULL,7,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/19-1.jpg\"]'),(106,6,NULL,NULL,14,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/23-3.jpg\"]'),(107,7,NULL,NULL,16,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-2.jpg\"]'),(108,1,NULL,NULL,5,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/22-1.jpg\"]'),(109,6,NULL,NULL,21,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/15.jpg\"]'),(110,4,NULL,NULL,20,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-3.jpg\",\"products\\/17-2.jpg\",\"products\\/19-2.jpg\",\"products\\/20-3.jpg\"]'),(114,5,NULL,NULL,11,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-1.jpg\",\"products\\/18-2.jpg\"]'),(115,8,NULL,NULL,15,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-3.jpg\",\"products\\/19-2.jpg\"]'),(116,1,NULL,NULL,3,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-3.jpg\",\"products\\/8.jpg\",\"products\\/19.jpg\"]'),(119,7,NULL,NULL,20,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-1.jpg\",\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/23-2.jpg\"]'),(121,7,NULL,NULL,4,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/23-3.jpg\"]'),(123,4,NULL,NULL,1,5.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-3.jpg\",\"products\\/10-1.jpg\",\"products\\/17-2.jpg\",\"products\\/22-2.jpg\"]'),(125,9,NULL,NULL,22,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/10-1.jpg\",\"products\\/11-3.jpg\"]'),(131,4,NULL,NULL,10,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/18-3.jpg\",\"products\\/19-1.jpg\"]'),(132,10,NULL,NULL,18,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2.jpg\"]'),(135,8,NULL,NULL,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/8-3.jpg\",\"products\\/14.jpg\"]'),(136,3,NULL,NULL,16,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(137,6,NULL,NULL,12,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/16.jpg\",\"products\\/17-2.jpg\",\"products\\/20-3.jpg\"]'),(138,10,NULL,NULL,19,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/13.jpg\",\"products\\/18.jpg\"]'),(143,6,NULL,NULL,8,5.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-3.jpg\",\"products\\/17-3.jpg\",\"products\\/17.jpg\",\"products\\/19.jpg\"]'),(144,8,NULL,NULL,10,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/19-2.jpg\"]'),(145,1,NULL,NULL,19,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/8-3.jpg\",\"products\\/9-1.jpg\"]'),(146,3,NULL,NULL,14,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]'),(147,6,NULL,NULL,1,4.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-1.jpg\"]'),(148,5,NULL,NULL,17,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/19-2.jpg\",\"products\\/21.jpg\"]'),(152,9,NULL,NULL,23,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/14.jpg\",\"products\\/20-3.jpg\"]'),(153,1,NULL,NULL,9,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-2.jpg\",\"products\\/20-2.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]'),(154,4,NULL,NULL,5,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\"]'),(156,5,NULL,NULL,21,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/9-2.jpg\",\"products\\/20-3.jpg\"]'),(157,9,NULL,NULL,20,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/10-2.jpg\",\"products\\/20-3.jpg\"]'),(158,5,NULL,NULL,10,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/10-2.jpg\"]'),(162,8,NULL,NULL,13,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-2.jpg\",\"products\\/18-1.jpg\"]'),(163,6,NULL,NULL,9,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\"]'),(169,2,NULL,NULL,20,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/4-3.jpg\",\"products\\/18-2.jpg\",\"products\\/21-2.jpg\"]'),(170,5,NULL,NULL,2,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\",\"products\\/12-3.jpg\"]'),(172,8,NULL,NULL,4,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\"]'),(173,8,NULL,NULL,21,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/8.jpg\",\"products\\/17-1.jpg\"]'),(174,9,NULL,NULL,6,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/16.jpg\",\"products\\/19-2.jpg\",\"products\\/20.jpg\"]'),(177,4,NULL,NULL,15,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-3.jpg\",\"products\\/10-1.jpg\"]'),(179,1,NULL,NULL,12,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/17-3.jpg\"]'),(181,8,NULL,NULL,11,3.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/16.jpg\",\"products\\/17-3.jpg\"]'),(182,7,NULL,NULL,11,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/2.jpg\",\"products\\/4-3.jpg\",\"products\\/7.jpg\"]'),(183,1,NULL,NULL,22,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/20-2.jpg\",\"products\\/22.jpg\"]'),(184,2,NULL,NULL,12,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/10.jpg\",\"products\\/20-3.jpg\"]'),(185,9,NULL,NULL,4,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/4-2.jpg\",\"products\\/23-2.jpg\",\"products\\/23.jpg\"]'),(189,7,NULL,NULL,2,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/9.jpg\",\"products\\/22-1.jpg\"]'),(192,6,NULL,NULL,2,1.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-2.jpg\",\"products\\/22.jpg\",\"products\\/23-2.jpg\"]'),(193,5,NULL,NULL,3,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\"]'),(195,9,NULL,NULL,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/15-1.jpg\"]'),(199,9,NULL,NULL,12,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-2.jpg\",\"products\\/13.jpg\",\"products\\/22-1.jpg\"]'),(200,10,NULL,NULL,3,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-2.jpg\",\"products\\/19-1.jpg\"]'),(203,9,NULL,NULL,8,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/15-1.jpg\",\"products\\/21.jpg\",\"products\\/23-1.jpg\"]'),(204,6,NULL,NULL,3,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/10.jpg\",\"products\\/18.jpg\"]'),(205,8,NULL,NULL,8,2.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/22-2.jpg\",\"products\\/23-2.jpg\"]'),(206,9,NULL,NULL,18,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/12.jpg\"]'),(208,4,NULL,NULL,22,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-2.jpg\",\"products\\/18-3.jpg\",\"products\\/22-1.jpg\"]'),(213,4,NULL,NULL,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/19-1.jpg\"]'),(215,6,NULL,NULL,20,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\",\"products\\/23.jpg\"]'),(220,2,NULL,NULL,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-2.jpg\",\"products\\/11.jpg\",\"products\\/18-1.jpg\"]'),(221,6,NULL,NULL,15,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/20-2.jpg\"]'),(224,5,NULL,NULL,4,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-3.jpg\",\"products\\/11-2.jpg\",\"products\\/21.jpg\"]'),(226,3,NULL,NULL,20,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/19-2.jpg\",\"products\\/20-2.jpg\"]'),(227,1,NULL,NULL,23,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(231,10,NULL,NULL,22,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/17-3.jpg\",\"products\\/19-2.jpg\"]'),(234,6,NULL,NULL,19,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/11-3.jpg\"]'),(237,10,NULL,NULL,17,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13-1.jpg\",\"products\\/16.jpg\",\"products\\/18-2.jpg\"]'),(244,6,NULL,NULL,22,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-1.jpg\",\"products\\/18.jpg\",\"products\\/23-2.jpg\"]'),(253,2,NULL,NULL,7,4.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/9-2.jpg\",\"products\\/9.jpg\",\"products\\/23-1.jpg\"]'),(254,6,NULL,NULL,16,4.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/13.jpg\",\"products\\/20-2.jpg\"]'),(257,9,NULL,NULL,9,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/15-1.jpg\",\"products\\/20-3.jpg\",\"products\\/23.jpg\"]'),(258,9,NULL,NULL,14,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/17-2.jpg\",\"products\\/19-1.jpg\"]'),(265,8,NULL,NULL,2,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/17-1.jpg\",\"products\\/20-3.jpg\",\"products\\/20.jpg\"]'),(269,4,NULL,NULL,21,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/12-2.jpg\",\"products\\/18.jpg\",\"products\\/19-1.jpg\"]'),(270,8,NULL,NULL,23,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-1.jpg\",\"products\\/18-3.jpg\",\"products\\/19-1.jpg\"]'),(271,10,NULL,NULL,14,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/23-1.jpg\"]'),(278,4,NULL,NULL,4,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-2.jpg\"]'),(281,2,NULL,NULL,13,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/18.jpg\",\"products\\/21-2.jpg\"]'),(282,3,NULL,NULL,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\",\"products\\/13.jpg\"]'),(294,1,NULL,NULL,10,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/14.jpg\",\"products\\/22-2.jpg\"]'),(295,4,NULL,NULL,3,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2.jpg\",\"products\\/23.jpg\"]'),(303,3,NULL,NULL,22,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-3.jpg\",\"products\\/6.jpg\"]'),(305,2,NULL,NULL,22,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-1.jpg\",\"products\\/19.jpg\",\"products\\/23-2.jpg\"]'),(308,8,NULL,NULL,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-3.jpg\",\"products\\/17-2.jpg\"]'),(311,2,NULL,NULL,5,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-3.jpg\",\"products\\/10-2.jpg\"]'),(312,10,NULL,NULL,6,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/5-3.jpg\",\"products\\/10.jpg\",\"products\\/20-2.jpg\"]'),(314,3,NULL,NULL,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),(317,7,NULL,NULL,13,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/17-2.jpg\",\"products\\/23-3.jpg\"]'),(318,5,NULL,NULL,19,4.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/21.jpg\"]'),(320,8,NULL,NULL,14,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\",\"products\\/22-3.jpg\"]'),(322,7,NULL,NULL,22,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11.jpg\",\"products\\/12-2.jpg\",\"products\\/20-2.jpg\"]'),(333,2,NULL,NULL,18,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12.jpg\",\"products\\/21.jpg\"]'),(342,3,NULL,NULL,4,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/8-2.jpg\",\"products\\/17-3.jpg\",\"products\\/19-3.jpg\"]'),(344,5,NULL,NULL,7,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-1.jpg\",\"products\\/18.jpg\"]'),(346,3,NULL,NULL,17,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-1.jpg\",\"products\\/15-1.jpg\",\"products\\/19-2.jpg\",\"products\\/20.jpg\"]'),(348,3,NULL,NULL,1,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-2.jpg\",\"products\\/13-1.jpg\"]'),(352,1,NULL,NULL,8,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-2.jpg\",\"products\\/23-3.jpg\"]'),(356,10,NULL,NULL,9,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-1.jpg\",\"products\\/9-1.jpg\",\"products\\/15-1.jpg\",\"products\\/20-3.jpg\"]'),(359,8,NULL,NULL,16,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/7.jpg\",\"products\\/12-3.jpg\",\"products\\/17.jpg\"]'),(367,9,NULL,NULL,10,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-3.jpg\",\"products\\/4-1.jpg\",\"products\\/14.jpg\",\"products\\/20-2.jpg\"]'),(376,9,NULL,NULL,1,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-1.jpg\",\"products\\/14.jpg\"]'),(380,6,NULL,NULL,6,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20-1.jpg\"]'),(384,10,NULL,NULL,2,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12.jpg\",\"products\\/19-2.jpg\"]'),(389,2,NULL,NULL,23,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/22-2.jpg\"]'),(411,7,NULL,NULL,19,1.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-2.jpg\",\"products\\/21-1.jpg\"]'),(416,10,NULL,NULL,16,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/15-1.jpg\",\"products\\/23-3.jpg\"]'),(420,7,NULL,NULL,3,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-3.jpg\",\"products\\/12-3.jpg\",\"products\\/21-1.jpg\"]'),(423,4,NULL,NULL,9,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13.jpg\",\"products\\/19-1.jpg\"]'),(432,2,NULL,NULL,16,4.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/12-1.jpg\"]'),(434,9,NULL,NULL,15,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8-3.jpg\",\"products\\/9-1.jpg\"]'),(451,10,NULL,NULL,8,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\"]'),(453,9,NULL,NULL,11,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/3.jpg\",\"products\\/4-2.jpg\",\"products\\/23-3.jpg\"]'),(454,1,NULL,NULL,14,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-2.jpg\"]'),(458,5,NULL,NULL,9,4.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/22.jpg\"]'),(465,7,NULL,NULL,7,5.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/12.jpg\",\"products\\/21-1.jpg\"]'),(467,3,NULL,NULL,3,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/17.jpg\",\"products\\/22.jpg\"]'),(472,5,NULL,NULL,12,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/6.jpg\",\"products\\/11-1.jpg\"]'),(473,2,NULL,NULL,11,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/16.jpg\"]'),(476,7,NULL,NULL,18,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/18-1.jpg\"]'),(482,2,NULL,NULL,17,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/13.jpg\"]'),(497,6,NULL,NULL,13,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-1.jpg\",\"products\\/12.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(514,4,NULL,NULL,14,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-2.jpg\"]'),(519,6,NULL,NULL,4,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/15-1.jpg\",\"products\\/21-2.jpg\"]'),(523,7,NULL,NULL,1,5.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10-1.jpg\",\"products\\/23-2.jpg\"]'),(533,7,NULL,NULL,21,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/19-1.jpg\",\"products\\/21-2.jpg\",\"products\\/22-3.jpg\"]'),(538,10,NULL,NULL,4,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\"]'),(541,10,NULL,NULL,15,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/13.jpg\",\"products\\/18-1.jpg\",\"products\\/23-2.jpg\"]'),(547,7,NULL,NULL,23,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/17-2.jpg\",\"products\\/19-3.jpg\"]'),(563,8,NULL,NULL,18,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/1.jpg\",\"products\\/12-2.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\"]'),(571,3,NULL,NULL,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/10-2.jpg\"]'),(577,5,NULL,NULL,15,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11.jpg\",\"products\\/18-1.jpg\",\"products\\/20-2.jpg\",\"products\\/22-2.jpg\"]'),(589,10,NULL,NULL,21,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/17.jpg\"]'),(596,2,NULL,NULL,6,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11.jpg\",\"products\\/20-2.jpg\",\"products\\/20.jpg\",\"products\\/22-2.jpg\"]'),(598,7,NULL,NULL,6,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-1.jpg\",\"products\\/13.jpg\",\"products\\/17-2.jpg\",\"products\\/18-3.jpg\"]'),(621,5,NULL,NULL,5,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/9-1.jpg\"]'),(627,3,NULL,NULL,5,1.00,'Clean & perfect source code','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/21-2.jpg\"]'),(630,1,NULL,NULL,18,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2.jpg\",\"products\\/8-1.jpg\",\"products\\/11-3.jpg\",\"products\\/22-1.jpg\"]'),(638,1,NULL,NULL,15,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-3.jpg\",\"products\\/13-1.jpg\",\"products\\/23.jpg\"]'),(693,4,NULL,NULL,19,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/12-2.jpg\",\"products\\/15-1.jpg\",\"products\\/15.jpg\",\"products\\/21-1.jpg\"]'),(694,6,NULL,NULL,11,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/11-3.jpg\"]'),(765,10,NULL,NULL,20,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/5-2.jpg\",\"products\\/22-3.jpg\"]'),(771,7,NULL,NULL,14,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\"]'),(783,10,NULL,NULL,12,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/10.jpg\",\"products\\/18-2.jpg\"]'),(785,4,NULL,NULL,16,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11-3.jpg\",\"products\\/15.jpg\",\"products\\/20-2.jpg\",\"products\\/21-1.jpg\"]'),(794,5,NULL,NULL,6,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/8.jpg\",\"products\\/20-2.jpg\"]'),(805,2,NULL,NULL,2,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2-2.jpg\",\"products\\/5-3.jpg\",\"products\\/11-1.jpg\"]'),(824,3,NULL,NULL,6,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/4-1.jpg\"]'),(826,4,NULL,NULL,8,5.00,'Best ecommerce CMS online store!','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/11.jpg\"]'),(869,8,NULL,NULL,17,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2.jpg\",\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/21-1.jpg\"]'),(947,2,NULL,NULL,3,1.00,'Good app, good backup service and support. Good documentation.','published','2024-05-29 21:30:49','2024-05-29 21:30:49','[\"products\\/2.jpg\",\"products\\/11-2.jpg\",\"products\\/20-2.jpg\",\"products\\/20.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-05-29 21:30:51','2024-05-29 21:30:51');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-05-29 21:30:51','2024-05-29 21:30:51');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-05-29 21:30:54','2024-05-29 21:30:54',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(2,'None',0.000000,2,'published','2024-05-29 21:30:50','2024-05-29 21:30:50'),(3,'Import Tax',15.000000,3,'published','2024-05-29 21:30:50','2024-05-29 21:30:50');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL),(2,'PAYMENT',1,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-05-29 21:30:54','2024-05-29 21:30:54');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','cca96eae1decda959562cdca1794ee71',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','fefa6de028f88aa60271f931c95457ba',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','2fafb676d8f53833bfcc17c3410ea817',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','a1a74d93da277e151257be689d9fad5e',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','48c28f387422dee01d62f63904199193',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','62a59a180e4ca3639ad27835573d7f19',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2024-05-29 21:30:35','2024-05-29 21:30:35',NULL,'public'),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,'public'),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,'public'),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2024-05-29 21:30:36','2024-05-29 21:30:36',NULL,'public'),(16,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(17,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(18,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(19,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(20,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(21,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(22,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(25,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2024-05-29 21:30:37','2024-05-29 21:30:37',NULL,'public'),(26,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(27,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(28,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(29,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(30,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(31,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(32,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(33,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(34,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(35,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(36,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(37,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(38,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2024-05-29 21:30:38','2024-05-29 21:30:38',NULL,'public'),(39,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(40,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(41,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(42,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(43,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(44,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(45,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(46,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(47,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(48,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(49,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(50,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(51,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(52,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2024-05-29 21:30:39','2024-05-29 21:30:39',NULL,'public'),(53,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(54,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(55,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(56,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(57,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(58,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(59,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(60,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(61,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(62,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(63,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(64,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2024-05-29 21:30:40','2024-05-29 21:30:40',NULL,'public'),(65,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(66,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(67,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(68,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(69,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(70,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(71,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(72,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(73,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(74,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(75,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(76,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2024-05-29 21:30:41','2024-05-29 21:30:41',NULL,'public'),(77,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2024-05-29 21:30:42','2024-05-29 21:30:42',NULL,'public'),(78,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2024-05-29 21:30:42','2024-05-29 21:30:42',NULL,'public'),(79,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2024-05-29 21:30:42','2024-05-29 21:30:42',NULL,'public'),(80,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2024-05-29 21:30:42','2024-05-29 21:30:42',NULL,'public'),(81,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2024-05-29 21:30:42','2024-05-29 21:30:42',NULL,'public'),(82,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2024-05-29 21:30:42','2024-05-29 21:30:42',NULL,'public'),(83,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(84,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(85,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(86,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(87,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(88,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(89,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(90,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(91,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(92,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2024-05-29 21:30:45','2024-05-29 21:30:45',NULL,'public'),(93,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(94,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(95,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(96,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(97,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(98,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(99,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(100,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(101,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2024-05-29 21:30:51','2024-05-29 21:30:51',NULL,'public'),(102,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2024-05-29 21:30:52','2024-05-29 21:30:52',NULL,'public'),(103,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2024-05-29 21:30:52','2024-05-29 21:30:52',NULL,'public'),(104,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2024-05-29 21:30:52','2024-05-29 21:30:52',NULL,'public'),(105,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2024-05-29 21:30:52','2024-05-29 21:30:52',NULL,'public'),(106,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2024-05-29 21:30:52','2024-05-29 21:30:52',NULL,'public'),(107,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2024-05-29 21:30:52','2024-05-29 21:30:52',NULL,'public'),(108,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(109,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(110,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(111,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(112,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(113,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(114,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(115,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2024-05-29 21:30:53','2024-05-29 21:30:53',NULL,'public'),(116,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(117,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(118,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(119,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(120,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(121,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(122,0,'app','app',8,'image/png',8667,'general/app.png','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(123,0,'coming-soon','coming-soon',8,'image/jpeg',22253,'general/coming-soon.jpg','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(124,0,'favicon','favicon',8,'image/png',5060,'general/favicon.png','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(125,0,'logo-dark','logo-dark',8,'image/png',1484,'general/logo-dark.png','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(126,0,'logo-light','logo-light',8,'image/png',1572,'general/logo-light.png','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(127,0,'logo','logo',8,'image/png',1363,'general/logo.png','[]','2024-05-29 21:30:54','2024-05-29 21:30:54',NULL,'public'),(128,0,'newsletter','newsletter',8,'image/jpeg',9778,'general/newsletter.jpg','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',944,'general/payment-method-4.jpg','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',964,'general/payment-method-5.jpg','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(134,0,'1','1',9,'image/png',9133,'stores/1.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(135,0,'10','10',9,'image/png',4263,'stores/10.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(136,0,'11','11',9,'image/png',4420,'stores/11.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(137,0,'12','12',9,'image/png',4908,'stores/12.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(138,0,'13','13',9,'image/png',3441,'stores/13.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(139,0,'14','14',9,'image/png',4209,'stores/14.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(140,0,'15','15',9,'image/png',5113,'stores/15.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(141,0,'16','16',9,'image/png',4563,'stores/16.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(142,0,'17','17',9,'image/png',4896,'stores/17.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(143,0,'2','2',9,'image/png',9008,'stores/2.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(144,0,'3','3',9,'image/png',8006,'stores/3.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(145,0,'4','4',9,'image/png',8728,'stores/4.png','[]','2024-05-29 21:30:55','2024-05-29 21:30:55',NULL,'public'),(146,0,'5','5',9,'image/png',10689,'stores/5.png','[]','2024-05-29 21:30:56','2024-05-29 21:30:56',NULL,'public'),(147,0,'6','6',9,'image/png',10989,'stores/6.png','[]','2024-05-29 21:30:56','2024-05-29 21:30:56',NULL,'public'),(148,0,'7','7',9,'image/png',3730,'stores/7.png','[]','2024-05-29 21:30:56','2024-05-29 21:30:56',NULL,'public'),(149,0,'8','8',9,'image/png',4030,'stores/8.png','[]','2024-05-29 21:30:56','2024-05-29 21:30:56',NULL,'public'),(150,0,'9','9',9,'image/png',3810,'stores/9.png','[]','2024-05-29 21:30:56','2024-05-29 21:30:56',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-05-29 21:30:35','2024-05-29 21:30:35',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-05-29 21:30:35','2024-05-29 21:30:35',NULL),(3,0,'products',NULL,'products',0,'2024-05-29 21:30:37','2024-05-29 21:30:37',NULL),(4,0,'customers',NULL,'customers',0,'2024-05-29 21:30:45','2024-05-29 21:30:45',NULL),(5,0,'news',NULL,'news',0,'2024-05-29 21:30:51','2024-05-29 21:30:51',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-05-29 21:30:52','2024-05-29 21:30:52',NULL),(7,0,'promotion',NULL,'promotion',0,'2024-05-29 21:30:53','2024-05-29 21:30:53',NULL),(8,0,'general',NULL,'general',0,'2024-05-29 21:30:54','2024-05-29 21:30:54',NULL),(9,0,'stores',NULL,'stores',0,'2024-05-29 21:30:55','2024-05-29 21:30:55',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-05-29 21:30:54','2024-05-29 21:30:54');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(8,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',1,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Products Of Category',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQs',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(16,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(17,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(18,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Refund Policy',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(19,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQs',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(21,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(22,3,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Affiliate',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(23,3,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Career',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(24,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact us',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(25,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2024-05-29 21:30:54','2024-05-29 21:30:54');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(2,'Quick links','quick-links','published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(3,'Company','company','published','2024-05-29 21:30:54','2024-05-29 21:30:54'),(4,'Business','business','published','2024-05-29 21:30:54','2024-05-29 21:30:54');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2024-05-29 21:30:36','2024-05-29 21:30:36'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:42','2024-05-29 21:30:42'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:42','2024-05-29 21:30:42'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:42','2024-05-29 21:30:42'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:42','2024-05-29 21:30:42'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:42','2024-05-29 21:30:42'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-05-29 21:30:43','2024-05-29 21:30:43'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-29 21:30:53','2024-05-29 21:30:53'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-29 21:30:53','2024-05-29 21:30:53'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-29 21:30:53','2024-05-29 21:30:53'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-29 21:30:53','2024-05-29 21:30:53'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-29 21:30:53','2024-05-29 21:30:53'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-29 21:30:53','2024-05-29 21:30:53');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_06_100448_change_random_hash_for_media',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_04_030654_improve_social_links',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_05_16_100000_change_random_hash_for_media',1),(38,'2020_11_18_150916_ads_create_ads_table',2),(39,'2021_12_02_035301_add_ads_translations_table',2),(40,'2023_04_17_062645_add_open_in_new_tab',2),(41,'2023_11_07_023805_add_tablet_mobile_image',2),(42,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(43,'2024_04_27_100730_improve_analytics_setting',3),(44,'2015_06_29_025744_create_audit_history',4),(45,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(46,'2015_06_18_033822_create_blog_table',5),(47,'2021_02_16_092633_remove_default_value_for_author_type',5),(48,'2021_12_03_030600_create_blog_translations',5),(49,'2022_04_19_113923_add_index_to_table_posts',5),(50,'2023_08_29_074620_make_column_author_id_nullable',5),(51,'2016_06_17_091537_create_contacts_table',6),(52,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(53,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(54,'2024_03_25_000001_update_captcha_settings_for_contact',6),(55,'2024_04_19_063914_create_custom_fields_table',6),(56,'2020_03_05_041139_create_ecommerce_tables',7),(57,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(58,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(59,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(60,'2021_02_18_073505_update_table_ec_reviews',7),(61,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(62,'2021_03_10_025153_change_column_tax_amount',7),(63,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(64,'2021_04_28_074008_ecommerce_create_product_label_table',7),(65,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(66,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(67,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(68,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(69,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(70,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(71,'2021_11_23_071403_correct_languages_for_product_variations',7),(72,'2021_11_28_031808_add_product_tags_translations',7),(73,'2021_12_01_031123_add_featured_image_to_ec_products',7),(74,'2022_01_01_033107_update_table_ec_shipments',7),(75,'2022_02_16_042457_improve_product_attribute_sets',7),(76,'2022_03_22_075758_correct_product_name',7),(77,'2022_04_19_113334_add_index_to_ec_products',7),(78,'2022_04_28_144405_remove_unused_table',7),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(81,'2022_06_16_095633_add_index_to_some_tables',7),(82,'2022_06_30_035148_create_order_referrals_table',7),(83,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(84,'2022_08_14_032836_create_ec_order_returns_table',7),(85,'2022_08_14_033554_create_ec_order_return_items_table',7),(86,'2022_08_15_040324_add_billing_address',7),(87,'2022_08_30_091114_support_digital_products_table',7),(88,'2022_09_13_095744_create_options_table',7),(89,'2022_09_13_104347_create_option_value_table',7),(90,'2022_10_05_163518_alter_table_ec_order_product',7),(91,'2022_10_12_041517_create_invoices_table',7),(92,'2022_10_12_142226_update_orders_table',7),(93,'2022_10_13_024916_update_table_order_returns',7),(94,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(95,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(96,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(97,'2022_11_19_041643_add_ec_tax_product_table',7),(98,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(99,'2022_12_17_041532_fix_address_in_order_invoice',7),(100,'2022_12_26_070329_create_ec_product_views_table',7),(101,'2023_01_04_033051_fix_product_categories',7),(102,'2023_01_09_050400_add_ec_global_options_translations_table',7),(103,'2023_01_10_093754_add_missing_option_value_id',7),(104,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(105,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(106,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(107,'2023_02_27_095752_remove_duplicate_reviews',7),(108,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(109,'2023_04_21_082427_create_ec_product_categorizables_table',7),(110,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(111,'2023_05_17_025812_fix_invoice_issue',7),(112,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(113,'2023_05_27_144611_fix_exchange_rate_setting',7),(114,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(115,'2023_06_30_042512_create_ec_order_tax_information_table',7),(116,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(117,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(118,'2023_08_15_064505_create_ec_tax_rules_table',7),(119,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(120,'2023_08_22_094114_drop_unique_for_barcode',7),(121,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(122,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(123,'2023_09_19_024955_create_discount_product_categories_table',7),(124,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(125,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(126,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(127,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(128,'2023_12_25_040604_ec_create_review_replies_table',7),(129,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(130,'2024_01_16_070706_fix_translation_tables',7),(131,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(132,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(133,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(134,'2024_03_29_042242_migrate_old_captcha_settings',7),(135,'2024_03_29_093946_create_ec_order_return_histories_table',7),(136,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(137,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(138,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(139,'2024_05_07_073153_improve_table_wishlist',7),(140,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(141,'2024_05_15_021503_fix_invoice_path',7),(142,'2018_07_09_221238_create_faq_table',8),(143,'2021_12_03_082134_create_faq_translations',8),(144,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(145,'2016_10_03_032336_create_languages_table',9),(146,'2023_09_14_022423_add_index_for_language_table',9),(147,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(148,'2021_12_03_075608_create_page_translations',10),(149,'2023_07_06_011444_create_slug_translations_table',10),(150,'2019_11_18_061011_create_country_table',11),(151,'2021_12_03_084118_create_location_translations',11),(152,'2021_12_03_094518_migrate_old_location_data',11),(153,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(154,'2022_01_16_085908_improve_plugin_location',11),(155,'2022_08_04_052122_delete_location_backup_tables',11),(156,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(157,'2023_07_26_041451_add_more_columns_to_location_table',11),(158,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(159,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(160,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(161,'2021_07_06_030002_create_marketplace_table',12),(162,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(163,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(164,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(165,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(166,'2021_12_06_031304_update_table_mp_customer_revenues',12),(167,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(168,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(169,'2022_11_02_071413_add_more_info_for_store',12),(170,'2022_11_02_080444_add_tax_info',12),(171,'2023_02_01_062030_add_store_translations',12),(172,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(173,'2023_02_17_023648_fix_store_prefix',12),(174,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(175,'2024_05_07_082630_create_mp_messages_table',12),(176,'2017_10_24_154832_create_newsletter_table',13),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(178,'2017_05_18_080441_create_payment_tables',14),(179,'2021_03_27_144913_add_customer_type_into_table_payments',14),(180,'2021_05_24_034720_make_column_currency_nullable',14),(181,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(182,'2021_10_19_020859_update_metadata_field',14),(183,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(184,'2022_07_07_153354_update_charge_id_in_table_payments',14),(185,'2017_07_11_140018_create_simple_slider_table',15),(186,'2016_10_07_193005_create_translations_table',16),(187,'2023_12_12_105220_drop_translations_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','sawayn.jalyn@example.org','+18286640089','61567 Allen Passage Suite 002','PK','New Jersey','New Lola',2,'stores/1.png',NULL,'Vel itaque quia aliquid accusamus.','Est minus qui omnis iure et et magnam. Et amet numquam et. Et ratione sed repellendus odio.','published',NULL,'2024-05-29 21:30:57','2024-05-29 21:30:57',NULL,NULL),(2,'Global Office','kvon@example.org','+16036472493','363 Mante Curve','TR','Utah','West Jeffrey',3,'stores/2.png',NULL,'Quis ut sapiente animi ut esse quos voluptas.','Ut voluptatem nemo et dolorem. Voluptatem et culpa aperiam voluptatem ut ea ut. Nam ipsam minus eum ut numquam. Dolor aut pariatur asperiores esse.','published',NULL,'2024-05-29 21:30:57','2024-05-29 21:30:57',NULL,NULL),(3,'Young Shop','clare38@example.com','+17043308154','5908 Kay Fall','CG','New York','Mistyborough',4,'stores/3.png',NULL,'Velit libero voluptatem fuga culpa.','Optio sed rerum aspernatur ipsa magnam qui. Dolor et repudiandae modi doloribus beatae.','published',NULL,'2024-05-29 21:30:57','2024-05-29 21:30:57',NULL,NULL),(4,'Global Store','gschinner@example.com','+18306733382','666 Wunsch Club','ES','Delaware','Lake Kaylaborough',8,'stores/4.png',NULL,'Eos aperiam id aut et fugiat est.','Magnam a nihil fuga ut. Occaecati inventore sequi aut amet. Minus nemo tempore ut dolores quia.','published',NULL,'2024-05-29 21:30:57','2024-05-29 21:30:57',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$3GVyiNqEY1mK3N0JP1GuTewZC25.MByNt9Wj6X1Rj4wBrnD2Ylrma','{\"name\":\"Emanuel Johns\",\"number\":\"+15345857595\",\"full_name\":\"Nikita Gottlieb\",\"description\":\"Raven Schiller III\"}','2024-05-29 21:30:56','2024-05-29 21:30:56','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$2gPbkNtc9vSGcSM4PG/NQe.CqWXu2ekq0eiqGkRRW7clTVHsaB20i','{\"name\":\"Kendra Orn\",\"number\":\"+18706991889\",\"full_name\":\"Miss Ada Emmerich\",\"description\":\"Dr. Chance Rutherford\"}','2024-05-29 21:30:56','2024-05-29 21:30:56','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$BENhS5Er3wR2pMPQ1ouax.aSGwgyvlWWQ6jvwCcHDLLaTJML33J8W','{\"name\":\"Geraldine Frami I\",\"number\":\"+18035970390\",\"full_name\":\"Donald Kautzer\",\"description\":\"Dr. Lela Waelchi I\"}','2024-05-29 21:30:57','2024-05-29 21:30:57','bank_transfer',NULL),(4,8,0.00,0.00,0.00,'$2y$12$.tXsuRL.c/de5AuNKoeKNuQ29NZRHXNzgvC5FVCwOJvKO9/hN598C','{\"name\":\"Mrs. Matilda Waelchi\",\"number\":\"+13473306803\",\"full_name\":\"Mr. Antone Oberbrunner\",\"description\":\"Letitia Block\"}','2024-05-29 21:30:57','2024-05-29 21:30:57','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(2,'About us','<p>Mock Turtle said with a T!\' said the Queen, in a melancholy air, and, after folding his arms and legs in all their simple sorrows, and find a pleasure in all my life, never!\' They had not gone (We know it was empty: she did so, and giving it something out of its voice. \'Back to land again, and Alice looked all round the refreshments!\' But there seemed to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, as she spoke; \'either you or your head must be kind to them,\' thought.</p><p>Pray, what is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the poor little thing was waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she went on, half to Alice. \'Nothing,\' said Alice. \'You are,\' said the March Hare, who had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have none, Why, I do it again and again.\' \'You are old,\' said the Caterpillar angrily, rearing itself.</p><p>March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a whiting. Now you know.\' \'And what are they doing?\' Alice whispered to the other arm curled round her once more, while the rest waited in silence. At last the Mock Turtle, who looked at it uneasily, shaking it every now and then; such as, that a red-hot poker will burn you if you like!\' the Duchess to play.</p><p>WOULD not remember ever having heard of one,\' said Alice, always ready to play croquet with the bread-and-butter getting so far off). \'Oh, my poor little Lizard, Bill, was in the beautiful garden, among the people near the centre of the miserable Mock Turtle. \'Very much indeed,\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a great many more than nine feet high. \'I wish you could draw treacle out of their wits!\' So she began again. \'I should like to be an advantage,\' said Alice.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(3,'Terms Of Use','<p>I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the rest, Between yourself and me.\' \'That\'s the first to break the silence. \'What day of the Lizard\'s slate-pencil, and the three gardeners who were giving it a very curious to know when the race was over. However, when they hit her; and when she turned the corner, but the Mouse was bristling all over, and she told her sister, as.</p><p>She had quite forgotten the words.\' So they went up to her daughter \'Ah, my dear! I wish you wouldn\'t squeeze so.\' said the Hatter. \'You might just as if nothing had happened. \'How am I then? Tell me that first, and then Alice dodged behind a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together, Alice heard the Queen\'s hedgehog just now, only it ran away when it grunted again, and put it into his cup of tea, and looked at her, and said, very gravely, \'I.</p><p>I can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all returned from him to you, Though they were nowhere to be no chance of this, so she tried another question. \'What sort of people live about here?\' \'In THAT direction,\' waving the other side of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had not attended to this mouse? Everything is so out-of-the-way.</p><p>And mentioned me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at the stick, running a very good advice, (though she very soon had to stop and untwist it. After a time she went on in the world you fly, Like a tea-tray in the distance, screaming with passion. She had not the right size for going through the air! Do you think you can have no sort of meaning in it,\' said Five, in a thick wood. \'The first thing I\'ve got back to the table.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(4,'Terms &amp; Conditions','<p>No, I\'ve made up my mind about it; if I\'m not used to say a word, but slowly followed her back to the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not think of nothing better to say anything. \'Why,\' said the Dormouse, and repeated her question. \'Why did they live at the top of his great wig.\' The judge, by the officers of the teacups as the doubled-up soldiers were silent, and looked at.</p><p>She hastily put down her flamingo, and began whistling. \'Oh, there\'s no name signed at the top of it. Presently the Rabbit began. Alice thought she had never done such a rule at processions; \'and besides, what would happen next. First, she dreamed of little Alice herself, and began staring at the top of his great wig.\' The judge, by the way out of sight, they were lying round the table, but there was a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of her sharp.</p><p>Pigeon; \'but I must go by the soldiers, who of course had to be no chance of this, so she set to work throwing everything within her reach at the flowers and the choking of the trees as well as if it makes rather a handsome pig, I think.\' And she went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was soon submitted to by the English, who wanted leaders, and had to double themselves up and straightening itself out again, so she bore it as she left her.</p><p>Cat. \'Do you take me for a minute or two to think that there was enough of me left to make out who I WAS when I got up and beg for its dinner, and all of them attempted to explain the paper. \'If there\'s no meaning in it,\' but none of YOUR adventures.\' \'I could tell you just now what the name of the way the people near the looking-glass. There was not an encouraging tone. Alice looked at the Hatter, \'when the Queen was to get an opportunity of showing off her unfortunate guests to.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(5,'Refund Policy','<p>Allow me to introduce it.\' \'I don\'t even know what to uglify is, you ARE a simpleton.\' Alice did not appear, and after a few minutes, and she hurried out of it, and finding it very hard indeed to make personal remarks,\' Alice said nothing: she had caught the baby with some curiosity. \'What a curious plan!\' exclaimed Alice. \'And ever since that,\' the Hatter went on eagerly: \'There is such a thing as \"I eat what I was a paper label, with the strange creatures of her favourite word \'moral,\' and.</p><p>Mock Turtle said: \'no wise fish would go anywhere without a moment\'s pause. The only things in the kitchen. \'When I\'M a Duchess,\' she said to the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course it is,\' said the King, \'or I\'ll have you executed, whether you\'re a little shriek, and went to school in the house if it likes.\' \'I\'d rather finish my tea,\' said the Duchess, as she remembered the number of changes she had gone through that day. \'That PROVES his guilt,\' said the Duchess.</p><p>I suppose.\' So she sat down and began picking them up again as she swam nearer to watch them, and all the time they had to stoop to save her neck kept getting entangled among the leaves, which she had forgotten the Duchess began in a great many more than that, if you drink much from a Caterpillar The Caterpillar and Alice was not going to remark myself.\' \'Have you seen the Mock Turtle, who looked at Two. Two began in a low voice, to the garden door. Poor Alice! It was so full of tears, \'I do.</p><p>Dormouse was sitting on the back. However, it was empty: she did not much larger than a rat-hole: she knelt down and looked along the passage into the garden at once; but, alas for poor Alice! when she noticed a curious dream!\' said Alice, feeling very curious sensation, which puzzled her a good opportunity for croqueting one of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Oh, you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice with one eye; but to open it.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(10,'Affiliate','<p>I only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a cart-horse, and expecting every moment to be true): If she should push the matter with it. There could be NO mistake about it: it was perfectly round, she found herself safe in a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess said to one of the miserable Mock Turtle. \'Very much indeed,\' said Alice. \'Anything you like,\' said the Hatter. \'Nor I,\' said the.</p><p>You see the Hatter said, tossing his head sadly. \'Do I look like it?\' he said, turning to Alice, she went back to the Dormouse, and repeated her question. \'Why did you ever see you any more!\' And here Alice began in a shrill, loud voice, and see how the Dodo replied very gravely. \'What else have you executed.\' The miserable Hatter dropped his teacup instead of the Rabbit\'s voice; and Alice looked at her for a little animal (she couldn\'t guess of what work it would be four thousand miles down.</p><p>Will you, won\'t you, will you, old fellow?\' The Mock Turtle to the porpoise, \"Keep back, please: we don\'t want to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Gryphon. \'Of course,\' the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, looking down at once, with a sigh. \'I only took the hookah into its eyes again, to see the Hatter asked triumphantly. Alice did not like to be no chance of her childhood: and how she would gather about her any more.</p><p>I was thinking I should think!\' (Dinah was the White Rabbit, who said in a great deal of thought, and it was addressed to the door, she found she had never had to fall upon Alice, as she spoke, but no result seemed to Alice again. \'No, I give you fair warning,\' shouted the Queen added to one of them at dinn--\' she checked herself hastily, and said to herself. (Alice had no pictures or conversations in it, and then I\'ll tell you how it was talking in a day did you call it sad?\' And she opened.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(11,'Career','<p>Caucus-Race and a Long Tale They were indeed a queer-looking party that assembled on the OUTSIDE.\' He unfolded the paper as he shook both his shoes on. \'--and just take his head off outside,\' the Queen furiously, throwing an inkstand at the door-- Pray, what is the use of repeating all that green stuff be?\' said Alice. \'Off with her head in the air. She did not seem to have lessons to learn! No, I\'ve made up my mind about it; and while she was appealed to by the whole place around her became.</p><p>I WAS when I was going on, as she could. \'No,\' said the Cat, and vanished. Alice was not quite sure whether it was just in time to be true): If she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was no more of the cupboards as she said to herself \'Now I can do without lobsters, you know. So you see, Miss, this here ought to be otherwise than what it was perfectly round, she found she had expected: before she found.</p><p>I ever heard!\' \'Yes, I think I must go and take it away!\' There was nothing on it but tea. \'I don\'t know much,\' said Alice, \'how am I to get in?\' she repeated, aloud. \'I shall sit here,\' the Footman continued in the middle, wondering how she was in the house, quite forgetting in the distance, screaming with passion. She had just succeeded in getting its body tucked away, comfortably enough, under her arm, with its tongue hanging out of the officers of the Lizard\'s slate-pencil, and the reason.</p><p>In a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at them with one of them bowed low. \'Would you like to try the whole court was in livery: otherwise, judging by his garden, and I don\'t want to be?\' it asked. \'Oh, I\'m not used to say.\' \'So he did, so he did,\' said the King, looking round the refreshments!\' But there seemed to her great delight it fitted! Alice opened the door of the soldiers remaining behind to execute the unfortunate gardeners.</p>',1,NULL,'default',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2025-05-30 04:30:53\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2024-05-29 21:30:53','2024-05-29 21:30:53');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(2,2),(3,2),(1,3),(4,3),(1,4),(4,4),(2,5),(4,5),(1,6),(3,6),(2,7),(4,7),(2,8),(3,8),(1,9),(4,9),(2,10),(3,10),(2,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2089,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2185,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',929,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1965,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1950,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1030,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1024,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',932,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2003,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1995,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1366,NULL,'2024-05-29 21:30:52','2024-05-29 21:30:52');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-05-29 21:30:51','2024-05-29 21:30:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-05-29 21:30:55'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-05-29 21:30:55'),(4,'analytics_dashboard_widgets','0','2024-05-29 21:30:26','2024-05-29 21:30:26'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-05-29 21:30:27','2024-05-29 21:30:27'),(6,'api_layer_api_key','',NULL,'2024-05-29 21:30:55'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-05-29 21:30:34','2024-05-29 21:30:34'),(12,'language_hide_default','1',NULL,'2024-05-29 21:30:55'),(13,'language_switcher_display','dropdown',NULL,'2024-05-29 21:30:55'),(14,'language_display','all',NULL,'2024-05-29 21:30:55'),(15,'language_hide_languages','[]',NULL,'2024-05-29 21:30:55'),(16,'simple_slider_using_assets','0',NULL,NULL),(17,'media_random_hash','243dd59e79cb5843bc9df0ae8b817464',NULL,'2024-05-29 21:30:55'),(18,'payment_cod_status','1',NULL,'2024-05-29 21:30:55'),(19,'payment_bank_transfer_status','1',NULL,'2024-05-29 21:30:55'),(20,'theme','martfury',NULL,'2024-05-29 21:30:55'),(21,'show_admin_bar','1',NULL,'2024-05-29 21:30:55'),(22,'admin_favicon','general/favicon.png',NULL,'2024-05-29 21:30:55'),(23,'admin_logo','general/logo-light.png',NULL,'2024-05-29 21:30:55'),(24,'permalink-botble-blog-models-post','blog',NULL,'2024-05-29 21:30:55'),(25,'permalink-botble-blog-models-category','blog',NULL,'2024-05-29 21:30:55'),(26,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-05-29 21:30:55'),(27,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-05-29 21:30:55'),(28,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-05-29 21:30:55'),(29,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-05-29 21:30:55'),(30,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-05-29 21:30:55'),(31,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-05-29 21:30:55'),(32,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-05-29 21:30:55'),(33,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-05-29 21:30:55'),(34,'ecommerce_product_sku_format','MF-2443-[%S]',NULL,'2024-05-29 21:30:55'),(35,'ecommerce_store_name','Martfury',NULL,NULL),(36,'ecommerce_store_phone','1800979769',NULL,NULL),(37,'ecommerce_store_address','502 New Street',NULL,NULL),(38,'ecommerce_store_state','Brighton VIC',NULL,NULL),(39,'ecommerce_store_city','Brighton VIC',NULL,NULL),(40,'ecommerce_store_country','AU',NULL,NULL),(41,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(42,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(43,'theme-martfury-copyright','© %Y MartFury. All Rights Reserved.',NULL,NULL),(44,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(45,'theme-martfury-logo','general/logo.png',NULL,NULL),(46,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(47,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(48,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(49,'theme-martfury-email','contact@martfury.co',NULL,NULL),(50,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(51,'theme-martfury-homepage_id','1',NULL,NULL),(52,'theme-martfury-blog_page_id','6',NULL,NULL),(53,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(54,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(55,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(56,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(57,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(58,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(59,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(60,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(61,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(62,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(63,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(64,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(65,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(66,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(67,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(68,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(69,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(70,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(71,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(72,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(73,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(74,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(75,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(76,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(77,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(78,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(79,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(80,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(81,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(82,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(83,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(84,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(85,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(86,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(87,'theme-martfury-primary_font','Work Sans',NULL,NULL),(88,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(89,'theme-martfury-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(90,'theme-martfury-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2024-05-29 21:30:53','2024-05-29 21:30:53'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2024-05-29 21:30:53','2024-05-29 21:30:53'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2024-05-29 21:30:53','2024-05-29 21:30:53');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-05-29 21:30:53','2024-05-29 21:30:53');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-29 21:30:35','2024-05-29 21:30:35'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-29 21:30:36','2024-05-29 21:30:36'),(45,'dual-camera-20mp-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:42','2024-05-29 21:30:57'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:42','2024-05-29 21:30:42'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:42','2024-05-29 21:30:42'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:42','2024-05-29 21:30:42'),(49,'smart-watch-external-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:42','2024-05-29 21:30:57'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(53,'samsung-smart-phone-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:57'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(57,'sound-intone-i65-earphone-white-version-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:57'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(61,'samsung-gear-vr-virtual-reality-headset-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:57'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(65,'mvmth-classical-leather-watch-in-black-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:57'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:43','2024-05-29 21:30:43'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-29 21:30:50','2024-05-29 21:30:50'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-29 21:30:50','2024-05-29 21:30:50'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-29 21:30:50','2024-05-29 21:30:50'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-29 21:30:50','2024-05-29 21:30:50'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-29 21:30:50','2024-05-29 21:30:50'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-29 21:30:50','2024-05-29 21:30:50'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-05-29 21:30:52','2024-05-29 21:30:52'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-05-29 21:30:52','2024-05-29 21:30:52'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-05-29 21:30:52','2024-05-29 21:30:52'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-05-29 21:30:52','2024-05-29 21:30:52'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-05-29 21:30:52','2024-05-29 21:30:52'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-05-29 21:30:52','2024-05-29 21:30:54'),(94,'home',1,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(104,'career',11,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-05-29 21:30:53','2024-05-29 21:30:53'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-05-29 21:30:57','2024-05-29 21:30:57'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-05-29 21:30:57','2024-05-29 21:30:57'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-05-29 21:30:57','2024-05-29 21:30:57'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-05-29 21:30:57','2024-05-29 21:30:57'),(110,'dual-camera-20mp-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(111,'dual-camera-20mp-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(112,'dual-camera-20mp-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(113,'smart-watches',27,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(114,'beat-headphone',28,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(115,'red-black-headphone',29,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(116,'red-black-headphone',30,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(117,'smart-watch-external-digital',31,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(118,'smart-watch-external-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(119,'smart-watch-external-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(120,'nikon-hd-camera',34,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(121,'nikon-hd-camera',35,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(122,'nikon-hd-camera',36,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(123,'audio-equipment',37,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(124,'audio-equipment',38,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(125,'smart-televisions',39,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(126,'smart-televisions',40,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(127,'smart-televisions',41,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(128,'samsung-smart-phone-digital',42,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(129,'samsung-smart-phone-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(130,'samsung-smart-phone-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(131,'herschel-leather-duffle-bag-in-brown-color',45,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(132,'herschel-leather-duffle-bag-in-brown-color',46,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(133,'herschel-leather-duffle-bag-in-brown-color',47,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(134,'xbox-one-wireless-controller-black-color',48,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(135,'xbox-one-wireless-controller-black-color',49,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(136,'epsion-plaster-printer',50,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(137,'epsion-plaster-printer',51,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(138,'sound-intone-i65-earphone-white-version-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(139,'bo-play-mini-bluetooth-speaker',53,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(140,'bo-play-mini-bluetooth-speaker',54,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(141,'bo-play-mini-bluetooth-speaker',55,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(142,'apple-macbook-air-retina-133-inch-laptop',56,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(143,'apple-macbook-air-retina-133-inch-laptop',57,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(144,'apple-macbook-air-retina-12-inch-laptop',58,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(145,'apple-macbook-air-retina-12-inch-laptop',59,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(146,'samsung-gear-vr-virtual-reality-headset-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(147,'samsung-gear-vr-virtual-reality-headset-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(148,'samsung-gear-vr-virtual-reality-headset-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(149,'aveeno-moisturizing-body-shower-450ml',63,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(150,'nyx-beauty-couton-pallete-makeup-12',64,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(151,'nyx-beauty-couton-pallete-makeup-12',65,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(152,'nyx-beauty-couton-pallete-makeup-12',66,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(153,'nyx-beauty-couton-pallete-makeup-12',67,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(154,'nyx-beauty-couton-pallete-makeup-12',68,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(155,'nyx-beauty-couton-pallete-makeup-12',69,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(156,'nyx-beauty-couton-pallete-makeup-12',70,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(157,'mvmth-classical-leather-watch-in-black-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(158,'mvmth-classical-leather-watch-in-black-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(159,'baxter-care-hair-kit-for-bearded-mens',73,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(160,'baxter-care-hair-kit-for-bearded-mens',74,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(161,'baxter-care-hair-kit-for-bearded-mens',75,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(162,'baxter-care-hair-kit-for-bearded-mens',76,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(163,'ciate-palemore-lipstick-bold-red-color',77,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(164,'ciate-palemore-lipstick-bold-red-color',78,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57'),(165,'ciate-palemore-lipstick-bold-red-color',79,'Botble\\Ecommerce\\Models\\Product','products','2024-05-29 21:30:57','2024-05-29 21:30:57');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-29 21:30:52','2024-05-29 21:30:52'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-29 21:30:52','2024-05-29 21:30:52'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-29 21:30:52','2024-05-29 21:30:52'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-29 21:30:52','2024-05-29 21:30:52'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-29 21:30:52','2024-05-29 21:30:52');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'michel.tromp@becker.com',NULL,'$2y$12$5xCAR.Z8lYg7RczawROJ5OecDjTsqne7Rdr13QRNopp/cb.Rz7AoO',NULL,'2024-05-29 21:30:51','2024-05-29 21:30:51','Titus','Abbott','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2024-05-29 21:30:55','2024-05-29 21:30:55'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2024-05-29 21:30:55','2024-05-29 21:30:55');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 11:31:01
