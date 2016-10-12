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
INSERT INTO `t_assets` VALUES (56,'01.03.001.02','���ػ�','','���ͺ�','','',0,1,0.00,NULL,'','','������','������','������','2016-09-07 00:00:00.000000',0,'��¥','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(57,'01.03.001.03','���ػ�','','���ͺ�','','',0,1,0.00,NULL,'','','','','',NULL,0,'��¥�ֿ�','admin','2016-08-24 00:00:00.000000',2,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(58,'01.03.002.01','̨ʽ����','','Dell V260G','','',0,1,0.00,NULL,'','','�����Ű�','�����û�2','�����û�2','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(59,'01.03.002.03','̨ʽ����','','DELL 380','','',0,1,0.00,NULL,'','','','','','2016-08-29 00:00:00.000000',0,'��¥','admin','2016-08-24 00:00:00.000000',2,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(60,'01.03.002.04','̨ʽ����','','DELL 390','','',0,1,0.00,NULL,'','','������','1','1','2016-10-11 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(61,'01.03.002.05','̨ʽ����','','Dell 390','','',0,1,0.00,NULL,'','','1','1','1','2016-09-12 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(62,'01.03.004','�ʼǱ�����','','Thinkpad E440','','',0,1,0.00,NULL,'','','1','1','1','2016-08-29 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(63,'01.03.007','̨ʽ����','','DELL 390','','',0,1,0.00,NULL,'','','1','1','1','2016-09-13 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(64,'01.03.008','̨ʽ����','','��װ�� G620/4G/320G','','',0,1,0.00,NULL,'','','jhh','jhh','jhh','2016-08-02 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(65,'01.03.010','̨ʽ����','','Dell 9020','','',0,1,0.00,NULL,'','','1','1','1','2016-09-01 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(66,'01.03.011','������','','DELL R720','','',0,1,0.00,NULL,'','','1','1','1','2016-09-05 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(67,'01.03.012','������','','DELL R720','','',0,1,0.00,NULL,'','','2','12','2','2016-08-30 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(68,'01.03.013','������','','DELL R710','','',0,1,0.00,NULL,'','','1','1','1','2016-09-07 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(69,'01.03.014','������','','DELL R720','','',0,1,0.00,NULL,'','','1','1','1','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(70,'01.03.015.01','̨ʽ����','','DELL 3020','','',0,1,0.00,NULL,'','','1','1','1','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(71,'01.03.015.02','̨ʽ����','','DELL V260','','',0,1,0.00,NULL,'','','1','1','1','2016-09-05 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(72,'01.03.015.03','̨ʽ����','','DELL V260s','','',0,1,0.00,NULL,'','','1','1','1','2016-09-06 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(73,'01.03.015.04','̨ʽ����','','DELL 390','','',0,1,0.00,NULL,'','','1','1','1','2016-09-14 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(74,'01.03.015.05','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','10','1','1','2016-08-30 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(75,'01.03.015.06','̨ʽ����','','DELL V260','','',0,1,0.00,NULL,'','','���ڲ�','jhh','jhh','2016-08-30 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(76,'01.03.017','̨ʽ����','','Dell 380','','',0,1,0.00,NULL,'','','�����Ű���������','q','q','2016-10-04 00:00:00.000000',0,'','admin','2016-08-24 00:00:00.000000',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(77,'01.03.018','�ʼǱ�����','','���� 20003','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','�侲',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(78,'01.03.019','�ʼǱ�����','','E431 2E4','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(79,'01.03.020','̨ʽ����','','DELL 3020','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(80,'01.03.021','�ʼǱ�����','','���� E40','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-��ǰ','','�ſ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(81,'01.03.022','̨ʽ����','','DELL 790','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','κ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(82,'01.03.023','̨ʽ����','','Dell 380MT','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(83,'01.03.024','�ʼǱ�����','','���� K20','','',0,1,0.00,NULL,'','','��ȫ�Ƽ�����ҵ��','','��Ѹ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(84,'01.03.026.03','�ʼǱ�����','','HP 4431S','','',0,1,0.00,NULL,'','','ϵͳ���ɲ�','','��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(85,'01.03.027.01','̨ʽ����','','Dell 380','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(86,'01.03.029.01','̨ʽ����','','Dell 390','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(87,'01.03.029.02','̨ʽ����','','DELL 3020','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(88,'01.03.031','�ʼǱ�����','','���� ����E43G','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(89,'01.03.032','̨ʽ����','','Dell V260','','',0,1,0.00,NULL,'','','�����������','','�����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(90,'01.03.033.02','̨ʽ����','','Dell 3010','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','���',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(91,'01.03.034','̨ʽ����','','DELL V260','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(92,'01.03.035','̨ʽ����','','DELL3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(93,'01.03.036.01','̨ʽ����','','Dell V260','','',0,1,0.00,NULL,'','','�����������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(94,'01.03.036.02','̨ʽ����','','����T4900','','',0,1,0.00,NULL,'','','������ҵ��-������','','���Ն�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(95,'01.03.036.03','̨ʽ����','','Dell 3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','Ф�Ľ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(96,'01.03.036.04','̨ʽ����','','Dell 3010','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(97,'01.03.036.05','̨ʽ����','','Dell 3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','κ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(98,'01.03.036.06','̨ʽ����','','Dell 3010','','',0,1,0.00,NULL,'','','������ҵ��','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(99,'01.03.037.01','̨ʽ����','','DELL 7010','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','���꺭',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(100,'01.03.038','�ʼǱ�����','','���� E49','','',0,1,0.00,NULL,'','','�����������','','éΰ��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(101,'01.03.039','̨ʽ����','','DELL 380','','',0,1,0.00,NULL,'','','������Դ��������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(102,'01.03.040','̨ʽ����','','�������� W7130','','',0,1,0.00,NULL,'','','�����������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(103,'01.03.041.01','̨ʽ����','','\'DELL V260','','',0,1,0.00,NULL,'','','������Դ��������','','ʯЦЦ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(104,'01.03.041.02','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(105,'01.03.042.01','̨ʽ����','','DELL 380','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(106,'01.03.042.02','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','��Ѳ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(107,'01.03.043.01','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','��������','','�����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(108,'01.03.043.02','̨ʽ����','','DELL','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-��ǰ','','�Ű���',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(109,'01.03.045','̨ʽ����','','dell 3010','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(110,'01.03.047','̨ʽ����','','dell 380','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(111,'01.03.050.01','�ʼǱ�����','','IBM 2668','','',0,1,0.00,NULL,'','','ϵͳ���ɲ�','','δ֪',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(112,'01.03.050.02','�ʼǱ�����','','���� 20003','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(113,'01.03.051.01','�ʼǱ�����','','ThinkpadE440','','',0,1,0.00,NULL,'','','������ҵ��-������','','κ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(114,'01.03.051.02','�ʼǱ�����','','���� G50-70M','','',0,1,0.00,NULL,'','','������ҵ��-������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(115,'01.03.051.03','�ʼǱ�����','','���� E46G','','',0,1,0.00,NULL,'','','�ܾ���','','�½�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(116,'01.03.052','�ʼǱ�����','','���� ����E47L','','',0,1,0.00,NULL,'','','������Դ��������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(117,'01.03.053','̨ʽ����','','dell V3800','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','��־��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(118,'01.03.054.01','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(119,'01.03.056','̨ʽ����','','DELL 380','','',0,1,0.00,NULL,'','','�����������','','���ܽ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(120,'01.03.057.01','̨ʽ����','','DELL 390','','',0,1,0.00,NULL,'','','��ȫ����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(121,'01.03.057.02','̨ʽ����','','DELL 3020','','',0,1,0.00,NULL,'','','������ҵ��-������','','��ΰΰ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(122,'01.03.058','�ʼǱ�����','','IBM T43','','',0,1,0.00,NULL,'','','˾���칫��','','�����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(123,'01.03.060','̨ʽ����','','DELL V260','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(124,'01.03.062','���ػ�','','���ͺ�','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(125,'01.03.063','̨ʽ����','','dell 390','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','���˷�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(126,'01.03.066.01','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','��Ƽ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(127,'01.03.066.02','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(128,'01.03.066.03','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','�Ծ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(129,'01.03.066.04','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','��·�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(130,'01.03.066.05','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(131,'01.03.066.06','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','Ĳ��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(132,'01.03.066.07','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','�����������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(133,'01.03.066.08','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','�����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(134,'01.03.066.09','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','��ΰΰ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(135,'01.03.066.10','̨ʽ����','','Dell3010','','',0,1,0.00,NULL,'','','������ҵ��-������','','�۳���',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(136,'01.03.066.12','̨ʽ����','','Dell3020','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','���ľ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(137,'01.03.066.13','̨ʽ����','','dell 3020','','',0,1,0.00,NULL,'','','������Դ��','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(138,'01.03.066.14','̨ʽ����','','DELL Vostro 260S','','',0,1,0.00,NULL,'','','�����������','','���',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(139,'01.03.066.15','̨ʽ����','','DELL OPTIPLEX390','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(140,'01.03.066.16','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(141,'01.03.066.17','̨ʽ����','','��װ�� amd/2G','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(142,'01.03.066.18','̨ʽ����','','DELL D07m','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(143,'01.03.066.20','̨ʽ����','','DELL 3020','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','Ԭ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(144,'01.03.066.21','̨ʽ����','','DELL V270s','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(145,'01.03.066.22','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(146,'01.03.132','̨ʽ����','','DELL 3020','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(147,'01.03.066.25','̨ʽ����','','DELL3020','','',0,0,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','���ݽ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(148,'01.03.066.26','̨ʽ����','','DELL3010','','',0,0,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','�ܳ���',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(149,'01.03.066.27','̨ʽ����','','DELL 3010','','',0,0,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(150,'01.03.066.29','̨ʽ����','','DELL 7010mt','','',0,0,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(151,'01.03.066.30','̨ʽ����','','DELL 380','','',0,0,0.00,NULL,'','','��������','','�����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(152,'01.03.072','�ʼǱ�����','','HP TPN-F112','','',0,1,0.00,NULL,'','','������Դ','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(153,'01.03.077.01','̨ʽ����','','DELL V380','','',0,1,0.00,NULL,'','','������ҵ��','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(154,'01.03.077.02','̨ʽ����','','DELL V3800','','',0,1,0.00,NULL,'','','������������','','��ѩ��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(155,'01.03.078','̨ʽ����','','DELL V260','','',0,1,0.00,NULL,'','','������ҵ��-���۲�','','½��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(156,'01.03.080','�ʼǱ�����','','E431','','',0,1,0.00,NULL,'','','������ҵ��-������','','��Ѳ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(157,'01.03.082.01','̨ʽ����','','dell 3020MT','','',0,1,0.00,NULL,'','','������ҵ��-������','','�¶�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(158,'01.03.083','̨ʽ����','','dell V260','','',0,1,0.00,NULL,'','','��������','','��ܲ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(159,'01.03.084','̨ʽ����','','Dell 390','','',0,1,0.00,NULL,'','','������ҵ��','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(160,'01.03.085.01','���罻����','','��ΪH3C S5500','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(161,'01.03.085.02','���罻����','','��Ϊ S5700','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(162,'01.03.086.01','������','','DELL R720','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(163,'01.03.086.02','������','','DELL R720','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(164,'01.03.087','�绰������','','���� WS824��50��','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(165,'01.03.088','��ӡ��','','EPSON L1300','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(166,'01.03.090','��ӡ��','','HP 1022','','',0,1,0.00,NULL,'','','�����������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(167,'01.03.091','��ӡ��','','HP P3015','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(168,'01.03.093','���罻����','','RJS2628','','',0,1,0.00,NULL,'','','��ȫ����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(169,'01.03.094','������','','DELL R610','','',0,1,0.00,NULL,'','','������ҵ��-������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(170,'01.03.096','������','','���ŷ� VPN-2050','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(171,'01.03.097','���罻����','','˼�� 3550','','',0,1,0.00,NULL,'','','��ȫ����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(172,'01.03.098.02','���罻����','','H3C S5048E','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(173,'01.03.098.03','���罻����','','��� RG-2052G','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(174,'01.03.100','���罻����','','��Ϊ S5700','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(175,'01.03.102','������','','DELL T410','','',0,1,0.00,NULL,'','','������������','','��־��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(176,'01.03.103','̨ʽ����','','DELL 3010','','',0,1,0.00,NULL,'','','�з���������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(177,'01.03.104','��ӡ��','','HP1106','','',0,1,0.00,NULL,'','','������Դ','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(178,'01.03.107','���罻����','','H3C LS-3600V2','','',0,1,0.00,NULL,'','','������ҵ��','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(179,'01.03.109','���罻����','','���RG-2052G','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(180,'01.03.111','���罻����','','S2700-52P-EI','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(181,'01.03.112','���罻����','','S2700-26TP-EI','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(182,'01.03.113','������','','R410','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(183,'01.03.114','������','','DELL R720','','',0,1,0.00,NULL,'','','������ҵ��','','��ΰΰ',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(184,'01.03.115','������','','HP-DL320G5P','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(185,'01.03.116','���罻����','','��� RG-S2052G','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(186,'01.03.117','����©��ɨ��','','RSASNX3-S','','',0,1,0.00,NULL,'','','��ȫ����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(187,'01.03.122','����WebӦ�ð�ȫ����','','����WAG110','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(188,'01.03.123.01','�������ǽ','','���ػ�','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(189,'01.04.003','Dell�洢','','MD38001','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(190,'01.04.007','ͶӰ��','','BenQ MP777','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(191,'01.04.009','�����','','���� HF R328','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(192,'01.04.010','ͶӰ��','','���� PT-U1X68','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(193,'01.04.011','��ӡ��','','HP p1106','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(194,'01.04.012','��ӡ��','','HP CP2025','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(195,'01.04.013','�洢��','','fast600','','',0,1,0.00,NULL,'','','��ȫ����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(196,'01.04.014','С�ͻ��洢','','ibm','','',0,1,0.00,NULL,'','','��ȫ����','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(197,'01.04.015','ͶӰ��','','����','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(198,'01.04.016','�����','','����kx-fl338cn','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(199,'01.04.056.01','���ӻ�','','�ȷ�LEDҺ��','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(200,'01.04.056.02','���ӻ�','','�ȷ�LEDҺ��','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(201,'01.04.057','���ӻ�','','��ά','','',0,1,0.00,NULL,'','','������������','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(202,'01.03.126.01','���ػ�','','���ͺ�','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(203,'01.03.126.02','���ػ�','','���ͺ�','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(204,'01.03.133','DELL ������','','DELL 720','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(205,'01.03.134','̨ʽ��','','��װ�� E3-1231V3/16G/1T+2T+250G','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','\nԬ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(206,'01.03.134.01',' ���ǣ�GreatWall��','','Z2387P IPS����','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','κ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(207,'01.03.134.02','���ɣ�ViewSonic��','','VSD241��׿���ܴ���','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','\nԬ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(208,'01.03.134.03','���ɣ�ViewSonic��','','TD2420����','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','\nԬ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(209,'01.03.135','̨ʽ��','','��װ�� E3-1231V3/16G/1T+2T+250G','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','κ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(210,'01.03.140','������','','DELl R720','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ�� ','','   �ٳ���',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(211,'01.03.141.01','̨ʽ��','','��װ�� i5/16G/2T/GTX750i','','',0,1,0.00,NULL,'','','����ҵ��','','κ��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(212,'01.03.142','̨ʽ��','','��װ�� E3-1231V3/16G/1T','','',0,1,0.00,NULL,'','','������ҵ��','','��С��',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(213,'01.03.143','̨ʽ��','','DELL 3020','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','     ����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(214,'01.03.144','̨ʽ��','','DELL 3020','','',0,1,0.00,NULL,'','','ϵͳ������ҵ��-����','','���ľ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(215,'01.03.145','���ػ�','','���ͺ�','','',0,1,0.00,NULL,'','','������ҵ��-������','',' ������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(216,'01.03.150','̨ʽ����','','��װ�� i5/16G/2T/GTX750i','','',0,1,0.00,NULL,'','','��ȫ�Ƽ�����ҵ��','','�����',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(217,'01.03.151','̨ʽ����','','DELL 3020MT/G3220','','',0,1,0.00,NULL,'','','������ҵ��','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(218,'01.03.153','��ӡ��','','HP laserJet Pro 400','','',0,1,0.00,NULL,'','','Ӧ��ϵͳ��ҵ��','','���Έ�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(219,'01.03.158','̨ʽ����','','���ݻ� G1620/4G/320G','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(220,'01.03.159','̨ʽ����','','dell 3020MT /i5/8G/1T','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(221,'01.03.160','�ʼǱ�','','acer ms2346','','',0,1,0.00,NULL,'','','������������','','������',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(222,'01.03.161','̨ʽ����','','��װ�� i5/16G/2T/GTX960/','','',0,1,0.00,NULL,'','','��������ҵ��','','�޲�',NULL,0,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(223,'1','1','1','1','','',1,1,1.00,'1990-01-01','0','',NULL,'','',NULL,1,'','admin','2016-08-27 14:44:27.452000',0,'','','',0,0,NULL,NULL,NULL),(224,'11','1','1','1','','',1,1,1.00,'1990-01-01','0','',NULL,'','',NULL,1,'','admin','2016-08-27 20:30:27.036000',0,'','','',0,0,NULL,NULL,NULL),(225,'1111','1','1','1','','',1,1,1.00,'1990-01-01','0','',NULL,'','',NULL,1,'','admin','2016-08-27 20:30:46.622000',0,'','static/billpic/20160827203046622000.jpg','',0,0,NULL,NULL,NULL),(226,'121','12','1','1','','',1,1,1.00,'1990-01-01','0','1',NULL,'','',NULL,1,'','admin','2016-09-02 20:26:50.784000',0,'','','',0,0,NULL,NULL,NULL),(227,'31','31','31','31','','',1,1,1.00,'1990-01-01','0','�����̳�',NULL,'','',NULL,1,'','admin','2016-09-02 20:27:44.359000',0,'','','',0,0,NULL,NULL,NULL),(228,'232','2','2','2','','',1,1,1.00,'1990-01-01','0','�����̳�','22','22','22','2016-09-03 00:00:00.000000',1,'22222','admin','2016-09-03 15:41:11.055000',1,'','static/billpic/20160903154111055000.jpg','',0,0,NULL,NULL,NULL),(229,'12323','1','1','1','','',1,1,1.00,'1990-01-01','0','�����̳�',NULL,'','',NULL,1,'','admin','2016-09-04 20:37:42.767000',0,'','','',0,0,'','',NULL),(230,'tet','1','1','1','','',1,1,1.00,'1990-01-01','0','�����̳�',NULL,'','',NULL,1,'','admin','2016-09-15 22:25:07.955000',0,'','static/billpic/20160915222507955000.jpg','',0,0,'','',NULL),(231,'11111','1','������Dell��','1111','','',1,1,1.00,'1990-01-01','0','�����̳�',NULL,'','',NULL,1,'','admin','2016-09-24 23:41:51.038000',0,'','','',0,0,'','',NULL),(232,'qwqw','q','������Dell��','q','','',1,1,1.00,'1990-01-01','0','�����̳�',NULL,'','',NULL,1,'','admin','2016-09-26 22:12:00.487000',0,'','','',0,0,'','',NULL),(233,'qw11','1','������Dell��','1','','',1,1,0.00,'1990-01-01','0','�����̳�',NULL,'','',NULL,1,'','admin','2016-09-26 22:17:01.675000',0,'','','',0,0,'','',NULL);
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
VALUES(new.ass_acceptDept,new.ass_acceptUser,new.ass_User,new.ass_location,new.ass_operator,new.ass_operDate,new.ass_flag,new.ass_comment,new.id,'�״��ʲ�����¼����','¼��ϵͳ');
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
INSERT INTO `t_assets_detail` VALUES (79,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,56,'�״��ʲ�����¼����',NULL),(80,'������ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,57,'�״��ʲ�����¼����',NULL),(81,'������Դ��������','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,58,'�״��ʲ�����¼����',NULL),(82,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,59,'�״��ʲ�����¼����',NULL),(83,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,60,'�״��ʲ�����¼����',NULL),(84,'������ҵ��-������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,61,'�״��ʲ�����¼����',NULL),(85,'�ۺϹ���','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,62,'�״��ʲ�����¼����',NULL),(86,'��ȫ����','','���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,63,'�״��ʲ�����¼����',NULL),(87,'����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,64,'�״��ʲ�����¼����',NULL),(88,'Ӧ��ϵͳ��ҵ��','','��ΰ��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,65,'�״��ʲ�����¼����',NULL),(89,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,66,'�״��ʲ�����¼����',NULL),(90,'Ӧ��ϵͳ��ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,67,'�״��ʲ�����¼����',NULL),(91,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,68,'�״��ʲ�����¼����',NULL),(92,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,69,'�״��ʲ�����¼����',NULL),(93,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,70,'�״��ʲ�����¼����',NULL),(94,'���ʲ�','','ף��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,71,'�״��ʲ�����¼����',NULL),(95,'�����������','','³����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,72,'�״��ʲ�����¼����',NULL),(96,'������ҵ��-������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,73,'�״��ʲ�����¼����',NULL),(97,'��������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,74,'�״��ʲ�����¼����',NULL),(98,'���ʲ�','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,75,'�״��ʲ�����¼����',NULL),(99,'�����������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,76,'�״��ʲ�����¼����',NULL),(100,'ϵͳ������ҵ��-����','','�侲',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,77,'�״��ʲ�����¼����',NULL),(101,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,78,'�״��ʲ�����¼����',NULL),(102,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,79,'�״��ʲ�����¼����',NULL),(103,'ϵͳ������ҵ��-��ǰ','','�ſ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,80,'�״��ʲ�����¼����',NULL),(104,'Ӧ��ϵͳ��ҵ��','','κ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,81,'�״��ʲ�����¼����',NULL),(105,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,82,'�״��ʲ�����¼����',NULL),(106,'��ȫ�Ƽ�����ҵ��','','��Ѹ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,83,'�״��ʲ�����¼����',NULL),(107,'ϵͳ���ɲ�','','��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,84,'�״��ʲ�����¼����',NULL),(108,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,85,'�״��ʲ�����¼����',NULL),(109,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,86,'�״��ʲ�����¼����',NULL),(110,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,87,'�״��ʲ�����¼����',NULL),(111,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,88,'�״��ʲ�����¼����',NULL),(112,'�����������','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,89,'�״��ʲ�����¼����',NULL),(113,'Ӧ��ϵͳ��ҵ��','','���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,90,'�״��ʲ�����¼����',NULL),(114,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,91,'�״��ʲ�����¼����',NULL),(115,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,92,'�״��ʲ�����¼����',NULL),(116,'�����������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,93,'�״��ʲ�����¼����',NULL),(117,'������ҵ��-������','','���Ն�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,94,'�״��ʲ�����¼����',NULL),(118,'������ҵ��-������','','Ф�Ľ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,95,'�״��ʲ�����¼����',NULL),(119,'Ӧ��ϵͳ��ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,96,'�״��ʲ�����¼����',NULL),(120,'������ҵ��-������','','κ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,97,'�״��ʲ�����¼����',NULL),(121,'������ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,98,'�״��ʲ�����¼����',NULL),(122,'Ӧ��ϵͳ��ҵ��','','���꺭',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,99,'�״��ʲ�����¼����',NULL),(123,'�����������','','éΰ��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,100,'�״��ʲ�����¼����',NULL),(124,'������Դ��������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,101,'�״��ʲ�����¼����',NULL),(125,'�����������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,102,'�״��ʲ�����¼����',NULL),(126,'������Դ��������','','ʯЦЦ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,103,'�״��ʲ�����¼����',NULL),(127,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,104,'�״��ʲ�����¼����',NULL),(128,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,105,'�״��ʲ�����¼����',NULL),(129,'������ҵ��-������','','��Ѳ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,106,'�״��ʲ�����¼����',NULL),(130,'��������','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,107,'�״��ʲ�����¼����',NULL),(131,'ϵͳ������ҵ��-��ǰ','','�Ű���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,108,'�״��ʲ�����¼����',NULL),(132,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,109,'�״��ʲ�����¼����',NULL),(133,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,110,'�״��ʲ�����¼����',NULL),(134,'ϵͳ���ɲ�','','δ֪',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,111,'�״��ʲ�����¼����',NULL),(135,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,112,'�״��ʲ�����¼����',NULL),(136,'������ҵ��-������','','κ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,113,'�״��ʲ�����¼����',NULL),(137,'������ҵ��-������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,114,'�״��ʲ�����¼����',NULL),(138,'�ܾ���','','�½�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,115,'�״��ʲ�����¼����',NULL),(139,'������Դ��������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,116,'�״��ʲ�����¼����',NULL),(140,'Ӧ��ϵͳ��ҵ��','','��־��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,117,'�״��ʲ�����¼����',NULL),(141,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,118,'�״��ʲ�����¼����',NULL),(142,'�����������','','���ܽ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,119,'�״��ʲ�����¼����',NULL),(143,'��ȫ����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,120,'�״��ʲ�����¼����',NULL),(144,'������ҵ��-������','','��ΰΰ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,121,'�״��ʲ�����¼����',NULL),(145,'˾���칫��','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,122,'�״��ʲ�����¼����',NULL),(146,'ϵͳ������ҵ��-����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,123,'�״��ʲ�����¼����',NULL),(147,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,124,'�״��ʲ�����¼����',NULL),(148,'ϵͳ������ҵ��-����','','���˷�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,125,'�״��ʲ�����¼����',NULL),(149,'������ҵ��-������','','��Ƽ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,126,'�״��ʲ�����¼����',NULL),(150,'������ҵ��-������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,127,'�״��ʲ�����¼����',NULL),(151,'������ҵ��-������','','�Ծ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,128,'�״��ʲ�����¼����',NULL),(152,'Ӧ��ϵͳ��ҵ��','','��·�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,129,'�״��ʲ�����¼����',NULL),(153,'������ҵ��','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,130,'�״��ʲ�����¼����',NULL),(154,'������ҵ��-������','','Ĳ��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,131,'�״��ʲ�����¼����',NULL),(155,'�����������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,132,'�״��ʲ�����¼����',NULL),(156,'������ҵ��-������','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,133,'�״��ʲ�����¼����',NULL),(157,'������ҵ��-������','','��ΰΰ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,134,'�״��ʲ�����¼����',NULL),(158,'������ҵ��-������','','�۳���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,135,'�״��ʲ�����¼����',NULL),(159,'ϵͳ������ҵ��-����','','���ľ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,136,'�״��ʲ�����¼����',NULL),(160,'������Դ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,137,'�״��ʲ�����¼����',NULL),(161,'�����������','','���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,138,'�״��ʲ�����¼����',NULL),(162,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,139,'�״��ʲ�����¼����',NULL),(163,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,140,'�״��ʲ�����¼����',NULL),(164,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,141,'�״��ʲ�����¼����',NULL),(165,'ϵͳ������ҵ��-����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,142,'�״��ʲ�����¼����',NULL),(166,'Ӧ��ϵͳ��ҵ��','','Ԭ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,143,'�״��ʲ�����¼����',NULL),(167,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,144,'�״��ʲ�����¼����',NULL),(168,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,145,'�״��ʲ�����¼����',NULL),(169,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,146,'�״��ʲ�����¼����',NULL),(170,'Ӧ��ϵͳ��ҵ��','','���ݽ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,147,'�״��ʲ�����¼����',NULL),(171,'Ӧ��ϵͳ��ҵ��','','�ܳ���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,148,'�״��ʲ�����¼����',NULL),(172,'Ӧ��ϵͳ��ҵ��','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,149,'�״��ʲ�����¼����',NULL),(173,'Ӧ��ϵͳ��ҵ��','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,150,'�״��ʲ�����¼����',NULL),(174,'��������','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,151,'�״��ʲ�����¼����',NULL),(175,'������Դ','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,152,'�״��ʲ�����¼����',NULL),(176,'������ҵ��','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,153,'�״��ʲ�����¼����',NULL),(177,'������������','','��ѩ��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,154,'�״��ʲ�����¼����',NULL),(178,'������ҵ��-���۲�','','½��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,155,'�״��ʲ�����¼����',NULL),(179,'������ҵ��-������','','��Ѳ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,156,'�״��ʲ�����¼����',NULL),(180,'������ҵ��-������','','�¶�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,157,'�״��ʲ�����¼����',NULL),(181,'��������','','��ܲ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,158,'�״��ʲ�����¼����',NULL),(182,'������ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,159,'�״��ʲ�����¼����',NULL),(183,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,160,'�״��ʲ�����¼����',NULL),(184,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,161,'�״��ʲ�����¼����',NULL),(185,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,162,'�״��ʲ�����¼����',NULL),(186,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,163,'�״��ʲ�����¼����',NULL),(187,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,164,'�״��ʲ�����¼����',NULL),(188,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,165,'�״��ʲ�����¼����',NULL),(189,'�����������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,166,'�״��ʲ�����¼����',NULL),(190,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,167,'�״��ʲ�����¼����',NULL),(191,'��ȫ����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,168,'�״��ʲ�����¼����',NULL),(192,'������ҵ��-������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,169,'�״��ʲ�����¼����',NULL),(193,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,170,'�״��ʲ�����¼����',NULL),(194,'��ȫ����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,171,'�״��ʲ�����¼����',NULL),(195,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,172,'�״��ʲ�����¼����',NULL),(196,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,173,'�״��ʲ�����¼����',NULL),(197,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,174,'�״��ʲ�����¼����',NULL),(198,'������������','','��־��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,175,'�״��ʲ�����¼����',NULL),(199,'�з���������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,176,'�״��ʲ�����¼����',NULL),(200,'������Դ','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,177,'�״��ʲ�����¼����',NULL),(201,'������ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,178,'�״��ʲ�����¼����',NULL),(202,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,179,'�״��ʲ�����¼����',NULL),(203,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,180,'�״��ʲ�����¼����',NULL),(204,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,181,'�״��ʲ�����¼����',NULL),(205,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,182,'�״��ʲ�����¼����',NULL),(206,'������ҵ��','','��ΰΰ',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,183,'�״��ʲ�����¼����',NULL),(207,'Ӧ��ϵͳ��ҵ��','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,184,'�״��ʲ�����¼����',NULL),(208,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,185,'�״��ʲ�����¼����',NULL),(209,'��ȫ����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,186,'�״��ʲ�����¼����',NULL),(210,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,187,'�״��ʲ�����¼����',NULL),(211,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,188,'�״��ʲ�����¼����',NULL),(212,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,189,'�״��ʲ�����¼����',NULL),(213,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,190,'�״��ʲ�����¼����',NULL),(214,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,191,'�״��ʲ�����¼����',NULL),(215,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,192,'�״��ʲ�����¼����',NULL),(216,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,193,'�״��ʲ�����¼����',NULL),(217,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,194,'�״��ʲ�����¼����',NULL),(218,'��ȫ����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,195,'�״��ʲ�����¼����',NULL),(219,'��ȫ����','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,196,'�״��ʲ�����¼����',NULL),(220,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,197,'�״��ʲ�����¼����',NULL),(221,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,198,'�״��ʲ�����¼����',NULL),(222,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,199,'�״��ʲ�����¼����',NULL),(223,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,200,'�״��ʲ�����¼����',NULL),(224,'������������','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,201,'�״��ʲ�����¼����',NULL),(225,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,202,'�״��ʲ�����¼����',NULL),(226,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,203,'�״��ʲ�����¼����',NULL),(227,'Ӧ��ϵͳ��ҵ�� ','','����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,204,'�״��ʲ�����¼����',NULL),(228,'Ӧ��ϵͳ��ҵ�� ','','\nԬ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,205,'�״��ʲ�����¼����',NULL),(229,'Ӧ��ϵͳ��ҵ�� ','','κ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,206,'�״��ʲ�����¼����',NULL),(230,'Ӧ��ϵͳ��ҵ�� ','','\nԬ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,207,'�״��ʲ�����¼����',NULL),(231,'Ӧ��ϵͳ��ҵ�� ','','\nԬ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,208,'�״��ʲ�����¼����',NULL),(232,'Ӧ��ϵͳ��ҵ�� ','','κ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,209,'�״��ʲ�����¼����',NULL),(233,'Ӧ��ϵͳ��ҵ�� ','','   �ٳ���',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,210,'�״��ʲ�����¼����',NULL),(234,'����ҵ��','','κ��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,211,'�״��ʲ�����¼����',NULL),(235,'������ҵ��','','��С��',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,212,'�״��ʲ�����¼����',NULL),(236,'ϵͳ������ҵ��-����','','     ����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,213,'�״��ʲ�����¼����',NULL),(237,'ϵͳ������ҵ��-����','','���ľ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,214,'�״��ʲ�����¼����',NULL),(238,'������ҵ��-������','',' ������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,215,'�״��ʲ�����¼����',NULL),(239,'��ȫ�Ƽ�����ҵ��','','�����',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,216,'�״��ʲ�����¼����',NULL),(240,'������ҵ��','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,217,'�״��ʲ�����¼����',NULL),(241,'Ӧ��ϵͳ��ҵ��','','���Έ�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,218,'�״��ʲ�����¼����',NULL),(242,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,219,'�״��ʲ�����¼����',NULL),(243,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,220,'�״��ʲ�����¼����',NULL),(244,'������������','','������',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,221,'�״��ʲ�����¼����',NULL),(245,'��������ҵ��','','�޲�',NULL,'','admin','2016-08-24 00:00:00.000000',0,NULL,NULL,222,'�״��ʲ�����¼����',NULL),(246,'������','������','������','2016-08-24','','admin','2016-08-24 20:17:29.697000',1,'',0,57,'',NULL),(247,'','','������','2016-08-24','','admin','2016-08-24 20:18:50.267000',0,'',0,57,'',NULL),(248,'1','1','1','2016-08-24','','admin','2016-08-24 20:21:46.177000',1,'',0,57,'',NULL),(249,'','','1','2016-08-24','','admin','2016-08-24 20:23:43.961000',0,'',0,57,'',NULL),(254,'2','2','2','2016-08-24','','admin','2016-08-24 20:41:55.523000',1,'',0,57,'',NULL),(255,'3','3','3','2016-08-25','','admin','2016-08-24 21:06:27.372000',1,'',0,57,'',NULL),(256,'4','3','3','2016-08-26','','admin','2016-08-24 21:18:13.780000',1,'',0,57,'',NULL),(257,'','','3','2016-08-27','','admin','2016-08-24 21:19:56.300000',0,'',0,57,'��������',NULL),(258,'1','1','1','2016-08-24','','admin','2016-08-24 21:25:54.903000',1,'',0,56,'',NULL),(259,'1','2','2','2016-08-25','','admin','2016-08-24 21:26:37.988000',1,'',0,56,'',NULL),(260,'1','2','3','2016-08-26','','admin','2016-08-24 21:27:20.405000',1,'',0,56,'',NULL),(264,'2','2','3','2016-08-25','','admin','2016-08-24 21:58:42.810000',1,'',0,56,'',NULL),(265,'2','2','4','2016-08-03','','admin','2016-08-24 21:58:55.653000',1,'',0,56,'',NULL),(266,'2','3','4','2016-08-28','','admin','2016-08-24 21:59:04.496000',1,'',0,56,'',NULL),(267,'','','4','2016-08-06','','admin','2016-08-24 21:59:16.046000',0,'',0,56,'��������',NULL),(268,'������','������','������','2016-08-09',NULL,'admin','2016-08-08 00:00:00.000000',1,NULL,NULL,56,NULL,NULL),(269,NULL,'','',NULL,'','admin','2016-08-27 14:44:27.452000',0,'',NULL,223,'�״��ʲ�����¼����',NULL),(270,'���Բ���','�����û�','�����û�','2016-08-23','','admin','2016-08-27 17:49:31.309000',1,'',0,58,'',NULL),(271,'������','������','������','2016-08-02','��¥','admin','2016-08-27 18:30:47.893000',1,'',0,56,'',NULL),(272,NULL,'','',NULL,'','admin','2016-08-27 20:30:27.036000',0,'',NULL,224,'�״��ʲ�����¼����',NULL),(273,NULL,'','',NULL,'','admin','2016-08-27 20:30:46.622000',0,'',NULL,225,'�״��ʲ�����¼����',NULL),(274,'jhh','jhh','jhh','2016-08-02','','jhh','2016-08-28 17:23:25.132000',1,'',0,64,'',NULL),(275,'jhh','jhh','jhh','2016-09-06','','admin','2016-09-01 23:04:08.743000',1,'',0,64,'',NULL),(276,NULL,'','',NULL,'','admin','2016-09-02 20:26:50.784000',0,'',NULL,226,'�״��ʲ�����¼����',NULL),(277,NULL,'','',NULL,'','admin','2016-09-02 20:27:44.359000',0,'',NULL,227,'�״��ʲ�����¼����',NULL),(278,NULL,'','',NULL,'','admin','2016-09-03 15:41:11.055000',0,'',NULL,228,'�״��ʲ�����¼����','¼��ϵͳ'),(279,'22','22','22','2016-09-03','','admin','2016-09-03 15:41:31.732000',1,'',0,228,'','����'),(280,'22','22','22','2016-09-20','2121','admin','2016-09-03 15:48:41.737000',1,'',0,228,'','���'),(281,'','','','2016-08-29','��¥','admin','2016-09-04 20:28:47.499000',2,'',0,59,'�豸�𻵣�ά�޳ɱ�����','����'),(282,NULL,'','',NULL,'','admin','2016-09-04 20:37:42.767000',0,'',NULL,229,'�״��ʲ�����¼����','¼��ϵͳ'),(283,'22','22','22','2016-08-29','22222','admin','2016-09-05 21:16:18.400000',1,'',0,228,'','���'),(284,'1','1','1','2016-08-29','','admin','2016-09-12 22:53:51.407000',1,'',0,62,'','����'),(285,'������','������','������','2016-09-05','��¥','admin','2016-09-12 22:54:01.688000',1,'',0,56,'','���'),(286,'test','testte','test','2016-09-15','','admin','2016-09-15 21:02:09.039000',1,'',0,57,'','����'),(287,'','','','2016-09-15','��¥�ֿ�','admin','2016-09-15 21:04:29.876000',2,'',0,57,'����','����'),(288,NULL,'','',NULL,'','admin','2016-09-15 22:25:07.955000',0,'',NULL,230,'�״��ʲ�����¼����','¼��ϵͳ'),(289,'1','1','1','2016-09-13','','admin','2016-09-24 23:18:26.317000',1,'',0,63,'','����'),(290,NULL,'','',NULL,'','admin','2016-09-24 23:41:51.038000',0,'',NULL,231,'�״��ʲ�����¼����','¼��ϵͳ'),(291,'1','1','1','2016-09-01','','admin','2016-09-24 23:52:21.319000',1,'',0,65,'','����'),(292,'1','1','1','2016-09-05','','admin','2016-09-24 23:55:51.798000',1,'',0,60,'','����'),(293,'1','1','1','2016-09-12','','admin','2016-09-25 00:01:42.021000',1,'',0,61,'','����'),(294,'1','1','1','2016-09-05','','admin','2016-09-25 00:05:16.273000',1,'',0,66,'','����'),(295,'���Բ���','�����û�','�����û�','2016-09-06','','admin','2016-09-25 00:07:36.674000',1,'',0,58,'','���'),(296,'1','1','1','2016-09-07','','admin','2016-09-25 00:08:04.664000',1,'',0,60,'','���'),(297,'������','������','������','2016-08-30','��¥','admin','2016-09-25 00:08:27.536000',1,'',0,56,'','���'),(298,'������','������','������','2016-09-07','��¥','admin','2016-09-25 00:09:59.604000',1,'',0,56,'','���'),(299,'������','������','������','2016-09-14','��¥','admin','2016-09-25 00:19:05.508000',1,'',0,56,'','���'),(300,'������','������','������','2016-09-06','��¥','admin','2016-09-25 00:19:10.659000',1,'',0,56,'','���'),(301,'������','������','������','2016-08-31','��¥','admin','2016-09-25 00:19:16.278000',1,'',0,56,'','���'),(302,'���Բ���','�����û�','�����û�','2016-09-07','','admin','2016-09-25 00:19:21.664000',1,'',0,58,'','���'),(303,'1','1','1','2016-09-01','','admin','2016-09-25 00:19:26.802000',1,'',0,63,'','���'),(304,'������','������','������','2016-09-07','��¥','admin','2016-09-25 00:19:45.966000',1,'',0,56,'','���'),(305,'������','������','������','2016-09-06','��¥','admin','2016-09-25 00:20:20.156000',1,'',0,56,'','���'),(306,'������','������','������','2016-08-31','��¥','admin','2016-09-25 00:22:05.461000',1,'',0,56,'','���'),(307,'������','������','������','2016-09-06','��¥','admin','2016-09-25 15:57:54.000000',1,'',0,56,'','���'),(308,'������','������','������','2016-09-01','��¥','admin','2016-09-25 15:59:33.058000',1,'',0,56,'','���'),(309,'������','������','������','2016-09-01','��¥','admin','2016-09-25 16:00:32.863000',1,'',0,56,'','���'),(310,'������','������','������','2016-09-01','��¥','admin','2016-09-25 16:03:55.548000',1,'',0,56,'','���'),(311,'���Բ���','�����û�','�����û�','2016-09-01','','admin','2016-09-25 16:06:49.481000',1,'',0,58,'','���'),(312,'���Բ���','�����û�','�����û�','2016-09-01','','admin','2016-09-25 16:08:24.141000',1,'',0,58,'','���'),(313,'������','������','������','2016-09-01','��¥','admin','2016-09-25 16:12:20.952000',1,'',0,56,'','���'),(314,'������','������','������','2016-09-02','��¥','admin','2016-09-25 16:12:25.567000',1,'',0,56,'','���'),(315,'������','������','������','2016-09-03','��¥','admin','2016-09-25 16:12:30.379000',1,'',0,56,'','���'),(316,'������','������','������','2016-09-01','��¥','admin','2016-09-25 16:15:27.100000',1,'',0,56,'','���'),(317,'������','������','������','2016-09-02','��¥','admin','2016-09-25 16:15:31.883000',1,'',0,56,'','���'),(318,'������','������','������','2016-08-31','��¥','admin','2016-09-25 16:22:35.409000',1,'',0,56,'','���'),(319,'������','������','������','2016-09-02','��¥','admin','2016-09-25 16:22:40.688000',1,'',0,56,'','���'),(320,'������','������','������','2016-09-02','��¥','admin','2016-09-25 16:24:52.901000',1,'',0,56,'','���'),(321,'������','������','������','2016-09-10','��¥','admin','2016-09-25 16:24:57.220000',1,'',0,56,'','���'),(322,'1','1','1','2016-09-07','','admin','2016-09-25 16:25:07.049000',1,'',0,68,'','����'),(323,'1','1','1','2016-09-14','','admin','2016-09-25 16:25:14.099000',1,'',0,69,'','����'),(324,'2','12','2','2016-08-30','','admin','2016-09-25 16:34:33.700000',1,'',0,67,'','����'),(325,'1','1','1','2016-09-14','','admin','2016-09-25 16:34:41.461000',1,'',0,70,'','����'),(326,'1','1','1','2016-09-05','','admin','2016-09-25 16:36:24.864000',1,'',0,71,'','����'),(327,'1','1','1','2016-09-06','','admin','2016-09-25 16:36:32.010000',1,'',0,72,'','����'),(328,'1','1','1','2016-09-14','','admin','2016-09-25 16:36:59.015000',1,'',0,73,'','����'),(329,'������','������','������','2016-09-01','��¥','admin','2016-09-25 16:45:14.251000',1,'',0,56,'','���'),(330,'������','������','������','2016-09-02','��¥','admin','2016-09-25 22:09:59.729000',1,'',0,56,'','���'),(331,'������','������','������','2016-09-03','��¥','admin','2016-09-25 22:10:04.814000',1,'',0,56,'','���'),(332,'������','������','������','2016-09-01','��¥','admin','2016-09-26 20:32:57.378000',1,'',0,56,'','���'),(333,'������','������','������','2016-09-02','��¥','admin','2016-09-26 20:33:02.615000',1,'',0,56,'','���'),(334,'10','1','1','2016-08-30','','admin','2016-09-26 20:50:53.172000',1,'',0,74,'','����'),(335,'���ڲ�','jhh','jhh','2016-08-30','','admin','2016-09-26 20:54:02.014000',1,'',0,75,'','����'),(336,'������','������','������','2016-09-08','��¥','admin','2016-09-26 21:13:33.443000',1,'',0,56,'','���'),(337,'���ڲ�','������','������','2016-09-08','��¥','admin','2016-09-26 21:13:42.006000',1,'',0,56,'','���'),(338,'������','������','������','2016-09-07','��¥','admin','2016-09-26 21:13:53.431000',1,'',0,56,'','���'),(339,'IT','�����û�','�����û�','2016-09-05','','admin','2016-09-26 22:09:05.823000',1,'',0,58,'','���'),(340,'IT','�����û�2','�����û�2','2016-09-30','','admin','2016-09-26 22:09:13.395000',1,'',0,58,'','���'),(341,NULL,'','',NULL,'','admin','2016-09-26 22:12:00.487000',0,'',NULL,232,'�״��ʲ�����¼����','¼��ϵͳ'),(342,NULL,'','',NULL,'','admin','2016-09-26 22:17:01.675000',0,'',NULL,233,'�״��ʲ�����¼����','¼��ϵͳ'),(343,'���ڲ�','1','1','2016-09-07','','admin','2016-09-26 22:54:18.840000',1,'',0,60,'','���'),(344,'�����Ű�','�����û�2','�����û�2','2016-09-14','','admin','2016-09-26 22:54:27.133000',1,'',0,58,'','���'),(345,'������','1','1','2016-10-11','','admin','2016-10-11 21:11:00.042000',1,'',0,60,'','���'),(346,'�����Ű���������','q','q','2016-10-04','','admin','2016-10-11 21:14:47.176000',1,'',0,76,'','����');
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
INSERT INTO `t_brand` VALUES (1,'������Dell��',1,0),(2,'�곞��Acer��',2,0),(3,'���루Lenovo��',3,0),(4,'���루Thinkpad��',4,0),(5,'������Gree��',5,0),(6,'���ģ�Midea��',6,0),(7,'TCL',7,0),(8,'����',100,0);
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
INSERT INTO `t_department` VALUES (1,'�����Ű�',0,NULL,0),(2,'������',1,NULL,0),(3,'���²�',1,NULL,0),(4,'�ɹ���',1,NULL,0),(5,'���ڲ�',2,NULL,0),(10,'IT',1,NULL,0),(11,'�����Ű���������',0,NULL,0),(12,'����-����',11,NULL,0),(13,'����',2,NULL,0),(14,'����',16,NULL,0),(15,'����',11,NULL,0),(16,'�ൺ���´�',11,NULL,0);
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
INSERT INTO `t_log` VALUES (1,'��¼','None','','2016-07-27 13:26:15.400000','192.168.1.101','PC-201604171145','005056c00008'),(2,'��¼','None','','2016-07-27 13:28:03.236000','192.168.1.101','PC-201604171145','005056c00008'),(3,'��¼','None','','2016-07-27 13:31:45.416000','192.168.1.101','PC-201604171145','005056c00008'),(4,'��¼�ɹ�','��¼','','2016-07-27 13:37:22.853000','192.168.1.101','PC-201604171145','005056c00008'),(5,'��¼�ɹ�','��¼','','2016-07-27 21:41:18.837000','192.168.1.101','PC-201604171145','005056c00008'),(6,'�û������������','��¼','','2016-07-27 21:49:30.805000','192.168.1.101','PC-201604171145','005056c00008'),(7,'�û������������','��¼','','2016-07-27 21:49:36.479000','192.168.1.101','PC-201604171145','005056c00008'),(8,'��¼�ɹ�','��¼','','2016-07-27 22:06:32.424000','192.168.1.101','PC-201604171145','005056c00008'),(9,'��¼�ɹ�','��¼','admin','2016-07-27 22:14:22.152000','192.168.1.101','PC-201604171145','005056c00008'),(10,'�û������������','��¼','admin','2016-07-27 22:16:02.093000','192.168.1.101','PC-201604171145','005056c00008'),(11,'�û������������','��¼','admin','2016-07-27 22:16:54.246000','192.168.1.101','PC-201604171145','005056c00008'),(12,'��¼�ɹ�','��¼','jhh','2016-07-27 22:19:17.454000','192.168.1.101','PC-201604171145','005056c00008'),(13,'�û������������','��¼','jhh','2016-07-27 22:19:57.544000','192.168.1.101','PC-201604171145','005056c00008'),(14,'�û������������','��¼','jhh','2016-07-27 22:20:16.416000','192.168.1.101','PC-201604171145','005056c00008'),(15,'�û������������','��¼','jhh','2016-07-27 22:20:30.968000','192.168.1.101','PC-201604171145','005056c00008'),(16,'��¼�ɹ�','��¼','admin','2016-07-27 22:35:04.252000','192.168.1.101','PC-201604171145','005056c00008'),(17,'��¼�ɹ�','��¼','admin','2016-07-27 22:35:36.503000','192.168.1.101','PC-201604171145','005056c00008'),(18,'��¼�ɹ�','��¼','jhh','2016-07-27 22:44:19.731000','192.168.1.101','PC-201604171145','005056c00008'),(19,'��¼�ɹ�','��¼','admin','2016-07-27 22:50:35.415000','192.168.1.101','PC-201604171145','005056c00008'),(20,'��¼�ɹ�','��¼','admin','2016-07-27 22:52:54.855000','192.168.1.101','PC-201604171145','005056c00008'),(21,'��¼�ɹ�','��¼','jhh','2016-07-27 23:05:56.629000','192.168.1.101','PC-201604171145','005056c00008'),(22,'��¼�ɹ�','��¼','admin','2016-07-28 19:46:31.011000','192.168.1.101','PC-201604171145','005056c00008'),(23,'��¼�ɹ�','��¼','admin','2016-07-28 19:50:03.255000','192.168.1.101','PC-201604171145','005056c00008'),(24,'��¼�ɹ�','��¼','admin','2016-07-28 19:53:48.503000','192.168.1.101','PC-201604171145','005056c00008'),(25,'��¼�ɹ�','��¼','jhh','2016-07-28 19:58:52.846000','192.168.1.101','PC-201604171145','005056c00008'),(26,'��¼�ɹ�','��¼','admin','2016-07-28 20:16:09.437000','192.168.1.101','PC-201604171145','005056c00008'),(27,'��¼�ɹ�','��¼','admin','2016-07-28 20:26:13.369000','192.168.1.101','PC-201604171145','005056c00008'),(28,'��¼�ɹ�','��¼','admin','2016-07-28 20:29:16.240000','192.168.1.101','PC-201604171145','005056c00008'),(29,'��¼�ɹ�','��¼','admin','2016-07-29 22:07:53.656000','192.168.1.100','PC-201604171145','005056c00008'),(30,'��¼�ɹ�','��¼','admin','2016-07-30 11:03:41.146000','192.168.1.100','PC-201604171145','005056c00008'),(31,'��¼�ɹ�','��¼','admin','2016-07-30 14:17:14.848000','192.168.1.100','PC-201604171145','005056c00008'),(32,'��¼�ɹ�','��¼','admin','2016-07-30 17:18:34.286000','192.168.1.100','PC-201604171145','005056c00008'),(33,'��¼�ɹ�','��¼','jhh','2016-07-30 18:50:13.760000','192.168.1.100','PC-201604171145','005056c00008'),(34,'��¼�ɹ�','��¼','jhh','2016-07-30 18:52:14.121000','192.168.1.100','PC-201604171145','005056c00008'),(35,'��¼�ɹ�','��¼','admin','2016-07-30 19:08:50.515000','192.168.1.100','PC-201604171145','005056c00008'),(36,'��¼�ɹ�','��¼','admin','2016-07-30 19:28:17.874000','192.168.1.100','PC-201604171145','005056c00008'),(37,'��¼�ɹ�','��¼','admin','2016-07-30 19:46:08.789000','192.168.1.100','PC-201604171145','005056c00008'),(38,'��¼�ɹ�','��¼','admin','2016-07-30 20:21:08.847000','192.168.1.100','PC-201604171145','005056c00008'),(39,'��¼�ɹ�','��¼','admin','2016-07-30 20:21:23.583000','192.168.1.100','PC-201604171145','005056c00008'),(40,'��¼�ɹ�','��¼','jhh','2016-07-30 20:21:48.397000','192.168.1.100','PC-201604171145','005056c00008'),(41,'��¼�ɹ�','��¼','admin','2016-07-30 22:04:17.916000','192.168.1.100','PC-201604171145','005056c00008'),(42,'��¼�ɹ�','��¼','admin','2016-07-30 22:04:52.821000','192.168.1.100','PC-201604171145','005056c00008'),(43,'��¼�ɹ�','��¼','admin','2016-07-30 22:22:07.189000','192.168.1.100','PC-201604171145','005056c00008'),(44,'��¼�ɹ�','��¼','admin','2016-07-30 23:28:00.601000','192.168.1.100','PC-201604171145','005056c00008'),(45,'��¼�ɹ�','��¼','admin','2016-07-31 11:42:59.833000','192.168.1.100','PC-201604171145','005056c00008'),(46,'��¼�ɹ�','��¼','admin','2016-07-31 14:43:23.187000','192.168.1.100','PC-201604171145','005056c00008'),(47,'��¼�ɹ�','��¼','admin','2016-07-31 20:19:14.670000','192.168.1.100','PC-201604171145','005056c00008'),(48,'��¼�ɹ�','��¼','admin','2016-07-31 21:35:10.257000','192.168.1.100','PC-201604171145','005056c00008'),(49,'��¼�ɹ�','��¼','admin','2016-07-31 21:35:36.043000','192.168.1.100','PC-201604171145','005056c00008'),(50,'��¼�ɹ�','��¼','admin','2016-07-31 22:24:38.605000','192.168.1.100','PC-201604171145','005056c00008'),(51,'��¼�ɹ�','��¼','admin','2016-07-31 22:42:11.004000','192.168.1.100','PC-201604171145','005056c00008'),(52,'��¼�ɹ�','��¼','admin','2016-07-31 22:47:28.816000','192.168.1.100','PC-201604171145','005056c00008'),(53,'��¼�ɹ�','��¼','admin','2016-08-01 19:56:48.829000','192.168.1.100','PC-201604171145','005056c00008'),(54,'��¼�ɹ�','��¼','admin','2016-08-01 23:00:38.198000','192.168.1.100','PC-201604171145','005056c00008'),(55,'��¼�ɹ�','��¼','admin','2016-08-02 20:24:16.824000','192.168.1.101','PC-201604171145','005056c00008'),(56,'��¼�ɹ�','��¼','jhh','2016-08-02 21:35:05.763000','192.168.1.101','PC-201604171145','005056c00008'),(57,'��¼�ɹ�','��¼','jhh','2016-08-03 19:15:26.822000','192.168.1.101','PC-201604171145','005056c00008'),(58,'��¼�ɹ�','��¼','admin','2016-08-03 22:16:39.711000','192.168.1.101','PC-201604171145','005056c00008'),(59,'��¼�ɹ�','��¼','admin','2016-08-04 20:45:33.887000','192.168.1.102','PC-201604171145','005056c00008'),(60,'��¼�ɹ�','��¼','admin','2016-08-04 21:44:26.835000','192.168.1.102','PC-201604171145','005056c00008'),(61,'��¼�ɹ�','��¼','jhh','2016-08-06 20:27:59.923000','192.168.1.101','PC-201604171145','005056c00008'),(62,'��¼�ɹ�','��¼','jhh','2016-08-06 22:17:38.979000','192.168.1.101','PC-201604171145','005056c00008'),(63,'��¼�ɹ�','��¼','admin','2016-08-06 22:18:14.401000','192.168.1.101','PC-201604171145','005056c00008'),(64,'��¼�ɹ�','��¼','admin','2016-08-06 22:30:57.309000','192.168.1.101','PC-201604171145','005056c00008'),(65,'��¼�ɹ�','��¼','admin','2016-08-07 17:37:02.417000','192.168.1.102','PC-201604171145','005056c00008'),(66,'��¼�ɹ�','��¼','admin','2016-08-07 20:37:18.711000','192.168.1.102','PC-201604171145','005056c00008'),(67,'��¼�ɹ�','��¼','admin','2016-08-07 21:14:17.527000','192.168.1.102','PC-201604171145','005056c00008'),(68,'��¼�ɹ�','��¼','jhh','2016-08-07 21:24:53.288000','192.168.1.102','PC-201604171145','005056c00008'),(69,'��¼�ɹ�','��¼','admin','2016-08-08 20:16:27.911000','192.168.1.102','PC-201604171145','005056c00008'),(70,'��¼�ɹ�','��¼','admin','2016-08-09 21:15:09.813000','192.168.1.102','PC-201604171145','005056c00008'),(71,'��¼�ɹ�','��¼','admin','2016-08-15 19:44:44.978000','192.168.1.101','PC-201604171145','005056c00008'),(72,'��¼�ɹ�','��¼','jhh','2016-08-15 22:45:51.975000','192.168.1.101','PC-201604171145','005056c00008'),(73,'��¼�ɹ�','��¼','admin','2016-08-16 20:05:45.854000','192.168.1.102','PC-201604171145','005056c00008'),(74,'��¼�ɹ�','��¼','jhh','2016-08-16 23:07:38.836000','192.168.1.102','PC-201604171145','005056c00008'),(75,'��¼�ɹ�','��¼','jhh','2016-08-17 21:58:50.763000','192.168.1.104','PC-201604171145','005056c00008'),(76,'��¼�ɹ�','��¼','jhh','2016-08-18 19:33:33.160000','192.168.1.102','PC-201604171145','005056c00008'),(77,'��¼�ɹ�','��¼','admin','2016-08-18 22:41:16.151000','192.168.1.102','PC-201604171145','005056c00008'),(78,'��¼�ɹ�','��¼','admin','2016-08-18 22:41:16.287000','192.168.1.102','PC-201604171145','005056c00008'),(79,'��¼�ɹ�','��¼','jhh','2016-08-18 23:30:50.873000','192.168.1.102','PC-201604171145','005056c00008'),(80,'��¼�ɹ�','��¼','admin','2016-08-19 21:20:48.557000','192.168.1.101','PC-201604171145','005056c00008'),(81,'��¼�ɹ�','��¼','admin','2016-08-19 21:46:48.069000','192.168.1.101','PC-201604171145','005056c00008'),(82,'��¼�ɹ�','��¼','jhh','2016-08-20 12:15:35.252000','192.168.1.101','PC-201604171145','005056c00008'),(83,'��¼�ɹ�','��¼','admin','2016-08-20 12:29:39.281000','192.168.1.101','PC-201604171145','005056c00008'),(84,'��¼�ɹ�','��¼','jhh','2016-08-20 14:37:23.237000','192.168.1.101','PC-201604171145','005056c00008'),(85,'��¼�ɹ�','��¼','admin','2016-08-20 18:44:02.836000','192.168.1.101','PC-201604171145','005056c00008'),(86,'��¼�ɹ�','��¼','admin','2016-08-20 18:46:52.419000','192.168.1.101','PC-201604171145','005056c00008'),(87,'��¼�ɹ�','��¼','jhh','2016-08-20 23:45:11.389000','192.168.1.100','PC-201604171145','005056c00008'),(88,'��¼�ɹ�','��¼','jhh','2016-08-21 14:30:54.804000','192.168.1.100','PC-201604171145','005056c00008'),(89,'��¼�ɹ�','��¼','admin','2016-08-21 14:59:26.763000','192.168.1.100','PC-201604171145','005056c00008'),(90,'��¼�ɹ�','��¼','admin','2016-08-21 15:04:17.293000','192.168.1.100','PC-201604171145','005056c00008'),(91,'��¼�ɹ�','��¼','admin','2016-08-21 15:11:22.687000','192.168.1.100','PC-201604171145','005056c00008'),(92,'��¼�ɹ�','��¼','jhh','2016-08-21 19:32:36.008000','192.168.1.100','PC-201604171145','005056c00008'),(93,'��¼�ɹ�','��¼','admin','2016-08-21 21:01:55.095000','192.168.198.1','PC-201604171145','005056c00008'),(94,'��¼�ɹ�','��¼','admin','2016-08-22 20:11:00.045000','192.168.1.103','PC-201604171145','005056c00008'),(95,'��¼�ɹ�','��¼','jhh','2016-08-22 23:06:33.380000','192.168.1.103','PC-201604171145','005056c00008'),(96,'��¼�ɹ�','��¼','jhh','2016-08-23 19:51:51.838000','192.168.1.100','PC-201604171145','005056c00008'),(97,'��¼�ɹ�','��¼','admin','2016-08-23 20:02:54.597000','192.168.1.100','PC-201604171145','005056c00008'),(98,'��¼�ɹ�','��¼','admin','2016-08-24 20:14:45.976000','192.168.1.102','PC-201604171145','005056c00008'),(99,'��¼�ɹ�','��¼','admin','2016-08-25 19:55:52.718000','192.168.1.102','PC-201604171145','005056c00008'),(100,'��¼�ɹ�','��¼','jhh','2016-08-25 20:25:42.973000','192.168.1.102','PC-201604171145','005056c00008'),(101,'��¼�ɹ�','��¼','jhh','2016-08-25 20:25:43.030000','192.168.1.102','PC-201604171145','005056c00008'),(102,'��¼�ɹ�','��¼','admin','2016-08-25 20:26:45.001000','192.168.1.102','PC-201604171145','005056c00008'),(103,'��¼�ɹ�','��¼','admin','2016-08-26 19:36:38.820000','192.168.1.100','PC-201604171145','005056c00008'),(104,'��¼�ɹ�','��¼','admin','2016-08-26 21:45:47.504000','192.168.1.100','PC-201604171145','005056c00008'),(105,'��¼�ɹ�','��¼','admin','2016-08-27 10:34:23.885000','192.168.1.100','PC-201604171145','a87439a77e2f'),(106,'��¼�ɹ�','��¼','admin','2016-08-27 10:53:25.491000','192.168.1.100','PC-201604171145','a87439a77e2f'),(107,'��¼�ɹ�','��¼','jhh','2016-08-27 10:59:21.262000','192.168.1.100','PC-201604171145','a87439a77e2f'),(108,'��¼�ɹ�','��¼','admin','2016-08-27 15:53:46.677000','192.168.1.100','PC-201604171145','a87439a77e2f'),(109,'��¼�ɹ�','��¼','jhh','2016-08-27 20:16:26.989000','192.168.1.100','PC-201604171145','a87439a77e2f'),(110,'��¼�ɹ�','��¼','jhh','2016-08-27 20:17:28.852000','192.168.1.100','PC-201604171145','a87439a77e2f'),(111,'��¼�ɹ�','��¼','admin','2016-08-28 17:06:45.149000','192.168.1.102','PC-201604171145','a87439a77e2f'),(112,'��¼�ɹ�','��¼','jhh','2016-08-28 17:20:29.669000','192.168.1.102','PC-201604171145','a87439a77e2f'),(113,'��¼�ɹ�','��¼','jhh','2016-08-28 17:22:11.093000','192.168.1.102','PC-201604171145','a87439a77e2f'),(114,'��¼�ɹ�','��¼','jhh','2016-08-28 17:45:41.365000','192.168.1.102','PC-201604171145','a87439a77e2f'),(115,'��¼�ɹ�','��¼','jhh','2016-08-29 22:59:52.108000','192.168.1.103','PC-201604171145','005056c00008'),(116,'��¼�ɹ�','��¼','jhh','2016-08-29 23:08:48.570000','192.168.1.103','PC-201604171145','005056c00008'),(117,'��¼�ɹ�','��¼','jhh','2016-09-01 19:46:22.727000','192.168.1.102','PC-201604171145','005056c00008'),(118,'��¼�ɹ�','��¼','admin','2016-09-01 19:49:08.083000','192.168.1.102','PC-201604171145','005056c00008'),(119,'��¼�ɹ�','��¼','jhh','2016-09-02 20:25:59.162000','192.168.1.102','PC-201604171145','005056c00008'),(120,'��¼�ɹ�','��¼','admin','2016-09-02 20:26:09.564000','192.168.1.102','PC-201604171145','005056c00008'),(121,'��¼�ɹ�','��¼','admin','2016-09-03 15:27:11.041000','192.168.1.100','PC-201604171145','005056c00008'),(122,'��¼�ɹ�','��¼','admin','2016-09-03 16:55:50.710000','192.168.1.100','PC-201604171145','005056c00008'),(123,'��¼�ɹ�','��¼','admin','2016-09-03 21:25:14.001000','192.168.1.100','PC-201604171145','005056c00008'),(124,'��¼�ɹ�','��¼','admin','2016-09-03 21:25:57.039000','192.168.1.100','PC-201604171145','005056c00008'),(125,'��¼�ɹ�','��¼','admin','2016-09-03 23:56:58.524000','192.168.1.100','PC-201604171145','005056c00008'),(126,'��¼�ɹ�','��¼','admin','2016-09-04 14:34:26.018000','192.168.1.100','PC-201604171145','005056c00008'),(127,'��¼�ɹ�','��¼','admin','2016-09-04 19:54:50.847000','192.168.198.1','PC-201604171145','005056c00008'),(128,'��¼�ɹ�','��¼','jhh','2016-09-04 21:21:12.788000','192.168.1.101','PC-201604171145','005056c00008'),(129,'��¼�ɹ�','��¼','admin','2016-09-04 22:13:11.936000','192.168.1.101','PC-201604171145','005056c00008'),(130,'��¼�ɹ�','��¼','admin','2016-09-04 23:29:13.874000','192.168.1.101','PC-201604171145','005056c00008'),(131,'��¼�ɹ�','��¼','admin','2016-09-05 19:19:15.430000','192.168.1.101','PC-201604171145','005056c00008'),(132,'��¼�ɹ�','��¼','admin','2016-09-05 19:20:38.058000','192.168.1.101','PC-201604171145','005056c00008'),(133,'��¼�ɹ�','��¼','jhh','2016-09-05 19:48:42.355000','192.168.1.101','PC-201604171145','005056c00008'),(134,'��¼�ɹ�','��¼','admin','2016-09-12 22:27:40.289000','192.168.1.103','PC-201604171145','005056c00008'),(135,'��¼�ɹ�','��¼','admin','2016-09-12 22:29:07.318000','192.168.1.103','PC-201604171145','005056c00008'),(136,'��¼�ɹ�','��¼','admin','2016-09-12 22:29:48.183000','192.168.1.103','PC-201604171145','005056c00008'),(137,'��¼�ɹ�','��¼','jhh','2016-09-12 22:32:34.208000','192.168.1.103','PC-201604171145','005056c00008'),(138,'��¼�ɹ�','��¼','jhh','2016-09-12 22:43:29.052000','192.168.1.103','PC-201604171145','005056c00008'),(139,'��¼�ɹ�','��¼','jhh','2016-09-12 22:43:59.188000','192.168.1.103','PC-201604171145','005056c00008'),(140,'��¼�ɹ�','��¼','jhh','2016-09-12 22:50:49.120000','192.168.1.103','PC-201604171145','005056c00008'),(141,'��¼�ɹ�','��¼','admin','2016-09-12 22:51:29.423000','192.168.1.103','PC-201604171145','005056c00008'),(142,'��¼�ɹ�','��¼','admin','2016-09-15 18:59:29.012000','192.168.1.103','PC-201604171145','005056c00008'),(143,'��¼�ɹ�','��¼','admin','2016-09-15 20:33:15.876000','192.168.1.103','PC-201604171145','005056c00008'),(144,'��¼�ɹ�','��¼','admin','2016-09-15 20:42:17.546000','192.168.1.103','PC-201604171145','005056c00008'),(145,'��¼�ɹ�','��¼','admin','2016-09-15 20:48:35.234000','192.168.1.103','PC-201604171145','005056c00008'),(146,'��¼�ɹ�','��¼','admin','2016-09-15 22:23:51.966000','192.168.1.103','PC-201604171145','005056c00008'),(147,'��¼','None','admin','2016-09-15 23:43:14.049000','192.168.1.103','PC-201604171145','005056c00008'),(148,'��¼','None','admin','2016-09-15 23:44:01.480000','192.168.1.103','PC-201604171145','005056c00008'),(149,'��¼','None','jhh','2016-09-15 23:44:17.680000','192.168.1.103','PC-201604171145','005056c00008'),(150,'��¼','None','admin','2016-09-24 22:33:30.628000','192.168.1.102','PC-201604171145','005056c00008'),(151,'��¼�ɹ�','��¼','admin','2016-09-25 00:18:51.860000','192.168.1.102','PC-201604171145','005056c00008'),(152,'��¼','None','admin','2016-09-25 15:57:35.992000','192.168.1.102','PC-201604171145','005056c00008'),(153,'��¼','None','admin','2016-09-25 21:08:47.707000','192.168.1.102','PC-201604171145','005056c00008'),(154,'��¼','None','admin','2016-09-25 22:46:31.865000','192.168.1.102','PC-201604171145','005056c00008'),(155,'��¼','None','admin','2016-09-25 23:16:34.906000','192.168.1.102','PC-201604171145','005056c00008'),(156,'��¼','None','admin','2016-09-26 20:32:46.414000','192.168.1.102','PC-201604171145','005056c00008'),(157,'��¼','None','admin','2016-09-27 20:34:26.476000','192.168.1.101','PC-201604171145','005056c00008'),(158,'��¼','None','admin','2016-09-27 21:49:27.898000','192.168.1.101','PC-201604171145','005056c00008'),(159,'��¼','None','admin','2016-09-28 21:24:13.906000','192.168.1.103','PC-201604171145','005056c00008'),(160,'��¼','None','admin','2016-09-29 21:34:55.223000','192.168.1.103','PC-201604171145','005056c00008'),(161,'��¼','None','admin','2016-10-09 20:45:52.744000','192.168.1.103','PC-201604171145','005056c00008'),(162,'��¼','None','admin','2016-10-09 20:45:53.075000','192.168.1.103','PC-201604171145','005056c00008'),(163,'��¼','None','admin','2016-10-09 22:13:03.082000','192.168.198.1','PC-201604171145','005056c00008'),(164,'��¼','None','admin','2016-10-10 20:20:39.591000','192.168.198.1','PC-201604171145','005056c00008'),(165,'��¼','None','jhh','2016-10-10 20:40:04.059000','192.168.198.1','PC-201604171145','005056c00008'),(166,'��¼','None','admin','2016-10-10 20:40:44.019000','192.168.198.1','PC-201604171145','005056c00008'),(167,'��¼','None','admin','2016-10-10 22:56:44.337000','192.168.198.1','PC-201604171145','005056c00008'),(168,'��¼','None','admin','2016-10-11 20:10:48.259000','192.168.198.1','PC-201604171145','005056c00008');
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
INSERT INTO `t_menus` VALUES (1,'�ҵ��ʲ�',1,0,NULL,0),(2,'�ҵ��ʲ�',1,1,'/assets/user/',0),(3,'�ҵı��',2,1,'/assets/user/change/',0),(4,'�ʲ�����',2,0,NULL,0),(5,'�ʲ��鿴',1,4,'/assets/query/',0),(6,'�ʲ�¼��',2,4,'/assets/input/',0),(7,'�ʲ�����',3,4,'/assets/receive/',0),(8,'�ʲ����',4,4,'/assets/change/',0),(9,'�ʲ�����',6,4,'/assets/scrap/',0),(10,'ϵͳ����',3,0,NULL,0),(11,'�û�����',1,10,'/system/user_man/',0),(12,'���Ź���',2,10,'/system/dept_man/',0),(13,'�˵�����',3,10,'/system/menu_man/',0),(14,'��ɫ����',4,10,'/system/role_man/',0),(15,'�ֶι���',5,10,'/system/field_man/',0),(16,'���ݱ���',6,10,'/system/data_backup/',0),(17,'ϵͳ��־',5,10,'/system/sys_log/',0),(18,'�ʲ�ά��',5,4,'/assets/repair/',0);
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
INSERT INTO `t_position` VALUES (1,'����Ա',1,0),(2,'�ܾ���',2,0),(3,'����',3,0),(4,'����',4,0),(5,'Ա��',5,0);
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
INSERT INTO `t_providers` VALUES (1,'�����̳�',0),(2,'�����׹�',0),(3,'ĳĳó�׹�˾',0);
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
INSERT INTO `t_repair` VALUES (1,'2016-07-07','1111',111.00,'11',56,'11','11'),(2,'2016-09-01','��',1222.00,'������',56,'',' ��'),(3,'2016-09-07','1',0.00,'1',58,'','1'),(4,'2016-09-13','ǰ��',1000.00,'������',57,'','ǰ��'),(5,'2016-09-13','1',0.00,'1',60,'','1');
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
INSERT INTO `t_roles` VALUES (1,'����Ա��','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18',0,NULL),(2,'������','1,2,3',0,NULL),(3,'��ͨ�û���','1',0,NULL);
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
INSERT INTO `t_users` VALUES (3,'admin','90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad','����Ա','ϵͳ������ҵ��-��������','����Ա','15200000000','jianghaihao@365sec.com',1,0,0,'2016-10-11 20:10:48.308000',1,'192.168.198.1'),(4,'jhh','7e793d4370206fa005025cb7909f606afc7116c4','������','ϵͳ������ҵ��-������ά��-����֧�ֲ�',NULL,'025-83752968','test@qq.com',0,1,0,'2016-10-10 20:40:04.079000',2,'192.168.198.1'),(6,'user1','7e793d4370206fa005025cb7909f606afc7116c4','1','',NULL,NULL,NULL,0,0,0,NULL,2,NULL),(8,'user2','7e793d4370206fa005025cb7909f606afc7116c4','1','',NULL,NULL,NULL,0,1,0,NULL,2,NULL),(9,'user3','7e793d4370206fa005025cb7909f606afc7116c4','1','',NULL,NULL,NULL,0,0,0,NULL,2,NULL);
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
