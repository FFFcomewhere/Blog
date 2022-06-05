/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : forest_blog

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 13/04/2021 13:23:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `article_user_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `article_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `article_content` mediumtext COMMENT '内容',
  `article_view_count` int(11) DEFAULT '0' COMMENT '访问量',
  `article_comment_count` int(11) DEFAULT '0' COMMENT '评论数',
  `article_like_count` int(11) DEFAULT '0' COMMENT '点赞数',
  `article_is_comment` int(1) unsigned DEFAULT NULL COMMENT '是否允许评论',
  `article_status` int(1) unsigned DEFAULT '1' COMMENT '状态',
  `article_order` int(11) unsigned DEFAULT NULL COMMENT '排序值',
  `article_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `article_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `article_summary` text COMMENT '摘要',
  `article_thumbnail` varchar(255) DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, 1, '文章一', '<p>文章一</p>', 27, 0, 3, 1, 1, 1, '2020-11-25 20:51:52', '2021-10-06 23:54:18', NULL, '/img/thumbnail/random/img_1.jpg');
INSERT INTO `article` VALUES (2, 1, '文章二', '<p>文章二</p>', 27, 0, 3, 1, 1, 1, '2020-11-25 20:51:52', '2021-10-06 23:54:18', NULL, '/img/thumbnail/random/img_2.jpg');
INSERT INTO `article` VALUES (3, 1, '文章三', '<p>文章三</p>', 27, 0, 3, 1, 1, 1, '2020-11-25 20:51:52', '2021-10-06 23:54:18', NULL, '/img/thumbnail/random/img_3.jpg');
INSERT INTO `article` VALUES (4, 1, '文章四', '<p>文章四</p>', 27, 0, 3, 1, 1, 1, '2020-11-25 20:51:52', '2021-10-06 23:54:18', NULL, '/img/thumbnail/random/img_4.jpg');
COMMIT;

-- ----------------------------
-- Table structure for article_category_ref
-- ----------------------------
DROP TABLE IF EXISTS `article_category_ref`;
CREATE TABLE `article_category_ref` (
  `article_id` int(11) NOT NULL COMMENT '文章ID',
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`article_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_category_ref
-- ----------------------------
BEGIN;
INSERT INTO `article_category_ref` VALUES (1, 1);
INSERT INTO `article_category_ref` VALUES (1, 9);
INSERT INTO `article_category_ref` VALUES (2, 1);
INSERT INTO `article_category_ref` VALUES (2, 9);
INSERT INTO `article_category_ref` VALUES (3, 1);
INSERT INTO `article_category_ref` VALUES (3, 8);
INSERT INTO `article_category_ref` VALUES (4, 10);
INSERT INTO `article_category_ref` VALUES (4, 14);
INSERT INTO `article_category_ref` VALUES (5, 1);
INSERT INTO `article_category_ref` VALUES (5, 8);
INSERT INTO `article_category_ref` VALUES (6, 1);
INSERT INTO `article_category_ref` VALUES (6, 9);
INSERT INTO `article_category_ref` VALUES (7, 1);
INSERT INTO `article_category_ref` VALUES (7, 9);
INSERT INTO `article_category_ref` VALUES (8, 1);
INSERT INTO `article_category_ref` VALUES (8, 9);
INSERT INTO `article_category_ref` VALUES (9, 1);
INSERT INTO `article_category_ref` VALUES (9, 9);
INSERT INTO `article_category_ref` VALUES (10, 1);
INSERT INTO `article_category_ref` VALUES (10, 2);
INSERT INTO `article_category_ref` VALUES (11, 1);
INSERT INTO `article_category_ref` VALUES (11, 2);
INSERT INTO `article_category_ref` VALUES (12, 1);
INSERT INTO `article_category_ref` VALUES (12, 2);
INSERT INTO `article_category_ref` VALUES (13, 10);
INSERT INTO `article_category_ref` VALUES (13, 13);
INSERT INTO `article_category_ref` VALUES (14, 1);
INSERT INTO `article_category_ref` VALUES (14, 9);
INSERT INTO `article_category_ref` VALUES (15, 1);
INSERT INTO `article_category_ref` VALUES (15, 8);
INSERT INTO `article_category_ref` VALUES (16, 1);
INSERT INTO `article_category_ref` VALUES (16, 2);
INSERT INTO `article_category_ref` VALUES (17, 1);
INSERT INTO `article_category_ref` VALUES (17, 2);
INSERT INTO `article_category_ref` VALUES (23, 1);
INSERT INTO `article_category_ref` VALUES (23, 7);
INSERT INTO `article_category_ref` VALUES (24, 10);
INSERT INTO `article_category_ref` VALUES (24, 13);
INSERT INTO `article_category_ref` VALUES (25, 10);
INSERT INTO `article_category_ref` VALUES (25, 12);
INSERT INTO `article_category_ref` VALUES (26, 15);
INSERT INTO `article_category_ref` VALUES (26, 100000004);
INSERT INTO `article_category_ref` VALUES (28, 15);
INSERT INTO `article_category_ref` VALUES (28, 100000003);
INSERT INTO `article_category_ref` VALUES (29, 15);
INSERT INTO `article_category_ref` VALUES (29, 100000003);
INSERT INTO `article_category_ref` VALUES (30, 10);
INSERT INTO `article_category_ref` VALUES (30, 13);
INSERT INTO `article_category_ref` VALUES (31, 15);
INSERT INTO `article_category_ref` VALUES (31, 16);
INSERT INTO `article_category_ref` VALUES (32, 15);
INSERT INTO `article_category_ref` VALUES (32, 100000006);
INSERT INTO `article_category_ref` VALUES (33, 10);
INSERT INTO `article_category_ref` VALUES (33, 13);
INSERT INTO `article_category_ref` VALUES (34, 10);
INSERT INTO `article_category_ref` VALUES (34, 13);
INSERT INTO `article_category_ref` VALUES (35, 1);
INSERT INTO `article_category_ref` VALUES (35, 7);
INSERT INTO `article_category_ref` VALUES (36, 1);
INSERT INTO `article_category_ref` VALUES (36, 7);
INSERT INTO `article_category_ref` VALUES (38, 100000007);
INSERT INTO `article_category_ref` VALUES (38, 100000008);
INSERT INTO `article_category_ref` VALUES (40, 10);
INSERT INTO `article_category_ref` VALUES (40, 12);
INSERT INTO `article_category_ref` VALUES (44, 10);
INSERT INTO `article_category_ref` VALUES (44, 12);
COMMIT;

-- ----------------------------
-- Table structure for article_tag_ref
-- ----------------------------
DROP TABLE IF EXISTS `article_tag_ref`;
CREATE TABLE `article_tag_ref` (
  `article_id` int(11) NOT NULL COMMENT '文章ID',
  `tag_id` int(11) NOT NULL COMMENT '标签ID',
  PRIMARY KEY (`article_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tag_ref
-- ----------------------------
BEGIN;
INSERT INTO `article_tag_ref` VALUES (1, 1);
INSERT INTO `article_tag_ref` VALUES (1, 12);
INSERT INTO `article_tag_ref` VALUES (2, 12);
INSERT INTO `article_tag_ref` VALUES (3, 18);
INSERT INTO `article_tag_ref` VALUES (4, 6);
INSERT INTO `article_tag_ref` VALUES (5, 20);
INSERT INTO `article_tag_ref` VALUES (6, 21);
INSERT INTO `article_tag_ref` VALUES (7, 21);
INSERT INTO `article_tag_ref` VALUES (8, 13);
INSERT INTO `article_tag_ref` VALUES (9, 1);
INSERT INTO `article_tag_ref` VALUES (9, 19);
INSERT INTO `article_tag_ref` VALUES (10, 1);
INSERT INTO `article_tag_ref` VALUES (23, 2);
INSERT INTO `article_tag_ref` VALUES (23, 14);
INSERT INTO `article_tag_ref` VALUES (24, 15);
INSERT INTO `article_tag_ref` VALUES (24, 16);
INSERT INTO `article_tag_ref` VALUES (25, 3);
INSERT INTO `article_tag_ref` VALUES (25, 15);
INSERT INTO `article_tag_ref` VALUES (26, 31);
INSERT INTO `article_tag_ref` VALUES (26, 32);
INSERT INTO `article_tag_ref` VALUES (28, 26);
INSERT INTO `article_tag_ref` VALUES (28, 31);
INSERT INTO `article_tag_ref` VALUES (29, 28);
INSERT INTO `article_tag_ref` VALUES (30, 29);
INSERT INTO `article_tag_ref` VALUES (31, 38);
INSERT INTO `article_tag_ref` VALUES (32, 33);
INSERT INTO `article_tag_ref` VALUES (33, 10);
INSERT INTO `article_tag_ref` VALUES (34, 2);
INSERT INTO `article_tag_ref` VALUES (34, 10);
INSERT INTO `article_tag_ref` VALUES (35, 1);
INSERT INTO `article_tag_ref` VALUES (35, 26);
INSERT INTO `article_tag_ref` VALUES (36, 1);
INSERT INTO `article_tag_ref` VALUES (36, 13);
INSERT INTO `article_tag_ref` VALUES (36, 14);
INSERT INTO `article_tag_ref` VALUES (36, 15);
INSERT INTO `article_tag_ref` VALUES (40, 1);
INSERT INTO `article_tag_ref` VALUES (44, 14);
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_pid` int(11) DEFAULT NULL COMMENT '分类父ID',
  `category_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `category_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `category_order` int(11) unsigned DEFAULT '1' COMMENT '排序值',
  `category_icon` varchar(20) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=100000009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, 0, 'Java', 'Java语言', 1, 'fa fa-coffee');
INSERT INTO `category` VALUES (2, 1, 'Java基础', '', 1, '');
INSERT INTO `category` VALUES (3, 1, 'Core Java', '', 1, '');
INSERT INTO `category` VALUES (4, 1, '多线程并发编程', '', 1, '');
INSERT INTO `category` VALUES (5, 1, 'Sockets和IO', '', 1, '');
INSERT INTO `category` VALUES (6, 1, '设计模式和反射', '', 1, '');
INSERT INTO `category` VALUES (7, 1, 'JVM', '', 1, '');
INSERT INTO `category` VALUES (8, 1, 'JavaWeb', '', 1, '');
INSERT INTO `category` VALUES (9, 1, 'Java框架', '', 1, '');
INSERT INTO `category` VALUES (10, 0, '计算机科学', '', 1, 'fa fa-cubes');
INSERT INTO `category` VALUES (11, 10, '数据结构和算法', '', 1, '');
INSERT INTO `category` VALUES (12, 10, '操作系统', '', 1, '');
INSERT INTO `category` VALUES (13, 10, '数据库', '', 1, '');
INSERT INTO `category` VALUES (14, 10, '计算机网络', '', 1, '');
INSERT INTO `category` VALUES (15, 0, '其他技术', '', 1, 'fa-snowflake-o fa');
INSERT INTO `category` VALUES (16, 15, '消息服务', '', 1, '');
INSERT INTO `category` VALUES (17, 15, '缓存服务', '', 1, '');
INSERT INTO `category` VALUES (19, 100000000, 'Hello', '1111', 1, '11');
INSERT INTO `category` VALUES (100000003, 15, '微服务', '', NULL, '');
INSERT INTO `category` VALUES (100000004, 15, '搜索引擎', '', NULL, '');
INSERT INTO `category` VALUES (100000005, 15, '权限框架', '', NULL, '');
INSERT INTO `category` VALUES (100000006, 15, '开发利器', '', NULL, '');
INSERT INTO `category` VALUES (100000007, 0, 'test', '', NULL, '');
INSERT INTO `category` VALUES (100000008, 100000007, 'test2', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `comment_pid` int(11) unsigned DEFAULT '0' COMMENT '上级评论ID',
  `comment_pname` varchar(255) DEFAULT NULL COMMENT '上级评论名称',
  `comment_article_id` int(11) unsigned NOT NULL COMMENT '文章ID',
  `comment_author_name` varchar(50) DEFAULT NULL COMMENT '评论人名称',
  `comment_author_email` varchar(50) DEFAULT NULL COMMENT '评论人邮箱',
  `comment_author_url` varchar(50) DEFAULT NULL COMMENT '评论人个人主页',
  `comment_author_avatar` varchar(100) DEFAULT NULL COMMENT '评论人头像',
  `comment_content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `comment_agent` varchar(200) DEFAULT NULL COMMENT '浏览器信息',
  `comment_ip` varchar(50) DEFAULT NULL COMMENT 'IP',
  `comment_create_time` datetime DEFAULT NULL COMMENT '评论时间',
  `comment_role` int(1) DEFAULT NULL COMMENT '角色，是否管理员',
  `comment_user_id` int(11) DEFAULT NULL COMMENT '评论ID,可能为空',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (1, 0, '', 17, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '评论测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:06:34', 1, 1);
INSERT INTO `comment` VALUES (2, 1, 'java', 17, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '再次测试22', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:06:43', 1, 1);
INSERT INTO `comment` VALUES (3, 0, '', 8, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '评论测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:08:06', 0, 3);
INSERT INTO `comment` VALUES (4, 0, '', 8, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'Tom来测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:08:46', 0, 3);
INSERT INTO `comment` VALUES (5, 0, '', 14, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'Jack来此一游', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:09:27', 0, 3);
INSERT INTO `comment` VALUES (6, 5, 'Jack', 14, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'Jack回复Jack测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:10:10', 0, 3);
INSERT INTO `comment` VALUES (7, 5, 'Jack', 14, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '娜美回复Jack测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:10:53', 0, 3);
INSERT INTO `comment` VALUES (8, 0, '', 9, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '苏珊来过', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:11:36', 0, 3);
INSERT INTO `comment` VALUES (9, 8, '苏珊', 9, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '欢迎苏珊', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:12:00', 1, 1);
INSERT INTO `comment` VALUES (10, 0, '', 10, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '博主测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:12:15', 1, 1);
INSERT INTO `comment` VALUES (11, 0, '', 13, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '多伦路过', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:13:09', 0, 3);
INSERT INTO `comment` VALUES (12, 0, '', 13, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '我是贾克斯', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:13:44', 0, 3);
INSERT INTO `comment` VALUES (13, 12, '贾克斯', 13, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '贾克斯你好，我是瑞克斯', NULL, '0:0:0:0:0:0:0:1', '2022-10-07 16:14:32', 0, 3);
INSERT INTO `comment` VALUES (14, 0, '', 11, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '评论测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-10 11:44:28', 1, 1);
INSERT INTO `comment` VALUES (15, 14, 'java', 11, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '再次测试', NULL, '0:0:0:0:0:0:0:1', '2022-10-10 11:44:36', 1, 1);
INSERT INTO `comment` VALUES (16, 0, '', 2, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'xxxxx', NULL, '0:0:0:0:0:0:0:1', '2018-11-24 00:20:09', 0, 3);
INSERT INTO `comment` VALUES (17, 0, '', 2, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '11111', NULL, '0:0:0:0:0:0:0:1', '2018-11-24 00:20:30', 0, 3);
INSERT INTO `comment` VALUES (18, 0, '', 2, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'ssssss', NULL, '0:0:0:0:0:0:0:1', '2018-11-24 23:44:03', 0, 3);
INSERT INTO `comment` VALUES (19, 17, 'saysky', 2, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'sssssss', NULL, '0:0:0:0:0:0:0:1', '2018-11-24 23:44:24', 0, 3);
INSERT INTO `comment` VALUES (20, 17, 'saysky2', 2, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '33333', NULL, '0:0:0:0:0:0:0:1', '2018-11-24 23:44:45', 0, 3);
INSERT INTO `comment` VALUES (21, 0, '', 6, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', 'ssssss', NULL, '0:0:0:0:0:0:0:1', '2018-11-25 13:52:29', 1, 1);
INSERT INTO `comment` VALUES (22, 0, '', 6, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', 'ssss', NULL, '0:0:0:0:0:0:0:1', '2018-11-25 13:52:57', 0, 3);
INSERT INTO `comment` VALUES (23, 22, '你好', 6, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '1111111', NULL, '0:0:0:0:0:0:0:1', '2018-11-25 13:53:19', 1, 1);
INSERT INTO `comment` VALUES (24, 22, '你好', 6, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', 'sss', NULL, '0:0:0:0:0:0:0:1', '2018-11-25 13:58:18', 1, 1);
INSERT INTO `comment` VALUES (25, 1, 'java', 17, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '11111111', NULL, '0:0:0:0:0:0:0:1', '2018-11-25 14:27:26', 1, 1);
INSERT INTO `comment` VALUES (28, 25, 'java', 17, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '', NULL, '0:0:0:0:0:0:0:1', '2018-12-21 21:46:37', 1, 1);
INSERT INTO `comment` VALUES (29, 21, 'java', 6, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '1', NULL, '0:0:0:0:0:0:0:1', '2018-12-24 10:34:37', 0, 3);
INSERT INTO `comment` VALUES (30, 21, '1111', 6, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '2', NULL, '0:0:0:0:0:0:0:1', '2018-12-24 10:34:56', 1, 1);
INSERT INTO `comment` VALUES (31, 22, '你好', 6, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '22222', NULL, '0:0:0:0:0:0:0:1', '2018-12-24 10:35:13', 1, 1);
INSERT INTO `comment` VALUES (32, 0, '', 32, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '111', NULL, '0:0:0:0:0:0:0:1', '2020-01-31 19:18:00', 0, 3);
INSERT INTO `comment` VALUES (33, 0, '', 32, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '666', NULL, '0:0:0:0:0:0:0:1', '2020-01-31 19:20:38', 0, 3);
INSERT INTO `comment` VALUES (34, 0, '', 32, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '1122', NULL, '0:0:0:0:0:0:0:1', '2020-01-31 19:21:56', 0, 3);
INSERT INTO `comment` VALUES (35, 0, '', 32, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '1112', NULL, '0:0:0:0:0:0:0:1', '2020-01-31 19:22:14', 0, 3);
INSERT INTO `comment` VALUES (36, 0, '', 32, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '6666', NULL, '0:0:0:0:0:0:0:1', '2020-01-31 19:22:19', 0, 3);
INSERT INTO `comment` VALUES (37, 36, 'zhangsan', 32, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '222', NULL, '0:0:0:0:0:0:0:1', '2020-04-18 21:32:14', 1, 1);
INSERT INTO `comment` VALUES (38, 0, '', 27, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '22222233', NULL, '0:0:0:0:0:0:0:1', '2020-04-18 21:33:16', 0, 3);
INSERT INTO `comment` VALUES (39, 38, '222', 27, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '333222', NULL, '0:0:0:0:0:0:0:1', '2020-04-18 21:33:58', 0, 3);
INSERT INTO `comment` VALUES (40, 0, '', 27, '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '中文', NULL, '0:0:0:0:0:0:0:1', '2021-02-25 07:01:46', 0, 3);
INSERT INTO `comment` VALUES (41, 0, '', 27, 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '中文', NULL, '0:0:0:0:0:0:0:1', '2021-02-25 07:02:12', 1, 1);
INSERT INTO `comment` VALUES (42, 0, '', 32, '张三', 'zhangsan@china.com', '', 'http://cn.gravatar.com/avatar/null?s=128&d=identicon&r=PG', '!!!', NULL, '0:0:0:0:0:0:0:1', '2021-02-25 07:43:51', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接ID',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `link_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `link_image` varchar(255) DEFAULT NULL COMMENT '头像',
  `link_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `link_owner_nickname` varchar(40) DEFAULT NULL COMMENT '所属人名称',
  `link_owner_contact` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `link_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `link_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `link_order` int(2) unsigned DEFAULT '1' COMMENT '排序号',
  `link_status` int(1) unsigned DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `link_name` (`link_name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
BEGIN;
INSERT INTO `link` VALUES (1, 'http://java.com', 'java博客', NULL, '一个码农的成长之路', NULL, '你好，我的丘丘是847064370', '2022-10-07 16:51:03', '2022-10-07 16:29:35', 1, 1);
INSERT INTO `link` VALUES (2, 'https://java.com/shop.html', '付费商品', NULL, 'java博客付费商品', NULL, 'java博客付费商品', '2021-03-19 18:01:28', '2021-03-19 18:01:28', 1, 1);
INSERT INTO `link` VALUES (3, 'https://java.com/my-service.html', '人工服务', NULL, '人工服务', NULL, NULL, '2021-03-19 18:02:31', '2021-03-19 18:02:31', 1, 1);
INSERT INTO `link` VALUES (4, 'https://github.com/saysky', 'GitHub主页', NULL, NULL, NULL, NULL, '2021-03-19 18:02:31', '2021-03-19 18:02:31', 1, 1);
INSERT INTO `link` VALUES (5, 'https://shop250529942.world.taobao.com/', '淘宝店', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `menu_level` int(11) DEFAULT NULL COMMENT '等级',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `menu_order` int(11) DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_name` (`menu_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, '留言板', '/message', 2, 'fa fa-comment', 1);
INSERT INTO `menu` VALUES (2, 'LeetCode', 'https://leetcode.com/problemset/all', 2, 'ssss', 3);
INSERT INTO `menu` VALUES (3, '关于本站', '/aboutSite', 1, 'fa fa-info', 1);
INSERT INTO `menu` VALUES (4, '文章归档', '/articleFile', 1, 'fa-list-alt fa', 2);
INSERT INTO `menu` VALUES (5, '申请友链', '/applyLink', 1, 'fa fa-link', 3);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(255) DEFAULT NULL COMMENT '公告标题',
  `notice_content` varchar(10000) DEFAULT NULL COMMENT '内容',
  `notice_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `notice_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `notice_status` int(1) unsigned DEFAULT '1' COMMENT '状态',
  `notice_order` int(2) DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` VALUES (4, '请勿转载本站文章', '<p>未经博主同意，请勿转载本站文章</p>', '2018-05-26 20:40:50', '2018-05-26 20:40:50', 1, 1);
INSERT INTO `notice` VALUES (5, '博主提供java', '<p>博主提供java</p><p>具体查看：<a target=\"_blank\" href=\"https://java.com/shop.html\">https://java.com/shop.html</a></p>', '2018-05-26 20:40:50', '2021-02-25 10:20:44', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `option_site_title` varchar(255) DEFAULT NULL,
  `option_site_descrption` varchar(255) DEFAULT NULL,
  `option_meta_descrption` varchar(255) DEFAULT NULL,
  `option_meta_keyword` varchar(255) DEFAULT NULL,
  `option_aboutsite_avatar` varchar(255) DEFAULT NULL,
  `option_aboutsite_title` varchar(255) DEFAULT NULL,
  `option_aboutsite_content` varchar(255) DEFAULT NULL,
  `option_aboutsite_wechat` varchar(255) DEFAULT NULL,
  `option_aboutsite_qq` varchar(255) DEFAULT NULL,
  `option_aboutsite_github` varchar(255) DEFAULT NULL,
  `option_aboutsite_weibo` varchar(255) DEFAULT NULL,
  `option_tongji` varchar(255) DEFAULT NULL,
  `option_status` int(1) DEFAULT '1',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of options
-- ----------------------------
BEGIN;
INSERT INTO `options` VALUES (1, '博客', '莫问收获，但问耕耘。', '博客,一个简洁的Java博客,java程序学习的一个新起点。', '博客,Java博客,SSM博客,java,java博客', '/img/logo.png', '博客初心', '程序人生，永不止步', '/uploads/2022/10/20221006224906122.jpg', '847064370', 'saysky', '5936412667', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自定义页面ID',
  `page_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `page_title` varchar(50) DEFAULT NULL COMMENT '标题',
  `page_content` mediumtext COMMENT '内容',
  `page_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `page_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `page_view_count` int(10) unsigned DEFAULT '0' COMMENT '访问量',
  `page_comment_count` int(5) unsigned DEFAULT '0' COMMENT '评论数',
  `page_status` int(1) unsigned DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_key` (`page_key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------
BEGIN;
INSERT INTO `page` VALUES (1, 'map', '', NULL, NULL, NULL, 0, 0, 2);
INSERT INTO `page` VALUES (2, 'articleFile', '', NULL, NULL, NULL, 0, 0, 2);
INSERT INTO `page` VALUES (3, 'message', '', NULL, NULL, NULL, 0, 0, 2);
INSERT INTO `page` VALUES (4, 'applyLink', '', NULL, NULL, NULL, 0, 0, 2);
INSERT INTO `page` VALUES (5, 'aboutSite', '', '<h2>关于项目</h2><p>该项目是博主暑假粗略学完&nbsp;<a href=\"https://java.com/tag/ssm/\" title=\"查看与 SSM 相关的文章\" target=\"_blank\">SSM</a>（Spring+SpringMVC+Mybatis）后，开始着手做的一个博客系统。<br>主要涉及的包括 JSP，JSTL，EL表达式，MySQL，Druid连接池，Spring，SpringMVC，MyBatis 等。<br>前端采用Layui框架和扒了一个[网站](http://java.com)的前台样式。通过Maven管理依赖。</p><h2>效果预览</h2><p>预览地址：<a href=\"https://java.com/wp-content/themes/begin/inc/go.php?url=http://blog.java.com\" target=\"_blank\" rel=\"noopener noreferrer\">http://blog.java.com</a></p><p>前台效果图<br><img class=\"alignnone size-large wp-image-6348\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/front-1024x608.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/front-1024x608.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"608\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/front-1024x608.jpg 1024w, https://media.java.com/wp-content/uploads/2022/10/front-300x178.jpg 300w, https://media.java.com/wp-content/uploads/2022/10/front-768x456.jpg 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p>后台效果图<br><img class=\"alignnone size-large wp-image-6349\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/back-1024x611.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/back-1024x611.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"611\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/back-1024x611.jpg 1024w, https://media.java.com/wp-content/uploads/2022/10/back-300x179.jpg 300w, https://media.java.com/wp-content/uploads/2022/10/back-768x458.jpg 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p>&nbsp;</p><p><span>后台地址：/admin 或者 /login</span></p><p><span>用户名为admin，密码为123456</span></p><p>&nbsp;</p><h2>使用注意</h2><p><strong>1、使用IDE导入项目</strong></p><p>将项目即（ForestBlog文件夹）放到 某个位置，用IDE(如Eclipse，IntelliJ IDEA)导入，然后可以在IDE里运行 Tomcat，访问项目。</p><p>因为该项目使用了`Maven`，所有你需要新的IDE需要有Maven插件或者功能，这里就不多介绍了。</p><p><img class=\"size-large wp-image-6350 aligncenter\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/blog-517x1024.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/blog-517x1024.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"517\" height=\"1024\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/blog-517x1024.jpg 517w, https://media.java.com/wp-content/uploads/2022/10/blog-151x300.jpg 151w, https://media.java.com/wp-content/uploads/2022/10/blog.jpg 681w\" sizes=\"(max-width: 517px) 100vw, 517px\"></p><p><strong>2、 导入数据库</strong></p><p>新建数据库 `forest_blog`，导入数据库（即forest_blog.sql）。注意，数据库的编码和排序规则是utf-8和utf-8_general_ci</p><p><img class=\"size-full wp-image-6352 aligncenter\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/blog2.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/blog2.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"400\" height=\"540\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/blog2.jpg 400w, https://media.java.com/wp-content/uploads/2022/10/blog2-222x300.jpg 222w\" sizes=\"(max-width: 400px) 100vw, 400px\"></p><p><strong>3、修改项目中的数据库连接信息</strong></p><p>修改&nbsp;`db.properties` 文件，该文件很容易找到，在 src/main/resources 中，注意修改数据库地址、表名、用户名和密码。</p><p><span><strong>如果不修改，会出现无法启动项目</strong></span></p><p>&nbsp;</p><p><strong>4、修改上传文件路径</strong></p><p>该项目中，文件上传是传到本地，且和项目文件夹不在一起，就是说是分离的。比如你的项目是在D盘，你可以修改上传路径到E盘。当然我们访问上传的图片时，需要 &nbsp; 给Tomcat添加静态资源映射，比如访问 localhost:8080/uplaods/1.jpg tomcat可以在你的E盘找到。这个在第5步会说。</p><p>现在是修改上传文件路径，该文件在 src/main/java/com/java/blog/controller/Common/UploadFileController.java</p><p>修改第33行的 `String rootPath =\"/www/uploads/\";` 为你的 uploads 的路径。</p><p><span><strong>如果不修改，会出现无法上传图片</strong></span></p><p>&nbsp;</p><p><strong>5、给uploads文件夹添加静态资源映射</strong></p><p>同第4步，我们已经修改了uploads路径，该路径就要和下面的docBase一致。<br>在 tomcat/conf/server.xml 的 Host 标签内添加如下代码</p><div class=\"dp-highlighter\"><ol class=\"dp-j\" start=\"1\"><li class=\"alt\">&lt;Context&nbsp;path=<span class=\"string\">\"/uploads\"</span>&nbsp;docBase=<span class=\"string\">\"/www/uploads\"</span>&nbsp;debug=<span class=\"string\">\"0\"</span>&nbsp;reloadable=<span class=\"string\">\"true\"</span>&nbsp;/&gt;</li></ol></div><p>对啦，如果你使用的是IDE，需要在该IDE里修改。</p><p>比如 IntelliJ IDEA 是在Tomcat配置中添加</p><p><img class=\"alignnone size-large wp-image-6354\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/blog4-1024x181.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/blog4-1024x181.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"181\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/blog4-1024x181.jpg 1024w, https://media.java.com/wp-content/uploads/2022/10/blog4-300x53.jpg 300w, https://media.java.com/wp-content/uploads/2022/10/blog4-768x136.jpg 768w, https://media.java.com/wp-content/uploads/2022/10/blog4.jpg 1426w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p><span><strong>如果不修改，会出现uploads的图片无法加载，网页打开有延迟</strong></span></p><p>&nbsp;</p><p><strong>6、修改 Tomcat的首页为该项目</strong></p><p>跟第5步相似</p><p>该项目中的所有根路径都是 / ，没有使用相对路径的 `${pagecontext.request.getcontextpath}` ,因为如何相对路径不存在，该值就会为空字符串，以致 &nbsp; 首页链接我必须改为 / 。<br>所以，你的项目首页应该是 localhost:8080，而不是loclahost:8080/ForestBlog</p><p>所以要在 server.xml 的Host标签内里添加</p><div class=\"dp-highlighter\"><ol class=\"dp-j\" start=\"1\"><li class=\"alt\">&lt;Context&nbsp;path=<span class=\"string\">\"\"</span>&nbsp;docBase=<span class=\"string\">\"/www/server/panel/vhost/tomcat/ForestBlog\"</span>&nbsp;debug=<span class=\"string\">\"0\"</span>&nbsp;reloadable=<span class=\"string\">\"true\"</span>&nbsp;/&gt;</li></ol></div><p>其中path=\"\"表示为首页,即localhost:8080或者127.0.0.1：8080<br>docBase-\"xxx\"是文件路径</p><p><img class=\"size-large wp-image-6355 aligncenter\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/blog5-1024x134.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/blog5-1024x134.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"134\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/blog5-1024x134.jpg 1024w, https://media.java.com/wp-content/uploads/2022/10/blog5-300x39.jpg 300w, https://media.java.com/wp-content/uploads/2022/10/blog5-768x101.jpg 768w, https://media.java.com/wp-content/uploads/2022/10/blog5.jpg 1570w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p>对啦，如果你使用的是IDE，需要在该IDE里修改。</p><p>比如 IntelliJ IDEA 是在Tomcat配置中添加</p><p><img class=\"alignnone size-large wp-image-6353\" data-original=\"https://media.java.com/wp-content/uploads/2022/10/blog3-1024x321.jpg\" src=\"https://media.java.com/wp-content/uploads/2022/10/blog3-1024x321.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"321\" srcset=\"https://media.java.com/wp-content/uploads/2022/10/blog3-1024x321.jpg 1024w, https://media.java.com/wp-content/uploads/2022/10/blog3-300x94.jpg 300w, https://media.java.com/wp-content/uploads/2022/10/blog3-768x241.jpg 768w, https://media.java.com/wp-content/uploads/2022/10/blog3.jpg 1428w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p><span><strong>如果不修改，会出现内页很多链接不对</strong></span></p><p>&nbsp;</p><h2>下载地址：</h2><p>Github地址：<a href=\"https://java.com/wp-content/themes/begin/inc/go.php?url=https://github.com/saysky/ForestBlog\" target=\"_blank\" rel=\"noopener noreferrer\">https://github.com/saysky/ForestBlog</a></p><p><em>（如果可以帮忙点一次Star和Fork）</em></p><p>&nbsp;</p><h2>更新</h2><p>上一次更新：2022年10月10日14:02:02</p>', '2022-10-06 23:40:35', '2022-10-10 14:58:12', NULL, NULL, 1);
INSERT INTO `page` VALUES (7, 'hello', '11', '11111111', '2018-12-21 21:46:50', '2018-12-21 21:46:50', NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `tag_name` varchar(50) DEFAULT NULL COMMENT '标签名称',
  `tag_description` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
INSERT INTO `tag` VALUES (1, 'Java', 'Java');
INSERT INTO `tag` VALUES (2, '算法', '');
INSERT INTO `tag` VALUES (3, '数据结构', '');
INSERT INTO `tag` VALUES (4, 'C', '');
INSERT INTO `tag` VALUES (5, '操作系统', '');
INSERT INTO `tag` VALUES (6, '计算机网络', '');
INSERT INTO `tag` VALUES (8, '面试题', '');
INSERT INTO `tag` VALUES (9, '数据库', '');
INSERT INTO `tag` VALUES (10, 'MySQL', '');
INSERT INTO `tag` VALUES (11, 'Spring', '');
INSERT INTO `tag` VALUES (12, 'SpringMVC', '');
INSERT INTO `tag` VALUES (13, 'MyBatis', '');
INSERT INTO `tag` VALUES (14, 'JVM', '');
INSERT INTO `tag` VALUES (15, '设计模式', '');
INSERT INTO `tag` VALUES (16, '网络编程', '');
INSERT INTO `tag` VALUES (17, 'IO', '');
INSERT INTO `tag` VALUES (18, 'JSP', '');
INSERT INTO `tag` VALUES (19, 'Servlet', '');
INSERT INTO `tag` VALUES (20, 'JavaWeb', '');
INSERT INTO `tag` VALUES (21, 'Hibernate', '');
INSERT INTO `tag` VALUES (22, 'SQL', '');
INSERT INTO `tag` VALUES (24, 'Redis', 'redis');
INSERT INTO `tag` VALUES (25, 'SPA', '');
INSERT INTO `tag` VALUES (26, 'SpringCloud', '');
INSERT INTO `tag` VALUES (27, 'Dubbo', '');
INSERT INTO `tag` VALUES (28, 'EDAS', '');
INSERT INTO `tag` VALUES (29, 'MongoDB', '');
INSERT INTO `tag` VALUES (31, 'SpringBoot', '');
INSERT INTO `tag` VALUES (32, 'ElasticSearch', '');
INSERT INTO `tag` VALUES (33, 'Docker', '');
INSERT INTO `tag` VALUES (34, 'Jenkins', '');
INSERT INTO `tag` VALUES (35, 'Vue', '');
INSERT INTO `tag` VALUES (36, 'IDEA', '');
INSERT INTO `tag` VALUES (37, 'Shiro', '');
INSERT INTO `tag` VALUES (38, 'RocketMQ', '');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `user_nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `user_email` varchar(100) DEFAULT '' COMMENT '邮箱',
  `user_url` varchar(100) DEFAULT '' COMMENT '个人主页',
  `user_avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `user_last_login_ip` varchar(30) DEFAULT NULL COMMENT '上传登录IP',
  `user_register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `user_last_login_time` datetime DEFAULT NULL COMMENT '上传登录时间',
  `user_status` int(1) unsigned DEFAULT '1' COMMENT '状态',
  `user_role` varchar(20) NOT NULL DEFAULT 'user' COMMENT '角色',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', '123456', 'java', 'admin@java.com', 'https://java.com', '/img/avatar/avatar1.jpg', '0:0:0:0:0:0:0:1', '2022-10-06 21:56:33', '2021-04-13 05:16:59', 1, 'admin');
INSERT INTO `user` VALUES (5, 'wangwu', '123456', '王五', 'wangwu@qq.com', NULL, '/img/avatar/avatar.png', '0:0:0:0:0:0:0:1', '2021-02-25 09:12:33', '2021-02-25 09:13:57', 1, 'user');
INSERT INTO `user` VALUES (2, 'zhangsan', '123456', '张三', 'zhangsan@china.com', '', '/img/avatar/avatar2.jpeg', '0:0:0:0:0:0:0:1', '2018-11-25 14:45:08', '2021-02-25 10:19:30', 1, 'user');
INSERT INTO `user` VALUES (3, 'youke', '123456', '游客', 'youke@aa.com', '', '/img/avatar/avatar3.jpeg', '0:0:0:0:0:0:0:1', '2018-11-25 14:45:08', '2020-04-18 21:41:06', 1, 'user');
INSERT INTO `user` VALUES (4, 'lisi', '123456', '李四', 'lisi@qq.com', '', '/img/avatar/avatar.png', NULL, '2021-02-25 09:11:42', NULL, 1, 'user');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
