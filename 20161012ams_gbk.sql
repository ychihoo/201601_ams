-- MySQL dump 10.13  Distrib 5.6.27, for Win64 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	5.6.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gbk */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add assets',7,'add_assets'),(20,'Can change assets',7,'change_assets'),(21,'Can delete assets',7,'delete_assets'),(22,'Can add assets_ detail',8,'add_assets_detail'),(23,'Can change assets_ detail',8,'change_assets_detail'),(24,'Can delete assets_ detail',8,'delete_assets_detail'),(25,'Can add repair',9,'add_repair'),(26,'Can change repair',9,'change_repair'),(27,'Can delete repair',9,'delete_repair'),(31,'Can add brand',11,'add_brand'),(32,'Can change brand',11,'change_brand'),(33,'Can delete brand',11,'delete_brand'),(34,'Can add roles',12,'add_roles'),(35,'Can change roles',12,'change_roles'),(36,'Can delete roles',12,'delete_roles'),(37,'Can add users',13,'add_users'),(38,'Can change users',13,'change_users'),(39,'Can delete users',13,'delete_users'),(40,'Can add department',14,'add_department'),(41,'Can change department',14,'change_department'),(42,'Can delete department',14,'delete_department'),(43,'Can add menus',15,'add_menus'),(44,'Can change menus',15,'change_menus'),(45,'Can delete menus',15,'delete_menus'),(46,'Can add providers',16,'add_providers'),(47,'Can change providers',16,'change_providers'),(48,'Can delete providers',16,'delete_providers'),(49,'Can add log',17,'add_log'),(50,'Can change log',17,'change_log'),(51,'Can delete log',17,'delete_log'),(52,'Can add category',18,'add_category'),(53,'Can change category',18,'change_category'),(54,'Can delete category',18,'delete_category'),(55,'Can add position',19,'add_position'),(56,'Can change position',19,'change_position'),(57,'Can delete position',19,'delete_position');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'assets','assets'),(8,'assets','assets_detail'),(11,'assets','brand'),(18,'assets','category'),(9,'assets','repair'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(14,'system','department'),(17,'system','log'),(15,'system','menus'),(19,'system','position'),(16,'system','providers'),(12,'system','roles'),(13,'system','users');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-07-23 12:14:40.815000'),(2,'auth','0001_initial','2016-07-23 12:14:41.545000'),(3,'admin','0001_initial','2016-07-23 12:14:41.708000'),(4,'admin','0002_logentry_remove_auto_add','2016-07-23 12:14:41.772000'),(5,'assets','0001_initial','2016-07-23 12:14:42.027000'),(6,'contenttypes','0002_remove_content_type_name','2016-07-23 12:14:42.228000'),(7,'auth','0002_alter_permission_name_max_length','2016-07-23 12:14:42.364000'),(8,'auth','0003_alter_user_email_max_length','2016-07-23 12:14:42.454000'),(9,'auth','0004_alter_user_username_opts','2016-07-23 12:14:42.488000'),(10,'auth','0005_alter_user_last_login_null','2016-07-23 12:14:42.580000'),(11,'auth','0006_require_contenttypes_0002','2016-07-23 12:14:42.591000'),(12,'auth','0007_alter_validators_add_error_messages','2016-07-23 12:14:42.628000'),(13,'sessions','0001_initial','2016-07-23 12:14:42.696000'),(14,'assets','0002_auto_20160723_2147','2016-07-23 13:48:12.589000'),(15,'assets','0003_auto_20160723_2156','2016-07-23 13:57:04.450000'),(16,'system','0001_initial','2016-07-23 13:57:04.842000'),(17,'system','0002_auto_20160723_2200','2016-07-23 14:00:15.040000'),(18,'assets','0004_assets_ass_acceptdeadline','2016-07-23 14:45:12.136000'),(19,'system','0003_auto_20160723_2245','2016-07-23 14:45:12.754000'),(20,'assets','0005_auto_20160724_1212','2016-07-24 04:12:55.110000'),(21,'system','0004_auto_20160724_1212','2016-07-24 04:12:55.591000'),(22,'system','0005_menus_m_url','2016-07-24 09:15:20.596000'),(23,'assets','0006_auto_20160725_2148','2016-07-25 13:48:15.907000'),(24,'system','0006_auto_20160725_2148','2016-07-25 13:48:16.729000'),(25,'assets','0007_auto_20160727_2025','2016-07-27 12:25:59.062000'),(26,'system','0007_auto_20160727_2025','2016-07-27 12:25:59.777000'),(27,'system','0008_auto_20160727_2029','2016-07-27 12:29:16.423000'),(28,'assets','0008_auto_20160729_1922','2016-07-29 19:22:29.839000'),(29,'system','0009_auto_20160729_1922','2016-07-29 19:22:30.357000'),(30,'assets','0009_auto_20160730_2055','2016-07-30 20:56:06.282000'),(31,'system','0010_auto_20160730_2055','2016-07-30 20:56:06.787000'),(32,'assets','0010_auto_20160730_2059','2016-07-30 20:59:16.948000'),(33,'system','0011_auto_20160730_2059','2016-07-30 20:59:17.443000'),(34,'assets','0011_auto_20160802_2052','2016-08-02 20:53:03.913000'),(35,'system','0012_auto_20160802_2052','2016-08-02 20:53:04.366000'),(36,'assets','0012_auto_20160802_2115','2016-08-02 21:16:02.905000'),(37,'system','0013_auto_20160802_2115','2016-08-02 21:16:03.410000'),(38,'assets','0013_auto_20160819_2242','2016-08-19 22:42:17.195000'),(39,'system','0014_auto_20160819_2242','2016-08-19 22:42:17.574000'),(40,'assets','0014_auto_20160820_1854','2016-08-20 18:54:19.268000'),(41,'system','0015_auto_20160820_1854','2016-08-20 18:54:19.729000'),(42,'assets','0015_auto_20160824_2205','2016-08-24 22:06:01.859000'),(43,'system','0016_auto_20160824_2205','2016-08-24 22:06:02.343000'),(44,'assets','0016_auto_20160829_2050','2016-08-29 20:50:37.621000'),(45,'system','0017_auto_20160829_2050','2016-08-29 20:50:38.893000'),(46,'assets','0017_auto_20160902_2045','2016-09-02 20:45:53.626000'),(47,'system','0018_auto_20160902_2045','2016-09-02 20:45:54.378000'),(48,'assets','0018_auto_20160903_1443','2016-09-03 14:43:35.170000'),(49,'system','0019_auto_20160903_1443','2016-09-03 14:43:35.741000'),(50,'assets','0019_auto_20160903_1639','2016-09-03 16:39:30.046000'),(51,'system','0020_auto_20160903_1639','2016-09-03 16:39:30.718000'),(52,'assets','0020_auto_20160924_2228','2016-09-24 22:28:39.944000'),(53,'system','0021_auto_20160924_2228','2016-09-24 22:28:40.571000'),(54,'assets','0021_auto_20160924_2232','2016-09-24 22:32:55.729000'),(55,'system','0022_auto_20160924_2232','2016-09-24 22:32:56.324000'),(56,'assets','0022_auto_20161011_2229','2016-10-11 22:29:29.753000'),(57,'system','0021_auto_20161011_2229','2016-10-11 22:29:30.426000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('05hwqbk8mgic8t33m15cl3b294k7hzt4','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-21 19:59:26.849000'),('0eymvq4qb8paamxjiwcbgjr0gezpfjba','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-07 01:18:14.469000'),('0pibf6te721yjtfvbs7bkltm47pi0jko','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-22 02:01:55.200000'),('123w18x19ntdwflsatxx9inqysszrgnc','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-16 01:48:35.624000'),('1yq0pdfctk659vlbeln38h6je5cuzx31','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-24 00:51:51.898000'),('2gor2f3sqffy163k28hvj56gexeu4nww','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-27 15:34:23.922000'),('2lodg0rwg2hxtqlfzsfkc8frtyc31g8i','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-27 01:32:46.504000'),('2r2lw25c4pna0v9onx7d8o6gcg8gw54d','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-26 00:55:52.779000'),('30onwt9xwadizwfnzxpeaabml6ggyrfr','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-25 20:57:36.027000'),('357g7feheitveoxi9bw80dbr3tjgzvcj','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-03 01:26:09.583000'),('3cwaw0wzeukfsxo9h6ob8g8l73ce4mm4','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-21 04:45:11.436000'),('3g9g5cw4nyuoxn8by2o78t2rrpvj9rii','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-27 02:45:47.602000'),('3toetxxzwsmdkegvw1qhfhpjl4edh7cn','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-28 01:16:27.071000'),('3xq5cxmhhewcngdz2v84gwd59k3hj6kz','YzVlZDg0MmZiZjkwNzFmMmY1YzdhMDA4ZjMxYjhiZTM4MGQxNTgxZDp7InVzZXJuYW1lIjoiamhoIiwiYWNjb3VudCI6ImpoaCJ9','2016-07-27 23:06:56.687000'),('4c8koa0gih8wh5pl6r2yzvd5gbttyd00','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-07 20:37:02.510000'),('4p8mnaplv038yyj3w323xrlmsgdm8h4s','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-04 02:25:57.081000'),('4pzysvw97objn4axiqa06mycjbpx92tu','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-20 23:44:02.887000'),('4q5sy7yj3ib73r5dqnqkeqo4q1nbr7r1','YzVlZDg0MmZiZjkwNzFmMmY1YzdhMDA4ZjMxYjhiZTM4MGQxNTgxZDp7InVzZXJuYW1lIjoiamhoIiwiYWNjb3VudCI6ImpoaCJ9','2016-07-28 19:59:52.893000'),('553f6exf80az936avhejnlql4m5vpca2','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-25 03:33:30.739000'),('5fwku0bosfiuwqsx8zymsnzh5ifebh1x','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-02 02:00:38.231000'),('5ren499cwxyfazwuyvditx7ulu6xoou3','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-28 01:34:26.555000'),('66rkpkichy9knekp9601znen4qc7csgw','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-23 01:11:00.557000'),('6ghy44w3rhqz3fluth75qe4iao8x9d5u','YzVlZDg0MmZiZjkwNzFmMmY1YzdhMDA4ZjMxYjhiZTM4MGQxNTgxZDp7InVzZXJuYW1lIjoiamhoIiwiYWNjb3VudCI6ImpoaCJ9','2016-07-27 22:45:19.776000'),('6n5vz9uv8e7ex9b7rr7oc3yqdp79j778','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-10-12 01:10:48.338000'),('6w5s9wkd1u3qghkvgjtos1n3teg1t89i','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-20 23:46:52.442000'),('78cbc31x3q572dp3k7cx9pfs152hfsom','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-05 04:29:13.942000'),('7e2u7zsvy9xjn8drznnt1v9odnukh1yg','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-09-13 03:32:34.254000'),('7nc5ym1dv35ypya28h3qg1kknmniag8q','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 13:29:03.260000'),('7zbuil5cf0vs7edgteqvyi9oyplb7dja','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-23 04:06:33.410000'),('8er0277lx05gwsysz6joe0bhq5oi9bm5','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-27 00:36:38.892000'),('8mpsjhcb7gajrf9m5qvz0cea36vge7z0','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-27 20:53:46.719000'),('8qokim4p5r6gsapaj7hx8od2zpbmr0hn','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-30 17:17:14.955000'),('95adlg61cklqswir7r71p0an24d8o6sk','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-28 20:17:09.510000'),('ad5tvct215dhiqi4o0sfmeh3myxjx64t','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-06 23:27:59.995000'),('advjwa82ya3bdgp39psktrspjwdy0ocn','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-28 01:17:28.940000'),('agw5sv0j8mzshps3lpl5u2ryi7bqm03c','YzVlZDg0MmZiZjkwNzFmMmY1YzdhMDA4ZjMxYjhiZTM4MGQxNTgxZDp7InVzZXJuYW1lIjoiamhoIiwiYWNjb3VudCI6ImpoaCJ9','2016-07-27 22:20:17.467000'),('ah0g06cxx0sbaxpasin3w6z8cpp5kvgl','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-10 00:15:09.854000'),('arlamnfoiadzkkmn7wtyvbcvfslyqfqj','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-16 23:05:45.914000'),('b081h29as5a4jjxzxhwlkkor6adgd57d','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-28 02:49:27.923000'),('b92s1kut3tl299nsevkrimyapiuj4s39','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-28 22:20:29.842000'),('bfoojazubgw0qbnvpprp6a2348l9zjo0','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-26 01:25:43.079000'),('c4mao59fays7j7xuquu0cdi969jki2tv','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-18 00:58:50.823000'),('cc26bn65ol9badqtjvtm0fn3ivpw5u4n','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-26 03:46:31.891000'),('cl467nv6pzacbdhchiti2ica1y3tr3fm','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-07 01:17:39.057000'),('czoeks8q1t5gu9nwgwc3j7gzjkabiga9','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-13 03:51:29.493000'),('data9b527wrj2237ina9c9pky48l03zm','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-07 01:30:57.390000'),('db0006tftt3n31rx1i8yzltisy705gga','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 22:07:32.447000'),('dhpul5332t37ny2lc5kkjr7ioeahc3eq','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-25 01:14:46.009000'),('dxj9xgtpqz9x89trpmzym8e9z8xvqw5o','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-04 02:25:14.032000'),('e7cq1clqqr5e3te5gl9pdwml6d338n2y','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-04 01:16:39.884000'),('e7e5wix153lzmhiy8l439gtns63m1dj7','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-15 23:59:29.118000'),('eghxhzit2zqaxrkldr900d2jvpif37k1','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-04 04:56:58.637000'),('el2r9tctgm2uv4elmbovw3ujkwud4y9y','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-28 22:22:11.149000'),('eooj5uehkecnifbi8jndvgut7lljnfxb','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-31 17:43:23.230000'),('eycvtqyukkpbo05xc5dzilapgjhrls63','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-01 22:56:48.932000'),('f1690g5zpdwx9rx0gciv85ij6cmzh3u8','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-10-11 03:56:44.394000'),('fehyrb5yh2ko034dckwslrzw1p9xtjlc','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-22 00:32:36.098000'),('fr4evg0u94hq4gcts797hn6wv3h0kvcy','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 13:27:15.506000'),('fwh7nf6ajv87qfx99wiqgfvq0wgpz675','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-20 17:29:39.318000'),('g3y1tctov0wkrdfm37bgac16o5hhtkmx','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-19 01:41:16.310000'),('g582p874tjpykel3bta3118uotv6n7t4','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-28 22:45:41.469000'),('gp1bkjcq3i73dv655ilap3hqvww4i368','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-28 20:27:13.401000'),('gur6eyp044i74eh17nq79uqw8f8ydcup','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-31 01:22:07.240000'),('hvnt7i18ayilz2dvzljq46n6daua29ib','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-31 01:04:18.078000'),('i47nvdcogjecf2arjfhf0leakb6wfweg','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-28 19:47:31.145000'),('i68y00pfu84p6h9pta8f9mla7yvg9oi6','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-24 01:02:54.778000'),('j3uwa51elrdcw7orkrnhawdnk6jeh89w','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-30 04:08:48.598000'),('jgqij3tbps32no6hjlbfpzvxwroigm31','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-01 01:47:28.866000'),('jl6ez56zy3h3h9u4rkrztv4qrlf72ulk','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-28 19:51:03.285000'),('jmmrd77ijrzwynrnm8yyf6svf37c3mmx','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-26 04:16:34.935000'),('k1f12recc78jyhhq4zxf2opshbt4stsy','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 13:38:22.875000'),('kab33zpmvk00sbpchpngqchixbgx7eja','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-04 23:45:33.922000'),('kgewz79u3kl0x4j02zlw3gntwyww14ri','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-07-30 23:21:48.451000'),('kgr9zrdvliddjgqsbn6jm5phabc8qh77','OWExNGVlOTJkY2RmOTdlZTgzYzY5NGFhMWE5NTFkNGEyMzY4YjA4Zjp7fQ==','2016-09-16 04:47:57.979000'),('kqd3stvdwzh28p01lj4v628bsa9ngssp','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-29 02:24:13.985000'),('l69rdpphqiss2ntbmc8im603l65tnyxg','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-26 01:26:45.027000'),('ll4zfg4uleev70ge46o6o66cayzlt82y','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-05 00:44:26.871000'),('manfy69dxtd7fpy56chjpw9zpyoo1fqv','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 21:42:18.887000'),('ms5feqaa785y0cbaor99smz66wiopxdb','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-26 02:08:47.745000'),('mto84leosgy6z3hhez1mjyo8jqj4ud0a','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-30 14:03:41.173000'),('nbgv9m1g56qye317v04pxmsn85frdmbx','OWExNGVlOTJkY2RmOTdlZTgzYzY5NGFhMWE5NTFkNGEyMzY4YjA4Zjp7fQ==','2016-08-01 01:59:31.914000'),('nhxpli34sozepjpkvzeoytxon2pkhtaz','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 22:36:36.532000'),('nt5cgv04phcn0keljydrjmhlp2e0ntae','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-09-06 00:48:42.381000'),('oaoa5p70l8ue4ztsg2ds1wlxbdrjmt4z','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-27 15:59:21.329000'),('oxm047hqfef8bb887dxvmo13dge2bbph','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-30 01:07:53.795000'),('p72w11n7qhlk92yzri68a2aaiqi7gmab','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-31 02:28:00.636000'),('pku8imgauyhrl6tgp5fxkp9iwx7fru7l','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-31 14:42:59.864000'),('pspsyoisxwne7v20wydwulgq2nenlc3z','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-13 03:29:48.209000'),('pxa96ztis4d76707gpyeh9kxf50mwjfx','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-18 22:33:33.231000'),('q38s8d947sbpa0rc1hfn1ba1isbdlmae','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-21 19:30:55.218000'),('qqrwrtk0i81bnxzwea2axph77rotncrk','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-03 22:15:26.883000'),('r88csvs346nyiw3z89kvcsgs9cel24hs','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-30 02:34:55.302000'),('rcha2bm6gfya6z2axtp6ixgr5otmij5c','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-26 15:10:02.993000'),('rczpipxz3bbftygyr5x9zbgcob44d1mg','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-08 23:16:27.972000'),('rkuwu7efwywum3p3uub1kj9a2zkflof3','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-16 01:45:52.077000'),('rt4ivlbnno3vsuhlm0b6jnkgm67v13wv','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-08 00:24:53.312000'),('ry9obtgrq0kr2u7im880l6wmmuyps7kw','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-10-10 03:13:03.153000'),('swmbih6nhqomogak9kkcceysm5ephu28','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-08 00:14:17.615000'),('t7dl5khj9x9mi12m26wbukfw2ymk1xt5','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-28 19:54:48.534000'),('tqwenczpekj2qw5ww96pgo3g39ao1qfi','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 13:32:45.445000'),('tvj4z8rxvirn26izllb791odx2fpli3c','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-02 00:49:08.116000'),('u49uhzjqfse8yrc41yllr2a8cpm6y6yy','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-28 22:06:45.511000'),('uayoabrvjem64s9alswml6d0gprlxa33','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-06 00:19:15.497000'),('uccubtxtswliai08zpo9jffxrumzb0uc','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 22:15:22.380000'),('uquzjkik9rrpi18q5z19kb4p98o3xj49','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-09-13 03:43:59.212000'),('ux086xibkl1ibyfq2q45mxw7m8c865ri','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-26 01:25:43.060000'),('uy550ua5i3b7chbe79ou3w598nlyiw2c','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-27 15:53:25.530000'),('v3ph78f2cstbpk69bt9gt6tinmoana5n','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-25 05:18:51.911000'),('vr1wd40dsd8yp9ijykqpk4pscadc3ko7','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-15 22:44:45.038000'),('vu0lx3eos40n0i1wu646sedl1ax5arfp','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-13 03:29:07.353000'),('vuwlmeb143ksdyqiecl0m1spi51wgu7t','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-07 23:37:18.744000'),('wxv08tzvvsq0dqju24igxl1g52yld4mg','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 22:53:54.886000'),('x7d783od46qmvd7n5ib7lv5rxgswk84p','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-07-27 22:51:35.452000'),('xjygti1plfpuvxo9o8ivedoxngbllfaz','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-03 00:35:06.232000'),('xmkqrbi72iespbouhx9whzuv2189cf8r','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-10-11 01:40:44.043000'),('ydy3ppsizkpg5cpbk00vyzajeq0xlc59','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-21 20:11:22.753000'),('yeumndlsclnjntpxbdpredgyq1zrwv98','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-19 02:30:50.903000'),('yf13qc5gmm3qqknykoq4f47l2dg873a4','NGJlMmUyZTllOWU0ZjkyZTRhN2MzZGQ1MzU0MDc3MTJhM2JkNjg3MTp7InVzZXJuYW1lIjoiXHU1OWRjXHU2ZDc3XHU2ZDY5IiwiYWNjb3VudCI6ImpoaCJ9','2016-08-17 02:07:38.875000'),('yy0pvebzakgb6zuxct5dtbsz6igmm22e','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-05 03:13:12.084000'),('zj1mj9q3urdtubkniv29n4rcuxewusxg','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-04 19:34:26.118000'),('zn1gmguezm2dx5erx2eg4xsoayag75jd','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-08-20 02:46:48.112000'),('znchyiknyogm6krwzkuuim4q3kkfeilj','MDAyMTQzZjI1YTYxYzg1M2E1ODY3YjEyZWQ0ZTA4YzUwNWI3MDY0OTp7InVzZXJuYW1lIjoiXHU3YmExXHU3NDA2XHU1NDU4IiwiYWNjb3VudCI6ImFkbWluIn0=','2016-09-16 01:42:17.624000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_assets`
--

DROP TABLE IF EXISTS `t_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ass_id` varchar(20) NOT NULL,
  `ass_name` varchar(30) NOT NULL,
  `ass_brand` varchar(30) NOT NULL,
  `ass_model` varchar(50) NOT NULL,
  `ass_configuration` varchar(100) DEFAULT NULL,
  `ass_category` varchar(20) DEFAULT NULL,
  `ass_secret` int(11) NOT NULL,
  `ass_quantity` int(11) NOT NULL,
  `ass_price` decimal(10,2) NOT NULL,
  `ass_buyDate` date DEFAULT NULL,
  `ass_period` varchar(5) DEFAULT NULL,
  `ass_provider` varchar(50) DEFAULT NULL,
  `ass_acceptDept` varchar(20) DEFAULT NULL,
  `ass_acceptUser` varchar(10),
  `ass_user` varchar(10),
  `ass_acceptDate` datetime(6) DEFAULT NULL,
  `ass_isLabel` int(11) NOT NULL,
  `ass_location` varchar(20) DEFAULT NULL,
  `ass_operator` varchar(10) NOT NULL,
  `ass_operDate` datetime(6) NOT NULL,
  `ass_flag` int(11) NOT NULL,
  `ass_pic` varchar(100) DEFAULT NULL,
  `ass_billPic` varchar(100) DEFAULT NULL,
  `ass_comment` varchar(100) DEFAULT NULL,
  `ass_enabled` int(11) NOT NULL,
  `ass_acceptDeadline` int(11),
  `ass_SN` varchar(20),
  `ass_class` varchar(20),
  `ass_archiveNO` varchar(50),
  PRIMARY KEY (`id`),
  UNIQUE KEY `ass_id` (`ass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_assets`
--

LOCK TABLES `t_assets` WRITE;
/*!40000 ALTER TABLE `t_assets` DISABLE KEYS */;
INSERT INTO `t_assets` VALUES (56,'01.03.001.02','工控机','','无型号','','',0,1,0.00,NULL,'','','行政部','姜海浩','姜海浩','2016-09-07 00:00:00.000000',0,'三楼','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(57,'01.03.001.03','工控机','','无型号','','',0,1,0.00,NULL,'','','','','',NULL,0,'三楼仓库','admin','2016-08-24 00:00:00.000000',2,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(58,'01.03.002.01','台式电脑','','Dell V260G','','',0,1,0.00,NULL,'','','国瑞信安','测试用户2','测试用户2','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(59,'01.03.002.03','台式电脑','','DELL 380','','',0,1,0.00,NULL,'','','','','','2016-08-29 00:00:00.000000',0,'三楼','admin','2016-08-24 00:00:00.000000',2,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(60,'01.03.002.04','台式电脑','','DELL 390','','',0,1,0.00,NULL,'','','行政部','1','1','2016-10-11 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(61,'01.03.002.05','台式电脑','','Dell 390','','',0,1,0.00,NULL,'','','1','1','1','2016-09-12 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(62,'01.03.004','笔记本电脑','','Thinkpad E440','','',0,1,0.00,NULL,'','','1','1','1','2016-08-29 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(63,'01.03.007','台式电脑','','DELL 390','','',0,1,0.00,NULL,'','','1','1','1','2016-09-13 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(64,'01.03.008','台式电脑','','组装机 G620/4G/320G','','',0,1,0.00,NULL,'','','jhh','jhh','jhh','2016-08-02 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(65,'01.03.010','台式电脑','','Dell 9020','','',0,1,0.00,NULL,'','','1','1','1','2016-09-01 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(66,'01.03.011','服务器','','DELL R720','','',0,1,0.00,NULL,'','','1','1','1','2016-09-05 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(67,'01.03.012','服务器','','DELL R720','','',0,1,0.00,NULL,'','','2','12','2','2016-08-30 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(68,'01.03.013','服务器','','DELL R710','','',0,1,0.00,NULL,'','','1','1','1','2016-09-07 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(69,'01.03.014','服务器','','DELL R720','','',0,1,0.00,NULL,'','','1','1','1','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(70,'01.03.015.01','台式电脑','','DELL 3020','','',0,1,0.00,NULL,'','','1','1','1','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(71,'01.03.015.02','台式电脑','','DELL V260','','',0,1,0.00,NULL,'','','1','1','1','2016-09-05 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(72,'01.03.015.03','台式电脑','','DELL V260s','','',0,1,0.00,NULL,'','','1','1','1','2016-09-06 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(73,'01.03.015.04','台式电脑','','DELL 390','','',0,1,0.00,NULL,'','','1','1','1','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(74,'01.03.015.05','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','10','1','1','2016-08-30 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(75,'01.03.015.06','台式电脑','','DELL V260','','',0,1,0.00,NULL,'','','后勤部','jhh','jhh','2016-08-30 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(76,'01.03.017','台式电脑','','Dell 380','','',0,1,0.00,NULL,'','','国瑞信安（北京）','q','q','2016-10-04 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(77,'01.03.018','笔记本电脑','','联想 20003','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','冷静',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(78,'01.03.019','笔记本电脑','','E431 2E4','','',0,1,0.00,NULL,'','','公安事业部-技术部','','李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(79,'01.03.020','台式电脑','','DELL 3020','','',0,1,0.00,NULL,'','','公安事业部-技术部','','瞿玲玉',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(80,'01.03.021','笔记本电脑','','联想 E40','','',0,1,0.00,NULL,'','','系统集成事业部-售前','','张俊',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(81,'01.03.022','台式电脑','','DELL 790','','',0,1,0.00,NULL,'','','应用系统事业部','','魏义珍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(82,'01.03.023','台式电脑','','Dell 380MT','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(83,'01.03.024','笔记本电脑','','联想 K20','','',0,1,0.00,NULL,'','','安全云计算事业部','','吴迅',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(84,'01.03.026.03','笔记本电脑','','HP 4431S','','',0,1,0.00,NULL,'','','系统集成部','','金翰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(85,'01.03.027.01','台式电脑','','Dell 380','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(86,'01.03.029.01','台式电脑','','Dell 390','','',0,1,0.00,NULL,'','','行政管理中心','','李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(87,'01.03.029.02','台式电脑','','DELL 3020','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(88,'01.03.031','笔记本电脑','','联想 昭阳E43G','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(89,'01.03.032','台式电脑','','Dell V260','','',0,1,0.00,NULL,'','','商务管理中心','','夏乃淇',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(90,'01.03.033.02','台式电脑','','Dell 3010','','',0,1,0.00,NULL,'','','应用系统事业部','','杨刚',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(91,'01.03.034','台式电脑','','DELL V260','','',0,1,0.00,NULL,'','','行政管理中心','','杨瑞',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(92,'01.03.035','台式电脑','','DELL3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','孙立闯',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(93,'01.03.036.01','台式电脑','','Dell V260','','',0,1,0.00,NULL,'','','财务管理中心','','王静雯',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(94,'01.03.036.02','台式电脑','','联想T4900','','',0,1,0.00,NULL,'','','公安事业部-技术部','','刘苏喆',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(95,'01.03.036.03','台式电脑','','Dell 3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','肖文杰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(96,'01.03.036.04','台式电脑','','Dell 3010','','',0,1,0.00,NULL,'','','应用系统事业部','','张新',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(97,'01.03.036.05','台式电脑','','Dell 3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','魏海发',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(98,'01.03.036.06','台式电脑','','Dell 3010','','',0,1,0.00,NULL,'','','公安事业部','','刘洋',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(99,'01.03.037.01','台式电脑','','DELL 7010','','',0,1,0.00,NULL,'','','应用系统事业部','','陈雨涵',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(100,'01.03.038','笔记本电脑','','联想 E49','','',0,1,0.00,NULL,'','','财务管理中心','','茅伟民',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(101,'01.03.039','台式电脑','','DELL 380','','',0,1,0.00,NULL,'','','人力资源管理中心','','王妍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(102,'01.03.040','台式电脑','','联想启天 W7130','','',0,1,0.00,NULL,'','','财务管理中心','','王静雯',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(103,'01.03.041.01','台式电脑','','\'DELL V260','','',0,1,0.00,NULL,'','','人力资源管理中心','','石笑笑',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(104,'01.03.041.02','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(105,'01.03.042.01','台式电脑','','DELL 380','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(106,'01.03.042.02','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','姜巡',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(107,'01.03.043.01','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','质量管理部','','刘彦杰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(108,'01.03.043.02','台式电脑','','DELL','','',0,1,0.00,NULL,'','','系统集成事业部-售前','','张爱民',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(109,'01.03.045','台式电脑','','dell 3010','','',0,1,0.00,NULL,'','','行政管理中心','','胡政治',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(110,'01.03.047','台式电脑','','dell 380','','',0,1,0.00,NULL,'','','行政管理中心','','杨曼',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(111,'01.03.050.01','笔记本电脑','','IBM 2668','','',0,1,0.00,NULL,'','','系统集成部','','未知',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(112,'01.03.050.02','笔记本电脑','','联想 20003','','',0,1,0.00,NULL,'','','行政管理中心','','杨瑞',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(113,'01.03.051.01','笔记本电脑','','ThinkpadE440','','',0,1,0.00,NULL,'','','公安事业部-技术部','','魏海发',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(114,'01.03.051.02','笔记本电脑','','联想 G50-70M','','',0,1,0.00,NULL,'','','公安事业部-技术部','','孙崎',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(115,'01.03.051.03','笔记本电脑','','联想 E46G','','',0,1,0.00,NULL,'','','总经办','','陈进',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(116,'01.03.052','笔记本电脑','','联想 昭阳E47L','','',0,1,0.00,NULL,'','','人力资源管理中心','','王妍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(117,'01.03.053','台式电脑','','dell V3800','','',0,1,0.00,NULL,'','','应用系统事业部','','李志刚',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(118,'01.03.054.01','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','王宗宁',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(119,'01.03.056','台式电脑','','DELL 380','','',0,1,0.00,NULL,'','','财务管理中心','','马能进',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(120,'01.03.057.01','台式电脑','','DELL 390','','',0,1,0.00,NULL,'','','安全服务部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(121,'01.03.057.02','台式电脑','','DELL 3020','','',0,1,0.00,NULL,'','','公安事业部-技术部','','李伟伟',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(122,'01.03.058','笔记本电脑','','IBM T43','','',0,1,0.00,NULL,'','','司机办公室','','钟信娣',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(123,'01.03.060','台式电脑','','DELL V260','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','李娜',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(124,'01.03.062','工控机','','无型号','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(125,'01.03.063','台式电脑','','dell 390','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','柳乃峰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(126,'01.03.066.01','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','王萍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(127,'01.03.066.02','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','金恺',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(128,'01.03.066.03','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','赵静',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(129,'01.03.066.04','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','应用系统事业部','','吴德峰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(130,'01.03.066.05','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部','','李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(131,'01.03.066.06','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','牟杰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(132,'01.03.066.07','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','财务管理中心','','李宗阳',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(133,'01.03.066.08','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','王嘉璐',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(134,'01.03.066.09','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','李伟伟',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(135,'01.03.066.10','台式电脑','','Dell3010','','',0,1,0.00,NULL,'','','公安事业部-技术部','','邵楚育',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(136,'01.03.066.12','台式电脑','','Dell3020','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','朱文娟',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(137,'01.03.066.13','台式电脑','','dell 3020','','',0,1,0.00,NULL,'','','人力资源部','','王妍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(138,'01.03.066.14','台式电脑','','DELL Vostro 260S','','',0,1,0.00,NULL,'','','商务管理中心','','马婕',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(139,'01.03.066.15','台式电脑','','DELL OPTIPLEX390','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(140,'01.03.066.16','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(141,'01.03.066.17','台式电脑','','组装机 amd/2G','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(142,'01.03.066.18','台式电脑','','DELL D07m','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','李娜',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(143,'01.03.066.20','台式电脑','','DELL 3020','','',0,1,0.00,NULL,'','','应用系统事业部','','袁长春',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(144,'01.03.066.21','台式电脑','','DELL V270s','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(145,'01.03.066.22','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(146,'01.03.132','台式电脑','','DELL 3020','','',0,1,0.00,NULL,'','','公安事业部-技术部','','徐明娟',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(147,'01.03.066.25','台式电脑','','DELL3020','','',0,0,0.00,NULL,'','','应用系统事业部','','张贻杰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(148,'01.03.066.26','台式电脑','','DELL3010','','',0,0,0.00,NULL,'','','应用系统事业部','','周成林',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(149,'01.03.066.27','台式电脑','','DELL 3010','','',0,0,0.00,NULL,'','','应用系统事业部','','刘俊威',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(150,'01.03.066.29','台式电脑','','DELL 7010mt','','',0,0,0.00,NULL,'','','应用系统事业部','','徐星宇',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(151,'01.03.066.30','台式电脑','','DELL 380','','',0,0,0.00,NULL,'','','质量管理部','','刘彦杰',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(152,'01.03.072','笔记本电脑','','HP TPN-F112','','',0,1,0.00,NULL,'','','人力资源','','王研',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(153,'01.03.077.01','台式电脑','','DELL V380','','',0,1,0.00,NULL,'','','公安事业部','','徐佩文',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(154,'01.03.077.02','台式电脑','','DELL V3800','','',0,1,0.00,NULL,'','','行政管理中心','','张雪妮',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(155,'01.03.078','台式电脑','','DELL V260','','',0,1,0.00,NULL,'','','公安事业部-销售部','','陆玉',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(156,'01.03.080','笔记本电脑','','E431','','',0,1,0.00,NULL,'','','公安事业部-技术部','','姜巡',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(157,'01.03.082.01','台式电脑','','dell 3020MT','','',0,1,0.00,NULL,'','','公安事业部-技术部','','郝冬',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(158,'01.03.083','台式电脑','','dell V260','','',0,1,0.00,NULL,'','','财务中心','','朱懿',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(159,'01.03.084','台式电脑','','Dell 390','','',0,1,0.00,NULL,'','','公安事业部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(160,'01.03.085.01','网络交换机','','华为H3C S5500','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(161,'01.03.085.02','网络交换机','','华为 S5700','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(162,'01.03.086.01','服务器','','DELL R720','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(163,'01.03.086.02','服务器','','DELL R720','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(164,'01.03.087','电话交换机','','国威 WS824（50）','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(165,'01.03.088','打印机','','EPSON L1300','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(166,'01.03.090','打印机','','HP 1022','','',0,1,0.00,NULL,'','','商务管理中心','','张燕',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(167,'01.03.091','打印机','','HP P3015','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(168,'01.03.093','网络交换机','','RJS2628','','',0,1,0.00,NULL,'','','安全服务部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(169,'01.03.094','服务器','','DELL R610','','',0,1,0.00,NULL,'','','公安事业部-技术部','','李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(170,'01.03.096','服务器','','深信服 VPN-2050','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(171,'01.03.097','网络交换机','','思科 3550','','',0,1,0.00,NULL,'','','安全服务部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(172,'01.03.098.02','网络交换机','','H3C S5048E','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(173,'01.03.098.03','网络交换机','','锐捷 RG-2052G','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(174,'01.03.100','网络交换机','','华为 S5700','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(175,'01.03.102','服务器','','DELL T410','','',0,1,0.00,NULL,'','','行政管理中心','','李志垚',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(176,'01.03.103','台式电脑','','DELL 3010','','',0,1,0.00,NULL,'','','研发管理中心','','李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(177,'01.03.104','打印机','','HP1106','','',0,1,0.00,NULL,'','','人力资源','','王妍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(178,'01.03.107','网络交换机','','H3C LS-3600V2','','',0,1,0.00,NULL,'','','公安事业部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(179,'01.03.109','网络交换机','','锐捷RG-2052G','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(180,'01.03.111','网络交换机','','S2700-52P-EI','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(181,'01.03.112','网络交换机','','S2700-26TP-EI','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(182,'01.03.113','服务器','','R410','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(183,'01.03.114','服务器','','DELL R720','','',0,1,0.00,NULL,'','','公安事业部','','李伟伟',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(184,'01.03.115','服务器','','HP-DL320G5P','','',0,1,0.00,NULL,'','','应用系统事业部','','郭涛',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(185,'01.03.116','网络交换机','','锐捷 RG-S2052G','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(186,'01.03.117','绿盟漏洞扫描','','RSASNX3-S','','',0,1,0.00,NULL,'','','安全服务部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(187,'01.03.122','天清Web应用安全网关','','天清WAG110','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(188,'01.03.123.01','国瑞防火墙','','工控机','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(189,'01.04.003','Dell存储','','MD38001','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(190,'01.04.007','投影机','','BenQ MP777','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(191,'01.04.009','摄像机','','佳能 HF R328','','',0,1,0.00,NULL,'','','行政管理中心','','杨曼',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(192,'01.04.010','投影机','','松下 PT-U1X68','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(193,'01.04.011','打印机','','HP p1106','','',0,1,0.00,NULL,'','','行政管理中心','','杨曼',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(194,'01.04.012','打印机','','HP CP2025','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(195,'01.04.013','存储器','','fast600','','',0,1,0.00,NULL,'','','安全服务部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(196,'01.04.014','小型机存储','','ibm','','',0,1,0.00,NULL,'','','安全服务部','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(197,'01.04.015','投影机','','三洋','','',0,1,0.00,NULL,'','','行政管理中心','','公共',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(198,'01.04.016','传真机','','松下kx-fl338cn','','',0,1,0.00,NULL,'','','行政管理中心','','杨曼',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(199,'01.04.056.01','电视机','','先锋LED液晶','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(200,'01.04.056.02','电视机','','先锋LED液晶','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(201,'01.04.057','电视机','','创维','','',0,1,0.00,NULL,'','','行政管理中心','','杨瑞',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(202,'01.03.126.01','工控机','','无型号','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(203,'01.03.126.02','工控机','','无型号','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(204,'01.03.133','DELL 服务器','','DELL 720','','',0,1,0.00,NULL,'','','应用系统事业部 ','','郭涛',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(205,'01.03.134','台式机','','组装机 E3-1231V3/16G/1T+2T+250G','','',0,1,0.00,NULL,'','','应用系统事业部 ','','\n袁长春',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(206,'01.03.134.01',' 长城（GreatWall）','','Z2387P IPS触控','','',0,1,0.00,NULL,'','','应用系统事业部 ','','魏义珍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(207,'01.03.134.02','优派（ViewSonic）','','VSD241安卓智能触屏','','',0,1,0.00,NULL,'','','应用系统事业部 ','','\n袁长春',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(208,'01.03.134.03','优派（ViewSonic）','','TD2420触屏','','',0,1,0.00,NULL,'','','应用系统事业部 ','','\n袁长春',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(209,'01.03.135','台式机','','组装机 E3-1231V3/16G/1T+2T+250G','','',0,1,0.00,NULL,'','','应用系统事业部 ','','魏义珍',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(210,'01.03.140','服务器','','DELl R720','','',0,1,0.00,NULL,'','','应用系统事业部 ','','   迟晨光',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(211,'01.03.141.01','台式机','','组装机 i5/16G/2T/GTX750i','','',0,1,0.00,NULL,'','','云事业部','','魏超',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(212,'01.03.142','台式机','','组装机 E3-1231V3/16G/1T','','',0,1,0.00,NULL,'','','公安事业部','','邓小丽',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(213,'01.03.143','台式机','','DELL 3020','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','     李娜',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(214,'01.03.144','台式机','','DELL 3020','','',0,1,0.00,NULL,'','','系统集成事业部-销售','','朱文娟',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(215,'01.03.145','工控机','','无型号','','',0,1,0.00,NULL,'','','公安事业部-技术部','',' 李新升',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(216,'01.03.150','台式电脑','','组装机 i5/16G/2T/GTX750i','','',0,1,0.00,NULL,'','','安全云计算事业部','','朱冰川',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(217,'01.03.151','台式电脑','','DELL 3020MT/G3220','','',0,1,0.00,NULL,'','','公安事业部','','徐仙仙',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(218,'01.03.153','打印机','','HP laserJet Pro 400','','',0,1,0.00,NULL,'','','应用系统事业部','','李治垚',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(219,'01.03.158','台式电脑','','兼容机 G1620/4G/320G','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(220,'01.03.159','台式电脑','','dell 3020MT /i5/8G/1T','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(221,'01.03.160','笔记本','','acer ms2346','','',0,1,0.00,NULL,'','','行政管理中心','','姜海浩',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(222,'01.03.161','台式电脑','','组装机 i5/16G/2T/GTX960/','','',0,1,0.00,NULL,'','','科普云事业部','','崔灿',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(223,'1','1','1','1','','',1,1,1.00,'1990-01-01','0','',NULL,'','',NULL,1,'','admin','2016-08-27 14:44:27.452000',0,'','','',0,0,NULL,NULL,NULL),(224,'11','1','1','1','','',1,1,1.00,'1990-01-01','0','',NULL,'','',NULL,1,'','admin','2016-08-27 20:30:27.036000',0,'','','',0,0,NULL,NULL,NULL),(225,'1111','1','1','1','','',1,1,1.00,'1990-01-01','0','',NULL,'','',NULL,1,'','admin','2016-08-27 20:30:46.622000',0,'','static/billpic/20160827203046622000.jpg','',0,0,NULL,NULL,NULL),(226,'121','12','1','1','','',1,1,1.00,'1990-01-01','0','1',NULL,'','',NULL,1,'','admin','2016-09-02 20:26:50.784000',0,'','','',0,0,NULL,NULL,NULL),(227,'31','31','31','31','','',1,1,1.00,'1990-01-01','0','京东商城',NULL,'','',NULL,1,'','admin','2016-09-02 20:27:44.359000',0,'','','',0,0,NULL,NULL,NULL),(228,'232','2','2','2','','',1,1,1.00,'1990-01-01','0','京东商城','22','22','22','2016-09-03 00:00:00.000000',1,'22222','admin','2016-09-03 15:41:11.055000',1,'','static/billpic/20160903154111055000.jpg','',0,0,NULL,NULL,NULL),(229,'12323','1','1','1','','',1,1,1.00,'1990-01-01','0','京东商城',NULL,'','',NULL,1,'','admin','2016-09-04 20:37:42.767000',0,'','','',0,0,'','',NULL),(230,'tet','1','1','1','','',1,1,1.00,'1990-01-01','0','京东商城',NULL,'','',NULL,1,'','admin','2016-09-15 22:25:07.955000',0,'','static/billpic/20160915222507955000.jpg','',0,0,'','',NULL),(231,'11111','1','戴尔（Dell）','1111','','',1,1,1.00,'1990-01-01','0','京东商城',NULL,'','',NULL,1,'','admin','2016-09-24 23:41:51.038000',0,'','','',0,0,'','',NULL),(232,'qwqw','q','戴尔（Dell）','q','','',1,1,1.00,'1990-01-01','0','京东商城',NULL,'','',NULL,1,'','admin','2016-09-26 22:12:00.487000',0,'','','',0,0,'','',NULL),(233,'qw11','1','戴尔（Dell）','1','','',1,1,0.00,'1990-01-01','0','京东商城',NULL,'','',NULL,1,'','admin','2016-09-26 22:17:01.675000',0,'','','',0,0,'','',NULL);
/*!40000 ALTER TABLE `t_assets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 TRIGGER insertAssetsDetail AFTER INSERT ON t_assets
	FOR EACH ROW
begin
INSERT t_assets_detail(ass_acceptDept,ass_acceptUser,ass_User,ass_location,ass_operator,ass_operDate,ass_flag,ass_comment,ass_id_id,ass_reason,ass_action) 
VALUES(new.ass_acceptDept,new.ass_acceptUser,new.ass_User,new.ass_location,new.ass_operator,new.ass_operDate,new.ass_flag,new.ass_comment,new.id,'首次资产入库记录生成','录入系统');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_assets_detail`
--

DROP TABLE IF EXISTS `t_assets_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_assets_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ass_acceptDept` varchar(20) DEFAULT NULL,
  `ass_acceptUser` varchar(10) DEFAULT NULL,
  `ass_user` varchar(10) DEFAULT NULL,
  `ass_changeDate` date DEFAULT NULL,
  `ass_location` varchar(20) DEFAULT NULL,
  `ass_operator` varchar(10) NOT NULL,
  `ass_operDate` datetime(6),
  `ass_flag` int(11) DEFAULT NULL,
  `ass_comment` varchar(100) DEFAULT NULL,
  `ass_approve` int(11) DEFAULT NULL,
  `ass_id_id` int(11) NOT NULL,
  `ass_reason` varchar(100),
  `ass_action` varchar(20),
  PRIMARY KEY (`id`),
  KEY `assets_detail_ass_id_id_092df565_fk_assets_id` (`ass_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_assets_detail`
--

LOCK TABLES `t_assets_detail` WRITE;
/*!40000 ALTER TABLE `t_assets_detail` DISABLE KEYS */;
INSERT INTO `t_assets_detail` VALUES (79,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,56,'首次资产入库记录生成',NULL),(80,'公安事业部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,57,'首次资产入库记录生成',NULL),(81,'人力资源管理中心','','曾瀛月',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,58,'首次资产入库记录生成',NULL),(82,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,59,'首次资产入库记录生成',NULL),(83,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,60,'首次资产入库记录生成',NULL),(84,'公安事业部-技术部','','黄坤',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,61,'首次资产入库记录生成',NULL),(85,'综合管理部','','刘彦杰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,62,'首次资产入库记录生成',NULL),(86,'安全服务部','','金瀚',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,63,'首次资产入库记录生成',NULL),(87,'商务部','','张燕',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,64,'首次资产入库记录生成',NULL),(88,'应用系统事业部','','张伟申',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,65,'首次资产入库记录生成',NULL),(89,'公安事业部-技术部','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,66,'首次资产入库记录生成',NULL),(90,'应用系统事业部','','郭涛',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,67,'首次资产入库记录生成',NULL),(91,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,68,'首次资产入库记录生成',NULL),(92,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,69,'首次资产入库记录生成',NULL),(93,'公安事业部-技术部','','祁正超',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,70,'首次资产入库记录生成',NULL),(94,'资质部','','祝宁',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,71,'首次资产入库记录生成',NULL),(95,'商务管理中心','','鲁佳丽',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,72,'首次资产入库记录生成',NULL),(96,'保密事业部-技术部','','张新',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,73,'首次资产入库记录生成',NULL),(97,'质量管理部','','戴盼',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,74,'首次资产入库记录生成',NULL),(98,'资质部','','卞巧丽',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,75,'首次资产入库记录生成',NULL),(99,'财务管理中心','','王静雯',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,76,'首次资产入库记录生成',NULL),(100,'系统集成事业部-销售','','冷静',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,77,'首次资产入库记录生成',NULL),(101,'公安事业部-技术部','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,78,'首次资产入库记录生成',NULL),(102,'公安事业部-技术部','','瞿玲玉',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,79,'首次资产入库记录生成',NULL),(103,'系统集成事业部-售前','','张俊',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,80,'首次资产入库记录生成',NULL),(104,'应用系统事业部','','魏义珍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,81,'首次资产入库记录生成',NULL),(105,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,82,'首次资产入库记录生成',NULL),(106,'安全云计算事业部','','吴迅',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,83,'首次资产入库记录生成',NULL),(107,'系统集成部','','金翰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,84,'首次资产入库记录生成',NULL),(108,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,85,'首次资产入库记录生成',NULL),(109,'行政管理中心','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,86,'首次资产入库记录生成',NULL),(110,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,87,'首次资产入库记录生成',NULL),(111,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,88,'首次资产入库记录生成',NULL),(112,'商务管理中心','','夏乃淇',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,89,'首次资产入库记录生成',NULL),(113,'应用系统事业部','','杨刚',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,90,'首次资产入库记录生成',NULL),(114,'行政管理中心','','杨瑞',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,91,'首次资产入库记录生成',NULL),(115,'公安事业部-技术部','','孙立闯',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,92,'首次资产入库记录生成',NULL),(116,'财务管理中心','','王静雯',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,93,'首次资产入库记录生成',NULL),(117,'公安事业部-技术部','','刘苏喆',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,94,'首次资产入库记录生成',NULL),(118,'公安事业部-技术部','','肖文杰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,95,'首次资产入库记录生成',NULL),(119,'应用系统事业部','','张新',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,96,'首次资产入库记录生成',NULL),(120,'公安事业部-技术部','','魏海发',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,97,'首次资产入库记录生成',NULL),(121,'公安事业部','','刘洋',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,98,'首次资产入库记录生成',NULL),(122,'应用系统事业部','','陈雨涵',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,99,'首次资产入库记录生成',NULL),(123,'财务管理中心','','茅伟民',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,100,'首次资产入库记录生成',NULL),(124,'人力资源管理中心','','王妍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,101,'首次资产入库记录生成',NULL),(125,'财务管理中心','','王静雯',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,102,'首次资产入库记录生成',NULL),(126,'人力资源管理中心','','石笑笑',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,103,'首次资产入库记录生成',NULL),(127,'公安事业部-技术部','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,104,'首次资产入库记录生成',NULL),(128,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,105,'首次资产入库记录生成',NULL),(129,'公安事业部-技术部','','姜巡',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,106,'首次资产入库记录生成',NULL),(130,'质量管理部','','刘彦杰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,107,'首次资产入库记录生成',NULL),(131,'系统集成事业部-售前','','张爱民',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,108,'首次资产入库记录生成',NULL),(132,'行政管理中心','','胡政治',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,109,'首次资产入库记录生成',NULL),(133,'行政管理中心','','杨曼',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,110,'首次资产入库记录生成',NULL),(134,'系统集成部','','未知',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,111,'首次资产入库记录生成',NULL),(135,'行政管理中心','','杨瑞',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,112,'首次资产入库记录生成',NULL),(136,'公安事业部-技术部','','魏海发',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,113,'首次资产入库记录生成',NULL),(137,'公安事业部-技术部','','孙崎',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,114,'首次资产入库记录生成',NULL),(138,'总经办','','陈进',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,115,'首次资产入库记录生成',NULL),(139,'人力资源管理中心','','王妍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,116,'首次资产入库记录生成',NULL),(140,'应用系统事业部','','李志刚',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,117,'首次资产入库记录生成',NULL),(141,'公安事业部-技术部','','王宗宁',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,118,'首次资产入库记录生成',NULL),(142,'财务管理中心','','马能进',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,119,'首次资产入库记录生成',NULL),(143,'安全服务部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,120,'首次资产入库记录生成',NULL),(144,'公安事业部-技术部','','李伟伟',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,121,'首次资产入库记录生成',NULL),(145,'司机办公室','','钟信娣',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,122,'首次资产入库记录生成',NULL),(146,'系统集成事业部-销售','','李娜',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,123,'首次资产入库记录生成',NULL),(147,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,124,'首次资产入库记录生成',NULL),(148,'系统集成事业部-销售','','柳乃峰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,125,'首次资产入库记录生成',NULL),(149,'公安事业部-技术部','','王萍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,126,'首次资产入库记录生成',NULL),(150,'公安事业部-技术部','','金恺',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,127,'首次资产入库记录生成',NULL),(151,'公安事业部-技术部','','赵静',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,128,'首次资产入库记录生成',NULL),(152,'应用系统事业部','','吴德峰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,129,'首次资产入库记录生成',NULL),(153,'公安事业部','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,130,'首次资产入库记录生成',NULL),(154,'公安事业部-技术部','','牟杰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,131,'首次资产入库记录生成',NULL),(155,'财务管理中心','','李宗阳',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,132,'首次资产入库记录生成',NULL),(156,'公安事业部-技术部','','王嘉璐',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,133,'首次资产入库记录生成',NULL),(157,'公安事业部-技术部','','李伟伟',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,134,'首次资产入库记录生成',NULL),(158,'公安事业部-技术部','','邵楚育',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,135,'首次资产入库记录生成',NULL),(159,'系统集成事业部-销售','','朱文娟',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,136,'首次资产入库记录生成',NULL),(160,'人力资源部','','王妍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,137,'首次资产入库记录生成',NULL),(161,'商务管理中心','','马婕',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,138,'首次资产入库记录生成',NULL),(162,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,139,'首次资产入库记录生成',NULL),(163,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,140,'首次资产入库记录生成',NULL),(164,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,141,'首次资产入库记录生成',NULL),(165,'系统集成事业部-销售','','李娜',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,142,'首次资产入库记录生成',NULL),(166,'应用系统事业部','','袁长春',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,143,'首次资产入库记录生成',NULL),(167,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,144,'首次资产入库记录生成',NULL),(168,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,145,'首次资产入库记录生成',NULL),(169,'公安事业部-技术部','','徐明娟',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,146,'首次资产入库记录生成',NULL),(170,'应用系统事业部','','张贻杰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,147,'首次资产入库记录生成',NULL),(171,'应用系统事业部','','周成林',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,148,'首次资产入库记录生成',NULL),(172,'应用系统事业部','','刘俊威',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,149,'首次资产入库记录生成',NULL),(173,'应用系统事业部','','徐星宇',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,150,'首次资产入库记录生成',NULL),(174,'质量管理部','','刘彦杰',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,151,'首次资产入库记录生成',NULL),(175,'人力资源','','王研',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,152,'首次资产入库记录生成',NULL),(176,'公安事业部','','徐佩文',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,153,'首次资产入库记录生成',NULL),(177,'行政管理中心','','张雪妮',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,154,'首次资产入库记录生成',NULL),(178,'公安事业部-销售部','','陆玉',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,155,'首次资产入库记录生成',NULL),(179,'公安事业部-技术部','','姜巡',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,156,'首次资产入库记录生成',NULL),(180,'公安事业部-技术部','','郝冬',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,157,'首次资产入库记录生成',NULL),(181,'财务中心','','朱懿',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,158,'首次资产入库记录生成',NULL),(182,'公安事业部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,159,'首次资产入库记录生成',NULL),(183,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,160,'首次资产入库记录生成',NULL),(184,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,161,'首次资产入库记录生成',NULL),(185,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,162,'首次资产入库记录生成',NULL),(186,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,163,'首次资产入库记录生成',NULL),(187,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,164,'首次资产入库记录生成',NULL),(188,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,165,'首次资产入库记录生成',NULL),(189,'商务管理中心','','张燕',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,166,'首次资产入库记录生成',NULL),(190,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,167,'首次资产入库记录生成',NULL),(191,'安全服务部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,168,'首次资产入库记录生成',NULL),(192,'公安事业部-技术部','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,169,'首次资产入库记录生成',NULL),(193,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,170,'首次资产入库记录生成',NULL),(194,'安全服务部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,171,'首次资产入库记录生成',NULL),(195,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,172,'首次资产入库记录生成',NULL),(196,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,173,'首次资产入库记录生成',NULL),(197,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,174,'首次资产入库记录生成',NULL),(198,'行政管理中心','','李志垚',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,175,'首次资产入库记录生成',NULL),(199,'研发管理中心','','李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,176,'首次资产入库记录生成',NULL),(200,'人力资源','','王妍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,177,'首次资产入库记录生成',NULL),(201,'公安事业部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,178,'首次资产入库记录生成',NULL),(202,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,179,'首次资产入库记录生成',NULL),(203,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,180,'首次资产入库记录生成',NULL),(204,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,181,'首次资产入库记录生成',NULL),(205,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,182,'首次资产入库记录生成',NULL),(206,'公安事业部','','李伟伟',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,183,'首次资产入库记录生成',NULL),(207,'应用系统事业部','','郭涛',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,184,'首次资产入库记录生成',NULL),(208,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,185,'首次资产入库记录生成',NULL),(209,'安全服务部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,186,'首次资产入库记录生成',NULL),(210,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,187,'首次资产入库记录生成',NULL),(211,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,188,'首次资产入库记录生成',NULL),(212,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,189,'首次资产入库记录生成',NULL),(213,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,190,'首次资产入库记录生成',NULL),(214,'行政管理中心','','杨曼',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,191,'首次资产入库记录生成',NULL),(215,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,192,'首次资产入库记录生成',NULL),(216,'行政管理中心','','杨曼',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,193,'首次资产入库记录生成',NULL),(217,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,194,'首次资产入库记录生成',NULL),(218,'安全服务部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,195,'首次资产入库记录生成',NULL),(219,'安全服务部','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,196,'首次资产入库记录生成',NULL),(220,'行政管理中心','','公共',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,197,'首次资产入库记录生成',NULL),(221,'行政管理中心','','杨曼',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,198,'首次资产入库记录生成',NULL),(222,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,199,'首次资产入库记录生成',NULL),(223,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,200,'首次资产入库记录生成',NULL),(224,'行政管理中心','','杨瑞',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,201,'首次资产入库记录生成',NULL),(225,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,202,'首次资产入库记录生成',NULL),(226,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,203,'首次资产入库记录生成',NULL),(227,'应用系统事业部 ','','郭涛',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,204,'首次资产入库记录生成',NULL),(228,'应用系统事业部 ','','\n袁长春',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,205,'首次资产入库记录生成',NULL),(229,'应用系统事业部 ','','魏义珍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,206,'首次资产入库记录生成',NULL),(230,'应用系统事业部 ','','\n袁长春',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,207,'首次资产入库记录生成',NULL),(231,'应用系统事业部 ','','\n袁长春',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,208,'首次资产入库记录生成',NULL),(232,'应用系统事业部 ','','魏义珍',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,209,'首次资产入库记录生成',NULL),(233,'应用系统事业部 ','','   迟晨光',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,210,'首次资产入库记录生成',NULL),(234,'云事业部','','魏超',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,211,'首次资产入库记录生成',NULL),(235,'公安事业部','','邓小丽',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,212,'首次资产入库记录生成',NULL),(236,'系统集成事业部-销售','','     李娜',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,213,'首次资产入库记录生成',NULL),(237,'系统集成事业部-销售','','朱文娟',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,214,'首次资产入库记录生成',NULL),(238,'公安事业部-技术部','',' 李新升',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,215,'首次资产入库记录生成',NULL),(239,'安全云计算事业部','','朱冰川',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,216,'首次资产入库记录生成',NULL),(240,'公安事业部','','徐仙仙',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,217,'首次资产入库记录生成',NULL),(241,'应用系统事业部','','李治垚',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,218,'首次资产入库记录生成',NULL),(242,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,219,'首次资产入库记录生成',NULL),(243,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,220,'首次资产入库记录生成',NULL),(244,'行政管理中心','','姜海浩',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,221,'首次资产入库记录生成',NULL),(245,'科普云事业部','','崔灿',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,222,'首次资产入库记录生成',NULL),(246,'行政部','姜海浩','姜海浩','2016-08-24','','admin','2016-08-24 20:17:29.697000',1,'',0,57,'',NULL),(247,'','','姜海浩','2016-08-24','','admin','2016-08-24 20:18:50.267000',0,'',0,57,'',NULL),(248,'1','1','1','2016-08-24','','admin','2016-08-24 20:21:46.177000',1,'',0,57,'',NULL),(249,'','','1','2016-08-24','','admin','2016-08-24 20:23:43.961000',0,'',0,57,'',NULL),(254,'2','2','2','2016-08-24','','admin','2016-08-24 20:41:55.523000',1,'',0,57,'',NULL),(255,'3','3','3','2016-08-25','','admin','2016-08-24 21:06:27.372000',1,'',0,57,'',NULL),(256,'4','3','3','2016-08-26','','admin','2016-08-24 21:18:13.780000',1,'',0,57,'',NULL),(257,'','','3','2016-08-27','','admin','2016-08-24 21:19:56.300000',0,'',0,57,'行政回收',NULL),(258,'1','1','1','2016-08-24','','admin','2016-08-24 21:25:54.903000',1,'',0,56,'',NULL),(259,'1','2','2','2016-08-25','','admin','2016-08-24 21:26:37.988000',1,'',0,56,'',NULL),(260,'1','2','3','2016-08-26','','admin','2016-08-24 21:27:20.405000',1,'',0,56,'',NULL),(264,'2','2','3','2016-08-25','','admin','2016-08-24 21:58:42.810000',1,'',0,56,'',NULL),(265,'2','2','4','2016-08-03','','admin','2016-08-24 21:58:55.653000',1,'',0,56,'',NULL),(266,'2','3','4','2016-08-28','','admin','2016-08-24 21:59:04.496000',1,'',0,56,'',NULL),(267,'','','4','2016-08-06','','admin','2016-08-24 21:59:16.046000',0,'',0,56,'行政回收',NULL),(268,'行政部','姜海浩','姜海浩','2016-08-09',NULL,'admin','2016-08-08 00:00:00.000000',1,NULL,NULL,56,NULL,NULL),(269,NULL,'','',NULL,'','admin','2016-08-27 14:44:27.452000',0,'',NULL,223,'首次资产入库记录生成',NULL),(270,'测试部门','测试用户','测试用户','2016-08-23','','admin','2016-08-27 17:49:31.309000',1,'',0,58,'',NULL),(271,'行政部','姜海浩','姜海浩','2016-08-02','三楼','admin','2016-08-27 18:30:47.893000',1,'',0,56,'',NULL),(272,NULL,'','',NULL,'','admin','2016-08-27 20:30:27.036000',0,'',NULL,224,'首次资产入库记录生成',NULL),(273,NULL,'','',NULL,'','admin','2016-08-27 20:30:46.622000',0,'',NULL,225,'首次资产入库记录生成',NULL),(274,'jhh','jhh','jhh','2016-08-02','','jhh','2016-08-28 17:23:25.132000',1,'',0,64,'',NULL),(275,'jhh','jhh','jhh','2016-09-06','','admin','2016-09-01 23:04:08.743000',1,'',0,64,'',NULL),(276,NULL,'','',NULL,'','admin','2016-09-02 20:26:50.784000',0,'',NULL,226,'首次资产入库记录生成',NULL),(277,NULL,'','',NULL,'','admin','2016-09-02 20:27:44.359000',0,'',NULL,227,'首次资产入库记录生成',NULL),(278,NULL,'','',NULL,'','admin','2016-09-03 15:41:11.055000',0,'',NULL,228,'首次资产入库记录生成','录入系统'),(279,'22','22','22','2016-09-03','','admin','2016-09-03 15:41:31.732000',1,'',0,228,'','领用'),(280,'22','22','22','2016-09-20','2121','admin','2016-09-03 15:48:41.737000',1,'',0,228,'','变更'),(281,'','','','2016-08-29','三楼','admin','2016-09-04 20:28:47.499000',2,'',0,59,'设备损坏，维修成本过高','报废'),(282,NULL,'','',NULL,'','admin','2016-09-04 20:37:42.767000',0,'',NULL,229,'首次资产入库记录生成','录入系统'),(283,'22','22','22','2016-08-29','22222','admin','2016-09-05 21:16:18.400000',1,'',0,228,'','变更'),(284,'1','1','1','2016-08-29','','admin','2016-09-12 22:53:51.407000',1,'',0,62,'','领用'),(285,'行政部','姜海浩','姜海浩','2016-09-05','三楼','admin','2016-09-12 22:54:01.688000',1,'',0,56,'','变更'),(286,'test','testte','test','2016-09-15','','admin','2016-09-15 21:02:09.039000',1,'',0,57,'','领用'),(287,'','','','2016-09-15','三楼仓库','admin','2016-09-15 21:04:29.876000',2,'',0,57,'测试','报废'),(288,NULL,'','',NULL,'','admin','2016-09-15 22:25:07.955000',0,'',NULL,230,'首次资产入库记录生成','录入系统'),(289,'1','1','1','2016-09-13','','admin','2016-09-24 23:18:26.317000',1,'',0,63,'','领用'),(290,NULL,'','',NULL,'','admin','2016-09-24 23:41:51.038000',0,'',NULL,231,'首次资产入库记录生成','录入系统'),(291,'1','1','1','2016-09-01','','admin','2016-09-24 23:52:21.319000',1,'',0,65,'','领用'),(292,'1','1','1','2016-09-05','','admin','2016-09-24 23:55:51.798000',1,'',0,60,'','领用'),(293,'1','1','1','2016-09-12','','admin','2016-09-25 00:01:42.021000',1,'',0,61,'','领用'),(294,'1','1','1','2016-09-05','','admin','2016-09-25 00:05:16.273000',1,'',0,66,'','领用'),(295,'测试部门','测试用户','测试用户','2016-09-06','','admin','2016-09-25 00:07:36.674000',1,'',0,58,'','变更'),(296,'1','1','1','2016-09-07','','admin','2016-09-25 00:08:04.664000',1,'',0,60,'','变更'),(297,'行政部','姜海浩','姜海浩','2016-08-30','三楼','admin','2016-09-25 00:08:27.536000',1,'',0,56,'','变更'),(298,'行政部','姜海浩','姜海浩','2016-09-07','三楼','admin','2016-09-25 00:09:59.604000',1,'',0,56,'','变更'),(299,'行政部','姜海浩','姜海浩','2016-09-14','三楼','admin','2016-09-25 00:19:05.508000',1,'',0,56,'','变更'),(300,'行政部','姜海浩','姜海浩','2016-09-06','三楼','admin','2016-09-25 00:19:10.659000',1,'',0,56,'','变更'),(301,'行政部','姜海浩','姜海浩','2016-08-31','三楼','admin','2016-09-25 00:19:16.278000',1,'',0,56,'','变更'),(302,'测试部门','测试用户','测试用户','2016-09-07','','admin','2016-09-25 00:19:21.664000',1,'',0,58,'','变更'),(303,'1','1','1','2016-09-01','','admin','2016-09-25 00:19:26.802000',1,'',0,63,'','变更'),(304,'行政部','姜海浩','姜海浩','2016-09-07','三楼','admin','2016-09-25 00:19:45.966000',1,'',0,56,'','变更'),(305,'行政部','姜海浩','姜海浩','2016-09-06','三楼','admin','2016-09-25 00:20:20.156000',1,'',0,56,'','变更'),(306,'行政部','姜海浩','姜海浩','2016-08-31','三楼','admin','2016-09-25 00:22:05.461000',1,'',0,56,'','变更'),(307,'行政部','姜海浩','姜海浩','2016-09-06','三楼','admin','2016-09-25 15:57:54.000000',1,'',0,56,'','变更'),(308,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-25 15:59:33.058000',1,'',0,56,'','变更'),(309,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-25 16:00:32.863000',1,'',0,56,'','变更'),(310,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-25 16:03:55.548000',1,'',0,56,'','变更'),(311,'测试部门','测试用户','测试用户','2016-09-01','','admin','2016-09-25 16:06:49.481000',1,'',0,58,'','变更'),(312,'测试部门','测试用户','测试用户','2016-09-01','','admin','2016-09-25 16:08:24.141000',1,'',0,58,'','变更'),(313,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-25 16:12:20.952000',1,'',0,56,'','变更'),(314,'行政部','姜海浩','姜海浩','2016-09-02','三楼','admin','2016-09-25 16:12:25.567000',1,'',0,56,'','变更'),(315,'行政部','姜海浩','姜海浩','2016-09-03','三楼','admin','2016-09-25 16:12:30.379000',1,'',0,56,'','变更'),(316,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-25 16:15:27.100000',1,'',0,56,'','变更'),(317,'行政部','姜海浩','姜海浩','2016-09-02','三楼','admin','2016-09-25 16:15:31.883000',1,'',0,56,'','变更'),(318,'行政部','姜海浩','姜海浩','2016-08-31','三楼','admin','2016-09-25 16:22:35.409000',1,'',0,56,'','变更'),(319,'行政部','姜海浩','姜海浩','2016-09-02','三楼','admin','2016-09-25 16:22:40.688000',1,'',0,56,'','变更'),(320,'行政部','姜海浩','姜海浩','2016-09-02','三楼','admin','2016-09-25 16:24:52.901000',1,'',0,56,'','变更'),(321,'行政部','姜海浩','姜海浩','2016-09-10','三楼','admin','2016-09-25 16:24:57.220000',1,'',0,56,'','变更'),(322,'1','1','1','2016-09-07','','admin','2016-09-25 16:25:07.049000',1,'',0,68,'','领用'),(323,'1','1','1','2016-09-14','','admin','2016-09-25 16:25:14.099000',1,'',0,69,'','领用'),(324,'2','12','2','2016-08-30','','admin','2016-09-25 16:34:33.700000',1,'',0,67,'','领用'),(325,'1','1','1','2016-09-14','','admin','2016-09-25 16:34:41.461000',1,'',0,70,'','领用'),(326,'1','1','1','2016-09-05','','admin','2016-09-25 16:36:24.864000',1,'',0,71,'','领用'),(327,'1','1','1','2016-09-06','','admin','2016-09-25 16:36:32.010000',1,'',0,72,'','领用'),(328,'1','1','1','2016-09-14','','admin','2016-09-25 16:36:59.015000',1,'',0,73,'','领用'),(329,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-25 16:45:14.251000',1,'',0,56,'','变更'),(330,'行政部','姜海浩','姜海浩','2016-09-02','三楼','admin','2016-09-25 22:09:59.729000',1,'',0,56,'','变更'),(331,'行政部','姜海浩','姜海浩','2016-09-03','三楼','admin','2016-09-25 22:10:04.814000',1,'',0,56,'','变更'),(332,'行政部','姜海浩','姜海浩','2016-09-01','三楼','admin','2016-09-26 20:32:57.378000',1,'',0,56,'','变更'),(333,'行政部','姜海浩','姜海浩','2016-09-02','三楼','admin','2016-09-26 20:33:02.615000',1,'',0,56,'','变更'),(334,'10','1','1','2016-08-30','','admin','2016-09-26 20:50:53.172000',1,'',0,74,'','领用'),(335,'后勤部','jhh','jhh','2016-08-30','','admin','2016-09-26 20:54:02.014000',1,'',0,75,'','领用'),(336,'行政部','姜海浩','姜海浩','2016-09-08','三楼','admin','2016-09-26 21:13:33.443000',1,'',0,56,'','变更'),(337,'后勤部','姜海浩','姜海浩','2016-09-08','三楼','admin','2016-09-26 21:13:42.006000',1,'',0,56,'','变更'),(338,'行政部','姜海浩','姜海浩','2016-09-07','三楼','admin','2016-09-26 21:13:53.431000',1,'',0,56,'','变更'),(339,'IT','测试用户','测试用户','2016-09-05','','admin','2016-09-26 22:09:05.823000',1,'',0,58,'','变更'),(340,'IT','测试用户2','测试用户2','2016-09-30','','admin','2016-09-26 22:09:13.395000',1,'',0,58,'','变更'),(341,NULL,'','',NULL,'','admin','2016-09-26 22:12:00.487000',0,'',NULL,232,'首次资产入库记录生成','录入系统'),(342,NULL,'','',NULL,'','admin','2016-09-26 22:17:01.675000',0,'',NULL,233,'首次资产入库记录生成','录入系统'),(343,'后勤部','1','1','2016-09-07','','admin','2016-09-26 22:54:18.840000',1,'',0,60,'','变更'),(344,'国瑞信安','测试用户2','测试用户2','2016-09-14','','admin','2016-09-26 22:54:27.133000',1,'',0,58,'','变更'),(345,'行政部','1','1','2016-10-11','','admin','2016-10-11 21:11:00.042000',1,'',0,60,'','变更'),(346,'国瑞信安（北京）','q','q','2016-10-04','','admin','2016-10-11 21:14:47.176000',1,'',0,76,'','领用');
/*!40000 ALTER TABLE `t_assets_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`127.0.0.1`*/ /*!50003 TRIGGER updateAssets AFTER INSERT ON t_assets_detail
	FOR EACH ROW
BEGIN
set @aa = (SELECT count(ass_id_id) FROM t_assets_detail WHERE ass_id_id=new.ass_id_id);
SELECT ass_acceptDept,ass_acceptUser INTO @acceptdept,@acceptuser FROM t_assets WHERE id=new.ass_id_id;
SET @assets_flag = (SELECT ass_flag FROM t_assets WHERE id=new.ass_id_id);
if @aa > 1 THEN
	IF @assets_flag = 0 THEN
		UPDATE t_assets SET ass_acceptDept=new.ass_acceptDept, ass_acceptUser=new.ass_acceptUser, ass_user=new.ass_user, ass_acceptDate=new.ass_changeDate, ass_location=new.ass_location, ass_flag=new.ass_flag WHERE id=new.ass_id_id;
	ELSE 
		IF @acceptdept = new.ass_acceptDept AND @acceptuser = new.ass_acceptUser THEN
			UPDATE t_assets SET ass_acceptDept=new.ass_acceptDept, ass_acceptUser=new.ass_acceptUser, ass_user=new.ass_user, ass_location=new.ass_location, ass_flag=new.ass_flag WHERE id=new.ass_id_id;
		elseif new.ass_acceptDept = '' AND new.ass_acceptUser = '' THEN
			UPDATE t_assets SET ass_acceptDept=new.ass_acceptDept, ass_acceptUser=new.ass_acceptUser, ass_user=new.ass_user, ass_acceptDate= NULL, ass_location=new.ass_location, ass_flag=new.ass_flag WHERE id=new.ass_id_id;
		ELSE 
			UPDATE t_assets SET ass_acceptDept=new.ass_acceptDept, ass_acceptUser=new.ass_acceptUser, ass_user=new.ass_user, ass_acceptDate=new.ass_changeDate, ass_location=new.ass_location, ass_flag=new.ass_flag WHERE id=new.ass_id_id;
		END IF ;
	END IF ;
END IF ;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_brand`
--

DROP TABLE IF EXISTS `t_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) NOT NULL,
  `brand_order` int(11) DEFAULT NULL,
  `brand_delflag` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_name` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_brand`
--

LOCK TABLES `t_brand` WRITE;
/*!40000 ALTER TABLE `t_brand` DISABLE KEYS */;
INSERT INTO `t_brand` VALUES (1,'戴尔（Dell）',1,0),(2,'宏碁（Acer）',2,0),(3,'联想（Lenovo）',3,0),(4,'联想（Thinkpad）',4,0),(5,'格力（Gree）',5,0),(6,'美的（Midea）',6,0),(7,'TCL',7,0),(8,'其它',100,0);
/*!40000 ALTER TABLE `t_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) NOT NULL,
  `cate_order` int(11) DEFAULT NULL,
  `cate_comment` varchar(100) DEFAULT NULL,
  `cate_delflag` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `cata_name` (`cate_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_department`
--

DROP TABLE IF EXISTS `t_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(20) NOT NULL,
  `dept_parentID` int(11) DEFAULT NULL,
  `dept_order` int(11) DEFAULT NULL,
  `dept_delflag` int(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_department`
--

LOCK TABLES `t_department` WRITE;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` VALUES (1,'国瑞信安',0,NULL,0),(2,'行政部',1,NULL,0),(3,'人事部',1,NULL,0),(4,'采购部',1,NULL,0),(5,'后勤部',2,NULL,0),(10,'IT',1,NULL,0),(11,'国瑞信安（北京）',0,NULL,0),(12,'测试-北京',11,NULL,0),(13,'测试',2,NULL,0),(14,'测试',16,NULL,0),(15,'测试',11,NULL,0),(16,'青岛办事处',11,NULL,0);
/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_log`
--

DROP TABLE IF EXISTS `t_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_content` varchar(50) NOT NULL,
  `log_action` varchar(50) DEFAULT NULL,
  `log_operater` varchar(20) DEFAULT NULL,
  `log_time` datetime(6) NOT NULL,
  `log_IP` char(39) DEFAULT NULL,
  `log_fqdn` varchar(30),
  `log_mac` varchar(20),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_log`
--

LOCK TABLES `t_log` WRITE;
/*!40000 ALTER TABLE `t_log` DISABLE KEYS */;
INSERT INTO `t_log` VALUES (1,'登录','None','','2016-07-27 13:26:15.400000','192.168.1.101','PC-201604171145','005056c00008'),(2,'登录','None','','2016-07-27 13:28:03.236000','192.168.1.101','PC-201604171145','005056c00008'),(3,'登录','None','','2016-07-27 13:31:45.416000','192.168.1.101','PC-201604171145','005056c00008'),(4,'登录成功','登录','','2016-07-27 13:37:22.853000','192.168.1.101','PC-201604171145','005056c00008'),(5,'登录成功','登录','','2016-07-27 21:41:18.837000','192.168.1.101','PC-201604171145','005056c00008'),(6,'用户名或密码错误','登录','','2016-07-27 21:49:30.805000','192.168.1.101','PC-201604171145','005056c00008'),(7,'用户名或密码错误','登录','','2016-07-27 21:49:36.479000','192.168.1.101','PC-201604171145','005056c00008'),(8,'登录成功','登录','','2016-07-27 22:06:32.424000','192.168.1.101','PC-201604171145','005056c00008'),(9,'登录成功','登录','admin','2016-07-27 22:14:22.152000','192.168.1.101','PC-201604171145','005056c00008'),(10,'用户名或密码错误','登录','admin','2016-07-27 22:16:02.093000','192.168.1.101','PC-201604171145','005056c00008'),(11,'用户名或密码错误','登录','admin','2016-07-27 22:16:54.246000','192.168.1.101','PC-201604171145','005056c00008'),(12,'登录成功','登录','jhh','2016-07-27 22:19:17.454000','192.168.1.101','PC-201604171145','005056c00008'),(13,'用户名或密码错误','登录','jhh','2016-07-27 22:19:57.544000','192.168.1.101','PC-201604171145','005056c00008'),(14,'用户名或密码错误','登录','jhh','2016-07-27 22:20:16.416000','192.168.1.101','PC-201604171145','005056c00008'),(15,'用户名或密码错误','登录','jhh','2016-07-27 22:20:30.968000','192.168.1.101','PC-201604171145','005056c00008'),(16,'登录成功','登录','admin','2016-07-27 22:35:04.252000','192.168.1.101','PC-201604171145','005056c00008'),(17,'登录成功','登录','admin','2016-07-27 22:35:36.503000','192.168.1.101','PC-201604171145','005056c00008'),(18,'登录成功','登录','jhh','2016-07-27 22:44:19.731000','192.168.1.101','PC-201604171145','005056c00008'),(19,'登录成功','登录','admin','2016-07-27 22:50:35.415000','192.168.1.101','PC-201604171145','005056c00008'),(20,'登录成功','登录','admin','2016-07-27 22:52:54.855000','192.168.1.101','PC-201604171145','005056c00008'),(21,'登录成功','登录','jhh','2016-07-27 23:05:56.629000','192.168.1.101','PC-201604171145','005056c00008'),(22,'登录成功','登录','admin','2016-07-28 19:46:31.011000','192.168.1.101','PC-201604171145','005056c00008'),(23,'登录成功','登录','admin','2016-07-28 19:50:03.255000','192.168.1.101','PC-201604171145','005056c00008'),(24,'登录成功','登录','admin','2016-07-28 19:53:48.503000','192.168.1.101','PC-201604171145','005056c00008'),(25,'登录成功','登录','jhh','2016-07-28 19:58:52.846000','192.168.1.101','PC-201604171145','005056c00008'),(26,'登录成功','登录','admin','2016-07-28 20:16:09.437000','192.168.1.101','PC-201604171145','005056c00008'),(27,'登录成功','登录','admin','2016-07-28 20:26:13.369000','192.168.1.101','PC-201604171145','005056c00008'),(28,'登录成功','登录','admin','2016-07-28 20:29:16.240000','192.168.1.101','PC-201604171145','005056c00008'),(29,'登录成功','登录','admin','2016-07-29 22:07:53.656000','192.168.1.100','PC-201604171145','005056c00008'),(30,'登录成功','登录','admin','2016-07-30 11:03:41.146000','192.168.1.100','PC-201604171145','005056c00008'),(31,'登录成功','登录','admin','2016-07-30 14:17:14.848000','192.168.1.100','PC-201604171145','005056c00008'),(32,'登录成功','登录','admin','2016-07-30 17:18:34.286000','192.168.1.100','PC-201604171145','005056c00008'),(33,'登录成功','登录','jhh','2016-07-30 18:50:13.760000','192.168.1.100','PC-201604171145','005056c00008'),(34,'登录成功','登录','jhh','2016-07-30 18:52:14.121000','192.168.1.100','PC-201604171145','005056c00008'),(35,'登录成功','登录','admin','2016-07-30 19:08:50.515000','192.168.1.100','PC-201604171145','005056c00008'),(36,'登录成功','登录','admin','2016-07-30 19:28:17.874000','192.168.1.100','PC-201604171145','005056c00008'),(37,'登录成功','登录','admin','2016-07-30 19:46:08.789000','192.168.1.100','PC-201604171145','005056c00008'),(38,'登录成功','登录','admin','2016-07-30 20:21:08.847000','192.168.1.100','PC-201604171145','005056c00008'),(39,'登录成功','登录','admin','2016-07-30 20:21:23.583000','192.168.1.100','PC-201604171145','005056c00008'),(40,'登录成功','登录','jhh','2016-07-30 20:21:48.397000','192.168.1.100','PC-201604171145','005056c00008'),(41,'登录成功','登录','admin','2016-07-30 22:04:17.916000','192.168.1.100','PC-201604171145','005056c00008'),(42,'登录成功','登录','admin','2016-07-30 22:04:52.821000','192.168.1.100','PC-201604171145','005056c00008'),(43,'登录成功','登录','admin','2016-07-30 22:22:07.189000','192.168.1.100','PC-201604171145','005056c00008'),(44,'登录成功','登录','admin','2016-07-30 23:28:00.601000','192.168.1.100','PC-201604171145','005056c00008'),(45,'登录成功','登录','admin','2016-07-31 11:42:59.833000','192.168.1.100','PC-201604171145','005056c00008'),(46,'登录成功','登录','admin','2016-07-31 14:43:23.187000','192.168.1.100','PC-201604171145','005056c00008'),(47,'登录成功','登录','admin','2016-07-31 20:19:14.670000','192.168.1.100','PC-201604171145','005056c00008'),(48,'登录成功','登录','admin','2016-07-31 21:35:10.257000','192.168.1.100','PC-201604171145','005056c00008'),(49,'登录成功','登录','admin','2016-07-31 21:35:36.043000','192.168.1.100','PC-201604171145','005056c00008'),(50,'登录成功','登录','admin','2016-07-31 22:24:38.605000','192.168.1.100','PC-201604171145','005056c00008'),(51,'登录成功','登录','admin','2016-07-31 22:42:11.004000','192.168.1.100','PC-201604171145','005056c00008'),(52,'登录成功','登录','admin','2016-07-31 22:47:28.816000','192.168.1.100','PC-201604171145','005056c00008'),(53,'登录成功','登录','admin','2016-08-01 19:56:48.829000','192.168.1.100','PC-201604171145','005056c00008'),(54,'登录成功','登录','admin','2016-08-01 23:00:38.198000','192.168.1.100','PC-201604171145','005056c00008'),(55,'登录成功','登录','admin','2016-08-02 20:24:16.824000','192.168.1.101','PC-201604171145','005056c00008'),(56,'登录成功','登录','jhh','2016-08-02 21:35:05.763000','192.168.1.101','PC-201604171145','005056c00008'),(57,'登录成功','登录','jhh','2016-08-03 19:15:26.822000','192.168.1.101','PC-201604171145','005056c00008'),(58,'登录成功','登录','admin','2016-08-03 22:16:39.711000','192.168.1.101','PC-201604171145','005056c00008'),(59,'登录成功','登录','admin','2016-08-04 20:45:33.887000','192.168.1.102','PC-201604171145','005056c00008'),(60,'登录成功','登录','admin','2016-08-04 21:44:26.835000','192.168.1.102','PC-201604171145','005056c00008'),(61,'登录成功','登录','jhh','2016-08-06 20:27:59.923000','192.168.1.101','PC-201604171145','005056c00008'),(62,'登录成功','登录','jhh','2016-08-06 22:17:38.979000','192.168.1.101','PC-201604171145','005056c00008'),(63,'登录成功','登录','admin','2016-08-06 22:18:14.401000','192.168.1.101','PC-201604171145','005056c00008'),(64,'登录成功','登录','admin','2016-08-06 22:30:57.309000','192.168.1.101','PC-201604171145','005056c00008'),(65,'登录成功','登录','admin','2016-08-07 17:37:02.417000','192.168.1.102','PC-201604171145','005056c00008'),(66,'登录成功','登录','admin','2016-08-07 20:37:18.711000','192.168.1.102','PC-201604171145','005056c00008'),(67,'登录成功','登录','admin','2016-08-07 21:14:17.527000','192.168.1.102','PC-201604171145','005056c00008'),(68,'登录成功','登录','jhh','2016-08-07 21:24:53.288000','192.168.1.102','PC-201604171145','005056c00008'),(69,'登录成功','登录','admin','2016-08-08 20:16:27.911000','192.168.1.102','PC-201604171145','005056c00008'),(70,'登录成功','登录','admin','2016-08-09 21:15:09.813000','192.168.1.102','PC-201604171145','005056c00008'),(71,'登录成功','登录','admin','2016-08-15 19:44:44.978000','192.168.1.101','PC-201604171145','005056c00008'),(72,'登录成功','登录','jhh','2016-08-15 22:45:51.975000','192.168.1.101','PC-201604171145','005056c00008'),(73,'登录成功','登录','admin','2016-08-16 20:05:45.854000','192.168.1.102','PC-201604171145','005056c00008'),(74,'登录成功','登录','jhh','2016-08-16 23:07:38.836000','192.168.1.102','PC-201604171145','005056c00008'),(75,'登录成功','登录','jhh','2016-08-17 21:58:50.763000','192.168.1.104','PC-201604171145','005056c00008'),(76,'登录成功','登录','jhh','2016-08-18 19:33:33.160000','192.168.1.102','PC-201604171145','005056c00008'),(77,'登录成功','登录','admin','2016-08-18 22:41:16.151000','192.168.1.102','PC-201604171145','005056c00008'),(78,'登录成功','登录','admin','2016-08-18 22:41:16.287000','192.168.1.102','PC-201604171145','005056c00008'),(79,'登录成功','登录','jhh','2016-08-18 23:30:50.873000','192.168.1.102','PC-201604171145','005056c00008'),(80,'登录成功','登录','admin','2016-08-19 21:20:48.557000','192.168.1.101','PC-201604171145','005056c00008'),(81,'登录成功','登录','admin','2016-08-19 21:46:48.069000','192.168.1.101','PC-201604171145','005056c00008'),(82,'登录成功','登录','jhh','2016-08-20 12:15:35.252000','192.168.1.101','PC-201604171145','005056c00008'),(83,'登录成功','登录','admin','2016-08-20 12:29:39.281000','192.168.1.101','PC-201604171145','005056c00008'),(84,'登录成功','登录','jhh','2016-08-20 14:37:23.237000','192.168.1.101','PC-201604171145','005056c00008'),(85,'登录成功','登录','admin','2016-08-20 18:44:02.836000','192.168.1.101','PC-201604171145','005056c00008'),(86,'登录成功','登录','admin','2016-08-20 18:46:52.419000','192.168.1.101','PC-201604171145','005056c00008'),(87,'登录成功','登录','jhh','2016-08-20 23:45:11.389000','192.168.1.100','PC-201604171145','005056c00008'),(88,'登录成功','登录','jhh','2016-08-21 14:30:54.804000','192.168.1.100','PC-201604171145','005056c00008'),(89,'登录成功','登录','admin','2016-08-21 14:59:26.763000','192.168.1.100','PC-201604171145','005056c00008'),(90,'登录成功','登录','admin','2016-08-21 15:04:17.293000','192.168.1.100','PC-201604171145','005056c00008'),(91,'登录成功','登录','admin','2016-08-21 15:11:22.687000','192.168.1.100','PC-201604171145','005056c00008'),(92,'登录成功','登录','jhh','2016-08-21 19:32:36.008000','192.168.1.100','PC-201604171145','005056c00008'),(93,'登录成功','登录','admin','2016-08-21 21:01:55.095000','192.168.198.1','PC-201604171145','005056c00008'),(94,'登录成功','登录','admin','2016-08-22 20:11:00.045000','192.168.1.103','PC-201604171145','005056c00008'),(95,'登录成功','登录','jhh','2016-08-22 23:06:33.380000','192.168.1.103','PC-201604171145','005056c00008'),(96,'登录成功','登录','jhh','2016-08-23 19:51:51.838000','192.168.1.100','PC-201604171145','005056c00008'),(97,'登录成功','登录','admin','2016-08-23 20:02:54.597000','192.168.1.100','PC-201604171145','005056c00008'),(98,'登录成功','登录','admin','2016-08-24 20:14:45.976000','192.168.1.102','PC-201604171145','005056c00008'),(99,'登录成功','登录','admin','2016-08-25 19:55:52.718000','192.168.1.102','PC-201604171145','005056c00008'),(100,'登录成功','登录','jhh','2016-08-25 20:25:42.973000','192.168.1.102','PC-201604171145','005056c00008'),(101,'登录成功','登录','jhh','2016-08-25 20:25:43.030000','192.168.1.102','PC-201604171145','005056c00008'),(102,'登录成功','登录','admin','2016-08-25 20:26:45.001000','192.168.1.102','PC-201604171145','005056c00008'),(103,'登录成功','登录','admin','2016-08-26 19:36:38.820000','192.168.1.100','PC-201604171145','005056c00008'),(104,'登录成功','登录','admin','2016-08-26 21:45:47.504000','192.168.1.100','PC-201604171145','005056c00008'),(105,'登录成功','登录','admin','2016-08-27 10:34:23.885000','192.168.1.100','PC-201604171145','a87439a77e2f'),(106,'登录成功','登录','admin','2016-08-27 10:53:25.491000','192.168.1.100','PC-201604171145','a87439a77e2f'),(107,'登录成功','登录','jhh','2016-08-27 10:59:21.262000','192.168.1.100','PC-201604171145','a87439a77e2f'),(108,'登录成功','登录','admin','2016-08-27 15:53:46.677000','192.168.1.100','PC-201604171145','a87439a77e2f'),(109,'登录成功','登录','jhh','2016-08-27 20:16:26.989000','192.168.1.100','PC-201604171145','a87439a77e2f'),(110,'登录成功','登录','jhh','2016-08-27 20:17:28.852000','192.168.1.100','PC-201604171145','a87439a77e2f'),(111,'登录成功','登录','admin','2016-08-28 17:06:45.149000','192.168.1.102','PC-201604171145','a87439a77e2f'),(112,'登录成功','登录','jhh','2016-08-28 17:20:29.669000','192.168.1.102','PC-201604171145','a87439a77e2f'),(113,'登录成功','登录','jhh','2016-08-28 17:22:11.093000','192.168.1.102','PC-201604171145','a87439a77e2f'),(114,'登录成功','登录','jhh','2016-08-28 17:45:41.365000','192.168.1.102','PC-201604171145','a87439a77e2f'),(115,'登录成功','登录','jhh','2016-08-29 22:59:52.108000','192.168.1.103','PC-201604171145','005056c00008'),(116,'登录成功','登录','jhh','2016-08-29 23:08:48.570000','192.168.1.103','PC-201604171145','005056c00008'),(117,'登录成功','登录','jhh','2016-09-01 19:46:22.727000','192.168.1.102','PC-201604171145','005056c00008'),(118,'登录成功','登录','admin','2016-09-01 19:49:08.083000','192.168.1.102','PC-201604171145','005056c00008'),(119,'登录成功','登录','jhh','2016-09-02 20:25:59.162000','192.168.1.102','PC-201604171145','005056c00008'),(120,'登录成功','登录','admin','2016-09-02 20:26:09.564000','192.168.1.102','PC-201604171145','005056c00008'),(121,'登录成功','登录','admin','2016-09-03 15:27:11.041000','192.168.1.100','PC-201604171145','005056c00008'),(122,'登录成功','登录','admin','2016-09-03 16:55:50.710000','192.168.1.100','PC-201604171145','005056c00008'),(123,'登录成功','登录','admin','2016-09-03 21:25:14.001000','192.168.1.100','PC-201604171145','005056c00008'),(124,'登录成功','登录','admin','2016-09-03 21:25:57.039000','192.168.1.100','PC-201604171145','005056c00008'),(125,'登录成功','登录','admin','2016-09-03 23:56:58.524000','192.168.1.100','PC-201604171145','005056c00008'),(126,'登录成功','登录','admin','2016-09-04 14:34:26.018000','192.168.1.100','PC-201604171145','005056c00008'),(127,'登录成功','登录','admin','2016-09-04 19:54:50.847000','192.168.198.1','PC-201604171145','005056c00008'),(128,'登录成功','登录','jhh','2016-09-04 21:21:12.788000','192.168.1.101','PC-201604171145','005056c00008'),(129,'登录成功','登录','admin','2016-09-04 22:13:11.936000','192.168.1.101','PC-201604171145','005056c00008'),(130,'登录成功','登录','admin','2016-09-04 23:29:13.874000','192.168.1.101','PC-201604171145','005056c00008'),(131,'登录成功','登录','admin','2016-09-05 19:19:15.430000','192.168.1.101','PC-201604171145','005056c00008'),(132,'登录成功','登录','admin','2016-09-05 19:20:38.058000','192.168.1.101','PC-201604171145','005056c00008'),(133,'登录成功','登录','jhh','2016-09-05 19:48:42.355000','192.168.1.101','PC-201604171145','005056c00008'),(134,'登录成功','登录','admin','2016-09-12 22:27:40.289000','192.168.1.103','PC-201604171145','005056c00008'),(135,'登录成功','登录','admin','2016-09-12 22:29:07.318000','192.168.1.103','PC-201604171145','005056c00008'),(136,'登录成功','登录','admin','2016-09-12 22:29:48.183000','192.168.1.103','PC-201604171145','005056c00008'),(137,'登录成功','登录','jhh','2016-09-12 22:32:34.208000','192.168.1.103','PC-201604171145','005056c00008'),(138,'登录成功','登录','jhh','2016-09-12 22:43:29.052000','192.168.1.103','PC-201604171145','005056c00008'),(139,'登录成功','登录','jhh','2016-09-12 22:43:59.188000','192.168.1.103','PC-201604171145','005056c00008'),(140,'登录成功','登录','jhh','2016-09-12 22:50:49.120000','192.168.1.103','PC-201604171145','005056c00008'),(141,'登录成功','登录','admin','2016-09-12 22:51:29.423000','192.168.1.103','PC-201604171145','005056c00008'),(142,'登录成功','登录','admin','2016-09-15 18:59:29.012000','192.168.1.103','PC-201604171145','005056c00008'),(143,'登录成功','登录','admin','2016-09-15 20:33:15.876000','192.168.1.103','PC-201604171145','005056c00008'),(144,'登录成功','登录','admin','2016-09-15 20:42:17.546000','192.168.1.103','PC-201604171145','005056c00008'),(145,'登录成功','登录','admin','2016-09-15 20:48:35.234000','192.168.1.103','PC-201604171145','005056c00008'),(146,'登录成功','登录','admin','2016-09-15 22:23:51.966000','192.168.1.103','PC-201604171145','005056c00008'),(147,'登录','None','admin','2016-09-15 23:43:14.049000','192.168.1.103','PC-201604171145','005056c00008'),(148,'登录','None','admin','2016-09-15 23:44:01.480000','192.168.1.103','PC-201604171145','005056c00008'),(149,'登录','None','jhh','2016-09-15 23:44:17.680000','192.168.1.103','PC-201604171145','005056c00008'),(150,'登录','None','admin','2016-09-24 22:33:30.628000','192.168.1.102','PC-201604171145','005056c00008'),(151,'登录成功','登录','admin','2016-09-25 00:18:51.860000','192.168.1.102','PC-201604171145','005056c00008'),(152,'登录','None','admin','2016-09-25 15:57:35.992000','192.168.1.102','PC-201604171145','005056c00008'),(153,'登录','None','admin','2016-09-25 21:08:47.707000','192.168.1.102','PC-201604171145','005056c00008'),(154,'登录','None','admin','2016-09-25 22:46:31.865000','192.168.1.102','PC-201604171145','005056c00008'),(155,'登录','None','admin','2016-09-25 23:16:34.906000','192.168.1.102','PC-201604171145','005056c00008'),(156,'登录','None','admin','2016-09-26 20:32:46.414000','192.168.1.102','PC-201604171145','005056c00008'),(157,'登录','None','admin','2016-09-27 20:34:26.476000','192.168.1.101','PC-201604171145','005056c00008'),(158,'登录','None','admin','2016-09-27 21:49:27.898000','192.168.1.101','PC-201604171145','005056c00008'),(159,'登录','None','admin','2016-09-28 21:24:13.906000','192.168.1.103','PC-201604171145','005056c00008'),(160,'登录','None','admin','2016-09-29 21:34:55.223000','192.168.1.103','PC-201604171145','005056c00008'),(161,'登录','None','admin','2016-10-09 20:45:52.744000','192.168.1.103','PC-201604171145','005056c00008'),(162,'登录','None','admin','2016-10-09 20:45:53.075000','192.168.1.103','PC-201604171145','005056c00008'),(163,'登录','None','admin','2016-10-09 22:13:03.082000','192.168.198.1','PC-201604171145','005056c00008'),(164,'登录','None','admin','2016-10-10 20:20:39.591000','192.168.198.1','PC-201604171145','005056c00008'),(165,'登录','None','jhh','2016-10-10 20:40:04.059000','192.168.198.1','PC-201604171145','005056c00008'),(166,'登录','None','admin','2016-10-10 20:40:44.019000','192.168.198.1','PC-201604171145','005056c00008'),(167,'登录','None','admin','2016-10-10 22:56:44.337000','192.168.198.1','PC-201604171145','005056c00008'),(168,'登录','None','admin','2016-10-11 20:10:48.259000','192.168.198.1','PC-201604171145','005056c00008');
/*!40000 ALTER TABLE `t_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menus`
--

DROP TABLE IF EXISTS `t_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(30) NOT NULL,
  `m_order` int(11),
  `m_parentID` int(11),
  `m_url` varchar(50),
  `m_delflag` int(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menus`
--

LOCK TABLES `t_menus` WRITE;
/*!40000 ALTER TABLE `t_menus` DISABLE KEYS */;
INSERT INTO `t_menus` VALUES (1,'我的资产',1,0,NULL,0),(2,'我的资产',1,1,'/assets/user/',0),(3,'我的变更',2,1,'/assets/user/change/',0),(4,'资产管理',2,0,NULL,0),(5,'资产查看',1,4,'/assets/query/',0),(6,'资产录入',2,4,'/assets/input/',0),(7,'资产领用',3,4,'/assets/receive/',0),(8,'资产变更',4,4,'/assets/change/',0),(9,'资产报废',6,4,'/assets/scrap/',0),(10,'系统管理',3,0,NULL,0),(11,'用户管理',1,10,'/system/user_man/',0),(12,'部门管理',2,10,'/system/dept_man/',0),(13,'菜单管理',3,10,'/system/menu_man/',0),(14,'角色管理',4,10,'/system/role_man/',0),(15,'字段管理',5,10,'/system/field_man/',0),(16,'数据备份',6,10,'/system/data_backup/',0),(17,'系统日志',5,10,'/system/sys_log/',0),(18,'资产维修',5,4,'/assets/repair/',0);
/*!40000 ALTER TABLE `t_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_position`
--

DROP TABLE IF EXISTS `t_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) NOT NULL,
  `p_order` int(11) DEFAULT NULL,
  `p_delflag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_position`
--

LOCK TABLES `t_position` WRITE;
/*!40000 ALTER TABLE `t_position` DISABLE KEYS */;
INSERT INTO `t_position` VALUES (1,'管理员',1,0),(2,'总经理',2,0),(3,'经理',3,0),(4,'主管',4,0),(5,'员工',5,0);
/*!40000 ALTER TABLE `t_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_providers`
--

DROP TABLE IF EXISTS `t_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_delflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pro_name` (`pro_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_providers`
--

LOCK TABLES `t_providers` WRITE;
/*!40000 ALTER TABLE `t_providers` DISABLE KEYS */;
INSERT INTO `t_providers` VALUES (1,'京东商城',0),(2,'苏宁易购',0),(3,'某某贸易公司',0);
/*!40000 ALTER TABLE `t_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_repair`
--

DROP TABLE IF EXISTS `t_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `re_date` date NOT NULL,
  `re_content` varchar(500) DEFAULT NULL,
  `re_price` decimal(10,2) DEFAULT NULL,
  `re_operator` varchar(10) DEFAULT NULL,
  `ass_id_id` int(11) NOT NULL,
  `re_comment` varchar(100),
  `re_reason` varchar(200),
  PRIMARY KEY (`id`),
  KEY `repair_ass_id_id_4022ca7a_fk_assets_id` (`ass_id_id`),
  CONSTRAINT `repair_ass_id_id_4022ca7a_fk_assets_id` FOREIGN KEY (`ass_id_id`) REFERENCES `t_assets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_repair`
--

LOCK TABLES `t_repair` WRITE;
/*!40000 ALTER TABLE `t_repair` DISABLE KEYS */;
INSERT INTO `t_repair` VALUES (1,'2016-07-07','1111',111.00,'11',56,'11','11'),(2,'2016-09-01','飞',1222.00,'姜海浩',56,'',' 飞'),(3,'2016-09-07','1',0.00,'1',58,'','1'),(4,'2016-09-13','前期',1000.00,'姜海浩',57,'','前期'),(5,'2016-09-13','1',0.00,'1',60,'','1');
/*!40000 ALTER TABLE `t_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_roles`
--

DROP TABLE IF EXISTS `t_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(30) NOT NULL,
  `r_authority` varchar(50) NOT NULL,
  `r_delflag` int(11),
  `r_description` varchar(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `r_name` (`r_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_roles`
--

LOCK TABLES `t_roles` WRITE;
/*!40000 ALTER TABLE `t_roles` DISABLE KEYS */;
INSERT INTO `t_roles` VALUES (1,'管理员组','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18',0,NULL),(2,'行政组','1,2,3',0,NULL),(3,'普通用户组','1',0,NULL);
/*!40000 ALTER TABLE `t_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_account` varchar(20) NOT NULL,
  `u_pwd` varchar(50) NOT NULL,
  `u_userName` varchar(20) NOT NULL,
  `u_dept` varchar(40) DEFAULT NULL,
  `u_position` varchar(20) DEFAULT NULL,
  `u_tel` varchar(15) DEFAULT NULL,
  `u_email` varchar(30) DEFAULT NULL,
  `u_loginChPwd` int(11) NOT NULL,
  `u_enabled` int(11) NOT NULL,
  `u_delflag` int(11) NOT NULL,
  `u_lastLogin` datetime(6) DEFAULT NULL,
  `u_role_id` int(11) DEFAULT NULL,
  `u_lastIP` char(39),
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_account` (`u_account`),
  KEY `t_users_u_role_id_61c72260_fk_t_roles_id` (`u_role_id`),
  CONSTRAINT `t_users_u_role_id_61c72260_fk_t_roles_id` FOREIGN KEY (`u_role_id`) REFERENCES `t_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES (3,'admin','90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad','管理员','系统集成事业部-技术三部','管理员','15200000000','jianghaihao@365sec.com',1,0,0,'2016-10-11 20:10:48.308000',1,'192.168.198.1'),(4,'jhh','7e793d4370206fa005025cb7909f606afc7116c4','姜海浩','系统集成事业部-涉密运维部-技术支持不',NULL,'025-83752968','test@qq.com',0,1,0,'2016-10-10 20:40:04.079000',2,'192.168.198.1'),(6,'user1','7e793d4370206fa005025cb7909f606afc7116c4','1','',NULL,NULL,NULL,0,0,0,NULL,2,NULL),(8,'user2','7e793d4370206fa005025cb7909f606afc7116c4','1','',NULL,NULL,NULL,0,1,0,NULL,2,NULL),(9,'user3','7e793d4370206fa005025cb7909f606afc7116c4','1','',NULL,NULL,NULL,0,0,0,NULL,2,NULL);
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-12 23:33:58
