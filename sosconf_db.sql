-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for osx10.14 (x86_64)
--
-- Host: localhost    Database: sosconf_db
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB

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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add proxy-granting ticket',7,'add_proxygrantingticket'),(26,'Can change proxy-granting ticket',7,'change_proxygrantingticket'),(27,'Can delete proxy-granting ticket',7,'delete_proxygrantingticket'),(28,'Can view proxy-granting ticket',7,'view_proxygrantingticket'),(29,'Can add proxy ticket',8,'add_proxyticket'),(30,'Can change proxy ticket',8,'change_proxyticket'),(31,'Can delete proxy ticket',8,'delete_proxyticket'),(32,'Can view proxy ticket',8,'view_proxyticket'),(33,'Can add service ticket',9,'add_serviceticket'),(34,'Can change service ticket',9,'change_serviceticket'),(35,'Can delete service ticket',9,'delete_serviceticket'),(36,'Can view service ticket',9,'view_serviceticket'),(37,'Can add group kind',10,'add_groupkind'),(38,'Can change group kind',10,'change_groupkind'),(39,'Can delete group kind',10,'delete_groupkind'),(40,'Can view group kind',10,'view_groupkind'),(41,'Can add lang',11,'add_lang'),(42,'Can change lang',11,'change_lang'),(43,'Can delete lang',11,'delete_lang'),(44,'Can view lang',11,'view_lang'),(45,'Can add skill',12,'add_skill'),(46,'Can change skill',12,'change_skill'),(47,'Can delete skill',12,'delete_skill'),(48,'Can view skill',12,'view_skill'),(49,'Can add user',13,'add_user'),(50,'Can change user',13,'change_user'),(51,'Can delete user',13,'delete_user'),(52,'Can view user',13,'view_user');
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
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'mama_cas','proxygrantingticket'),(8,'mama_cas','proxyticket'),(9,'mama_cas','serviceticket'),(6,'sessions','session'),(10,'user_info','groupkind'),(11,'user_info','lang'),(12,'user_info','skill'),(13,'user_info','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-31 04:26:14.487616'),(2,'auth','0001_initial','2019-03-31 04:26:14.987445'),(3,'admin','0001_initial','2019-03-31 04:26:15.107325'),(4,'admin','0002_logentry_remove_auto_add','2019-03-31 04:26:15.125923'),(5,'admin','0003_logentry_add_action_flag_choices','2019-03-31 04:26:15.142937'),(6,'contenttypes','0002_remove_content_type_name','2019-03-31 04:26:15.199156'),(7,'auth','0002_alter_permission_name_max_length','2019-03-31 04:26:15.239667'),(8,'auth','0003_alter_user_email_max_length','2019-03-31 04:26:15.275844'),(9,'auth','0004_alter_user_username_opts','2019-03-31 04:26:15.290496'),(10,'auth','0005_alter_user_last_login_null','2019-03-31 04:26:15.318033'),(11,'auth','0006_require_contenttypes_0002','2019-03-31 04:26:15.321948'),(12,'auth','0007_alter_validators_add_error_messages','2019-03-31 04:26:15.337439'),(13,'auth','0008_alter_user_username_max_length','2019-03-31 04:26:15.380504'),(14,'auth','0009_alter_user_last_name_max_length','2019-03-31 04:26:15.432057'),(15,'mama_cas','0001_initial','2019-03-31 04:26:15.844021'),(16,'sessions','0001_initial','2019-03-31 04:26:15.874436'),(17,'user_info','0001_initial','2019-03-31 04:26:16.077016'),(18,'user_info','0002_auto_20190331_0443','2019-03-31 04:43:25.618124');
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
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mama_cas_proxygrantingticket`
--

DROP TABLE IF EXISTS `mama_cas_proxygrantingticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mama_cas_proxygrantingticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `consumed` datetime(6) DEFAULT NULL,
  `iou` varchar(255) NOT NULL,
  `granted_by_pt_id` int(11) DEFAULT NULL,
  `granted_by_st_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket` (`ticket`),
  UNIQUE KEY `iou` (`iou`),
  KEY `mama_cas_proxygranti_granted_by_pt_id_50beb4d3_fk_mama_cas_` (`granted_by_pt_id`),
  KEY `mama_cas_proxygranti_granted_by_st_id_1e50e8a5_fk_mama_cas_` (`granted_by_st_id`),
  KEY `mama_cas_proxygrantingticket_user_id_21745880_fk_auth_user_id` (`user_id`),
  CONSTRAINT `mama_cas_proxygranti_granted_by_pt_id_50beb4d3_fk_mama_cas_` FOREIGN KEY (`granted_by_pt_id`) REFERENCES `mama_cas_proxyticket` (`id`),
  CONSTRAINT `mama_cas_proxygranti_granted_by_st_id_1e50e8a5_fk_mama_cas_` FOREIGN KEY (`granted_by_st_id`) REFERENCES `mama_cas_serviceticket` (`id`),
  CONSTRAINT `mama_cas_proxygrantingticket_user_id_21745880_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mama_cas_proxygrantingticket`
--

LOCK TABLES `mama_cas_proxygrantingticket` WRITE;
/*!40000 ALTER TABLE `mama_cas_proxygrantingticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `mama_cas_proxygrantingticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mama_cas_proxyticket`
--

DROP TABLE IF EXISTS `mama_cas_proxyticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mama_cas_proxyticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `consumed` datetime(6) DEFAULT NULL,
  `service` varchar(255) NOT NULL,
  `granted_by_pgt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket` (`ticket`),
  KEY `mama_cas_proxyticket_granted_by_pgt_id_001e3782_fk_mama_cas_` (`granted_by_pgt_id`),
  KEY `mama_cas_proxyticket_user_id_01b00e10_fk_auth_user_id` (`user_id`),
  CONSTRAINT `mama_cas_proxyticket_granted_by_pgt_id_001e3782_fk_mama_cas_` FOREIGN KEY (`granted_by_pgt_id`) REFERENCES `mama_cas_proxygrantingticket` (`id`),
  CONSTRAINT `mama_cas_proxyticket_user_id_01b00e10_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mama_cas_proxyticket`
--

LOCK TABLES `mama_cas_proxyticket` WRITE;
/*!40000 ALTER TABLE `mama_cas_proxyticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `mama_cas_proxyticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mama_cas_serviceticket`
--

DROP TABLE IF EXISTS `mama_cas_serviceticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mama_cas_serviceticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `consumed` datetime(6) DEFAULT NULL,
  `service` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket` (`ticket`),
  KEY `mama_cas_serviceticket_user_id_f6589ff3_fk_auth_user_id` (`user_id`),
  CONSTRAINT `mama_cas_serviceticket_user_id_f6589ff3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mama_cas_serviceticket`
--

LOCK TABLES `mama_cas_serviceticket` WRITE;
/*!40000 ALTER TABLE `mama_cas_serviceticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `mama_cas_serviceticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_groupkind`
--

DROP TABLE IF EXISTS `user_info_groupkind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info_groupkind` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(4) NOT NULL,
  `fullName` varchar(32) NOT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `shortName` (`shortName`),
  UNIQUE KEY `fullName` (`fullName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_groupkind`
--

LOCK TABLES `user_info_groupkind` WRITE;
/*!40000 ALTER TABLE `user_info_groupkind` DISABLE KEYS */;
INSERT INTO `user_info_groupkind` VALUES (1,'Tech','technology'),(2,'Des','design'),(3,'Mark','market'),(4,'Spon','sponsor'),(5,'Med','media'),(6,'Mane','maneuver'),(7,'CA','conference affairs'),(8,'Pend','pending');
/*!40000 ALTER TABLE `user_info_groupkind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_lang`
--

DROP TABLE IF EXISTS `user_info_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info_lang` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `langCode` varchar(8) NOT NULL,
  `cname` varchar(64) NOT NULL,
  PRIMARY KEY (`lid`),
  UNIQUE KEY `langCode` (`langCode`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_lang`
--

LOCK TABLES `user_info_lang` WRITE;
/*!40000 ALTER TABLE `user_info_lang` DISABLE KEYS */;
INSERT INTO `user_info_lang` VALUES (1,'af','南非语'),(4,'af-ZA','南非语'),(5,'ar','阿拉伯语'),(6,'ar-AE','阿拉伯语(阿联酋)'),(7,'ar-BH','阿拉伯语(巴林)'),(8,'ar-DZ','阿拉伯语(阿尔及利亚)'),(9,'ar-EG','阿拉伯语(埃及)'),(10,'ar-IQ','阿拉伯语(伊拉克)'),(11,'ar-JO','阿拉伯语(约旦)'),(12,'ar-KW','阿拉伯语(科威特)'),(13,'ar-LB','阿拉伯语(黎巴嫩)'),(14,'ar-LY','阿拉伯语(利比亚)'),(15,'ar-MA','阿拉伯语(摩洛哥)'),(16,'ar-OM','阿拉伯语(阿曼)'),(17,'ar-QA','阿拉伯语(卡塔尔)'),(18,'ar-SA','阿拉伯语(沙特阿拉伯)'),(19,'ar-SY','阿拉伯语(叙利亚)'),(20,'ar-TN','阿拉伯语(突尼斯)'),(21,'ar-YE','阿拉伯语(也门)'),(22,'az','阿塞拜疆语'),(23,'az-AZ','阿塞拜疆语(拉丁文)'),(25,'be','比利时语'),(26,'be-BY','比利时语'),(27,'bg','保加利亚语'),(28,'bg-BG','保加利亚语'),(29,'bs-BA','波斯尼亚语(拉丁文，波斯尼亚和黑塞哥维那)'),(30,'ca','加泰隆语'),(31,'ca-ES','加泰隆语'),(32,'cs','捷克语'),(33,'cs-CZ','捷克语'),(34,'cy','威尔士语'),(35,'cy-GB','威尔士语'),(36,'da','丹麦语'),(37,'da-DK','丹麦语'),(38,'de','德语'),(39,'de-AT','德语(奥地利)'),(40,'de-CH','德语(瑞士)'),(41,'de-DE','德语(德国)'),(42,'de-LI','德语(列支敦士登)'),(43,'de-LU','德语(卢森堡)'),(44,'dv','第维埃语'),(45,'dv-MV','第维埃语'),(46,'el','希腊语'),(47,'el-GR','希腊语'),(48,'en','英语'),(49,'en-AU','英语(澳大利亚)'),(50,'en-BZ','英语(伯利兹)'),(51,'en-CA','英语(加拿大)'),(52,'en-CB','英语(加勒比海)'),(53,'en-GB','英语(英国)'),(54,'en-IE','英语(爱尔兰)'),(55,'en-JM','英语(牙买加)'),(56,'en-NZ','英语(新西兰)'),(57,'en-PH','英语(菲律宾)'),(58,'en-TT','英语(特立尼达)'),(59,'en-US','英语(美国)'),(60,'en-ZA','英语(南非)'),(61,'en-ZW','英语(津巴布韦)'),(62,'eo','世界语'),(63,'es','西班牙语'),(64,'es-AR','西班牙语(阿根廷)'),(65,'es-BO','西班牙语(玻利维亚)'),(66,'es-CL','西班牙语(智利)'),(67,'es-CO','西班牙语(哥伦比亚)'),(68,'es-CR','西班牙语(哥斯达黎加)'),(69,'es-DO','西班牙语(多米尼加共和国)'),(70,'es-EC','西班牙语(厄瓜多尔)'),(71,'es-ES','西班牙语(传统)'),(73,'es-GT','西班牙语(危地马拉)'),(74,'es-HN','西班牙语(洪都拉斯)'),(75,'es-MX','西班牙语(墨西哥)'),(76,'es-NI','西班牙语(尼加拉瓜)'),(77,'es-PA','西班牙语(巴拿马)'),(78,'es-PE','西班牙语(秘鲁)'),(79,'es-PR','西班牙语(波多黎各(美))'),(80,'es-PY','西班牙语(巴拉圭)'),(81,'es-SV','西班牙语(萨尔瓦多)'),(82,'es-UY','西班牙语(乌拉圭)'),(83,'es-VE','西班牙语(委内瑞拉)'),(84,'et','爱沙尼亚语'),(85,'et-EE','爱沙尼亚语'),(86,'eu','巴士克语'),(87,'eu-ES','巴士克语'),(88,'fa','法斯语'),(89,'fa-IR','法斯语'),(90,'fi','芬兰语'),(91,'fi-FI','芬兰语'),(92,'fo','法罗语'),(93,'fo-FO','法罗语'),(94,'fr','法语'),(95,'fr-BE','法语(比利时)'),(96,'fr-CA','法语(加拿大)'),(97,'fr-CH','法语(瑞士)'),(98,'fr-FR','法语(法国)'),(99,'fr-LU','法语(卢森堡)'),(100,'fr-MC','法语(摩纳哥)'),(101,'gl','加里西亚语'),(102,'gl-ES','加里西亚语'),(103,'gu','古吉拉特语'),(104,'gu-IN','古吉拉特语'),(105,'he','希伯来语'),(106,'he-IL','希伯来语'),(107,'hi','印地语'),(108,'hi-IN','印地语'),(109,'hr','克罗地亚语'),(110,'hr-BA','克罗地亚语(波斯尼亚和黑塞哥维那)'),(111,'hr-HR','克罗地亚语'),(112,'hu','匈牙利语'),(113,'hu-HU','匈牙利语'),(114,'hy','亚美尼亚语'),(115,'hy-AM','亚美尼亚语'),(116,'id','印度尼西亚语'),(117,'id-ID','印度尼西亚语'),(118,'is','冰岛语'),(119,'is-IS','冰岛语'),(120,'it','意大利语'),(121,'it-CH','意大利语(瑞士)'),(122,'it-IT','意大利语(意大利)'),(123,'ja','日语'),(124,'ja-JP','日语'),(125,'ka','格鲁吉亚语'),(126,'ka-GE','格鲁吉亚语'),(127,'kk','哈萨克语'),(128,'kk-KZ','哈萨克语'),(129,'kn','卡纳拉语'),(130,'kn-IN','卡纳拉语'),(131,'ko','朝鲜语'),(132,'ko-KR','朝鲜语'),(133,'kok','孔卡尼语'),(134,'kok-IN','孔卡尼语'),(135,'ky','吉尔吉斯语'),(136,'ky-KG','吉尔吉斯语(西里尔文)'),(137,'lt','立陶宛语'),(138,'lt-LT','立陶宛语'),(139,'lv','拉脱维亚语'),(140,'lv-LV','拉脱维亚语'),(141,'mi','毛利语'),(142,'mi-NZ','毛利语'),(143,'mk','马其顿语'),(144,'mk-MK','马其顿语(FYROM)'),(145,'mn','蒙古语'),(146,'mn-MN','蒙古语(西里尔文)'),(147,'mr','马拉地语'),(148,'mr-IN','马拉地语'),(149,'ms','马来语'),(150,'ms-BN','马来语(文莱达鲁萨兰)'),(151,'ms-MY','马来语(马来西亚)'),(152,'mt','马耳他语'),(153,'mt-MT','马耳他语'),(154,'nb','挪威语(伯克梅尔)'),(155,'nb-NO','挪威语(伯克梅尔)(挪威)'),(156,'nl','荷兰语'),(157,'nl-BE','荷兰语(比利时)'),(158,'nl-NL','荷兰语(荷兰)'),(159,'nn-NO','挪威语(尼诺斯克)(挪威)'),(160,'ns','北梭托语'),(161,'ns-ZA','北梭托语'),(162,'pa','旁遮普语'),(163,'pa-IN','旁遮普语'),(164,'pl','波兰语'),(165,'pl-PL','波兰语'),(166,'pt','葡萄牙语'),(167,'pt-BR','葡萄牙语(巴西)'),(168,'pt-PT','葡萄牙语(葡萄牙)'),(169,'qu','克丘亚语'),(170,'qu-BO','克丘亚语(玻利维亚)'),(171,'qu-EC','克丘亚语(厄瓜多尔)'),(172,'qu-PE','克丘亚语(秘鲁)'),(173,'ro','罗马尼亚语'),(174,'ro-RO','罗马尼亚语'),(175,'ru','俄语'),(176,'ru-RU','俄语'),(177,'sa','梵文'),(178,'sa-IN','梵文'),(179,'se','北萨摩斯语'),(180,'se-FI','北萨摩斯语(芬兰)'),(183,'se-NO','北萨摩斯语(挪威)'),(186,'se-SE','北萨摩斯语(瑞典)'),(189,'sk','斯洛伐克语'),(190,'sk-SK','斯洛伐克语'),(191,'sl','斯洛文尼亚语'),(192,'sl-SI','斯洛文尼亚语'),(193,'sq','阿尔巴尼亚语'),(194,'sq-AL','阿尔巴尼亚语'),(195,'sr-BA','塞尔维亚语(拉丁文，波斯尼亚和黑塞哥维那)'),(197,'sr-SP','塞尔维亚(拉丁)'),(199,'sv','瑞典语'),(200,'sv-FI','瑞典语(芬兰)'),(201,'sv-SE','瑞典语'),(202,'sw','斯瓦希里语'),(203,'sw-KE','斯瓦希里语'),(204,'syr','叙利亚语'),(205,'syr-SY','叙利亚语'),(206,'ta','泰米尔语'),(207,'ta-IN','泰米尔语'),(208,'te','泰卢固语'),(209,'te-IN','泰卢固语'),(210,'th','泰语'),(211,'th-TH','泰语'),(212,'tl','塔加路语'),(213,'tl-PH','塔加路语(菲律宾)'),(214,'tn','茨瓦纳语'),(215,'tn-ZA','茨瓦纳语'),(216,'tr','土耳其语'),(217,'tr-TR','土耳其语'),(218,'ts','宗加语'),(219,'tt','鞑靼语'),(220,'tt-RU','鞑靼语'),(221,'uk','乌克兰语'),(222,'uk-UA','乌克兰语'),(223,'ur','乌都语'),(224,'ur-PK','乌都语'),(225,'uz','乌兹别克语'),(226,'uz-UZ','乌兹别克语(拉丁文)'),(228,'vi','越南语'),(229,'vi-VN','越南语'),(230,'xh','班图语'),(231,'xh-ZA','班图语'),(232,'zh','中文'),(233,'zh-CN','中文(简体)'),(234,'zh-HK','中文(香港)'),(235,'zh-MO','中文(澳门)'),(236,'zh-SG','中文(新加坡)'),(237,'zh-TW','中文(繁体)'),(238,'zu','祖鲁语'),(239,'zu-ZA','祖鲁语');
/*!40000 ALTER TABLE `user_info_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_skill`
--

DROP TABLE IF EXISTS `user_info_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info_skill` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(32) NOT NULL,
  `desciption` longtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sname` (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_skill`
--

LOCK TABLES `user_info_skill` WRITE;
/*!40000 ALTER TABLE `user_info_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_user`
--

DROP TABLE IF EXISTS `user_info_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(64) NOT NULL,
  `nickname` varchar(64) NOT NULL,
  `userSex` varchar(6) NOT NULL,
  `userPhoto` varchar(1000) NOT NULL,
  `skill` varchar(32) NOT NULL,
  `email` varchar(320) NOT NULL,
  `description` varchar(72) NOT NULL,
  `groupKind_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `userId` (`userId`),
  KEY `user_info_user_groupKind_id_533b7d28_fk_user_info_groupkind_kid` (`groupKind_id`),
  KEY `user_info_user_lang_id_b6b1596e_fk_user_info_lang_lid` (`lang_id`),
  CONSTRAINT `user_info_user_groupKind_id_533b7d28_fk_user_info_groupkind_kid` FOREIGN KEY (`groupKind_id`) REFERENCES `user_info_groupkind` (`kid`),
  CONSTRAINT `user_info_user_lang_id_b6b1596e_fk_user_info_lang_lid` FOREIGN KEY (`lang_id`) REFERENCES `user_info_lang` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_user`
--

LOCK TABLES `user_info_user` WRITE;
/*!40000 ALTER TABLE `user_info_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-31 12:53:46
