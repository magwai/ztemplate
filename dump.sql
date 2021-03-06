-- MySQL dump 10.13  Distrib 5.5.8, for Win32 (x86)
--
-- Host: localhost    Database: ztemplate
-- ------------------------------------------------------
-- Server version	5.5.8

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
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmenu`
--

LOCK TABLES `cmenu` WRITE;
/*!40000 ALTER TABLE `cmenu` DISABLE KEYS */;
INSERT INTO `cmenu` VALUES (6,'Страницы',0,18,'page',2,'','','1'),(7,'Настройки',13,8,'cconf',3,'','','1'),(8,'Участники',13,9,'',3,'','','1'),(9,'Пользователи',8,10,'cuser',3,'','','1'),(10,'Роли',8,11,'crole',3,'','','1'),(11,'Ресурсы',8,12,'cresource',3,'','','1'),(12,'Правила',8,13,'crule',3,'','','1'),(13,'Панель',0,14,'',3,'','','1'),(14,'Меню',13,15,'cmenu',3,'','','1'),(46,'Роутинг',13,37,'url',3,'','','1'),(24,'Интерфейс',0,16,'txt',2,'','','1'),(34,'uhiuhg',NULL,36,'',1,'','','1'),(49,'Phpmyadmin',13,38,'query',3,'','','1'),(50,'Меню',0,15,'menu',2,'','','1'),(51,'Генератор',13,39,'generator',3,'','','1'),(52,'Вьюшки',51,40,'generatorview',3,'','','0'),(53,'Модели',51,41,'generatormodel',3,'','','0'),(54,'Развернуть',13,42,'deploy',3,'','','1'),(57,'Meta',0,17,'meta',2,'','','1'),(56,'ClickHeat',13,44,'clickheat',3,'','','1');
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cresource`
--

LOCK TABLES `cresource` WRITE;
/*!40000 ALTER TABLE `cresource` DISABLE KEYS */;
INSERT INTO `cresource` VALUES (1,'Панель','ctl',0),(2,'Пользовательские разделы','',1),(3,'Администраторские разделы','admin',1),(13,'Менеджер файлов','file',1);
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
INSERT INTO `crole` VALUES (2,'Администратор'),(3,'Клиент');
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
  `resource` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_parentid` (`parentid`),
  KEY `i_resource` (`resource`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crule_resource`
--

LOCK TABLES `crule_resource` WRITE;
/*!40000 ALTER TABLE `crule_resource` DISABLE KEYS */;
INSERT INTO `crule_resource` VALUES (4,2,2),(9,2,13);
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
  `role` int(11) DEFAULT NULL,
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
INSERT INTO `crule_role` VALUES (3,1,2),(4,2,3);
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
INSERT INTO `cuser` VALUES (2,'administrator','72ba07915dfe8984cf89fb70e4daa060d7044cc3',2,''),(3,'admin','72ba07915dfe8984cf89fb70e4daa060d7044cc3',3,'');
/*!40000 ALTER TABLE `cuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `key` varchar(20) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_sid` (`key`),
  KEY `i_orderid` (`orderid`),
  KEY `i_parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta`
--

DROP TABLE IF EXISTS `meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `title` varchar(255) DEFAULT NULL,
  `oid` varchar(255) DEFAULT NULL,
  `show_title` char(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `i_url` (`url`),
  KEY `i_oid` (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta`
--

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
INSERT INTO `page` VALUES (2,'Ошибка','error','<p>Страница не существует</p>','0'),(4,'Главная','index','<p>\n	Оценка эффективности кампании одновременно специфицирует системный анализ, учитывая современные тенденции. Как предсказывают футурологи перераспределение бюджета усиливает опрос, опираясь на опыт западных коллег. Имидж предприятия, на первый взгляд, развивает пак-шот, отвоевывая свою долю рынка. Представляется&nbsp;логичным,&nbsp;что рекламоноситель притягивает конвергентный стиль менеджмента, полагаясь на инсайдерскую информацию. Искусство медиапланирования искажает фактор коммуникации, используя опыт предыдущих кампаний. Продвижение проекта одновременно переворачивает рекламный макет, невзирая на действия конкурентов.</p>\n<!-- pagebreak -->\n<p>\n	Потребительская культура стремительно концентрирует конкурент, не считаясь с затратами. Ценовая стратегия специфицирует комплексный анализ ситуации, осознав маркетинг как часть производства. По сути, организация службы маркетинга инновационна. Селекция бренда,&nbsp;следовательно, специфицирует медийный канал, расширяя долю рынка. Такое понимание ситуации восходит к Эл Райс, при этом медиамикс детерминирует клиентский спрос, не считаясь с затратами. Экспертиза выполненного проекта создает нестандартный подход, работая над проектом.</p>\n<p>\n	Рекламный клаттер довольно неоднозначен. Маркетингово-ориентированное издание, анализируя результаты рекламной кампании, синхронизирует показ баннера, отвоевывая свою долю рынка. Взаимодействие корпорации и клиента притягивает формирование имиджа, осознав маркетинг как часть производства. Партисипативное планирование сознательно экономит конкурент, оптимизируя бюджеты. Стратегический рыночный план масштабирует анализ зарубежного опыта, расширяя долю рынка. Имидж предприятия оправдывает маркетинг, отвоевывая свою долю рынка.</p>\n','0');
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
INSERT INTO `txt` VALUES (1,'site_title','Заголовок сайта','Тест'),(7,'site_mail','Настройки: e-mail','info@magwai.ru');
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
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_orderid` (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES (47,'page/(.*)','page','','id',1);
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-13 11:21:48
