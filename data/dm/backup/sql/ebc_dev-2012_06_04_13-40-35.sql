-- MySQL dump 10.13  Distrib 5.1.39, for apple-darwin10.4.1 (i386)
--
-- Host: localhost    Database: ebc_prod
-- ------------------------------------------------------
-- Server version	5.1.39

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
-- Table structure for table `dm_area`
--

DROP TABLE IF EXISTS `dm_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dm_layout_id` bigint(20) DEFAULT NULL,
  `dm_page_view_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dm_layout_id_idx` (`dm_layout_id`),
  KEY `dm_page_view_id_idx` (`dm_page_view_id`),
  CONSTRAINT `dm_area_dm_layout_id_dm_layout_id` FOREIGN KEY (`dm_layout_id`) REFERENCES `dm_layout` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dm_area_dm_page_view_id_dm_page_view_id` FOREIGN KEY (`dm_page_view_id`) REFERENCES `dm_page_view` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_area`
--

LOCK TABLES `dm_area` WRITE;
/*!40000 ALTER TABLE `dm_area` DISABLE KEYS */;
INSERT INTO `dm_area` VALUES (1,NULL,2,'1'),(2,NULL,3,'1'),(3,1,NULL,'top'),(4,1,NULL,'left'),(5,NULL,1,'content'),(6,1,NULL,'right'),(7,1,NULL,'bottom'),(8,NULL,1,'media'),(9,NULL,1,'content_top'),(10,1,NULL,'content_before'),(11,NULL,1,'content_bottom'),(12,1,NULL,'ft_top'),(13,1,NULL,'ft_bottom'),(14,1,NULL,'ft_content'),(15,NULL,2,'media'),(16,NULL,2,'content_top'),(17,NULL,2,'content'),(18,NULL,2,'content_bottom'),(19,NULL,4,'media'),(20,NULL,4,'content_top'),(21,NULL,4,'content'),(22,NULL,4,'content_bottom'),(23,NULL,5,'media'),(24,NULL,5,'content_top'),(25,NULL,5,'content'),(26,NULL,5,'content_bottom');
/*!40000 ALTER TABLE `dm_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_auto_seo`
--

DROP TABLE IF EXISTS `dm_auto_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_auto_seo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dmAutoSeoModuleAction_idx` (`module`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_auto_seo`
--

LOCK TABLES `dm_auto_seo` WRITE;
/*!40000 ALTER TABLE `dm_auto_seo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_auto_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_auto_seo_translation`
--

DROP TABLE IF EXISTS `dm_auto_seo_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_auto_seo_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `h1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `strip_words` text COLLATE utf8_unicode_ci,
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `dm_auto_seo_translation_id_dm_auto_seo_id` FOREIGN KEY (`id`) REFERENCES `dm_auto_seo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_auto_seo_translation`
--

LOCK TABLES `dm_auto_seo_translation` WRITE;
/*!40000 ALTER TABLE `dm_auto_seo_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_auto_seo_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_catalogue`
--

DROP TABLE IF EXISTS `dm_catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_catalogue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source_lang` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `target_lang` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_catalogue`
--

LOCK TABLES `dm_catalogue` WRITE;
/*!40000 ALTER TABLE `dm_catalogue` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_error`
--

DROP TABLE IF EXISTS `dm_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_error` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `php_class` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `module` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `env` varchar(63) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_error`
--

LOCK TABLES `dm_error` WRITE;
/*!40000 ALTER TABLE `dm_error` DISABLE KEYS */;
INSERT INTO `dm_error` VALUES (1,'Doctrine_Connection_Mysql_Exception','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'d.first_name\' in \'field list\'','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'d.first_name\' in \'field list\'\n#0 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/plugins/sfDoctrinePlugin/lib/vendor/doctrine/Doctrine/Connection/Statement.php(269): Doctrine_Connection->rethrowException(Object(PDOException), Object(Doctrine_Connection_Statement))\n#1 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/plugins/sfDoctrinePlugin/lib/vendor/doctrine/Doctrine/Connection.php(1006): Doctrine_Connection_Statement->execute(Array)\n#2 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/plugins/sfDoctrinePlugin/lib/vendor/doctrine/Doctrine/Query/Abstract.php(976): Doctrine_Connection->execute(\'SELECT d.id AS ...\', Array)\n#3 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/plugins/sfDoctrinePlugin/lib/vendor/doctrine/Doctrine/Query/Abstract.php(1026): Doctrine_Query_Abstract->_execute(Array)\n#4 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/plugins/sfDoctrinePlugin/lib/vendor/doctrine/Doctrine/Query.php(281): Doctrine_Query_Abstract->execute(Array, 2)\n#5 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/lib/doctrine/query/dmDoctrineQuery.php(283): Doctrine_Query->fetchOne(Array, 2)\n#6 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/lib/model/doctrine/PluginDmUserTable.class.php(52): dmDoctrineQuery->fetchRecord()\n#7 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/lib/user/dmSecurityUser.class.php(265): PluginDmUserTable->findOneById(\'1\')\n#8 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/lib/user/dmSecurityUser.class.php(41): dmSecurityUser->getUser()\n#9 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/lib/user/dmSecurityUser.class.php(176): dmSecurityUser->setAuthenticated(true)\n#10 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/modules/dmUserAdmin/lib/BasedmUserAdminActions.class.php(50): dmSecurityUser->signIn(Object(DmUser), true)\n#11 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(459): BasedmUserAdminActions->executeSignin(Object(dmWebRequest))\n#12 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(947): sfActions->execute(Object(dmWebRequest))\n#13 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(942): sfExecutionFilter->executeAction(Object(dmUserAdminActions))\n#14 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(928): sfExecutionFilter->handleAction(Object(sfFilterChain), Object(dmUserAdminActions))\n#15 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(1026): sfExecutionFilter->execute(Object(sfFilterChain))\n#16 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/filter/sfCacheFilter.class.php(65): sfFilterChain->execute()\n#17 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(1026): sfCacheFilter->execute(Object(sfFilterChain))\n#18 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmAdminPlugin/lib/filter/dmAdminInitFilter.php(32): sfFilterChain->execute()\n#19 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(1026): dmAdminInitFilter->execute(Object(sfFilterChain))\n#20 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/lib/dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#21 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(1026): dmRememberMeFilter->execute(Object(sfFilterChain))\n#22 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(990): sfFilterChain->execute()\n#23 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(1026): sfRenderingFilter->execute(Object(sfFilterChain))\n#24 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(660): sfFilterChain->execute()\n#25 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/admin/prod/config/config_core_compile.yml.php(2344): sfController->forward(\'dmUserAdmin\', \'signin\')\n#26 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/lib/context/dmContext.php(280): sfFrontWebController->dispatch()\n#27 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/web/admin.php(7): dmContext->dispatch()\n#28 {main}','dmUserAdmin','signin','http://ebc.pdev/admin.php/security/signin','prod','2012-05-24 19:22:23'),(2,'dmException','There is no setting called \"fb_page_id_prop\". Available settings are : base_urls, ga_key, ga_token, gwt_key, image_resize_method, image_resize_quality, link_current_span, link_external_blank, link_use_page_title, search_stop_words, site_active, site_index','There is no setting called \"fb_page_id_prop\". Available settings are : base_urls, ga_key, ga_token, gwt_key, image_resize_method, image_resize_quality, link_current_span, link_external_blank, link_use_page_title, search_stop_words, site_active, site_indexable, site_name, site_working_copy, smart_404, title_prefix, title_suffix, xiti_code\n#0 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/apps/front/lib/ocdFrontLayoutHelper.php(63): dmConfig::get(\'fb_page_id_prop\')\n#1 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/apps/front/lib/ocdFrontLayoutHelper.php(14): ocdFrontLayoutHelper->getMetas()\n#2 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/lib/view/html/layout/dmCoreLayoutHelper.php(33): ocdFrontLayoutHelper->renderMetas()\n#3 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/apps/front/modules/dmFront/templates/layout.php(10): dmCoreLayoutHelper->renderHead()\n#4 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(3819): require(\'/Users/jrmy/Sit...\')\n#5 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(3854): sfPHPView->renderFile(\'/Users/jrmy/Sit...\')\n#6 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(3886): sfPHPView->decorate(\'?<div id=\"dm_pa...\')\n#7 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(974): sfPHPView->render()\n#8 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(961): sfExecutionFilter->executeView(\'dmFront\', \'page\', \'Success\', Array)\n#9 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(929): sfExecutionFilter->handleView(Object(sfFilterChain), Object(dmFrontActions), \'Success\')\n#10 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(1026): sfExecutionFilter->execute(Object(sfFilterChain))\n#11 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/symfony/lib/filter/sfCacheFilter.class.php(65): sfFilterChain->execute()\n#12 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(1026): sfCacheFilter->execute(Object(sfFilterChain))\n#13 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmFrontPlugin/lib/filter/dmFrontInitFilter.php(34): sfFilterChain->execute()\n#14 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(1026): dmFrontInitFilter->execute(Object(sfFilterChain))\n#15 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/plugins/dmUserPlugin/lib/dmRememberMeFilter.class.php(56): sfFilterChain->execute()\n#16 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(1026): dmRememberMeFilter->execute(Object(sfFilterChain))\n#17 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(990): sfFilterChain->execute()\n#18 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(1026): sfRenderingFilter->execute(Object(sfFilterChain))\n#19 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(660): sfFilterChain->execute()\n#20 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/cache/front/prod/config/config_core_compile.yml.php(2344): sfController->forward(\'dmFront\', \'page\')\n#21 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/lib/context/dmContext.php(280): sfFrontWebController->dispatch()\n#22 /Users/jrmy/Sites/clients/envision_building_company/ebc_dm/web/index.php(7): dmContext->dispatch()\n#23 {main}','dmFront','page','http://ebc.pdev/index.php/about','prod','2012-05-31 14:55:57');
/*!40000 ALTER TABLE `dm_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_group`
--

DROP TABLE IF EXISTS `dm_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_group`
--

LOCK TABLES `dm_group` WRITE;
/*!40000 ALTER TABLE `dm_group` DISABLE KEYS */;
INSERT INTO `dm_group` VALUES (1,'developer','Able to read and update source code','2012-05-24 13:33:12','2012-05-24 13:33:12'),(2,'seo','Seo knowledge','2012-05-24 13:33:12','2012-05-24 13:33:12'),(3,'integrator','Integrator','2012-05-24 13:33:12','2012-05-24 13:33:12'),(4,'webmaster 1','Webmaster level 1','2012-05-24 13:33:12','2012-05-24 13:33:12'),(5,'writer','Writer','2012-05-24 13:33:12','2012-05-24 13:33:12'),(6,'front_editor','Can fast edit front widgets','2012-05-24 13:33:12','2012-05-24 13:33:12');
/*!40000 ALTER TABLE `dm_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_group_permission`
--

DROP TABLE IF EXISTS `dm_group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_group_permission` (
  `dm_group_id` bigint(20) NOT NULL DEFAULT '0',
  `dm_permission_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dm_group_id`,`dm_permission_id`),
  KEY `dm_group_permission_dm_permission_id_dm_permission_id` (`dm_permission_id`),
  CONSTRAINT `dm_group_permission_dm_group_id_dm_group_id` FOREIGN KEY (`dm_group_id`) REFERENCES `dm_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dm_group_permission_dm_permission_id_dm_permission_id` FOREIGN KEY (`dm_permission_id`) REFERENCES `dm_permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_group_permission`
--

LOCK TABLES `dm_group_permission` WRITE;
/*!40000 ALTER TABLE `dm_group_permission` DISABLE KEYS */;
INSERT INTO `dm_group_permission` VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(3,5),(3,9),(4,9),(5,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(6,16),(6,17),(6,18),(6,19),(6,20),(6,21),(6,22),(3,23),(3,24),(3,25),(2,26),(3,26),(4,26),(5,26),(3,27),(4,27),(5,27),(3,28),(2,29),(3,29),(4,29),(5,29),(2,30),(3,30),(4,30),(3,31),(4,31),(2,32),(3,32),(4,32),(2,33),(3,33),(4,33),(5,33),(3,34),(3,35),(2,36),(2,37),(2,38),(2,40),(2,41),(2,42),(2,43),(2,44),(4,46),(2,47),(3,47),(4,47),(5,47),(2,48),(3,48),(4,48),(5,48),(2,51),(3,51),(4,51),(3,52),(4,52),(3,53),(3,57);
/*!40000 ALTER TABLE `dm_group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_layout`
--

DROP TABLE IF EXISTS `dm_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_layout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_layout`
--

LOCK TABLES `dm_layout` WRITE;
/*!40000 ALTER TABLE `dm_layout` DISABLE KEYS */;
INSERT INTO `dm_layout` VALUES (1,'Global','page',NULL);
/*!40000 ALTER TABLE `dm_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_lock`
--

DROP TABLE IF EXISTS `dm_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_lock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL,
  `app` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `culture` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dmLockIndex_idx` (`user_id`,`module`,`action`,`record_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `dm_lock_user_id_dm_user_id` FOREIGN KEY (`user_id`) REFERENCES `dm_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_lock`
--

LOCK TABLES `dm_lock` WRITE;
/*!40000 ALTER TABLE `dm_lock` DISABLE KEYS */;
INSERT INTO `dm_lock` VALUES (4,1,'admin','dmSetting','index',0,1338573400,'admin','/admin.php/system/configuration/settings/index','en');
/*!40000 ALTER TABLE `dm_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_mail_template`
--

DROP TABLE IF EXISTS `dm_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_mail_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vars` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_mail_template`
--

LOCK TABLES `dm_mail_template` WRITE;
/*!40000 ALTER TABLE `dm_mail_template` DISABLE KEYS */;
INSERT INTO `dm_mail_template` VALUES (1,'dm_user_forgot_password','username, email, step2_url','2012-05-24 13:33:13','2012-05-24 13:33:13');
/*!40000 ALTER TABLE `dm_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_mail_template_translation`
--

DROP TABLE IF EXISTS `dm_mail_template_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_mail_template_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `from_email` text COLLATE utf8_unicode_ci NOT NULL,
  `to_email` text COLLATE utf8_unicode_ci,
  `cc_email` text COLLATE utf8_unicode_ci,
  `bcc_email` text COLLATE utf8_unicode_ci,
  `reply_to_email` text COLLATE utf8_unicode_ci,
  `sender_email` text COLLATE utf8_unicode_ci,
  `list_unsuscribe` text COLLATE utf8_unicode_ci,
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `dm_mail_template_translation_id_dm_mail_template_id` FOREIGN KEY (`id`) REFERENCES `dm_mail_template` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_mail_template_translation`
--

LOCK TABLES `dm_mail_template_translation` WRITE;
/*!40000 ALTER TABLE `dm_mail_template_translation` DISABLE KEYS */;
INSERT INTO `dm_mail_template_translation` VALUES (1,'Sent to a user that requests a new password','Ebc dm: change your password','Hello %username%\nYou can choose a new password at %step2_url%','webmaster@domain.com','%email%',NULL,NULL,NULL,NULL,NULL,0,1,'en');
/*!40000 ALTER TABLE `dm_mail_template_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_media`
--

DROP TABLE IF EXISTS `dm_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_media` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dm_media_folder_id` bigint(20) NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legend` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(63) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  `dimensions` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `folderFile_idx` (`dm_media_folder_id`,`file`),
  KEY `dm_media_folder_id_idx` (`dm_media_folder_id`),
  CONSTRAINT `dm_media_dm_media_folder_id_dm_media_folder_id` FOREIGN KEY (`dm_media_folder_id`) REFERENCES `dm_media_folder` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_media`
--

LOCK TABLES `dm_media` WRITE;
/*!40000 ALTER TABLE `dm_media` DISABLE KEYS */;
INSERT INTO `dm_media` VALUES (1,3,'logo.png','','','','image/png',28013,'124x163','2012-05-31 13:24:42','2012-05-31 13:24:42');
/*!40000 ALTER TABLE `dm_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_media_folder`
--

DROP TABLE IF EXISTS `dm_media_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_media_folder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rel_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rel_path` (`rel_path`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_media_folder`
--

LOCK TABLES `dm_media_folder` WRITE;
/*!40000 ALTER TABLE `dm_media_folder` DISABLE KEYS */;
INSERT INTO `dm_media_folder` VALUES (1,'',1,6,0),(2,'assets',2,5,1),(3,'assets/brand',3,4,2);
/*!40000 ALTER TABLE `dm_media_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_page`
--

DROP TABLE IF EXISTS `dm_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `credentials` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recordModuleAction_idx` (`module`,`action`,`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_page`
--

LOCK TABLES `dm_page` WRITE;
/*!40000 ALTER TABLE `dm_page` DISABLE KEYS */;
INSERT INTO `dm_page` VALUES (1,'main','root',0,NULL,1,10,0),(2,'main','error404',0,NULL,4,5,1),(3,'main','signin',0,NULL,2,3,1),(4,'main','about',0,NULL,6,7,1),(5,'main','services',0,NULL,8,9,1);
/*!40000 ALTER TABLE `dm_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_page_translation`
--

DROP TABLE IF EXISTS `dm_page_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_page_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_mod` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'snthdk',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_indexable` tinyint(1) NOT NULL DEFAULT '1',
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `dm_page_translation_id_dm_page_id` FOREIGN KEY (`id`) REFERENCES `dm_page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_page_translation`
--

LOCK TABLES `dm_page_translation` WRITE;
/*!40000 ALTER TABLE `dm_page_translation` DISABLE KEYS */;
INSERT INTO `dm_page_translation` VALUES (1,'','Home','Home',NULL,NULL,NULL,'snthdk',1,0,1,'en'),(2,'error404','Page not found','Page not found',NULL,NULL,NULL,'snthdk',1,0,1,'en'),(3,'security/signin','Signin','Signin',NULL,NULL,NULL,'snthdk',1,0,1,'en'),(4,'about','About','About',NULL,NULL,NULL,'snthdk',1,0,1,'en'),(5,'services','Services','Services',NULL,NULL,NULL,'snthdk',1,0,1,'en');
/*!40000 ALTER TABLE `dm_page_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_page_view`
--

DROP TABLE IF EXISTS `dm_page_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_page_view` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `dm_layout_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dmPageViewModuleAction_idx` (`module`,`action`),
  KEY `dm_layout_id_idx` (`dm_layout_id`),
  CONSTRAINT `dm_page_view_dm_layout_id_dm_layout_id` FOREIGN KEY (`dm_layout_id`) REFERENCES `dm_layout` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_page_view`
--

LOCK TABLES `dm_page_view` WRITE;
/*!40000 ALTER TABLE `dm_page_view` DISABLE KEYS */;
INSERT INTO `dm_page_view` VALUES (1,'main','root',1),(2,'main','error404',1),(3,'main','signin',1),(4,'main','about',1),(5,'main','services',1);
/*!40000 ALTER TABLE `dm_page_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_permission`
--

DROP TABLE IF EXISTS `dm_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_permission`
--

LOCK TABLES `dm_permission` WRITE;
/*!40000 ALTER TABLE `dm_permission` DISABLE KEYS */;
INSERT INTO `dm_permission` VALUES (1,'system','System administrator','2012-05-24 13:33:12','2012-05-24 13:33:12'),(2,'admin','Log into administration','2012-05-24 13:33:12','2012-05-24 13:33:12'),(3,'clear_cache','Clear the cache','2012-05-24 13:33:12','2012-05-24 13:33:12'),(4,'log','Manage logs','2012-05-24 13:33:12','2012-05-24 13:33:12'),(5,'code_editor','Use admin and front code editors','2012-05-24 13:33:12','2012-05-24 13:33:12'),(6,'security_user','Manage security users','2012-05-24 13:33:12','2012-05-24 13:33:12'),(7,'security_permission','Manage security permissions','2012-05-24 13:33:12','2012-05-24 13:33:12'),(8,'security_group','Manage security groups','2012-05-24 13:33:12','2012-05-24 13:33:12'),(9,'content','CRUD dynamic content in admin','2012-05-24 13:33:12','2012-05-24 13:33:12'),(10,'zone_add','Add zones','2012-05-24 13:33:12','2012-05-24 13:33:12'),(11,'zone_edit','Edit zones','2012-05-24 13:33:12','2012-05-24 13:33:12'),(12,'zone_delete','Delete zones','2012-05-24 13:33:12','2012-05-24 13:33:12'),(13,'widget_add','Add widgets','2012-05-24 13:33:12','2012-05-24 13:33:12'),(14,'widget_edit','Edit widgets','2012-05-24 13:33:12','2012-05-24 13:33:12'),(15,'widget_delete','Delete widgets','2012-05-24 13:33:12','2012-05-24 13:33:12'),(16,'widget_edit_fast','Can fast edit widgets','2012-05-24 13:33:12','2012-05-24 13:33:12'),(17,'widget_edit_fast_record','Fast edit widget record','2012-05-24 13:33:12','2012-05-24 13:33:12'),(18,'widget_edit_fast_content_title','Fast edit widget content title','2012-05-24 13:33:12','2012-05-24 13:33:12'),(19,'widget_edit_fast_content_link','Fast edit widget content link','2012-05-24 13:33:12','2012-05-24 13:33:12'),(20,'widget_edit_fast_content_image','Fast edit widget content image','2012-05-24 13:33:12','2012-05-24 13:33:12'),(21,'widget_edit_fast_content_text','Fast edit widget content text','2012-05-24 13:33:12','2012-05-24 13:33:12'),(22,'widget_edit_fast_navigation_menu','Fast edit widget navigation menu','2012-05-24 13:33:12','2012-05-24 13:33:12'),(23,'page_add','Add pages','2012-05-24 13:33:12','2012-05-24 13:33:12'),(24,'page_edit','Edit pages','2012-05-24 13:33:12','2012-05-24 13:33:12'),(25,'page_delete','Delete pages','2012-05-24 13:33:12','2012-05-24 13:33:12'),(26,'page_bar_admin','See page bar in admin','2012-05-24 13:33:12','2012-05-24 13:33:12'),(27,'media_bar_admin','See media bar in admin','2012-05-24 13:33:12','2012-05-24 13:33:12'),(28,'media_library','Use media library in admin','2012-05-24 13:33:12','2012-05-24 13:33:12'),(29,'tool_bar_admin','See toolbar in admin','2012-05-24 13:33:12','2012-05-24 13:33:12'),(30,'page_bar_front','See page bar in front','2012-05-24 13:33:12','2012-05-24 13:33:12'),(31,'media_bar_front','See media bar in front','2012-05-24 13:33:12','2012-05-24 13:33:12'),(32,'tool_bar_front','See toolbar in front','2012-05-24 13:33:12','2012-05-24 13:33:12'),(33,'site_view','See non-public website and inactive pages','2012-05-24 13:33:12','2012-05-24 13:33:12'),(34,'loremize','Create automatic random content','2012-05-24 13:33:12','2012-05-24 13:33:12'),(35,'export_table','Export table contents','2012-05-24 13:33:12','2012-05-24 13:33:12'),(36,'sitemap','Regenerate sitemap','2012-05-24 13:33:12','2012-05-24 13:33:12'),(37,'automatic_metas','Configure automatic pages metas','2012-05-24 13:33:12','2012-05-24 13:33:12'),(38,'manual_metas','Configure manually pages metas','2012-05-24 13:33:12','2012-05-24 13:33:12'),(39,'manage_pages','Move and sort pages','2012-05-24 13:33:12','2012-05-24 13:33:12'),(40,'url_redirection','Configure url redirections','2012-05-24 13:33:12','2012-05-24 13:33:12'),(41,'use_google_analytics','Use google analytics','2012-05-24 13:33:12','2012-05-24 13:33:12'),(42,'google_analytics','Configure google analytics','2012-05-24 13:33:12','2012-05-24 13:33:12'),(43,'use_google_webmaster_tools','Use google webmaster tools','2012-05-24 13:33:12','2012-05-24 13:33:12'),(44,'google_webmaster_tools','Configure google webmaster tools','2012-05-24 13:33:12','2012-05-24 13:33:12'),(45,'xiti','Configure Xiti','2012-05-24 13:33:12','2012-05-24 13:33:12'),(46,'search_engine','Manage internal search engine','2012-05-24 13:33:12','2012-05-24 13:33:12'),(47,'see_log','See the logs','2012-05-24 13:33:12','2012-05-24 13:33:12'),(48,'see_chart','See the charts','2012-05-24 13:33:12','2012-05-24 13:33:12'),(49,'see_diagrams','See the developer diagrams','2012-05-24 13:33:12','2012-05-24 13:33:12'),(50,'see_server','See the server infos','2012-05-24 13:33:12','2012-05-24 13:33:12'),(51,'config_panel','Use the configuration panel','2012-05-24 13:33:12','2012-05-24 13:33:12'),(52,'translation','Use the translation interface','2012-05-24 13:33:12','2012-05-24 13:33:12'),(53,'layout','Use the layout interface','2012-05-24 13:33:12','2012-05-24 13:33:12'),(54,'sent_mail','See mails sent by server','2012-05-24 13:33:12','2012-05-24 13:33:12'),(55,'mail_template','Configure mail templates','2012-05-24 13:33:12','2012-05-24 13:33:12'),(56,'error_log','See error log','2012-05-24 13:33:12','2012-05-24 13:33:12'),(57,'interface_settings','Manage interface settings like default image resize method','2012-05-24 13:33:12','2012-05-24 13:33:12');
/*!40000 ALTER TABLE `dm_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_redirect`
--

DROP TABLE IF EXISTS `dm_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_redirect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_redirect`
--

LOCK TABLES `dm_redirect` WRITE;
/*!40000 ALTER TABLE `dm_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_remember_key`
--

DROP TABLE IF EXISTS `dm_remember_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_remember_key` (
  `dm_user_id` bigint(20) DEFAULT NULL,
  `remember_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`ip_address`),
  KEY `dm_user_id_idx` (`dm_user_id`),
  CONSTRAINT `dm_remember_key_dm_user_id_dm_user_id` FOREIGN KEY (`dm_user_id`) REFERENCES `dm_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_remember_key`
--

LOCK TABLES `dm_remember_key` WRITE;
/*!40000 ALTER TABLE `dm_remember_key` DISABLE KEYS */;
INSERT INTO `dm_remember_key` VALUES (1,'0ae733750cc1ab17830f1c00edcfa2fe','127.0.0.1','2012-05-31 11:57:45');
/*!40000 ALTER TABLE `dm_remember_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_sent_mail`
--

DROP TABLE IF EXISTS `dm_sent_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_sent_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dm_mail_template_id` bigint(20) DEFAULT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `from_email` text COLLATE utf8_unicode_ci NOT NULL,
  `to_email` text COLLATE utf8_unicode_ci,
  `cc_email` text COLLATE utf8_unicode_ci,
  `bcc_email` text COLLATE utf8_unicode_ci,
  `reply_to_email` text COLLATE utf8_unicode_ci,
  `sender_email` text COLLATE utf8_unicode_ci,
  `strategy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `culture` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debug_string` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dm_mail_template_id_idx` (`dm_mail_template_id`),
  CONSTRAINT `dm_sent_mail_dm_mail_template_id_dm_mail_template_id` FOREIGN KEY (`dm_mail_template_id`) REFERENCES `dm_mail_template` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_sent_mail`
--

LOCK TABLES `dm_sent_mail` WRITE;
/*!40000 ALTER TABLE `dm_sent_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_sent_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_setting`
--

DROP TABLE IF EXISTS `dm_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `params` text COLLATE utf8_unicode_ci,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `credentials` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_setting`
--

LOCK TABLES `dm_setting` WRITE;
/*!40000 ALTER TABLE `dm_setting` DISABLE KEYS */;
INSERT INTO `dm_setting` VALUES (1,'site_name','text',NULL,'site',NULL),(2,'site_active','boolean',NULL,'site',NULL),(3,'site_indexable','boolean',NULL,'site',NULL),(4,'site_working_copy','boolean',NULL,'site',NULL),(5,'ga_key','text',NULL,'tracking','google_analytics'),(6,'ga_token','text',NULL,'internal','google_analytics'),(7,'gwt_key','text',NULL,'tracking','google_webmaster_tools'),(8,'xiti_code','textarea',NULL,'tracking','xiti'),(9,'search_stop_words','textarea',NULL,'search engine','search_engine'),(10,'base_urls','textarea',NULL,'internal','system'),(11,'image_resize_method','select','fit=Fit scale=Scale inflate=Inflate top=Top right=Right left=Left bottom=Bottom center=Center','interface','interface_settings'),(12,'image_resize_quality','number',NULL,'interface','interface_settings'),(13,'link_external_blank','boolean',NULL,'interface','interface_settings'),(14,'link_current_span','boolean',NULL,'interface','interface_settings'),(15,'link_use_page_title','boolean',NULL,'interface','interface_settings'),(16,'title_prefix','text',NULL,'seo','manual_metas'),(17,'title_suffix','text',NULL,'seo','manual_metas'),(18,'smart_404','boolean',NULL,'seo','url_redirection'),(19,'fb_page_id_prop','text','','Facebook','Facebook Insights');
/*!40000 ALTER TABLE `dm_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_setting_translation`
--

DROP TABLE IF EXISTS `dm_setting_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_setting_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `default_value` text COLLATE utf8_unicode_ci,
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `dm_setting_translation_id_dm_setting_id` FOREIGN KEY (`id`) REFERENCES `dm_setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_setting_translation`
--

LOCK TABLES `dm_setting_translation` WRITE;
/*!40000 ALTER TABLE `dm_setting_translation` DISABLE KEYS */;
INSERT INTO `dm_setting_translation` VALUES (1,'The site name','Ebc dm','Ebc dm','en'),(2,'Is the site ready for visitors ?','1','1','en'),(3,'Is the site ready for search engine crawlers ?','1','1','en'),(4,'Is this site the current working copy ?','1','1','en'),(5,'The google analytics key without javascript stuff ( e.g. UA-9876614-1 )',NULL,'','en'),(6,'Auth token gor Google Analytics, computed from password',NULL,'','en'),(7,'The google webmaster tools filename without google and .html ( e.g. a913b555ba9b4f13 )',NULL,'','en'),(8,'The xiti html code',NULL,'','en'),(9,'Words to exclude from searches (e.g. the, a, to )',NULL,'','en'),(10,'Diem base urls for different applications/environments/cultures','{\"front-prod\":\"http:\\/\\/ebc.pdev\\/index.php\",\"admin-prod\":\"http:\\/\\/ebc.pdev\\/admin.php\"}','','en'),(11,'Default method when an image needs to be resized','center','center','en'),(12,'Jpeg default quality when generating thumbnails','95','95','en'),(13,'Links to other domain get automatically a _blank target',NULL,'0','en'),(14,'Links to current page are changed from <a> to <span>','1','1','en'),(15,'Add an automatic title on link based on the target page title','1','1','en'),(16,'Append something at the beginning of all pages title',NULL,'','en'),(17,'Append something at the end of all pages title',' | Ebc dm',' | Ebc dm','en'),(18,'When a page is not found, user is redirect to a similar page. The internal search index is used to find the best page for requested url.','1','1','en'),(19,'Meta tag for the Facebook Insights','','','en');
/*!40000 ALTER TABLE `dm_setting_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_trans_unit`
--

DROP TABLE IF EXISTS `dm_trans_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_trans_unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dm_catalogue_id` bigint(20) NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `target` text COLLATE utf8_unicode_ci NOT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dm_catalogue_id_idx` (`dm_catalogue_id`),
  CONSTRAINT `dm_trans_unit_dm_catalogue_id_dm_catalogue_id` FOREIGN KEY (`dm_catalogue_id`) REFERENCES `dm_catalogue` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_trans_unit`
--

LOCK TABLES `dm_trans_unit` WRITE;
/*!40000 ALTER TABLE `dm_trans_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_trans_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_user`
--

DROP TABLE IF EXISTS `dm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `algorithm` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sha1',
  `salt` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_super_admin` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `forgot_password_code` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `forgot_password_code` (`forgot_password_code`),
  KEY `is_active_idx_idx` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_user`
--

LOCK TABLES `dm_user` WRITE;
/*!40000 ALTER TABLE `dm_user` DISABLE KEYS */;
INSERT INTO `dm_user` VALUES (1,'admin','admin@ebc_dm.com','sha1','e34ea6a19fadb2b30740d4925d1f51f8','36a620f779e95ecac8dcd627db952bc41537bda1',1,1,'2012-06-01 13:34:18',NULL,'2012-05-24 13:33:12','2012-05-24 13:33:12');
/*!40000 ALTER TABLE `dm_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_user_group`
--

DROP TABLE IF EXISTS `dm_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_user_group` (
  `dm_user_id` bigint(20) NOT NULL DEFAULT '0',
  `dm_group_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dm_user_id`,`dm_group_id`),
  KEY `dm_user_group_dm_group_id_dm_group_id` (`dm_group_id`),
  CONSTRAINT `dm_user_group_dm_group_id_dm_group_id` FOREIGN KEY (`dm_group_id`) REFERENCES `dm_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dm_user_group_dm_user_id_dm_user_id` FOREIGN KEY (`dm_user_id`) REFERENCES `dm_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_user_group`
--

LOCK TABLES `dm_user_group` WRITE;
/*!40000 ALTER TABLE `dm_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_user_permission`
--

DROP TABLE IF EXISTS `dm_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_user_permission` (
  `dm_user_id` bigint(20) NOT NULL DEFAULT '0',
  `dm_permission_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dm_user_id`,`dm_permission_id`),
  KEY `dm_user_permission_dm_permission_id_dm_permission_id` (`dm_permission_id`),
  CONSTRAINT `dm_user_permission_dm_permission_id_dm_permission_id` FOREIGN KEY (`dm_permission_id`) REFERENCES `dm_permission` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dm_user_permission_dm_user_id_dm_user_id` FOREIGN KEY (`dm_user_id`) REFERENCES `dm_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_user_permission`
--

LOCK TABLES `dm_user_permission` WRITE;
/*!40000 ALTER TABLE `dm_user_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_widget`
--

DROP TABLE IF EXISTS `dm_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_widget` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dm_zone_id` bigint(20) NOT NULL,
  `module` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dm_zone_id_idx` (`dm_zone_id`),
  CONSTRAINT `dm_widget_dm_zone_id_dm_zone_id` FOREIGN KEY (`dm_zone_id`) REFERENCES `dm_zone` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_widget`
--

LOCK TABLES `dm_widget` WRITE;
/*!40000 ALTER TABLE `dm_widget` DISABLE KEYS */;
INSERT INTO `dm_widget` VALUES (1,1,'dmWidgetContent','title',NULL,-1,'2012-05-24 13:33:13'),(2,2,'dmUser','signin',NULL,-2,'2012-05-24 13:33:13'),(3,14,'dmWidgetContent','text','',1,'2012-05-24 19:30:09'),(5,3,'dmWidgetContent','text','',2,'2012-05-31 13:43:33'),(9,15,'dmWidgetNavigation','menu','',1,'2012-05-31 14:48:01');
/*!40000 ALTER TABLE `dm_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_widget_translation`
--

DROP TABLE IF EXISTS `dm_widget_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_widget_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `dm_widget_translation_id_dm_widget_id` FOREIGN KEY (`id`) REFERENCES `dm_widget` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_widget_translation`
--

LOCK TABLES `dm_widget_translation` WRITE;
/*!40000 ALTER TABLE `dm_widget_translation` DISABLE KEYS */;
INSERT INTO `dm_widget_translation` VALUES (1,'{\"text\":\"Page not found\",\"tag\":\"h1\"}','en'),(2,'[]','en'),(3,'{\"title\":\"\",\"text\":\"Copyright &copy; 2012 - Envision Building Company, LLC\",\"mediaId\":null,\"titleLink\":\"\",\"mediaLink\":\"\",\"titlePosition\":\"outside\",\"width\":\"\",\"height\":\"\",\"legend\":\"\",\"method\":\"center\",\"background\":\"FFFFFF\",\"quality\":null}','en'),(5,'{\"title\":\"\",\"text\":\"![Envision Building Company Logo](media:1 .logo)\\n\\n## Envision <br \\/> <span>Building Company, LLC<\\/span>\\n\\n### Licensed <span>and<\\/span> Insured\",\"mediaId\":null,\"titleLink\":\"\",\"mediaLink\":\"\",\"titlePosition\":\"outside\",\"width\":\"\",\"height\":\"\",\"legend\":\"\",\"method\":\"center\",\"background\":\"FFFFFF\",\"quality\":null}','en'),(9,'{\"ulId\":\"\",\"ulClass\":\"menu clearfix\",\"liClass\":\"\",\"menuClass\":\"ocdMenu\",\"items\":[{\"link\":\"page:1\",\"text\":\"Home\",\"secure\":0,\"nofollow\":0,\"depth\":\"0\"},{\"link\":\"page:4\",\"text\":\"About\",\"secure\":0,\"nofollow\":0,\"depth\":\"0\"},{\"link\":\"page:5\",\"text\":\"Services\",\"secure\":0,\"nofollow\":0,\"depth\":\"0\"}]}','en');
/*!40000 ALTER TABLE `dm_widget_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dm_zone`
--

DROP TABLE IF EXISTS `dm_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_zone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dm_area_id` bigint(20) NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dm_area_id_idx` (`dm_area_id`),
  CONSTRAINT `dm_zone_dm_area_id_dm_area_id` FOREIGN KEY (`dm_area_id`) REFERENCES `dm_area` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dm_zone`
--

LOCK TABLES `dm_zone` WRITE;
/*!40000 ALTER TABLE `dm_zone` DISABLE KEYS */;
INSERT INTO `dm_zone` VALUES (1,1,NULL,NULL,-1),(2,2,NULL,NULL,-2),(3,3,'brand clearfix','',1),(4,4,NULL,NULL,-4),(5,5,NULL,NULL,-5),(6,6,NULL,NULL,-6),(7,7,NULL,NULL,-7),(8,8,NULL,NULL,-8),(9,9,NULL,NULL,-9),(10,10,NULL,NULL,-10),(11,11,NULL,NULL,-11),(12,12,NULL,NULL,-12),(13,13,NULL,NULL,-13),(14,14,NULL,NULL,-14),(15,3,NULL,NULL,2),(16,15,NULL,NULL,-15),(17,16,NULL,NULL,-16),(18,17,NULL,NULL,-17),(19,18,NULL,NULL,-18),(20,19,NULL,NULL,-19),(21,20,NULL,NULL,-20),(22,21,NULL,NULL,-21),(23,22,NULL,NULL,-22),(24,23,NULL,NULL,-23),(25,24,NULL,NULL,-24),(26,25,NULL,NULL,-25),(27,26,NULL,NULL,-26);
/*!40000 ALTER TABLE `dm_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-04 10:40:35
