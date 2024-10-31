/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yf-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yf-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yf-ssmj`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-01-08 22:39:58',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-08 22:39:58',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-08 22:39:58',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-08 22:39:58',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-08 22:39:58',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-08 22:39:58',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614389345936 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1614389337943,'2021-02-27 09:28:57','shangpinxinxi',1,31,'商品名称1','http://localhost:8080/yf-ssmj/upload/1614388976727.webp',6,99.9,0),(1614389345935,'2021-02-27 09:29:05','shangpinxinxi',1,32,'商品名称2','http://localhost:8080/yf-ssmj/upload/1614388986095.webp',4,99.9,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `adminid` int(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614389470924 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1,'2020-12-24 11:46:45',1,NULL,'这里可以咨询  可以求救 后台管理员会回复',NULL,0),(2,'2021-02-20 14:11:24',6,NULL,'‍12312312\r\n','TERERTETR\r\n',0),(1614389470923,'2021-02-27 09:31:10',1,NULL,'‍在这边可以跟卖家咨询一些问题\r\n','1233231212\r\n',0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/yf-ssmj/upload/1614388713894.jpg'),(2,'picture2','http://localhost:8080/yf-ssmj/upload/1614388718088.jpg'),(3,'picture3','http://localhost:8080/yf-ssmj/upload/1614388724262.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-01-08 22:39:58','标题1','http://localhost:8080/yf-ssmj/upload/1614388932851.jpg','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388932852.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388932852.jpg\">内容1\r\n'),(82,'2021-01-08 22:39:58','标题2','http://localhost:8080/yf-ssmj/upload/news_picture2.jpg','内容2<img id=\"pictureImg\" src=\"http://localhost:8080/yf-ssmj/upload/news_picture2.jpg\" width=\"100\" height=\"100\">\r\n'),(83,'2021-01-08 22:39:58','标题3','http://localhost:8080/yf-ssmj/upload/1614388946404.jpg','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388946408.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388946408.jpg\">内容3\r\n'),(84,'2021-01-08 22:39:58','标题4','http://localhost:8080/yf-ssmj/upload/1614388955659.jpg','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388955660.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388955660.jpg\">内容4\r\n'),(85,'2021-01-08 22:39:58','标题5','http://localhost:8080/yf-ssmj/upload/1614388963392.jpg','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388963392.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388963392.jpg\">内容5\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614389419082 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1614389353900,'2021-02-27 09:29:13','20212279291363091162','shangpinxinxi',1,32,'商品名称2','http://localhost:8080/yf-ssmj/upload/1614388986095.webp',4,99.9,99.9,999,399.6,1,'已完成','宇宙银河系金星1号'),(1614389353930,'2021-02-27 09:29:13','20212279291363390376','shangpinxinxi',1,31,'商品名称1','http://localhost:8080/yf-ssmj/upload/1614388976727.webp',6,99.9,99.9,999,599.4,1,'已完成','宇宙银河系金星1号'),(1614389419081,'2021-02-27 09:30:18','20212279301814591242','shangpinxinxi',1,32,'商品名称2','http://localhost:8080/yf-ssmj/upload/1614388986095.webp',1,99.9,99.9,99.9,99.9,1,'已退款','宇宙银河系金星1号');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614389273230 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1,'2021-02-26 17:03:58','当季流行'),(2,'2021-02-26 17:04:03','春季薄款'),(3,'2021-02-26 17:05:11','夏季套装'),(4,'2021-02-26 17:05:12','秋冬薄款'),(5,'2021-02-26 17:05:13','潮流服装');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614389228225 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`) values (31,'2021-01-08 22:39:58','商品编号1','商品名称1','当季流行','数量1','品牌1','上衣','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388976727.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388976727.webp\">详情1\r\n','http://localhost:8080/yf-ssmj/upload/1614388976727.webp','2021-02-27 09:29:36',14,99.9),(32,'2021-01-08 22:39:58','商品编号2','商品名称2','春季薄款','数量2','品牌2','裤子','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388986094.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388986094.webp\">详情2\r\n','http://localhost:8080/yf-ssmj/upload/1614388986095.webp','2021-02-27 09:30:30',17,99.9),(33,'2021-01-08 22:39:58','商品编号3','商品名称3','夏季套装','数量3','品牌3','外套','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388991601.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388991601.webp\">详情3\r\n','http://localhost:8080/yf-ssmj/upload/1614388991601.webp','2021-02-27 09:23:10',9,99.9),(34,'2021-01-08 22:39:58','商品编号4','商品名称4','秋冬薄款','数量4','品牌4','鞋子','<img src=\"http://localhost:8080/yf-ssmj/upload/1614388997901.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614388997901.webp\">详情4\r\n','http://localhost:8080/yf-ssmj/upload/1614388997901.webp','2021-02-27 09:24:57',16,99.9),(35,'2021-01-08 22:39:58','商品编号5','商品名称5','潮流服装','数量5','品牌5','秋裤','<img src=\"http://localhost:8080/yf-ssmj/upload/1614389004417.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614389004417.webp\">详情5\r\n','http://localhost:8080/yf-ssmj/upload/1614389004417.webp','2021-02-27 09:23:23',11,99.9),(36,'2021-01-08 22:39:58','商品编号6','商品名称6','潮流服装','数量6','品牌6','短裤','<img src=\"http://localhost:8080/yf-ssmj/upload/1614389011554.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yf-ssmj/upload/1614389011554.webp\">详情6\r\n','http://localhost:8080/yf-ssmj/upload/1614389011555.webp','2021-02-27 09:24:37',16,99.9);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','9d5lm32nkt1us3xmatnmzo3pa6hd81p7','2021-02-26 16:13:11','2021-02-27 10:46:01'),(2,11,'1','yonghu','用户','yyxeiw0xjbyjfxhzscnziosc5iic9rjq','2021-02-26 16:38:00','2021-02-26 17:38:01'),(3,1,'1','yonghu','用户','x1s4s7n9b25zblote97ysf6y6bwydphv','2021-02-26 17:02:48','2021-02-27 10:43:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-08 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`) values (1,'2021-01-08 22:39:58','111','用户姓名1','111','男','13823888881','773890001@qq.com',11111100),(12,'2021-01-08 22:39:58','用户2','用户姓名2','123456','男','13823888882','773890002@qq.com',100),(13,'2021-01-08 22:39:58','用户3','用户姓名3','123456','男','13823888883','773890003@qq.com',100),(14,'2021-01-08 22:39:58','用户4','用户姓名4','123456','男','13823888884','773890004@qq.com',100),(15,'2021-01-08 22:39:58','用户5','用户姓名5','123456','男','13823888885','773890005@qq.com',100),(16,'2021-01-08 22:39:58','用户6','用户姓名6','123456','男','13823888886','773890006@qq.com',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
