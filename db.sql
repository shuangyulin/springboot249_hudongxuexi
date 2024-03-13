/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixianxuexi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixianxuexi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixianxuexi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zaixianxuexi/upload/1641803130275.jpg'),(2,'轮播图2','http://localhost:8080/zaixianxuexi/upload/1641803350980.png'),(3,'轮播图3','http://localhost:8080/zaixianxuexi/upload/1641871096682.png');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (5,'forum_types','讨论类型名称',1,'讨论类型1',NULL,NULL,'2022-01-10 14:34:39'),(6,'forum_types','讨论类型名称',2,'讨论类型2',NULL,NULL,'2022-01-10 14:34:39'),(7,'forum_types','讨论类型名称',3,'讨论类型3',NULL,NULL,'2022-01-10 14:34:39'),(8,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-01-10 14:34:39'),(9,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-01-10 14:34:39'),(10,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-01-10 14:34:39'),(11,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-01-10 14:34:39'),(12,'banji_types','班级类型名称',1,'班级1',NULL,NULL,'2022-01-10 14:34:39'),(13,'banji_types','班级类型名称',2,'班级2',NULL,NULL,'2022-01-10 14:34:39'),(14,'banji_types','班级类型名称',3,'班级3',NULL,NULL,'2022-01-10 14:34:39'),(15,'zuoye_types','作业类型名称',1,'作业类型1',NULL,NULL,'2022-01-10 14:34:39'),(16,'zuoye_types','作业类型名称',2,'作业类型2',NULL,NULL,'2022-01-10 14:34:39'),(17,'gonggao_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-10 14:34:40'),(18,'gonggao_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-10 14:34:40'),(19,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-01-10 14:34:40'),(20,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-01-10 14:34:40'),(21,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-01-10 14:34:40'),(22,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-01-10 14:34:40'),(23,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2022-01-10 14:34:40'),(24,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2022-01-10 14:34:40'),(25,'kecheng_types','课程类型名称',1,'课程类型1',NULL,NULL,'2022-01-10 16:04:40'),(26,'kecheng_types','课程类型名称',2,'课程类型2',NULL,NULL,'2022-01-10 16:04:40'),(27,'kecheng_types','课程类型名称',3,'课程类型3',NULL,NULL,'2022-01-10 16:04:40'),(28,'kecheng_types','课程类型名称',4,'课程类型4',NULL,NULL,'2022-01-10 16:04:40'),(31,'kecheng_types','课程类型名称',5,'课程类型5',NULL,NULL,'2022-01-11 11:11:14');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (6,'试卷1',100,0,1,1,'2022-01-10 15:21:45'),(7,'试卷2',101,99,1,1,'2022-01-10 15:41:42'),(8,'试卷3',60,20,1,1,'2022-01-11 11:16:17');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (32,6,'多选题1','[{\"text\":\"A\",\"code\":\"A\"},{\"text\":\"答案是b\",\"code\":\"B\"},{\"text\":\"传\",\"code\":\"C\"}]',10,'B,A','答案解析',2,1,'2022-01-10 16:17:27'),(33,6,'单选题试题2','[{\"text\":\"啊\",\"code\":\"A\"},{\"text\":\"吧\",\"code\":\"B\"},{\"text\":\"传\",\"code\":\"C\"},{\"text\":\"答案是d\",\"code\":\"D\"}]',10,'D','无',1,2,'2022-01-10 16:20:34'),(34,6,'判断试题3','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',5,'A','无',3,3,'2022-01-10 16:21:09'),(35,6,'单选题题目4','[{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"答案是d\",\"code\":\"D\"}]',6,'D','答案解析1',1,3,'2022-01-10 16:22:19'),(36,7,'试题1','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'B','无',3,1,'2022-01-10 16:25:14'),(37,6,'8','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',8,'B','0.0',3,1,'2022-01-10 17:34:20'),(38,7,'99','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',9,'A','9.1',3,2,'2022-01-10 17:43:32'),(39,6,'11','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',11,'A','11',3,11,'2022-01-10 17:44:10'),(40,7,'999','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',99,'A','999',3,999,'2022-01-10 17:50:41'),(41,8,'试题1','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'A','无',3,1,'2022-01-11 11:16:37'),(42,8,'1','[{\"text\":\"a\",\"code\":\"A\"},{\"text\":\"c\",\"code\":\"C\"},{\"text\":\"答案是d\",\"code\":\"D\"}]',10,'D','wu',1,2,'2022-01-11 11:17:23');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (80,'1641807000057',1,6,16,'2022-01-10 17:30:00','2022-01-10 17:30:00'),(81,'1641870340581',1,7,108,'2022-01-11 11:05:41','2022-01-11 11:05:41');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (271,'1641807000057',1,34,'B',0,'2022-01-10 17:30:02'),(272,'1641807000057',1,35,'D',6,'2022-01-10 17:30:12'),(273,'1641807000057',1,33,'D',10,'2022-01-10 17:31:54'),(274,'1641807000057',1,32,'B',0,'2022-01-10 17:32:03'),(275,'1641870340581',1,40,'A',99,'2022-01-11 11:05:45'),(276,'1641870340581',1,38,'A',9,'2022-01-11 11:05:50'),(277,'1641870340581',1,36,'A',0,'2022-01-11 11:05:53');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (100,1,6,32,'未作答','2022-01-10 17:14:57','2022-01-10 17:14:57'),(101,1,6,33,'未作答','2022-01-10 17:14:57','2022-01-10 17:14:57'),(102,1,6,34,'未作答','2022-01-10 17:14:57','2022-01-10 17:14:57'),(103,1,6,35,'未作答','2022-01-10 17:14:57','2022-01-10 17:14:57'),(104,1,7,36,'A','2022-01-10 17:28:08','2022-01-10 17:28:08'),(105,1,6,34,'B','2022-01-10 17:30:02','2022-01-10 17:30:02'),(106,1,6,32,'B','2022-01-10 17:32:03','2022-01-10 17:32:03'),(107,1,7,36,'A','2022-01-11 11:05:53','2022-01-11 11:05:53');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '讨论标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '讨论类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='讨论';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`laoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'讨论2',NULL,NULL,6,'讨论2的内容',NULL,2,1,'2022-01-10 15:58:46',NULL,'2022-01-10 15:58:46'),(2,NULL,NULL,NULL,6,'111',1,NULL,2,'2022-01-10 16:03:29',NULL,'2022-01-10 16:03:29'),(3,'讨论1',1,NULL,NULL,'33',NULL,2,1,'2022-01-11 11:03:31',NULL,'2022-01-11 11:03:31'),(4,NULL,1,NULL,NULL,'评论1',3,NULL,2,'2022-01-11 11:03:42',NULL,'2022-01-11 11:03:42'),(5,NULL,NULL,NULL,6,'还成呀',3,NULL,2,'2022-01-11 11:11:35',NULL,'2022-01-11 11:11:35'),(6,NULL,NULL,1,NULL,'11',3,NULL,2,'2022-01-11 11:28:20',NULL,'2022-01-11 11:28:20'),(7,NULL,2,NULL,NULL,'嗯嗯嗯',3,NULL,2,'2022-01-11 11:30:44',NULL,'2022-01-11 11:30:44');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/zaixianxuexi/upload/1641804977858.jpg',1,'2022-01-10 14:34:40','<p>公告详情1111</p>','2022-01-10 14:34:40'),(2,'公告2','http://localhost:8080/zaixianxuexi/upload/1641870730914.jpg',1,'2022-01-11 11:12:19','<p>公告2的内容</p>','2022-01-11 11:12:19');

/*Table structure for table `huida` */

DROP TABLE IF EXISTS `huida`;

CREATE TABLE `huida` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `huifu_file` varchar(200) DEFAULT NULL COMMENT '回答文件',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='回答';

/*Data for the table `huida` */

insert  into `huida`(`id`,`zuoye_id`,`yonghu_id`,`huifu_file`,`create_time`) values (3,3,1,'http://localhost:8080/zaixianxuexi/upload/1641868958052.rar','2022-01-11 10:42:40'),(4,5,2,'http://localhost:8080/zaixianxuexi/upload/1641871911136.rar','2022-01-11 11:31:53');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_content` text COMMENT '课程介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_types`,`kecheng_content`,`create_time`) values (1,'课程1','http://localhost:8080/zaixianxuexi/upload/1641802041861.jpg',1,'<p>课程1的介绍</p>','2022-01-10 16:07:29'),(2,'课程2','http://localhost:8080/zaixianxuexi/upload/1641802060251.jpg',2,'<p>课程2的详情</p>','2022-01-10 16:07:47'),(3,'课程3','http://localhost:8080/zaixianxuexi/upload/1641870752607.jpg',3,'<p>课程3的介绍</p>','2022-01-11 11:12:42');

/*Table structure for table `kechengshipin` */

DROP TABLE IF EXISTS `kechengshipin`;

CREATE TABLE `kechengshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `kechengshipin_name` varchar(200) DEFAULT NULL COMMENT '视频名称  Search111 ',
  `kechengshipin_photo` varchar(200) DEFAULT NULL COMMENT '视频照片',
  `kechengshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `kechengshipin_file` varchar(200) DEFAULT NULL COMMENT '课程资料',
  `shangpin_content` text COMMENT '视频简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='课程视频';

/*Data for the table `kechengshipin` */

insert  into `kechengshipin`(`id`,`kecheng_id`,`kechengshipin_name`,`kechengshipin_photo`,`kechengshipin_video`,`kechengshipin_file`,`shangpin_content`,`create_time`) values (1,1,'课程1的视频1标题','http://localhost:8080/zaixianxuexi/upload/1641802079903.jpg','http://localhost:8080/zaixianxuexi/upload/1641802084436.mp4','http://localhost:8080/zaixianxuexi/upload/1641802097277.rar','<p>课程1的视频1详情内容</p>','2022-01-10 16:08:52'),(2,1,'课程1的视频2','http://localhost:8080/zaixianxuexi/upload/1641802233266.jpg','http://localhost:8080/zaixianxuexi/upload/1641802246405.mp4','http://localhost:8080/zaixianxuexi/upload/1641802239887.rar','<p>课程2的视频2的详情</p>','2022-01-10 16:10:57'),(3,3,'课程3的视频1','http://localhost:8080/zaixianxuexi/upload/1641870785485.jfif','http://localhost:8080/zaixianxuexi/upload/1641870790866.mp4','http://localhost:8080/zaixianxuexi/upload/1641870799740.rar','<p>课程3的视频1</p>','2022-01-11 11:13:28'),(4,3,'课程3的视频2','http://localhost:8080/zaixianxuexi/upload/1641870842138.jfif','http://localhost:8080/zaixianxuexi/upload/1641870832309.mp4','http://localhost:8080/zaixianxuexi/upload/1641870827461.rar','<p>课程3的视频2的介绍</p>','2022-01-11 11:14:14');

/*Table structure for table `kechengshipin_liuyan` */

DROP TABLE IF EXISTS `kechengshipin_liuyan`;

CREATE TABLE `kechengshipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechengshipin_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kechengshipin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kechengshipin_liuyan` */

insert  into `kechengshipin_liuyan`(`id`,`kechengshipin_id`,`yonghu_id`,`kechengshipin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,2,1,'888',NULL,'2022-01-10 17:57:28',NULL,'2022-01-10 17:57:28'),(2,1,1,'留言1','回复1','2022-01-11 11:04:09','2022-01-11 11:14:28','2022-01-10 15:21:15');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号 Search111 ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','张1','17703786901','http://localhost:8080/zaixianxuexi/upload/1641802450698.jpg',1,'11@qq.com','2022-01-10 16:14:19'),(2,'a2','123456','张2','17703786902','http://localhost:8080/zaixianxuexi/upload/1641802534243.jpg',2,'22@qq.com','2022-01-10 16:15:43');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','jvqn3t2yfu432q5xkfl66toufgv9qiw6','2022-01-10 14:20:09','2022-01-11 14:26:18'),(2,1,'a1','yonghu','用户','exow4aeb2fwgmacgeouks9kcgsc1jmvt','2022-01-10 16:29:41','2022-01-11 11:17:53'),(3,1,'a1','laoshi','老师','n1dbdodo7gp9rx9oxaym05qy2b6uauwm','2022-01-10 17:53:58','2022-01-11 12:25:42'),(4,1,'a1','yonghu','学生','nj9vapsd98wsf0ymrzk19m0fq484gkay','2022-01-11 11:03:06','2022-01-11 12:03:07'),(5,2,'a2','yonghu','学生','2ffew45kx9q5imp356fsx3mtfj43nl8d','2022-01-11 11:29:55','2022-01-11 12:29:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`banji_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/zaixianxuexi/upload/1641800942724.jpg',1,'11@qq.com',1,'2022-01-10 15:21:15'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/zaixianxuexi/upload/1641801041934.jpg',1,'22@qq.com',2,'2022-01-10 15:50:53'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/zaixianxuexi/upload/1641801384986.jpg',1,'33@qq.com',1,'2022-01-10 15:56:39');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业唯一编号 Search111 ',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称 Search111 ',
  `zuoye_types` int(11) NOT NULL COMMENT '作业类型 ',
  `banji_types` int(11) NOT NULL COMMENT '班级类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业发布时间 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_content` text COMMENT '作业详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`laoshi_id`,`zuoye_uuid_number`,`zuoye_name`,`zuoye_types`,`banji_types`,`insert_time`,`zuoye_file`,`zuoye_content`,`create_time`) values (2,1,'1641863781910','作业1',1,1,'2022-01-11 09:17:33','http://localhost:8080/zaixianxuexi/upload/1641863845931.rar','<p>作业1的介绍</p>','2022-01-11 09:17:33'),(3,1,'1641863856358','作恶2',1,1,'2022-01-11 09:17:59','http://localhost:8080/zaixianxuexi/upload/1641863872801.rar','<p>作业2的文件</p>','2022-01-11 09:17:59'),(4,1,'1641867419067','作业3',2,2,'2022-01-11 10:17:39','http://localhost:8080/zaixianxuexi/upload/1641867439091.rar','<p>作业3的详情</p>','2022-01-11 10:17:39'),(5,1,'1641871737870','作业4',1,2,'2022-01-11 11:29:28','http://localhost:8080/zaixianxuexi/upload/1641871757412.rar','<p>作业4的详情介绍</p>','2022-01-11 11:29:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
