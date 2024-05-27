/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - fuzhuangshangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fuzhuangshangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fuzhuangshangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-03-15 20:08:17','2022-03-15 20:08:17','2022-03-15 20:08:17'),(2,3,'收货人2','17703786902','地址2',1,'2022-03-15 20:08:17','2022-03-15 20:08:17','2022-03-15 20:08:17'),(3,2,'收货人3','17703786903','地址3',1,'2022-03-15 20:08:17','2022-03-15 20:08:17','2022-03-15 20:08:17'),(4,1,'收货人4','17703786904','地址4',2,'2022-03-15 20:08:17','2022-03-15 20:27:20','2022-03-15 20:08:17'),(5,1,'收货人5','17703786905','地址5',1,'2022-03-15 20:08:17','2022-03-15 20:27:14','2022-03-15 20:08:17');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `fuzhuang_id` int(11) DEFAULT NULL COMMENT '服装',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/fuzhuangshangcheng/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/fuzhuangshangcheng/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/fuzhuangshangcheng/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-15 20:07:07'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-15 20:07:07'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-03-15 20:07:07'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-03-15 20:07:07'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.95','2022-03-15 20:07:07'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-15 20:07:07'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-15 20:07:07'),(8,'fuzhuang_types','服装类型',1,'服装类型1',NULL,NULL,'2022-03-15 20:07:07'),(9,'fuzhuang_types','服装类型',2,'服装类型2',NULL,NULL,'2022-03-15 20:07:07'),(10,'fuzhuang_types','服装类型',3,'服装类型3',NULL,NULL,'2022-03-15 20:07:07'),(11,'fuzhuang_types','服装类型',4,'服装类型4',NULL,NULL,'2022-03-15 20:07:07'),(12,'fuzhuang_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-15 20:07:07'),(13,'fuzhuang_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-15 20:07:07'),(14,'fuzhuang_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-15 20:07:07'),(15,'fuzhuang_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-15 20:07:07'),(16,'fuzhuang_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-15 20:07:07'),(17,'fuzhuang_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-15 20:07:07'),(18,'fuzhuang_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-15 20:07:07'),(19,'fuzhuang_order_payment_types','订单支付类型',2,'积分',NULL,NULL,'2022-03-15 20:07:07'),(20,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-15 20:07:07'),(21,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-15 20:07:07'),(22,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-15 20:07:07'),(23,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-15 20:07:07'),(24,'gonggao_types','公告类型',3,'公告类型3',NULL,'','2022-03-15 20:28:38');

/*Table structure for table `fuzhuang` */

DROP TABLE IF EXISTS `fuzhuang`;

CREATE TABLE `fuzhuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fuzhuang_name` varchar(200) DEFAULT NULL COMMENT '服装名称  Search111 ',
  `fuzhuang_photo` varchar(200) DEFAULT NULL COMMENT '服装照片',
  `fuzhuang_types` int(11) DEFAULT NULL COMMENT '服装类型 Search111',
  `fuzhuang_kucun_number` int(11) DEFAULT NULL COMMENT '服装库存',
  `fuzhuang_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `fuzhuang_old_money` decimal(10,2) DEFAULT NULL COMMENT '服装原价 ',
  `fuzhuang_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `fuzhuang_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `fuzhuang_content` text COMMENT '服装简介 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `fuzhuang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='服装';

/*Data for the table `fuzhuang` */

insert  into `fuzhuang`(`id`,`fuzhuang_name`,`fuzhuang_photo`,`fuzhuang_types`,`fuzhuang_kucun_number`,`fuzhuang_price`,`fuzhuang_old_money`,`fuzhuang_new_money`,`fuzhuang_clicknum`,`fuzhuang_content`,`shangxia_types`,`fuzhuang_delete`,`create_time`) values (1,'服装名称1','http://localhost:8080/fuzhuangshangcheng/upload/fuzhuang1.jpg',4,101,462,'587.42','250.05',227,'服装简介1',1,1,'2022-03-15 20:08:17'),(2,'服装名称2','http://localhost:8080/fuzhuangshangcheng/upload/fuzhuang2.jpg',2,100,134,'655.37','222.62',209,'服装简介2',1,1,'2022-03-15 20:08:17'),(3,'服装名称3','http://localhost:8080/fuzhuangshangcheng/upload/fuzhuang3.jpg',4,103,242,'987.64','208.31',91,'服装简介3',1,1,'2022-03-15 20:08:17'),(4,'服装名称4','http://localhost:8080/fuzhuangshangcheng/upload/fuzhuang4.jpg',1,104,101,'568.81','341.70',333,'服装简介4',1,1,'2022-03-15 20:08:17'),(5,'服装名称5','http://localhost:8080/fuzhuangshangcheng/upload/fuzhuang5.jpg',1,102,123,'865.33','203.98',13,'服装简介5',1,1,'2022-03-15 20:08:17');

/*Table structure for table `fuzhuang_collection` */

DROP TABLE IF EXISTS `fuzhuang_collection`;

CREATE TABLE `fuzhuang_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuzhuang_id` int(11) DEFAULT NULL COMMENT '服装',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fuzhuang_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='服装收藏';

/*Data for the table `fuzhuang_collection` */

insert  into `fuzhuang_collection`(`id`,`fuzhuang_id`,`yonghu_id`,`fuzhuang_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-03-15 20:08:17','2022-03-15 20:08:17'),(2,2,1,1,'2022-03-15 20:08:17','2022-03-15 20:08:17'),(3,3,1,1,'2022-03-15 20:08:17','2022-03-15 20:08:17'),(4,4,1,1,'2022-03-15 20:08:17','2022-03-15 20:08:17'),(5,5,3,1,'2022-03-15 20:08:17','2022-03-15 20:08:17');

/*Table structure for table `fuzhuang_commentback` */

DROP TABLE IF EXISTS `fuzhuang_commentback`;

CREATE TABLE `fuzhuang_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuzhuang_id` int(11) DEFAULT NULL COMMENT '服装',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fuzhuang_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='服装评价';

/*Data for the table `fuzhuang_commentback` */

insert  into `fuzhuang_commentback`(`id`,`fuzhuang_id`,`yonghu_id`,`fuzhuang_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-03-15 20:08:17','回复信息1','2022-03-15 20:08:17','2022-03-15 20:08:17'),(2,2,2,'评价内容2','2022-03-15 20:08:17','回复信息2','2022-03-15 20:08:17','2022-03-15 20:08:17'),(3,3,2,'评价内容3','2022-03-15 20:08:17','回复信息3','2022-03-15 20:08:17','2022-03-15 20:08:17'),(4,4,1,'评价内容4','2022-03-15 20:08:17','回复信息4','2022-03-15 20:08:17','2022-03-15 20:08:17'),(5,5,3,'评价内容5','2022-03-15 20:08:17','回复信息5','2022-03-15 20:08:17','2022-03-15 20:08:17'),(6,2,1,'质量挺好的','2022-03-15 20:31:04','感谢您的关注','2022-03-15 20:31:30','2022-03-15 20:31:04');

/*Table structure for table `fuzhuang_order` */

DROP TABLE IF EXISTS `fuzhuang_order`;

CREATE TABLE `fuzhuang_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuzhuang_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `fuzhuang_id` int(11) DEFAULT NULL COMMENT '服装',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `fuzhuang_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `fuzhuang_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `fuzhuang_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `fuzhuang_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `fuzhuang_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='服装订单';

/*Data for the table `fuzhuang_order` */

insert  into `fuzhuang_order`(`id`,`fuzhuang_order_uuid_number`,`address_id`,`fuzhuang_id`,`yonghu_id`,`buy_number`,`fuzhuang_order_true_price`,`fuzhuang_order_courier_name`,`fuzhuang_order_courier_number`,`fuzhuang_order_types`,`fuzhuang_order_payment_types`,`insert_time`,`create_time`) values (1,'1647347181774',4,1,1,1,'250.05',NULL,NULL,2,2,'2022-03-15 20:26:22','2022-03-15 20:26:22'),(2,'1647347252276',4,5,1,3,'599.70','圆通快递','12415623',4,1,'2022-03-15 20:27:32','2022-03-15 20:27:32'),(3,'1647347252276',4,2,1,2,'436.34','申通快递','1245341',1,1,'2022-03-15 20:27:32','2022-03-15 20:27:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/fuzhuangshangcheng/upload/gonggao1.jpg',2,'2022-03-15 20:08:17','公告详情1','2022-03-15 20:08:17'),(2,'公告名称2','http://localhost:8080/fuzhuangshangcheng/upload/gonggao2.jpg',2,'2022-03-15 20:08:17','公告详情2','2022-03-15 20:08:17'),(3,'公告名称3','http://localhost:8080/fuzhuangshangcheng/upload/gonggao3.jpg',2,'2022-03-15 20:08:17','公告详情3','2022-03-15 20:08:17'),(4,'公告名称4','http://localhost:8080/fuzhuangshangcheng/upload/gonggao4.jpg',2,'2022-03-15 20:08:17','公告详情4','2022-03-15 20:08:17'),(5,'公告名称5','http://localhost:8080/fuzhuangshangcheng/upload/gonggao5.jpg',1,'2022-03-15 20:08:17','公告详情5','2022-03-15 20:08:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qeqf42mdudbhbfseo9q5nwdrg0ns9t3r','2022-03-15 20:23:00','2022-03-15 21:31:21'),(2,1,'a1','yonghu','用户','os8ygnaeiosms6oohs12nokzyl6lp14n','2022-03-15 20:25:18','2022-03-15 21:30:42');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/fuzhuangshangcheng/upload/yonghu1.jpg',2,'1@qq.com','10528.45','1545.40','1114.07',1,'2022-03-15 20:08:17'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/fuzhuangshangcheng/upload/yonghu2.jpg',2,'2@qq.com','608.17','547.75','324.86',1,'2022-03-15 20:08:17'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/fuzhuangshangcheng/upload/yonghu3.jpg',2,'3@qq.com','543.65','736.10','74.74',1,'2022-03-15 20:08:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
