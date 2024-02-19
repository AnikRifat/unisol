-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: 127.0.0.1    Database: wowy
-- ------------------------------------------------------
-- Server version	8.0.33

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'VE1r1dVgFene4UvSMI8W02aH2o5qQIW7',1,'2023-10-24 23:46:18','2023-10-24 23:46:18','2023-10-24 23:46:18'),(2,2,'9qX1K1RSAZytN17UNoJuARj3pwZ3hOpF',1,'2023-10-24 23:46:18','2023-10-24 23:46:18','2023-10-24 23:46:18'),(3,3,'h2Vp7xFVRLKa0PeB0Y7A6Vh42RBI8gkV',1,'2023-10-24 23:46:18','2023-10-24 23:46:18','2023-10-24 23:46:18');
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
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Smart Offer','2028-10-25 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-10-24 23:46:18','2023-10-24 23:46:18',1),(2,'Sale off','2028-10-25 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-10-24 23:46:18','2023-10-24 23:46:18',1),(3,'New Arrivals','2028-10-25 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-10-24 23:46:18','2023-10-24 23:46:18',1),(4,'Gaming Area','2028-10-25 00:00:00','not_set','ILSDKVYFGXPJ','promotion/4.png','/products',0,4,'published','2023-10-24 23:46:18','2023-10-24 23:46:18',1),(5,'Smart Offer','2028-10-25 00:00:00','not_set','IZ6WU8KUALYE','promotion/5.png','/products',0,5,'published','2023-10-24 23:46:18','2023-10-24 23:46:18',1),(6,'Repair Services','2028-10-25 00:00:00','banner-big','IZ6WU8KUALYF','promotion/6.png','/products',0,6,'published','2023-10-24 23:46:18','2023-10-24 23:46:18',1);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
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
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Commodi aperiam blanditiis ea velit. Itaque sunt error inventore quis magni et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(2,'Fashion',0,'Ipsa itaque sit cupiditate ut similique. Eveniet veniam vel eos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(3,'Electronic',0,'Est quas consequatur consequatur et numquam nihil. Cum modi quia et aut amet quia. Dolorem optio id molestiae rerum quisquam molestias. In et distinctio quisquam architecto aut voluptatem et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(4,'Commercial',0,'Qui sint quos nemo rerum provident pariatur ducimus. Deserunt nihil velit enim exercitationem nihil totam facere. Vitae illo quo minima in.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-10-24 23:46:17','2023-10-24 23:46:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
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
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,'brands/1.png','published',0,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(2,'Hiching',NULL,NULL,'brands/2.png','published',1,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(3,'Kepslo',NULL,NULL,'brands/3.png','published',2,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(4,'Groneba',NULL,NULL,'brands/4.png','published',3,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(5,'Babian',NULL,NULL,'brands/5.png','published',4,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(6,'Valorant',NULL,NULL,'brands/6.png','published',5,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(7,'Pure',NULL,NULL,'brands/7.png','published',6,1,'2023-10-24 23:45:59','2023-10-24 23:45:59');
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
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(2,'EUR','€',0,2,1,0,0.91,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(3,'VND','₫',0,0,2,0,23717.5,'2023-10-24 23:45:59','2023-10-24 23:45:59');
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
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Ms. Maurine Thiel II','john.smith@botble.com','+12313048945','ER','Minnesota','North Otis','5974 Emmie Rue Apt. 797',1,1,'2023-10-24 23:46:09','2023-10-24 23:46:09','30876-8587'),(2,'Ms. Maurine Thiel II','john.smith@botble.com','+18487204671','AL','North Carolina','Flatleyshire','4118 Alvina Hollow',1,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','41869'),(3,'Prof. Wilfrid Frami','customer@botble.com','+13233219174','LK','Virginia','Juanaton','99900 Jena Valleys Suite 827',2,1,'2023-10-24 23:46:09','2023-10-24 23:46:09','50256'),(4,'Prof. Wilfrid Frami','customer@botble.com','+16209351881','PM','New Hampshire','East Anaisside','12697 Veda Field Suite 991',2,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','71061-0992'),(5,'Veronica Conn Sr.','tara.kuvalis@example.org','+17724431805','CW','Idaho','Aldenberg','88578 Yolanda Points Suite 729',3,1,'2023-10-24 23:46:10','2023-10-24 23:46:10','81647'),(6,'Saige Waelchi DVM','ziemann.elva@example.com','+13257620438','SA','Connecticut','Cummingsmouth','914 Weissnat Fields Suite 749',4,1,'2023-10-24 23:46:10','2023-10-24 23:46:10','53300'),(7,'Jordi Schumm','dlabadie@example.net','+16184623460','TR','Rhode Island','Bergeville','33124 Justyn Squares Suite 444',5,1,'2023-10-24 23:46:10','2023-10-24 23:46:10','55583'),(8,'Antonio Abernathy','baron.gibson@example.org','+19073606272','JE','Florida','Port Mina','62471 Gutkowski Vista',6,1,'2023-10-24 23:46:11','2023-10-24 23:46:11','94950'),(9,'Tess Harris','wyman.bernhard@example.com','+12206853726','GH','New Hampshire','Kaylahmouth','6968 Gerlach Neck Apt. 986',7,1,'2023-10-24 23:46:11','2023-10-24 23:46:11','76778'),(10,'Gonzalo Goldner PhD','cbalistreri@example.org','+14085672418','SK','Maryland','Raustad','7870 Jerel Estates',8,1,'2023-10-24 23:46:11','2023-10-24 23:46:11','25899-6016'),(11,'Judy Donnelly','tzulauf@example.net','+18288875279','MA','North Dakota','Lake Terence','3511 Haag Shoals',9,1,'2023-10-24 23:46:11','2023-10-24 23:46:11','21799'),(12,'Oswaldo Stroman','miller.kassulke@example.com','+14459496032','NO','Vermont','Jaylonfort','68920 Jordon Islands Suite 094',10,1,'2023-10-24 23:46:11','2023-10-24 23:46:11','42493-5791');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Ms. Maurine Thiel II','john.smith@botble.com','$2y$12$WKYg5RSYTA5OfwzoKOfAyuulT3Y6d53RrKcijIBDaYIEe6Gqbm3jW','customers/3.jpg','1978-09-29','+15308818288',NULL,'2023-10-24 23:46:09','2023-10-24 23:46:09','2023-10-25 06:46:09',NULL,'activated'),(2,'Prof. Wilfrid Frami','customer@botble.com','$2y$12$92JhlkjwrE.u4UcWGd1db.M8Rc4vr.GsidRcqw3pn0/TNn4rJu0AC','customers/2.jpg','1975-09-27','+16787869782',NULL,'2023-10-24 23:46:09','2023-10-24 23:46:09','2023-10-25 06:46:09',NULL,'activated'),(3,'Veronica Conn Sr.','tara.kuvalis@example.org','$2y$12$aNXVAbvrykdKr9FPdaR1reGRLZLCHOizLotklE05Q0JAqzJIBod32','customers/1.jpg','1999-10-02','+16782378900',NULL,'2023-10-24 23:46:10','2023-10-24 23:46:10','2023-10-25 06:46:10',NULL,'activated'),(4,'Saige Waelchi DVM','ziemann.elva@example.com','$2y$12$r3x1MRoBKTvydpPogU5rr.r3Zb0gSf.CbGdaJQdv6E8eU2g/5rGFK','customers/2.jpg','1990-10-09','+12675920527',NULL,'2023-10-24 23:46:10','2023-10-24 23:46:10','2023-10-25 06:46:10',NULL,'activated'),(5,'Jordi Schumm','dlabadie@example.net','$2y$12$StlB2BujzpQyqiGjP76YzujeUKdStpq/k6eC6JKkKpcvw8bAtSQJK','customers/3.jpg','1989-10-18','+19198013296',NULL,'2023-10-24 23:46:10','2023-10-24 23:46:10','2023-10-25 06:46:10',NULL,'activated'),(6,'Antonio Abernathy','baron.gibson@example.org','$2y$12$XDfwvao2.LBN5YJh0MyITeghThiKCNqcfZmNwAhqha48grNVfWchi','customers/4.jpg','1992-09-28','+13619151091',NULL,'2023-10-24 23:46:10','2023-10-24 23:46:10','2023-10-25 06:46:10',NULL,'activated'),(7,'Tess Harris','wyman.bernhard@example.com','$2y$12$kxiCVrrDdamgTzzbO0CGY.6xFTz4gtIiVR8wbecobk38KfRb/LlSS','customers/5.jpg','1988-10-24','+12283726658',NULL,'2023-10-24 23:46:11','2023-10-24 23:46:11','2023-10-25 06:46:11',NULL,'activated'),(8,'Gonzalo Goldner PhD','cbalistreri@example.org','$2y$12$7M822o8XOdvdC3aBQMsxwe2WDhfEOTOGTRMk6A.2HG0q1bGF/mlCS','customers/6.jpg','1977-10-04','+13395203259',NULL,'2023-10-24 23:46:11','2023-10-24 23:46:11','2023-10-25 06:46:11',NULL,'activated'),(9,'Judy Donnelly','tzulauf@example.net','$2y$12$4srJpn0aLu6Qbb9EbRP/5u0wa5nJOkCDLVdTmye01mIyApDJIG4NO','customers/7.jpg','2000-09-29','+15085513629',NULL,'2023-10-24 23:46:11','2023-10-24 23:46:11','2023-10-25 06:46:11',NULL,'activated'),(10,'Oswaldo Stroman','miller.kassulke@example.com','$2y$12$p0l2JrJFc7sUnMxWHLgR5.7ZApILeKG3AAnzUuL4Wi4Hq1nwZ0Yty','customers/8.jpg','1979-10-02','+13808708855',NULL,'2023-10-24 23:46:11','2023-10-24 23:46:11','2023-10-25 06:46:11',NULL,'activated');
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
INSERT INTO `ec_flash_sale_products` VALUES (1,19,89.6,12,5),(2,21,42.16,17,4);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2023-12-06 00:00:00','published','2023-10-24 23:46:12','2023-10-24 23:46:12'),(2,'Gadgets &amp; Accessories','2023-11-10 00:00:00','published','2023-10-24 23:46:12','2023-10-24 23:46:12');
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(1,2,'2 Year',10,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(1,3,'3 Year',20,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(2,4,'4GB',0,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(2,5,'8GB',10,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(2,6,'16GB',20,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(3,7,'Core i5',0,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(3,8,'Core i7',10,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(3,9,'Core i9',20,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(4,10,'128GB',0,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(4,11,'256GB',10,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(4,12,'512GB',20,9999,0,'2023-10-24 23:46:13','2023-10-24 23:46:13');
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
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-10-24 23:46:13','2023-10-24 23:46:13');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',40,'Apple iPhone 13 Plus',NULL,'products/8.jpg',2,130.00,260.00,0.00,0.00,260.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(2,1,'Botble\\Ecommerce\\Models\\Product',51,'Macbook Pro 13 inch',NULL,'products/12.jpg',1,125.00,125.00,0.00,0.00,125.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(3,1,'Botble\\Ecommerce\\Models\\Product',70,'Black Smart Watches',NULL,'products/18-1.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(4,1,'Botble\\Ecommerce\\Models\\Product',74,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,124.00,372.00,0.00,0.00,372.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(5,2,'Botble\\Ecommerce\\Models\\Product',35,'Chikie - Bluetooth Speaker',NULL,'products/4-1.jpg',1,70.00,70.00,0.00,0.00,70.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(6,2,'Botble\\Ecommerce\\Models\\Product',61,'Hand playstation',NULL,'products/15-1.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(7,2,'Botble\\Ecommerce\\Models\\Product',69,'Black Smart Watches',NULL,'products/18.jpg',3,113.00,339.00,0.00,0.00,339.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(8,2,'Botble\\Ecommerce\\Models\\Product',79,'Phillips Mouse',NULL,'products/23-1.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(9,3,'Botble\\Ecommerce\\Models\\Product',36,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5.jpg',1,41.00,41.00,0.00,0.00,41.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(10,3,'Botble\\Ecommerce\\Models\\Product',38,'Camera Samsung SS-24',NULL,'products/6-1.jpg',1,52.00,52.00,0.00,0.00,52.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(11,3,'Botble\\Ecommerce\\Models\\Product',59,'MacSafe 80W',NULL,'products/14.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(12,3,'Botble\\Ecommerce\\Models\\Product',71,'Leather Watch Band Serial 3',NULL,'products/19.jpg',1,128.00,128.00,0.00,0.00,128.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(13,4,'Botble\\Ecommerce\\Models\\Product',31,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',1,471.00,471.00,0.00,0.00,471.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(14,4,'Botble\\Ecommerce\\Models\\Product',53,'Macbook Pro 13 inch',NULL,'products/12.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(15,4,'Botble\\Ecommerce\\Models\\Product',73,'Macbook Pro 2015 13 inch',NULL,'products/20-1.jpg',3,112.00,336.00,0.00,0.00,336.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(16,5,'Botble\\Ecommerce\\Models\\Product',27,'Smart Home Speaker (Digital)',NULL,'products/1-2.jpg',1,293.00,293.00,0.00,0.00,293.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(17,5,'Botble\\Ecommerce\\Models\\Product',41,'Apple iPhone 13 Plus',NULL,'products/8-1.jpg',1,130.00,130.00,0.00,0.00,130.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(18,5,'Botble\\Ecommerce\\Models\\Product',73,'Macbook Pro 2015 13 inch',NULL,'products/20-1.jpg',3,112.00,336.00,0.00,0.00,336.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(19,6,'Botble\\Ecommerce\\Models\\Product',56,'Apple Keyboard (Digital)',NULL,'products/13.jpg',3,121.00,363.00,0.00,0.00,363.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(20,6,'Botble\\Ecommerce\\Models\\Product',79,'Phillips Mouse',NULL,'products/23-1.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(21,7,'Botble\\Ecommerce\\Models\\Product',31,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',2,471.00,942.00,0.00,0.00,942.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(22,7,'Botble\\Ecommerce\\Models\\Product',53,'Macbook Pro 13 inch',NULL,'products/12.jpg',2,125.00,250.00,0.00,0.00,250.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(23,8,'Botble\\Ecommerce\\Models\\Product',72,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',2,112.00,224.00,0.00,0.00,224.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(24,8,'Botble\\Ecommerce\\Models\\Product',76,'Black Glasses',NULL,'products/22-1.jpg',3,122.00,366.00,0.00,0.00,366.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(25,8,'Botble\\Ecommerce\\Models\\Product',78,'Phillips Mouse',NULL,'products/23.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(26,9,'Botble\\Ecommerce\\Models\\Product',31,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',1,471.00,471.00,0.00,0.00,471.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(27,9,'Botble\\Ecommerce\\Models\\Product',70,'Black Smart Watches',NULL,'products/18-1.jpg',3,113.00,339.00,0.00,0.00,339.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(28,9,'Botble\\Ecommerce\\Models\\Product',74,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(29,10,'Botble\\Ecommerce\\Models\\Product',42,'Apple iPhone 13 Plus',NULL,'products/8.jpg',1,130.00,130.00,0.00,0.00,130.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(30,10,'Botble\\Ecommerce\\Models\\Product',58,'MacSafe 80W',NULL,'products/14-1.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(31,11,'Botble\\Ecommerce\\Models\\Product',26,'Smart Home Speaker (Digital)',NULL,'products/1-1.jpg',3,293.00,879.00,0.00,0.00,879.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(32,11,'Botble\\Ecommerce\\Models\\Product',48,'Macbook Air 12 inch',NULL,'products/10.jpg',1,276.00,276.00,0.00,0.00,276.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(33,11,'Botble\\Ecommerce\\Models\\Product',58,'MacSafe 80W',NULL,'products/14-1.jpg',3,113.00,339.00,0.00,0.00,339.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(34,11,'Botble\\Ecommerce\\Models\\Product',61,'Hand playstation',NULL,'products/15-1.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-10-24 23:46:12','2023-10-24 23:46:12'),(35,12,'Botble\\Ecommerce\\Models\\Product',28,'Smart Home Speaker (Digital)',NULL,'products/1-3.jpg',2,293.00,586.00,0.00,0.00,586.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(36,12,'Botble\\Ecommerce\\Models\\Product',49,'Apple Watch Serial 7',NULL,'products/11.jpg',2,128.00,256.00,0.00,0.00,256.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(37,12,'Botble\\Ecommerce\\Models\\Product',61,'Hand playstation',NULL,'products/15-1.jpg',3,118.00,354.00,0.00,0.00,354.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(38,12,'Botble\\Ecommerce\\Models\\Product',74,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(39,13,'Botble\\Ecommerce\\Models\\Product',45,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(40,13,'Botble\\Ecommerce\\Models\\Product',61,'Hand playstation',NULL,'products/15-1.jpg',3,118.00,354.00,0.00,0.00,354.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(41,13,'Botble\\Ecommerce\\Models\\Product',67,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',3,113.00,339.00,0.00,0.00,339.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(42,13,'Botble\\Ecommerce\\Models\\Product',68,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(43,14,'Botble\\Ecommerce\\Models\\Product',27,'Smart Home Speaker (Digital)',NULL,'products/1-2.jpg',1,293.00,293.00,0.00,0.00,293.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(44,14,'Botble\\Ecommerce\\Models\\Product',42,'Apple iPhone 13 Plus',NULL,'products/8.jpg',1,130.00,130.00,0.00,0.00,130.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(45,14,'Botble\\Ecommerce\\Models\\Product',47,'Macbook Air 12 inch',NULL,'products/10-1.jpg',1,276.00,276.00,0.00,0.00,276.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(46,15,'Botble\\Ecommerce\\Models\\Product',26,'Smart Home Speaker (Digital)',NULL,'products/1-1.jpg',3,293.00,879.00,0.00,0.00,879.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(47,15,'Botble\\Ecommerce\\Models\\Product',39,'Leather Watch Band',NULL,'products/7.jpg',1,125.00,125.00,0.00,0.00,125.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(48,15,'Botble\\Ecommerce\\Models\\Product',75,'Black Glasses',NULL,'products/22.jpg',2,122.00,244.00,0.00,0.00,244.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(49,16,'Botble\\Ecommerce\\Models\\Product',33,'Boxed - Bluetooth Headphone',NULL,'products/3-2.jpg',3,471.00,1413.00,0.00,0.00,1413.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(50,16,'Botble\\Ecommerce\\Models\\Product',37,'Camera Samsung SS-24',NULL,'products/6.jpg',2,52.00,104.00,0.00,0.00,104.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(51,16,'Botble\\Ecommerce\\Models\\Product',45,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',1,116.00,116.00,0.00,0.00,116.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(52,16,'Botble\\Ecommerce\\Models\\Product',74,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',1,124.00,124.00,0.00,0.00,124.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(53,17,'Botble\\Ecommerce\\Models\\Product',51,'Macbook Pro 13 inch',NULL,'products/12.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(54,17,'Botble\\Ecommerce\\Models\\Product',62,'Hand playstation',NULL,'products/15.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(55,18,'Botble\\Ecommerce\\Models\\Product',53,'Macbook Pro 13 inch',NULL,'products/12.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(56,18,'Botble\\Ecommerce\\Models\\Product',65,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(57,18,'Botble\\Ecommerce\\Models\\Product',68,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',3,113.00,339.00,0.00,0.00,339.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(58,18,'Botble\\Ecommerce\\Models\\Product',70,'Black Smart Watches',NULL,'products/18-1.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(59,19,'Botble\\Ecommerce\\Models\\Product',56,'Apple Keyboard (Digital)',NULL,'products/13.jpg',2,121.00,242.00,0.00,0.00,242.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(60,19,'Botble\\Ecommerce\\Models\\Product',65,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(61,20,'Botble\\Ecommerce\\Models\\Product',29,'Headphone Ultra Bass',NULL,'products/2.jpg',2,433.00,866.00,0.00,0.00,866.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(62,20,'Botble\\Ecommerce\\Models\\Product',43,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13'),(63,20,'Botble\\Ecommerce\\Models\\Product',49,'Apple Watch Serial 7',NULL,'products/11.jpg',2,128.00,256.00,0.00,0.00,256.00,'[]','2023-10-24 23:46:13','2023-10-24 23:46:13');
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
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Ms. Maurine Thiel II','',NULL,'john.smith@botble.com','+12313048945','5974 Emmie Rue Apt. 797, North Otis, Minnesota, ER',NULL,983.00,0.00,0.00,0.00,'1','default',NULL,NULL,983.00,NULL,1,'completed','2023-10-24 23:46:12','2023-10-23 07:46:12','2023-10-24 23:46:12'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Tess Harris','',NULL,'wyman.bernhard@example.com','+12206853726','6968 Gerlach Neck Apt. 986, Kaylahmouth, New Hampshire, GH',NULL,902.00,0.00,0.00,0.00,'1','default',NULL,NULL,902.00,NULL,2,'completed','2023-10-24 23:46:12','2023-10-20 05:46:12','2023-10-24 23:46:12'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Oswaldo Stroman','',NULL,'miller.kassulke@example.com','+14459496032','68920 Jordon Islands Suite 094, Jaylonfort, Vermont, NO',NULL,447.00,0.00,0.00,0.00,'1','default',NULL,NULL,447.00,NULL,3,'completed','2023-10-24 23:46:12','2023-10-21 23:46:12','2023-10-24 23:46:12'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Judy Donnelly','',NULL,'tzulauf@example.net','+18288875279','3511 Haag Shoals, Lake Terence, North Dakota, MA',NULL,1182.00,0.00,0.00,0.00,'1','default',NULL,NULL,1182.00,NULL,4,'completed','2023-10-24 23:46:12','2023-10-10 19:46:12','2023-10-24 23:46:12'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Tess Harris','',NULL,'wyman.bernhard@example.com','+12206853726','6968 Gerlach Neck Apt. 986, Kaylahmouth, New Hampshire, GH',NULL,759.00,0.00,0.00,0.00,'1','default',NULL,NULL,759.00,NULL,5,'completed','2023-10-24 23:46:12','2023-10-22 07:46:12','2023-10-24 23:46:12'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Saige Waelchi DVM','',NULL,'ziemann.elva@example.com','+13257620438','914 Weissnat Fields Suite 749, Cummingsmouth, Connecticut, SA',NULL,738.00,0.00,0.00,0.00,'1','default',NULL,NULL,738.00,NULL,6,'completed','2023-10-24 23:46:12','2023-10-17 11:46:12','2023-10-24 23:46:12'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Ms. Maurine Thiel II','',NULL,'john.smith@botble.com','+12313048945','5974 Emmie Rue Apt. 797, North Otis, Minnesota, ER',NULL,1192.00,0.00,0.00,0.00,'1','default',NULL,NULL,1192.00,NULL,7,'completed','2023-10-24 23:46:12','2023-10-19 03:46:12','2023-10-24 23:46:12'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Ms. Maurine Thiel II','',NULL,'john.smith@botble.com','+12313048945','5974 Emmie Rue Apt. 797, North Otis, Minnesota, ER',NULL,965.00,0.00,0.00,0.00,'1','default',NULL,NULL,965.00,NULL,8,'pending',NULL,'2023-10-18 11:46:12','2023-10-24 23:46:12'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Antonio Abernathy','',NULL,'baron.gibson@example.org','+19073606272','62471 Gutkowski Vista, Port Mina, Florida, JE',NULL,1058.00,0.00,0.00,0.00,'1','default',NULL,NULL,1058.00,NULL,9,'completed','2023-10-24 23:46:12','2023-10-20 23:46:12','2023-10-24 23:46:12'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Antonio Abernathy','',NULL,'baron.gibson@example.org','+19073606272','62471 Gutkowski Vista, Port Mina, Florida, JE',NULL,356.00,0.00,0.00,0.00,'1','default',NULL,NULL,356.00,NULL,10,'pending',NULL,'2023-10-18 13:46:12','2023-10-24 23:46:12'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Antonio Abernathy','',NULL,'baron.gibson@example.org','+19073606272','62471 Gutkowski Vista, Port Mina, Florida, JE',NULL,1612.00,0.00,0.00,0.00,'1','default',NULL,NULL,1612.00,NULL,11,'completed','2023-10-24 23:46:12','2023-10-23 07:46:12','2023-10-24 23:46:12'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Gonzalo Goldner PhD','',NULL,'cbalistreri@example.org','+14085672418','7870 Jerel Estates, Raustad, Maryland, SK',NULL,1444.00,0.00,0.00,0.00,'1','default',NULL,NULL,1444.00,NULL,12,'completed','2023-10-24 23:46:12','2023-10-18 23:46:12','2023-10-24 23:46:12'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Gonzalo Goldner PhD','',NULL,'cbalistreri@example.org','+14085672418','7870 Jerel Estates, Raustad, Maryland, SK',NULL,1267.00,0.00,0.00,0.00,'1','default',NULL,NULL,1267.00,NULL,13,'completed','2023-10-24 23:46:13','2023-10-22 23:46:13','2023-10-24 23:46:13'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Veronica Conn Sr.','',NULL,'tara.kuvalis@example.org','+17724431805','88578 Yolanda Points Suite 729, Aldenberg, Idaho, CW',NULL,699.00,0.00,0.00,0.00,'1','default',NULL,NULL,699.00,NULL,14,'completed','2023-10-24 23:46:13','2023-10-24 09:46:13','2023-10-24 23:46:13'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Gonzalo Goldner PhD','',NULL,'cbalistreri@example.org','+14085672418','7870 Jerel Estates, Raustad, Maryland, SK',NULL,1248.00,0.00,0.00,0.00,'1','default',NULL,NULL,1248.00,NULL,15,'completed','2023-10-24 23:46:13','2023-10-21 23:46:13','2023-10-24 23:46:13'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Jordi Schumm','',NULL,'dlabadie@example.net','+16184623460','33124 Justyn Squares Suite 444, Bergeville, Rhode Island, TR',NULL,1757.00,0.00,0.00,0.00,'1','default',NULL,NULL,1757.00,NULL,16,'completed','2023-10-24 23:46:13','2023-10-24 13:46:13','2023-10-24 23:46:13'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Jordi Schumm','',NULL,'dlabadie@example.net','+16184623460','33124 Justyn Squares Suite 444, Bergeville, Rhode Island, TR',NULL,493.00,0.00,0.00,0.00,'1','default',NULL,NULL,493.00,NULL,17,'pending',NULL,'2023-10-23 07:46:13','2023-10-24 23:46:13'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Gonzalo Goldner PhD','',NULL,'cbalistreri@example.org','+14085672418','7870 Jerel Estates, Raustad, Maryland, SK',NULL,1166.00,0.00,0.00,0.00,'1','default',NULL,NULL,1166.00,NULL,18,'pending',NULL,'2023-10-22 17:46:13','2023-10-24 23:46:13'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Saige Waelchi DVM','',NULL,'ziemann.elva@example.com','+13257620438','914 Weissnat Fields Suite 749, Cummingsmouth, Connecticut, SA',NULL,468.00,0.00,0.00,0.00,'1','default',NULL,NULL,468.00,NULL,19,'completed','2023-10-24 23:46:13','2023-10-24 07:46:13','2023-10-24 23:46:13'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Saige Waelchi DVM','',NULL,'ziemann.elva@example.com','+13257620438','914 Weissnat Fields Suite 749, Cummingsmouth, Connecticut, SA',NULL,1470.00,0.00,0.00,0.00,'1','default',NULL,NULL,1470.00,NULL,20,'pending',NULL,'2023-10-24 07:46:13','2023-10-24 23:46:13');
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
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Ms. Maurine Thiel II','+12313048945','john.smith@botble.com','ER','Minnesota','North Otis','5974 Emmie Rue Apt. 797',1,'30876-8587','shipping_address'),(2,'Tess Harris','+12206853726','wyman.bernhard@example.com','GH','New Hampshire','Kaylahmouth','6968 Gerlach Neck Apt. 986',2,'76778','shipping_address'),(3,'Oswaldo Stroman','+14459496032','miller.kassulke@example.com','NO','Vermont','Jaylonfort','68920 Jordon Islands Suite 094',3,'42493-5791','shipping_address'),(4,'Judy Donnelly','+18288875279','tzulauf@example.net','MA','North Dakota','Lake Terence','3511 Haag Shoals',4,'21799','shipping_address'),(5,'Tess Harris','+12206853726','wyman.bernhard@example.com','GH','New Hampshire','Kaylahmouth','6968 Gerlach Neck Apt. 986',5,'76778','shipping_address'),(6,'Saige Waelchi DVM','+13257620438','ziemann.elva@example.com','SA','Connecticut','Cummingsmouth','914 Weissnat Fields Suite 749',6,'53300','shipping_address'),(7,'Ms. Maurine Thiel II','+12313048945','john.smith@botble.com','ER','Minnesota','North Otis','5974 Emmie Rue Apt. 797',7,'30876-8587','shipping_address'),(8,'Ms. Maurine Thiel II','+12313048945','john.smith@botble.com','ER','Minnesota','North Otis','5974 Emmie Rue Apt. 797',8,'30876-8587','shipping_address'),(9,'Antonio Abernathy','+19073606272','baron.gibson@example.org','JE','Florida','Port Mina','62471 Gutkowski Vista',9,'94950','shipping_address'),(10,'Antonio Abernathy','+19073606272','baron.gibson@example.org','JE','Florida','Port Mina','62471 Gutkowski Vista',10,'94950','shipping_address'),(11,'Antonio Abernathy','+19073606272','baron.gibson@example.org','JE','Florida','Port Mina','62471 Gutkowski Vista',11,'94950','shipping_address'),(12,'Gonzalo Goldner PhD','+14085672418','cbalistreri@example.org','SK','Maryland','Raustad','7870 Jerel Estates',12,'25899-6016','shipping_address'),(13,'Gonzalo Goldner PhD','+14085672418','cbalistreri@example.org','SK','Maryland','Raustad','7870 Jerel Estates',13,'25899-6016','shipping_address'),(14,'Veronica Conn Sr.','+17724431805','tara.kuvalis@example.org','CW','Idaho','Aldenberg','88578 Yolanda Points Suite 729',14,'81647','shipping_address'),(15,'Gonzalo Goldner PhD','+14085672418','cbalistreri@example.org','SK','Maryland','Raustad','7870 Jerel Estates',15,'25899-6016','shipping_address'),(16,'Jordi Schumm','+16184623460','dlabadie@example.net','TR','Rhode Island','Bergeville','33124 Justyn Squares Suite 444',16,'55583','shipping_address'),(17,'Jordi Schumm','+16184623460','dlabadie@example.net','TR','Rhode Island','Bergeville','33124 Justyn Squares Suite 444',17,'55583','shipping_address'),(18,'Gonzalo Goldner PhD','+14085672418','cbalistreri@example.org','SK','Maryland','Raustad','7870 Jerel Estates',18,'25899-6016','shipping_address'),(19,'Saige Waelchi DVM','+13257620438','ziemann.elva@example.com','SA','Connecticut','Cummingsmouth','914 Weissnat Fields Suite 749',19,'53300','shipping_address'),(20,'Saige Waelchi DVM','+13257620438','ziemann.elva@example.com','SA','Connecticut','Cummingsmouth','914 Weissnat Fields Suite 749',20,'53300','shipping_address');
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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-10-23 07:46:12','2023-10-23 07:46:12'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-10-23 07:46:12','2023-10-23 07:46:12'),(3,'confirm_payment','Payment was confirmed (amount $983.00) by %user_name%',0,1,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-10-20 05:46:12','2023-10-20 05:46:12'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-10-20 05:46:12','2023-10-20 05:46:12'),(7,'confirm_payment','Payment was confirmed (amount $902.00) by %user_name%',0,2,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-10-21 23:46:12','2023-10-21 23:46:12'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-10-21 23:46:12','2023-10-21 23:46:12'),(11,'confirm_payment','Payment was confirmed (amount $447.00) by %user_name%',0,3,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-10-10 19:46:12','2023-10-10 19:46:12'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-10-10 19:46:12','2023-10-10 19:46:12'),(15,'confirm_payment','Payment was confirmed (amount $1,182.00) by %user_name%',0,4,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-10-22 07:46:12','2023-10-22 07:46:12'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-10-22 07:46:12','2023-10-22 07:46:12'),(20,'confirm_payment','Payment was confirmed (amount $759.00) by %user_name%',0,5,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-10-17 11:46:12','2023-10-17 11:46:12'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-10-17 11:46:12','2023-10-17 11:46:12'),(24,'confirm_payment','Payment was confirmed (amount $738.00) by %user_name%',0,6,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-10-19 03:46:12','2023-10-19 03:46:12'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-10-19 03:46:12','2023-10-19 03:46:12'),(28,'confirm_payment','Payment was confirmed (amount $1,192.00) by %user_name%',0,7,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-10-18 11:46:12','2023-10-18 11:46:12'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-10-18 11:46:12','2023-10-18 11:46:12'),(32,'create_shipment','Created shipment for order',0,8,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-10-20 23:46:12','2023-10-20 23:46:12'),(34,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-10-20 23:46:12','2023-10-20 23:46:12'),(35,'confirm_payment','Payment was confirmed (amount $1,058.00) by %user_name%',0,9,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(36,'create_shipment','Created shipment for order',0,9,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-10-18 13:46:12','2023-10-18 13:46:12'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-10-18 13:46:12','2023-10-18 13:46:12'),(40,'create_shipment','Created shipment for order',0,10,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-10-23 07:46:12','2023-10-23 07:46:12'),(43,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-10-23 07:46:12','2023-10-23 07:46:12'),(44,'confirm_payment','Payment was confirmed (amount $1,612.00) by %user_name%',0,11,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-10-18 23:46:12','2023-10-18 23:46:12'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-10-18 23:46:12','2023-10-18 23:46:12'),(49,'confirm_payment','Payment was confirmed (amount $1,444.00) by %user_name%',0,12,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-10-22 23:46:13','2023-10-22 23:46:13'),(52,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-10-22 23:46:13','2023-10-22 23:46:13'),(53,'confirm_payment','Payment was confirmed (amount $1,267.00) by %user_name%',0,13,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-10-24 09:46:13','2023-10-24 09:46:13'),(56,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-10-24 09:46:13','2023-10-24 09:46:13'),(57,'confirm_payment','Payment was confirmed (amount $699.00) by %user_name%',0,14,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-10-21 23:46:13','2023-10-21 23:46:13'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-10-21 23:46:13','2023-10-21 23:46:13'),(61,'confirm_payment','Payment was confirmed (amount $1,248.00) by %user_name%',0,15,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-10-24 13:46:13','2023-10-24 13:46:13'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-10-24 13:46:13','2023-10-24 13:46:13'),(66,'confirm_payment','Payment was confirmed (amount $1,757.00) by %user_name%',0,16,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(67,'create_shipment','Created shipment for order',0,16,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-10-23 07:46:13','2023-10-23 07:46:13'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-10-23 07:46:13','2023-10-23 07:46:13'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-10-22 17:46:13','2023-10-22 17:46:13'),(72,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-10-22 17:46:13','2023-10-22 17:46:13'),(73,'create_shipment','Created shipment for order',0,18,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(74,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-10-24 07:46:13','2023-10-24 07:46:13'),(76,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-10-24 07:46:13','2023-10-24 07:46:13'),(77,'confirm_payment','Payment was confirmed (amount $468.00) by %user_name%',0,19,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(78,'create_shipment','Created shipment for order',0,19,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-10-24 07:46:13','2023-10-24 07:46:13'),(80,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-10-24 07:46:13','2023-10-24 07:46:13'),(81,'create_shipment','Created shipment for order',0,20,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(83,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(84,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(85,'update_status','Order confirmed by %user_name%',0,11,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13'),(86,'update_status','Order confirmed by %user_name%',0,15,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,2,130.00,0.00,'[]',NULL,40,'Apple iPhone 13 Plus','products/8.jpg',1674.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(2,1,1,125.00,0.00,'[]',NULL,51,'Macbook Pro 13 inch','products/12.jpg',545.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(3,1,2,113.00,0.00,'[]',NULL,70,'Black Smart Watches','products/18-1.jpg',1038.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(4,1,3,124.00,0.00,'[]',NULL,74,'Historic Alarm Clock (Digital)','products/21.jpg',1788.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',6,NULL),(5,2,1,70.00,0.00,'[]',NULL,35,'Chikie - Bluetooth Speaker','products/4-1.jpg',807.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(6,2,1,118.00,0.00,'[]',NULL,61,'Hand playstation','products/15-1.jpg',610.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(7,2,3,113.00,0.00,'[]',NULL,69,'Black Smart Watches','products/18.jpg',1557.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(8,2,3,125.00,0.00,'[]',NULL,79,'Phillips Mouse','products/23-1.jpg',2238.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(9,3,1,41.00,0.00,'[]',NULL,36,'Camera Hikvision HK-35VS8 (Digital)','products/5.jpg',768.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',1,NULL),(10,3,1,52.00,0.00,'[]',NULL,38,'Camera Samsung SS-24','products/6-1.jpg',784.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(11,3,2,113.00,0.00,'[]',NULL,59,'MacSafe 80W','products/14.jpg',1206.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(12,3,1,128.00,0.00,'[]',NULL,71,'Leather Watch Band Serial 3','products/19.jpg',664.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(13,4,1,471.00,0.00,'[]',NULL,31,'Boxed - Bluetooth Headphone','products/3.jpg',874.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(14,4,3,125.00,0.00,'[]',NULL,53,'Macbook Pro 13 inch','products/12.jpg',1635.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(15,4,3,112.00,0.00,'[]',NULL,73,'Macbook Pro 2015 13 inch','products/20-1.jpg',1668.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(16,5,1,293.00,0.00,'[]',NULL,27,'Smart Home Speaker (Digital)','products/1-2.jpg',675.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',7,NULL),(17,5,1,130.00,0.00,'[]',NULL,41,'Apple iPhone 13 Plus','products/8-1.jpg',837.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(18,5,3,112.00,0.00,'[]',NULL,73,'Macbook Pro 2015 13 inch','products/20-1.jpg',1668.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(19,6,3,121.00,0.00,'[]',NULL,56,'Apple Keyboard (Digital)','products/13.jpg',2604.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',4,NULL),(20,6,3,125.00,0.00,'[]',NULL,79,'Phillips Mouse','products/23-1.jpg',2238.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(21,7,2,471.00,0.00,'[]',NULL,31,'Boxed - Bluetooth Headphone','products/3.jpg',1748.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(22,7,2,125.00,0.00,'[]',NULL,53,'Macbook Pro 13 inch','products/12.jpg',1090.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(23,8,2,112.00,0.00,'[]',NULL,72,'Macbook Pro 2015 13 inch','products/20.jpg',1112.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(24,8,3,122.00,0.00,'[]',NULL,76,'Black Glasses','products/22-1.jpg',2031.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(25,8,3,125.00,0.00,'[]',NULL,78,'Phillips Mouse','products/23.jpg',2238.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(26,9,1,471.00,0.00,'[]',NULL,31,'Boxed - Bluetooth Headphone','products/3.jpg',874.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(27,9,3,113.00,0.00,'[]',NULL,70,'Black Smart Watches','products/18-1.jpg',1557.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(28,9,2,124.00,0.00,'[]',NULL,74,'Historic Alarm Clock (Digital)','products/21.jpg',1192.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',6,NULL),(29,10,1,130.00,0.00,'[]',NULL,42,'Apple iPhone 13 Plus','products/8.jpg',837.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(30,10,2,113.00,0.00,'[]',NULL,58,'MacSafe 80W','products/14-1.jpg',1206.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(31,11,3,293.00,0.00,'[]',NULL,26,'Smart Home Speaker (Digital)','products/1-1.jpg',2025.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',6,NULL),(32,11,1,276.00,0.00,'[]',NULL,48,'Macbook Air 12 inch','products/10.jpg',790.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(33,11,3,113.00,0.00,'[]',NULL,58,'MacSafe 80W','products/14-1.jpg',1809.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(34,11,1,118.00,0.00,'[]',NULL,61,'Hand playstation','products/15-1.jpg',610.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(35,12,2,293.00,0.00,'[]',NULL,28,'Smart Home Speaker (Digital)','products/1-3.jpg',1350.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',9,NULL),(36,12,2,128.00,0.00,'[]',NULL,49,'Apple Watch Serial 7','products/11.jpg',1254.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(37,12,3,118.00,0.00,'[]',NULL,61,'Hand playstation','products/15-1.jpg',1830.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','physical',0,NULL),(38,12,2,124.00,0.00,'[]',NULL,74,'Historic Alarm Clock (Digital)','products/21.jpg',1192.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','digital',5,NULL),(39,13,3,116.00,0.00,'[]',NULL,45,'Macbook Pro 2015 (Digital)','products/9.jpg',2274.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',7,NULL),(40,13,3,118.00,0.00,'[]',NULL,61,'Hand playstation','products/15-1.jpg',1830.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(41,13,3,113.00,0.00,'[]',NULL,67,'Cool Smart Watches (Digital)','products/17.jpg',2241.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',8,NULL),(42,13,2,113.00,0.00,'[]',NULL,68,'Cool Smart Watches (Digital)','products/17.jpg',1494.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',9,NULL),(43,14,1,293.00,0.00,'[]',NULL,27,'Smart Home Speaker (Digital)','products/1-2.jpg',675.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',10,NULL),(44,14,1,130.00,0.00,'[]',NULL,42,'Apple iPhone 13 Plus','products/8.jpg',837.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(45,14,1,276.00,0.00,'[]',NULL,47,'Macbook Air 12 inch','products/10-1.jpg',790.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(46,15,3,293.00,0.00,'[]',NULL,26,'Smart Home Speaker (Digital)','products/1-1.jpg',2025.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',2,NULL),(47,15,1,125.00,0.00,'[]',NULL,39,'Leather Watch Band','products/7.jpg',892.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(48,15,2,122.00,0.00,'[]',NULL,75,'Black Glasses','products/22.jpg',1354.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(49,16,3,471.00,0.00,'[]',NULL,33,'Boxed - Bluetooth Headphone','products/3-2.jpg',2622.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(50,16,2,52.00,0.00,'[]',NULL,37,'Camera Samsung SS-24','products/6.jpg',1568.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(51,16,1,116.00,0.00,'[]',NULL,45,'Macbook Pro 2015 (Digital)','products/9.jpg',758.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',6,NULL),(52,16,1,124.00,0.00,'[]',NULL,74,'Historic Alarm Clock (Digital)','products/21.jpg',596.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',7,NULL),(53,17,3,125.00,0.00,'[]',NULL,51,'Macbook Pro 13 inch','products/12.jpg',1635.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(54,17,1,118.00,0.00,'[]',NULL,62,'Hand playstation','products/15.jpg',610.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(55,18,3,125.00,0.00,'[]',NULL,53,'Macbook Pro 13 inch','products/12.jpg',1635.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(56,18,2,113.00,0.00,'[]',NULL,65,'Cool Smart Watches (Digital)','products/17.jpg',1494.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',4,NULL),(57,18,3,113.00,0.00,'[]',NULL,68,'Cool Smart Watches (Digital)','products/17.jpg',2241.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',7,NULL),(58,18,2,113.00,0.00,'[]',NULL,70,'Black Smart Watches','products/18-1.jpg',1038.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(59,19,2,121.00,0.00,'[]',NULL,56,'Apple Keyboard (Digital)','products/13.jpg',1736.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',1,NULL),(60,19,2,113.00,0.00,'[]',NULL,65,'Cool Smart Watches (Digital)','products/17.jpg',1494.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',8,NULL),(61,20,2,433.00,0.00,'[]',NULL,29,'Headphone Ultra Bass','products/2.jpg',1128.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL),(62,20,3,116.00,0.00,'[]',NULL,43,'Macbook Pro 2015 (Digital)','products/9.jpg',2274.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','digital',6,NULL),(63,20,2,128.00,0.00,'[]',NULL,49,'Apple Watch Serial 7','products/11.jpg',1254.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','physical',0,NULL);
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
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',1,'1','default','pending',983.00,0.00,0.00,NULL,NULL,0.00,983.00,1,NULL,1,NULL,'EB6GNWVuDuAFFBumHHqIIPzg5x68E',1,'2023-10-23 07:46:12','2023-10-24 23:46:12'),(2,'#10000002',7,'1','default','pending',902.00,0.00,0.00,NULL,NULL,0.00,902.00,1,NULL,1,NULL,'vzn6bvzz3or2FCnSJ9lWoXV26R3i9',2,'2023-10-20 05:46:12','2023-10-24 23:46:12'),(3,'#10000003',10,'1','default','pending',447.00,0.00,0.00,NULL,NULL,0.00,447.00,1,NULL,1,NULL,'z9FsdpKOzdduExV2v8slFyNyqr9sE',3,'2023-10-21 23:46:12','2023-10-24 23:46:12'),(4,'#10000004',9,'1','default','completed',1182.00,0.00,0.00,NULL,NULL,0.00,1182.00,1,NULL,1,'2023-10-24 23:46:13','SVRVgeXBis5eD2IJhKidpSpWmRu6U',4,'2023-10-10 19:46:12','2023-10-24 23:46:13'),(5,'#10000005',7,'1','default','pending',759.00,0.00,0.00,NULL,NULL,0.00,759.00,1,NULL,1,NULL,'UKjodgxMsacssDZXgXcuy7USOrqiQ',5,'2023-10-22 07:46:12','2023-10-24 23:46:12'),(6,'#10000006',4,'1','default','pending',738.00,0.00,0.00,NULL,NULL,0.00,738.00,1,NULL,1,NULL,'PzJTErmS8CIGF60TUBGaCuRM7Lvc3',6,'2023-10-17 11:46:12','2023-10-24 23:46:12'),(7,'#10000007',1,'1','default','pending',1192.00,0.00,0.00,NULL,NULL,0.00,1192.00,1,NULL,1,NULL,'diWBisnvDu2TsT7VjBLymdxGufqAr',7,'2023-10-19 03:46:12','2023-10-24 23:46:12'),(8,'#10000008',1,'1','default','pending',965.00,0.00,0.00,NULL,NULL,0.00,965.00,1,NULL,1,NULL,'yAYKoUozyZT7vynT6vnnKm3OjYbTC',8,'2023-10-18 11:46:12','2023-10-24 23:46:12'),(9,'#10000009',6,'1','default','completed',1058.00,0.00,0.00,NULL,NULL,0.00,1058.00,1,NULL,1,'2023-10-24 23:46:13','UWqAyBlpCxT7Kjl4pnDexS4xtvoiG',9,'2023-10-20 23:46:12','2023-10-24 23:46:13'),(10,'#10000010',6,'1','default','completed',356.00,0.00,0.00,NULL,NULL,0.00,356.00,1,NULL,1,'2023-10-24 23:46:12','tHa64LlhDBu26ac8E6QUR13O4YIbl',10,'2023-10-18 13:46:12','2023-10-24 23:46:12'),(11,'#10000011',6,'1','default','completed',1612.00,0.00,0.00,NULL,NULL,0.00,1612.00,1,NULL,1,'2023-10-24 23:46:13','YgQWNBmBACJ6bNKGLefYB8uKrNvGE',11,'2023-10-23 07:46:12','2023-10-24 23:46:13'),(12,'#10000012',8,'1','default','pending',1444.00,0.00,0.00,NULL,NULL,0.00,1444.00,1,NULL,1,NULL,'GIA2kNB6LNUvGAH9PEwZUEn4LbkC8',12,'2023-10-18 23:46:12','2023-10-24 23:46:12'),(13,'#10000013',8,'1','default','pending',1267.00,0.00,0.00,NULL,NULL,0.00,1267.00,1,NULL,1,NULL,'8jsMOHFOTkaGTXM6ypEc5vMagAyOE',13,'2023-10-22 23:46:13','2023-10-24 23:46:13'),(14,'#10000014',3,'1','default','pending',699.00,0.00,0.00,NULL,NULL,0.00,699.00,1,NULL,1,NULL,'hLhNyhnMKZnh2WQPNcecA9XARPGcJ',14,'2023-10-24 09:46:13','2023-10-24 23:46:13'),(15,'#10000015',8,'1','default','completed',1248.00,0.00,0.00,NULL,NULL,0.00,1248.00,1,NULL,1,'2023-10-24 23:46:13','IRNE3DqOT27byr9CVbTBdxOuKsDvV',15,'2023-10-21 23:46:13','2023-10-24 23:46:13'),(16,'#10000016',5,'1','default','pending',1757.00,0.00,0.00,NULL,NULL,0.00,1757.00,1,NULL,1,NULL,'3k3O1NvqpZR96dKRquePINkP0fy0U',16,'2023-10-24 13:46:13','2023-10-24 23:46:13'),(17,'#10000017',5,'1','default','pending',493.00,0.00,0.00,NULL,NULL,0.00,493.00,1,NULL,1,NULL,'r2jA7b0g6cXlgc9pijlXw2oRAmSun',17,'2023-10-23 07:46:13','2023-10-24 23:46:13'),(18,'#10000018',8,'1','default','completed',1166.00,0.00,0.00,NULL,NULL,0.00,1166.00,1,NULL,1,'2023-10-24 23:46:13','fBj3g0nvJtPAyvmzIrLg0PtLkPgM7',18,'2023-10-22 17:46:13','2023-10-24 23:46:13'),(19,'#10000019',4,'1','default','pending',468.00,0.00,0.00,NULL,NULL,0.00,468.00,1,NULL,1,NULL,'gCnOj2UQuMBRLociSHeK9YWKvJMlV',19,'2023-10-24 07:46:13','2023-10-24 23:46:13'),(20,'#10000020',4,'1','default','completed',1470.00,0.00,0.00,NULL,NULL,0.00,1470.00,1,NULL,1,'2023-10-24 23:46:13','jFzb8c5ZBTfLC3FQlcirewyBeKrKg',20,'2023-10-24 07:46:13','2023-10-24 23:46:13');
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-10-24 23:45:59','2023-10-24 23:45:59',0),(2,'Size','size','text',1,1,1,'published',1,'2023-10-24 23:45:59','2023-10-24 23:45:59',0);
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(2,1,'Blue','blue','#333333',NULL,0,2,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(3,1,'Red','red','#DA323F',NULL,0,3,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(4,1,'Black','back','#2F366C',NULL,0,4,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(6,2,'S','s',NULL,NULL,1,1,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(7,2,'M','m',NULL,NULL,0,2,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(8,2,'L','l',NULL,NULL,0,3,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(9,2,'XL','xl',NULL,NULL,0,4,'2023-10-24 23:45:59','2023-10-24 23:45:59'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2023-10-24 23:45:59','2023-10-24 23:45:59');
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59','far fa-star',NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-cpu',NULL),(3,'Home Audio & Theaters',2,NULL,'published',0,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(4,'TV & Videos',2,NULL,'published',1,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(5,'Camera, Photos & Videos',2,NULL,'published',2,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(6,'Cellphones & Accessories',2,NULL,'published',3,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(7,'Headphones',2,NULL,'published',4,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(8,'Videos games',2,NULL,'published',5,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(9,'Wireless Speakers',2,NULL,'published',6,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(10,'Office Electronic',2,NULL,'published',7,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(11,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-tshirt',NULL),(12,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-desktop',NULL),(13,'Computer & Tablets',12,NULL,'published',0,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(14,'Laptop',12,NULL,'published',1,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(15,'Monitors',12,NULL,'published',2,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(16,'Computer Components',12,NULL,'published',3,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(17,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-home',NULL),(18,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-dress',NULL),(19,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-diamond',NULL),(20,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','far fa-microchip',NULL),(21,'Drive & Storages',20,NULL,'published',0,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(22,'Gaming Laptop',20,NULL,'published',1,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(23,'Security & Protection',20,NULL,'published',2,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL,NULL),(25,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-smartphone',NULL),(26,'Babies & Moms',0,NULL,'published',9,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-teddy-bear',NULL),(27,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-kite',NULL),(28,'Books & Office',0,NULL,'published',11,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59','far fa-book',NULL),(29,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59','far fa-car',NULL),(30,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-10-24 23:45:59','2023-10-24 23:45:59','wowy-font-home',NULL);
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
  `description` text COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `ec_product_category_product` VALUES (1,6),(1,11),(4,2),(5,22),(6,13),(9,19),(11,17),(14,24),(16,21),(18,15),(19,1),(19,4),(19,9),(22,7),(22,14),(23,3),(24,8),(27,5),(28,10),(29,23),(33,16),(35,20),(36,12),(37,18);
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
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,8),(1,9),(1,11),(1,12),(1,17),(1,18),(1,22),(2,5),(2,6),(2,7),(2,13),(2,15),(2,19),(2,20),(2,21),(2,23),(2,24),(3,1),(3,2),(3,4),(3,10),(3,14),(3,16);
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59',0);
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
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,11),(1,16),(1,19),(1,24),(2,8),(2,15),(2,17),(2,21),(3,7),(3,9),(3,18),(3,24),(4,2),(4,7),(4,8),(5,3),(5,4),(5,16),(5,24),(6,3),(6,8),(6,13),(6,17),(7,12),(7,14),(7,17),(7,21),(8,5),(8,6),(8,21),(8,22),(9,4),(9,7),(9,12),(9,19),(10,4),(10,7),(10,19),(11,1),(11,5),(11,19),(11,22),(12,3),(12,4),(12,8),(12,13),(13,1),(13,2),(13,6),(13,24),(14,3),(14,18),(14,19),(14,21),(15,3),(15,4),(15,5),(15,14),(16,5),(16,12),(16,13),(16,14),(17,4),(17,12),(17,19),(17,20),(18,3),(18,6),(18,9),(18,15),(19,1),(19,9),(19,21),(20,1),(20,2),(20,9),(20,24),(21,1),(21,6),(21,17),(21,22),(22,11),(22,19),(22,23),(23,13),(23,15),(23,18),(24,6),(24,18),(24,19),(24,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":139025,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":88437,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(3,25,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":122690,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(4,25,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":117296,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(5,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":139025,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(6,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":88437,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(7,26,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":122690,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(8,26,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":117296,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(9,27,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":139025,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(10,27,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":88437,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(11,27,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":122690,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(12,27,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":117296,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(13,28,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":139025,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(14,28,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":88437,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(15,28,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":122690,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(16,28,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":117296,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(17,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":214767,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(18,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":110014,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(19,36,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":104934,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(20,36,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":131628,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(21,43,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":159636,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(22,43,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":65624,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(23,44,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":159636,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(24,44,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":65624,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(25,45,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":159636,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(26,45,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":65624,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(27,54,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":232917,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(28,54,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":257021,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(29,55,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":232917,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(30,55,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":257021,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(31,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":232917,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(32,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":257021,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(33,65,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":70179,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(34,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":70179,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(35,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":70179,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(36,68,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":70179,\"modified\":\"2023-10-25 06:46:08\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-10-24 23:46:08','2023-10-24 23:46:08'),(37,74,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":124244,\"modified\":\"2023-10-25 06:46:09\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-10-24 23:46:09','2023-10-24 23:46:09'),(38,74,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":260746,\"modified\":\"2023-10-25 06:46:09\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-10-24 23:46:09','2023-10-24 23:46:09');
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
INSERT INTO `ec_product_label_products` VALUES (2,7),(2,14),(3,21);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-10-24 23:45:59','2023-10-24 23:45:59'),(2,'New','#00c9a7','published','2023-10-24 23:45:59','2023-10-24 23:45:59'),(3,'Sale','#fe9931','published','2023-10-24 23:45:59','2023-10-24 23:45:59');
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
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_product_tag_product` VALUES (1,4),(1,5),(2,1),(2,3),(2,4),(3,5),(3,6),(4,1),(4,3),(5,1),(5,3),(5,5),(6,1),(6,2),(6,5),(7,1),(7,5),(8,2),(8,4),(8,5),(9,1),(9,4),(9,6),(10,2),(10,3),(10,5),(11,2),(11,3),(11,6),(12,2),(12,6),(13,2),(13,4),(13,5),(14,1),(14,3),(14,5),(15,3),(15,5),(16,2),(16,3),(16,5),(17,1),(17,2),(18,3),(18,5),(18,6),(19,5),(20,3),(20,6),(21,1),(21,2),(21,3),(22,1),(22,3),(22,4),(23,1),(23,2),(23,3),(24,2),(24,3),(24,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59'),(2,'Bags',NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59'),(3,'Shoes',NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59'),(4,'Clothes',NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59'),(5,'Hand bag',NULL,'published','2023-10-24 23:45:59','2023-10-24 23:45:59');
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
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (11,1,6),(15,1,8),(17,1,9),(31,1,16),(45,1,23),(81,1,41),(83,1,42),(101,1,51),(109,1,55),(29,2,15),(35,2,18),(43,2,22),(51,2,26),(53,2,27),(55,2,28),(57,2,29),(59,2,30),(61,2,31),(65,2,33),(69,2,35),(79,2,40),(93,2,47),(107,2,54),(111,2,56),(3,3,2),(7,3,4),(13,3,7),(21,3,11),(23,3,12),(25,3,13),(27,3,14),(39,3,20),(97,3,49),(1,4,1),(5,4,3),(37,4,19),(47,4,24),(49,4,25),(71,4,36),(85,4,43),(9,5,5),(19,5,10),(33,5,17),(41,5,21),(63,5,32),(67,5,34),(73,5,37),(75,5,38),(77,5,39),(87,5,44),(89,5,45),(91,5,46),(95,5,48),(99,5,50),(103,5,52),(105,5,53),(34,6,17),(42,6,21),(66,6,33),(80,6,40),(88,6,44),(104,6,52),(14,7,7),(16,7,8),(18,7,9),(40,7,20),(74,7,37),(78,7,39),(82,7,41),(86,7,43),(90,7,45),(100,7,50),(106,7,53),(112,7,56),(4,8,2),(6,8,3),(8,8,4),(10,8,5),(20,8,10),(22,8,11),(28,8,14),(50,8,25),(52,8,26),(58,8,29),(70,8,35),(92,8,46),(96,8,48),(110,8,55),(2,9,1),(26,9,13),(36,9,18),(38,9,19),(64,9,32),(72,9,36),(76,9,38),(84,9,42),(98,9,49),(102,9,51),(108,9,54),(12,10,6),(24,10,12),(30,10,15),(32,10,16),(44,10,22),(46,10,23),(48,10,24),(54,10,27),(56,10,28),(60,10,30),(62,10,31),(68,10,34),(94,10,47);
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
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,1,0),(5,29,2,1),(6,30,2,0),(7,31,3,1),(8,32,3,0),(9,33,3,0),(10,34,4,1),(11,35,4,0),(12,36,5,1),(13,37,6,1),(14,38,6,0),(15,39,7,1),(16,40,8,1),(17,41,8,0),(18,42,8,0),(19,43,9,1),(20,44,9,0),(21,45,9,0),(22,46,10,1),(23,47,10,0),(24,48,10,0),(25,49,11,1),(26,50,11,0),(27,51,12,1),(28,52,12,0),(29,53,12,0),(30,54,13,1),(31,55,13,0),(32,56,13,0),(33,57,14,1),(34,58,14,0),(35,59,14,0),(36,60,15,1),(37,61,15,0),(38,62,15,0),(39,63,15,0),(40,64,16,1),(41,65,17,1),(42,66,17,0),(43,67,17,0),(44,68,17,0),(45,69,18,1),(46,70,18,0),(47,71,19,1),(48,72,20,1),(49,73,20,0),(50,74,21,1),(51,75,22,1),(52,76,22,0),(53,77,22,0),(54,78,23,1),(55,79,23,0),(56,80,24,1);
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
  `date` date NOT NULL DEFAULT '2023-10-25',
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
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
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-167-A0',0,11,0,1,1,2,0,0,293,NULL,NULL,NULL,18.00,17.00,16.00,675.00,NULL,151915,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-116-A0',0,15,0,1,1,5,0,0,433,NULL,NULL,NULL,16.00,19.00,13.00,564.00,NULL,147479,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-119-A0',0,18,0,1,1,7,0,0,471,NULL,NULL,NULL,20.00,17.00,13.00,874.00,NULL,153700,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-102-A0',0,15,0,1,1,7,0,0,70,58.8,NULL,NULL,16.00,15.00,15.00,807.00,NULL,71153,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(5,'Camera Hikvision HK-35VS8 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-120-A0',0,19,0,1,1,5,0,0,41,NULL,NULL,NULL,17.00,10.00,19.00,768.00,NULL,77458,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-104-A0',0,18,0,1,1,5,0,0,52,NULL,NULL,NULL,19.00,10.00,10.00,784.00,NULL,166435,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-125-A0',0,13,0,1,1,2,0,0,125,NULL,NULL,NULL,18.00,10.00,11.00,892.00,NULL,99561,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-171-A0',0,18,0,1,1,3,0,0,130,91,NULL,NULL,15.00,16.00,11.00,837.00,NULL,104909,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(9,'Macbook Pro 2015 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-192-A0',0,20,0,1,1,5,0,0,116,NULL,NULL,NULL,19.00,18.00,17.00,758.00,NULL,178427,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-118-A0',0,15,0,1,1,4,0,0,276,NULL,NULL,NULL,10.00,11.00,19.00,790.00,NULL,81344,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-143-A0',0,17,0,1,1,7,0,0,128,NULL,NULL,NULL,14.00,16.00,11.00,627.00,NULL,20173,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-183-A0',0,19,0,1,1,1,0,0,125,108.75,NULL,NULL,14.00,18.00,14.00,545.00,NULL,107046,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(13,'Apple Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-152-A0',0,17,0,1,1,6,0,0,121,NULL,NULL,NULL,19.00,19.00,15.00,868.00,NULL,174426,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-109-A0',0,18,0,1,1,7,0,0,113,NULL,NULL,NULL,15.00,17.00,11.00,603.00,NULL,139215,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-195-A0',0,17,0,1,1,5,0,0,118,NULL,NULL,NULL,11.00,20.00,16.00,610.00,NULL,71183,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\"]','HS-107-A0',0,16,0,1,1,2,0,0,116,87,NULL,NULL,17.00,14.00,19.00,801.00,NULL,195055,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(17,'Cool Smart Watches (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\"]','HS-187-A0',0,12,0,1,1,1,0,0,113,NULL,NULL,NULL,10.00,17.00,19.00,747.00,NULL,170410,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-171-A0',0,20,0,1,1,3,0,0,113,NULL,NULL,NULL,16.00,20.00,16.00,519.00,NULL,126953,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-199-A0',0,17,0,1,1,3,0,0,128,NULL,NULL,NULL,13.00,11.00,19.00,664.00,NULL,4527,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-106-A0',0,17,0,1,1,4,0,0,112,90.72,NULL,NULL,12.00,15.00,20.00,556.00,NULL,107898,'2023-10-24 23:46:08','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(21,'Historic Alarm Clock (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-196-A0',0,16,0,1,1,3,0,0,124,NULL,NULL,NULL,20.00,11.00,17.00,596.00,NULL,72360,'2023-10-24 23:46:08','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-169-A0',0,19,0,1,1,1,0,0,122,NULL,NULL,NULL,18.00,10.00,19.00,677.00,NULL,40620,'2023-10-24 23:46:08','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-151-A0',0,12,0,1,1,1,0,0,125,NULL,NULL,NULL,19.00,10.00,19.00,746.00,NULL,18907,'2023-10-24 23:46:08','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img alt=\"icon\" src=\"/storage/general/clock.png\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img alt=\"icon\" src=\"/storage/general/paper-plane.png\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img alt=\"icon\" src=\"/storage/general/credit-card.png\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-133-A0',0,15,0,1,1,3,0,0,129,100.62,NULL,NULL,10.00,15.00,11.00,688.00,NULL,51016,'2023-10-24 23:46:08','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(25,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-167-A0',0,11,0,1,0,2,1,0,293,NULL,NULL,NULL,18.00,17.00,16.00,675.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(26,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-167-A0-A1',0,11,0,1,0,2,1,0,293,NULL,NULL,NULL,18.00,17.00,16.00,675.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(27,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-2.jpg\"]','HS-167-A0-A2',0,11,0,1,0,2,1,0,293,NULL,NULL,NULL,18.00,17.00,16.00,675.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(28,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-3.jpg\"]','HS-167-A0-A3',0,11,0,1,0,2,1,0,293,NULL,NULL,NULL,18.00,17.00,16.00,675.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(29,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-116-A0',0,15,0,1,0,5,1,0,433,NULL,NULL,NULL,16.00,19.00,13.00,564.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(30,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-116-A0-A1',0,15,0,1,0,5,1,0,433,NULL,NULL,NULL,16.00,19.00,13.00,564.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(31,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-119-A0',0,18,0,1,0,7,1,0,471,NULL,NULL,NULL,20.00,17.00,13.00,874.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(32,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-119-A0-A1',0,18,0,1,0,7,1,0,471,NULL,NULL,NULL,20.00,17.00,13.00,874.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(33,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-2.jpg\"]','HS-119-A0-A2',0,18,0,1,0,7,1,0,471,NULL,NULL,NULL,20.00,17.00,13.00,874.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(34,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-102-A0',0,15,0,1,0,7,1,0,70,58.8,NULL,NULL,16.00,15.00,15.00,807.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(35,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-102-A0-A1',0,15,0,1,0,7,1,0,70,56.7,NULL,NULL,16.00,15.00,15.00,807.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(36,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-120-A0',0,19,0,1,0,5,1,0,41,NULL,NULL,NULL,17.00,10.00,19.00,768.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(37,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-104-A0',0,18,0,1,0,5,1,0,52,NULL,NULL,NULL,19.00,10.00,10.00,784.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(38,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-104-A0-A1',0,18,0,1,0,5,1,0,52,NULL,NULL,NULL,19.00,10.00,10.00,784.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(39,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-125-A0',0,13,0,1,0,2,1,0,125,NULL,NULL,NULL,18.00,10.00,11.00,892.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(40,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-171-A0',0,18,0,1,0,3,1,0,130,91,NULL,NULL,15.00,16.00,11.00,837.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(41,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-171-A0-A1',0,18,0,1,0,3,1,0,130,114.4,NULL,NULL,15.00,16.00,11.00,837.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(42,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-171-A0-A2',0,18,0,1,0,3,1,0,130,92.3,NULL,NULL,15.00,16.00,11.00,837.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(43,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-192-A0',0,20,0,1,0,5,1,0,116,NULL,NULL,NULL,19.00,18.00,17.00,758.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(44,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-192-A0-A1',0,20,0,1,0,5,1,0,116,NULL,NULL,NULL,19.00,18.00,17.00,758.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(45,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-192-A0-A2',0,20,0,1,0,5,1,0,116,NULL,NULL,NULL,19.00,18.00,17.00,758.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(46,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-118-A0',0,15,0,1,0,4,1,0,276,NULL,NULL,NULL,10.00,11.00,19.00,790.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(47,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-118-A0-A1',0,15,0,1,0,4,1,0,276,NULL,NULL,NULL,10.00,11.00,19.00,790.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(48,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-118-A0-A2',0,15,0,1,0,4,1,0,276,NULL,NULL,NULL,10.00,11.00,19.00,790.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(49,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-143-A0',0,17,0,1,0,7,1,0,128,NULL,NULL,NULL,14.00,16.00,11.00,627.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(50,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-143-A0-A1',0,17,0,1,0,7,1,0,128,NULL,NULL,NULL,14.00,16.00,11.00,627.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(51,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-183-A0',0,19,0,1,0,1,1,0,125,108.75,NULL,NULL,14.00,18.00,14.00,545.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(52,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-183-A0-A1',0,19,0,1,0,1,1,0,125,107.5,NULL,NULL,14.00,18.00,14.00,545.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(53,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-183-A0-A2',0,19,0,1,0,1,1,0,125,90,NULL,NULL,14.00,18.00,14.00,545.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(54,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-152-A0',0,17,0,1,0,6,1,0,121,NULL,NULL,NULL,19.00,19.00,15.00,868.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(55,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-152-A0-A1',0,17,0,1,0,6,1,0,121,NULL,NULL,NULL,19.00,19.00,15.00,868.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(56,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-152-A0-A2',0,17,0,1,0,6,1,0,121,NULL,NULL,NULL,19.00,19.00,15.00,868.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(57,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-109-A0',0,18,0,1,0,7,1,0,113,NULL,NULL,NULL,15.00,17.00,11.00,603.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(58,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-109-A0-A1',0,18,0,1,0,7,1,0,113,NULL,NULL,NULL,15.00,17.00,11.00,603.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(59,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-109-A0-A2',0,18,0,1,0,7,1,0,113,NULL,NULL,NULL,15.00,17.00,11.00,603.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(60,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-195-A0',0,17,0,1,0,5,1,0,118,NULL,NULL,NULL,11.00,20.00,16.00,610.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(61,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-195-A0-A1',0,17,0,1,0,5,1,0,118,NULL,NULL,NULL,11.00,20.00,16.00,610.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(62,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-195-A0-A2',0,17,0,1,0,5,1,0,118,NULL,NULL,NULL,11.00,20.00,16.00,610.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(63,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-195-A0-A3',0,17,0,1,0,5,1,0,118,NULL,NULL,NULL,11.00,20.00,16.00,610.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(64,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-107-A0',0,16,0,1,0,2,1,0,116,87,NULL,NULL,17.00,14.00,19.00,801.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(65,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-187-A0',0,12,0,1,0,1,1,0,113,NULL,NULL,NULL,10.00,17.00,19.00,747.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(66,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-187-A0-A1',0,12,0,1,0,1,1,0,113,NULL,NULL,NULL,10.00,17.00,19.00,747.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(67,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-187-A0-A2',0,12,0,1,0,1,1,0,113,NULL,NULL,NULL,10.00,17.00,19.00,747.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(68,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-187-A0-A3',0,12,0,1,0,1,1,0,113,NULL,NULL,NULL,10.00,17.00,19.00,747.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(69,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-171-A0',0,20,0,1,0,3,1,0,113,NULL,NULL,NULL,16.00,20.00,16.00,519.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(70,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-171-A0-A1',0,20,0,1,0,3,1,0,113,NULL,NULL,NULL,16.00,20.00,16.00,519.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(71,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-199-A0',0,17,0,1,0,3,1,0,128,NULL,NULL,NULL,13.00,11.00,19.00,664.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:08','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(72,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-106-A0',0,17,0,1,0,4,1,0,112,90.72,NULL,NULL,12.00,15.00,20.00,556.00,NULL,0,'2023-10-24 23:46:08','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(73,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-106-A0-A1',0,17,0,1,0,4,1,0,112,81.76,NULL,NULL,12.00,15.00,20.00,556.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(74,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-196-A0',0,16,0,1,0,3,1,0,124,NULL,NULL,NULL,20.00,11.00,17.00,596.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(75,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-169-A0',0,19,0,1,0,1,1,0,122,NULL,NULL,NULL,18.00,10.00,19.00,677.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(76,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-169-A0-A1',0,19,0,1,0,1,1,0,122,NULL,NULL,NULL,18.00,10.00,19.00,677.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(77,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-169-A0-A2',0,19,0,1,0,1,1,0,122,NULL,NULL,NULL,18.00,10.00,19.00,677.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(78,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-151-A0',0,12,0,1,0,1,1,0,125,NULL,NULL,NULL,19.00,10.00,19.00,746.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(79,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-151-A0-A1',0,12,0,1,0,1,1,0,125,NULL,NULL,NULL,19.00,10.00,19.00,746.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(80,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-133-A0',0,15,0,1,0,3,1,0,129,100.62,NULL,NULL,10.00,15.00,11.00,688.00,NULL,0,'2023-10-24 23:46:09','2023-10-24 23:46:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0);
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
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,10,4,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\"]'),(2,4,20,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(3,7,6,1.00,'It\'s not my first experience here on CodeCanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(4,1,19,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(5,3,12,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(6,2,19,5.00,'Best ecommerce CMS online store!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\"]'),(7,3,23,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\"]'),(8,3,8,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(9,4,17,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/11.jpg\"}'),(10,5,6,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(11,7,3,3.00,'It\'s not my first experience here on CodeCanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/10.jpg\"]'),(12,6,13,5.00,'Good app, good backup service and support. Good documentation.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(13,2,9,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(14,4,6,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(15,7,8,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(16,4,23,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(17,7,12,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(18,4,15,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(20,9,11,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(21,2,5,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(23,4,5,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(24,5,20,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(25,1,6,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(26,7,23,1.00,'It\'s not my first experience here on CodeCanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(27,8,21,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\"]'),(28,8,4,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(29,1,15,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(30,7,24,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(31,6,12,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(32,3,17,5.00,'It\'s not my first experience here on CodeCanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\"]'),(33,7,2,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(34,1,17,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(35,9,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(36,7,9,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(38,7,4,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(39,1,21,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(41,1,4,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(43,1,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\"]'),(44,2,7,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-10-24 23:46:12','2023-10-24 23:46:12','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/21.jpg\"}'),(45,6,17,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(46,8,13,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(47,9,8,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(48,9,2,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(49,3,7,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\"]'),(50,8,19,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(52,9,23,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(53,1,11,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(55,8,12,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(57,1,8,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/23.jpg\"}'),(58,3,16,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(59,4,24,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\"]'),(60,10,2,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(61,5,4,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(62,3,3,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(63,9,18,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\"]'),(64,4,9,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(65,5,1,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\"]'),(66,9,1,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(67,4,12,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(68,8,20,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/20.jpg\"}'),(69,5,21,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\"]'),(70,7,7,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(71,2,2,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\"]'),(73,1,23,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(75,7,13,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(76,6,9,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(77,6,23,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(78,3,2,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(79,2,6,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\"]'),(80,9,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(81,6,8,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-10-24 23:46:12','2023-10-24 23:46:12','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/23.jpg\"}'),(82,1,3,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(83,8,14,2.00,'Good app, good backup service and support. Good documentation.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/4.jpg\"]'),(85,6,21,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(87,7,15,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\"]'),(95,10,9,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(96,2,21,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(98,2,20,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(100,6,5,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-10-24 23:46:12','2023-10-24 23:46:12','[\"products\\/3.jpg\",\"products\\/7.jpg\"]');
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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-10-23 07:46:12','2023-10-23 07:46:12','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-10-23 07:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-10-20 05:46:12','2023-10-20 05:46:12','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-10-23 09:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-10-21 23:46:12','2023-10-21 23:46:12','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-10-23 11:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-10-10 19:46:12','2023-10-10 19:46:12','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-10-23 13:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-10-22 07:46:12','2023-10-22 07:46:12','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-10-23 15:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-10-17 11:46:12','2023-10-17 11:46:12','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-10-23 17:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-10-19 03:46:12','2023-10-19 03:46:12','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-10-23 19:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-10-18 11:46:12','2023-10-18 11:46:12','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-10-23 21:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-10-20 23:46:12','2023-10-20 23:46:12','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-10-23 23:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(21,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-10-18 13:46:12','2023-10-18 13:46:12','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-10-24 01:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(23,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,10,10,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-10-23 07:46:12','2023-10-23 07:46:12','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-10-24 03:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-10-18 23:46:12','2023-10-18 23:46:12','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-10-24 05:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-10-22 23:46:13','2023-10-22 23:46:13','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-10-24 07:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(32,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-10-24 09:46:13','2023-10-24 09:46:13','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-10-24 09:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-10-21 23:46:13','2023-10-21 23:46:13','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-10-24 11:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(37,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-10-24 13:46:13','2023-10-24 13:46:13','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-10-24 13:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-10-23 07:46:13','2023-10-23 07:46:13','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-10-24 15:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-10-22 17:46:13','2023-10-22 17:46:13','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-10-24 17:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(44,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-10-24 07:46:13','2023-10-24 07:46:13','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-10-24 19:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-10-24 07:46:13','2023-10-24 07:46:13','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-10-24 21:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\ACL\\Models\\User');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,5045.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD006875780','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-30 06:46:12',NULL,NULL,NULL),(2,2,NULL,5212.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0091087289','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-04 06:46:12',NULL,NULL,NULL),(3,3,NULL,3422.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0069150025','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-31 06:46:12',NULL,NULL,NULL),(4,4,NULL,4177.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0010783677','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-02 06:46:12','2023-10-25 06:46:12',NULL,NULL),(5,5,NULL,3180.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0081841153','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-27 06:46:12',NULL,NULL,NULL),(6,6,NULL,4842.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0089300036','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-04 06:46:12',NULL,NULL,NULL),(7,7,NULL,2838.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0047149172','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-29 06:46:12',NULL,NULL,NULL),(8,8,NULL,5381.00,NULL,NULL,'','approved',965.00,'pending','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0069507921','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-26 06:46:12',NULL,NULL,NULL),(9,9,NULL,3623.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0048852471','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-03 06:46:12','2023-10-25 06:46:12',NULL,NULL),(10,10,NULL,2043.00,NULL,NULL,'','delivered',356.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0062520105','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-30 06:46:12','2023-10-25 06:46:12',NULL,NULL),(11,11,NULL,5234.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:12','2023-10-24 23:46:12','JJD0064684020','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-29 06:46:12','2023-10-25 06:46:12',NULL,NULL),(12,12,NULL,5626.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0034625357','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-29 06:46:13',NULL,NULL,NULL),(13,13,NULL,7839.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0074277988','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-03 06:46:13',NULL,NULL,NULL),(14,14,NULL,2302.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0029179341','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-04 06:46:13',NULL,NULL,NULL),(15,15,NULL,4271.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0025114107','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-04 06:46:13','2023-10-25 06:46:13',NULL,NULL),(16,16,NULL,5544.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD004036744','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-29 06:46:13',NULL,NULL,NULL),(17,17,NULL,2245.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0017006060','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-29 06:46:13',NULL,NULL,NULL),(18,18,NULL,6408.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0020483826','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-31 06:46:13','2023-10-25 06:46:13',NULL,NULL),(19,19,NULL,3230.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0076313483','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-11-01 06:46:13',NULL,NULL,NULL),(20,20,NULL,4656.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-10-24 23:46:13','2023-10-24 23:46:13','JJD0028431233','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-10-26 06:46:13','2023-10-25 06:46:13',NULL,NULL);
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12');
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
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-10-24 23:46:12','2023-10-24 23:46:12');
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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Wowy','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-10-24 23:46:12','2023-10-24 23:46:12');
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
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-10-24 23:46:09','2023-10-24 23:46:09'),(2,'None',0.000000,2,'published','2023-10-24 23:46:09','2023-10-24 23:46:09'),(3,'Import Tax',15.000000,3,'published','2023-10-24 23:46:09','2023-10-24 23:46:09');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(2,'Payment',1,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(3,'Order &amp; Returns',2,'published','2023-10-24 23:46:18','2023-10-24 23:46:18');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-10-24 23:46:18','2023-10-24 23:46:18');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','2fd5600bad1b4b1b05143c8c77821dfa',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','f2134520d211dcf36ac8ca4348851410',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','57d4e4436e5a9cdfc6e9e8f8b79e74bc',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','601366def3d4c0d3f793e866ed165f60',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','2afc8ecfb0b7bb20c809e9d467dff75c',1,'Botble\\Menu\\Models\\MenuLocation'),(6,'en_US','5bbff2beafccb7c9806896167f884236',1,'Botble\\Menu\\Models\\Menu'),(7,'en_US','7879b994ca95299544f2ec958b0c57d5',2,'Botble\\Menu\\Models\\Menu'),(8,'en_US','8b3b0e604c9a68e2988e1d7eb490f8e3',3,'Botble\\Menu\\Models\\Menu');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',1318,'brands/1.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(2,0,'2','2',1,'image/png',999,'brands/2.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(3,0,'3','3',1,'image/png',1251,'brands/3.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(4,0,'4','4',1,'image/png',1539,'brands/4.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(5,0,'5','5',1,'image/png',1058,'brands/5.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(6,0,'6','6',1,'image/png',4165,'brands/6.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(7,0,'7','7',1,'image/png',1260,'brands/7.png','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(8,0,'1','1',2,'image/jpeg',75180,'product-categories/1.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(9,0,'2','2',2,'image/jpeg',81345,'product-categories/2.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(10,0,'3','3',2,'image/jpeg',99137,'product-categories/3.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(11,0,'4','4',2,'image/jpeg',108690,'product-categories/4.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(12,0,'5','5',2,'image/jpeg',53952,'product-categories/5.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(13,0,'6','6',2,'image/jpeg',47088,'product-categories/6.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(14,0,'7','7',2,'image/jpeg',48248,'product-categories/7.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(15,0,'8','8',2,'image/jpeg',67235,'product-categories/8.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(16,0,'1-1','1-1',3,'image/jpeg',88437,'products/1-1.jpg','[]','2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(17,0,'1-2','1-2',3,'image/jpeg',122690,'products/1-2.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(18,0,'1-3','1-3',3,'image/jpeg',117296,'products/1-3.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(19,0,'1','1',3,'image/jpeg',139025,'products/1.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(20,0,'10-1','10-1',3,'image/jpeg',183491,'products/10-1.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(21,0,'10','10',3,'image/jpeg',150956,'products/10.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(22,0,'11-1','11-1',3,'image/jpeg',246200,'products/11-1.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(23,0,'11','11',3,'image/jpeg',279390,'products/11.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(24,0,'12-1','12-1',3,'image/jpeg',249712,'products/12-1.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(25,0,'12','12',3,'image/jpeg',172221,'products/12.jpg','[]','2023-10-24 23:46:00','2023-10-24 23:46:00',NULL),(26,0,'13-1','13-1',3,'image/jpeg',257021,'products/13-1.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(27,0,'13','13',3,'image/jpeg',232917,'products/13.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(28,0,'14-1','14-1',3,'image/jpeg',201773,'products/14-1.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(29,0,'14','14',3,'image/jpeg',287194,'products/14.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(30,0,'15-1','15-1',3,'image/jpeg',273720,'products/15-1.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(31,0,'15','15',3,'image/jpeg',114265,'products/15.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(32,0,'16','16',3,'image/jpeg',97174,'products/16.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(33,0,'17','17',3,'image/jpeg',70179,'products/17.jpg','[]','2023-10-24 23:46:01','2023-10-24 23:46:01',NULL),(34,0,'18-1','18-1',3,'image/jpeg',287835,'products/18-1.jpg','[]','2023-10-24 23:46:02','2023-10-24 23:46:02',NULL),(35,0,'18-2','18-2',3,'image/jpeg',454869,'products/18-2.jpg','[]','2023-10-24 23:46:02','2023-10-24 23:46:02',NULL),(36,0,'18','18',3,'image/jpeg',257331,'products/18.jpg','[]','2023-10-24 23:46:02','2023-10-24 23:46:02',NULL),(37,0,'19-1','19-1',3,'image/jpeg',144008,'products/19-1.jpg','[]','2023-10-24 23:46:02','2023-10-24 23:46:02',NULL),(38,0,'19','19',3,'image/jpeg',188821,'products/19.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(39,0,'2-1','2-1',3,'image/jpeg',138167,'products/2-1.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(40,0,'2-2','2-2',3,'image/jpeg',230552,'products/2-2.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(41,0,'2-3','2-3',3,'image/jpeg',179301,'products/2-3.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(42,0,'2','2',3,'image/jpeg',130048,'products/2.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(43,0,'20-1','20-1',3,'image/jpeg',249712,'products/20-1.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(44,0,'20','20',3,'image/jpeg',172221,'products/20.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(45,0,'21-1','21-1',3,'image/jpeg',260746,'products/21-1.jpg','[]','2023-10-24 23:46:03','2023-10-24 23:46:03',NULL),(46,0,'21','21',3,'image/jpeg',124244,'products/21.jpg','[]','2023-10-24 23:46:04','2023-10-24 23:46:04',NULL),(47,0,'22-1','22-1',3,'image/jpeg',213139,'products/22-1.jpg','[]','2023-10-24 23:46:04','2023-10-24 23:46:04',NULL),(48,0,'22','22',3,'image/jpeg',105409,'products/22.jpg','[]','2023-10-24 23:46:04','2023-10-24 23:46:04',NULL),(49,0,'23-1','23-1',3,'image/jpeg',105560,'products/23-1.jpg','[]','2023-10-24 23:46:04','2023-10-24 23:46:04',NULL),(50,0,'23','23',3,'image/jpeg',177362,'products/23.jpg','[]','2023-10-24 23:46:04','2023-10-24 23:46:04',NULL),(51,0,'24-1','24-1',3,'image/jpeg',239311,'products/24-1.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(52,0,'24','24',3,'image/jpeg',363853,'products/24.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(53,0,'3-1','3-1',3,'image/jpeg',135741,'products/3-1.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(54,0,'3-2','3-2',3,'image/jpeg',123069,'products/3-2.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(55,0,'3-3','3-3',3,'image/jpeg',98645,'products/3-3.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(56,0,'3','3',3,'image/jpeg',201722,'products/3.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(57,0,'4-1','4-1',3,'image/jpeg',205312,'products/4-1.jpg','[]','2023-10-24 23:46:05','2023-10-24 23:46:05',NULL),(58,0,'4-2','4-2',3,'image/jpeg',223903,'products/4-2.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(59,0,'4-3','4-3',3,'image/jpeg',106593,'products/4-3.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(60,0,'4','4',3,'image/jpeg',456134,'products/4.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(61,0,'5-1','5-1',3,'image/jpeg',110014,'products/5-1.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(62,0,'5-2','5-2',3,'image/jpeg',104934,'products/5-2.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(63,0,'5-3','5-3',3,'image/jpeg',131628,'products/5-3.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(64,0,'5','5',3,'image/jpeg',214767,'products/5.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(65,0,'6-1','6-1',3,'image/jpeg',128041,'products/6-1.jpg','[]','2023-10-24 23:46:06','2023-10-24 23:46:06',NULL),(66,0,'6','6',3,'image/jpeg',148485,'products/6.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(67,0,'7-1','7-1',3,'image/jpeg',144008,'products/7-1.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(68,0,'7','7',3,'image/jpeg',188821,'products/7.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(69,0,'8-1','8-1',3,'image/jpeg',274272,'products/8-1.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(70,0,'8','8',3,'image/jpeg',217862,'products/8.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(71,0,'9-1','9-1',3,'image/jpeg',65624,'products/9-1.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(72,0,'9','9',3,'image/jpeg',159636,'products/9.jpg','[]','2023-10-24 23:46:07','2023-10-24 23:46:07',NULL),(73,0,'1','1',4,'image/jpeg',70615,'customers/1.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(74,0,'10','10',4,'image/jpeg',27814,'customers/10.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(75,0,'2','2',4,'image/jpeg',19005,'customers/2.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(76,0,'3','3',4,'image/jpeg',20400,'customers/3.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(77,0,'4','4',4,'image/jpeg',26819,'customers/4.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(78,0,'5','5',4,'image/jpeg',14367,'customers/5.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(79,0,'6','6',4,'image/jpeg',66881,'customers/6.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(80,0,'7','7',4,'image/jpeg',20652,'customers/7.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(81,0,'8','8',4,'image/jpeg',79628,'customers/8.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(82,0,'9','9',4,'image/jpeg',55351,'customers/9.jpg','[]','2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(83,0,'1','1',5,'image/jpeg',62921,'flash-sales/1.jpg','[]','2023-10-24 23:46:12','2023-10-24 23:46:12',NULL),(84,0,'2','2',5,'image/jpeg',74131,'flash-sales/2.jpg','[]','2023-10-24 23:46:12','2023-10-24 23:46:12',NULL),(85,0,'1-1','1-1',6,'image/png',653539,'sliders/1-1.png','[]','2023-10-24 23:46:13','2023-10-24 23:46:13',NULL),(86,0,'1-2','1-2',6,'image/png',688883,'sliders/1-2.png','[]','2023-10-24 23:46:13','2023-10-24 23:46:13',NULL),(87,0,'1-3','1-3',6,'image/png',249966,'sliders/1-3.png','[]','2023-10-24 23:46:13','2023-10-24 23:46:13',NULL),(88,0,'2-1','2-1',6,'image/png',662495,'sliders/2-1.png','[]','2023-10-24 23:46:14','2023-10-24 23:46:14',NULL),(89,0,'2-2','2-2',6,'image/png',691309,'sliders/2-2.png','[]','2023-10-24 23:46:14','2023-10-24 23:46:14',NULL),(90,0,'2-3','2-3',6,'image/png',249966,'sliders/2-3.png','[]','2023-10-24 23:46:14','2023-10-24 23:46:14',NULL),(91,0,'3-1','3-1',6,'image/png',164134,'sliders/3-1.png','[]','2023-10-24 23:46:14','2023-10-24 23:46:14',NULL),(92,0,'3-2','3-2',6,'image/png',140217,'sliders/3-2.png','[]','2023-10-24 23:46:14','2023-10-24 23:46:14',NULL),(93,0,'4-1','4-1',6,'image/png',415854,'sliders/4-1.png','[]','2023-10-24 23:46:14','2023-10-24 23:46:14',NULL),(94,0,'4-2','4-2',6,'image/png',407249,'sliders/4-2.png','[]','2023-10-24 23:46:15','2023-10-24 23:46:15',NULL),(95,0,'4-3','4-3',6,'image/png',249966,'sliders/4-3.png','[]','2023-10-24 23:46:15','2023-10-24 23:46:15',NULL),(96,0,'1','1',7,'image/jpeg',533441,'news/1.jpg','[]','2023-10-24 23:46:15','2023-10-24 23:46:15',NULL),(97,0,'10','10',7,'image/jpeg',342651,'news/10.jpg','[]','2023-10-24 23:46:15','2023-10-24 23:46:15',NULL),(98,0,'11','11',7,'image/jpeg',296740,'news/11.jpg','[]','2023-10-24 23:46:15','2023-10-24 23:46:15',NULL),(99,0,'2','2',7,'image/jpeg',292594,'news/2.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(100,0,'3','3',7,'image/jpeg',382930,'news/3.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(101,0,'4','4',7,'image/jpeg',403060,'news/4.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(102,0,'5','5',7,'image/jpeg',727445,'news/5.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(103,0,'6','6',7,'image/jpeg',361958,'news/6.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(104,0,'7','7',7,'image/jpeg',904027,'news/7.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(105,0,'8','8',7,'image/jpeg',351088,'news/8.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(106,0,'9','9',7,'image/jpeg',353751,'news/9.jpg','[]','2023-10-24 23:46:16','2023-10-24 23:46:16',NULL),(107,0,'1','1',8,'image/png',66416,'promotion/1.png','[]','2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(108,0,'2','2',8,'image/png',70051,'promotion/2.png','[]','2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(109,0,'3','3',8,'image/png',66675,'promotion/3.png','[]','2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(110,0,'4','4',8,'image/png',61720,'promotion/4.png','[]','2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(111,0,'5','5',8,'image/png',25894,'promotion/5.png','[]','2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(112,0,'6','6',8,'image/png',528935,'promotion/6.png','[]','2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(113,0,'clock','clock',9,'image/png',4955,'general/clock.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(114,0,'credit-card','credit-card',9,'image/png',1742,'general/credit-card.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(115,0,'favicon','favicon',9,'image/png',2343,'general/favicon.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(116,0,'icon-bag','icon-bag',9,'image/png',15551,'general/icon-bag.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(117,0,'icon-operator','icon-operator',9,'image/png',23328,'general/icon-operator.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(118,0,'icon-purchase','icon-purchase',9,'image/png',22947,'general/icon-purchase.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(119,0,'icon-truck','icon-truck',9,'image/png',17131,'general/icon-truck.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(120,0,'logo-light','logo-light',9,'image/png',1938,'general/logo-light.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(121,0,'logo','logo',9,'image/png',2494,'general/logo.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(122,0,'open-graph-image','open-graph-image',9,'image/png',293189,'general/open-graph-image.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(123,0,'paper-plane','paper-plane',9,'image/png',5104,'general/paper-plane.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL),(124,0,'payment-methods','payment-methods',9,'image/png',10634,'general/payment-methods.png','[]','2023-10-24 23:46:19','2023-10-24 23:46:19',NULL);
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
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(2,0,'product-categories','product-categories',0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(3,0,'products','products',0,'2023-10-24 23:45:59','2023-10-24 23:45:59',NULL),(4,0,'customers','customers',0,'2023-10-24 23:46:09','2023-10-24 23:46:09',NULL),(5,0,'flash-sales','flash-sales',0,'2023-10-24 23:46:12','2023-10-24 23:46:12',NULL),(6,0,'sliders','sliders',0,'2023-10-24 23:46:13','2023-10-24 23:46:13',NULL),(7,0,'news','news',0,'2023-10-24 23:46:15','2023-10-24 23:46:15',NULL),(8,0,'promotion','promotion',0,'2023-10-24 23:46:18','2023-10-24 23:46:18',NULL),(9,0,'general','general',0,'2023-10-24 23:46:19','2023-10-24 23:46:19',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-10-24 23:46:18','2023-10-24 23:46:18');
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
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(6,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(7,1,6,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(8,1,6,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(9,1,6,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(10,1,6,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Products Of Category',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(11,1,0,NULL,NULL,'#',NULL,0,'Product',NULL,'_self',1,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(12,1,11,NULL,NULL,'/products/smart-home-speaker-digital',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(13,1,11,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(14,1,11,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Product Full Width',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(15,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(16,1,15,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Right Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(17,1,15,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(18,1,15,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(19,1,15,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(20,1,15,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(21,1,15,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:18'),(22,1,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(23,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(24,2,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Men',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(25,2,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Women',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(26,2,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Accessories',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(27,2,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Shoes',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(28,2,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(29,2,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Dress',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(30,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(31,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'About Us',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(32,3,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(33,3,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(34,3,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19'),(35,3,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-10-24 23:46:18','2023-10-24 23:46:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(2,'Product categories','product-categories','published','2023-10-24 23:46:18','2023-10-24 23:46:18'),(3,'Information','information','published','2023-10-24 23:46:18','2023-10-24 23:46:18');
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(3,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(5,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-10-24 23:46:08','2023-10-24 23:46:08'),(28,'subtitle','[\"Limited quantities.\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-10-24 23:46:12','2023-10-24 23:46:12'),(29,'image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-10-24 23:46:12','2023-10-24 23:46:12'),(30,'subtitle','[\"Computers & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-10-24 23:46:12','2023-10-24 23:46:12'),(31,'image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-10-24 23:46:12','2023-10-24 23:46:12'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(33,'subtitle','[\"Trade-In Offer\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(34,'highlight_text','[\"On All Products\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(35,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(36,'subtitle','[\"Tech Promotions\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(37,'highlight_text','[\"Great Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(38,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(39,'subtitle','[\"Upcoming Offer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(40,'highlight_text','[\"Manufacturer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(41,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-10-24 23:46:15','2023-10-24 23:46:15'),(42,'button_text','[\"Shop now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(43,'subtitle','[\"Trade-In Offer\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(44,'highlight_text','[\"On All Products\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(45,'button_text','[\"Discover now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(46,'subtitle','[\"Tech Promotions\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(47,'highlight_text','[\"Great Collection\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(48,'button_text','[\"Shop now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(49,'subtitle','[\"Upcoming Offer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(50,'highlight_text','[\"Manufacturer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(51,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-10-24 23:46:15','2023-10-24 23:46:15'),(52,'button_text','[\"Shop now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(53,'subtitle','[\"Trade-In Offer\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(54,'highlight_text','[\"On All Products\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(55,'button_text','[\"Discover now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(56,'subtitle','[\"Tech Promotions\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(57,'highlight_text','[\"Great Collection\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(58,'simple_slider_style','[\"style-4\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-10-24 23:46:15','2023-10-24 23:46:15'),(59,'button_text','[\"Shop now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(60,'subtitle','[\"Trade-In Offer\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(61,'highlight_text','[\"On All Products\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(62,'button_text','[\"Discover now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(63,'subtitle','[\"Tech Promotions\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(64,'highlight_text','[\"Great Collection\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(65,'button_text','[\"Shop now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(66,'subtitle','[\"Upcoming Offer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(67,'highlight_text','[\"Manufacturer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-10-24 23:46:15','2023-10-24 23:46:15'),(68,'expanding_product_categories_on_the_homepage','[\"yes\"]',2,'Botble\\Page\\Models\\Page','2023-10-24 23:46:17','2023-10-24 23:46:17'),(69,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(70,'subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(71,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(72,'subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(73,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(74,'subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(75,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(76,'subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(77,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(78,'subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(79,'button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18'),(80,'subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2023-10-24 23:46:18','2023-10-24 23:46:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2020_03_05_041139_create_ecommerce_tables',1),(27,'2020_11_18_150916_ads_create_ads_table',1),(28,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(29,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(30,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(31,'2021_02_16_092633_remove_default_value_for_author_type',1),(32,'2021_02_18_073505_update_table_ec_reviews',1),(33,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(34,'2021_03_10_025153_change_column_tax_amount',1),(35,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(36,'2021_03_27_144913_add_customer_type_into_table_payments',1),(37,'2021_04_28_074008_ecommerce_create_product_label_table',1),(38,'2021_05_24_034720_make_column_currency_nullable',1),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(40,'2021_08_02_084121_fix_old_shortcode',1),(41,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(42,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(43,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(44,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(45,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(46,'2021_10_19_020859_update_metadata_field',1),(47,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(48,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(49,'2021_11_23_071403_correct_languages_for_product_variations',1),(50,'2021_11_28_031808_add_product_tags_translations',1),(51,'2021_12_01_031123_add_featured_image_to_ec_products',1),(52,'2021_12_02_035301_add_ads_translations_table',1),(53,'2021_12_03_030600_create_blog_translations',1),(54,'2021_12_03_075608_create_page_translations',1),(55,'2021_12_03_082134_create_faq_translations',1),(56,'2021_12_03_084118_create_location_translations',1),(57,'2021_12_03_094518_migrate_old_location_data',1),(58,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(59,'2022_01_01_033107_update_table_ec_shipments',1),(60,'2022_01_16_085908_improve_plugin_location',1),(61,'2022_02_16_042457_improve_product_attribute_sets',1),(62,'2022_03_22_075758_correct_product_name',1),(63,'2022_04_19_113334_add_index_to_ec_products',1),(64,'2022_04_19_113923_add_index_to_table_posts',1),(65,'2022_04_20_100851_add_index_to_media_table',1),(66,'2022_04_20_101046_add_index_to_menu_table',1),(67,'2022_04_28_144405_remove_unused_table',1),(68,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(69,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(70,'2022_06_16_095633_add_index_to_some_tables',1),(71,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(72,'2022_06_30_035148_create_order_referrals_table',1),(73,'2022_07_07_153354_update_charge_id_in_table_payments',1),(74,'2022_07_10_034813_move_lang_folder_to_root',1),(75,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(76,'2022_08_04_051940_add_missing_column_expires_at',1),(77,'2022_08_04_052122_delete_location_backup_tables',1),(78,'2022_08_14_032836_create_ec_order_returns_table',1),(79,'2022_08_14_033554_create_ec_order_return_items_table',1),(80,'2022_08_15_040324_add_billing_address',1),(81,'2022_08_30_091114_support_digital_products_table',1),(82,'2022_09_01_000001_create_admin_notifications_tables',1),(83,'2022_09_13_095744_create_options_table',1),(84,'2022_09_13_104347_create_option_value_table',1),(85,'2022_09_27_084829_fix_footer_widget',1),(86,'2022_10_05_163518_alter_table_ec_order_product',1),(87,'2022_10_12_041517_create_invoices_table',1),(88,'2022_10_12_142226_update_orders_table',1),(89,'2022_10_13_024916_update_table_order_returns',1),(90,'2022_10_14_024629_drop_column_is_featured',1),(91,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(92,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(93,'2022_10_28_030106_improve-newsletter-widget',1),(94,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(95,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(96,'2022_11_19_041643_add_ec_tax_product_table',1),(97,'2022_12_02_093615_update_slug_index_columns',1),(98,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(99,'2022_12_17_041532_fix_address_in_order_invoice',1),(100,'2022_12_26_070329_create_ec_product_views_table',1),(101,'2023_01_04_033051_fix_product_categories',1),(102,'2023_01_09_050400_add_ec_global_options_translations_table',1),(103,'2023_01_10_093754_add_missing_option_value_id',1),(104,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(105,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(106,'2023_01_30_024431_add_alt_to_media_table',1),(107,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(108,'2023_02_16_042611_drop_table_password_resets',1),(109,'2023_02_27_095752_remove_duplicate_reviews',1),(110,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(111,'2023_04_17_062645_add_open_in_new_tab',1),(112,'2023_04_21_082427_create_ec_product_categorizables_table',1),(113,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(114,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(115,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(116,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(117,'2023_05_17_025812_fix_invoice_issue',1),(118,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(119,'2023_05_27_144611_fix_exchange_rate_setting',1),(120,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(121,'2023_06_30_042512_create_ec_order_tax_information_table',1),(122,'2023_07_06_011444_create_slug_translations_table',1),(123,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(124,'2023_07_26_041451_add_more_columns_to_location_table',1),(125,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(126,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(127,'2023_08_15_064505_create_ec_tax_rules_table',1),(128,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(129,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(130,'2023_08_21_090810_make_page_content_nullable',1),(131,'2023_08_22_094114_drop_unique_for_barcode',1),(132,'2023_08_29_074620_make_column_author_id_nullable',1),(133,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(134,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(135,'2023_09_14_021936_update_index_for_slugs_table',1),(136,'2023_09_14_022423_add_index_for_language_table',1),(137,'2023_09_19_024955_create_discount_product_categories_table',1),(138,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(139,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>',1,NULL,'homepage',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(5,'Blog','<p>---</p>',1,NULL,'blog-right-sidebar',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(7,'About us','<p>Alice\'s, and they all moved off, and that in some alarm. This time there were three little sisters--they were learning to draw, you know--\' (pointing with his nose, and broke off a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the morning, just time to begin with,\' the Mock Turtle in the world she was losing her temper. \'Are you content now?\' said the Duchess, as she could, for the next witness. It quite makes my forehead ache!\' Alice watched the.</p><p>Duchess. \'I make you grow shorter.\' \'One side will make you grow taller, and the baby with some difficulty, as it went, \'One side of the court, she said to herself, \'in my going out altogether, like a snout than a rat-hole: she knelt down and cried. \'Come, there\'s no use in saying anything more till the Pigeon in a Little Bill It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was exactly three inches high). \'But I\'m NOT a.</p><p>Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself \'Now I can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all made of solid glass; there was no label this time she went back to the table, but there were no tears. \'If you\'re going to turn into a tree. By the time they were lying round the refreshments!\' But there seemed to listen, the whole place around her became alive with the distant sobs of the.</p><p>That WILL be a Caucus-race.\' \'What IS the use of a tree. \'Did you say things are worse than ever,\' thought the poor little thing grunted in reply (it had left off staring at the Mouse\'s tail; \'but why do you know the meaning of half those long words, and, what\'s more, I don\'t take this young lady tells us a story.\' \'I\'m afraid I can\'t remember,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said this she looked back once or twice, half hoping that they.</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(9,'Terms &amp; Conditions','<p>March Hare said--\' \'I didn\'t!\' the March Hare. Alice sighed wearily. \'I think I can remember feeling a little while, however, she waited patiently. \'Once,\' said the Pigeon; \'but I must sugar my hair.\" As a duck with its legs hanging down, but generally, just as I tell you!\' said Alice. \'Come, let\'s hear some of the jury wrote it down \'important,\' and some \'unimportant.\' Alice could see her after the candle is like after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she.</p><p>Alice; \'you needn\'t be so stingy about it, you may nurse it a minute or two the Caterpillar contemptuously. \'Who are YOU?\' said the King; and as he spoke. \'A cat may look at a reasonable pace,\' said the Caterpillar took the place where it had fallen into a butterfly, I should think it would like the wind, and was gone across to the jury, in a low, trembling voice. \'There\'s more evidence to come yet, please your Majesty?\' he asked. \'Begin at the March Hare. \'He denies it,\' said the Cat. \'--so.</p><p>Cat seemed to have finished,\' said the young Crab, a little pattering of feet on the ground near the entrance of the court, by the prisoner to--to somebody.\' \'It must be kind to them,\' thought Alice, \'they\'re sure to happen,\' she said to herself. At this the White Rabbit; \'in fact, there\'s nothing written on the slate. \'Herald, read the accusation!\' said the Caterpillar. Alice thought to herself, \'after such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know.</p><p>LITTLE larger, sir, if you wouldn\'t squeeze so.\' said the King. (The jury all wrote down on one of its right ear and left off quarrelling with the dream of Wonderland of long ago: and how she would catch a bat, and that\'s very like a steam-engine when she looked up, and there stood the Queen was silent. The King and the choking of the jury asked. \'That I can\'t get out at the end.\' \'If you do. I\'ll set Dinah at you!\' There was a dispute going on shrinking rapidly: she soon made out that it felt.</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(10,'Returns &amp; Exchanges','<p>YOU do it!--That I won\'t, then!--Bill\'s to go down--Here, Bill! the master says you\'re to go down--Here, Bill! the master says you\'re to go after that savage Queen: so she began thinking over other children she knew that were of the mushroom, and raised herself to about two feet high: even then she had read about them in books, and she told her sister, as well be at school at once.\' And in she went. Once more she found herself lying on the look-out for serpents night and day! Why, I do wonder.</p><p>Hatter, and, just as I tell you, you coward!\' and at last it sat down with one of the hall; but, alas! the little magic bottle had now had its full effect, and she at once and put it in her hands, and was coming back to the Gryphon. Alice did not come the same age as herself, to see the earth takes twenty-four hours to turn into a pig, my dear,\' said Alice, a little hot tea upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very grave.</p><p>King said to Alice, they all crowded together at one and then dipped suddenly down, so suddenly that Alice said; \'there\'s a large kitchen, which was immediately suppressed by the end of the Gryphon, the squeaking of the players to be ashamed of yourself,\' said Alice, \'and those twelve creatures,\' (she was obliged to say to this: so she went on growing, and very angrily. \'A knot!\' said Alice, and she very good-naturedly began hunting about for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter said.</p><p>King; and as the question was evidently meant for her. \'I wish you wouldn\'t mind,\' said Alice: \'she\'s so extremely--\' Just then she walked down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down the middle, nursing a baby; the cook was busily stirring the soup, and seemed to have the experiment tried. \'Very true,\' said the Gryphon. Alice did not like the tone of great relief. \'Now at OURS they had settled down again in a fight with another hedgehog, which seemed to.</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(11,'Shipping &amp; Delivery','<p>I eat one of the wood to listen. The Fish-Footman began by producing from under his arm a great hurry. An enormous puppy was looking at the flowers and those cool fountains, but she stopped hastily, for the garden!\' and she very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means much the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that all?\' said the Hatter, and here the Mock Turtle, and to stand on their.</p><p>Dormouse, after thinking a minute or two, looking for it, she found herself falling down a very poor speaker,\' said the Lory. Alice replied thoughtfully. \'They have their tails in their mouths. So they got settled down again in a tone of great surprise. \'Of course they were\', said the Hatter. \'He won\'t stand beating. Now, if you don\'t know what you mean,\' said Alice. \'Why, SHE,\' said the Rabbit\'s little white kid gloves while she was in confusion, getting the Dormouse denied nothing, being.</p><p>Alice, and she jumped up on tiptoe, and peeped over the jury-box with the Duchess, as she spoke. Alice did not look at the proposal. \'Then the Dormouse indignantly. However, he consented to go near the house till she was now about two feet high, and was going to say,\' said the Hatter added as an unusually large saucepan flew close by her. There was nothing else to do, so Alice soon began talking to him,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who.</p><p>How brave they\'ll all think me for his housemaid,\' she said to herself; \'the March Hare went \'Sh! sh!\' and the pair of gloves and a sad tale!\' said the Queen, and in another moment down went Alice after it, \'Mouse dear! Do come back again, and she did not like the look of it in large letters. It was high time to avoid shrinking away altogether. \'That WAS a curious appearance in the sea, \'and in that ridiculous fashion.\' And he added in an offended tone, and added \'It isn\'t directed at all,\'.</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(12,'Privacy Policy','<p>Alice. \'That\'s the judge,\' she said to herself, \'after such a thing before, and behind it when she was out of it, and fortunately was just in time to go, for the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been was not a VERY unpleasant state of mind, she turned the corner, but the Dormouse shook its head impatiently, and walked off; the Dormouse sulkily remarked, \'If you please, sir--\' The.</p><p>Alice, who felt very lonely and low-spirited. In a minute or two she walked off, leaving Alice alone with the tea,\' the Hatter said, tossing his head off outside,\' the Queen till she was as much right,\' said the Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the Cat. \'I don\'t even know what it was: she was playing against herself, for this time the Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the Mouse replied.</p><p>Who ever saw one that size? Why, it fills the whole court was in March.\' As she said this last remark. \'Of course you know the way YOU manage?\' Alice asked. The Hatter shook his head sadly. \'Do I look like one, but the Dormouse followed him: the March Hare and the constant heavy sobbing of the busy farm-yard--while the lowing of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to.</p><p>NOT be an advantage,\' said Alice, \'I\'ve often seen a cat without a moment\'s delay would cost them their lives. All the time at the time he was going to give the prizes?\' quite a commotion in the same year for such dainties would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, and he called the Queen, \'and take this young lady to see that queer little toss of her childhood: and how she was to get an opportunity of showing off.</p>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(13,'Blog Left Sidebar','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-left-sidebar',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(14,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-10-24 23:46:17','2023-10-24 23:46:17');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'2NFBW619SR','sslcommerz',NULL,983.00,1,'completed','confirm',1,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'K0JUDYKNPV','paystack',NULL,902.00,2,'completed','confirm',7,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'PT4KEYRUBO','paystack',NULL,447.00,3,'completed','confirm',10,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'XNJWMQBY7Q','paypal',NULL,1182.00,4,'completed','confirm',9,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'RR2DAU4CYU','paypal',NULL,759.00,5,'completed','confirm',7,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'MPNROREURC','paystack',NULL,738.00,6,'completed','confirm',4,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'UQ3HGU4YVN','paypal',NULL,1192.00,7,'completed','confirm',1,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'F3KJCE4QQM','cod',NULL,965.00,8,'pending','confirm',1,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'4TANZVFIPK','sslcommerz',NULL,1058.00,9,'completed','confirm',6,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'XSEPDBUEZN','cod',NULL,356.00,10,'pending','confirm',6,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'QZY9TRGH0J','stripe',NULL,1612.00,11,'completed','confirm',6,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'TXULRJXJZY','sslcommerz',NULL,1444.00,12,'completed','confirm',8,NULL,NULL,'2023-10-24 23:46:12','2023-10-24 23:46:12','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'C5ELL30EKA','stripe',NULL,1267.00,13,'completed','confirm',8,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'XRWNMFYPNO','razorpay',NULL,699.00,14,'completed','confirm',3,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'E92KZTUGXU','paypal',NULL,1248.00,15,'completed','confirm',8,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'QXE6DHHVKD','razorpay',NULL,1757.00,16,'completed','confirm',5,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'3DXZUOF7HT','bank_transfer',NULL,493.00,17,'pending','confirm',5,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'ZNU5EZSU1R','bank_transfer',NULL,1166.00,18,'pending','confirm',8,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'FHD6CND4QM','stripe',NULL,468.00,19,'completed','confirm',4,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'ZGEWWLBUIC','bank_transfer',NULL,1470.00,20,'pending','confirm',4,NULL,NULL,'2023-10-24 23:46:13','2023-10-24 23:46:13','Botble\\Ecommerce\\Models\\Customer',NULL);
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
INSERT INTO `post_categories` VALUES (2,1),(4,1),(2,2),(4,2),(1,3),(4,3),(1,4),(3,4),(1,5),(4,5),(2,6),(4,6),(1,7),(4,7),(2,8),(3,8),(1,9),(3,9),(1,10),(3,10),(2,11),(4,11);
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1712,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',182,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',453,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1962,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1433,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1423,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1364,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',151,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2046,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',810,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1567,NULL,'2023-10-24 23:46:17','2023-10-24 23:46:17');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `role_users` VALUES (3,1,'2023-10-24 23:46:18','2023-10-24 23:46:18');
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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2023-10-24 23:46:17','2023-10-24 23:46:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2023-10-24 23:46:18'),(5,'api_enabled','0',NULL,'2023-10-24 23:46:18'),(8,'language_hide_default','1',NULL,'2023-10-24 23:46:18'),(10,'language_display','all',NULL,'2023-10-24 23:46:18'),(11,'language_hide_languages','[]',NULL,'2023-10-24 23:46:18'),(12,'ecommerce_store_name','Wowy',NULL,NULL),(13,'ecommerce_store_phone','18006268',NULL,NULL),(14,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(15,'ecommerce_store_state','Singapore',NULL,NULL),(16,'ecommerce_store_city','Singapore',NULL,NULL),(17,'ecommerce_store_country','SG',NULL,NULL),(18,'payment_cod_status','1',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'media_random_hash','e2a8b2cdcbfabbaaa46e840e8ac320e5',NULL,NULL),(21,'show_admin_bar','1',NULL,NULL),(23,'language_switcher_display','dropdown',NULL,NULL),(26,'permalink-botble-blog-models-post','blog',NULL,NULL),(27,'permalink-botble-blog-models-category','blog',NULL,NULL),(28,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(29,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(30,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(31,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(32,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(33,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(34,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(35,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,NULL),(36,'ecommerce_product_sku_format','WW-2443-[%S]',NULL,NULL),(37,'theme','wowy',NULL,NULL),(38,'admin_favicon','general/favicon.png',NULL,NULL),(39,'admin_logo','general/logo-light.png',NULL,NULL),(40,'theme-wowy-site_title','Wowy - Laravel Multipurpose eCommerce Script',NULL,NULL),(41,'theme-wowy-copyright','Copyright © 2023 Wowy all rights reserved. Powered by Botble.',NULL,NULL),(42,'theme-wowy-favicon','general/favicon.png',NULL,NULL),(43,'theme-wowy-logo','general/logo.png',NULL,NULL),(44,'theme-wowy-logo_light','general/logo-light.png',NULL,NULL),(45,'theme-wowy-seo_og_image','general/open-graph-image.png',NULL,NULL),(46,'theme-wowy-seo_description','Wowy is an outstanding eCommerce Laravel script. It will be the perfect solution for your current or future web shop.',NULL,NULL),(47,'theme-wowy-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(48,'theme-wowy-hotline','1900 - 888',NULL,NULL),(49,'theme-wowy-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(50,'theme-wowy-contact_email','sale@wowy.com',NULL,NULL),(51,'theme-wowy-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(52,'theme-wowy-homepage_id','1',NULL,NULL),(53,'theme-wowy-blog_page_id','5',NULL,NULL),(54,'theme-wowy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(55,'theme-wowy-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(56,'theme-wowy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(57,'theme-wowy-number_of_cross_sale_product','4',NULL,NULL),(58,'theme-wowy-preloader_enabled','yes',NULL,NULL),(59,'theme-wowy-preloader_version','v2',NULL,NULL),(60,'theme-wowy-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]',NULL,NULL),(61,'theme-wowy-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(62,'theme-wowy-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Super Value Deals','sliders/1-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(2,1,'Tech Trending','sliders/1-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(3,1,'Big Deals From','sliders/1-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(4,2,'Super Value Deals','sliders/2-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(5,2,'Tech Trending','sliders/2-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(6,2,'Big Deals From','sliders/2-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(7,3,'Super Value Deals','sliders/3-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(8,3,'Tech Trending','sliders/3-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(9,4,'Super Value Deals','sliders/4-1.png','/products','Save more with coupons &amp; up to 70% off',1,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(10,4,'Tech Trending','sliders/4-2.png','/products','Save more with coupons &amp; up to 20% off',2,'2023-10-24 23:46:15','2023-10-24 23:46:15'),(11,4,'Big Deals From','sliders/4-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2023-10-24 23:46:15','2023-10-24 23:46:15');
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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-10-24 23:46:15','2023-10-24 23:46:15'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-10-24 23:46:15','2023-10-24 23:46:15'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-10-24 23:46:15','2023-10-24 23:46:15'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-10-24 23:46:15','2023-10-24 23:46:15');
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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-10-24 23:45:59','2023-10-24 23:45:59'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(10,'home-audio-theaters',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(11,'tv-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(12,'camera-photos-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(13,'cellphones-accessories',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(14,'headphones',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(15,'videos-games',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(16,'wireless-speakers',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(17,'office-electronic',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(18,'clothing',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(19,'computers',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(20,'computer-tablets',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(21,'laptop',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(22,'monitors',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(23,'computer-components',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(24,'home-kitchen',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(25,'health-beauty',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(26,'jewelry-watch',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(27,'technology-toys',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(28,'drive-storages',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(29,'gaming-laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(30,'security-protection',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(31,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(32,'phones',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(33,'babies-moms',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(34,'sport-outdoor',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(35,'books-office',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(36,'cars-motorcycles',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(37,'home-improvements',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-10-24 23:45:59','2023-10-24 23:45:59'),(38,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-10-24 23:45:59','2023-10-24 23:45:59'),(39,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-10-24 23:45:59','2023-10-24 23:45:59'),(40,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-10-24 23:45:59','2023-10-24 23:45:59'),(41,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-10-24 23:45:59','2023-10-24 23:45:59'),(42,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-10-24 23:45:59','2023-10-24 23:45:59'),(43,'smart-home-speaker-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(44,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(45,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(46,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(47,'camera-hikvision-hk-35vs8-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(48,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(49,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(50,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(51,'macbook-pro-2015-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(52,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(53,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(54,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(55,'apple-keyboard-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(56,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(57,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(58,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(59,'cool-smart-watches-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(60,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(61,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(62,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(63,'historic-alarm-clock-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(64,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(65,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(66,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2023-10-24 23:46:08','2023-10-24 23:46:08'),(67,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(68,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(69,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(70,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(71,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-10-24 23:46:17','2023-10-24 23:46:17'),(72,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-10-24 23:46:17','2023-10-24 23:46:17'),(73,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-10-24 23:46:17','2023-10-24 23:46:17'),(74,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-10-24 23:46:17','2023-10-24 23:46:17'),(75,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-10-24 23:46:17','2023-10-24 23:46:17'),(76,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(77,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(78,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(79,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(80,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(81,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(82,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(83,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(84,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(85,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(86,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-10-24 23:46:17','2023-10-24 23:46:18'),(87,'homepage',1,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(88,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(89,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(90,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(91,'blog',5,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(92,'contact',6,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(93,'about-us',7,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(94,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(95,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(96,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(97,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(98,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(99,'blog-left-sidebar',13,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17'),(100,'faq',14,'Botble\\Page\\Models\\Page','','2023-10-24 23:46:17','2023-10-24 23:46:17');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
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
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-10-24 23:46:17','2023-10-24 23:46:17'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-10-24 23:46:17','2023-10-24 23:46:17');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'super@botble.com',NULL,'$2y$12$xAdY78p/jmmPgAoJw2Qq2uCeSGocVQUyRCFV0R9z7KN3oEwZZOJx.',NULL,'2023-10-24 23:46:18','2023-10-24 23:46:18','Super','Admin','botble',NULL,1,1,NULL,NULL),(2,'admin@botble.com',NULL,'$2y$12$QmodlTSlWDTR6203z0ulTeVpdFG2E1dzM.rVfPE1/ShW8lr4UhJ5.',NULL,'2023-10-24 23:46:18','2023-10-24 23:46:18','John','Smith','admin',NULL,1,1,NULL,NULL),(3,'user@botble.com',NULL,'$2y$12$0v1J2vMdjo1RUTvbo7DA5usqS.VBhfI1aekVVp6OAeSYbMZGdkvcu',NULL,'2023-10-24 23:46:18','2023-10-24 23:46:18','Demon','Warlock','user',NULL,0,0,'{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL);
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
INSERT INTO `widgets` VALUES (1,'NewsletterWidget','top_footer_sidebar','wowy',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Sign up to Newsletter\",\"subtitle\":\"...and receive $25 coupon for first shopping.\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(2,'SiteInfoWidget','footer_sidebar','wowy',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(3,'CustomMenuWidget','footer_sidebar','wowy',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(4,'CustomMenuWidget','footer_sidebar','wowy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(5,'PaymentMethodsWidget','footer_sidebar','wowy',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Payments\",\"description\":\"Secured Payment Gateways\",\"image\":\"general\\/payment-methods.png\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(6,'BlogSearchWidget','primary_sidebar','wowy',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(7,'BlogCategoriesWidget','primary_sidebar','wowy',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(8,'RecentPostsWidget','primary_sidebar','wowy',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(9,'TagsWidget','primary_sidebar','wowy',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(10,'ProductCategoriesWidget','product_sidebar','wowy',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(11,'FeaturedProductsWidget','product_sidebar','wowy',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}','2023-10-24 23:46:19','2023-10-24 23:46:19'),(12,'FeaturedBrandsWidget','product_sidebar','wowy',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}','2023-10-24 23:46:19','2023-10-24 23:46:19');
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

-- Dump completed on 2023-10-25 13:46:20
