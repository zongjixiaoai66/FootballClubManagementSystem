/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t340`;
CREATE DATABASE IF NOT EXISTS `t340` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t340`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-27 01:38:11'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-27 01:38:11'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-27 01:38:11'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-27 01:38:11'),
	(5, 'saishi_types', '赛事类型', 1, '赛事类型1', NULL, NULL, '2023-04-27 01:38:11'),
	(6, 'saishi_types', '赛事类型', 2, '赛事类型2', NULL, NULL, '2023-04-27 01:38:11'),
	(7, 'saishi_types', '赛事类型', 3, '赛事类型3', NULL, NULL, '2023-04-27 01:38:11'),
	(8, 'saishi_types', '赛事类型', 4, '赛事类型4', NULL, NULL, '2023-04-27 01:38:11'),
	(9, 'xunlian_types', '训练计划类型', 1, '训练计划类型1', NULL, NULL, '2023-04-27 01:38:11'),
	(10, 'xunlian_types', '训练计划类型', 2, '训练计划类型2', NULL, NULL, '2023-04-27 01:38:11'),
	(11, 'xunlian_types', '训练计划类型', 3, '训练计划类型3', NULL, NULL, '2023-04-27 01:38:11'),
	(12, 'xunlian_types', '训练计划类型', 4, '训练计划类型4', NULL, NULL, '2023-04-27 01:38:11'),
	(13, 'shuju_types', '球员数据类型', 1, '球员数据类型1', NULL, NULL, '2023-04-27 01:38:11'),
	(14, 'shuju_types', '球员数据类型', 2, '球员数据类型2', NULL, NULL, '2023-04-27 01:38:11'),
	(15, 'shuju_types', '球员数据类型', 3, '球员数据类型3', NULL, NULL, '2023-04-27 01:38:11'),
	(16, 'shuju_types', '球员数据类型', 4, '球员数据类型4', NULL, NULL, '2023-04-27 01:38:11');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-27 01:38:45', '公告详情1', '2023-04-27 01:38:45'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-27 01:38:45', '公告详情2', '2023-04-27 01:38:45'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-04-27 01:38:45', '公告详情3', '2023-04-27 01:38:45'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-27 01:38:45', '公告详情4', '2023-04-27 01:38:45'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-27 01:38:45', '公告详情5', '2023-04-27 01:38:45'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-27 01:38:45', '公告详情6', '2023-04-27 01:38:45'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-27 01:38:45', '公告详情7', '2023-04-27 01:38:45'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-27 01:38:45', '公告详情8', '2023-04-27 01:38:45'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-04-27 01:38:45', '公告详情9', '2023-04-27 01:38:45'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-27 01:38:45', '公告详情10', '2023-04-27 01:38:45'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-27 01:38:45', '公告详情11', '2023-04-27 01:38:45'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-04-27 01:38:45', '公告详情12', '2023-04-27 01:38:45'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-27 01:38:45', '公告详情13', '2023-04-27 01:38:45'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-04-27 01:38:45', '公告详情14', '2023-04-27 01:38:45');

DROP TABLE IF EXISTS `hetong`;
CREATE TABLE IF NOT EXISTS `hetong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `hetong_name` varchar(200) DEFAULT NULL COMMENT '合同标题  Search111 ',
  `hetong_file` varchar(200) DEFAULT NULL COMMENT '上传合同',
  `hetong_text` text COMMENT '备注',
  `hetong_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='合同';

DELETE FROM `hetong`;
INSERT INTO `hetong` (`id`, `yonghu_id`, `hetong_name`, `hetong_file`, `hetong_text`, `hetong_delete`, `create_time`) VALUES
	(1, 1, '合同标题1', 'upload/file.rar', '备注1', 1, '2023-04-27 01:38:45'),
	(2, 3, '合同标题2', 'upload/file.rar', '备注2', 1, '2023-04-27 01:38:45'),
	(3, 3, '合同标题3', 'upload/file.rar', '备注3', 1, '2023-04-27 01:38:45'),
	(4, 2, '合同标题4', 'upload/file.rar', '备注4', 1, '2023-04-27 01:38:45'),
	(5, 2, '合同标题5', 'upload/file.rar', '备注5', 1, '2023-04-27 01:38:45'),
	(6, 2, '合同标题6', 'upload/file.rar', '备注6', 1, '2023-04-27 01:38:45'),
	(7, 2, '合同标题7', 'upload/file.rar', '备注7', 1, '2023-04-27 01:38:45'),
	(8, 2, '合同标题8', 'upload/file.rar', '备注8', 1, '2023-04-27 01:38:45'),
	(9, 3, '合同标题9', 'upload/file.rar', '备注9', 1, '2023-04-27 01:38:45'),
	(10, 3, '合同标题10', 'upload/file.rar', '备注10', 1, '2023-04-27 01:38:45'),
	(11, 1, '合同标题11', 'upload/file.rar', '备注11', 1, '2023-04-27 01:38:45'),
	(12, 1, '合同标题12', 'upload/file.rar', '备注12', 1, '2023-04-27 01:38:45'),
	(13, 3, '合同标题13', 'upload/file.rar', '备注13', 1, '2023-04-27 01:38:45'),
	(14, 1, '合同标题14', 'upload/file.rar', '备注14', 1, '2023-04-27 01:38:45'),
	(15, 1, '后台', '/upload/1682563893884.jpg', '这里可以上传图片也可以是文件我上传的是图片', 1, '2023-04-27 02:51:48');

DROP TABLE IF EXISTS `jiaolian`;
CREATE TABLE IF NOT EXISTS `jiaolian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_uuid_number` varchar(200) DEFAULT NULL COMMENT '教练编号 Search111 ',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_id_number` varchar(200) DEFAULT NULL COMMENT '教练身份证号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '教练邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教练';

DELETE FROM `jiaolian`;
INSERT INTO `jiaolian` (`id`, `username`, `password`, `jiaolian_uuid_number`, `jiaolian_name`, `jiaolian_phone`, `jiaolian_id_number`, `jiaolian_photo`, `sex_types`, `jiaolian_email`, `create_time`) VALUES
	(1, '教练1', '123456', '1682559525084', '教练姓名1', '17703786901', '410224199010102001', 'upload/jiaolian1.jpg', 1, '1@qq.com', '2023-04-27 01:38:45'),
	(2, '教练2', '123456', '1682559525145', '教练姓名2', '17703786902', '410224199010102002', 'upload/jiaolian2.jpg', 2, '2@qq.com', '2023-04-27 01:38:45'),
	(3, '教练3', '123456', '1682559525114', '教练姓名3', '17703786903', '410224199010102003', 'upload/jiaolian3.jpg', 1, '3@qq.com', '2023-04-27 01:38:45');

DROP TABLE IF EXISTS `saishi`;
CREATE TABLE IF NOT EXISTS `saishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `saishi_name` varchar(200) DEFAULT NULL COMMENT '赛事名称  Search111 ',
  `saishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '赛事编号',
  `saishi_photo` varchar(200) DEFAULT NULL COMMENT '赛事照片',
  `saishi_address` varchar(200) DEFAULT NULL COMMENT '赛事地点',
  `saishi_video` varchar(200) DEFAULT NULL COMMENT '赛事视频',
  `saishi_types` int DEFAULT NULL COMMENT '赛事类型 Search111',
  `saishi_content` longtext COMMENT '赛事介绍 ',
  `saishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='赛事';

DELETE FROM `saishi`;
INSERT INTO `saishi` (`id`, `saishi_name`, `saishi_uuid_number`, `saishi_photo`, `saishi_address`, `saishi_video`, `saishi_types`, `saishi_content`, `saishi_delete`, `insert_time`, `create_time`) VALUES
	(1, '赛事名称1', '1682559525107', 'upload/saishi1.jpg', '赛事地点1', 'upload/video.mp4', 4, '赛事介绍1', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(2, '赛事名称2', '1682559525121', 'upload/saishi2.jpg', '赛事地点2', 'upload/video.mp4', 4, '赛事介绍2', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(3, '赛事名称3', '1682559525072', 'upload/saishi3.jpg', '赛事地点3', 'upload/video.mp4', 1, '赛事介绍3', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(4, '赛事名称4', '1682559525084', 'upload/saishi4.jpg', '赛事地点4', 'upload/video.mp4', 1, '赛事介绍4', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(5, '赛事名称5', '1682559525093', 'upload/saishi5.jpg', '赛事地点5', 'upload/video.mp4', 1, '赛事介绍5', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(6, '赛事名称6', '1682559525097', 'upload/saishi6.jpg', '赛事地点6', 'upload/video.mp4', 2, '赛事介绍6', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(7, '赛事名称7', '1682559525100', 'upload/saishi7.jpg', '赛事地点7', 'upload/video.mp4', 4, '赛事介绍7', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(8, '赛事名称8', '1682559525160', 'upload/saishi8.jpg', '赛事地点8', 'upload/video.mp4', 4, '赛事介绍8', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(9, '赛事名称9', '1682559525166', 'upload/saishi9.jpg', '赛事地点9', 'upload/video.mp4', 3, '赛事介绍9', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(10, '赛事名称10', '1682559525120', 'upload/saishi10.jpg', '赛事地点10', 'upload/video.mp4', 4, '赛事介绍10', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(11, '赛事名称11', '1682559525081', 'upload/saishi11.jpg', '赛事地点11', 'upload/video.mp4', 4, '赛事介绍11', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(12, '赛事名称12', '1682559525080', 'upload/saishi12.jpg', '赛事地点12', 'upload/video.mp4', 3, '赛事介绍12', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(13, '赛事名称13', '1682559525115', 'upload/saishi13.jpg', '赛事地点13', 'upload/video.mp4', 2, '赛事介绍13', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(14, '赛事名称14', '1682559525112', 'upload/saishi14.jpg', '赛事地点14', 'upload/video.mp4', 1, '赛事介绍14', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45');

DROP TABLE IF EXISTS `shuju`;
CREATE TABLE IF NOT EXISTS `shuju` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shuju_name` varchar(200) DEFAULT NULL COMMENT '球员数据名称  Search111 ',
  `shuju_uuid_number` varchar(200) DEFAULT NULL COMMENT '球员数据编号',
  `shuju_photo` varchar(200) DEFAULT NULL COMMENT '球员数据照片',
  `shuju_types` int DEFAULT NULL COMMENT '球员数据类型 Search111',
  `shuju_time` date DEFAULT NULL COMMENT '日期',
  `shuju_content` longtext COMMENT '球员数据介绍 ',
  `shuju_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='球员数据';

DELETE FROM `shuju`;
INSERT INTO `shuju` (`id`, `yonghu_id`, `shuju_name`, `shuju_uuid_number`, `shuju_photo`, `shuju_types`, `shuju_time`, `shuju_content`, `shuju_delete`, `insert_time`, `create_time`) VALUES
	(1, 2, '球员数据名称1', '1682559525095', 'upload/shuju1.jpg', 1, '2023-04-27', '球员数据介绍1', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(2, 3, '球员数据名称2', '1682559525092', 'upload/shuju2.jpg', 2, '2023-04-27', '球员数据介绍2', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(3, 3, '球员数据名称3', '1682559525115', 'upload/shuju3.jpg', 2, '2023-04-27', '球员数据介绍3', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(4, 1, '球员数据名称4', '1682559525162', 'upload/shuju4.jpg', 4, '2023-04-27', '球员数据介绍4', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(5, 2, '球员数据名称5', '1682559525164', 'upload/shuju5.jpg', 1, '2023-04-27', '球员数据介绍5', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(6, 2, '球员数据名称6', '1682559525170', 'upload/shuju6.jpg', 4, '2023-04-27', '球员数据介绍6', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(7, 1, '球员数据名称7', '1682559525154', 'upload/shuju7.jpg', 4, '2023-04-27', '球员数据介绍7', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(8, 2, '球员数据名称8', '1682559525154', 'upload/shuju8.jpg', 3, '2023-04-27', '球员数据介绍8', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(9, 2, '球员数据名称9', '1682559525153', 'upload/shuju9.jpg', 1, '2023-04-27', '球员数据介绍9', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(10, 1, '球员数据名称10', '1682559525101', 'upload/shuju10.jpg', 2, '2023-04-27', '球员数据介绍10', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(11, 2, '球员数据名称11', '1682559525120', 'upload/shuju11.jpg', 2, '2023-04-27', '球员数据介绍11', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(12, 3, '球员数据名称12', '1682559525138', 'upload/shuju12.jpg', 2, '2023-04-27', '球员数据介绍12', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(13, 1, '球员数据名称13', '1682559525161', 'upload/shuju13.jpg', 4, '2023-04-27', '球员数据介绍13', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(14, 3, '球员数据名称14', '1682559525119', 'upload/shuju14.jpg', 4, '2023-04-27', '球员数据介绍14', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(15, 1, '测试', '1682563771230', '/upload/1682563787711.jpg', 4, '2023-04-27', '<pre class="ql-syntax" spellcheck="false">c测\n</pre>', 1, '2023-04-27 02:49:57', '2023-04-27 02:49:57');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'ctpw5k2q4oeytuqtazbor35odq6hoxru', '2023-04-27 01:41:02', '2024-08-04 04:31:58'),
	(2, 1, 'admin', 'users', '管理员', 'fi06rg60m09w7mpx97yj3q2o17m5rmp5', '2023-04-27 01:43:19', '2024-08-04 04:30:48'),
	(3, 1, 'a1', 'jiaolian', '教练', 'qnec0u4yxauh27h0o3i8eefvlyom5000', '2023-04-27 02:46:12', '2024-08-04 04:31:46');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-27 01:38:11');

DROP TABLE IF EXISTS `xunlian`;
CREATE TABLE IF NOT EXISTS `xunlian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xunlian_name` varchar(200) DEFAULT NULL COMMENT '训练计划名称  Search111 ',
  `xunlian_uuid_number` varchar(200) DEFAULT NULL COMMENT '训练计划编号',
  `xunlian_photo` varchar(200) DEFAULT NULL COMMENT '训练计划照片',
  `xunlian_types` int DEFAULT NULL COMMENT '训练计划类型 Search111',
  `xunlian_kemu` varchar(200) DEFAULT NULL COMMENT '训练科目',
  `xunlian_time` date DEFAULT NULL COMMENT '日期',
  `xunlian_content` longtext COMMENT '训练计划介绍 ',
  `xunlian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='训练计划';

DELETE FROM `xunlian`;
INSERT INTO `xunlian` (`id`, `yonghu_id`, `xunlian_name`, `xunlian_uuid_number`, `xunlian_photo`, `xunlian_types`, `xunlian_kemu`, `xunlian_time`, `xunlian_content`, `xunlian_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '训练计划名称1', '1682559525102', 'upload/xunlian1.jpg', 1, '训练科目1', '2023-04-27', '训练计划介绍1', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(2, 3, '训练计划名称2', '1682559525152', 'upload/xunlian2.jpg', 1, '训练科目2', '2023-04-27', '训练计划介绍2', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(3, 2, '训练计划名称3', '1682559525117', 'upload/xunlian3.jpg', 1, '训练科目3', '2023-04-27', '训练计划介绍3', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(4, 3, '训练计划名称4', '1682559525105', 'upload/xunlian4.jpg', 1, '训练科目4', '2023-04-27', '训练计划介绍4', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(5, 3, '训练计划名称5', '1682559525157', 'upload/xunlian5.jpg', 2, '训练科目5', '2023-04-27', '训练计划介绍5', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(6, 1, '训练计划名称6', '1682559525082', 'upload/xunlian6.jpg', 2, '训练科目6', '2023-04-27', '训练计划介绍6', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(7, 3, '训练计划名称7', '1682559525167', 'upload/xunlian7.jpg', 2, '训练科目7', '2023-04-27', '训练计划介绍7', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(8, 3, '训练计划名称8', '1682559525127', 'upload/xunlian8.jpg', 2, '训练科目8', '2023-04-27', '训练计划介绍8', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(9, 3, '训练计划名称9', '1682559525079', 'upload/xunlian9.jpg', 4, '训练科目9', '2023-04-27', '训练计划介绍9', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(10, 3, '训练计划名称10', '1682559525097', 'upload/xunlian10.jpg', 3, '训练科目10', '2023-04-27', '训练计划介绍10', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(11, 3, '训练计划名称11', '1682559525142', 'upload/xunlian11.jpg', 1, '训练科目11', '2023-04-27', '训练计划介绍11', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(12, 1, '训练计划名称12', '1682559525119', 'upload/xunlian12.jpg', 1, '训练科目12', '2023-04-27', '训练计划介绍12', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(13, 3, '训练计划名称13', '1682559525087', 'upload/xunlian13.jpg', 2, '训练科目13', '2023-04-27', '训练计划介绍13', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(14, 2, '训练计划名称14', '1682559525082', 'upload/xunlian14.jpg', 4, '训练科目14', '2023-04-27', '训练计划介绍14', 1, '2023-04-27 01:38:45', '2023-04-27 01:38:45'),
	(15, 1, '测试', '1682563817059', '/upload/1682563828185.jpg', 3, '测试', '2023-04-27', '<p>测试</p>', 1, '2023-04-27 02:50:34', '2023-04-27 02:50:34');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '1682559525139', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', '2023-04-27 01:38:45'),
	(2, '用户2', '123456', '1682559525166', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-04-27 01:38:45'),
	(3, '用户3', '123456', '1682559525093', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', '2023-04-27 01:38:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
