-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl90318327
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
-- Current Database: `cl90318327`
--

/*!40000 DROP DATABASE IF EXISTS `cl90318327`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl90318327` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl90318327`;

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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowushuliang` varchar(200) DEFAULT NULL COMMENT '货物数量',
  `tupian` longtext COMMENT '图片',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijishouji` varchar(200) DEFAULT NULL COMMENT '司机手机',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `xinyongfen` int(11) NOT NULL COMMENT '评分',
  `pingjianeirong` varchar(200) NOT NULL COMMENT '评价内容',
  `dingdanpingjiashijian` datetime DEFAULT NULL COMMENT '订单评价时间',
  `shizhunshidaoda` varchar(200) NOT NULL COMMENT '是准时到达',
  `huowuwanhaodu` varchar(200) NOT NULL COMMENT '货物完好度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (111,'2024-05-18 08:40:18','货物编号1','货物名称1','货物数量1','file/dingdanpingjiaTupian1.jpg,file/dingdanpingjiaTupian2.jpg,file/dingdanpingjiaTupian3.jpg','货主账号1','货主手机1','货主姓名1','司机账号1','司机手机1','司机姓名1','2024-05-18 16:40:18','2024-05-18 16:40:18',1,'评价内容1','2024-05-18 16:40:18','是','货物完好度1'),(112,'2024-05-18 08:40:18','货物编号2','货物名称2','货物数量2','file/dingdanpingjiaTupian2.jpg,file/dingdanpingjiaTupian3.jpg,file/dingdanpingjiaTupian4.jpg','货主账号2','货主手机2','货主姓名2','司机账号2','司机手机2','司机姓名2','2024-05-18 16:40:18','2024-05-18 16:40:18',1,'评价内容2','2024-05-18 16:40:18','是','货物完好度2'),(113,'2024-05-18 08:40:18','货物编号3','货物名称3','货物数量3','file/dingdanpingjiaTupian3.jpg,file/dingdanpingjiaTupian4.jpg,file/dingdanpingjiaTupian5.jpg','货主账号3','货主手机3','货主姓名3','司机账号3','司机手机3','司机姓名3','2024-05-18 16:40:18','2024-05-18 16:40:18',1,'评价内容3','2024-05-18 16:40:18','是','货物完好度3'),(114,'2024-05-18 08:40:18','货物编号4','货物名称4','货物数量4','file/dingdanpingjiaTupian4.jpg,file/dingdanpingjiaTupian5.jpg,file/dingdanpingjiaTupian6.jpg','货主账号4','货主手机4','货主姓名4','司机账号4','司机手机4','司机姓名4','2024-05-18 16:40:18','2024-05-18 16:40:18',1,'评价内容4','2024-05-18 16:40:18','是','货物完好度4'),(115,'2024-05-18 08:40:18','货物编号5','货物名称5','货物数量5','file/dingdanpingjiaTupian5.jpg,file/dingdanpingjiaTupian6.jpg,file/dingdanpingjiaTupian7.jpg','货主账号5','货主手机5','货主姓名5','司机账号5','司机手机5','司机姓名5','2024-05-18 16:40:18','2024-05-18 16:40:18',1,'评价内容5','2024-05-18 16:40:18','是','货物完好度5'),(116,'2024-05-18 08:40:18','货物编号6','货物名称6','货物数量6','file/dingdanpingjiaTupian6.jpg,file/dingdanpingjiaTupian7.jpg,file/dingdanpingjiaTupian8.jpg','货主账号6','货主手机6','货主姓名6','司机账号6','司机手机6','司机姓名6','2024-05-18 16:40:18','2024-05-18 16:40:18',1,'评价内容6','2024-05-18 16:40:18','是','货物完好度6');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanwancheng`
--

DROP TABLE IF EXISTS `dingdanwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huowushuliang` varchar(200) DEFAULT NULL COMMENT '货物数量',
  `tupian` longtext COMMENT '图片',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijishouji` varchar(200) DEFAULT NULL COMMENT '司机手机',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `fahuodizhi` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `songdadizhi` varchar(200) DEFAULT NULL COMMENT '送达地址',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  `jiedanriqi` datetime DEFAULT NULL COMMENT '接单日期',
  `zhuangcheshijian` datetime DEFAULT NULL COMMENT '装车时间',
  `kaishiyunshushijian` datetime DEFAULT NULL COMMENT '开始运输时间',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='订单完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanwancheng`
--

LOCK TABLES `dingdanwancheng` WRITE;
/*!40000 ALTER TABLE `dingdanwancheng` DISABLE KEYS */;
INSERT INTO `dingdanwancheng` VALUES (71,'2024-05-18 08:40:18','货物编号1','货物名称1','规格1','货物数量1','file/dingdanwanchengTupian1.jpg,file/dingdanwanchengTupian2.jpg,file/dingdanwanchengTupian3.jpg','货主账号1','货主手机1','货主姓名1','司机账号1','司机手机1','司机姓名1','车牌号1','发货地址1','送达地址1','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已评价'),(72,'2024-05-18 08:40:18','货物编号2','货物名称2','规格2','货物数量2','file/dingdanwanchengTupian2.jpg,file/dingdanwanchengTupian3.jpg,file/dingdanwanchengTupian4.jpg','货主账号2','货主手机2','货主姓名2','司机账号2','司机手机2','司机姓名2','车牌号2','发货地址2','送达地址2','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已评价'),(73,'2024-05-18 08:40:18','货物编号3','货物名称3','规格3','货物数量3','file/dingdanwanchengTupian3.jpg,file/dingdanwanchengTupian4.jpg,file/dingdanwanchengTupian5.jpg','货主账号3','货主手机3','货主姓名3','司机账号3','司机手机3','司机姓名3','车牌号3','发货地址3','送达地址3','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已评价'),(74,'2024-05-18 08:40:18','货物编号4','货物名称4','规格4','货物数量4','file/dingdanwanchengTupian4.jpg,file/dingdanwanchengTupian5.jpg,file/dingdanwanchengTupian6.jpg','货主账号4','货主手机4','货主姓名4','司机账号4','司机手机4','司机姓名4','车牌号4','发货地址4','送达地址4','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已评价'),(75,'2024-05-18 08:40:18','货物编号5','货物名称5','规格5','货物数量5','file/dingdanwanchengTupian5.jpg,file/dingdanwanchengTupian6.jpg,file/dingdanwanchengTupian7.jpg','货主账号5','货主手机5','货主姓名5','司机账号5','司机手机5','司机姓名5','车牌号5','发货地址5','送达地址5','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已评价'),(76,'2024-05-18 08:40:18','货物编号6','货物名称6','规格6','货物数量6','file/dingdanwanchengTupian6.jpg,file/dingdanwanchengTupian7.jpg,file/dingdanwanchengTupian8.jpg','货主账号6','货主手机6','货主姓名6','司机账号6','司机手机6','司机姓名6','车牌号6','发货地址6','送达地址6','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已评价');
/*!40000 ALTER TABLE `dingdanwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huowudingdan`
--

DROP TABLE IF EXISTS `huowudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huowudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huowushuliang` varchar(200) DEFAULT NULL COMMENT '货物数量',
  `tupian` longtext COMMENT '图片',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijishouji` varchar(200) DEFAULT NULL COMMENT '司机手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `xinyongfen` varchar(200) DEFAULT NULL COMMENT '信用分',
  `fahuodizhi` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `songdadizhi` varchar(200) DEFAULT NULL COMMENT '送达地址',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  `jiedanriqi` datetime DEFAULT NULL COMMENT '接单日期',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='货物订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huowudingdan`
--

LOCK TABLES `huowudingdan` WRITE;
/*!40000 ALTER TABLE `huowudingdan` DISABLE KEYS */;
INSERT INTO `huowudingdan` VALUES (61,'2024-05-18 08:40:18','货物编号1','货物名称1','规格1','货物数量1','file/huowudingdanTupian1.jpg,file/huowudingdanTupian2.jpg,file/huowudingdanTupian3.jpg','货主账号1','货主手机1','司机账号1','司机手机1','货主姓名1','司机姓名1','车牌号1','信用分1','发货地址1','送达地址1','2024-05-18 16:40:18','2024-05-18 16:40:18','已装车','是',''),(62,'2024-05-18 08:40:18','货物编号2','货物名称2','规格2','货物数量2','file/huowudingdanTupian2.jpg,file/huowudingdanTupian3.jpg,file/huowudingdanTupian4.jpg','货主账号2','货主手机2','司机账号2','司机手机2','货主姓名2','司机姓名2','车牌号2','信用分2','发货地址2','送达地址2','2024-05-18 16:40:18','2024-05-18 16:40:18','已装车','是',''),(63,'2024-05-18 08:40:18','货物编号3','货物名称3','规格3','货物数量3','file/huowudingdanTupian3.jpg,file/huowudingdanTupian4.jpg,file/huowudingdanTupian5.jpg','货主账号3','货主手机3','司机账号3','司机手机3','货主姓名3','司机姓名3','车牌号3','信用分3','发货地址3','送达地址3','2024-05-18 16:40:18','2024-05-18 16:40:18','已装车','是',''),(64,'2024-05-18 08:40:18','货物编号4','货物名称4','规格4','货物数量4','file/huowudingdanTupian4.jpg,file/huowudingdanTupian5.jpg,file/huowudingdanTupian6.jpg','货主账号4','货主手机4','司机账号4','司机手机4','货主姓名4','司机姓名4','车牌号4','信用分4','发货地址4','送达地址4','2024-05-18 16:40:18','2024-05-18 16:40:18','已装车','是',''),(65,'2024-05-18 08:40:18','货物编号5','货物名称5','规格5','货物数量5','file/huowudingdanTupian5.jpg,file/huowudingdanTupian6.jpg,file/huowudingdanTupian7.jpg','货主账号5','货主手机5','司机账号5','司机手机5','货主姓名5','司机姓名5','车牌号5','信用分5','发货地址5','送达地址5','2024-05-18 16:40:18','2024-05-18 16:40:18','已装车','是',''),(66,'2024-05-18 08:40:18','货物编号6','货物名称6','规格6','货物数量6','file/huowudingdanTupian6.jpg,file/huowudingdanTupian7.jpg,file/huowudingdanTupian8.jpg','货主账号6','货主手机6','司机账号6','司机手机6','货主姓名6','司机姓名6','车牌号6','信用分6','发货地址6','送达地址6','2024-05-18 16:40:18','2024-05-18 16:40:18','已装车','是','');
/*!40000 ALTER TABLE `huowudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huowuxinxi`
--

DROP TABLE IF EXISTS `huowuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) NOT NULL COMMENT '货物名称',
  `guige` varchar(200) NOT NULL COMMENT '规格',
  `huowushuliang` int(11) NOT NULL COMMENT '货物数量',
  `huowujieshao` longtext NOT NULL COMMENT '货物介绍',
  `tupian` longtext COMMENT '图片',
  `fahuodizhi` varchar(200) NOT NULL COMMENT '发货地址',
  `songdadizhi` varchar(200) NOT NULL COMMENT '送达地址',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huowubianhao` (`huowubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='货物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huowuxinxi`
--

LOCK TABLES `huowuxinxi` WRITE;
/*!40000 ALTER TABLE `huowuxinxi` DISABLE KEYS */;
INSERT INTO `huowuxinxi` VALUES (51,'2024-05-18 08:40:18','1111111111','货物名称1','规格1',1,'货物介绍1','file/huowuxinxiTupian1.jpg,file/huowuxinxiTupian2.jpg,file/huowuxinxiTupian3.jpg','发货地址1','送达地址1','是','','货主账号1','货主手机1','货主姓名1','已接单','2024-05-18 16:40:18'),(52,'2024-05-18 08:40:18','2222222222','货物名称2','规格2',2,'货物介绍2','file/huowuxinxiTupian2.jpg,file/huowuxinxiTupian3.jpg,file/huowuxinxiTupian4.jpg','发货地址2','送达地址2','是','','货主账号2','货主手机2','货主姓名2','已接单','2024-05-18 16:40:18'),(53,'2024-05-18 08:40:18','3333333333','货物名称3','规格3',3,'货物介绍3','file/huowuxinxiTupian3.jpg,file/huowuxinxiTupian4.jpg,file/huowuxinxiTupian5.jpg','发货地址3','送达地址3','是','','货主账号3','货主手机3','货主姓名3','已接单','2024-05-18 16:40:18'),(54,'2024-05-18 08:40:18','4444444444','货物名称4','规格4',4,'货物介绍4','file/huowuxinxiTupian4.jpg,file/huowuxinxiTupian5.jpg,file/huowuxinxiTupian6.jpg','发货地址4','送达地址4','是','','货主账号4','货主手机4','货主姓名4','已接单','2024-05-18 16:40:18'),(55,'2024-05-18 08:40:18','5555555555','货物名称5','规格5',5,'货物介绍5','file/huowuxinxiTupian5.jpg,file/huowuxinxiTupian6.jpg,file/huowuxinxiTupian7.jpg','发货地址5','送达地址5','是','','货主账号5','货主手机5','货主姓名5','已接单','2024-05-18 16:40:18'),(56,'2024-05-18 08:40:18','6666666666','货物名称6','规格6',6,'货物介绍6','file/huowuxinxiTupian6.jpg,file/huowuxinxiTupian7.jpg,file/huowuxinxiTupian8.jpg','发货地址6','送达地址6','是','','货主账号6','货主手机6','货主姓名6','已接单','2024-05-18 16:40:18');
/*!40000 ALTER TABLE `huowuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huozhu`
--

DROP TABLE IF EXISTS `huozhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huozhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huozhuzhanghao` varchar(200) NOT NULL COMMENT '货主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huozhuxingming` varchar(200) NOT NULL COMMENT '货主姓名',
  `huozhushouji` varchar(200) NOT NULL COMMENT '货主手机',
  `touxiang` longtext COMMENT '头像',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huozhuzhanghao` (`huozhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='货主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huozhu`
--

LOCK TABLES `huozhu` WRITE;
/*!40000 ALTER TABLE `huozhu` DISABLE KEYS */;
INSERT INTO `huozhu` VALUES (41,'2024-05-18 08:40:18','货主账号1','123456','货主姓名1','19819881111','file/huozhuTouxiang1.jpg','是',''),(42,'2024-05-18 08:40:18','货主账号2','123456','货主姓名2','19819881112','file/huozhuTouxiang2.jpg','是',''),(43,'2024-05-18 08:40:18','货主账号3','123456','货主姓名3','19819881113','file/huozhuTouxiang3.jpg','是',''),(44,'2024-05-18 08:40:18','货主账号4','123456','货主姓名4','19819881114','file/huozhuTouxiang4.jpg','是',''),(45,'2024-05-18 08:40:18','货主账号5','123456','货主姓名5','19819881115','file/huozhuTouxiang5.jpg','是',''),(46,'2024-05-18 08:40:18','货主账号6','123456','货主姓名6','19819881116','file/huozhuTouxiang6.jpg','是','');
/*!40000 ALTER TABLE `huozhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-05-18 08:40:18','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"订单评价\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpingjia\"}],\"fontClass\":\"icon-common16\",\"menu\":\"订单评价管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"货物信息\",\"menuJump\":\"列表\",\"tableName\":\"huowuxinxi\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"货物订单\",\"menuJump\":\"列表\",\"tableName\":\"huowudingdan\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"装车\",\"menuJump\":\"列表\",\"tableName\":\"zhuangche\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"运输中\",\"menuJump\":\"列表\",\"tableName\":\"yunshuzhong\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"卸货\",\"menuJump\":\"列表\",\"tableName\":\"xiehuo\"}],\"fontClass\":\"icon-common50\",\"menu\":\"货物信息管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"货主\",\"menuJump\":\"列表\",\"tableName\":\"huozhu\"}],\"fontClass\":\"icon-user4\",\"menu\":\"货主管理\",\"unicode\":\"&#xef9a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"司机\",\"menuJump\":\"列表\",\"tableName\":\"siji\"}],\"fontClass\":\"icon-common19\",\"menu\":\"司机管理\",\"unicode\":\"&#xee00;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"货物订单\",\"立即接单\"],\"menu\":\"货物信息\",\"menuJump\":\"列表\",\"tableName\":\"huowuxinxi\"}],\"menu\":\"货物信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"订单评价\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpingjia\"}],\"fontClass\":\"icon-common16\",\"menu\":\"订单评价管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"装车\"],\"menu\":\"货物订单\",\"menuJump\":\"列表\",\"tableName\":\"huowudingdan\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"运输\"],\"menu\":\"装车\",\"menuJump\":\"列表\",\"tableName\":\"zhuangche\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"卸货\"],\"menu\":\"运输中\",\"menuJump\":\"列表\",\"tableName\":\"yunshuzhong\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"订单完成\"],\"menu\":\"卸货\",\"menuJump\":\"列表\",\"tableName\":\"xiehuo\"}],\"fontClass\":\"icon-common50\",\"menu\":\"货物信息管理\",\"unicode\":\"&#xef96;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"货物订单\",\"立即接单\"],\"menu\":\"货物信息\",\"menuJump\":\"列表\",\"tableName\":\"huowuxinxi\"}],\"menu\":\"货物信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"司机\",\"tableName\":\"siji\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"订单评价\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpingjia\"}],\"fontClass\":\"icon-common16\",\"menu\":\"订单评价管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"货物信息\",\"menuJump\":\"列表\",\"tableName\":\"huowuxinxi\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"货物订单\",\"menuJump\":\"列表\",\"tableName\":\"huowudingdan\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\",\"订单评价\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"装车\",\"menuJump\":\"列表\",\"tableName\":\"zhuangche\"},{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"运输中\",\"menuJump\":\"列表\",\"tableName\":\"yunshuzhong\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"卸货\",\"menuJump\":\"列表\",\"tableName\":\"xiehuo\"}],\"fontClass\":\"icon-common50\",\"menu\":\"货物信息管理\",\"unicode\":\"&#xef96;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"货物订单\",\"立即接单\"],\"menu\":\"货物信息\",\"menuJump\":\"列表\",\"tableName\":\"huowuxinxi\"}],\"menu\":\"货物信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"货主\",\"tableName\":\"huozhu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) NOT NULL COMMENT '司机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `sijishouji` varchar(200) NOT NULL COMMENT '司机手机',
  `touxiang` longtext COMMENT '头像',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `chepaihao` varchar(200) NOT NULL COMMENT '车牌号',
  `xinyongfen` int(11) DEFAULT NULL COMMENT '信用分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijizhanghao` (`sijizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (31,'2024-05-18 08:40:18','司机账号1','123456','司机姓名1','19819881111','file/sijiTouxiang1.jpg','是','','车牌号1',1),(32,'2024-05-18 08:40:18','司机账号2','123456','司机姓名2','19819881112','file/sijiTouxiang2.jpg','是','','车牌号2',2),(33,'2024-05-18 08:40:18','司机账号3','123456','司机姓名3','19819881113','file/sijiTouxiang3.jpg','是','','车牌号3',3),(34,'2024-05-18 08:40:18','司机账号4','123456','司机姓名4','19819881114','file/sijiTouxiang4.jpg','是','','车牌号4',4),(35,'2024-05-18 08:40:18','司机账号5','123456','司机姓名5','19819881115','file/sijiTouxiang5.jpg','是','','车牌号5',5),(36,'2024-05-18 08:40:18','司机账号6','123456','司机姓名6','19819881116','file/sijiTouxiang6.jpg','是','','车牌号6',6);
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','6eeermfs1cvdzizficbc7ssqpqcora60','2024-05-18 08:42:55','2024-05-18 09:42:56'),(2,31,'司机账号1','siji','司机','wcyrlwlpdqn3wzrt7x66ebejirwywmy9','2024-05-18 08:52:32','2024-05-18 09:52:32');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-05-18 08:40:18','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiehuo`
--

DROP TABLE IF EXISTS `xiehuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiehuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huowushuliang` varchar(200) DEFAULT NULL COMMENT '货物数量',
  `tupian` longtext COMMENT '图片',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijishouji` varchar(200) DEFAULT NULL COMMENT '司机手机',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `fahuodizhi` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `songdadizhi` varchar(200) DEFAULT NULL COMMENT '送达地址',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  `jiedanriqi` datetime DEFAULT NULL COMMENT '接单日期',
  `zhuangcheshijian` datetime DEFAULT NULL COMMENT '装车时间',
  `kaishiyunshushijian` datetime DEFAULT NULL COMMENT '开始运输时间',
  `xiehuoshijian` datetime DEFAULT NULL COMMENT '卸货时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='卸货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiehuo`
--

LOCK TABLES `xiehuo` WRITE;
/*!40000 ALTER TABLE `xiehuo` DISABLE KEYS */;
INSERT INTO `xiehuo` VALUES (101,'2024-05-18 08:40:18','货物编号1','货物名称1','规格1','货物数量1','file/xiehuoTupian1.jpg,file/xiehuoTupian2.jpg,file/xiehuoTupian3.jpg','货主账号1','货主手机1','货主姓名1','司机账号1','司机手机1','司机姓名1','车牌号1','发货地址1','送达地址1','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已完成'),(102,'2024-05-18 08:40:18','货物编号2','货物名称2','规格2','货物数量2','file/xiehuoTupian2.jpg,file/xiehuoTupian3.jpg,file/xiehuoTupian4.jpg','货主账号2','货主手机2','货主姓名2','司机账号2','司机手机2','司机姓名2','车牌号2','发货地址2','送达地址2','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已完成'),(103,'2024-05-18 08:40:18','货物编号3','货物名称3','规格3','货物数量3','file/xiehuoTupian3.jpg,file/xiehuoTupian4.jpg,file/xiehuoTupian5.jpg','货主账号3','货主手机3','货主姓名3','司机账号3','司机手机3','司机姓名3','车牌号3','发货地址3','送达地址3','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已完成'),(104,'2024-05-18 08:40:18','货物编号4','货物名称4','规格4','货物数量4','file/xiehuoTupian4.jpg,file/xiehuoTupian5.jpg,file/xiehuoTupian6.jpg','货主账号4','货主手机4','货主姓名4','司机账号4','司机手机4','司机姓名4','车牌号4','发货地址4','送达地址4','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已完成'),(105,'2024-05-18 08:40:18','货物编号5','货物名称5','规格5','货物数量5','file/xiehuoTupian5.jpg,file/xiehuoTupian6.jpg,file/xiehuoTupian7.jpg','货主账号5','货主手机5','货主姓名5','司机账号5','司机手机5','司机姓名5','车牌号5','发货地址5','送达地址5','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已完成'),(106,'2024-05-18 08:40:18','货物编号6','货物名称6','规格6','货物数量6','file/xiehuoTupian6.jpg,file/xiehuoTupian7.jpg,file/xiehuoTupian8.jpg','货主账号6','货主手机6','货主姓名6','司机账号6','司机手机6','司机姓名6','车牌号6','发货地址6','送达地址6','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已完成');
/*!40000 ALTER TABLE `xiehuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yunshuzhong`
--

DROP TABLE IF EXISTS `yunshuzhong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yunshuzhong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huowushuliang` varchar(200) DEFAULT NULL COMMENT '货物数量',
  `tupian` longtext COMMENT '图片',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijishouji` varchar(200) DEFAULT NULL COMMENT '司机手机',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `fahuodizhi` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `songdadizhi` varchar(200) DEFAULT NULL COMMENT '送达地址',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  `jiedanriqi` datetime DEFAULT NULL COMMENT '接单日期',
  `zhuangcheshijian` datetime DEFAULT NULL COMMENT '装车时间',
  `kaishiyunshushijian` datetime DEFAULT NULL COMMENT '开始运输时间',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='运输中';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yunshuzhong`
--

LOCK TABLES `yunshuzhong` WRITE;
/*!40000 ALTER TABLE `yunshuzhong` DISABLE KEYS */;
INSERT INTO `yunshuzhong` VALUES (91,'2024-05-18 08:40:18','货物编号1','货物名称1','规格1','货物数量1','file/yunshuzhongTupian1.jpg,file/yunshuzhongTupian2.jpg,file/yunshuzhongTupian3.jpg','货主账号1','货主手机1','货主姓名1','司机账号1','司机手机1','司机姓名1','车牌号1','发货地址1','送达地址1','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已卸货'),(92,'2024-05-18 08:40:18','货物编号2','货物名称2','规格2','货物数量2','file/yunshuzhongTupian2.jpg,file/yunshuzhongTupian3.jpg,file/yunshuzhongTupian4.jpg','货主账号2','货主手机2','货主姓名2','司机账号2','司机手机2','司机姓名2','车牌号2','发货地址2','送达地址2','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已卸货'),(93,'2024-05-18 08:40:18','货物编号3','货物名称3','规格3','货物数量3','file/yunshuzhongTupian3.jpg,file/yunshuzhongTupian4.jpg,file/yunshuzhongTupian5.jpg','货主账号3','货主手机3','货主姓名3','司机账号3','司机手机3','司机姓名3','车牌号3','发货地址3','送达地址3','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已卸货'),(94,'2024-05-18 08:40:18','货物编号4','货物名称4','规格4','货物数量4','file/yunshuzhongTupian4.jpg,file/yunshuzhongTupian5.jpg,file/yunshuzhongTupian6.jpg','货主账号4','货主手机4','货主姓名4','司机账号4','司机手机4','司机姓名4','车牌号4','发货地址4','送达地址4','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已卸货'),(95,'2024-05-18 08:40:18','货物编号5','货物名称5','规格5','货物数量5','file/yunshuzhongTupian5.jpg,file/yunshuzhongTupian6.jpg,file/yunshuzhongTupian7.jpg','货主账号5','货主手机5','货主姓名5','司机账号5','司机手机5','司机姓名5','车牌号5','发货地址5','送达地址5','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已卸货'),(96,'2024-05-18 08:40:18','货物编号6','货物名称6','规格6','货物数量6','file/yunshuzhongTupian6.jpg,file/yunshuzhongTupian7.jpg,file/yunshuzhongTupian8.jpg','货主账号6','货主手机6','货主姓名6','司机账号6','司机手机6','司机姓名6','车牌号6','发货地址6','送达地址6','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','已卸货');
/*!40000 ALTER TABLE `yunshuzhong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuangche`
--

DROP TABLE IF EXISTS `zhuangche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuangche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowubianhao` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huowushuliang` varchar(200) DEFAULT NULL COMMENT '货物数量',
  `tupian` longtext COMMENT '图片',
  `huozhuzhanghao` varchar(200) DEFAULT NULL COMMENT '货主账号',
  `huozhushouji` varchar(200) DEFAULT NULL COMMENT '货主手机',
  `huozhuxingming` varchar(200) DEFAULT NULL COMMENT '货主姓名',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijishouji` varchar(200) DEFAULT NULL COMMENT '司机手机',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `fahuodizhi` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `songdadizhi` varchar(200) DEFAULT NULL COMMENT '送达地址',
  `yujisongdashijian` datetime DEFAULT NULL COMMENT '预计送达时间',
  `jiedanriqi` datetime DEFAULT NULL COMMENT '接单日期',
  `zhuangcheshijian` datetime DEFAULT NULL COMMENT '装车时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='装车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuangche`
--

LOCK TABLES `zhuangche` WRITE;
/*!40000 ALTER TABLE `zhuangche` DISABLE KEYS */;
INSERT INTO `zhuangche` VALUES (81,'2024-05-18 08:40:18','货物编号1','货物名称1','规格1','货物数量1','file/zhuangcheTupian1.jpg,file/zhuangcheTupian2.jpg,file/zhuangcheTupian3.jpg','货主账号1','货主手机1','货主姓名1','司机账号1','司机手机1','司机姓名1','车牌号1','发货地址1','送达地址1','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','运输中'),(82,'2024-05-18 08:40:18','货物编号2','货物名称2','规格2','货物数量2','file/zhuangcheTupian2.jpg,file/zhuangcheTupian3.jpg,file/zhuangcheTupian4.jpg','货主账号2','货主手机2','货主姓名2','司机账号2','司机手机2','司机姓名2','车牌号2','发货地址2','送达地址2','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','运输中'),(83,'2024-05-18 08:40:18','货物编号3','货物名称3','规格3','货物数量3','file/zhuangcheTupian3.jpg,file/zhuangcheTupian4.jpg,file/zhuangcheTupian5.jpg','货主账号3','货主手机3','货主姓名3','司机账号3','司机手机3','司机姓名3','车牌号3','发货地址3','送达地址3','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','运输中'),(84,'2024-05-18 08:40:18','货物编号4','货物名称4','规格4','货物数量4','file/zhuangcheTupian4.jpg,file/zhuangcheTupian5.jpg,file/zhuangcheTupian6.jpg','货主账号4','货主手机4','货主姓名4','司机账号4','司机手机4','司机姓名4','车牌号4','发货地址4','送达地址4','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','运输中'),(85,'2024-05-18 08:40:18','货物编号5','货物名称5','规格5','货物数量5','file/zhuangcheTupian5.jpg,file/zhuangcheTupian6.jpg,file/zhuangcheTupian7.jpg','货主账号5','货主手机5','货主姓名5','司机账号5','司机手机5','司机姓名5','车牌号5','发货地址5','送达地址5','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','运输中'),(86,'2024-05-18 08:40:18','货物编号6','货物名称6','规格6','货物数量6','file/zhuangcheTupian6.jpg,file/zhuangcheTupian7.jpg,file/zhuangcheTupian8.jpg','货主账号6','货主手机6','货主姓名6','司机账号6','司机手机6','司机姓名6','车牌号6','发货地址6','送达地址6','2024-05-18 16:40:18','2024-05-18 16:40:18','2024-05-18 16:40:18','运输中');
/*!40000 ALTER TABLE `zhuangche` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 19:49:49
