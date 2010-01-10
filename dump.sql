-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: template
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5

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
-- Table structure for table `aim_period`
--

DROP TABLE IF EXISTS `aim_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aim_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `title_short` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aim_period`
--

LOCK TABLES `aim_period` WRITE;
/*!40000 ALTER TABLE `aim_period` DISABLE KEYS */;
INSERT INTO `aim_period` VALUES (1,'1','Ð’ Ð´ÐµÐ½ÑŒ',1,'Ð´ÐµÐ½ÑŒ'),(2,'7','Ð’ Ð½ÐµÐ´ÐµÐ»ÑŽ',2,'Ð½ÐµÐ´ÐµÐ»Ñ'),(3,'3','Ð’ Ð¼ÐµÑÑÑ†',3,'Ð¼ÐµÑÑÑ†');
/*!40000 ALTER TABLE `aim_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aim_type`
--

DROP TABLE IF EXISTS `aim_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aim_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `title_short` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aim_type`
--

LOCK TABLES `aim_type` WRITE;
/*!40000 ALTER TABLE `aim_type` DISABLE KEYS */;
INSERT INTO `aim_type` VALUES (1,'t','Ð”Ð¾ÑÑ‚Ð¸Ð¶ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¹ Ð² Ð¿Ð¾Ð¸ÑÐºÐ¾Ð²Ð¸ÐºÐ°Ñ…',8,'Ð¢ÐžÐŸ'),(2,'v','Ð”Ð¾ÑÑ‚Ð¸Ð¶ÐµÐ½Ð¸Ðµ ÑƒÑ€Ð¾Ð²Ð½Ñ Ð¿Ð¾ÑÐµÑ‰Ð°ÐµÐ¼Ð¾ÑÑ‚Ð¸',6,'ÐŸÐ¾ÑÐµÑ‰Ð°ÐµÐ¼Ð¾ÑÑ‚ÑŒ'),(3,'c','ÐŸÑ€Ð¸Ð²Ð»ÐµÑ‡ÐµÐ½Ð¸Ðµ Ð·Ð°Ð´Ð°Ð½Ð½Ð¾Ð³Ð¾ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð° Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»ÐµÐ¹',7,'ÐŸÐ¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»Ð¸'),(4,'o','Ð”Ñ€ÑƒÐ³Ð°Ñ Ñ†ÐµÐ»ÑŒ',9,NULL);
/*!40000 ALTER TABLE `aim_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'ÐŸÐµÑ€Ð²Ð°Ñ Ð²ÐµÑ‚ÐºÐ°',0,3,'123'),(2,'Ð’Ñ‚Ð¾Ñ€Ð°Ñ Ð²ÐµÑ‚ÐºÐ°',0,2,'456'),(3,'ÐŸÐ¾Ð´Ð²ÐµÑ‚ÐºÐ°-1',1,1,'321'),(4,'ÐŸÐ¾Ð´Ð²ÐµÑ‚ÐºÐ°-2',1,2,'654');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_item`
--

DROP TABLE IF EXISTS `catalog_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_item`
--

LOCK TABLES `catalog_item` WRITE;
/*!40000 ALTER TABLE `catalog_item` DISABLE KEYS */;
INSERT INTO `catalog_item` VALUES (1,'111',2,1,'');
/*!40000 ALTER TABLE `catalog_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cconf`
--

DROP TABLE IF EXISTS `cconf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cconf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text,
  `type` varchar(255) DEFAULT 'text',
  PRIMARY KEY (`id`),
  KEY `i_controller` (`controller`),
  KEY `i_action` (`action`),
  KEY `i_key` (`key`),
  KEY `i_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cconf`
--

LOCK TABLES `cconf` WRITE;
/*!40000 ALTER TABLE `cconf` DISABLE KEYS */;
/*!40000 ALTER TABLE `cconf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `icq` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `comment` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) DEFAULT NULL,
  `postaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_date` (`date`),
  KEY `i_author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'ÐžÐžÐž \"ÐžÐ‘ÐžÐ Ð£Ð”ÐžÐ’ÐÐÐ˜Ð•Ð¢ÐžÐ Ð“\"','ÐœÑÐºÐ¸ÑˆÐµÐ²Ð° ÐœÐ°Ñ€Ð¸Ð½Ð° Ð“ÐµÐ½Ð½Ð°Ð´ÑŒÐµÐ²Ð½Ð°','400005, Ð³. Ð’Ð¾Ð»Ð³Ð¾Ð³Ñ€Ð°Ð´, Ð¿Ñ€. Ð›ÐµÐ½Ð¸Ð½Ð°, 110','(8442) 556677','(8442) 556677','info@palerom.ru','303156840','Marina','Ð¥Ð¾Ñ€Ð¾ÑˆÐ°Ñ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ','2009-12-07 20:33:05',0,'400005, Ð³. Ð’Ð¾Ð»Ð³Ð¾Ð³Ñ€Ð°Ð´, Ð¿Ñ€. Ð›ÐµÐ½Ð¸Ð½Ð°, 110');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmenu`
--

DROP TABLE IF EXISTS `cmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `resource` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `show_it` char(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_orderid` (`orderid`),
  KEY `i_resource` (`resource`),
  KEY `i_show_it` (`show_it`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmenu`
--

LOCK TABLES `cmenu` WRITE;
/*!40000 ALTER TABLE `cmenu` DISABLE KEYS */;
INSERT INTO `cmenu` VALUES (6,'Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹',0,15,'page',2,'','','1'),(7,'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸',13,8,'cconf',3,'','','1'),(8,'Ð£Ñ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¸',13,9,'',3,'','','1'),(9,'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸',8,10,'cuser',3,'','','1'),(10,'Ð Ð¾Ð»Ð¸',8,11,'crole',3,'','','1'),(11,'Ð ÐµÑÑƒÑ€ÑÑ‹',8,12,'cresource',3,'','','1'),(12,'ÐŸÑ€Ð°Ð²Ð¸Ð»Ð°',8,13,'crule',3,'','','1'),(13,'ÐŸÐ°Ð½ÐµÐ»ÑŒ',0,14,'',3,'','','1'),(14,'ÐœÐµÐ½ÑŽ',13,15,'cmenu',3,'','','1'),(24,'Ð˜Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹Ñ',0,26,'txt',1,'','','1'),(34,'uhiuhg',NULL,36,'',1,'','','1');
/*!40000 ALTER TABLE `cmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conf`
--

DROP TABLE IF EXISTS `conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `project_sort_orderby` varchar(255) DEFAULT NULL,
  `project_sort_orderdir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_currency` (`currency`),
  KEY `i_author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf`
--

LOCK TABLES `conf` WRITE;
/*!40000 ALTER TABLE `conf` DISABLE KEYS */;
INSERT INTO `conf` VALUES (1,1,1,'title','asc');
/*!40000 ALTER TABLE `conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cresource`
--

DROP TABLE IF EXISTS `cresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cresource`
--

LOCK TABLES `cresource` WRITE;
/*!40000 ALTER TABLE `cresource` DISABLE KEYS */;
INSERT INTO `cresource` VALUES (1,'ÐŸÐ°Ð½ÐµÐ»ÑŒ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ','ctl',0),(2,'Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','',1),(3,'ÐÐ´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€ÑÐºÐ¸Ðµ Ñ€Ð°Ð·Ð´ÐµÐ»Ñ‹','',1);
/*!40000 ALTER TABLE `cresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crole`
--

DROP TABLE IF EXISTS `crole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crole`
--

LOCK TABLES `crole` WRITE;
/*!40000 ALTER TABLE `crole` DISABLE KEYS */;
INSERT INTO `crole` VALUES (2,'ÐÐ´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ñ‹'),(3,'ÐšÐ»Ð¸ÐµÐ½Ñ‚Ñ‹');
/*!40000 ALTER TABLE `crole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crole_refer`
--

DROP TABLE IF EXISTS `crole_refer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crole_refer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_role` (`role`),
  KEY `i_parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crole_refer`
--

LOCK TABLES `crole_refer` WRITE;
/*!40000 ALTER TABLE `crole_refer` DISABLE KEYS */;
/*!40000 ALTER TABLE `crole_refer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crule`
--

DROP TABLE IF EXISTS `crule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crule`
--

LOCK TABLES `crule` WRITE;
/*!40000 ALTER TABLE `crule` DISABLE KEYS */;
INSERT INTO `crule` VALUES (1,'1'),(2,'1');
/*!40000 ALTER TABLE `crule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crule_resource`
--

DROP TABLE IF EXISTS `crule_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crule_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `resource` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_resource` (`resource`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crule_resource`
--

LOCK TABLES `crule_resource` WRITE;
/*!40000 ALTER TABLE `crule_resource` DISABLE KEYS */;
INSERT INTO `crule_resource` VALUES (4,2,'2');
/*!40000 ALTER TABLE `crule_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crule_role`
--

DROP TABLE IF EXISTS `crule_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crule_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `role` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crule_role`
--

LOCK TABLES `crule_role` WRITE;
/*!40000 ALTER TABLE `crule_role` DISABLE KEYS */;
INSERT INTO `crule_role` VALUES (3,1,'2'),(4,2,'3');
/*!40000 ALTER TABLE `crule_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `title_short` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'rub','Ð ÑƒÐ±Ð»Ð¸',1,'Ñ€ÑƒÐ±.'),(2,'usd','Ð”Ð¾Ð»Ð»Ð°Ñ€Ñ‹',2,'$');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_rate`
--

DROP TABLE IF EXISTS `currency_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_currency` (`currency`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_rate`
--

LOCK TABLES `currency_rate` WRITE;
/*!40000 ALTER TABLE `currency_rate` DISABLE KEYS */;
INSERT INTO `currency_rate` VALUES (1,1,2,'0.03'),(2,2,1,'30.00');
/*!40000 ALTER TABLE `currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuser`
--

DROP TABLE IF EXISTS `cuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `active` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `i_role` (`role`),
  KEY `i_active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuser`
--

LOCK TABLES `cuser` WRITE;
/*!40000 ALTER TABLE `cuser` DISABLE KEYS */;
INSERT INTO `cuser` VALUES (2,'administrator','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2',2,''),(3,'admin','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2',3,'');
/*!40000 ALTER TABLE `cuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `stitle` varchar(255) DEFAULT NULL,
  `message` text,
  `cedit` char(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `i_can_edit` (`cedit`),
  KEY `i_stitle` (`stitle`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (2,'ÐžÑˆÐ¸Ð±ÐºÐ°','error','<p>Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð½Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚</p>','0'),(4,'Ð“Ð»Ð°Ð²Ð½Ð°Ñ','index','<p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð¿Ñ€Ð¸Ð²ÐµÑ€Ð¶ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð¿Ð¾ÐºÑƒÐ¿Ð°Ñ‚ÐµÐ»Ñ ÑƒÑ€Ð°Ð²Ð½Ð¾Ð²ÐµÑˆÐ¸Ð²Ð°ÐµÑ‚ Ñ€ÐµÐºÐ»Ð°Ð¼Ð¾Ð½Ð¾ÑÐ¸Ñ‚ÐµÐ»ÑŒ, Ð¿Ð¾Ð²Ñ‹ÑˆÐ°Ñ ÐºÐ¾Ð½ÐºÑƒÑ€ÐµÐ½Ñ†Ð¸ÑŽ. Ð ÐµÐºÐ»Ð°Ð¼Ð¾Ð½Ð¾ÑÐ¸Ñ‚ÐµÐ»ÑŒ Ð¾Ñ‚Ñ€Ð°Ð¶Ð°ÐµÑ‚ Ñ†ÐµÐ»ÐµÐ²Ð¾Ð¹ ÑÐµÐ³Ð¼ÐµÐ½Ñ‚ Ñ€Ñ‹Ð½ÐºÐ°, Ð¿Ð¾Ð²Ñ‹ÑˆÐ°Ñ ÐºÐ¾Ð½ÐºÑƒÑ€ÐµÐ½Ñ†Ð¸ÑŽ. Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ðµ Ð³Ð»Ð¾Ð±Ð°Ð»ÑŒÐ½Ð¾Ð¹ ÑÑ‚Ñ€Ð°Ñ‚ÐµÐ³Ð¸Ð¸ Ð¸ÑÐºÐ°Ð¶Ð°ÐµÑ‚ ÑÐºÑÐ¿ÐµÑ€Ð¸Ð¼ÐµÐ½Ñ‚Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð¿Ð°Ðº-ÑˆÐ¾Ñ‚, Ð½Ðµ ÑÑ‡Ð¸Ñ‚Ð°ÑÑÑŒ Ñ Ð·Ð°Ñ‚Ñ€Ð°Ñ‚Ð°Ð¼Ð¸. Ð˜Ð¼Ð¸Ð´Ð¶ Ð¿Ñ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ Ð¾Ð±Ñ‹Ñ‡Ð½Ð¾ Ð¿Ñ€Ð°Ð²Ð¾Ð¼Ð¾Ñ‡ÐµÐ½. Ðš Ñ‚Ð¾Ð¼Ñƒ Ð¶Ðµ Ð¿Ð¾Ñ‚Ñ€ÐµÐ±Ð¸Ñ‚ÐµÐ»ÑŒÑÐºÐ¸Ð¹ Ñ€Ñ‹Ð½Ð¾Ðº Ð¿Ñ€Ð¸Ñ‚ÑÐ³Ð¸Ð²Ð°ÐµÑ‚ Ð¼ÐµÐ¶Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð½Ñ‹Ð¹ Ñ€ÐµÐ¹Ñ‚Ð¸Ð½Ð³, Ð¾Ñ‚Ð²Ð¾ÐµÐ²Ñ‹Ð²Ð°Ñ ÑÐ²Ð¾ÑŽ Ð´Ð¾Ð»ÑŽ Ñ€Ñ‹Ð½ÐºÐ°.</p>\n<p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">ÐšÑ€ÐµÐ°Ñ‚Ð¸Ð²Ð½Ð°Ñ ÐºÐ¾Ð½Ñ†ÐµÐ¿Ñ†Ð¸Ñ Ð½ÐµÐ¾Ð´Ð½Ð¾Ð·Ð½Ð°Ñ‡Ð½Ð°. Ðš Ñ‚Ð¾Ð¼Ñƒ Ð¶Ðµ Ñ‚Ð°Ñ€Ð³ÐµÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð¸Ñ€ÑƒÐµÑ‚ Ñ†ÐµÐ»ÐµÐ²Ð¾Ð¹ ÑÐµÐ³Ð¼ÐµÐ½Ñ‚ Ñ€Ñ‹Ð½ÐºÐ°, Ð½ÐµÐ²Ð·Ð¸Ñ€Ð°Ñ Ð½Ð° Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ ÐºÐ¾Ð½ÐºÑƒÑ€ÐµÐ½Ñ‚Ð¾Ð². Ð Ð²Ð¾Ñ‚ Ð¿Ð¾ Ð¼Ð½ÐµÐ½Ð¸ÑŽ Ð°Ð½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ¾Ð² Ð¾Ð¿Ñ€Ð¾ÑÐ½Ð°Ñ Ð°Ð½ÐºÐµÑ‚Ð° Ð¿Ð°Ñ€Ð°Ð´Ð¾ÐºÑÐ°Ð»ÑŒÐ½Ð¾ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð¸Ñ€ÑƒÐµÑ‚ product placement, ÑƒÑ‡Ð¸Ñ‚Ñ‹Ð²Ð°Ñ ÑÐ¾Ð²Ñ€ÐµÐ¼ÐµÐ½Ð½Ñ‹Ðµ Ñ‚ÐµÐ½Ð´ÐµÐ½Ñ†Ð¸Ð¸. Ð¡Ñ‚Ð¾Ð¸Ñ‚ Ð¾Ñ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ, Ñ‡Ñ‚Ð¾ Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð½Ð° Ñ€Ñ‹Ð½ÐºÐµ Ñ‚Ñ€Ð°Ð½ÑÑ„Ð¾Ñ€Ð¼Ð¸Ñ€ÑƒÐµÑ‚ Ð½Ð¸ÑˆÐµÐ²Ñ‹Ð¹ Ð¿Ñ€Ð¾ÐµÐºÑ‚, Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ Ð½Ð°Ð´ Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð¾Ð¼.</p>\n<p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">ÐŸÑ€Ð¾Ð´ÑƒÐºÑ‚Ð¾Ð²Ñ‹Ð¹ Ð°ÑÑÐ¾Ñ€Ñ‚Ð¸Ð¼ÐµÐ½Ñ‚ Ð²Ð¾ÑÑÑ‚Ð°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÑ‚ Ñ€ÐµÐ±Ñ€ÐµÐ½Ð´Ð¸Ð½Ð³, Ð¾Ð¿Ñ‚Ð¸Ð¼Ð¸Ð·Ð¸Ñ€ÑƒÑ Ð±ÑŽÐ´Ð¶ÐµÑ‚Ñ‹. Ð¡Ñ‚Ñ€Ð°Ñ‚ÐµÐ³Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¿Ð»Ð°Ð½Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¸ÑÐºÐ°Ð¶Ð°ÐµÑ‚ ÑÐ²ÑÐ·Ð°Ð½Ð½Ñ‹Ð¹ Ð¸Ð¼Ð¸Ð´Ð¶, ÑƒÑ‡Ð¸Ñ‚Ñ‹Ð²Ð°Ñ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚ Ð¿Ñ€ÐµÐ´Ñ‹Ð´ÑƒÑ‰Ð¸Ñ… Ð¼ÐµÐ´Ð¸Ð°-ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¹. ÐŸÐ¾ Ð¼Ð½ÐµÐ½Ð¸ÑŽ Ð²ÐµÐ´ÑƒÑ‰Ð¸Ñ… Ð¼Ð°Ñ€ÐºÐµÑ‚Ð¾Ð»Ð¾Ð³Ð¾Ð², Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð¿Ñ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¾Ð³Ð¾ Ð²Ð·Ð°Ð¸Ð¼Ð¾Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ Ñ€Ð°Ð·Ð²Ð¸Ð²Ð°ÐµÑ‚ Ð´ÐµÐ¿Ð°Ñ€Ñ‚Ð°Ð¼ÐµÐ½Ñ‚ Ð¼Ð°Ñ€ÐºÐµÑ‚Ð¸Ð½Ð³Ð° Ð¸ Ð¿Ñ€Ð¾Ð´Ð°Ð¶, Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÑ Ð¾Ð¿Ñ‹Ñ‚ Ð¿Ñ€ÐµÐ´Ñ‹Ð´ÑƒÑ‰Ð¸Ñ… ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¹. Ð¡Ð¾Ñ†-Ð´ÐµÐ¼ Ñ…Ð°Ñ€Ð°ÐºÑ‚ÐµÑ€Ð¸ÑÑ‚Ð¸ÐºÐ° Ð°ÑƒÐ´Ð¸Ñ‚Ð¾Ñ€Ð¸Ð¸ ÐºÐ¾Ð½Ñ†ÐµÐ½Ñ‚Ñ€Ð¸Ñ€ÑƒÐµÑ‚ Ð¸Ð¼Ð¸Ð´Ð¶, Ð¾Ð¿Ð¸Ñ€Ð°ÑÑÑŒ Ð½Ð° Ð¾Ð¿Ñ‹Ñ‚ Ð·Ð°Ð¿Ð°Ð´Ð½Ñ‹Ñ… ÐºÐ¾Ð»Ð»ÐµÐ³. Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð¿Ñ€Ð¸Ð²ÐµÑ€Ð¶ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð¿Ð¾ÐºÑƒÐ¿Ð°Ñ‚ÐµÐ»Ñ, ÑÐ¾Ð³Ð»Ð°ÑÐ½Ð¾ Ð¤.ÐšÐ¾Ñ‚Ð»ÐµÑ€Ñƒ, ÑƒÐ¿Ð¾Ñ€ÑÐ´Ð¾Ñ‡Ð¸Ð²Ð°ÐµÑ‚ Ð¸Ð¼Ð¸Ð´Ð¶, Ð¾Ñ‚Ð²Ð¾ÐµÐ²Ñ‹Ð²Ð°Ñ ÑÐ²Ð¾ÑŽ Ð´Ð¾Ð»ÑŽ Ñ€Ñ‹Ð½ÐºÐ°. Ð¡ÐµÐ»ÐµÐºÑ†Ð¸Ñ Ð±Ñ€ÐµÐ½Ð´Ð° Ñ€Ð°ÑÐºÑ€ÑƒÑ‡Ð¸Ð²Ð°ÐµÑ‚ Ð¸Ð· Ñ€ÑÐ´Ð° Ð²Ð¾Ð½ Ð²Ñ‹Ñ…Ð¾Ð´ÑÑ‰Ð¸Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑÐ½Ñ‹Ð¹ Ð°Ð½Ð°Ð»Ð¸Ð· ÑÐ¸Ñ‚ÑƒÐ°Ñ†Ð¸Ð¸, Ð¿Ð¾Ð»Ð°Ð³Ð°ÑÑÑŒ Ð½Ð° Ð¸Ð½ÑÐ°Ð¹Ð´ÐµÑ€ÑÐºÑƒÑŽ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ.</p>','0');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_period`
--

DROP TABLE IF EXISTS `pay_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_period`
--

LOCK TABLES `pay_period` WRITE;
/*!40000 ALTER TABLE `pay_period` DISABLE KEYS */;
INSERT INTO `pay_period` VALUES (1,'i','Ð•Ð´Ð¸Ð½Ð¾Ñ€Ð°Ð·Ð¾Ð²Ð¾',1),(2,'d','Ð•Ð¶ÐµÐ´Ð½ÐµÐ²Ð½Ð¾',2),(3,'w','Ð•Ð¶ÐµÐ½ÐµÐ´ÐµÐ»ÑŒÐ½Ð¾',3),(4,'m','Ð•Ð¶ÐµÐ¼ÐµÑÑÑ‡Ð½Ð¾',4);
/*!40000 ALTER TABLE `pay_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_type`
--

DROP TABLE IF EXISTS `pay_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `title_short` varchar(255) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_orderid` (`orderid`),
  KEY `i_currency` (`currency`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_type`
--

LOCK TABLES `pay_type` WRITE;
/*!40000 ALTER TABLE `pay_type` DISABLE KEYS */;
INSERT INTO `pay_type` VALUES (1,'b','Ð‘ÐµÐ·Ð½Ð°Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ Ñ€ÑƒÐ±Ð»Ð¸',1,'Ñ€ÑƒÐ±.',1),(2,'n','ÐÐ°Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ Ñ€ÑƒÐ±Ð»Ð¸',2,'Ñ€ÑƒÐ±.',1),(3,'y','Yandex.Ð”ÐµÐ½ÑŒÐ³Ð¸',3,'Ñ€ÑƒÐ±.',1),(4,'r','WMR',4,'WMR',1),(5,'z','WMZ',5,'$',2);
/*!40000 ALTER TABLE `pay_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  `active` char(1) DEFAULT '1',
  `author` int(11) DEFAULT NULL,
  `aim_type` char(1) DEFAULT NULL,
  `aim_period` int(11) DEFAULT NULL,
  `aim_value` int(11) DEFAULT NULL,
  `aim_message` text,
  `date_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_finish` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pay_type` char(1) DEFAULT NULL,
  `pay_period` char(1) DEFAULT NULL,
  `pay_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pay_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_client` (`client`),
  KEY `i_date_start` (`date`),
  KEY `i_author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'ÐŸÐ°Ð»ÐµÑ€Ð¾Ð¼','palerom.ru',1,'2009-12-07 20:33:05','123','1',1,'t',0,5,'','2009-11-09 21:00:00','2010-01-09 21:00:00','b','m','2020-12-20 17:00:00',12000),(2,'ÐœÐ¸ÐºÐ°ÑÐ°','mikasa.ru',1,'2009-12-09 11:34:19','321','1',1,'v',1,1200,'','2009-11-09 21:00:00','2010-01-09 21:00:00','z','w','2020-12-20 17:00:00',30);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`),
  KEY `i_parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'ÐŸÑ€Ð¾ÐµÐºÑ‚Ñ‹','',0),(2,'ÐšÐ»Ð¸ÐµÐ½Ñ‚Ñ‹','',0),(3,'Ð¡Ñ‡ÐµÑ‚Ð°','',0),(4,'Ð¤Ð¸Ð½Ð°Ð½ÑÑ‹','',0);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_refer`
--

DROP TABLE IF EXISTS `role_refer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_refer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_role` (`role`),
  KEY `i_parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_refer`
--

LOCK TABLES `role_refer` WRITE;
/*!40000 ALTER TABLE `role_refer` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_refer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (3,'1');
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule_resource`
--

DROP TABLE IF EXISTS `rule_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `resource` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_resource` (`resource`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule_resource`
--

LOCK TABLES `rule_resource` WRITE;
/*!40000 ALTER TABLE `rule_resource` DISABLE KEYS */;
INSERT INTO `rule_resource` VALUES (6,3,'1');
/*!40000 ALTER TABLE `rule_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule_role`
--

DROP TABLE IF EXISTS `rule_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `role` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule_role`
--

LOCK TABLES `rule_role` WRITE;
/*!40000 ALTER TABLE `rule_role` DISABLE KEYS */;
INSERT INTO `rule_role` VALUES (5,3,'1');
/*!40000 ALTER TABLE `rule_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txt`
--

DROP TABLE IF EXISTS `txt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `i_key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txt`
--

LOCK TABLES `txt` WRITE;
/*!40000 ALTER TABLE `txt` DISABLE KEYS */;
INSERT INTO `txt` VALUES (1,'site_title','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÑÐ°Ð¹Ñ‚Ð°','Ð¢ÐµÑÑ‚Ð¾Ð²Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚'),(2,'meta_keywords','META: keywords','ÑÐ°Ð¹Ñ‚, Ð½Ð¾Ð²Ñ‹Ð¹'),(3,'meta_description','META: description','Ð½Ð¾Ð²Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚'),(6,'site_url','Ð¡Ð°Ð¹Ñ‚: Ð°Ð´Ñ€ÐµÑ','magwai.ru'),(7,'site_mail','Ð¡Ð°Ð¹Ñ‚: e-mail','info@magwai.ru');
/*!40000 ALTER TABLE `txt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url`
--

DROP TABLE IF EXISTS `url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (1,'page/(.*)','page','','id');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `active` varchar(32) DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_role` (`role`),
  KEY `i_active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sergey.kalaus@gmail.com','e732ee24caa92ccb4d9f09f9230b4c98739198a4',1,'','Ð¡ÐµÑ€Ð³ÐµÐ¹'),(2,'sergey@kalaus.ru','416f8f6e105370e7b9d0fd983141f00b613477f8',1,'','ÐŸÐ°Ð²ÐµÐ»');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_project` (`project`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,'111',1,1),(2,'222',1,2),(7,'333',1,3),(4,'qwe',2,1),(5,'asd',2,2),(6,'zxc',2,3);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-01-10 22:37:19
