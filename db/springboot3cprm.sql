-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot3cprm
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot3cprm`
--

/*!40000 DROP DATABASE IF EXISTS `springboot3cprm`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot3cprm` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot3cprm`;

--
-- Table structure for table `changdileixing`
--

DROP TABLE IF EXISTS `changdileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='场地类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdileixing`
--

LOCK TABLES `changdileixing` WRITE;
/*!40000 ALTER TABLE `changdileixing` DISABLE KEYS */;
INSERT INTO `changdileixing` VALUES (51,'2022-03-11 03:01:36','场地类型1'),(52,'2022-03-11 03:01:36','场地类型2'),(53,'2022-03-11 03:01:36','场地类型3'),(54,'2022-03-11 03:01:36','场地类型4'),(55,'2022-03-11 03:01:36','场地类型5'),(56,'2022-03-11 03:01:36','场地类型6');
/*!40000 ALTER TABLE `changdileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changdixinxi`
--

DROP TABLE IF EXISTS `changdixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  `changdiquyu` varchar(200) NOT NULL COMMENT '场地区域',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `shijiage` int(11) NOT NULL COMMENT '时价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdixiangqing` longtext COMMENT '场地详情',
  `renci` int(11) NOT NULL COMMENT '人次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='场地信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdixinxi`
--

LOCK TABLES `changdixinxi` WRITE;
/*!40000 ALTER TABLE `changdixinxi` DISABLE KEYS */;
INSERT INTO `changdixinxi` VALUES (61,'2022-03-11 03:01:36','场地名称1','场地类型1','upload/changdixinxi_changditupian1.jpg','场地区域1','可约时间1',1,'13823888881','场地详情1',1,'2022-03-11 11:01:36',1),(62,'2022-03-11 03:01:36','场地名称2','场地类型2','upload/changdixinxi_changditupian2.jpg','场地区域2','可约时间2',2,'13823888882','场地详情2',2,'2022-03-11 11:03:27',3),(63,'2022-03-11 03:01:36','场地名称3','场地类型3','upload/changdixinxi_changditupian3.jpg','场地区域3','可约时间3',3,'13823888883','场地详情3',3,'2022-03-11 11:01:36',3),(64,'2022-03-11 03:01:36','场地名称4','场地类型4','upload/changdixinxi_changditupian4.jpg','场地区域4','可约时间4',4,'13823888884','场地详情4',4,'2022-03-11 11:01:36',4),(65,'2022-03-11 03:01:36','场地名称5','场地类型5','upload/changdixinxi_changditupian5.jpg','场地区域5','可约时间5',5,'13823888885','场地详情5',5,'2022-03-11 11:01:36',5),(66,'2022-03-11 03:01:36','场地名称6','场地类型6','upload/changdixinxi_changditupian6.jpg','场地区域6','可约时间6',6,'13823888886','场地详情6',6,'2022-03-11 11:01:36',6);
/*!40000 ALTER TABLE `changdixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changdiyuyue`
--

DROP TABLE IF EXISTS `changdiyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changdiquyu` varchar(200) NOT NULL COMMENT '场地区域',
  `kaishishijian` datetime NOT NULL COMMENT '开始时间',
  `shijiage` int(11) NOT NULL COMMENT '时价格',
  `shizhang` int(11) NOT NULL COMMENT '时长',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdixiangqing` longtext COMMENT '场地详情',
  `renci` int(11) NOT NULL COMMENT '人次',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='场地预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdiyuyue`
--

LOCK TABLES `changdiyuyue` WRITE;
/*!40000 ALTER TABLE `changdiyuyue` DISABLE KEYS */;
INSERT INTO `changdiyuyue` VALUES (71,'2022-03-11 03:01:36','1111111111','场地名称1','场地类型1','场地区域1','2022-03-11 11:01:36',1,1,1,'13823888881','场地详情1',1,'账号1','姓名1','手机1','2022-03-11 11:01:36','未支付'),(72,'2022-03-11 03:01:36','2222222222','场地名称2','场地类型2','场地区域2','2022-03-11 11:01:36',2,2,2,'13823888882','场地详情2',2,'账号2','姓名2','手机2','2022-03-11 11:01:36','未支付'),(73,'2022-03-11 03:01:36','3333333333','场地名称3','场地类型3','场地区域3','2022-03-11 11:01:36',3,3,3,'13823888883','场地详情3',3,'账号3','姓名3','手机3','2022-03-11 11:01:36','未支付'),(74,'2022-03-11 03:01:36','4444444444','场地名称4','场地类型4','场地区域4','2022-03-11 11:01:36',4,4,4,'13823888884','场地详情4',4,'账号4','姓名4','手机4','2022-03-11 11:01:36','未支付'),(75,'2022-03-11 03:01:36','5555555555','场地名称5','场地类型5','场地区域5','2022-03-11 11:01:36',5,5,5,'13823888885','场地详情5',5,'账号5','姓名5','手机5','2022-03-11 11:01:36','未支付'),(76,'2022-03-11 03:01:36','6666666666','场地名称6','场地类型6','场地区域6','2022-03-11 11:01:36',6,6,6,'13823888886','场地详情6',6,'账号6','姓名6','手机6','2022-03-11 11:01:36','未支付');
/*!40000 ALTER TABLE `changdiyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646968008844 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (211,'2022-03-11 03:01:36',1,1,'提问1','回复1',1),(212,'2022-03-11 03:01:36',2,2,'提问2','回复2',2),(213,'2022-03-11 03:01:36',3,3,'提问3','回复3',3),(214,'2022-03-11 03:01:36',4,4,'提问4','回复4',4),(215,'2022-03-11 03:01:36',5,5,'提问5','回复5',5),(216,'2022-03-11 03:01:36',6,6,'提问6','回复6',6),(1646967930647,'2022-03-11 03:05:30',21,NULL,'1阿斯蒂芬按时撒',NULL,0),(1646968008843,'2022-03-11 03:06:48',21,31,NULL,'阿斯达分撒旦按时',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschangdixinxi`
--

DROP TABLE IF EXISTS `discusschangdixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschangdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8 COMMENT='场地信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschangdixinxi`
--

LOCK TABLES `discusschangdixinxi` WRITE;
/*!40000 ALTER TABLE `discusschangdixinxi` DISABLE KEYS */;
INSERT INTO `discusschangdixinxi` VALUES (251,'2022-03-11 03:01:36',1,1,'用户名1','评论内容1','回复内容1'),(252,'2022-03-11 03:01:36',2,2,'用户名2','评论内容2','回复内容2'),(253,'2022-03-11 03:01:36',3,3,'用户名3','评论内容3','回复内容3'),(254,'2022-03-11 03:01:36',4,4,'用户名4','评论内容4','回复内容4'),(255,'2022-03-11 03:01:36',5,5,'用户名5','评论内容5','回复内容5'),(256,'2022-03-11 03:01:36',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschangdixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssirenjiaolian`
--

DROP TABLE IF EXISTS `discusssirenjiaolian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssirenjiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 COMMENT='私人教练评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssirenjiaolian`
--

LOCK TABLES `discusssirenjiaolian` WRITE;
/*!40000 ALTER TABLE `discusssirenjiaolian` DISABLE KEYS */;
INSERT INTO `discusssirenjiaolian` VALUES (271,'2022-03-11 03:01:36',1,1,'用户名1','评论内容1','回复内容1'),(272,'2022-03-11 03:01:36',2,2,'用户名2','评论内容2','回复内容2'),(273,'2022-03-11 03:01:36',3,3,'用户名3','评论内容3','回复内容3'),(274,'2022-03-11 03:01:36',4,4,'用户名4','评论内容4','回复内容4'),(275,'2022-03-11 03:01:36',5,5,'用户名5','评论内容5','回复内容5'),(276,'2022-03-11 03:01:36',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusssirenjiaolian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstiyuqicai`
--

DROP TABLE IF EXISTS `discusstiyuqicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstiyuqicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8 COMMENT='体育器材评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstiyuqicai`
--

LOCK TABLES `discusstiyuqicai` WRITE;
/*!40000 ALTER TABLE `discusstiyuqicai` DISABLE KEYS */;
INSERT INTO `discusstiyuqicai` VALUES (261,'2022-03-11 03:01:36',1,1,'用户名1','评论内容1','回复内容1'),(262,'2022-03-11 03:01:36',2,2,'用户名2','评论内容2','回复内容2'),(263,'2022-03-11 03:01:36',3,3,'用户名3','评论内容3','回复内容3'),(264,'2022-03-11 03:01:36',4,4,'用户名4','评论内容4','回复内容4'),(265,'2022-03-11 03:01:36',5,5,'用户名5','评论内容5','回复内容5'),(266,'2022-03-11 03:01:36',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstiyuqicai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) NOT NULL COMMENT '会员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanzhanghao` (`huiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (21,'2022-03-11 03:01:36','会员账号1','123456','会员姓名1','男','13823888881','会员等级1','0.5'),(22,'2022-03-11 03:01:36','会员账号2','123456','会员姓名2','男','13823888882','会员等级2','折扣2'),(23,'2022-03-11 03:01:36','会员账号3','123456','会员姓名3','男','13823888883','会员等级3','折扣3'),(24,'2022-03-11 03:01:36','会员账号4','123456','会员姓名4','男','13823888884','会员等级4','折扣4'),(25,'2022-03-11 03:01:36','会员账号5','123456','会员姓名5','男','13823888885','会员等级5','折扣5'),(26,'2022-03-11 03:01:36','会员账号6','123456','会员姓名6','男','13823888886','会员等级6','折扣6');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuandengji`
--

DROP TABLE IF EXISTS `huiyuandengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuandengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` float DEFAULT NULL COMMENT '折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='会员等级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuandengji`
--

LOCK TABLES `huiyuandengji` WRITE;
/*!40000 ALTER TABLE `huiyuandengji` DISABLE KEYS */;
INSERT INTO `huiyuandengji` VALUES (201,'2022-03-11 03:01:36','会员等级1',0.5),(202,'2022-03-11 03:01:36','会员等级2',2),(203,'2022-03-11 03:01:36','会员等级3',3),(204,'2022-03-11 03:01:36','会员等级4',4),(205,'2022-03-11 03:01:36','会员等级5',5),(206,'2022-03-11 03:01:36','会员等级6',6);
/*!40000 ALTER TABLE `huiyuandengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuangoumai`
--

DROP TABLE IF EXISTS `huiyuangoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuangoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdandanhao` varchar(200) DEFAULT NULL COMMENT '订单单号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdandanhao` (`dingdandanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646967923863 DEFAULT CHARSET=utf8 COMMENT='会员购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuangoumai`
--

LOCK TABLES `huiyuangoumai` WRITE;
/*!40000 ALTER TABLE `huiyuangoumai` DISABLE KEYS */;
INSERT INTO `huiyuangoumai` VALUES (131,'2022-03-11 03:01:36','1111111111','器材名称1','器材类型1',1,1,'总价1','2022-03-11 11:01:36','会员账号1','会员姓名1','13823888881','折扣1','未支付'),(132,'2022-03-11 03:01:36','2222222222','器材名称2','器材类型2',2,2,'总价2','2022-03-11 11:01:36','会员账号2','会员姓名2','13823888882','折扣2','未支付'),(133,'2022-03-11 03:01:36','3333333333','器材名称3','器材类型3',3,3,'总价3','2022-03-11 11:01:36','会员账号3','会员姓名3','13823888883','折扣3','未支付'),(134,'2022-03-11 03:01:36','4444444444','器材名称4','器材类型4',4,4,'总价4','2022-03-11 11:01:36','会员账号4','会员姓名4','13823888884','折扣4','未支付'),(135,'2022-03-11 03:01:36','5555555555','器材名称5','器材类型5',5,5,'总价5','2022-03-11 11:01:36','会员账号5','会员姓名5','13823888885','折扣5','未支付'),(136,'2022-03-11 03:01:36','6666666666','器材名称6','器材类型6',6,6,'总价6','2022-03-11 11:01:36','会员账号6','会员姓名6','13823888886','折扣6','未支付'),(1646967923862,'2022-03-11 03:05:23','202231111519138551','器材名称2','器材类型2',2,2,'2','2022-03-11 11:05:19','会员账号1','会员姓名1','13823888881','0.5','已支付');
/*!40000 ALTER TABLE `huiyuangoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuantuiding`
--

DROP TABLE IF EXISTS `huiyuantuiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuantuiding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changdiquyu` varchar(200) NOT NULL COMMENT '场地区域',
  `kaishishijian` varchar(200) NOT NULL COMMENT '开始时间',
  `shijiage` int(11) NOT NULL COMMENT '时价格',
  `shizhang` int(11) NOT NULL COMMENT '时长',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdixiangqing` longtext COMMENT '场地详情',
  `renci` int(11) NOT NULL COMMENT '人次',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tuidingyuanyin` varchar(200) NOT NULL COMMENT '退订原因',
  `tuidingshijian` datetime DEFAULT NULL COMMENT '退订时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='会员退订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuantuiding`
--

LOCK TABLES `huiyuantuiding` WRITE;
/*!40000 ALTER TABLE `huiyuantuiding` DISABLE KEYS */;
INSERT INTO `huiyuantuiding` VALUES (101,'2022-03-11 03:01:36','订单编号1','场地名称1','场地类型1','场地区域1','开始时间1',1,1,1,1,'13823888881','场地详情1',1,'会员账号1','会员姓名1','手机1','退订原因1','2022-03-11 11:01:36',1,1,'是',''),(102,'2022-03-11 03:01:36','订单编号2','场地名称2','场地类型2','场地区域2','开始时间2',2,2,2,2,'13823888882','场地详情2',2,'会员账号2','会员姓名2','手机2','退订原因2','2022-03-11 11:01:36',2,2,'是',''),(103,'2022-03-11 03:01:36','订单编号3','场地名称3','场地类型3','场地区域3','开始时间3',3,3,3,3,'13823888883','场地详情3',3,'会员账号3','会员姓名3','手机3','退订原因3','2022-03-11 11:01:36',3,3,'是',''),(104,'2022-03-11 03:01:36','订单编号4','场地名称4','场地类型4','场地区域4','开始时间4',4,4,4,4,'13823888884','场地详情4',4,'会员账号4','会员姓名4','手机4','退订原因4','2022-03-11 11:01:36',4,4,'是',''),(105,'2022-03-11 03:01:36','订单编号5','场地名称5','场地类型5','场地区域5','开始时间5',5,5,5,5,'13823888885','场地详情5',5,'会员账号5','会员姓名5','手机5','退订原因5','2022-03-11 11:01:36',5,5,'是',''),(106,'2022-03-11 03:01:36','订单编号6','场地名称6','场地类型6','场地区域6','开始时间6',6,6,6,6,'13823888886','场地详情6',6,'会员账号6','会员姓名6','手机6','退订原因6','2022-03-11 11:01:36',6,6,'是','');
/*!40000 ALTER TABLE `huiyuantuiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuantuikuan`
--

DROP TABLE IF EXISTS `huiyuantuikuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuantuikuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdandanhao` varchar(200) DEFAULT NULL COMMENT '订单单号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `goumaishijian` varchar(200) DEFAULT NULL COMMENT '购买时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  `tuikuanyuanyin` varchar(200) NOT NULL COMMENT '退款原因',
  `tuikuanshijian` datetime DEFAULT NULL COMMENT '退款时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646967951621 DEFAULT CHARSET=utf8 COMMENT='会员退款';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuantuikuan`
--

LOCK TABLES `huiyuantuikuan` WRITE;
/*!40000 ALTER TABLE `huiyuantuikuan` DISABLE KEYS */;
INSERT INTO `huiyuantuikuan` VALUES (141,'2022-03-11 03:01:36','订单单号1','器材名称1','器材类型1',1,1,'总价1','购买时间1','会员账号1','会员姓名1','13823888881','折扣1','退款原因1','2022-03-11 11:01:36',1,1,'是',''),(142,'2022-03-11 03:01:36','订单单号2','器材名称2','器材类型2',2,2,'总价2','购买时间2','会员账号2','会员姓名2','13823888882','折扣2','退款原因2','2022-03-11 11:01:36',2,2,'是',''),(143,'2022-03-11 03:01:36','订单单号3','器材名称3','器材类型3',3,3,'总价3','购买时间3','会员账号3','会员姓名3','13823888883','折扣3','退款原因3','2022-03-11 11:01:36',3,3,'是',''),(144,'2022-03-11 03:01:36','订单单号4','器材名称4','器材类型4',4,4,'总价4','购买时间4','会员账号4','会员姓名4','13823888884','折扣4','退款原因4','2022-03-11 11:01:36',4,4,'是',''),(145,'2022-03-11 03:01:36','订单单号5','器材名称5','器材类型5',5,5,'总价5','购买时间5','会员账号5','会员姓名5','13823888885','折扣5','退款原因5','2022-03-11 11:01:36',5,5,'是',''),(146,'2022-03-11 03:01:36','订单单号6','器材名称6','器材类型6',6,6,'总价6','购买时间6','会员账号6','会员姓名6','13823888886','折扣6','退款原因6','2022-03-11 11:01:36',6,6,'是',''),(1646967951620,'2022-03-11 03:05:51','202231111519138551','器材名称2','器材类型2',2,2,'2','2022-03-11 11:05:19','会员账号1','会员姓名1','13823888881','0.5','阿斯达按时','2022-03-11 11:05:50',21,1646967923862,'否',NULL);
/*!40000 ALTER TABLE `huiyuantuikuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanyuyue`
--

DROP TABLE IF EXISTS `huiyuanyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changdiquyu` varchar(200) NOT NULL COMMENT '场地区域',
  `kaishishijian` datetime NOT NULL COMMENT '开始时间',
  `shijiage` int(11) NOT NULL COMMENT '时价格',
  `shizhang` int(11) NOT NULL COMMENT '时长',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdixiangqing` longtext COMMENT '场地详情',
  `renci` int(11) NOT NULL COMMENT '人次',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='会员预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanyuyue`
--

LOCK TABLES `huiyuanyuyue` WRITE;
/*!40000 ALTER TABLE `huiyuanyuyue` DISABLE KEYS */;
INSERT INTO `huiyuanyuyue` VALUES (91,'2022-03-11 03:01:36','订单编号1','场地名称1','场地类型1','场地区域1','2022-03-11 11:01:36',1,1,1,'13823888881','场地详情1',1,'会员账号1','会员姓名1','手机1','折扣1','2022-03-11 11:01:36','未支付'),(92,'2022-03-11 03:01:36','订单编号2','场地名称2','场地类型2','场地区域2','2022-03-11 11:01:36',2,2,2,'13823888882','场地详情2',2,'会员账号2','会员姓名2','手机2','折扣2','2022-03-11 11:01:36','未支付'),(93,'2022-03-11 03:01:36','订单编号3','场地名称3','场地类型3','场地区域3','2022-03-11 11:01:36',3,3,3,'13823888883','场地详情3',3,'会员账号3','会员姓名3','手机3','折扣3','2022-03-11 11:01:36','未支付'),(94,'2022-03-11 03:01:36','订单编号4','场地名称4','场地类型4','场地区域4','2022-03-11 11:01:36',4,4,4,'13823888884','场地详情4',4,'会员账号4','会员姓名4','手机4','折扣4','2022-03-11 11:01:36','未支付'),(95,'2022-03-11 03:01:36','订单编号5','场地名称5','场地类型5','场地区域5','2022-03-11 11:01:36',5,5,5,'13823888885','场地详情5',5,'会员账号5','会员姓名5','手机5','折扣5','2022-03-11 11:01:36','未支付'),(96,'2022-03-11 03:01:36','订单编号6','场地名称6','场地类型6','场地区域6','2022-03-11 11:01:36',6,6,6,'13823888886','场地详情6',6,'会员账号6','会员姓名6','手机6','折扣6','2022-03-11 11:01:36','未支付');
/*!40000 ALTER TABLE `huiyuanyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianshenjiaolian`
--

DROP TABLE IF EXISTS `jianshenjiaolian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianshenjiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoliangonghao` varchar(200) NOT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) NOT NULL COMMENT '教练姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoliangonghao` (`jiaoliangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='健身教练';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianshenjiaolian`
--

LOCK TABLES `jianshenjiaolian` WRITE;
/*!40000 ALTER TABLE `jianshenjiaolian` DISABLE KEYS */;
INSERT INTO `jianshenjiaolian` VALUES (31,'2022-03-11 03:01:36','教练工号1','教练姓名1','123456','男','年龄1','身高1','体重1'),(32,'2022-03-11 03:01:36','教练工号2','教练姓名2','123456','男','年龄2','身高2','体重2'),(33,'2022-03-11 03:01:36','教练工号3','教练姓名3','123456','男','年龄3','身高3','体重3'),(34,'2022-03-11 03:01:36','教练工号4','教练姓名4','123456','男','年龄4','身高4','体重4'),(35,'2022-03-11 03:01:36','教练工号5','教练姓名5','123456','男','年龄5','身高5','体重5'),(36,'2022-03-11 03:01:36','教练工号6','教练姓名6','123456','男','年龄6','身高6','体重6');
/*!40000 ALTER TABLE `jianshenjiaolian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646968037033 DEFAULT CHARSET=utf8 COMMENT='用户投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (241,'2022-03-11 03:01:36',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(242,'2022-03-11 03:01:36',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(243,'2022-03-11 03:01:36',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(244,'2022-03-11 03:01:36',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(245,'2022-03-11 03:01:36',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(246,'2022-03-11 03:01:36',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(1646968037032,'2022-03-11 03:07:16',11,'账号1','阿斯蒂芬阿斯达','upload/1646968035330.jpg','阿斯达发生的发生发的11','upload/1646968065610.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COMMENT='体育资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (231,'2022-03-11 03:01:36','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(232,'2022-03-11 03:01:36','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(233,'2022-03-11 03:01:36','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(234,'2022-03-11 03:01:36','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(235,'2022-03-11 03:01:36','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(236,'2022-03-11 03:01:36','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaigoumai`
--

DROP TABLE IF EXISTS `qicaigoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaigoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdandanhao` varchar(200) DEFAULT NULL COMMENT '订单单号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdandanhao` (`dingdandanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='器材购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaigoumai`
--

LOCK TABLES `qicaigoumai` WRITE;
/*!40000 ALTER TABLE `qicaigoumai` DISABLE KEYS */;
INSERT INTO `qicaigoumai` VALUES (151,'2022-03-11 03:01:36','1111111111','器材名称1','器材类型1',1,1,'总价1','2022-03-11 11:01:36','账号1','姓名1','13823888881','未支付'),(152,'2022-03-11 03:01:36','2222222222','器材名称2','器材类型2',2,2,'总价2','2022-03-11 11:01:36','账号2','姓名2','13823888882','未支付'),(153,'2022-03-11 03:01:36','3333333333','器材名称3','器材类型3',3,3,'总价3','2022-03-11 11:01:36','账号3','姓名3','13823888883','未支付'),(154,'2022-03-11 03:01:36','4444444444','器材名称4','器材类型4',4,4,'总价4','2022-03-11 11:01:36','账号4','姓名4','13823888884','未支付'),(155,'2022-03-11 03:01:36','5555555555','器材名称5','器材类型5',5,5,'总价5','2022-03-11 11:01:36','账号5','姓名5','13823888885','未支付'),(156,'2022-03-11 03:01:36','6666666666','器材名称6','器材类型6',6,6,'总价6','2022-03-11 11:01:36','账号6','姓名6','13823888886','未支付');
/*!40000 ALTER TABLE `qicaigoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaileixing`
--

DROP TABLE IF EXISTS `qicaileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaileixing` varchar(200) NOT NULL COMMENT '器材类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='器材类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaileixing`
--

LOCK TABLES `qicaileixing` WRITE;
/*!40000 ALTER TABLE `qicaileixing` DISABLE KEYS */;
INSERT INTO `qicaileixing` VALUES (111,'2022-03-11 03:01:36','器材类型1'),(112,'2022-03-11 03:01:36','器材类型2'),(113,'2022-03-11 03:01:36','器材类型3'),(114,'2022-03-11 03:01:36','器材类型4'),(115,'2022-03-11 03:01:36','器材类型5'),(116,'2022-03-11 03:01:36','器材类型6');
/*!40000 ALTER TABLE `qicaileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicaituiding`
--

DROP TABLE IF EXISTS `qicaituiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicaituiding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdandanhao` varchar(200) DEFAULT NULL COMMENT '订单单号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `goumaishijian` varchar(200) DEFAULT NULL COMMENT '购买时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tuidingyuanyin` varchar(200) NOT NULL COMMENT '退订原因',
  `tuidingshijian` datetime DEFAULT NULL COMMENT '退订时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='器材退订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicaituiding`
--

LOCK TABLES `qicaituiding` WRITE;
/*!40000 ALTER TABLE `qicaituiding` DISABLE KEYS */;
INSERT INTO `qicaituiding` VALUES (161,'2022-03-11 03:01:36','订单单号1','器材名称1','器材类型1',1,1,'总价1','购买时间1','账号1','姓名1','13823888881','退订原因1','2022-03-11 11:01:36',1,1,'是',''),(162,'2022-03-11 03:01:36','订单单号2','器材名称2','器材类型2',2,2,'总价2','购买时间2','账号2','姓名2','13823888882','退订原因2','2022-03-11 11:01:36',2,2,'是',''),(163,'2022-03-11 03:01:36','订单单号3','器材名称3','器材类型3',3,3,'总价3','购买时间3','账号3','姓名3','13823888883','退订原因3','2022-03-11 11:01:36',3,3,'是',''),(164,'2022-03-11 03:01:36','订单单号4','器材名称4','器材类型4',4,4,'总价4','购买时间4','账号4','姓名4','13823888884','退订原因4','2022-03-11 11:01:36',4,4,'是',''),(165,'2022-03-11 03:01:36','订单单号5','器材名称5','器材类型5',5,5,'总价5','购买时间5','账号5','姓名5','13823888885','退订原因5','2022-03-11 11:01:36',5,5,'是',''),(166,'2022-03-11 03:01:36','订单单号6','器材名称6','器材类型6',6,6,'总价6','购买时间6','账号6','姓名6','13823888886','退订原因6','2022-03-11 11:01:36',6,6,'是','');
/*!40000 ALTER TABLE `qicaituiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sijiaoyuyue`
--

DROP TABLE IF EXISTS `sijiaoyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sijiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `zhujiaokecheng` varchar(200) DEFAULT NULL COMMENT '主教课程',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dengjishijian` varchar(200) DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='私教预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sijiaoyuyue`
--

LOCK TABLES `sijiaoyuyue` WRITE;
/*!40000 ALTER TABLE `sijiaoyuyue` DISABLE KEYS */;
INSERT INTO `sijiaoyuyue` VALUES (191,'2022-03-11 03:01:36','教练工号1','教练姓名1','主教课程1','性别1','13823888881','2022-03-11 11:01:36','会员账号1','会员姓名1','手机1','登记时间1','是',''),(192,'2022-03-11 03:01:36','教练工号2','教练姓名2','主教课程2','性别2','13823888882','2022-03-11 11:01:36','会员账号2','会员姓名2','手机2','登记时间2','是',''),(193,'2022-03-11 03:01:36','教练工号3','教练姓名3','主教课程3','性别3','13823888883','2022-03-11 11:01:36','会员账号3','会员姓名3','手机3','登记时间3','是',''),(194,'2022-03-11 03:01:36','教练工号4','教练姓名4','主教课程4','性别4','13823888884','2022-03-11 11:01:36','会员账号4','会员姓名4','手机4','登记时间4','是',''),(195,'2022-03-11 03:01:36','教练工号5','教练姓名5','主教课程5','性别5','13823888885','2022-03-11 11:01:36','会员账号5','会员姓名5','手机5','登记时间5','是',''),(196,'2022-03-11 03:01:36','教练工号6','教练姓名6','主教课程6','性别6','13823888886','2022-03-11 11:01:36','会员账号6','会员姓名6','手机6','登记时间6','是','');
/*!40000 ALTER TABLE `sijiaoyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sirenjiaolian`
--

DROP TABLE IF EXISTS `sirenjiaolian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sirenjiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `zhujiaokecheng` varchar(200) DEFAULT NULL COMMENT '主教课程',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `jiagemeixiaoshi` float DEFAULT NULL COMMENT '价格每小时',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhiyelvli` longtext COMMENT '职业履历',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='私人教练';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sirenjiaolian`
--

LOCK TABLES `sirenjiaolian` WRITE;
/*!40000 ALTER TABLE `sirenjiaolian` DISABLE KEYS */;
INSERT INTO `sirenjiaolian` VALUES (181,'2022-03-11 03:01:36','教练工号1','教练姓名1','主教课程1','性别1',1,'13823888881','upload/sirenjiaolian_zhaopian1.jpg','职业履历1',1,1),(182,'2022-03-11 03:01:36','教练工号2','教练姓名2','主教课程2','性别2',2,'13823888882','upload/sirenjiaolian_zhaopian2.jpg','职业履历2',2,2),(183,'2022-03-11 03:01:36','教练工号3','教练姓名3','主教课程3','性别3',3,'13823888883','upload/sirenjiaolian_zhaopian3.jpg','职业履历3',3,3),(184,'2022-03-11 03:01:36','教练工号4','教练姓名4','主教课程4','性别4',4,'13823888884','upload/sirenjiaolian_zhaopian4.jpg','职业履历4',4,4),(185,'2022-03-11 03:01:36','教练工号5','教练姓名5','主教课程5','性别5',5,'13823888885','upload/sirenjiaolian_zhaopian5.jpg','职业履历5',5,5),(186,'2022-03-11 03:01:36','教练工号6','教练姓名6','主教课程6','性别6',6,'13823888886','upload/sirenjiaolian_zhaopian6.jpg','职业履历6',6,6);
/*!40000 ALTER TABLE `sirenjiaolian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646967934573 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1646967934572,'2022-03-11 03:05:33',21,122,'tiyuqicai','器材名称2','upload/tiyuqicai_fengmian2.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiyuqicai`
--

DROP TABLE IF EXISTS `tiyuqicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiyuqicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `qicaixiangqing` longtext COMMENT '器材详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='体育器材';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiyuqicai`
--

LOCK TABLES `tiyuqicai` WRITE;
/*!40000 ALTER TABLE `tiyuqicai` DISABLE KEYS */;
INSERT INTO `tiyuqicai` VALUES (121,'2022-03-11 03:01:36','器材名称1','器材类型1','规格1',1,'注意事项1',1,'器材详情1','upload/tiyuqicai_fengmian1.jpg'),(122,'2022-03-11 03:01:36','器材名称2','器材类型2','规格2',2,'注意事项2',2,'器材详情2','upload/tiyuqicai_fengmian2.jpg'),(123,'2022-03-11 03:01:36','器材名称3','器材类型3','规格3',3,'注意事项3',3,'器材详情3','upload/tiyuqicai_fengmian3.jpg'),(124,'2022-03-11 03:01:36','器材名称4','器材类型4','规格4',4,'注意事项4',4,'器材详情4','upload/tiyuqicai_fengmian4.jpg'),(125,'2022-03-11 03:01:36','器材名称5','器材类型5','规格5',5,'注意事项5',5,'器材详情5','upload/tiyuqicai_fengmian5.jpg'),(126,'2022-03-11 03:01:36','器材名称6','器材类型6','规格6',6,'注意事项6',6,'器材详情6','upload/tiyuqicai_fengmian6.jpg');
/*!40000 ALTER TABLE `tiyuqicai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'会员账号1','huiyuan','会员','zpsn1o6nhy6hraaefhuf4erwz7933hh0','2022-03-11 03:03:18','2022-03-11 04:05:08'),(2,1,'abo','users','管理员','n5uwq4mbt427hwymn3fw4yxwn1q5zwlw','2022-03-11 03:04:15','2022-03-11 04:04:16'),(3,31,'教练工号1','jianshenjiaolian','管理员','qqwedh9xh6lix1j6w9rch9p3ynk1fprw','2022-03-11 03:06:27','2022-03-11 04:06:28'),(4,11,'账号1','yonghu','用户','4v863o1r97l8nqlhfy9hd53vkx0abeq8','2022-03-11 03:07:08','2022-03-11 04:08:04'),(5,41,'员工工号1','yuangong','管理员','0q1qhtnf4ow9n9ndaqaa1omdnlw56qzl','2022-03-11 03:07:36','2022-03-11 04:07:36');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhigonggao`
--

DROP TABLE IF EXISTS `tongzhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhigonggao`
--

LOCK TABLES `tongzhigonggao` WRITE;
/*!40000 ALTER TABLE `tongzhigonggao` DISABLE KEYS */;
INSERT INTO `tongzhigonggao` VALUES (171,'2022-03-11 03:01:36','公告标题1','公告类型1','公告内容1','2022-03-11','发布人1','upload/tongzhigonggao_fengmian1.jpg'),(172,'2022-03-11 03:01:36','公告标题2','公告类型2','公告内容2','2022-03-11','发布人2','upload/tongzhigonggao_fengmian2.jpg'),(173,'2022-03-11 03:01:36','公告标题3','公告类型3','公告内容3','2022-03-11','发布人3','upload/tongzhigonggao_fengmian3.jpg'),(174,'2022-03-11 03:01:36','公告标题4','公告类型4','公告内容4','2022-03-11','发布人4','upload/tongzhigonggao_fengmian4.jpg'),(175,'2022-03-11 03:01:36','公告标题5','公告类型5','公告内容5','2022-03-11','发布人5','upload/tongzhigonggao_fengmian5.jpg'),(176,'2022-03-11 03:01:36','公告标题6','公告类型6','公告内容6','2022-03-11','发布人6','upload/tongzhigonggao_fengmian6.jpg');
/*!40000 ALTER TABLE `tongzhigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuidingchangdi`
--

DROP TABLE IF EXISTS `tuidingchangdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuidingchangdi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changdiquyu` varchar(200) NOT NULL COMMENT '场地区域',
  `kaishishijian` varchar(200) NOT NULL COMMENT '开始时间',
  `shijiage` int(11) NOT NULL COMMENT '时价格',
  `shizhang` int(11) NOT NULL COMMENT '时长',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjia` int(11) DEFAULT NULL COMMENT '总价',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdixiangqing` longtext COMMENT '场地详情',
  `renci` int(11) NOT NULL COMMENT '人次',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tuidingyuanyin` varchar(200) NOT NULL COMMENT '退订原因',
  `tuidingshijian` datetime DEFAULT NULL COMMENT '退订时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='退订场地';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuidingchangdi`
--

LOCK TABLES `tuidingchangdi` WRITE;
/*!40000 ALTER TABLE `tuidingchangdi` DISABLE KEYS */;
INSERT INTO `tuidingchangdi` VALUES (81,'2022-03-11 03:01:36','订单编号1','场地名称1','场地类型1','场地区域1','开始时间1',1,1,1,1,'13823888881','场地详情1',1,'账号1','姓名1','手机1','退订原因1','2022-03-11 11:01:36',1,1,'是',''),(82,'2022-03-11 03:01:36','订单编号2','场地名称2','场地类型2','场地区域2','开始时间2',2,2,2,2,'13823888882','场地详情2',2,'账号2','姓名2','手机2','退订原因2','2022-03-11 11:01:36',2,2,'是',''),(83,'2022-03-11 03:01:36','订单编号3','场地名称3','场地类型3','场地区域3','开始时间3',3,3,3,3,'13823888883','场地详情3',3,'账号3','姓名3','手机3','退订原因3','2022-03-11 11:01:36',3,3,'是',''),(84,'2022-03-11 03:01:36','订单编号4','场地名称4','场地类型4','场地区域4','开始时间4',4,4,4,4,'13823888884','场地详情4',4,'账号4','姓名4','手机4','退订原因4','2022-03-11 11:01:36',4,4,'是',''),(85,'2022-03-11 03:01:36','订单编号5','场地名称5','场地类型5','场地区域5','开始时间5',5,5,5,5,'13823888885','场地详情5',5,'账号5','姓名5','手机5','退订原因5','2022-03-11 11:01:36',5,5,'是',''),(86,'2022-03-11 03:01:36','订单编号6','场地名称6','场地类型6','场地区域6','开始时间6',6,6,6,6,'13823888886','场地详情6',6,'账号6','姓名6','手机6','退订原因6','2022-03-11 11:01:36',6,6,'是','');
/*!40000 ALTER TABLE `tuidingchangdi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-11 03:01:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-11 03:01:36','账号1','123456','姓名1','男','13823888881','773890001@qq.com'),(12,'2022-03-11 03:01:36','账号2','123456','姓名2','男','13823888882','773890002@qq.com'),(13,'2022-03-11 03:01:36','账号3','123456','姓名3','男','13823888883','773890003@qq.com'),(14,'2022-03-11 03:01:36','账号4','123456','姓名4','男','13823888884','773890004@qq.com'),(15,'2022-03-11 03:01:36','账号5','123456','姓名5','男','13823888885','773890005@qq.com'),(16,'2022-03-11 03:01:36','账号6','123456','姓名6','男','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (41,'2022-03-11 03:01:36','员工工号1','123456','员工姓名1','男','部门1','职位1','2022-03-11','13823888881'),(42,'2022-03-11 03:01:36','员工工号2','123456','员工姓名2','男','部门2','职位2','2022-03-11','13823888882'),(43,'2022-03-11 03:01:36','员工工号3','123456','员工姓名3','男','部门3','职位3','2022-03-11','13823888883'),(44,'2022-03-11 03:01:36','员工工号4','123456','员工姓名4','男','部门4','职位4','2022-03-11','13823888884'),(45,'2022-03-11 03:01:36','员工工号5','123456','员工姓名5','男','部门5','职位5','2022-03-11','13823888885'),(46,'2022-03-11 03:01:36','员工工号6','123456','员工姓名6','男','部门6','职位6','2022-03-11','13823888886');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-13 18:26:08
