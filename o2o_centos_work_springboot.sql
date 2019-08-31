-- MySQL dump 10.13  Distrib 5.5.40, for Win64 (x86)
--
-- Host: localhost    Database: o2o
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `tb_area`
--

DROP TABLE IF EXISTS `tb_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_area` (
  `area_id` int(2) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(200) NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `UK_AREA` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_area`
--

LOCK TABLES `tb_area` WRITE;
/*!40000 ALTER TABLE `tb_area` DISABLE KEYS */;
INSERT INTO `tb_area` VALUES (4,'东苑',1,'2019-08-16 00:28:57','2019-08-16 00:29:06'),(5,'西苑',2,'2019-08-14 00:29:12','2019-08-24 00:29:15'),(6,'北苑',3,'2019-08-13 00:29:20','2019-08-16 00:29:23'),(7,'南苑',4,'2019-08-05 00:30:11','2019-08-16 00:30:17');
/*!40000 ALTER TABLE `tb_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_award`
--

DROP TABLE IF EXISTS `tb_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_award` (
  `award_id` int(10) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `award_desc` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `award_img` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(10) NOT NULL DEFAULT '0',
  `priority` int(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `shop_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`award_id`),
  KEY `fk_award_shop_idx` (`shop_id`),
  CONSTRAINT `fk_award_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_award`
--

LOCK TABLES `tb_award` WRITE;
/*!40000 ALTER TABLE `tb_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_head_line`
--

DROP TABLE IF EXISTS `tb_head_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_head_line` (
  `line_id` int(100) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(1000) DEFAULT NULL,
  `line_link` varchar(2000) NOT NULL,
  `priority` int(2) NOT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `line_img` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_head_line`
--

LOCK TABLES `tb_head_line` WRITE;
/*!40000 ALTER TABLE `tb_head_line` DISABLE KEYS */;
INSERT INTO `tb_head_line` VALUES (1,'购物','',1,1,'2019-08-16 00:21:33','2019-08-16 00:21:37','/upload1/item/headtitle/headtitle1.jpg'),(2,'游泳','',2,1,'2019-08-14 15:18:04','2019-08-16 15:18:07','/upload1/item/headtitle/2017061320393452772.jpg'),(3,'饮品','',2,1,'2019-08-14 15:19:26','2019-08-16 15:19:29','/upload1/item/headtitle/2017061320371786788.jpg'),(4,'超市','',2,1,'2019-08-14 15:19:36','2019-08-16 15:19:39','/upload1/item/headtitle/2017061320400198256.jpg');
/*!40000 ALTER TABLE `tb_head_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_local_auth`
--

DROP TABLE IF EXISTS `tb_local_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_local_auth` (
  `local_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`local_auth_id`),
  UNIQUE KEY `uk_local_profile` (`username`),
  KEY `fk_localauth_profile` (`user_id`),
  CONSTRAINT `fk_localauth_profile` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_local_auth`
--

LOCK TABLES `tb_local_auth` WRITE;
/*!40000 ALTER TABLE `tb_local_auth` DISABLE KEYS */;
INSERT INTO `tb_local_auth` VALUES (14,1,'testusername','s06l5bl5s05602ly2syls6556q56sb6e','2019-08-21 11:49:57','2019-08-21 11:49:57');
/*!40000 ALTER TABLE `tb_local_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_person_info`
--

DROP TABLE IF EXISTS `tb_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_person_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `profile_img` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0' COMMENT '0:禁止, 1:允许',
  `user_type` int(2) NOT NULL DEFAULT '1' COMMENT '1代表顾客, 2代表商家, 3代表超级管理员',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_person_info`
--

LOCK TABLES `tb_person_info` WRITE;
/*!40000 ALTER TABLE `tb_person_info` DISABLE KEYS */;
INSERT INTO `tb_person_info` VALUES (1,'测试','test','test','1',1,2,NULL,NULL),(5,'测试一下',NULL,NULL,NULL,1,1,'2019-08-22 06:54:42',NULL),(6,'测试一下',NULL,NULL,NULL,1,1,'2019-08-22 06:56:41',NULL);
/*!40000 ALTER TABLE `tb_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(2000) DEFAULT NULL,
  `img_addr` varchar(2000) DEFAULT '',
  `normal_price` varchar(100) DEFAULT NULL,
  `promotion_price` varchar(100) DEFAULT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `product_category_id` int(11) DEFAULT NULL,
  `shop_id` int(20) NOT NULL DEFAULT '0',
  `point` int(10) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `fk_product_shop` (`shop_id`),
  KEY `fk_product_procate` (`product_category_id`),
  CONSTRAINT `fk_product_procate` FOREIGN KEY (`product_category_id`) REFERENCES `tb_product_category` (`product_category_id`),
  CONSTRAINT `fk_product_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES (3,'矿泉水',NULL,'',NULL,NULL,0,NULL,'2019-08-15 18:05:13',1,NULL,1,0),(5,'正式的商品','正式的商品','\\upload1\\item\\shop\\1\\2019081516482592293.jpg',NULL,NULL,20,'2019-08-14 19:25:46','2019-08-15 18:05:16',0,5,1,0),(6,'第二个产品','test','\\upload1\\item\\shop\\1\\2019081515454136678.jpg','2','1',10,'2019-08-15 15:45:39','2019-08-15 19:28:37',1,16,1,0),(7,'青柠味脉动','好喝到极致','\\upload1\\item\\shop\\1\\2019081515523889611.jpg','6','5',100,'2019-08-15 15:52:38','2019-08-15 19:27:37',1,16,1,0),(8,'可口可乐123','肥宅快乐水','\\upload1\\item\\shop\\1\\2019081517355816366.jpg','70','6',200,'2019-08-15 15:54:11','2019-08-15 17:35:57',1,16,1,0),(9,'Java核心技术','Java core','\\upload1\\item\\shop\\17\\2019081616025182064.jpg','80','90',1,'2019-08-16 16:02:51','2019-08-16 16:02:51',1,26,17,0),(10,'流畅的Python','python','\\upload1\\item\\shop\\17\\2019081616054197187.jpg','56','45',5,'2019-08-16 16:05:41','2019-08-16 16:05:41',1,23,17,0),(11,'洗剪吹经理套餐','lifa','\\upload1\\item\\shop\\18\\2019081616100555766.png','35','32',3,'2019-08-16 16:10:05','2019-08-16 16:10:05',1,28,18,0),(12,'网红奶茶001','one pick','\\upload1\\item\\shop\\19\\2019081616381720085.jpg','30','29.9',100,'2019-08-16 16:38:17','2019-08-16 16:38:17',1,29,19,0),(13,'鲜榨西瓜汁','鲜榨甜西瓜','\\upload1\\item\\shop\\19\\2019081616404811162.jpg','15','12',20,'2019-08-16 16:40:48','2019-08-21 18:27:28',1,32,19,3),(14,'中式8球一小时套餐','桌球质量优','\\upload1\\item\\shop\\23\\2019081815363336556.jpg','40','39',3,'2019-08-18 15:36:33','2019-08-18 15:36:33',1,34,23,0),(15,'大红袍奶茶','好喝','\\upload1\\item\\shop\\24\\2019081816292491069.jpg','30','39',30,'2019-08-18 16:29:24','2019-08-18 16:29:24',1,35,24,0),(16,'鹤顶红奶茶','上等鹤顶红','\\upload1\\item\\shop\\24\\2019082215251143816.png','20','18.8',20,'2019-08-22 07:25:11','2019-08-22 07:25:11',1,35,24,4);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_category`
--

DROP TABLE IF EXISTS `tb_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_category` (
  `product_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category_name` varchar(100) NOT NULL,
  `product_category_desc` varchar(500) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `shop_id` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_category_id`),
  KEY `fk_procate_shop` (`shop_id`),
  CONSTRAINT `fk_procate_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_category`
--

LOCK TABLES `tb_product_category` WRITE;
/*!40000 ALTER TABLE `tb_product_category` DISABLE KEYS */;
INSERT INTO `tb_product_category` VALUES (5,'水果',NULL,0,NULL,NULL,16),(6,'热带水果',NULL,2,NULL,NULL,16),(12,'美国大樱桃',NULL,10,NULL,NULL,16),(16,'饮料',NULL,3,NULL,NULL,1),(17,'洗漱用具',NULL,1,NULL,NULL,1),(22,'纸巾',NULL,2,NULL,NULL,1),(23,'Python',NULL,5,NULL,NULL,17),(24,'Mysql',NULL,4,NULL,NULL,17),(25,'操作系统',NULL,10,NULL,NULL,17),(26,'Java',NULL,20,NULL,NULL,17),(27,'C++',NULL,1,NULL,NULL,17),(28,'经理套餐',NULL,1,NULL,NULL,18),(29,'网红珍珠奶茶',NULL,100,NULL,NULL,19),(30,'咖啡',NULL,3,NULL,NULL,19),(31,'甜品',NULL,5,NULL,NULL,19),(32,'鲜榨',NULL,40,NULL,NULL,19),(33,'尤克里里教学班',NULL,20,NULL,NULL,21),(34,'中式台球',NULL,50,NULL,NULL,23),(35,'奶茶',NULL,10,NULL,NULL,24);
/*!40000 ALTER TABLE `tb_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_img`
--

DROP TABLE IF EXISTS `tb_product_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_img` (
  `product_img_id` int(20) NOT NULL AUTO_INCREMENT,
  `img_addr` varchar(2000) NOT NULL,
  `img_desc` varchar(2000) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `product_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`product_img_id`),
  KEY `fk_proimg_product` (`product_id`),
  CONSTRAINT `fk_proimg_product` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_img`
--

LOCK TABLES `tb_product_img` WRITE;
/*!40000 ALTER TABLE `tb_product_img` DISABLE KEYS */;
INSERT INTO `tb_product_img` VALUES (17,'\\upload1\\item\\shop\\1\\2019081419254688475.jpg',NULL,NULL,'2019-08-14 19:25:46',5),(18,'\\upload1\\item\\shop\\1\\2019081419254640560.jpg',NULL,NULL,'2019-08-14 19:25:46',5),(19,'\\upload1\\item\\shop\\1\\2019081515454474465.jpg',NULL,NULL,'2019-08-15 15:45:45',6),(20,'\\upload1\\item\\shop\\1\\2019081515523832867.jpg',NULL,NULL,'2019-08-15 15:52:38',7),(21,'\\upload1\\item\\shop\\1\\2019081515541259562.jpg',NULL,NULL,'2019-08-15 15:54:12',8),(22,'\\upload1\\item\\shop\\1\\2019081516482564036.jpg',NULL,NULL,'2019-08-15 16:48:25',5),(23,'\\upload1\\item\\shop\\1\\2019081516482595754.jpg',NULL,NULL,'2019-08-15 16:48:25',5),(24,'\\upload1\\item\\shop\\1\\2019081517360147620.jpg',NULL,NULL,'2019-08-15 17:36:01',8),(25,'\\upload1\\item\\shop\\17\\2019081616025248485.jpg',NULL,NULL,'2019-08-16 16:02:52',9),(26,'\\upload1\\item\\shop\\17\\2019081616054281456.jpg',NULL,NULL,'2019-08-16 16:05:42',10),(27,'\\upload1\\item\\shop\\18\\2019081616100576539.png',NULL,NULL,'2019-08-16 16:10:06',11),(28,'\\upload1\\item\\shop\\19\\2019081616381717950.jpg',NULL,NULL,'2019-08-16 16:38:17',12),(29,'\\upload1\\item\\shop\\19\\2019081616404864274.jpg',NULL,NULL,'2019-08-16 16:40:48',13),(30,'\\upload1\\item\\shop\\23\\2019081815363358223.jpg',NULL,NULL,'2019-08-18 15:36:33',14),(31,'\\upload1\\item\\shop\\24\\2019081816292423043.jpg',NULL,NULL,'2019-08-18 16:29:24',15),(32,'\\upload1\\item\\shop\\24\\2019082215251190319.png',NULL,NULL,'2019-08-22 07:25:11',16);
/*!40000 ALTER TABLE `tb_product_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_sell_daily`
--

DROP TABLE IF EXISTS `tb_product_sell_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product_sell_daily` (
  `product_sell_daily_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(100) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  PRIMARY KEY (`product_sell_daily_id`),
  UNIQUE KEY `uc_product_sell` (`product_id`,`shop_id`,`create_time`),
  KEY `fk_product_sell_product` (`product_id`),
  KEY `fk_product_sell_shop` (`shop_id`),
  CONSTRAINT `fk_product_sell_product` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`product_id`),
  CONSTRAINT `fk_product_sell_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_sell_daily`
--

LOCK TABLES `tb_product_sell_daily` WRITE;
/*!40000 ALTER TABLE `tb_product_sell_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product_sell_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shop`
--

DROP TABLE IF EXISTS `tb_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop` (
  `shop_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL COMMENT '店铺创建人',
  `area_id` int(5) DEFAULT NULL,
  `shop_category_id` int(11) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `shop_name` varchar(256) NOT NULL,
  `shop_desc` varchar(1024) DEFAULT NULL,
  `shop_addr` varchar(200) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `shop_img` varchar(1024) DEFAULT NULL,
  `longitude` double(16,12) DEFAULT NULL,
  `latitude` double(16,12) DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  `advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `fk_shop_area` (`area_id`),
  KEY `fk_shop_parentcate` (`parent_category_id`),
  KEY `fk_shop_profile` (`owner_id`),
  KEY `fk_shop_shopcate` (`shop_category_id`),
  CONSTRAINT `fk_shop_area` FOREIGN KEY (`area_id`) REFERENCES `tb_area` (`area_id`),
  CONSTRAINT `fk_shop_parentcate` FOREIGN KEY (`parent_category_id`) REFERENCES `tb_shop_category` (`shop_category_id`),
  CONSTRAINT `fk_shop_profile` FOREIGN KEY (`owner_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_shop_shopcate` FOREIGN KEY (`shop_category_id`) REFERENCES `tb_shop_category` (`shop_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop`
--

LOCK TABLES `tb_shop` WRITE;
/*!40000 ALTER TABLE `tb_shop` DISABLE KEYS */;
INSERT INTO `tb_shop` VALUES (1,1,4,1,NULL,'测试的店铺','测试描述','测试地址','test','test',NULL,NULL,NULL,'2019-08-06 21:11:50','2019-08-07 00:13:58',0,'审核中'),(7,1,4,1,NULL,'测试的店铺1','test1','test1','test1','\\upload1\\item\\shop\\7\\2019080823440426601.jpg',NULL,NULL,NULL,'2019-08-08 23:44:04','2019-08-08 23:44:04',0,'审核中'),(8,1,4,1,NULL,'测试的店铺3','test3','test3','test3','\\upload1\\item\\shop\\8\\2019080916402976978.jpg',NULL,NULL,NULL,'2019-08-09 16:40:29','2019-08-09 16:40:29',0,'审核中'),(14,1,5,2,NULL,'修改后的店铺名称','店铺简介test','详细地址test','18810233099','\\upload1\\item\\shop\\14\\2019081217412974739.jpg',NULL,NULL,NULL,'2019-08-12 13:04:56','2019-08-12 17:41:29',0,NULL),(15,1,4,2,NULL,'奶茶店铺','简介test2','详细地址test2','15277887788','\\upload1\\item\\shop\\15\\2019081213241620856.jpg',NULL,NULL,NULL,'2019-08-12 13:24:16','2019-08-12 13:24:16',0,NULL),(16,1,4,2,NULL,'正式水果店2','正式店铺简介test3','正式详细地址test3','13912122323','\\upload1\\item\\shop\\16\\2019081223374384041.jpg',NULL,NULL,NULL,'2019-08-12 14:48:10','2019-08-12 23:37:45',0,NULL),(17,1,6,9,NULL,'明光桥二手书交易','便宜二手书','北太平庄','15278785656','\\upload1\\item\\shop\\17\\2019081615494981412.png',NULL,NULL,NULL,'2019-08-16 15:49:49','2019-08-16 15:49:49',1,'审核通过'),(18,1,4,11,NULL,'靓妹美发中心','美发','蓟门桥南','13456568989','\\upload1\\item\\shop\\18\\2019081616081339437.png',NULL,NULL,NULL,'2019-08-16 16:08:13','2019-08-16 16:08:13',1,'审核通过'),(19,1,5,13,NULL,'昊园恒奶茶店','鲜榨果汁、网红奶茶','百慕大三角区的一块礁石上','17689897979','\\upload1\\item\\shop\\19\\2019081616343817181.jpg',NULL,NULL,NULL,'2019-08-16 16:34:38','2019-08-16 16:34:38',1,'审核通过'),(20,1,5,12,NULL,'西北大排档','包吃爽','西西西最西边','13568687979','\\upload1\\item\\shop\\20\\2019081616425218121.png',NULL,NULL,NULL,'2019-08-16 16:42:52','2019-08-16 16:42:52',1,'审核通过'),(21,1,7,18,NULL,'昊昊声乐班','声乐、舞蹈培训','北京五棵松','18989893636','\\upload1\\item\\shop\\21\\2019081616460449128.png',NULL,NULL,NULL,'2019-08-16 16:46:04','2019-08-16 16:46:04',1,'审核通过'),(22,1,6,13,NULL,'冰冻夏天奶茶店','一起来冰冻夏天','南极','18787870909','\\upload1\\item\\shop\\22\\2019081616540697303.jpg',NULL,NULL,NULL,'2019-08-16 16:54:06','2019-08-16 16:54:06',1,'审核通过'),(23,1,7,14,NULL,'小昊昊台球馆','都来玩啊','丰台一棵松 ','17588883445','\\upload1\\item\\shop\\23\\2019081815320689012.jpg',NULL,NULL,NULL,'2019-08-18 15:32:06','2019-08-18 15:32:06',1,'审核通过'),(24,1,4,13,NULL,'桃桃昊奶茶店','小昊昊自留地','锦州人民路22号','15298980909','/upload1/item/shop/24/2019081816265224744.jpg',NULL,NULL,NULL,'2019-08-18 16:26:52','2019-08-18 16:26:52',1,'审核通过');
/*!40000 ALTER TABLE `tb_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shop_auth_map`
--

DROP TABLE IF EXISTS `tb_shop_auth_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop_auth_map` (
  `shop_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_flag` int(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `enable_status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shop_auth_id`),
  KEY `fk_shop_auth_map_shop` (`shop_id`),
  KEY `uk_shop_auth_map` (`employee_id`,`shop_id`),
  CONSTRAINT `fk_shop_auth_map_employee` FOREIGN KEY (`employee_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_shop_auth_map_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop_auth_map`
--

LOCK TABLES `tb_shop_auth_map` WRITE;
/*!40000 ALTER TABLE `tb_shop_auth_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_shop_auth_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shop_category`
--

DROP TABLE IF EXISTS `tb_shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shop_category` (
  `shop_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_category_name` varchar(100) NOT NULL DEFAULT '',
  `shop_category_desc` varchar(1000) NOT NULL DEFAULT '',
  `shop_category_img` varchar(1000) DEFAULT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_category_id`),
  KEY `fk_shop_category_self` (`parent_id`),
  CONSTRAINT `fk_shop_category_self` FOREIGN KEY (`parent_id`) REFERENCES `tb_shop_category` (`shop_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shop_category`
--

LOCK TABLES `tb_shop_category` WRITE;
/*!40000 ALTER TABLE `tb_shop_category` DISABLE KEYS */;
INSERT INTO `tb_shop_category` VALUES (1,'二手市场','二手商品交易','/upload1/item/shopcategory/2017061223272255687.png',1,'2019-08-05 00:48:07','2019-08-10 00:48:10',NULL),(2,'旧车','旧车','/upload1/item/shopcategory/2017060420315183203.png',2,'2019-08-01 15:29:02','2019-08-16 15:29:05',1),(3,'美食甜品','好吃到爆','/upload1/item/shopcategory/2017061223274213433.png',20,'2019-08-08 00:53:04','2019-08-16 00:53:07',NULL),(5,'休闲娱乐','专注开心','/upload1/item/shopcategory/2017061223275121460.png',3,'2019-08-05 00:53:57','2019-08-16 00:54:00',NULL),(6,'美容美发','专注美','/upload1/item/shopcategory/2017061223273314635.png',4,'2019-08-14 15:13:34','2019-08-16 15:13:37',NULL),(7,'培训教育','赢在起点','/upload1/item/shopcategory/2017061223280082147.png',5,'2019-08-15 15:15:20','2019-08-16 15:15:24',NULL),(8,'租赁市场','价格好商量','/upload1/item/shopcategory/2017061223281361578.png',1,'2019-08-05 15:29:07','2019-08-16 15:29:10',NULL),(9,'二手书','二手书籍','/upload1/item/shopcategory/2017060420322333745.png',2,'2019-08-14 15:28:50','2019-08-16 15:28:55',1),(10,'护理','护理','/upload1/item/shopcategory/2017060420372391702.png',4,'2019-08-07 15:39:32','2019-08-16 15:39:34',6),(11,'理发','理发','/upload1/item/shopcategory/2017060420374775350.png',5,'2019-08-05 15:39:43','2019-08-16 15:39:46',6),(12,'大排档','大排档','/upload1/item/shopcategory/2017060420460491494.png',2,'2019-08-01 15:40:01','2019-08-16 15:39:48',3),(13,'奶茶店','好喝奶茶','/upload1/item/shopcategory/2017060420464594520.png',1,'2019-08-02 15:40:04','2019-08-16 15:39:50',3),(14,'台球馆','桌球娱乐','/upload1/item/shopcategory/taiqiu.jpg',5,'2019-08-04 15:40:06','2019-08-16 15:39:52',5),(15,'密室逃脱','刺激好玩','/upload1/item/shopcategory/2017060420500783376.png',3,'2019-07-10 15:40:09','2019-08-16 15:39:54',5),(16,'KTV','唱歌','/upload1/item/shopcategory/2017060420505834244.png',2,'2018-08-16 15:40:14','2019-08-16 15:39:55',5),(17,'程序设计','程序设计','/upload1/item/shopcategory/2017060421593496807.png',2,'2019-06-27 15:40:21','2019-08-16 15:39:57',7),(18,'声乐舞蹈','声乐舞蹈','/upload1/item/shopcategory/2017060422114076152.png',1,'2019-08-07 15:40:26','2019-08-16 15:39:59',7);
/*!40000 ALTER TABLE `tb_shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_award_map`
--

DROP TABLE IF EXISTS `tb_user_award_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_award_map` (
  `user_award_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `award_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `operator_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `used_status` int(2) NOT NULL DEFAULT '0',
  `point` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_award_id`),
  KEY `fk_user_award_map_profile` (`user_id`),
  KEY `fk_user_award_map_award` (`award_id`),
  KEY `fk_user_award_map_shop` (`shop_id`),
  KEY `fk_user_award_map_operator` (`operator_id`),
  CONSTRAINT `fk_user_award_map_award` FOREIGN KEY (`award_id`) REFERENCES `tb_award` (`award_id`),
  CONSTRAINT `fk_user_award_map_operator` FOREIGN KEY (`operator_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_user_award_map_profile` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_user_award_map_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_award_map`
--

LOCK TABLES `tb_user_award_map` WRITE;
/*!40000 ALTER TABLE `tb_user_award_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_award_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_product_map`
--

DROP TABLE IF EXISTS `tb_user_product_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_product_map` (
  `user_product_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `product_id` int(100) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `operator_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `point` int(10) DEFAULT '0',
  PRIMARY KEY (`user_product_id`),
  KEY `fk_user_product_map_profile` (`user_id`),
  KEY `fk_user_product_map_product` (`product_id`),
  KEY `fk_user_product_map_shop` (`shop_id`),
  KEY `fk_user_product_map_operator` (`operator_id`),
  CONSTRAINT `fk_user_product_map_operator` FOREIGN KEY (`operator_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_user_product_map_product` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`product_id`),
  CONSTRAINT `fk_user_product_map_profile` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`),
  CONSTRAINT `fk_user_product_map_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_product_map`
--

LOCK TABLES `tb_user_product_map` WRITE;
/*!40000 ALTER TABLE `tb_user_product_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_product_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_shop_map`
--

DROP TABLE IF EXISTS `tb_user_shop_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_shop_map` (
  `user_shop_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `point` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_shop_id`),
  UNIQUE KEY `uq_user_shop` (`user_id`,`shop_id`),
  KEY `fk_user_shop_shop` (`shop_id`),
  CONSTRAINT `fk_user_shop_shop` FOREIGN KEY (`shop_id`) REFERENCES `tb_shop` (`shop_id`),
  CONSTRAINT `fk_user_shop_user` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_shop_map`
--

LOCK TABLES `tb_user_shop_map` WRITE;
/*!40000 ALTER TABLE `tb_user_shop_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_shop_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_wechat_auth`
--

DROP TABLE IF EXISTS `tb_wechat_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_wechat_auth` (
  `wechat_auth_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `open_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`wechat_auth_id`),
  UNIQUE KEY `open_id` (`open_id`),
  KEY `fk_wechatauth_profile` (`user_id`),
  CONSTRAINT `fk_wechatauth_profile` FOREIGN KEY (`user_id`) REFERENCES `tb_person_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_wechat_auth`
--

LOCK TABLES `tb_wechat_auth` WRITE;
/*!40000 ALTER TABLE `tb_wechat_auth` DISABLE KEYS */;
INSERT INTO `tb_wechat_auth` VALUES (6,6,'dafahizhfdhaih','2019-08-22 06:56:41');
/*!40000 ALTER TABLE `tb_wechat_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 20:44:16
