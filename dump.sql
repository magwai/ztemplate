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
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cconf`
--

LOCK TABLES `cconf` WRITE;
/*!40000 ALTER TABLE `cconf` DISABLE KEYS */;
/*!40000 ALTER TABLE `cconf` ENABLE KEYS */;
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
INSERT INTO `cmenu` VALUES (6,'Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹',0,15,'page',2,'','','1'),(7,'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸',13,8,'cconf',3,'','','1'),(8,'Ð£Ñ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¸',13,9,'',3,'','','1'),(9,'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸',8,10,'cuser',3,'','','1'),(10,'Ð Ð¾Ð»Ð¸',8,11,'crole',3,'','','1'),(11,'Ð ÐµÑÑƒÑ€ÑÑ‹',8,12,'cresource',3,'','','1'),(12,'ÐŸÑ€Ð°Ð²Ð¸Ð»Ð°',8,13,'crule',3,'','','1'),(13,'ÐŸÐ°Ð½ÐµÐ»ÑŒ',0,14,'',3,'','','1'),(14,'ÐœÐµÐ½ÑŽ',13,15,'cmenu',3,'','','1'),(24,'Ð˜Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹Ñ',0,26,'txt',2,'','','1'),(34,'uhiuhg',NULL,36,'',1,'','','1');
/*!40000 ALTER TABLE `cmenu` ENABLE KEYS */;
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
INSERT INTO `cresource` VALUES (1,'ÐŸÐ°Ð½ÐµÐ»ÑŒ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ','ctl',0),(2,'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÑÐºÐ¸Ðµ Ñ€Ð°Ð·Ð´ÐµÐ»Ñ‹','',1),(3,'ÐÐ´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€ÑÐºÐ¸Ðµ Ñ€Ð°Ð·Ð´ÐµÐ»Ñ‹','admin',1);
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
INSERT INTO `cuser` VALUES (2,'administrator','6fbeb80e433b0a05920c1e3a4d1dcbe91749c4bf',2,''),(3,'admin','6fbeb80e433b0a05920c1e3a4d1dcbe91749c4bf',3,'');
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-01-11 23:29:26
