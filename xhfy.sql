/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : xhfy

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 09/01/2020 09:42:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cs_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin_log`;
CREATE TABLE `cs_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) NOT NULL COMMENT '用户',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL',
  `log_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  `log_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 456 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_admin_log
-- ----------------------------
INSERT INTO `cs_admin_log` VALUES (1, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1572579397);
INSERT INTO `cs_admin_log` VALUES (2, 1, '个人资料', 'admin/admin_user/profile.html', 'POST', '127.0.0.1', 1572579419);
INSERT INTO `cs_admin_log` VALUES (3, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1572579449);
INSERT INTO `cs_admin_log` VALUES (4, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1573019266);
INSERT INTO `cs_admin_log` VALUES (5, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1573192789);
INSERT INTO `cs_admin_log` VALUES (6, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1573201977);
INSERT INTO `cs_admin_log` VALUES (7, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1573263714);
INSERT INTO `cs_admin_log` VALUES (8, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1573271050);
INSERT INTO `cs_admin_log` VALUES (9, 1, '修改菜单', 'admin/admin_menu/edit/id/53.html', 'POST', '127.0.0.1', 1573271074);
INSERT INTO `cs_admin_log` VALUES (10, 1, '修改菜单', 'admin/admin_menu/edit/id/61.html', 'POST', '127.0.0.1', 1573271111);
INSERT INTO `cs_admin_log` VALUES (11, 1, '添加文章分类', 'cms/category/add.html', 'POST', '127.0.0.1', 1573271249);
INSERT INTO `cs_admin_log` VALUES (12, 1, '添加文章分类', 'cms/category/add.html', 'POST', '127.0.0.1', 1573271253);
INSERT INTO `cs_admin_log` VALUES (13, 1, '添加文章分类', 'cms/category/add.html', 'POST', '127.0.0.1', 1573271370);
INSERT INTO `cs_admin_log` VALUES (14, 1, '添加文章分类', 'cms/category/add.html', 'POST', '127.0.0.1', 1573271509);
INSERT INTO `cs_admin_log` VALUES (15, 1, '修改菜单', 'admin/admin_menu/edit/id/61.html', 'POST', '127.0.0.1', 1573271623);
INSERT INTO `cs_admin_log` VALUES (16, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1573271653);
INSERT INTO `cs_admin_log` VALUES (17, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574047888);
INSERT INTO `cs_admin_log` VALUES (18, 1, '修改菜单', 'admin/admin_menu/edit/id/62.html', 'POST', '127.0.0.1', 1574055261);
INSERT INTO `cs_admin_log` VALUES (19, 1, '修改菜单', 'admin/admin_menu/edit/id/62.html', 'POST', '127.0.0.1', 1574055265);
INSERT INTO `cs_admin_log` VALUES (20, 1, '修改菜单', 'admin/admin_menu/edit/id/62.html', 'POST', '127.0.0.1', 1574055275);
INSERT INTO `cs_admin_log` VALUES (21, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574055357);
INSERT INTO `cs_admin_log` VALUES (22, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574055414);
INSERT INTO `cs_admin_log` VALUES (23, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574055421);
INSERT INTO `cs_admin_log` VALUES (24, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574055429);
INSERT INTO `cs_admin_log` VALUES (25, 1, '修改菜单', 'admin/admin_menu/edit/id/66.html', 'POST', '127.0.0.1', 1574055437);
INSERT INTO `cs_admin_log` VALUES (26, 1, '修改菜单', 'admin/admin_menu/edit/id/67.html', 'POST', '127.0.0.1', 1574055452);
INSERT INTO `cs_admin_log` VALUES (27, 1, '修改菜单', 'admin/admin_menu/edit/id/68.html', 'POST', '127.0.0.1', 1574055461);
INSERT INTO `cs_admin_log` VALUES (28, 1, '修改菜单', 'admin/admin_menu/edit/id/69.html', 'POST', '127.0.0.1', 1574055479);
INSERT INTO `cs_admin_log` VALUES (29, 1, '修改菜单', 'admin/admin_menu/edit/id/66.html', 'POST', '127.0.0.1', 1574056279);
INSERT INTO `cs_admin_log` VALUES (30, 1, '修改菜单', 'admin/admin_menu/edit/id/67.html', 'POST', '127.0.0.1', 1574056285);
INSERT INTO `cs_admin_log` VALUES (31, 1, '修改菜单', 'admin/admin_menu/edit/id/68.html', 'POST', '127.0.0.1', 1574056293);
INSERT INTO `cs_admin_log` VALUES (32, 1, '修改菜单', 'admin/admin_menu/edit/id/69.html', 'POST', '127.0.0.1', 1574056300);
INSERT INTO `cs_admin_log` VALUES (33, 1, '删除文章分类', 'cms/category/del.html', 'POST', '127.0.0.1', 1574057755);
INSERT INTO `cs_admin_log` VALUES (34, 1, '删除文章分类', 'cms/category/del.html', 'POST', '127.0.0.1', 1574060085);
INSERT INTO `cs_admin_log` VALUES (35, 1, '删除文章分类', 'cms/category/del.html', 'POST', '127.0.0.1', 1574060091);
INSERT INTO `cs_admin_log` VALUES (36, 1, '删除文章分类', 'cms/category/del.html', 'POST', '127.0.0.1', 1574060130);
INSERT INTO `cs_admin_log` VALUES (37, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1574070379);
INSERT INTO `cs_admin_log` VALUES (38, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1574070436);
INSERT INTO `cs_admin_log` VALUES (39, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1574070570);
INSERT INTO `cs_admin_log` VALUES (40, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574126307);
INSERT INTO `cs_admin_log` VALUES (41, 1, '删除文章表', 'cms/article/del.html', 'POST', '127.0.0.1', 1574132745);
INSERT INTO `cs_admin_log` VALUES (42, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574133563);
INSERT INTO `cs_admin_log` VALUES (43, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574133574);
INSERT INTO `cs_admin_log` VALUES (44, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574133666);
INSERT INTO `cs_admin_log` VALUES (45, 1, '修改文章单页', 'cms/page/edit/id/1.html', 'POST', '127.0.0.1', 1574133674);
INSERT INTO `cs_admin_log` VALUES (46, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574135524);
INSERT INTO `cs_admin_log` VALUES (47, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574135533);
INSERT INTO `cs_admin_log` VALUES (48, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574135607);
INSERT INTO `cs_admin_log` VALUES (49, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574135627);
INSERT INTO `cs_admin_log` VALUES (50, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574135654);
INSERT INTO `cs_admin_log` VALUES (51, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574135937);
INSERT INTO `cs_admin_log` VALUES (52, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574141820);
INSERT INTO `cs_admin_log` VALUES (53, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574141840);
INSERT INTO `cs_admin_log` VALUES (54, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574141908);
INSERT INTO `cs_admin_log` VALUES (55, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574142067);
INSERT INTO `cs_admin_log` VALUES (56, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574142130);
INSERT INTO `cs_admin_log` VALUES (57, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574142155);
INSERT INTO `cs_admin_log` VALUES (58, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1574142204);
INSERT INTO `cs_admin_log` VALUES (59, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1574142276);
INSERT INTO `cs_admin_log` VALUES (60, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1574142280);
INSERT INTO `cs_admin_log` VALUES (61, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1574142327);
INSERT INTO `cs_admin_log` VALUES (62, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1574142334);
INSERT INTO `cs_admin_log` VALUES (63, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142383);
INSERT INTO `cs_admin_log` VALUES (64, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142390);
INSERT INTO `cs_admin_log` VALUES (65, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142395);
INSERT INTO `cs_admin_log` VALUES (66, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142435);
INSERT INTO `cs_admin_log` VALUES (67, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142657);
INSERT INTO `cs_admin_log` VALUES (68, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142779);
INSERT INTO `cs_admin_log` VALUES (69, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574142785);
INSERT INTO `cs_admin_log` VALUES (70, 1, '添加菜单', 'admin/admin_menu/add.html', 'POST', '127.0.0.1', 1574149070);
INSERT INTO `cs_admin_log` VALUES (71, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574216724);
INSERT INTO `cs_admin_log` VALUES (72, 1, '添加商品分类', 'shop/goodcate/add.html', 'POST', '127.0.0.1', 1574217906);
INSERT INTO `cs_admin_log` VALUES (73, 1, '修改商品分类', 'shop/goodcate/edit/id/1.html', 'POST', '127.0.0.1', 1574217920);
INSERT INTO `cs_admin_log` VALUES (74, 1, '修改商品分类', 'shop/goodcate/edit/id/1.html', 'POST', '127.0.0.1', 1574218503);
INSERT INTO `cs_admin_log` VALUES (75, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1574218534);
INSERT INTO `cs_admin_log` VALUES (76, 1, '启用商品分类', 'shop/goodcate/enable.html', 'POST', '127.0.0.1', 1574220528);
INSERT INTO `cs_admin_log` VALUES (77, 1, '禁用商品分类', 'shop/goodcate/disable.html', 'POST', '127.0.0.1', 1574220531);
INSERT INTO `cs_admin_log` VALUES (78, 1, '启用商品分类', 'shop/goodcate/enable.html', 'POST', '127.0.0.1', 1574220539);
INSERT INTO `cs_admin_log` VALUES (79, 1, '添加商品分类', 'shop/goodcate/add.html', 'POST', '127.0.0.1', 1574220971);
INSERT INTO `cs_admin_log` VALUES (80, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574236473);
INSERT INTO `cs_admin_log` VALUES (81, 1, '添加轮播图', 'cms/slide/add.html', 'POST', '127.0.0.1', 1574236637);
INSERT INTO `cs_admin_log` VALUES (82, 1, '修改商品分类', 'shop/goodcate/edit/id/1.html', 'POST', '127.0.0.1', 1574236693);
INSERT INTO `cs_admin_log` VALUES (83, 1, '修改商品分类', 'shop/goodcate/edit/id/2.html', 'POST', '127.0.0.1', 1574236702);
INSERT INTO `cs_admin_log` VALUES (84, 1, '添加商品分类', 'shop/goodcate/add.html', 'POST', '127.0.0.1', 1574236713);
INSERT INTO `cs_admin_log` VALUES (85, 1, '启用商品分类', 'shop/goodcate/enable.html', 'POST', '127.0.0.1', 1574239007);
INSERT INTO `cs_admin_log` VALUES (86, 1, '禁用商品分类', 'shop/goodcate/disable.html', 'POST', '127.0.0.1', 1574239010);
INSERT INTO `cs_admin_log` VALUES (87, 1, '启用商品分类', 'shop/goodcate/enable.html', 'POST', '127.0.0.1', 1574239014);
INSERT INTO `cs_admin_log` VALUES (88, 1, '删除商品分类', 'shop/goodcate/del.html', 'POST', '127.0.0.1', 1574239087);
INSERT INTO `cs_admin_log` VALUES (89, 1, '修改文章单页', 'cms/page/edit/id/1.html', 'POST', '127.0.0.1', 1574242837);
INSERT INTO `cs_admin_log` VALUES (90, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574298471);
INSERT INTO `cs_admin_log` VALUES (91, 1, '修改文章单页', 'cms/page/edit/id/1.html', 'POST', '127.0.0.1', 1574298568);
INSERT INTO `cs_admin_log` VALUES (92, 1, '修改文章单页', 'cms/page/edit/id/1.html', 'POST', '127.0.0.1', 1574299230);
INSERT INTO `cs_admin_log` VALUES (93, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574305229);
INSERT INTO `cs_admin_log` VALUES (94, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574305317);
INSERT INTO `cs_admin_log` VALUES (95, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574305335);
INSERT INTO `cs_admin_log` VALUES (96, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574305451);
INSERT INTO `cs_admin_log` VALUES (97, 1, '添加文章单页', 'cms/page/add.html', 'POST', '127.0.0.1', 1574305465);
INSERT INTO `cs_admin_log` VALUES (98, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574308784);
INSERT INTO `cs_admin_log` VALUES (99, 1, '禁用商品', 'shop/good/disable.html', 'POST', '127.0.0.1', 1574318525);
INSERT INTO `cs_admin_log` VALUES (100, 1, '启用商品', 'shop/good/enable.html', 'POST', '127.0.0.1', 1574318527);
INSERT INTO `cs_admin_log` VALUES (101, 1, '删除商品', 'shop/good/del.html', 'POST', '127.0.0.1', 1574318536);
INSERT INTO `cs_admin_log` VALUES (102, 1, '添加商品分类', 'shop/goodcate/add.html', 'POST', '127.0.0.1', 1574318719);
INSERT INTO `cs_admin_log` VALUES (103, 1, '添加商品分类', 'shop/goodcate/add.html', 'POST', '127.0.0.1', 1574318722);
INSERT INTO `cs_admin_log` VALUES (104, 1, '添加商品分类', 'shop/goodcate/add.html', 'POST', '127.0.0.1', 1574320781);
INSERT INTO `cs_admin_log` VALUES (105, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574320865);
INSERT INTO `cs_admin_log` VALUES (106, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574320878);
INSERT INTO `cs_admin_log` VALUES (107, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574320946);
INSERT INTO `cs_admin_log` VALUES (108, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574320980);
INSERT INTO `cs_admin_log` VALUES (109, 1, '修改商品', 'shop/good/edit/id/2.html', 'POST', '127.0.0.1', 1574321050);
INSERT INTO `cs_admin_log` VALUES (110, 1, '修改商品', 'shop/good/edit/id/2.html', 'POST', '127.0.0.1', 1574321160);
INSERT INTO `cs_admin_log` VALUES (111, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574326722);
INSERT INTO `cs_admin_log` VALUES (112, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574326813);
INSERT INTO `cs_admin_log` VALUES (113, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574327818);
INSERT INTO `cs_admin_log` VALUES (114, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574328125);
INSERT INTO `cs_admin_log` VALUES (115, 1, '添加商品', 'shop/good/add.html', 'POST', '127.0.0.1', 1574328144);
INSERT INTO `cs_admin_log` VALUES (116, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574329314);
INSERT INTO `cs_admin_log` VALUES (117, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574329321);
INSERT INTO `cs_admin_log` VALUES (118, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574329327);
INSERT INTO `cs_admin_log` VALUES (119, 1, '修改商品', 'shop/good/edit/id/1.html', 'POST', '127.0.0.1', 1574335596);
INSERT INTO `cs_admin_log` VALUES (120, 1, '修改商品', 'shop/good/edit/id/2.html', 'POST', '127.0.0.1', 1574335602);
INSERT INTO `cs_admin_log` VALUES (121, 1, '修改商品', 'shop/good/edit/id/3.html', 'POST', '127.0.0.1', 1574335614);
INSERT INTO `cs_admin_log` VALUES (122, 1, '添加商品规格', 'shop/goodspecs/add/id/1.html', 'POST', '127.0.0.1', 1574335695);
INSERT INTO `cs_admin_log` VALUES (123, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574335727);
INSERT INTO `cs_admin_log` VALUES (124, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574335744);
INSERT INTO `cs_admin_log` VALUES (125, 1, '添加商品规格', 'shop/goodspecs/add/id/2.html', 'POST', '127.0.0.1', 1574337484);
INSERT INTO `cs_admin_log` VALUES (126, 1, '添加商品规格', 'shop/goodspecs/add/id/2.html', 'POST', '127.0.0.1', 1574337486);
INSERT INTO `cs_admin_log` VALUES (127, 1, '添加商品规格', 'shop/goodspecs/add/id/2.html', 'POST', '127.0.0.1', 1574337489);
INSERT INTO `cs_admin_log` VALUES (128, 1, '添加商品规格', 'shop/goodspecs/add/id/2.html', 'POST', '127.0.0.1', 1574337672);
INSERT INTO `cs_admin_log` VALUES (129, 1, '添加商品规格', 'shop/goodspecs/add/id/2.html', 'POST', '127.0.0.1', 1574337982);
INSERT INTO `cs_admin_log` VALUES (130, 1, '添加商品规格', 'shop/goodspecs/add/id/2.html', 'POST', '127.0.0.1', 1574338015);
INSERT INTO `cs_admin_log` VALUES (131, 1, '添加商品规格', 'shop/goodspecs/add/id/4.html', 'POST', '127.0.0.1', 1574338093);
INSERT INTO `cs_admin_log` VALUES (132, 1, '添加商品规格', 'shop/goodspecs/add/id/4.html', 'POST', '127.0.0.1', 1574338123);
INSERT INTO `cs_admin_log` VALUES (133, 1, '添加商品规格', 'shop/goodspecs/add/id/4.html', 'POST', '127.0.0.1', 1574338124);
INSERT INTO `cs_admin_log` VALUES (134, 1, '修改商品规格', 'shop/goodspecs/edit/id/2.html', 'POST', '127.0.0.1', 1574339263);
INSERT INTO `cs_admin_log` VALUES (135, 1, '修改商品规格', 'shop/goodspecs/edit/id/2.html', 'POST', '127.0.0.1', 1574339341);
INSERT INTO `cs_admin_log` VALUES (136, 1, '修改商品规格', 'shop/goodspecs/edit/id/1.html', 'POST', '127.0.0.1', 1574339367);
INSERT INTO `cs_admin_log` VALUES (137, 1, '修改商品规格', 'shop/goodspecs/edit/id/2.html', 'POST', '127.0.0.1', 1574339372);
INSERT INTO `cs_admin_log` VALUES (138, 1, '添加商品规格', 'shop/goodspecs/add/id/1.html', 'POST', '127.0.0.1', 1574339403);
INSERT INTO `cs_admin_log` VALUES (139, 1, '添加商品规格', 'shop/goodspecs/add/id/1.html', 'POST', '127.0.0.1', 1574339407);
INSERT INTO `cs_admin_log` VALUES (140, 1, '添加商品规格', 'shop/goodspecs/add/id/1.html', 'POST', '127.0.0.1', 1574339447);
INSERT INTO `cs_admin_log` VALUES (141, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339551);
INSERT INTO `cs_admin_log` VALUES (142, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339554);
INSERT INTO `cs_admin_log` VALUES (143, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339566);
INSERT INTO `cs_admin_log` VALUES (144, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339650);
INSERT INTO `cs_admin_log` VALUES (145, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339653);
INSERT INTO `cs_admin_log` VALUES (146, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339678);
INSERT INTO `cs_admin_log` VALUES (147, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339678);
INSERT INTO `cs_admin_log` VALUES (148, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339679);
INSERT INTO `cs_admin_log` VALUES (149, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339679);
INSERT INTO `cs_admin_log` VALUES (150, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339680);
INSERT INTO `cs_admin_log` VALUES (151, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339680);
INSERT INTO `cs_admin_log` VALUES (152, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339681);
INSERT INTO `cs_admin_log` VALUES (153, 1, '添加商品规格', 'shop/goodspecs/add/good_id/1.html', 'POST', '127.0.0.1', 1574339681);
INSERT INTO `cs_admin_log` VALUES (154, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574339773);
INSERT INTO `cs_admin_log` VALUES (155, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574339776);
INSERT INTO `cs_admin_log` VALUES (156, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574339973);
INSERT INTO `cs_admin_log` VALUES (157, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574339974);
INSERT INTO `cs_admin_log` VALUES (158, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574339974);
INSERT INTO `cs_admin_log` VALUES (159, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574339975);
INSERT INTO `cs_admin_log` VALUES (160, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340092);
INSERT INTO `cs_admin_log` VALUES (161, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340098);
INSERT INTO `cs_admin_log` VALUES (162, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340108);
INSERT INTO `cs_admin_log` VALUES (163, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340109);
INSERT INTO `cs_admin_log` VALUES (164, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340109);
INSERT INTO `cs_admin_log` VALUES (165, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340109);
INSERT INTO `cs_admin_log` VALUES (166, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340109);
INSERT INTO `cs_admin_log` VALUES (167, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340109);
INSERT INTO `cs_admin_log` VALUES (168, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340109);
INSERT INTO `cs_admin_log` VALUES (169, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340110);
INSERT INTO `cs_admin_log` VALUES (170, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340110);
INSERT INTO `cs_admin_log` VALUES (171, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340110);
INSERT INTO `cs_admin_log` VALUES (172, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340187);
INSERT INTO `cs_admin_log` VALUES (173, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340208);
INSERT INTO `cs_admin_log` VALUES (174, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340211);
INSERT INTO `cs_admin_log` VALUES (175, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340287);
INSERT INTO `cs_admin_log` VALUES (176, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340294);
INSERT INTO `cs_admin_log` VALUES (177, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340295);
INSERT INTO `cs_admin_log` VALUES (178, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340392);
INSERT INTO `cs_admin_log` VALUES (179, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/1.html', 'POST', '127.0.0.1', 1574340470);
INSERT INTO `cs_admin_log` VALUES (180, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/2.html', 'POST', '127.0.0.1', 1574340480);
INSERT INTO `cs_admin_log` VALUES (181, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/2.html', 'POST', '127.0.0.1', 1574340485);
INSERT INTO `cs_admin_log` VALUES (182, 1, '添加商品规格', 'shop/goodspecs/add/specs_good_id/2.html', 'POST', '127.0.0.1', 1574340488);
INSERT INTO `cs_admin_log` VALUES (183, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340503);
INSERT INTO `cs_admin_log` VALUES (184, 1, '添加商品规格', 'shop/goodspecs/add.html', 'POST', '127.0.0.1', 1574340505);
INSERT INTO `cs_admin_log` VALUES (185, 1, '修改商品规格', 'shop/goodspecs/edit/id/1.html', 'POST', '127.0.0.1', 1574340555);
INSERT INTO `cs_admin_log` VALUES (186, 1, '修改商品规格', 'shop/goodspecs/edit/id/2.html', 'POST', '127.0.0.1', 1574340559);
INSERT INTO `cs_admin_log` VALUES (187, 1, '修改商品规格', 'shop/goodspecs/edit/id/3.html', 'POST', '127.0.0.1', 1574340562);
INSERT INTO `cs_admin_log` VALUES (188, 1, '修改商品规格', 'shop/goodspecs/edit/id/4.html', 'POST', '127.0.0.1', 1574340566);
INSERT INTO `cs_admin_log` VALUES (189, 1, '添加订单', 'shop/order/add.html', 'POST', '127.0.0.1', 1574342564);
INSERT INTO `cs_admin_log` VALUES (190, 1, '添加订单', 'shop/order/add.html', 'POST', '127.0.0.1', 1574342567);
INSERT INTO `cs_admin_log` VALUES (191, 1, '添加订单', 'shop/order/add.html', 'POST', '127.0.0.1', 1574342590);
INSERT INTO `cs_admin_log` VALUES (192, 1, '修改订单', 'shop/order/edit/id/1.html', 'POST', '127.0.0.1', 1574344399);
INSERT INTO `cs_admin_log` VALUES (193, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574385675);
INSERT INTO `cs_admin_log` VALUES (194, 1, '修改商品规格', 'shop/goodspecs/edit/id/6.html', 'POST', '127.0.0.1', 1574389462);
INSERT INTO `cs_admin_log` VALUES (195, 1, '修改商品规格', 'shop/goodspecs/edit/id/5.html', 'POST', '127.0.0.1', 1574389492);
INSERT INTO `cs_admin_log` VALUES (196, 1, '修改商品规格', 'shop/goodspecs/edit/id/2.html', 'POST', '127.0.0.1', 1574389497);
INSERT INTO `cs_admin_log` VALUES (197, 1, '修改商品规格', 'shop/goodspecs/edit/id/1.html', 'POST', '127.0.0.1', 1574389503);
INSERT INTO `cs_admin_log` VALUES (198, 1, '修改商品规格', 'shop/goodspecs/edit/id/7.html', 'POST', '127.0.0.1', 1574389511);
INSERT INTO `cs_admin_log` VALUES (199, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574472282);
INSERT INTO `cs_admin_log` VALUES (200, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574498806);
INSERT INTO `cs_admin_log` VALUES (201, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574498809);
INSERT INTO `cs_admin_log` VALUES (202, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574498813);
INSERT INTO `cs_admin_log` VALUES (203, 1, '删除菜单', 'admin/admin_menu/del.html', 'POST', '127.0.0.1', 1574498815);
INSERT INTO `cs_admin_log` VALUES (204, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574644641);
INSERT INTO `cs_admin_log` VALUES (205, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574732704);
INSERT INTO `cs_admin_log` VALUES (206, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574816772);
INSERT INTO `cs_admin_log` VALUES (207, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1574823347);
INSERT INTO `cs_admin_log` VALUES (208, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1574823356);
INSERT INTO `cs_admin_log` VALUES (209, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1574823388);
INSERT INTO `cs_admin_log` VALUES (210, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1574823544);
INSERT INTO `cs_admin_log` VALUES (211, 1, '禁用用户', 'user/user/disable.html', 'POST', '127.0.0.1', 1574824635);
INSERT INTO `cs_admin_log` VALUES (212, 1, '修改商品', 'shop/good/edit/id/4.html', 'POST', '127.0.0.1', 1574825844);
INSERT INTO `cs_admin_log` VALUES (213, 1, '修改商品', 'shop/good/edit/id/5.html', 'POST', '127.0.0.1', 1574825849);
INSERT INTO `cs_admin_log` VALUES (214, 1, '修改商品规格', 'shop/good_specs/edit/id/7.html', 'POST', '127.0.0.1', 1574826185);
INSERT INTO `cs_admin_log` VALUES (215, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1574838639);
INSERT INTO `cs_admin_log` VALUES (216, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1574838647);
INSERT INTO `cs_admin_log` VALUES (217, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1574838650);
INSERT INTO `cs_admin_log` VALUES (218, 1, '修改商品规格', 'shop/good_specs/edit/id/6.html', 'POST', '127.0.0.1', 1574838708);
INSERT INTO `cs_admin_log` VALUES (219, 1, '修改商品规格', 'shop/good_specs/edit/id/1.html', 'POST', '127.0.0.1', 1574843943);
INSERT INTO `cs_admin_log` VALUES (220, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574931078);
INSERT INTO `cs_admin_log` VALUES (221, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1574989584);
INSERT INTO `cs_admin_log` VALUES (222, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007460);
INSERT INTO `cs_admin_log` VALUES (223, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007551);
INSERT INTO `cs_admin_log` VALUES (224, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007551);
INSERT INTO `cs_admin_log` VALUES (225, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007559);
INSERT INTO `cs_admin_log` VALUES (226, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007559);
INSERT INTO `cs_admin_log` VALUES (227, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007685);
INSERT INTO `cs_admin_log` VALUES (228, 1, '添加设置分组', 'admin/setting_group/add.html', 'POST', '127.0.0.1', 1575007685);
INSERT INTO `cs_admin_log` VALUES (229, 1, '删除设置分组', 'admin/setting_group/del.html', 'POST', '127.0.0.1', 1575007706);
INSERT INTO `cs_admin_log` VALUES (230, 1, '添加设置', 'admin/setting/add.html', 'POST', '127.0.0.1', 1575010744);
INSERT INTO `cs_admin_log` VALUES (231, 1, '修改设置', 'admin/setting/edit/id/4.html', 'POST', '127.0.0.1', 1575010807);
INSERT INTO `cs_admin_log` VALUES (232, 1, '更新设置', 'admin/setting/update.html', 'POST', '127.0.0.1', 1575015275);
INSERT INTO `cs_admin_log` VALUES (233, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1575248788);
INSERT INTO `cs_admin_log` VALUES (234, 1, '添加设置', 'admin/setting/add.html', 'POST', '127.0.0.1', 1575270202);
INSERT INTO `cs_admin_log` VALUES (235, 1, '更新设置', 'admin/setting/update.html', 'POST', '127.0.0.1', 1575270213);
INSERT INTO `cs_admin_log` VALUES (236, 1, '修改设置', 'admin/setting/edit/id/4.html', 'POST', '127.0.0.1', 1575270339);
INSERT INTO `cs_admin_log` VALUES (237, 1, '添加商城活动', 'shop/shop_activity/add.html', 'POST', '127.0.0.1', 1575272656);
INSERT INTO `cs_admin_log` VALUES (238, 1, '添加商城活动', 'shop/shop_activity/add.html', 'POST', '127.0.0.1', 1575272663);
INSERT INTO `cs_admin_log` VALUES (239, 1, '添加商城活动', 'shop/shop_activity/add.html', 'POST', '127.0.0.1', 1575272755);
INSERT INTO `cs_admin_log` VALUES (240, 1, '添加商城活动', 'shop/shop_activity/add.html', 'POST', '127.0.0.1', 1575272824);
INSERT INTO `cs_admin_log` VALUES (241, 1, '添加商城活动', 'shop/shop_activity/add.html', 'POST', '127.0.0.1', 1575272835);
INSERT INTO `cs_admin_log` VALUES (242, 1, '添加商城活动', 'shop/shop_activity/add.html', 'POST', '127.0.0.1', 1575272908);
INSERT INTO `cs_admin_log` VALUES (243, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1575341663);
INSERT INTO `cs_admin_log` VALUES (244, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577093060);
INSERT INTO `cs_admin_log` VALUES (245, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577093102);
INSERT INTO `cs_admin_log` VALUES (246, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577093249);
INSERT INTO `cs_admin_log` VALUES (247, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577093294);
INSERT INTO `cs_admin_log` VALUES (248, 1, '禁用用户', 'user/user/disable.html', 'POST', '127.0.0.1', 1577094834);
INSERT INTO `cs_admin_log` VALUES (249, 1, '启用用户', 'user/user/enable.html', 'POST', '127.0.0.1', 1577094836);
INSERT INTO `cs_admin_log` VALUES (250, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577095372);
INSERT INTO `cs_admin_log` VALUES (251, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577095417);
INSERT INTO `cs_admin_log` VALUES (252, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577095420);
INSERT INTO `cs_admin_log` VALUES (253, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577095424);
INSERT INTO `cs_admin_log` VALUES (254, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577095499);
INSERT INTO `cs_admin_log` VALUES (255, 1, '修改用户', 'user/user/edit/id/2.html', 'POST', '127.0.0.1', 1577095757);
INSERT INTO `cs_admin_log` VALUES (256, 1, '修改用户', 'user/user/edit/id/2.html', 'POST', '127.0.0.1', 1577095763);
INSERT INTO `cs_admin_log` VALUES (257, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577149607);
INSERT INTO `cs_admin_log` VALUES (258, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577155422);
INSERT INTO `cs_admin_log` VALUES (259, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577155550);
INSERT INTO `cs_admin_log` VALUES (260, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577155555);
INSERT INTO `cs_admin_log` VALUES (261, 1, '修改用户地址', 'user/user_address/edit/id/2.html', 'POST', '127.0.0.1', 1577156293);
INSERT INTO `cs_admin_log` VALUES (262, 1, '修改用户地址', 'user/user_address/edit/id/2.html', 'POST', '127.0.0.1', 1577156298);
INSERT INTO `cs_admin_log` VALUES (263, 1, '修改用户地址', 'user/user_address/edit/id/2.html', 'POST', '127.0.0.1', 1577156348);
INSERT INTO `cs_admin_log` VALUES (264, 1, '修改用户地址', 'user/user_address/edit/id/2.html', 'POST', '127.0.0.1', 1577157165);
INSERT INTO `cs_admin_log` VALUES (265, 1, '修改用户地址', 'user/user_address/edit/id/2.html', 'POST', '127.0.0.1', 1577157172);
INSERT INTO `cs_admin_log` VALUES (266, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577157244);
INSERT INTO `cs_admin_log` VALUES (267, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577157724);
INSERT INTO `cs_admin_log` VALUES (268, 1, '删除用户地址', 'user/user_address/del.html', 'POST', '127.0.0.1', 1577157766);
INSERT INTO `cs_admin_log` VALUES (269, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577157779);
INSERT INTO `cs_admin_log` VALUES (270, 1, '删除用户地址', 'user/user_address/del.html', 'POST', '127.0.0.1', 1577157810);
INSERT INTO `cs_admin_log` VALUES (271, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577158049);
INSERT INTO `cs_admin_log` VALUES (272, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577158097);
INSERT INTO `cs_admin_log` VALUES (273, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577158102);
INSERT INTO `cs_admin_log` VALUES (274, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577158189);
INSERT INTO `cs_admin_log` VALUES (275, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577158612);
INSERT INTO `cs_admin_log` VALUES (276, 1, '添加用户地址', 'user/user_address/add.html', 'POST', '127.0.0.1', 1577158617);
INSERT INTO `cs_admin_log` VALUES (277, 1, '修改用户地址', 'user/user_address/edit/id/3.html', 'POST', '127.0.0.1', 1577159319);
INSERT INTO `cs_admin_log` VALUES (278, 1, '修改用户地址', 'user/user_address/edit/id/3.html', 'POST', '127.0.0.1', 1577159340);
INSERT INTO `cs_admin_log` VALUES (279, 1, '删除用户地址', 'user/user_address/del.html', 'POST', '127.0.0.1', 1577159609);
INSERT INTO `cs_admin_log` VALUES (280, 1, '删除用户地址', 'user/user_address/del.html', 'POST', '127.0.0.1', 1577160036);
INSERT INTO `cs_admin_log` VALUES (281, 1, '修改菜单', 'admin/admin_menu/edit/id/26.html', 'POST', '127.0.0.1', 1577175760);
INSERT INTO `cs_admin_log` VALUES (282, 1, '修改菜单', 'admin/admin_menu/edit/id/107.html', 'POST', '127.0.0.1', 1577175785);
INSERT INTO `cs_admin_log` VALUES (283, 1, '修改菜单', 'admin/admin_menu/edit/id/111.html', 'POST', '127.0.0.1', 1577175804);
INSERT INTO `cs_admin_log` VALUES (284, 1, '修改菜单', 'admin/admin_menu/edit/id/132.html', 'POST', '127.0.0.1', 1577175821);
INSERT INTO `cs_admin_log` VALUES (285, 1, '修改菜单', 'admin/admin_menu/edit/id/136.html', 'POST', '127.0.0.1', 1577175842);
INSERT INTO `cs_admin_log` VALUES (286, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577235831);
INSERT INTO `cs_admin_log` VALUES (287, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236289);
INSERT INTO `cs_admin_log` VALUES (288, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236293);
INSERT INTO `cs_admin_log` VALUES (289, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236867);
INSERT INTO `cs_admin_log` VALUES (290, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236871);
INSERT INTO `cs_admin_log` VALUES (291, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236874);
INSERT INTO `cs_admin_log` VALUES (292, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236878);
INSERT INTO `cs_admin_log` VALUES (293, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577236905);
INSERT INTO `cs_admin_log` VALUES (294, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577239455);
INSERT INTO `cs_admin_log` VALUES (295, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577239618);
INSERT INTO `cs_admin_log` VALUES (296, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577239738);
INSERT INTO `cs_admin_log` VALUES (297, 1, '添加商品分类', 'shop/good_cate/add.html', 'POST', '127.0.0.1', 1577239893);
INSERT INTO `cs_admin_log` VALUES (298, 1, '添加商品分类', 'shop/good_cate/add.html', 'POST', '127.0.0.1', 1577239899);
INSERT INTO `cs_admin_log` VALUES (299, 1, '删除商品分类', 'shop/good_cate/del.html', 'POST', '127.0.0.1', 1577239920);
INSERT INTO `cs_admin_log` VALUES (300, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577239937);
INSERT INTO `cs_admin_log` VALUES (301, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577239953);
INSERT INTO `cs_admin_log` VALUES (302, 1, '修改商品分类', 'shop/good_cate/edit/id/3.html', 'POST', '127.0.0.1', 1577239963);
INSERT INTO `cs_admin_log` VALUES (303, 1, '修改商品分类', 'shop/good_cate/edit/id/4.html', 'POST', '127.0.0.1', 1577239973);
INSERT INTO `cs_admin_log` VALUES (304, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240089);
INSERT INTO `cs_admin_log` VALUES (305, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240094);
INSERT INTO `cs_admin_log` VALUES (306, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240183);
INSERT INTO `cs_admin_log` VALUES (307, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240195);
INSERT INTO `cs_admin_log` VALUES (308, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240237);
INSERT INTO `cs_admin_log` VALUES (309, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240314);
INSERT INTO `cs_admin_log` VALUES (310, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1577240527);
INSERT INTO `cs_admin_log` VALUES (311, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577240539);
INSERT INTO `cs_admin_log` VALUES (312, 1, '修改商品', 'shop/good/edit/id/6.html', 'POST', '127.0.0.1', 1577240587);
INSERT INTO `cs_admin_log` VALUES (313, 1, '修改商品', 'shop/good/edit/id/6.html', 'POST', '127.0.0.1', 1577240592);
INSERT INTO `cs_admin_log` VALUES (314, 1, '修改商品', 'shop/good/edit/id/5.html', 'POST', '127.0.0.1', 1577240787);
INSERT INTO `cs_admin_log` VALUES (315, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241424);
INSERT INTO `cs_admin_log` VALUES (316, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241429);
INSERT INTO `cs_admin_log` VALUES (317, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241498);
INSERT INTO `cs_admin_log` VALUES (318, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241521);
INSERT INTO `cs_admin_log` VALUES (319, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241586);
INSERT INTO `cs_admin_log` VALUES (320, 1, '修改商品规格', 'shop/good_specs/edit/id/7.html', 'POST', '127.0.0.1', 1577241670);
INSERT INTO `cs_admin_log` VALUES (321, 1, '修改商品规格', 'shop/good_specs/edit/id/7.html', 'POST', '127.0.0.1', 1577241680);
INSERT INTO `cs_admin_log` VALUES (322, 1, '修改商品规格', 'shop/good_specs/edit/id/7.html', 'POST', '127.0.0.1', 1577241759);
INSERT INTO `cs_admin_log` VALUES (323, 1, '修改商品规格', 'shop/good_specs/edit/id/7.html', 'POST', '127.0.0.1', 1577241775);
INSERT INTO `cs_admin_log` VALUES (324, 1, '修改商品规格', 'shop/good_specs/edit/id/8.html', 'POST', '127.0.0.1', 1577241803);
INSERT INTO `cs_admin_log` VALUES (325, 1, '删除商品规格', 'shop/good_specs/del.html', 'POST', '127.0.0.1', 1577241815);
INSERT INTO `cs_admin_log` VALUES (326, 1, '删除商品规格', 'shop/good_specs/del.html', 'POST', '127.0.0.1', 1577241817);
INSERT INTO `cs_admin_log` VALUES (327, 1, '删除商品规格', 'shop/good_specs/del.html', 'POST', '127.0.0.1', 1577241819);
INSERT INTO `cs_admin_log` VALUES (328, 1, '删除商品规格', 'shop/good_specs/del.html', 'POST', '127.0.0.1', 1577241823);
INSERT INTO `cs_admin_log` VALUES (329, 1, '删除商品规格', 'shop/good_specs/del.html', 'POST', '127.0.0.1', 1577241825);
INSERT INTO `cs_admin_log` VALUES (330, 1, '删除商品规格', 'shop/good_specs/del.html', 'POST', '127.0.0.1', 1577241826);
INSERT INTO `cs_admin_log` VALUES (331, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241844);
INSERT INTO `cs_admin_log` VALUES (332, 1, '修改商品规格', 'shop/good_specs/edit/id/9.html', 'POST', '127.0.0.1', 1577241864);
INSERT INTO `cs_admin_log` VALUES (333, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241879);
INSERT INTO `cs_admin_log` VALUES (334, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241892);
INSERT INTO `cs_admin_log` VALUES (335, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241909);
INSERT INTO `cs_admin_log` VALUES (336, 1, '添加商品规格', 'shop/good_specs/add.html', 'POST', '127.0.0.1', 1577241925);
INSERT INTO `cs_admin_log` VALUES (337, 1, '删除订单', 'shop/order/del.html', 'POST', '127.0.0.1', 1577253999);
INSERT INTO `cs_admin_log` VALUES (338, 1, '修改订单', 'shop/order/edit/id/2.html', 'POST', '127.0.0.1', 1577255563);
INSERT INTO `cs_admin_log` VALUES (339, 1, '修改订单', 'shop/order/edit/id/2.html', 'POST', '127.0.0.1', 1577255623);
INSERT INTO `cs_admin_log` VALUES (340, 1, '修改订单', 'shop/order/edit/id/2.html', 'POST', '127.0.0.1', 1577255648);
INSERT INTO `cs_admin_log` VALUES (341, 1, '修改订单', 'shop/order/edit/id/2.html', 'POST', '127.0.0.1', 1577255663);
INSERT INTO `cs_admin_log` VALUES (342, 1, '修改订单', 'shop/order/edit/id/2.html', 'POST', '127.0.0.1', 1577255771);
INSERT INTO `cs_admin_log` VALUES (343, 1, '修改订单', 'shop/order/edit/id/2.html', 'POST', '127.0.0.1', 1577255945);
INSERT INTO `cs_admin_log` VALUES (344, 1, '修改文章分类', 'cms/category/edit/id/1.html', 'POST', '127.0.0.1', 1577257133);
INSERT INTO `cs_admin_log` VALUES (345, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1577257614);
INSERT INTO `cs_admin_log` VALUES (346, 1, '修改商品', 'shop/good/edit/id/1.html', 'POST', '127.0.0.1', 1577262357);
INSERT INTO `cs_admin_log` VALUES (347, 1, '修改商品', 'shop/good/edit/id/2.html', 'POST', '127.0.0.1', 1577262367);
INSERT INTO `cs_admin_log` VALUES (348, 1, '修改商品', 'shop/good/edit/id/3.html', 'POST', '127.0.0.1', 1577262379);
INSERT INTO `cs_admin_log` VALUES (349, 1, '修改商品', 'shop/good/edit/id/4.html', 'POST', '127.0.0.1', 1577262387);
INSERT INTO `cs_admin_log` VALUES (350, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1577262892);
INSERT INTO `cs_admin_log` VALUES (351, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1577263041);
INSERT INTO `cs_admin_log` VALUES (352, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1577263110);
INSERT INTO `cs_admin_log` VALUES (353, 1, '修改用户等级', 'user/user_level/edit/id/3.html', 'POST', '127.0.0.1', 1577263165);
INSERT INTO `cs_admin_log` VALUES (354, 1, '修改用户等级', 'user/user_level/edit/id/3.html', 'POST', '127.0.0.1', 1577263170);
INSERT INTO `cs_admin_log` VALUES (355, 1, '修改用户等级', 'user/user_level/edit/id/2.html', 'POST', '127.0.0.1', 1577263182);
INSERT INTO `cs_admin_log` VALUES (356, 1, '修改用户等级', 'user/user_level/edit/id/1.html', 'POST', '127.0.0.1', 1577263199);
INSERT INTO `cs_admin_log` VALUES (357, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263232);
INSERT INTO `cs_admin_log` VALUES (358, 1, '修改商品分类', 'shop/good_cate/edit/id/4.html', 'POST', '127.0.0.1', 1577263243);
INSERT INTO `cs_admin_log` VALUES (359, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577263254);
INSERT INTO `cs_admin_log` VALUES (360, 1, '修改商品分类', 'shop/good_cate/edit/id/3.html', 'POST', '127.0.0.1', 1577263261);
INSERT INTO `cs_admin_log` VALUES (361, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577263860);
INSERT INTO `cs_admin_log` VALUES (362, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577263903);
INSERT INTO `cs_admin_log` VALUES (363, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263907);
INSERT INTO `cs_admin_log` VALUES (364, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577263910);
INSERT INTO `cs_admin_log` VALUES (365, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263918);
INSERT INTO `cs_admin_log` VALUES (366, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263923);
INSERT INTO `cs_admin_log` VALUES (367, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263943);
INSERT INTO `cs_admin_log` VALUES (368, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263959);
INSERT INTO `cs_admin_log` VALUES (369, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577263993);
INSERT INTO `cs_admin_log` VALUES (370, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577264036);
INSERT INTO `cs_admin_log` VALUES (371, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577264066);
INSERT INTO `cs_admin_log` VALUES (372, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1577264148);
INSERT INTO `cs_admin_log` VALUES (373, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577264154);
INSERT INTO `cs_admin_log` VALUES (374, 1, '修改商品分类', 'shop/good_cate/edit/id/1.html', 'POST', '127.0.0.1', 1577264160);
INSERT INTO `cs_admin_log` VALUES (375, 1, '修改商品分类', 'shop/good_cate/edit/id/3.html', 'POST', '127.0.0.1', 1577264170);
INSERT INTO `cs_admin_log` VALUES (376, 1, '修改商品分类', 'shop/good_cate/edit/id/4.html', 'POST', '127.0.0.1', 1577264181);
INSERT INTO `cs_admin_log` VALUES (377, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1577264223);
INSERT INTO `cs_admin_log` VALUES (378, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1577264232);
INSERT INTO `cs_admin_log` VALUES (379, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1577264242);
INSERT INTO `cs_admin_log` VALUES (380, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1577264406);
INSERT INTO `cs_admin_log` VALUES (381, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1577264409);
INSERT INTO `cs_admin_log` VALUES (382, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1577264417);
INSERT INTO `cs_admin_log` VALUES (383, 1, '修改轮播图', 'cms/slide/edit/id/1.html', 'POST', '127.0.0.1', 1577264423);
INSERT INTO `cs_admin_log` VALUES (384, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1577264449);
INSERT INTO `cs_admin_log` VALUES (385, 1, '修改菜单', 'admin/admin_menu/edit/id/146.html', 'POST', '127.0.0.1', 1577266111);
INSERT INTO `cs_admin_log` VALUES (386, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577322308);
INSERT INTO `cs_admin_log` VALUES (387, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577332131);
INSERT INTO `cs_admin_log` VALUES (388, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577332136);
INSERT INTO `cs_admin_log` VALUES (389, 1, '添加用户', 'user/user/add.html', 'POST', '127.0.0.1', 1577332226);
INSERT INTO `cs_admin_log` VALUES (390, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577408547);
INSERT INTO `cs_admin_log` VALUES (391, 1, '修改菜单', 'admin/admin_menu/edit/id/152.html', 'POST', '127.0.0.1', 1577440017);
INSERT INTO `cs_admin_log` VALUES (392, 1, '修改菜单', 'admin/admin_menu/edit/id/146.html', 'POST', '127.0.0.1', 1577440029);
INSERT INTO `cs_admin_log` VALUES (393, 1, '修改菜单', 'admin/admin_menu/edit/id/151.html', 'POST', '127.0.0.1', 1577440048);
INSERT INTO `cs_admin_log` VALUES (394, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1577926943);
INSERT INTO `cs_admin_log` VALUES (395, 1, '更新设置', 'admin/setting/update.html', 'POST', '127.0.0.1', 1577927814);
INSERT INTO `cs_admin_log` VALUES (396, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1577928357);
INSERT INTO `cs_admin_log` VALUES (397, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1577928367);
INSERT INTO `cs_admin_log` VALUES (398, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1577928521);
INSERT INTO `cs_admin_log` VALUES (399, 1, '添加文章', 'cms/article/add.html', 'POST', '127.0.0.1', 1577928542);
INSERT INTO `cs_admin_log` VALUES (400, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577929585);
INSERT INTO `cs_admin_log` VALUES (401, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577929589);
INSERT INTO `cs_admin_log` VALUES (402, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577930597);
INSERT INTO `cs_admin_log` VALUES (403, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577930605);
INSERT INTO `cs_admin_log` VALUES (404, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577930647);
INSERT INTO `cs_admin_log` VALUES (405, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577930653);
INSERT INTO `cs_admin_log` VALUES (406, 1, '修改文章', 'cms/article/edit/id/2.html', 'POST', '127.0.0.1', 1577930684);
INSERT INTO `cs_admin_log` VALUES (407, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1577930694);
INSERT INTO `cs_admin_log` VALUES (408, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1577930714);
INSERT INTO `cs_admin_log` VALUES (409, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1577930815);
INSERT INTO `cs_admin_log` VALUES (410, 1, '修改文章', 'cms/article/edit/id/1.html', 'POST', '127.0.0.1', 1577930821);
INSERT INTO `cs_admin_log` VALUES (411, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578014916);
INSERT INTO `cs_admin_log` VALUES (412, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1578019455);
INSERT INTO `cs_admin_log` VALUES (413, 1, '修改商品', 'shop/good/edit/id/6.html', 'POST', '127.0.0.1', 1578019465);
INSERT INTO `cs_admin_log` VALUES (414, 1, '修改商品', 'shop/good/edit/id/7.html', 'POST', '127.0.0.1', 1578019532);
INSERT INTO `cs_admin_log` VALUES (415, 1, '修改商品', 'shop/good/edit/id/6.html', 'POST', '127.0.0.1', 1578019537);
INSERT INTO `cs_admin_log` VALUES (416, 1, '修改商品', 'shop/good/edit/id/5.html', 'POST', '127.0.0.1', 1578019543);
INSERT INTO `cs_admin_log` VALUES (417, 1, '修改商品', 'shop/good/edit/id/5.html', 'POST', '127.0.0.1', 1578019547);
INSERT INTO `cs_admin_log` VALUES (418, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578099667);
INSERT INTO `cs_admin_log` VALUES (419, 1, '修改商品分类', 'shop/good_cate/edit/id/2.html', 'POST', '127.0.0.1', 1578102011);
INSERT INTO `cs_admin_log` VALUES (420, 1, '添加商品分类', 'shop/good_cate/add.html', 'POST', '127.0.0.1', 1578102029);
INSERT INTO `cs_admin_log` VALUES (421, 1, '添加商品分类', 'shop/good_cate/add.html', 'POST', '127.0.0.1', 1578102034);
INSERT INTO `cs_admin_log` VALUES (422, 1, '添加商品分类', 'shop/good_cate/add.html', 'POST', '127.0.0.1', 1578102047);
INSERT INTO `cs_admin_log` VALUES (423, 1, '删除商品分类', 'shop/good_cate/del.html', 'POST', '127.0.0.1', 1578102403);
INSERT INTO `cs_admin_log` VALUES (424, 1, '修改用户', 'user/user/edit/id/7.html', 'POST', '127.0.0.1', 1578110011);
INSERT INTO `cs_admin_log` VALUES (425, 1, '修改轮播图', 'cms/slide/edit/id/3.html', 'POST', '127.0.0.1', 1578116765);
INSERT INTO `cs_admin_log` VALUES (426, 1, '修改轮播图', 'cms/slide/edit/id/4.html', 'POST', '127.0.0.1', 1578116770);
INSERT INTO `cs_admin_log` VALUES (427, 1, '修改轮播图', 'cms/slide/edit/id/2.html', 'POST', '127.0.0.1', 1578116774);
INSERT INTO `cs_admin_log` VALUES (428, 1, '修改菜单', 'admin/admin_menu/edit/id/138.html', 'POST', '127.0.0.1', 1578120721);
INSERT INTO `cs_admin_log` VALUES (429, 1, '修改菜单', 'admin/admin_menu/edit/id/53.html', 'POST', '127.0.0.1', 1578120749);
INSERT INTO `cs_admin_log` VALUES (430, 1, '修改菜单', 'admin/admin_menu/edit/id/66.html', 'POST', '127.0.0.1', 1578120765);
INSERT INTO `cs_admin_log` VALUES (431, 1, '修改菜单', 'admin/admin_menu/edit/id/74.html', 'POST', '127.0.0.1', 1578120775);
INSERT INTO `cs_admin_log` VALUES (432, 1, '修改菜单', 'admin/admin_menu/edit/id/141.html', 'POST', '127.0.0.1', 1578120791);
INSERT INTO `cs_admin_log` VALUES (433, 1, '修改菜单', 'admin/admin_menu/edit/id/147.html', 'POST', '127.0.0.1', 1578120805);
INSERT INTO `cs_admin_log` VALUES (434, 1, '修改菜单', 'admin/admin_menu/edit/id/79.html', 'POST', '127.0.0.1', 1578120822);
INSERT INTO `cs_admin_log` VALUES (435, 1, '修改菜单', 'admin/admin_menu/edit/id/85.html', 'POST', '127.0.0.1', 1578120855);
INSERT INTO `cs_admin_log` VALUES (436, 1, '修改菜单', 'admin/admin_menu/edit/id/95.html', 'POST', '127.0.0.1', 1578120865);
INSERT INTO `cs_admin_log` VALUES (437, 1, '修改菜单', 'admin/admin_menu/edit/id/99.html', 'POST', '127.0.0.1', 1578120879);
INSERT INTO `cs_admin_log` VALUES (438, 1, '修改菜单', 'admin/admin_menu/edit/id/138.html', 'POST', '127.0.0.1', 1578120895);
INSERT INTO `cs_admin_log` VALUES (439, 1, '添加商品分类', 'shop/good_cate/add.html', 'POST', '127.0.0.1', 1578124636);
INSERT INTO `cs_admin_log` VALUES (440, 1, '修改商品分类', 'shop/good_cate/edit/id/6.html', 'POST', '127.0.0.1', 1578124661);
INSERT INTO `cs_admin_log` VALUES (441, 1, '修改菜单', 'admin/admin_menu/edit/id/127.html', 'POST', '127.0.0.1', 1578125033);
INSERT INTO `cs_admin_log` VALUES (442, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578275444);
INSERT INTO `cs_admin_log` VALUES (443, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578277470);
INSERT INTO `cs_admin_log` VALUES (444, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578278656);
INSERT INTO `cs_admin_log` VALUES (445, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578302745);
INSERT INTO `cs_admin_log` VALUES (446, 1, '修改菜单', 'admin/admin_menu/edit/id/137.html', 'POST', '127.0.0.1', 1578305065);
INSERT INTO `cs_admin_log` VALUES (447, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578367848);
INSERT INTO `cs_admin_log` VALUES (448, 1, '修改用户等级', 'user/user_level/edit/id/3.html', 'POST', '127.0.0.1', 1578375411);
INSERT INTO `cs_admin_log` VALUES (449, 1, '修改用户等级', 'user/user_level/edit/id/2.html', 'POST', '127.0.0.1', 1578375418);
INSERT INTO `cs_admin_log` VALUES (450, 1, '修改用户等级', 'user/user_level/edit/id/1.html', 'POST', '127.0.0.1', 1578375424);
INSERT INTO `cs_admin_log` VALUES (451, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578445503);
INSERT INTO `cs_admin_log` VALUES (452, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578465086);
INSERT INTO `cs_admin_log` VALUES (453, 1, '修改用户', 'user/user/edit/id/8.html', 'POST', '127.0.0.1', 1578466960);
INSERT INTO `cs_admin_log` VALUES (454, 1, '修改用户', 'user/user/edit/id/8.html', 'POST', '127.0.0.1', 1578466963);
INSERT INTO `cs_admin_log` VALUES (455, 1, '登录', 'admin/auth/login', 'POST', '127.0.0.1', 1578531732);

-- ----------------------------
-- Table structure for cs_admin_log_data
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin_log_data`;
CREATE TABLE `cs_admin_log_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_log_id` int(11) NOT NULL COMMENT '日志ID',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '日志内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 456 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台操作日志数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_admin_log_data
-- ----------------------------
INSERT INTO `cs_admin_log_data` VALUES (1, 1, 'f8f38d73bMcDzmwdSsNEenIaowOkk4RzQdYYpZxZ9n0aUpR5+bD4L2Wc9VFmvuQD2+nxPS6+91D9zshQkNYuFgM+GInhxNpGkuNtNiiK5TwkKahqRAtJMlzslYGXWelq2urxg+h1lRisrCYdzs/rzbCnp+X4Ka20Fzt4WzlWQUD+2p/PpcCZ+MjR1lsGtqUK5Z9L');
INSERT INTO `cs_admin_log_data` VALUES (2, 2, '54bd57ddSYoopWgpDzgpdxHHYXsPieHa/jh0RV5OotC8xH3qapqN0l+gZy5aALZ18shy5uWjuJ66LlzJo/rIzYa3OcVyDqdfAMNOQyHpg16HHiwoLC+5/RwpQPcDlxkeINWyVrshYfd7lT9TzMcK6KcTZwziakH7Q56JpBXL2uyjVuhHDBAB08vakWRXgtEzTCoVfaIjLHb03sr7rhhEumZX4XK4J05fzAdJxd6g+iXO0iaB');
INSERT INTO `cs_admin_log_data` VALUES (3, 3, 'd6ba091dP0lVhXurpJeO2DYfNDwnS0lweHCP/uPaz8n2oSkGs1MlyEC24PoEqeS6/sphItSMZzumFH5F1bbuUAMA/0yghei8We0JDl1VSXQgysFPlNkIfIDsRp8pqS5yZ38xjk5Sx4nEeBnO+jhrrB6NptZ6/tTxqrdPLG81EiBZdhlUag1ATA');
INSERT INTO `cs_admin_log_data` VALUES (4, 4, '89baab2apR0zhNj00yRx8xABzCooRovJPZaDSZIXzrKYJ7pz8MoYp4i2eCC3lGXDgVYwcUSgVgk4UryZRgGINePJJ4NmgOy6W9xbnE2sOrPsvMcmITXnTGlzVD4qEo8PzxqjcqvSSliFbYYVbaQAeluCLb0hGPOBPhfWKt5XM+TKdvVpeMbROg');
INSERT INTO `cs_admin_log_data` VALUES (5, 5, 'dbe983d6AIaGbZLcbFoH7/hL2PD1Hxyk2I+SDrlHLhDYB4yD9lCL8D9bD6oJRZRTlsczDehxx2cwqcuw8ogWzL47BpZUIQ4GQKZh/ANvpmyItq2/5uujyr7E3v/3AWFcCKcWT6KzNYa+6+XnQRe42okoJ8KzphFhq9HDArMk1n1du1QW0JmKNw');
INSERT INTO `cs_admin_log_data` VALUES (6, 6, '272a197b7YsQpPJuQRsw/lvhzg/00bpYFL1zDLe/TQFBXuSoxO1FJuZFnaZp70k/Z/9CDrt1cwRKzGZCH7swCxawZeectIg9Pk5hFWry0CakWQLEGOCvU9tEsOKmEYf/gcHX06n104hRBxBd92QSk3GuAjo5O6CrceupDE8kwJI5sxAMFPmr1Q');
INSERT INTO `cs_admin_log_data` VALUES (7, 7, 'b78a923a2iKd7D9G0I/EUXjZrpoKvTTe5BkaDmyFGoRUZtawu4Xf9dHVeDfbmyplY5Kij+LxFYfNFIbgZYrU4DHi2frwiqPJrE8LpAyVKjzXexAjqSUd9o24c4xxomhQZTzHCMt1ami17VTpSr8QH8IiHBBJUUCaU6tEEUpRLWTjzs31+7tnhQ');
INSERT INTO `cs_admin_log_data` VALUES (8, 8, '8f2bcc08YWXus2rr5nlxFOm/lIDjiASGjTW+g+EY1bpl4DHVKqwHwlDpuo5mhN7o1jFgrFqaaP9cy4IlPECBZdjJrGqgnR5PWOaVgTaESXlL1oQ4UGiRcd/37zk46cukSQuJ7gANhVecJHThRSSkMjf9V8ZxDGDD+jY5H2IMH/P1x9dsTxtEKTklL22VvBNptr0azxFl5+vE+FUhc9ExjGYRVgb4UFgF8p7aHb0Yut/x0N2aU6f+kXk51a/mbg8JLTApe6b+/UvhASiIlS5l4Hx95p9s1S7qcvLue3e9Bm0GgdCmA4PaHKuPCiw1LTSdGeEI527MvQmqdu/6Iw');
INSERT INTO `cs_admin_log_data` VALUES (9, 9, '000b4879rnsJdZU+KkVy+Vi04ZKD7wpG4VKr2FnQmzMVMcVb3ig/NDYQyUpKwVzwuMLdOrwSREpp/nTxS85cOTaiKJNdH7EiyqExyg1y9WHpbDhINRi/KfqpRgLSLsX0OSnwrr1b7v7KffsKZP3YxQRCWtVW5skulV1uXBUyBdzYXm4JyDUYRtulK0fxdgcmcxYcJMu/ajUA19NAMWT6tyc999EKcMSwEkVXKGY46WqNgNl98PA0ATUs0tkafwdg2BhiTizal4i2tTks4Yr1DXhh1zBjGKXYvXOU9gJFDLYQINm1oFf1AeX136BHO58xtvXnkLcGSZsReaaFIewJdQWfDRKdIuqu');
INSERT INTO `cs_admin_log_data` VALUES (10, 10, 'e9da52e0eUcaAzuLMh1e1mFNrKz/cXED705zOEAr7pF/WRtKKMBIdAV5k//RvaefzHrkG9oIh5h4frlB+v7msGmoYyWbPk+plg3Xd0sGQnb14VA7fXvw7ZYSDkcUziWE7LsxUGkwxAiLfKfh8H4GC76t/rAzEWjiFIY/8aKMML06E5+IC0x56yV2ZtgFogoDZYfbaNOrENZvA5PcjBiB1q8PIHyFAFAzQSrhL/ZRL8mwk0qpNy9ExnkWYfkvYLrGaPVVSUThXq0QzRR/rhH9808NcI9stz5K+OFpZ4w69yBOUqSHE6KgF9by');
INSERT INTO `cs_admin_log_data` VALUES (11, 11, 'aefbcf67w7Tu8Dn6/Ygwl7ZpGWxGAIuchwr78sgss8khfUZG+o/SQf7xODUAG/HKlYurFDDwLykXlXQso6h89KGfl7E1W2YZB+sXBaOuzFFm0bFWvUtPFCABcltBI4VOOTJ9YGMq31fRgkIBl5uqlp8E/w');
INSERT INTO `cs_admin_log_data` VALUES (12, 12, '1357fbbauEphfsXaS3VDYVX+YAqvRlNf474hzNqaDxG3Bwtpdb4o9i7i22P0eI3TCSWvZskycYBtI++R67HybxokBGq+MjjScpKVFkzHKw9BA2XUmXPJV0oBmnUSWBzcvgP8sYjus7pSHovGy5k00wgdgg');
INSERT INTO `cs_admin_log_data` VALUES (13, 13, '3fa403a4mtBCMkTwDkH+WkiK78gi1DlEAFR9ViNqLmIMdJZZ18pd2ZhqvS3hURzd1kyUyYaUaPKCvrXxzdC0rQe+Ml9oqGnr3fH8kLK5qMi66eoqOaOnbvgZCwGVXrrm4LAjH3CMhFbe9rFVoxNWQECJyw');
INSERT INTO `cs_admin_log_data` VALUES (14, 14, '4b0b7c8a9tikFAUiXXnRUDG/M1ER3xKmnuQmEBR8FwRF+hFATJr0eKSzr88SnOljEV4v+2fqkJQKbPKPFWMrEfMPnoLJ4Y5d8TwXb8aRtaQLaO78PYgYGNhgP0Xple1/GxRXhWqWImj3lvpI3sSOrcVZHg');
INSERT INTO `cs_admin_log_data` VALUES (15, 15, '7c837073MsfFzsyvKxu12bHnnsBTsla6SM6h9VG9FwMbGzBHmsmKWG2CfHpAr0Wk2vnB2eE+XS7LjhaQ92/UBeuKYJkIW5UtWYL5NGIhSeYuarZoIay0xTewFug8wKye9xX4ptB9BrGKPTfxDjIaC2oKmzBGxiDTHXraAbo3OPnrZVSeb/jCUE6AQvjDYRUebED95Boui2wvQnwMDSMOVgUEr8AwSHpPgDW9XUy4hZb7bL3mxjFPkHI6ABf2L/VdDs5cacC8KfvbJ7MdXl5hPBhpX7tjW2/WZ6trkzX9WGY+0SGI1gcvAn8VF2aZq2yhzbj/Kc5H');
INSERT INTO `cs_admin_log_data` VALUES (16, 16, '30aa0897qywBHbpYTNBNq+TxlefTacydwRuqvtWT9LPrTSHJ8vf6NvtZD3y9maKZKTSck1fNqBAQCIst+6I7917+m6CgZuyAGNSVyK8BTQ89ZoDUuWxqkKP6sRQRlJvp2fWz9iA2S0MefY/foRmcQp9QchcLKzFs5sQ7fT/EH4eU20uTuGywvQ');
INSERT INTO `cs_admin_log_data` VALUES (17, 17, '381d496bW8aWaLR+ggcwwaMjf5dqB8FDR1B+O7mnaoQt547v2JjIK7kJvzUbsCzFKj+zdj5roTyB3gWMO991/l4cNoFzeddFFQPUf1K/j6NmYxQYw5AsyzSqF7QKGaYdcpFQkEG7K+hoeLYNWDrr2NeJHI+nv8v3NM66JiEpf1IRCRaglUjlmg');
INSERT INTO `cs_admin_log_data` VALUES (18, 18, '90b5be739llGsIhXgESYa7tQTFlzjk96ceBlPO+fYc4qINlWVjZJAMaHgcM1cD91NJpG6T34XcgMWEyg+BlNzsTUkuCT0kLcqGUisDiOQjneYpdPMHCqjWMDKJXyCA73CzSlN8ijVS+u1F00c0adpQx6v07hncF4YzzF2IHsl7QL+y0Bo0MfI/vAKgbJTTbS/mdtj9TEDuTGRRYdhvJ2VbKJcmANBzRB1akVm9INNqwvuThvZRS+aIaBa3+hRR5Jyt+RnYurX3IGTkVKWdg9N7EJX99t4lVTk1QYL9Ue7ArW9rKKg/baRpxtePmxV3mpk5cnKVLUv+WkxRJiF42qxshKmdI');
INSERT INTO `cs_admin_log_data` VALUES (19, 19, '23497c13h/y8TsGkQuKXYZTSae096k42wqHnEgWZ9kkwowLz8ATzlxjfJRKrXKftLNSDTvcoeGLAEzEGDPODWpzqXTLOkZYsyVmBcexD9FYKUoxSgf2pbw28NhHQ6i4ltwv6y/7Rd0r3do43svvk0P2xwRU3XnKjBssWdmkiQMClsK8zgBQissUOZLvQXL64JIkUZdHwi/GOgpQHuq9WSHzUpbHz3nZ7NJCrTOMWkgcOX/Cy29x9ZDCOelrphKRyLwlTgooj/UbTcZ31gvcaiy0HJgZzgBBkmktuhdMKCMwR6Nh0fUHfdmjUYnGM4pA3rmGi90a16Sn0O9QeUDCC1SCt9QQ');
INSERT INTO `cs_admin_log_data` VALUES (20, 20, 'c52bc934xu7pGiKh7Y4zqDppESTjeDSd78t9RLn5gssgqUMebBQ7lgNtezMPr/NCuTPMxdR+EvOQFJzKrw0ZFo2exaroRxd9+TVJi9iCk+441sY33lsKiQ2a6o3bZmJRv+dqzhkU2yOK7kFci0JuIwbUQ2sP/8MxKXRZR5yg2jxw4OmbO5WmY+xd2G+9pWBp2qXBrhCx+i0yfiXYrtpDfBGVWFsA6pf+QzJFsuMxL3XG1QTTE3/EH6sUQXXOHpceLy9j0gdpYB9zSSJ4bjcM/QsktaQnxPY3QNIDgZN7EYnWLBb6aC0rSylcxxx7KjsfCSksAHY6EDA4XNiGi9qMxgQIA6k');
INSERT INTO `cs_admin_log_data` VALUES (21, 21, '10372e00AB4G9cVnNiqRstQaS3blyAEOwv1qVaA4xhgcoim8JVB5w0GzHgDXvtyH5VfT/nwB+dJ16FT+qzrB6NHmDIJM5/RvrsU/RFjz3FREH9PW09XpyRkwg7x7SuGjq4VGH9iD8iaxhYJGHbwTsWhVcMgE3PMfIB4V06gqllfNVRzjKAJw4g');
INSERT INTO `cs_admin_log_data` VALUES (22, 22, 'ed0172e6vSpkqJlyYsOAjHJalMn0Vbl+w/d/4yXXc53KHJN8AcnmZvW53r9yIj6eiWxkA0zUdaUtFH3+');
INSERT INTO `cs_admin_log_data` VALUES (23, 23, '031de824aNDiMmQYtX7xC0DVhRXXtA4Ctjy4VtYQ53jeenIwsDuYNNEJCW/c4hSIN8uZ/TljMQ');
INSERT INTO `cs_admin_log_data` VALUES (24, 24, 'af21dafeyQeFXxoaVP+STO2DWKbXWYkdo8sqRVmNcYdRV3gV8ZlzYpI+mw');
INSERT INTO `cs_admin_log_data` VALUES (25, 25, '6d4ba80cleZ1WgMHGzY28q9zvnB1fts2NJIHSg8ns9UW3iZ2/ZdRJgcPQKIHHPIyTtORH3QTo2/6yNnuY+41YaSimznKxmkqTA68CPBAw/iK/Z9gsnpgWXAQvaiAb4bZkRYYmRzTIjhZX4kSidMP63vLdROjafuTYl5eQodTfrKD5rYAyO9rUHa1iXjFRiDg7AHhhE+aR/phLJz4qwZejy05eUVCJex9EA4MiTQuP0I+b4Oc3EUnuJTBsgkOeOB8lsRAt6djc6mCyYaFd7JLjYEwVSMl1jyeXYvxXhXgdWYxlDLlJyRHAyOa+XzWVo0SWB3pjSNEsE0hkvdQXQ');
INSERT INTO `cs_admin_log_data` VALUES (26, 26, '55a1bc5bd+J/U/ryvPmRXJSMform0Hgmfd/eerJmJwY2jsdgj/gdZd3Tg5bTFXnmh1myitiFhvrzMVzuh5n368SOfrna66OUCN5zTiInM5XTCuhN5HvzROmLbDawX9QYp8AHV5IWC38CEPW0wAhsBMeHYBL/iVxisi7RzuJt6O29Qn+kLWYOgvs/QObngEnct7IjPrJceRuN5pFlXIP9BOGJZbaO1YOsowo6+iBhz56EU1na13S+jFw3kvkuERr2rqegg1C6FlRSjpdgwIXNIN5C+rDtgyzixZCzYN6bx3J2bd88PUHD3TEeUYE+');
INSERT INTO `cs_admin_log_data` VALUES (27, 27, '37205eddt1nNvvz0gDSCjVeCTdT4E3lv23A3o780vRDqx55ySwXLFoMrU8f5pW/F4nR7Nbl/I+8KQSCX4TS9ARFoNXzyYCJ/I55xFhokOmZ28Viznd2tDgHa1CYqNCszB/tQTM2PE71iel2DoeAa4yt++OqV0sqCfsQotm1y2GHmAIaVesjtaro9TyC3ijgaCPTvW9t6JFTgMjiu0u/MDYBBFNZqoQ57z6RhlHO5eJdSkD9qWU7Vcz8pjIOT9lES5ymwjXohcZXZvmcV0vRfUcRLkxi/LCff6iWBZPGSr5JqDN7O+M/PvozCStt/RdbT');
INSERT INTO `cs_admin_log_data` VALUES (28, 28, 'f6e15985BU4jQgf5qsJ5JWGk1pJ+s/W5fmnWVULH1dPMUeDNYgdJZsRDFkEkEiSiU0f5PeO7d3lrgpi2hwO9odwQ7pQBxmaH3cPhM+0nNg6FEnVuAihpbpR2cv3pLrh5m4CBheDu+SEEadR8EyudPZ2pPsc94GibzpvHNUTrtq6UFmSVfFrxH+VI56hOTk1dRyVyJwkruTZkTdBwsq0TNgkIgURdth5XJ9ndB0Lww2Htdu51gqyyOFnvKJakyKRaqKRoFwIA5kNfqNk1UHrDSXYuro3FUYUE5E1AcOqAMoaiL/V8BXKhFZv8IwqIdsh55NIC7A');
INSERT INTO `cs_admin_log_data` VALUES (29, 29, '8310c123xMyAlB7j/M6vTbEsdiGFdd7J8El2Vuc7eCpEAEiPXnTD+EY7LyvGtlX9D0osbEeDHIXTLrrL5ExyCrlhSLGNChv1sYRA0NoQM3NWlAtAFwvC/FUTZM1530C6Hsn/sG7J+O5btb0NgTJzmAhBHEITWWgtQyOiaFTVrIkKl7zIsisgnEl0yMC/cxKwHXsQ+TH4zkpGF+wlbILRszm8g0NEXTDBGg8jrmkbqt8uCoIDQycGz142A7W6Lgm3FofqPspGYdh0uLiLg56yCTmy953WZ39HkHXTrpkop+StsVF1YS/JVi22ryoddJITI3FSmh+MOpo0xuM');
INSERT INTO `cs_admin_log_data` VALUES (30, 30, '0c8521a8a4Snd8kMUTMEhoZOI7tV+Rrl8a2yGDQcc7jqojLuUGj1njZHJJskLs0u5DuqkKzO21zeOsD/kChUZBbzd6WcnvusdZZL0ARMU23usyvRVq7MmP4/ZkkcfM/CsSFnIC5AWfDhTmA09MBHdW4J9a5VdpiAmQp8K+bYpWTR6ViqrV1xzC7SxhAA3rtqCAu2hQr9fL0DkNnzgz9DdBrxlgl9+oTHX3CUxc5syqf9aLrPG5lEP2OLrJIYHtxDd9EcZE6kUm9YmO6tk01NP5xMSn4XLegr1uDBX0aaPYFQ40guKPoNN6gedw');
INSERT INTO `cs_admin_log_data` VALUES (31, 31, '52274fceCz4cagdH8/0Ht1HHRdSDwXLtezmxGX82Frbq9364Aa79Yur8q2+tP9muDRoD0uFiEFt9YqT8qQqEZOcRMm8GhRDNsn05DaowO3ho/FAXY0QChhSx7Xa7Yr+RQGQxv5mWpXZkRcVY7fohzZW3Dj/zn7wz5t3ndmRVjms+ka8UplPby0csjPnk8rS4V4WXan/Fwlok/n7LWrclrUL4zQ5yPp6Uijy7lFvJkk0ORKdbY9ghen8Vru3aPHxZRxveh9UJUy/5zCVCGLpDJhVF367IOWT4tlddRZ4QpDSDV13JUnI47k6/ZJhGUQ');
INSERT INTO `cs_admin_log_data` VALUES (32, 32, '97841516sRqQClRvfj90f61LO0d1lOk4ecDkrY5gPjCriML+i+reVrNFQIqIhn3gjwbqlEURB71S9GlMeOSPxzuZEEkvQO3WLe29xi7CT3XhHM9r0X0Zto75HxXCoRwjzGXCCxnNQyC6ByZ0bEo1oYuCpEHm0PVTE0sIU/RT/0xvfhfglvuNOJUTb0cZCdym+eoRQuUziJVwN6KoOrkbY6dIu9U2W2LxtnrMkROa/8qkjM4BB/eNSwT21Vk7IcYjkCVuEzSSKBVQ4/PpEtGX6qHi50eUgdQdk9bR0RmpvVrusy6+qegt4l10CHbARX2D4FQ');
INSERT INTO `cs_admin_log_data` VALUES (33, 33, '0c48dc32hk0V45g3OwVdueV2H2fnMrztRvrKqHZlPs+iHBFzRz2envC5');
INSERT INTO `cs_admin_log_data` VALUES (34, 34, '3e33a306y1ubq5d6PEAbGinmzo+VcBOYrRudB6Axun9C0Macm6u8b8D3');
INSERT INTO `cs_admin_log_data` VALUES (35, 35, '24f146e72bJJtUzsxvOJS143r5UVvGFmTJ/MJTJGztntz2rEeri1FYHk');
INSERT INTO `cs_admin_log_data` VALUES (36, 36, 'fe8424fdUHAVDtdOgCz+Wns6uBAitPbEt9QiKSUAbEJza3raIKGGMIbw');
INSERT INTO `cs_admin_log_data` VALUES (37, 37, '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');
INSERT INTO `cs_admin_log_data` VALUES (38, 38, '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');
INSERT INTO `cs_admin_log_data` VALUES (39, 39, '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');
INSERT INTO `cs_admin_log_data` VALUES (40, 40, '275ad47c/9uEf5ztFql7jM8fKYQzQDd3jyIMcTmIRyFjonAOK3+/P632oWJU8VM53dvWLpKWIf9g6m70ISeoH7mczDeqIxUueijthN40BpNpL8/yv9XnOG8UReUxjb9lFlfK9XfYMto9eO4x+7o4HR4CRTKGYGW9JJkIhdr32BPv1px1WApttg');
INSERT INTO `cs_admin_log_data` VALUES (41, 41, '273116eaP0GH/Qg4bUo1SRStv8vn0q8eBGS6voS9XyD0yYm2bhYxhnvi');
INSERT INTO `cs_admin_log_data` VALUES (42, 42, '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');
INSERT INTO `cs_admin_log_data` VALUES (43, 43, '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');
INSERT INTO `cs_admin_log_data` VALUES (44, 44, '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');
INSERT INTO `cs_admin_log_data` VALUES (45, 45, '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');
INSERT INTO `cs_admin_log_data` VALUES (46, 46, '145dda68EHyDHYF6zmf9UtLQT5cT4p3BsgbQqTT36icgHIfe6NF3NL57RXaAZTflL+qVXULolyxRpJlagyjPj63rFKtKS5/UZgyaGDCh0MBq7FSsoiBN9ynsf6m0Jz7+Ssiz1NZksFgzpjkdd3Jhjw7EMUJx8Eoz/M/Sdn6ybYS6HjWof1IzhDNpnIYP+uK3oX4ZZOjqaiXNEjvnhlKcTuKltJ5YoVCkLezJ9lFkGh6dj1kMKA9Pq1yrtA');
INSERT INTO `cs_admin_log_data` VALUES (47, 47, '715e1cb4lorgoJTM34yFYtoQHO9sNNTASS8eKs+r2UPKFRfpz2c6f1TzqrNMIDuqWVzX5OZGR3NhJMri8A6QtK8nc/jyzsBWlg0y7lDCwidptR//gLX/2qeGeqpaHh9/ageTH9C7++kAy7/GUTJX9h8+dtdrZwxn+g1ZrGw6LgwANQA+26/x8F8K+qezriIXqIt0FPWejPVbz5LEggRArJ+5W5DZ2EVcX64cYMVW83NXubtaaqHPzKFsSA');
INSERT INTO `cs_admin_log_data` VALUES (48, 48, '7ffef53eDvr63R7Qig+/HvyP/7Y+j1fKY3S5F+Bp0Ql3BpqaO9GxeN3Vj8vy4uWzGq7D+7XMS6f33I3EYvJaX03h4Pk/ceIYgD4pYrmCG/ZM80MrZEIVk/FWJSy6TMoEissczUwtkitgy4DIFtNJaKmZmN0fK4JUNE/OJnuIDDvRrcHfxTF3nsbfE8gRnoQT+m9os6cHCNsUB6tJeA0p47lluQdpxhp5H/MGVimRgMdwMVfa7rbkxKF8ow');
INSERT INTO `cs_admin_log_data` VALUES (49, 49, 'd32cfe1ese3va5gBYbVTJnhdz9W5sKUOyfDD2Fu5ylw0t43s1vJApcljw0MwP/5sGHu/RYa4/IK/YDhlfUb93MReA+QyoseB9dvRMpo6wSNvuHAxvae/eQoSK3hyFvjRBYFSUdO+LwONZ6oQjk2uwBDU5wDK7PoJdcLZWOomVW0ykWz2lqD6woaU9i20pH38VUgsoQpeGStwsm19i3SzpLmpAT6sFqhixOBsDfgCLVb5z09+mxzuBA/yPNgJHPVVKH91htzxyRJnog/q/qbC2IGO7WM');
INSERT INTO `cs_admin_log_data` VALUES (50, 50, '37c48e631GiALyoxnmwPFMlok3W2UGEf9j11t1iDHG1TaOmHIpSBJTNRl/Zsj3pFt2hUy2ag0kB5adX420YG5H7m/lEJxrpq3Q6TWHhy+uhxHOia4LCNEFEqadjyLBGO4fa1feRyfW52i3MpDbh7o0yNFaoDDm+I85iQbikTRchL3usP8KaDPLxHDf51qdCrl3wr8nGW8IUhpIrM2dFGYGsLjuRFXP07zb4lGSmWtdsXXt3HpUXClXG/lA');
INSERT INTO `cs_admin_log_data` VALUES (51, 51, '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');
INSERT INTO `cs_admin_log_data` VALUES (52, 52, '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');
INSERT INTO `cs_admin_log_data` VALUES (53, 53, '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');
INSERT INTO `cs_admin_log_data` VALUES (54, 54, '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');
INSERT INTO `cs_admin_log_data` VALUES (55, 55, '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');
INSERT INTO `cs_admin_log_data` VALUES (56, 56, '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');
INSERT INTO `cs_admin_log_data` VALUES (57, 57, 'b33abd57nm1PEqA7EQrOiJA4vpZuMILKLBpUHVswGqOsmcNjp66H1CXZQQ7AchI/noJOu/v1YMj/0T8A4J0vTG66wlfsqlVffuBg2vnUPuQlL9Ix/yJEAVzB3c4UxAcAxnlDT5cxSV3wjbuO92O1AZExLI4cDgKOo2M5yDC63f3OhEosBK5cl80sYP/51rOeczW7bsqKFcQIuz3AkBEfA2dHQnerk6gZ+JDwF6g9cAQLiv4REt3FqDRarkr4yE7C3S8rTFL5022j7y7OpUtWqRM35YCYNKzuIGkkVDrSz9Exa7xIK9Q0oCJW9ZHDicfahpve8/Dn3VF14nKU+mCSebhVCrtsFVjK/hJPdliP42yW/+dH/E5sDCdevRNyJqPkDkKUsMFAL8Q/GR8ZHEhdYtQZJqLAUuTF5pLYe47e4HzlVH2axUcKW+3ZT5pU8/iTrUg+cl9xMo1as4KoHcGrKGrAQNoXfA95yws2wS6FTYNoAAW2LNmmlrDeKg4iwOhcEdC3cpPgJIyeZeoaaB4Bdjh467TNGLCRKHUAbrAfBty1yS1M2aJNvF2Zo8J3gSHZOE/mTiBYQmMWf5WbJYCr7ShohTxFcCyKIukXBVYx4n2cZyb5OIjdquwXpX3ErV7Ul8zjidS0MQjFhKZ6wgYkt1wqX6kbXdysEgEk1G/GKgc40U7iQFwXfjw1X4BnQQwZYRpfSGM9U+irhbBINgp+bfppPX6do3U9JD44Cw4rWTn1gzucXN+Q0mzwXjvx5iyNKLqYBfDrNHKyrXu887RCBGiyWEWhaVeYHjNQJq8Opd3qGcAcSuJzK7C3PZFV2opKw4b7a9QzqJ8NbUa24Y8ErQtPJg4tpPST8Q6nRSvjuTF8InwfdxnR+Nv71E0Dh8L2E/1I5+iXXs8+yFRQqdjStliPxj8H9fK9JklHfR4KJJyuhikVUg6+FP+5tLyB3iD6yRDzVGSRKX9I5dR0aUK3sVuEi6WErcNWAU5iBrl8N3ZPmq4yRv52z/ydy2FcGQGDw6LQtT73UO40g84e2B2wN6ccv/UxLuIbOwztCrH+SDd1pTbIs7/LWW0KA8HpvYfgTB+FAx1cRnf75R7Y4XmuNbFagkicIdMbUyMS2UCl22IjEONRPhRG03GR3LNhPGl9Y5x8N9m47+apdwtuU4mPawYsxfoccRMd96cyooEIEXPRAedQmlqbSDkzf1JR1L46vW9gPoOSZP2w6f3b2pvynMNuGUF2Usmw8D+vZx8hX8ndeSQlO+ANzamV7MUAdN6HVgwLLXpQm1BZ2NhitQGGvWtRtG0efpM2NIgr1rBnajrXI/eFhe+69spTI4hiVso9jCQWlXovZ/34Xvma2cFaA+8WAAR+F4U3ynls3+Nca6Ey30Z3Vugwg4foSdzcaA24qzZoF6Zdg0RSkLOL0Ytl3fB7z5d9zLit8m5L341Jh4MjM72DkWJmZYiIXqMArrgKX8rvR1hFY7r+in6WuiMV+bMFVX3akT5UlXsQB8QuxmMuygN6PHcRAsCedbACahHO14UPcOn8WbN4xGU3/hU/GIxzakmJmg2YKAD7icuerSfparJANyYlIX9I/RMnBjnWKwardJ5sO9UFQFyU2KmwgsAzc1nz2fOkyKv7Pg5f4AkCAiq3f7PfpNz63Ok8JGmxOvPqhRf3GGrreh90xnizxbRf4T6kYEkzEmO7Qukx3nxltIpqEDO8T5u/fnxW9hZ8iekfsTj1qOHzgmp6oQlQqPjpDD2zWNNYJ/n8K00P06EqQCO65L+fHkqAZxVAJN/HHfQcgataxUob4FXsVA2Rd/OdXcuI344J08E9XaBs1muAUD3WIcl5MGZ9tEn6mUgpyqb2iR0JtV/pFV/gsdGSXRJHg17P0Fe5tdxn4U38nH7/ecm46vSVqAV8wTSXHKdJCTfywecFdxxARAC9tdE+R81TbfU5i4/pCt3mVOCLKG2TXL/t6C9hk6SJDqJmHOpVMbJWjNZRcx2rQhyEowZkYnnKpzDv7jE89EiqxUuDLOCA1nqHxYiYCdonws+/VMZFwvJwSZJ+0qcEIZdHieR0XLopQZRfwoNJO8x/S0RfFjUXo1SxAKFNOwoTLAM206jvNqzJ14klZ6xUGMSvOvFvtK8oyb4ALTrkok6p98KIzbdbVmZv8VwtOctURwr2HydU4s6pULmkdDwcvb0UGdN4rLJJjkE/JqkMx4EIGanZ0W7V9e0YugYLyra0yYtxK0iHCCINu5pCKkRdMjCv24T3wudrWwuodQkDSlKEXbxkN222Yc1EqZnBdKaS9TieD8PrCF1HFDM/FXbRSKzk2FBwfxCrQtgHQhEjur7SItmpGYUfxzSGHWRw9A6OZ8dWLY3aTxy4jPOsxpUkecxgQaujl4lHQnSN8VYEJqzYx04jDLVFLgUT7eaSA9Hax4mAWdgnAbEB9gLqvV6vlwR90nSLCNWZIwFgGiQ1vEqW0sJavQD83E9asg');
INSERT INTO `cs_admin_log_data` VALUES (58, 58, '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');
INSERT INTO `cs_admin_log_data` VALUES (59, 59, '4cef8086Pst6ohqx0nvrgnEROAAZMpTAZ0LDLW1llrP05TDde/PiVS0r32JVgv/U8EJPYgZAAjaWBu63m4HuEzIh57+otyxoZuq+4ysjvr8djlIpMj/bo8ryTJnOYevGWfosXYzVJuGBswY+ziq5GSz9IAVPnGlwwk375zGp9DRU88dMM6YJknBolIRBFAUiGMG3OuqkuBsA2dvjYMkzurrhz/ScgTl5pQbzCmogurPBTGwA5UNOzml4iW547AkOaPfgOw');
INSERT INTO `cs_admin_log_data` VALUES (60, 60, 'd22956d76hpFiUzuigx3/igofVttLdeIRsPsn4CalsAnOztxvtcKd4BM2XLa1JAbLY2K48Fl3sfKJUvoe3qpJSJByxJysy/yEXzQ480GFL4/f+6vJlQ6hBHghQ765zRIVcTk2nX5M8JD6EtJywUPIkBaoVYfkOJB0VLuBXQmgRduSosP96Ox1jcjs42JCHX0QclwrjBRKm5HZzntYWeq95VghswXrwxvL20WGACazCll0qX5wZdTrTBGKW6qxbhi8j7TLQ');
INSERT INTO `cs_admin_log_data` VALUES (61, 61, '5354e9726LxusPLn3qFTWAP2LW9DBQl4nrtlIPtmYmpOD7yPDIoWqaFDjI2DMsF3RROemnzt8m07JicbSYktqjRezrhx9xmTgNyekTzzjvp7OtvIilpvnLfjUz0NgA+EkYo+Y22W0W5ZPHqQyFaflcvLjknfD4UMxVUvpXpwJRZSGr6DWnPbjTM9fTN+jjN1rwzv/7xixcP4yx1NtJL9ymNdZPa03K9EaVqEDObki4AQC2VC8sGINLy5lFV/ZgjAMgJ0Uw');
INSERT INTO `cs_admin_log_data` VALUES (62, 62, '3a17efe8g5GLEmy0K+omagcdf8hTaxNVY4aIXRPMBzrvf2APFMFx4YTj2KwQPUE+wXcHSzeIKE0Mpxz0JuWbjuP4/KxZZUSqqKeodHS0mA72lmmvmL5UZSko3Nl7s6YMsAxP7mw90x3VTxUWxAfmlCseMSRxXKwxm6EvMwQNCndidS2KV0OCn0YQcJrtAfuoycimnISeDBqo4LQR7cQ4O60M/PIkENpd81o00r5S9D2K1iNzumkZQPTGM2gjiTgeXXQ+6A');
INSERT INTO `cs_admin_log_data` VALUES (63, 63, '866a8161R+UeBTYzItjDMUzyuPxPQsqe3Rs234XRJwZaHALgHaWHzT/Js4en2Ypr/sZ0jiy0Q7lrqZigKMMj+vC/C7r6pqm+s5BTV4k5vKWlUi/b9G4UdqMVV76T1TkPx5DIPHh1TzBWax6TQifmyDvkLfLQbNtca2tqftF1WwU2BP8JpORWA8BI2ry6fUelRFGVJTCj2csRnt7B2r8dDp5x3VW7bXjHPPMolpB/SBDQfjie');
INSERT INTO `cs_admin_log_data` VALUES (64, 64, '0e0e44f0erDyE39Cn5oHg+RCTJfubRc35adZK3iXbazKPhzt1My71gR55P3BXoYsTE9P9aoQq4pCNUTtrSSKQVKB0SHdsr+QwCVaNSshXJP+ZivcgXXydu9b6jGArmu8zpORO4T9ktR5VU9Ww+ajGgYv7ocKClut1BKIM0Q2cQZqM7Z9vk0qWTd4A4s7JlNFpCOi0LaVs4U/C37idIxwpZasq/WfPySMUkDFNlv3ONc8e1J5');
INSERT INTO `cs_admin_log_data` VALUES (65, 65, 'b6f485a37E+4XRvUAHDOWokOhcX4yJMg46szI7QRRL1Zff8niC4mHkuvEFEuAED7Eg4kcgWNMQoeRZ5P4kw5MdOxxO3zqInBR6Rg13QWhZ37DAdPWXAc7DfCSkVs6TLJVMRADbf6HJ1+x+Hqez09i2vQfDG7qPMgegZwO8q6KdQwCvQdjQHbiQDwTT3eNspdkLbK8TllgNa6v9GBPu1ldm7SLPD2kkk80Tkop3GLtjuGgdvV');
INSERT INTO `cs_admin_log_data` VALUES (66, 66, '97823586j8h3pEJOsdus2NhjSeM3pPS0Gqb+ptdGm3AlyBnbSG2K1g/VUNm1Mk2iZ3IocdqQY8PYKIpQE2Ud3WGOBHs/aZ/j6FXo8IltauMI6nM0owoYWSvDv4uXgOkaMWhfOT2pW4l+j5LRwwaGhdF6uy5MgFPPHwfagz83rrB4PJv9vgGMiT9TyRf58J1Z4fCsHyYgNZZ1VHW5e44wWYUFu6qpmtPyFKxQvyUSmeBdsLVZ');
INSERT INTO `cs_admin_log_data` VALUES (67, 67, '1d6eee374Z8CCCWfT0aluCctRbB9C6NOITL1SMStUAvXuI6EXxMbr1jN3BLyjRF9rkk43TMaJPM2fXvGLlntkrIxwwRr/WCi/iPjd6q4D8GUm10Mt5Jd5lmV4Dy6vMDuwsYUmLuUvGb7UWcNkXITAyw5u6IlBp4F7+wfGcM5jKCZMoosVp945W9Q6jR74K8rwqySPEAIHZhiFMXD+ILYXfFnUPNhtBsssvMBpmjyds+Dd1ohqNQ');
INSERT INTO `cs_admin_log_data` VALUES (68, 68, '5bb417c1SSHP4pnEYvmzqX8pn1Y8fIJHuIpCVyjkdNGA+jbaK+oh2eY3pswqhr4iAmEypZiQA9wnzcnFXRecP/FWjM9qjJCQsTZjN78oJVGot8DfDqVOkIMMW3wt+TXdb5n7KTGOJIj6BS1wM/8eDJD38La9XZehiw+u5jYKg3dUq7Ka33eaItiDhDAh+TXB7leie29E2ogAnTbNnC9tS3+wci8gGYRa9CiqAbjKa7veWILMpHI');
INSERT INTO `cs_admin_log_data` VALUES (69, 69, '5e803a430omORjK0vDmOoX+Mw8BmL17Rl/h4medNehpzlcj+f2EoHz9JAzZBdKNaqii/3cYqCPICK/Fsbncw/EJIj5zmQZmpknzqdKRVmIWtwCsUlAYX6XjFDhdeqbhA/dYx6pl90RHOgUlY72uj4igMAPOMVsWEigtzJWuKW54D18MMHXrs1FMWnYizcw1myiPggwzvunIsXvy9GgjxKu1+jfL+Fg2kQN7x9plNl1Ek4kKjAg');
INSERT INTO `cs_admin_log_data` VALUES (70, 70, '7affa184x+Fcqrmz5KzaL41rW4PJgEEQcGHineZY2GnPQbrs3fmaeDHoOzvPrMseRkiwVzihiIjuhMY5dMLMEYsi9kTrO3K9/dVa5EVhMOluPFGvDAqwjyFJjy3loba+F3uIWPuvmDVbgeK5es8Iz8e823RY7h0FL+8qDv3iqbu/p2UtJGHQYMYgFo31kXg1S8dwIf0HyBYMsxKS4ck+/suH9MWMWeSaCPyMyCb5j0VlDhg7foC/5eOlzIYCkdOk95lRAvwWVHiEosiXijI055UCgVQF7wYIWUheUuelTwXsHc9l+PyW2TOVgU5pjOUGM0QKYFPaJ1cbO5C10VcYxf/V8hR+zg');
INSERT INTO `cs_admin_log_data` VALUES (71, 71, '9fc48692pHEwj5w2Mnh4O0s//jECnxPDcbzA6QjhjezLrJaJpjHOowq/e0TRbA5RkUj53dNHQ9IleVQNDyUYwA0I3Y+uHGu5VfRZarb2qfAhujppBN0XcF7peHPxMCdFXAU4dQmA+bJCrhUoMih/BqW/1r7PZ+7PbYdV6EGNy6VPSakqJ9hHtQ');
INSERT INTO `cs_admin_log_data` VALUES (72, 72, '2601f684FhaEf1CVx4JweD+xpRv+Kodgxm4KxAJybH6bI05YWC2cHKuchycNZHzZ5WorL9+RqqeokWVwUPlIqBQB/ThuNvhapbadqqjkF7BDZRQIyE0BEqEljUcqEyvr2THiTCuV76e/1LxzrL41GcJ/UmVAjXrKNXBrMiB9X4kgi1x4zeBzPWfz70Vy');
INSERT INTO `cs_admin_log_data` VALUES (73, 73, '042ab2086iJNMnpp59dzKP49iqT4bKby/HfV7C9iVQw0IHxNs61RUUejjFmrG5/XuscyWaCAsouME8+oTZgLEQInOJNyh1VpPpt0OMMkCRHkACLE7VedCKXxo/gOSvteS3oT55XM5kn2uS05OaYFGrB8oOLjlITydzyZNQXAmcNvkSsyWk1o/++uPFZ8iu0j7Ea6yxOS');
INSERT INTO `cs_admin_log_data` VALUES (74, 74, '3f2b888fF9p88dVc1q7+O7PcGbdqrg/pI2a4pNAzMbQxhMcnZ8Ax/7qPmxbf3/jPOOeE9Elhj7N6OUAeB0TQpgzqLQDhu2LOI13/FvNF6DrZ3bFI9JOS4BoHEBZb7WujB4CHc3gvpzf0XvE/xN3jTFS/B8fMvoi2+Mfqsr7vqsge4/Jv6jsFZXW3PgdzEdmiU15KWQBJ');
INSERT INTO `cs_admin_log_data` VALUES (75, 75, 'a60d65c1xxhQI3fxrgT4/Zq/oUBeaUDfa5Ok3x4mPtasPAaOOmo9c7vqSAOQ7VQ6p2p25AtRrEekD/Ncd/PjB1JlAxwdehj0zz+W8pEFYE0TEVduy4lB1Bli8V037BnJzABCAmgU+vyaiE6I5M2PhDntFFvpgkokMlmEbmhyAJAmoV76jpxprv08NH8Nuj048Ayjvk2iu3RAbATLfTseH3YbrpXtthgINx7h15FTH3NFULDVd1ujU7quYZBrDg');
INSERT INTO `cs_admin_log_data` VALUES (76, 76, 'b3d03685jG9KOxtGSGztoXgD80RRq2TjRfzLBLiFkER98TS+eCG9Vk8y3Bs');
INSERT INTO `cs_admin_log_data` VALUES (77, 77, '5430e909MAvONBLIxYjgWtIprbZvfOo/5qHlw6yU22k9xHGTE+GFhE7AqTc');
INSERT INTO `cs_admin_log_data` VALUES (78, 78, 'bbae3cddaeLPkzOJMReDnBFZZBjQqeWyxWhvRX+yJnnLofEHx9UkBaGoXPo');
INSERT INTO `cs_admin_log_data` VALUES (79, 79, '8b2953d1AB4meEWbjuuVPfjAyEOeksEyw06zicgkcS51Bj6r9UiY9BcJ59Hl3BtEXnfFHDrZLdCAMXu5pbYd25xmGn/PHDRp3iYGjlTAs2hU2c60i0ZMdQiLbnQc8BlUHadYzEhwps8dP9OMc1G7HGx8G1LiH0Xzm06/64mpRV6S');
INSERT INTO `cs_admin_log_data` VALUES (80, 80, '5231d893o8F+11wfgJWAJHwFweDNHNmTMxm24hD33/2jur4UEQxVoKeyGM8ztPBJMgfs4yEsdO8rfToHzf5zxaU08TsRZSX/7GGP7+jupwLuJ3yjoBvUqgNUixhShqpRNtMvz7ziX3Ip3V1GLg58jigsrHUB+5evdQUpi6CfqlBx0bzyw8hkvySGUCGk');
INSERT INTO `cs_admin_log_data` VALUES (81, 81, 'b702df04WlS1aQZOoiSXQHHdxhbKwfr3TRpC28BMoFpJzqFazSPs45MxfyWnUxSxgXihNE6okfpPqSdQ+RHkfN/zG8/yq7/EmpcIHc/r7WsNN+R4gLODEmHmSJXjZPdzYx32ScKYSb/LNMQ3oM6tukBYfs1TrxBNx5sUnfYlMWrIn4VMZ43tJd8UUDFN');
INSERT INTO `cs_admin_log_data` VALUES (82, 82, 'f7c0bff8VsFYC2YIJ8ByUmVdud0viPGz2Xt5zEaFx7IOVLZcZi8rbuQFg/IAljpwH1jedoczh4zFBPlI86f66bKw5zaafk7s6772JaHubluWMNparck3x+cB9E0vsZfcSggxsP5lIxeAHw89qof9YyHfTFHqe+RzxFVoDWoKKwguCEyEiM7kjWkotk0/sURs4N7G5UJ1wQ');
INSERT INTO `cs_admin_log_data` VALUES (83, 83, 'b77d4b3ftCc1AGv2sGnKuLOoodt+0txtmFebnp7nUaP4B07ckRQ2QNV92Ceuu1PeacVRQcmQVHZ+5w2frT/Q01aqM9a/dynL9ya9z1OrsEbR3qOk/q7IO7bQkkQaDTpzqtZJKfV0PqRiG8JmShIiR3rXdyYVdDm4WTfwQmoIlLcKBTeEg+KCHaOYFEa5d9q6F2bO7IQZGw');
INSERT INTO `cs_admin_log_data` VALUES (84, 84, '450cb1aeB/cvTMMnvL+CJSsPQFGhbv5SMqww2h5XVUvtqnuooiHpG5Y6nbpeBTGPt75bfNT2wpAwiIeoo3+uegZGzrWUsfJbG02hL6e5JEHHP+U6j+4puyOm0gpegdcb0fN4C0dfhDuTo+n378GZKkEcOSS0iKYtpgDOfY8d5Anr2Lx6QesZAFHDWLj+Uw');
INSERT INTO `cs_admin_log_data` VALUES (85, 85, '3e1a48eerV2Z8XdhG+NklQ8cWccuYTu0sEdAMG6gh1R/u9oCWGvSH/76hhM');
INSERT INTO `cs_admin_log_data` VALUES (86, 86, 'fad6e394QJv+9s9pCxk8BJug+CZrQTJiayOpVkA2fr3Vqn1sYBn8EJZlImA');
INSERT INTO `cs_admin_log_data` VALUES (87, 87, 'e564af7cVpz0j4KX96M/RwLufLe/ynyibsqmOOUMrqZTw7YV7Kc6r7i+3bk');
INSERT INTO `cs_admin_log_data` VALUES (88, 88, '8d54b958qtJTcVSjCkycoarP4X7CXA+wSpL7ceDPQhdD7cRj3EbDgh6L');
INSERT INTO `cs_admin_log_data` VALUES (89, 89, '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');
INSERT INTO `cs_admin_log_data` VALUES (90, 90, 'aa14b3b3POuCaOsm+z0WSkYrE2By5OL+bb6spZjbjWDjQEozI0AucvUKJZ24srf7MtPK5QubX/XEgYlUVfdo8RzLP/X65UMuwioDpyCnlrmh2XxHiWbtHIh/5mcdDGhT1xlFYZYlGwuZ5/XJhbFm/Nk2m3p2HbFp3muXXrU5cNBZGXzRjKb96g');
INSERT INTO `cs_admin_log_data` VALUES (91, 91, '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');
INSERT INTO `cs_admin_log_data` VALUES (92, 92, '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');
INSERT INTO `cs_admin_log_data` VALUES (93, 93, '4d91cc46m6QQzVugIZa7r9LHIEO6HPuVwHv7O9qhDrQd0ojDzQx9CB/c6u87VliivPSxtYP2E7p/zJ9OcFHQNTTSFevrlZDNG+XiIvv29n3Uovc7jB3W9SvWbftMKNhZMBR2LwU3wMVZUHWjYulecEqb7UjyJdduswvcw0EZ3LoWlz3VDE4yu6bRzkx7HMpWjVsXASghfy8vVcwnaMWtyNnCwFX6ulmkLYiOuCf+jybnCin1WyIupDd6AnD+qsQ9lNP2UGpZ6M4');
INSERT INTO `cs_admin_log_data` VALUES (94, 94, 'f472473cX6U1sfbT/kPNW41OslGx2/z6tFCZn0uRLetzTxAqHVFq1UuecfWhk5HZG/+MpRX+/Y20OQas5YZdC0ureJRzSyL7zXlWlUrOnKM7Rp+eJA5EmDIOJBSTboZbmSvMBss2UZedIE8VfHDzK2h0A/uHwxYbdih6Ijbbdvs0RLG8NK2WOml0yWecwEB+Gd6E4j+WAUKZck5ymi5zuop8XzxdeZwhXomI5hYjT548PF6NPPPZgpCbJFEc/cuDTT4+f0ja+Xk');
INSERT INTO `cs_admin_log_data` VALUES (95, 95, '53c2b6b0Gq8eJ6o2x5GB5QExFFxQZsyGCZB5ACwu5VZERTpK+s8RVCoFz4H1LskFgFICveQujGJlQYzU8WTl7+gOqyVhqmH/IpLCHqsdf+zwlp+EtUcS3yGL/iJXjrw6hJPrxMXx4L1ZmkOuSYllYv35oZ5FJwEyk+EI7ldHLY4j3ig0JiYg7w5iDPTDVskRt1w1kAdKTHk9TdxbavPLWTTJdzrd1BiPttHITpquDMsRvQzH+VzwhHrBxbXRWlGgPE1IEwczUNmiE7IgHHh7Hf4mInby');
INSERT INTO `cs_admin_log_data` VALUES (96, 96, '98fb480atflCY2doXw7qT24GLEB5/2Hmw41bJeF5JQwR3TsBueAYeUwTD26oxPoETuNIgHYk4IdMc2MApRAjZTs1CmPw+SoU+to67jTuxBZAf8ikCd6dtdrRrmpRUGA8koeGsf700dMvX96ESpsefidJNXlMJArtO45jawZEZfFfSQASV9Sy09gfB0iapyn/pD66dXBSICFibOxN0IWmrN4ZAxH1ZLr/eeOqwEouIirbxz4eVD1oAjg1LBU40w91UWbNtxe78gugbMqlOQj2WKmXgkk5');
INSERT INTO `cs_admin_log_data` VALUES (97, 97, '0369868cdEY6bokI3ZafiIp7yRC5Nw3r7OygWNjJzZekPnm0Wa6IUKhcFORqnJrtsbNjLTElR0XSWac/Elh9sX849UOl3nWP4jfXECFfhCyH89OfJWaf7CuYsbPcjt6kW9vqvC700gn8ZKRdsjA80/NjUyUxe7Yor5mBa3Y/QOTSc+ak2Mi3fiOvbyJWX+MzAWLh8vmc3tWAcZpvt0oEJpzd2nymlUbNxc4OLcsFqPFmDnqccVVOMQDbfAJxLDzZWQkJSsr1Qs0voSmLpxH5+YXz98I9263AuJbd90ws+wHn0vfN7XULJHhVrBe3eRYpOKRanHr9E9c0J9SzfGs8nlI');
INSERT INTO `cs_admin_log_data` VALUES (98, 98, '959cb171ZrG7/VXCY02FtBmzA8XgevD92VNMEgE+11+/jrc3iLmmaDYSoTEY+0WNsIfpf07R3VWIROHhobundvc5yI7rGCLPa2BOVIG2QygRSrh2gHZz6QiAtAvxNCIIDe8pyfTSdh6jHfndhiYiZXItf/+7zHwSMSo/yAqWQnSSFhW+GQGYOYVKNqkQJx55Ajh17gO0CBNo/7vK+CRqia//+ldrkDn/bolJC4GZya22hlcI7+Gy8MUFKq5AChcq4aci8h99LkAe4oT5C+aPy07AEVa9c7GN3L21qIHGVoFjksgoo1nPyyzFErQupAZ17TRUvDW/MVmjuX3GN0d2w8jssPI3IhS7LOdQ5qfylOAmhziDaKZXk+baKaeV2UldgC15Pdk/LYcn0jiIcDmZU32d56lpG+bKEAUYf5T3LJ/b+471/a2JEA9gZsegItsGdzHP/ODGXN7waPyCvJwknd6nXh6KUA+h4wbccT3rfHGohJt4NhqR032Br2KLjlsYQcDgBrrJNpPpIlfzkR39Ykz7tLIYR5SbeJPniRX0QYHYLZpnu/9RVSNP/VZmOdAFmk5flY6YnE7JXXUogK3wrZPALX74l2tC3mdlq6MnRIlHd4Z7yuVDA6pHCZUf5pFF0L9YW8QzpPmumxFmEZ504Tziq0S94zNSwtAm/q4CgLw0px4G4Do1Htv9iyCTcda3Z//dUrOlJeNl3coefcADc5GNCSGSR8K9Sk4Atdbj3HSfVYBcgwWWtJ+udBJp9quXWMISmfX3b50IsYbPICum5/0I0u9yacPmCCds/OIItSuPUFO6+/dfdChSuir25/KMjmtBC3MQZM3XqEXkc6owdf+3VmNqzHPuiYXcL4ZvcTaNMBmY5/nuP1KhjQI0JYIKSVwH/bTae1OJimRIqowPymOlJxG1CA9DhObLqsam8Z+lwG5nkaCnPo3MlI++XOKzMJfksOyDIxoyIFfmLr8ytK943kRAoTJhwmDaczDvpAJ3L6AlJR1J6kQa5R8kVPwGniQ6+3bLM9PA5LsNvHKdaRAIMRahAGWnlc97uq+YQLJFW0SiUk9LS2IijXJniNrG6sMF0CgdycWpR78yurNpoAQLNQ0tWWp2hZDhbAfGsw2B9rvxx7n3ZPaGfXiG3lRqgD+s/Fy/oEGBQoIS0x1KVHdvDxn7xEan5hVQp/xrIZ4SAFcq1NOUx9w6QMSczdCD1BFjV2t5/1wFXPxEfywGxvQtWZ3YJBMdeXCekdjyIWsLwfLJw0aqUKJXbHWBON3ZAXbU40TctnfKSAFyFxJaotopE9UjxCkGvPgwSs+sw85pkGVA+hfwX1tpK8+dEhnlVQAkVPHE/sFTGYvIx5bG5eBrxwXHzGAPdyQYLnNzuIZovvzCkazMxo7t7zrCNc0te0R3Hkop+NNY1kBSS60Wy8tsRxXvyOsFa18Nw6Eb13szPdoteLulh+MAaOGCVqZ02cnlnzcaG09vRycAWJMyFswT/5kKfS+p3zYW9fBcvO2peEcBoyKQqVbQkb/MBEnldoKeh4NMBsMAkf60Ht7XVkfxf/wjKx76');
INSERT INTO `cs_admin_log_data` VALUES (99, 99, '64fa3ac5GQ6wRdrcOYVhAtbawx6KMc3CrPYT8SBtfh99zWi6yTea0UzH');
INSERT INTO `cs_admin_log_data` VALUES (100, 100, '29097135PpLsfVzQkK2lRidJrFAneocj+hpGUtk3CgeGspK5SelHSWLs');
INSERT INTO `cs_admin_log_data` VALUES (101, 101, '48c01ca52ovwxjrCH+e9zjPpYWiR12ROZEk3Eu6KDXRloZ6bLj8fWXo0');
INSERT INTO `cs_admin_log_data` VALUES (102, 102, '8b9943e3aXVM8xb9yMW+wn10Jlf4L3sBiMltJtDULj+x7IskBLf2IJCL3I6zW2wqfY0PFFk85i5yXpNWn0Vu/EJ+v6BClF5G/7H9p7wBNkHaImqJu7FuYcS3w29f4CbLh374JmorIWWp89wkFqX6KwnNHNJkvYKoKZYnWDzsuUmd4wOJ+/NvBtCf3qhOnZBVNsooQMlmy3857TiypgDAuG4');
INSERT INTO `cs_admin_log_data` VALUES (103, 103, '8d517a489iq0zns4w37O+uCP+r8ePfEz9yhvYviWojCE1xB9yg6LbR05vJRolNGPTU8oxWqIpmHOE5OGIh+IeGWfpyaBcztD92S78e8+ZPZ4xwK1NDQshe6zsKQTN/oH3snOoHqbym0vGblPfrt8aSBCuj0cBQp8zdfZ7SVXylJc73Px9OXQ9DyGGRy8vM8NT2tBHI0uYv6XvG9xJee23oA');
INSERT INTO `cs_admin_log_data` VALUES (104, 104, 'e121a799Wr17po5nvq/+B3TU0vzHgCXA7K84TP86W3oviOMv9QggRYpxdsLFtmJH+ZPZfmXNwCbuNx4OtekJSmNQkeqC4ATv5afuvb7aA5U+3JQf/6cBjV9jDpqs/k3aFxVASf4M5r4zHu6xLMfRlS+Z/YajSsg7HdiDzyy6BCbRsCh34qntdbfGtbU+kjQQ8IW1SQsSVLBtQ8eEamVbHtaG9y9ZWQlEIE5iGns');
INSERT INTO `cs_admin_log_data` VALUES (105, 105, '67d70b9dWl1ZPuht8UrsUEsESCVPQNoRIL5jVWbi0JBpyFwLjnvVcP1fcmrnZScju0cPM2/qZ342RvDU2f1FXJBQ1OMkYWZegEr2HNsBIwq6ZwQN7kPfmNX0wDTh0ZcgDYMmirEiviFoYI+2Y7NdqTg1ByZ0anjx1XXY4nQT5d2IR+b8E+qMYbv6+mfh/Ib1rGp5YG7F4n5+8W/tL9QAx2PrRu0f9WzUXQBsDvhVAulHWaluMHIKfFbjVLzhwk5kmmpKAzPuYZ/5OMWx+j69F1SF/cTgRvDe4xDZ5qYc8JiPyTZo6Yqg3Z5vay9J85VkS2Sl6X1K+wL+aQPA4fzOJ61pl5ewUqs6fgCDvPLMWgZ+TjC7JjbMgs6Om9p8nCD/xm/qXehxzr+sCTJWn38wDPmIeH0bQ9iAV6WnbnMCGwhIP3AG+DIn1ODjCHSuIRvfiYjvLdC/AhWJX3PSqI4X+iLCsuylgwVu/Kw+fsyD8y6BYXp0lChikUXJBBW8gG27uqBaSAoXsARnAn4SIdadjzmwB09CG75KTjVLezC1QUV1sXk3PGOO45F7pdfi/YTNBhdm3bX+VEho4nMV/tTH1S5J8t4zolhCZFt5UEh06uePb5ymeKYd72UkbKzwjUyJ2CRrqonknM3ZRZD9kO+qd6Ll1JLVv98rQplN3CTqHyaIbCWQMI7Onn+WehAWeMkug69nStAsmaqu61eDk+xiRDlhi5ynOZzsWo36R3SgpqIkom2skXeDaJn6AWn5BVDxBy2gmsiom/Rx3g1x+GB4yy1jafhyKPb//bmUdexKG+wcG7+JshmCxTqlqUuzYMMvhR/s6Sc2olPojc9/S4RUvpVByKXauO0lCXFu5+obD7tvq1ib1gkHiZvLir+6kW9JGNU2UKlJru5i7zQXgD5GcBnTKRi4MTQs7H7eBCobQcFDzbAegaAVHfJdX+jf3oT5ahNGSXXR9fUTv+stDin+Sb9+ncr29x1o4ArtvvjHuRqDLcWOC7Zb6pU9');
INSERT INTO `cs_admin_log_data` VALUES (106, 106, '67a4b9e0ggjbdOceocBo07Q+L1YEowtWlW4DGwnY5MncrLV6ckq0OCFKiKPMTLHVKvrXhwfprXLkcWrZoU3cdrr0ik7bW5i9JZfEtgbWlwyd+2AyG78q17xbsW7m8GsL+2MNUad15W7Og0tfTSckHqtwSxswOoDW3+dCdfovU0zdWQFxfOmSIiJiFyfw5RoM3VIWE+2yXjwv7y5UgsbSSbjQuV3lXtMdWQ7TE88i2r6NB9YMliKeXfiypiWEJIzSsdZTD3JIZpDQnhBgfqBcc0BNiqgcwnTYte+XdKwOyS3mFzld25x2lguBr01Ge6F/sIyvK9uVNyisDbURS2YA4m1whxaYQIklvClABbzjbckJljln43BaZ+NXH0lkomcOfrBY3KRvXaR/0g+WwfbU7Kr8VUSij02zg2ZNmivtRCj6lG4J7uNWmIDV392qlxs7faNOK1zeywnejaokVhwUA1Bmeu+zO8Y+UT1+pFO/xgzS6CTetTeQ+yUpLQpBuz2i2VyymV+QHPNk6oncPZPxVmX7Yb/iCuHKuWGa6bmRtZQTn6pRgZaUtX3dhsUZInpIlgE+WKDoKkJnjb5lExgU0Fo6omIgVpWUyO/aHqvxXTJ1mAmCdBm322QVFZj8kkrzsgk4ogEfXK4rkLG1fIWmBBCL4S4bpXAXIdyfby1kBIM9XXwdJ7Cdq01n6BDOx0I64lPXRjpuR+ju+Ep2QyQ7G0eqx3BmfTOQTs45p9fq4G7l+dCr/t78hFUAeILHsbOTRgcbTzzIRoo8vLueyeZ7rfX/KEr4XworYxFyfAkXDZTSQHXxSW+VkEbRkDjBME5E6+8pNHDetY8ch30agDWTA7CKyP3bKyXhxq0N3y68Mycule9RNK18EggC64kpGjP6aVCXegbRaByiNrzrtk3zzet3wUtkZfiNsd+yzfujvkW4WChjyDuzLQuWBDsgbgSB92vC2ohzZyqVohk7wgz07VUNxTBAUQIZO6hWDY8u2qfnM/oPVs+qePXN');
INSERT INTO `cs_admin_log_data` VALUES (107, 107, 'a62c6875lmT6O1FU/4xNogEhiyyMmfYKOLfZpAJ4gupDL4pCMvRTd4cNcqbwofWLIhDVsqXoXhOwySs7dnVhX5utBxL4BcIX/JL295Qn7lpBm6UWQhnoFoL+1Bp0APlznXtZrnriHJjXfmIEBCqeQjmakR3L20IbVgnrZ1u63toxHXSZ7PaIP4sdVXtcWTHkbgSAixzDe5Mqvbnwka3XuWs82O3K71eyoSPQRYfkb9IVUenaAgyezNNtNs0d0xiGyZK4TA/HIR/fu0QGvq2hoveX98TTFhZ0heuV6RNTIAj370gzuEzhJTGE+8oD32ovCDkwBeiEb4LqrU8nhh9ynczljJBr6DGSDn6uGYhSmbUHcdQ3KBiFszt2zgZE+6Mf8TXHV+h/my3ADerAQjwr8NxNCcJuwYoKiF9c+AZBH7yuE+LVjV0siksHiOqRFvyETm7y7IrQ4IU4cLCXT972iVfTZrm05b19RvyAVScyav/lv7Z3Nz3mV8Q2cPg7pfyMW3XzgUHqlIb6xwLWUo5GLFxBiE2OYmIxrAKLWqTUwXqoHEeqHa3WYE+Ebm1TzHgE/6vyH4pJU9vQf3HWtndVp6F/ROLXT3FmpHIgIuFigN5MbjTCyRnA7I4rcLPRdVyiClN+j5ChLvw/iR7CDwOO6p6GOMMYwBv9SgcL9jjXNdvb+d8L+IVhSW9ownkSJuH2ard1uOyDTQg3ng/OGPr6B1+nNvbkw64zQesvg/ig4BSdcsT7ZRB/E9+eLsmRJxXNDfwNFqGlh71OCUFOEqH3C8IRQYKy8wqw7NfpY0VeqO6sE7vTMizP7r5KR0gDDDzpxm2CtSzofqirEHn/ThydXcCuBHRCssBR0JbRe52Kqv/YwmONHbVL4WAK7s/5RZT3n94qyPvjQEzwo6CXhG2nmjpaGpEWpQZjUgPR/Nzt3hXneZOAOCBCvYTghIz4GYht5BEvE1l5YYGkXmGJe4tSbTxbmnuTHnnGMDeAxgdm7NiIM5f0u/J9Wgi0');
INSERT INTO `cs_admin_log_data` VALUES (108, 108, '7c1cb916LP5IPmRYxW/fFHiDWjw9UQPwuOQGcxKsCLDQBycda9XHmjWdh9IDyMEQI/rLwoCWBxf5pRKlGjEZVLmQPWEotP9oGzj5qvtaAnmMamuLhmQG6f1j08dQpBhjTHPRYffRWNRdf78MGrA4W3+X6jEt29HfMFTXJzKntSAt881h1ZPAGKCCNlfi30XZiFjDLGWqeaXsfIP1Cer9b/NblYW8XsGqmDHn3Ch0gYcLTt4765JwEeKZSZGLjsRSvqrVVc6zJusSwVTzNZm0t4kJMoV/hCLlmXZwkJ5VJIc23fGHOqu4WEm/d7XmXFRbsrE6gsOCNG1fLKD6t+slVGIzmDPzEcRxkKYvkX3G5ooNdJZbWqvfjPTG/W7usSHeOAMcKX11iYUpUGioCTj9HethZbT94bAmP8qnx+D+VzBi24i5kdxAfw+GITR8AKzJ4F606ZkbI/h6kg8pZ1Hkef/vbsqxHuVFSiOv/Wyli2PWMcUIDmcsr9B+Tcu3qjAYcH9niWHRD+PERjTuqF/oajsvi73Gz6vN0Dt6wMHltOfU0Bc5K1xxibv2nf1l0QMFPdnfuBzTFNO8anxx4NtA+Let3i1Ulyx0TjxS+qZqnnUNya5gn+zK2MBLUGJkgJRscOk1hdl98sFpsMxGPMn/C19iaSig+AgYxEr3gqP8r5B2zIUEGPn1STfBaz34uJekEubNVZaHhNYrrU3UKkvEE71EmV/oPxjlJf5MJVgAAJu+XjJqfguFwn4KkQj2SdUC5ntUbIkHPGxoxE3ZQ2H66uWzTexOA6qXef8IaXrFz1+wK7C7sRO1GGQYckelPnlmrZwjme6Lh/DlEJAv1toxjzwKsNwbk8MDAhm29lAPX9AGmcXrScRzajvLbF/Xa4r6AakOgS+1EhmX8xK/5/KJ9nYYaAZAFoiBFKYVtRu99grZNnkNed55SfZs2TdSUQqLIhnUOlJbzznlBHKeLYyolXpEC+ISldTt6u3twMUS830iB1rKKEZgp7Bm');
INSERT INTO `cs_admin_log_data` VALUES (109, 109, '94d525bbepkH7QqMTQL7v69J57gH4140sk857q20/wjwDa1ZYCTUmmlv7fRqgwqBG7kIV7QKqKuSS/neSsos403FG8mzWD5KUdQY3Ve+a2tNuOOMNKa23spsVY2bGFbpO55YaGIOurltNDNw6ytfM2adUAsFVlSq7F+khfaKkGFwII8wz2+in2i7vH1dkCDsrjwDy2a8RGcIvd9cFbsF7iQKMOXwNe8v9xrgs4Q+uWVF0Q7eXao6p7ergofgzv/y8mFVENbN5WTXnAJ6YAkJwsHuQ2QZHQqPRQG46PwhF8RU/VPiMzqaNpHA2vST6Pyi8T5Rt4ftlbM683uRoYHHU478VV8meNhAaAfR8oIQr5aCSaV6CRiswoSzzU/jGY3aaN01AcSrSqRdIMl9HvgBMvSjSxUxD+yOmgtUoaowr3bh3qTHNpZByhoGif1yVzwewG9LQ2R32Rd1LbT4CiAdd7U+Eswf+vAkFaMFpIfRH4q9YkZDNNomHCsISETdFg+1cZVF1RUqiQyxnzi5lU2WDLqw9j2oa2deZc2EADnh7BH0vZOVg6xt5sUccbwku1theZ24l7jTdau39eceRw2VQioaSYtyv5Z+2w/EsaLZjDVT4uAN4xbbAux4Gyx3fNGv4HTi8/tE03HuGq8jqm6aYZ/Q2sRDy+MfIRfK6MRG0jZu6Znre73V393/B3AjMY4mOij9rg3eewkMicFvknIIgjKQcE/gD1acJEK4U4yUStX+x80aYaTHNQXTfpIsMLVx/uwaB6zSOIdXZAlIfgdMLr3YN5B4pAGz5Ad3AZpm0QhnR2wmxQ2rZYEH6R3yDWzRfh14uB7kJxp94P540hkGVrwNHCSR3+e+w8jLaOYPDBGfFfIu6f6H6Qx8r1ve2c83hwekmwkW4WG8JA2/vJEjyfOFdc/AQP4JwJlyyDtVgjstGGwKalxVqzPfntcA6fbVJeWbmovJOC2ae1SOrgyL+dK7SDV7M/ornf+yFrGnpFDMYyyx75taOz09ELXewqwZRgo9');
INSERT INTO `cs_admin_log_data` VALUES (110, 110, '7c865d0c8Gk0hgsLcP2A+3U2n7tgLF3bHujRpSdHPW1y5UOCvXjxRFfc7MkZSU23O8L0Yb2v0sPf+XtC/CnMU9z57qBC+FeZo9rE0fLr/nDW4UNCZQD6Z6MN7pSBv5QpmSutuQZsq05BtEAJzL9CEQDRY4uyxpBNzb8xDELS6G6iwsr7or5syKL/+mjHWmfPguWv9JbFGTfPaU8khwGLHC0EPCgFHPwekr7eOWTa7OikVbOuic/WkB4CLDdl3ukHehYkDHp7t/k6DBOFarnMaxBhoZnovXGI8vbBd3Ogox6hWnm39DBcZ7KOjAEbzpe4qUOxw98pFRJuWdTRTl4dZ5DC3AZpnhd80iTmhm5L86j6x1ObHfJpqH0IrZTTR8nhsyXDxM+6YQUDxeYuacUDNE554wcuCj0kLi8cockIHs65mx/vFIA5GhDo8QKtTKfgZLzynwYp+X6Mjn8UESXwQbS0605TKRUKEvwkb0100dd/Nvep04WIgWIuHqBQ2hlI3XpR9pYheLWJ+SwCJwuxYDgYLCPnCen29eVba1LnRwgaTzkb6EcB6ngNGFheYpumvU0bCFH1VEdi2TKLckIJmI1sBVoeK44ypMBUUb6AHPikiBYlXOEbVHn1/05CC1r1ttGLDeQQeHbqqKhrYFd1wPPJ8OHfgRfFL3KNOHC4KvAmLNrdczG/QqROJBoGLJpREEDo03aue5AdNzl3qXCShFeuUGuFNR0adVq5Vfci9ohKi5Hu2rBxcjdsiaYloBkzNwEaMioh/UCJ8RslPaWafgxoDbcPqcZgMxdt/gj7QLXDzRDHo3SfAy55nMa883SbiHwdCgm3RnRdgwJSM3Tdm59ZyPEDsOgjU5ccQ209WCkXMUqGb0xqQ/uXGdUGCCfCwoWcTwvnDzkvS1Ckk6qaFpxDDgKOc25QiSClgBxzf1FyLn2JBL9LsvMUs/DXYFdZeh0dREbz4/S30qWG8jyPUOs9heGHPihAuQZt695h3LFPa0ZbMlAs0cgeosX0xHq+W9ot');
INSERT INTO `cs_admin_log_data` VALUES (111, 111, 'df127796MsWw24sh5cggE5GqmtddT3MG1oz6q0yZGAU64Rr6TPlcedMujf6b4M2jT/3TlzUHIZ2EaWb06KGRdNpXkGcBkZkkJytzWZp4SAVg+TTMHqLHOTFxPpsPkZyG+42p/gdl/cqAGEcafhTp0GWOLP99rNSh+OtSv1d6PpQLPDQqWMxy7s10qxmwh+rKOhJuZ9Hed0QOVmpgjOVjn+k04liTqwdNT0VKkeAhqa0k8dUWfBI7Xuz+H+bJCXIjzmaKP2n+Z2R+3guqxrP8MIRbNfZ84FvzS8tvggjYmRecu4l7G41kYIOmbpZ7cJFqEwmHv510wx4aym/sX5+l7Pjskj2EWsiVujl4B5n5IJx2ut9w1rZJbuXqmrVA7ZstGxiuOUOq9fL6XnwrHO8xlZ1jc6YUlWj39tX8NDbWm97mc6C2N6hREYpwNiWtwre4i//qUDSlh19aBy+l8/dpGWulNpQakI6KCmf5w1HD2HJcNjIxi6PhEc2HdVgJ3JirhxWQvVFrjIrm71cm17Pz4diqT1RtnjjndRVrgYpWeQkyJNEslAZHSpJqjS7z2yBil92+jniyO9nue1iu2o4OkCz7oDGP6idUrsq7v05bhQQqSU+PuWlfnagep/1W2ryDVZ/oPQXycRf6rKQmw4T/4qmnxqAXak1QTmiN4VK9Mc4z5ZI/E3rmarC4IiLuGFdc3JL6KUY3DRmFviIwQtdnaw1WA7EsqujOruJTvcjUZxqqCiWltryIk0yBNJeyO1JALodpPFE');
INSERT INTO `cs_admin_log_data` VALUES (112, 112, 'ad0bb6361mIfLN1MlMhf9mWR/iRv+nj9vLBSw7d5QoJis5Ps2NugnOuAS5HclTcClHuy0MlKzOBGSNHbMYCBLl1ypwRbiVCR60AzqNFjkNabUyrkqZFys53wd1Ll+PW1V64BO+9UonOAB71fo8pmLnbjktBOXQtCJ8cnv7Kzsb3tMtFXTAmfWN89W2TYtA7fk7vqz9xBdoq4w+yEnbYqytBvsDX3hPiaWfIybeQAFxv1IC/TKE5ALqOan/7kWVsrmMPeOQrigS9BVdstMoiWd4eJDY88LoeRh0Cio0d802LEbecpglwXYeZdZ5O+wvztklaAgm/c3KvOuXKbtpF9zQLKXhAJ+v5cqRQCBO/eMgGJgG0MhoMGpc1Z/++eFOvm7xV1Tm/mz5+EWAyhC5comnPjHhj3DJAVlr6Fn5lm5sbU3HDiRhKnNSvo7hmr6Se9zNI+7hTM11k9SB1Yk76xPQ0sq+/QrEyxrXH4XBkPMWxTFmuGS9jssa+c7Wo66t4sM7a3XihznO9MvOm89i3/yvJvysyWoY0X2zuz0CDlCzBr/wDU/4EbVr55u5zGvYRfGIlrXUgb1F6jWO+lWpBmNtDCyg4RtqVQkmkZPjnmyOFuEuzSj1zqgHeGpenlSp23+tbFY7j/avlaG9/fZYDGWZ74BLyRaIZyhCY7cbhjxgMXrkW907yWNDr1Oa59WftcmuXoYR1zw5zClh0XS14HWiX+LrwzDpv43prroken8k2rV7B4zvnFSeYtLedLNXSn7XQb/vo');
INSERT INTO `cs_admin_log_data` VALUES (113, 113, 'ac4ec761hIJockjlhKXp7921/R5EkYmfqGz8N8pURnu9dLX7CgFqGKS4hPxULgnuXHV9S6QQdOsMN6VmpDe+cvFpezDe6jFxHGVZolDoOE9Tih6V4KFzuakZwqGMDpZaokbRdiPSYieEYA5r+HxMNUBx4XuFW/3mwr4qlFRAsNgK/Pq3hhYhtVTW6KR+puLhcN24yksWcAMjTL8D8jwrj03f+DXP+K3Tda4rXz6seDvXtwKzcV236E6yqQfBpKodUt/0aBMjHQc7sZ6q+vdJHbbTRO/jrJ1xv4vSzmHTxYgcRyMgh3YiPlsfTkdU+04REDnO9fDeXPzRUZvGhqwnzDWi8bnHEfminwN/4jlEYK8xNNhUh1IxK61WAEKKAV2VBdOh/sbVvCIGR6iiiCX30hgjpEnLe66Sm5U0nVKdye+NoNRfclsx5T81H7eTpNeYmUXUZO+KkqzaboYwsQ0wZP09hZIm97ND9bM/iZywt4RgOaOpF8t0GwUZVZz033aG4KcmvdHAO3/DIACA424wFrQTAKJx4AYtoqmNyampciND9HCug1mIEMFd3X2Ch30423gI/cvq38UddePZYTHjYtHPxBDVLiJhEC6n5A5WjR9bS1pqqqqnUaEpzfm7w6gbzQ4F64m34CG6j6//kNQSjPKrQlPPOtnwpzN0H84vaZ82eZ6QXqda2pbZsYPBJCU3hC3PTWU7stQzptuJq9k7ijzXXl5NX7k6FMj4k1qlTRGp5fEMhRzITVhotkHyZylTA/1aNg4');
INSERT INTO `cs_admin_log_data` VALUES (114, 114, 'e73bd8cfgxsxsQ4VK88tx09Vg3Kv9NouPdKEtYfByG5pdt8CBclD9OCOf7rFqxbuj74shezJ62vkKvTGAjd6yRiw3E8bWnwYGGbSD/S5JDUiHqaKyTQRuFwnC1iqG5E4FXXD0MU11itErhTun4tM9zh55qCvccpS1TCYpEvDAitV/L0XtGf2LwYMxb66aS3O5VXWiIWHIh004i/dmFZDDCRS6Gtnp0wxFhZa1GI9BaTEaEFoBFmP3aq6p7xAuNfPbIenUx1wq+LvV/iKh7gnGkM00Fi0BC77gmczRu4RJIBEfCtZ8TBFxCki0tmLtKVPBmNgigFMBhte4Wwa3g2ti57Bg1Q/qiSkcnkPGjq4M/7d/ROrE8qzgPay5jqGIYDS3jEN4wM2wsOTmlybA0OZVsqkr6DRzlcIkUj1EYBdfO2zMk8nZBVXRcVUu37MiXaHh7PfmjKueb+edK9yknP0CX7b07KGuTmuAnvGxPsdP4xadHmDhAweoMpuJgzxvtbX609n9fG0oJ3ro3UdqK8XcbjnhnY26YqvKMj64/Rw0f9Ue0J5zkxl1Zzscig1SZK0uSGY7gDSJ2/W4xSLMDamowD2/Kqb8+MCFmee188xRKPjNlUFoB17mpG1Dez7rpOsU3Zx/BEZ5Pf5uNUSltHEHCqnw+/pqjt3NA+g6Utdj6lRBRipHvM8/5ACxPxc7IZgS3J3I/NlsklAjwu7XyxKBkY8KzSHUb2v1/HLXPhVc7TXlr/yV9dLZoQx4fzVzxCUYu3hzBs');
INSERT INTO `cs_admin_log_data` VALUES (115, 115, '4e851ed7HefZzKlG8+knm6uMNJlWP0H+OmXiQF5Rgx6qbgYyVjDF1mneqZdmFuaCdDNi86OdDY9jF8mb3HqU4Xx4lWWXKSKvnnJxF0hmQn8zhkuocKCvikRI01G1gMVPgI1WoceCubym+BddbRaIdQCTvXu3qEvzxpx0RkHn9XWIMjUEZmO5fZUxMxR+YMbPVJE917oTmcMpG35S+qJTaV3Rti0QqVlvaRfQA/A+dgnGjyfnEZZbKdmNTq6S81iMaWRg4DyAFdSB6uNNifkbZGX9vz3eUoG2DRTC3mWLa2tKYhjeUtsSEUcrnu4BepqfQBTWSMRKemje2nIPe4Bq3heoxEV+ht8BtarUYwnD07vUC89iIdz4+qQUTL/opB3yeoBId49+q0xadEnBdpt3u9QlAZuCQrwm/zsLuf3l4hvv0CJAzu9kd2E1g3+TbHAJmEALJInSEdNOSvWQAjfm+9Pl/yGA0AELsXc4ca5kzOVoNVQF44nDkE1a1YiKKc7nWc0WjOxIVsd+jVb2LnHNXwf8UYL35vAKrvkDoVuHH1Wr4OTTaWi7dKUHghh0y56XbQsmL0pKEdePmZpbWxQc7U06XQXcFvCjI4MQZv+J+6Fe29L0Df+pNXgOpAOQoof3BvrzvsG3wi7pq1ouXSJ53I2hNFg9jOeJHhjPW8Vf0nvUAcgIWYPpti/sYFpc8iPIoqyXyvcXZH54B+Nm4zfs1DsAw0/OIUlaFT9uVfSBo7pTjD4/y8mgKM/Hn4qmf1mRWM1O++4');
INSERT INTO `cs_admin_log_data` VALUES (116, 116, 'd6e51cee9P/5K6cb6xCD/iqNB5qoksFm3gVlUB0XkgAxRq2Zz+Z+mlytsqRohcLDXz7TNMZLDD4BzLNN');
INSERT INTO `cs_admin_log_data` VALUES (117, 117, 'b1ba3503PB/9DeErsTUTbUZgEozBfLuywQcMO2fAKFQU3WC/ILDsJxQmbTCmT532F/NSDmAFGA');
INSERT INTO `cs_admin_log_data` VALUES (118, 118, 'f1dc694a1+SAGjsBrf6ZYwP/MZyrajzAEXwXbHWsfSDJi/9EjOSQ3X60Pmbk');
INSERT INTO `cs_admin_log_data` VALUES (119, 119, 'a0362799QepKwP950c5nT21ZhR/xBkKmI3WCT7bKtnK890ucMkR24jkGXmvmVRHjShhAxo+iAmsVQFDQBVTUOdkiIsTxPgicYTErZBIzGmRhlJb+e9PGpvBLR4Dn62u4SG6C0502ktICFxsxm3Zp1o1aw0A2rEG6tpDGYf2ACh9iEsgWWM5eX9sxH2CaiYFmK7iQCCx9VSyuOCiq2Y/YMloE1mDpGjBuYD1whnsxQEiHY0XZTdVotXg5dyHRq/RefWdQft6Uf8tROU44epEt4O5Vti1GDwwi2MgG541cei5rUYNz9ZRY5Rlan+TA4kjX2ALcCanPgGmGeg4WBatmq7JByPZvJo8SAxS/kl14nwwynfCGOThQUn3+PZy1BXvZYodyoLkM88DG/NtbjVY1m7wqpmNQQMLKfBR8geC4E+oqlBZS7wkcN6DWhzprNyWYIEvmTCY9i5uX+3pF0XK5cOtnbs9H3+/ldCr/p/+0RDgZu0A1Hk1kmecSVgeDb17X+QxP4r9chhOHRD879PqFaE2+LqwuJKR98IsT+qokcNKr6f0grYZ28EAQVUqB9tT121I6gCLo3Mq7AnyAXC2y1JJSynufWBnTFG21IVbBg0/OdfqD+xcXAi3VtK2owSQhz+39vvxETtCHonQY9UjpmUtHMPnciRM9cwaAw+KgUOTuSLbMqF4dJE1RODlRv19n9FBC/6xd6bE2za0u+fyNJUaSMCsiK3diEYEkevTHdR+e1Ow/57h9LRxBuRjxpOq7gTHSQkwH0HPvodPLLFbC68CWk8EK5kK+emRZz2INYa1R9S7p0tM/hvYTz0o6joTt0uq9OrTBOXLrICLsC4pCFot9KDHyZVURUSIxVMYTVWyQvFFiE9gXwAe9vHvzKOMBbnHFvcB7VqtD/8MuJe+MLFmazPJPyglAoDE0tkefGin8GcSsNphIs7AaM+2oo0OhV0jks0YzgP79RJkiumwYxdLDVUsuR2u/W372ihJ6Hn2RSf9I3UOs7gNYvw2nsaAtTRWp8mU0TWsQ2hto4AmnPRfB1tJ0e4rGYuJS0r99u+Z25LxEGjQIDS5YWzkMdP1Y1b9XxsnJSR5m4ylBUxBOfFMuktnY9e7AmMucrasO02BTc+0cTYu+My8eXg39EokE9ZzFxACwaniK8FOrk5/sAFamvKXKl5V9pi93fbbL/Qcp1fj1uv/VpnU5b5mdVcCThbMOV3mnolZu5uOTKrGQe+peSrvJJK8Qg5Q1qu91NRH/lNgF/YsKvo1huI8G4EIL+sSiufQ0TgwsycC48r6QDD/93StBZAWLua3n32MnDVJLlFFVkNyX+9z2ahB2fTlQhnTJmS6DOup7u1hyPzTahmR3sbsV6gr57soZddX5452Gs2J5O8mfP2pOFT1elgFL3szz40qUs+qDsiI4zmvoi7ZK8GAOTupCRdAmthQA4fsdpF/o4W3A');
INSERT INTO `cs_admin_log_data` VALUES (120, 120, '0accac1bhSb4y9I+6Y7UFaoguBIDDsgqpkMIMF+49Ex2fJlk4+yMug+zyQFgHWHtuICann8s59xU8E58lQCrjuQiIrwysEuv4Rmln9dK+FulGZ1fkt8Sc7RVA2klJ7k593p+Gbrq8WiVfufF4WLvI+lZ3PJjnEi+JAQtpkiTTQF/eMsAmZgJTyFccmq3QN7FXjLSSKYNLB3kDkJXa8bS5/wL9Krbp2bYSOPdtPICy8i113+3XDKj+8DIBJgXHlcAyuRLtk4EF86x0RB0Ql+GmUQHq5WZN5ClXLLPuNUbCdHeCNrCzGZ1gEYp7DouWLltGeuGk3/6eiSREEUZSmKxcyCrv2gFWRk36PBHmO94eF/0lRZTeSGV4mfEVnMSPj3G6f2jTEH0I/PeWuwkGcw+f4tYsIu34w4VNw0HFd51PHFcIUOg3cQ5jGDdytRz6ihEE2AmfsSMcwgVzkMbH/JAtlNoUSnGvOJIcUjGWwsKjx/JL4W0RCgXeD4NOazRcz8cKBQgNxgfa/fIjqSgHES0gLpQmE9159y6oeVjqUFKPrYb8S3Kqyr+Nk/mGfFZrSOlObZecnmv/+C4nT8V4YBsBH/5sGZ7R+jMBDBjyAzstaKRgBjj38W9wvSHL51g/75UzSQkR6sk6LWHzx2tdPwksx46VvE0vEGDzMT98Q0+ECJPsTkwCspRo8STI8ZOHm4vVX5sJGSdAjAxwkeMReAekiyn6VzD0xY2nJN8Eqn19czooDyvuwTk0u7RWkg9snS/5ThS7xaYteg5BTCNhkdT16eYPZYJIYg03fVzRUnqrmHup8IvgMOPcgh7s1fHC6Dx2/3v/2p/HNUK0Mfn7ui1TWi82KBsIEi+jPFzo9w3AOy5RDRxyHx9fo7eFqUSh5z45UWaZ9i24v5lWtz8qnQ3RYeKjcBKXguifE655Yy6YmzjjhOfAZPMx1z1XARWaP3aMzfELo/rzAooba/vhSIvahsBaAAWnz6lhYeyreETiKOneFHMSzDr6p4d3WGB');
INSERT INTO `cs_admin_log_data` VALUES (121, 121, '7835a262MDarZcpLBrWnn2igKzEpHWD8yro0EDp3gujHbT15kmoinOq3e+e/JVd0sV6UWuYnqcSfnVBHNvQR8cYOj6UBUnnwngFKFen89os1mJ5T9Q8hLaxLw5T+2ZPhpF0ZNqWZd/HB3vC7ztNDCVtKfY4mQXmeiHmTLxhOhGQSjyohH9uoJuHLXlsMbDJuU91koHnrexat5uXtCKmZ2n0LHh/f3kvNF7hRzOox4jm/470YVidOaMzVYXU6pO1BkOmo4eZSkqFNJxcAq4MZrluLEFsIdilsD9jnbmfiCFK0xi/hIEoq1S+LRjRGtvQtAzi0WVYChbRdUTAMNuOQ6Kgwssj0/LnLPwdmz6DiRJkW9w0QOr6rt4Vj3uqMcGblsxXp0H3wQOpBHkvYEG6+KjTniP5Wpx1uFyloLRlc8Ty4x83Fugvyyz6QwzV3JTfZvTJ640wZVTxlOdVa4ndLtyhTY7+B+CKfHqYl3s2re75nUC+cldtXS0PKpDn4QsCaM0dNP/xWCVnPukaAwkGl+Q6LjEJSt69T7XATLDfnME2jQ+S5lwSvyLaWlAFlYe0bLMy/3IAC6moX1Dikp3zt+7BD1pHKi+s7XApyaBiDLxLYSVgOC/JPu2Imag3brtj9juheYgEFPYpMFGlQcn6Pj/LHPpSfRs7YrQ7uqIC17HEv8+YC3DqWEZj0Th6Vhr6lm/brJMsHncFE4zgySSgN+AfVhisMGMtWUa1IgZzyH8BoOxeQdkrONTeyPHG/oh67kIXgJk92QGU');
INSERT INTO `cs_admin_log_data` VALUES (122, 122, 'c08b4e8dMnzngFtZ4A8qSo7dK8rQELAUAk2yCKUPnEhcJZWIsddW357BGehOhfzWRm2n8DWbRGkvkAeTB7LKzJ/XZ1YSIIbXY1YtlYk9Rsg+PDCHTW+WSFiVcnJyACxyCXEpK5loFMWakg3QN9cpVtra/5NvwIX60/en3awO0swXje0ICy+oesIOv+cGy0GW1nrri1TGOTWjdT3OrJffZnKP+yCdSnCtf8xG//J4Ckj7KmRtgzWFIPl/Y8L0BzrS+oijze3PZe8CG4+SpMZnBDmtgSgRIEcaSSKg09TDBfUS4xyO8NQICsjqTHbp1AgGoAInWTNoLopXUefDxE1RKWQabz6QiMc67USjbL/tysefwQ1j8rCy2oWgKe9Fustr');
INSERT INTO `cs_admin_log_data` VALUES (123, 123, 'e2db8f09pcTGt8yjIYiO1r2xMcV4wl2gVmjJPFQ/yYxQoILXQ95ZLhpWeLwVZWxrzM7S2wqOEUvQ6TnLXFGkK+TatQSaWaa9RH+93NhhzoczyYJRIxYlRO+qMJBsFPlv/MCdzvt1XCPDOfmqX6673jM6Dgm5WF4ZI+2I2zwddkc1tQbUxMTbnn59ltXmmE4sbu8YECLZ/LO95/Nii9ix89bACMvfEzIc5nMcDhQ/AZnMQQhTRdcqKFTgPVS9ZKttEcYO3YYmi8Cag2r0JAKPdhQGjDt4E16Vwj3CbU8S2SkuT1J0RQaf1leZMmA7NXzmtq0J3lGCVStwDZ5t1FJtRf3KvmDvYoBtrN7aaw0GhcIrt6bBcLST');
INSERT INTO `cs_admin_log_data` VALUES (124, 124, '0e771102VvKYOqNWvOC353h9MaHg/VVSg7+pyF/vvRdfXR6+4F4QsvxbBkxtgp48fg8DYh78mSAUiT8szErmTaCDmbAvfu5z4Suk/kIUEvZltnJZ3w5tVW64GgmienUYiQQs9E/DV4W68sWDu3/fX8GSN7lB2ZmJJ08RW4RBJmEhp0Bl1u3NrMm7eJ1KlNO9JwKxR+BUOiV3Q501S/947vpt/T9OvoeyZJgU05IFODL9LlPTkW9OH8BiVbSdIsL5A3jsNFUlFq2zZ09kaMMMED3QWdjAP7fkqbi/RGPkhTwIezsRIXC9D0K+koUumPp0TDi2z7o38Ed2pr8eUhbYOnXHqpCHbSKwNzgdKd0TLN7crgS5');
INSERT INTO `cs_admin_log_data` VALUES (125, 125, 'd53b945ezzlFlOFsITBQRhqxiMRFa8b2bjtnBXUHEnXBvU24LEQtKawDvc5AM6sgoAMxU2cvrO/+isXRzf2htDkSdpKwNq/6aso/bBIivwcoMahk1geyrRV2wo27zkumDCeUEyjjXVF+B04XD/Nmpn75W8Wa8OQr8lnVK2/VsBXFPQqCC8qGDYeCUlZJ8jjFirtxcte38E49B2BVqqewvv2gKKj6JuVxzipMHDD+J1/eM3YqXkmtdVdDLOBUqyAGsJAHvaghMMttz3pdCXZML8ykxeg4EmVxOdw1xcN2y5x7SqDf');
INSERT INTO `cs_admin_log_data` VALUES (126, 126, 'be32e06eIvne4VeFPJsz6J3A20rO5L2jTFlc/ZkD5TW5xutm35yM5keZygO5RTMytfnpLwiartysS0InGdDOciYrVh6A5zuLVSLtE48VM3iuUdl8fJOzUq6j1fDQF4BeyLHTX7+B8fVal27n8kWFahYJPYts4ua4J0+ATkDCUMuez6gDGlYyI522CFe66GrsGOKK3VbIj7mjYu03Za5v5E33TghoZ/7jrc1UCloT1USLC4NGQzc6cHkiTAk8CvhOl1BhgULvO2AVRY6YaDlTgihHOyJNfmpmjV/yZPUjpZeXNFK/');
INSERT INTO `cs_admin_log_data` VALUES (127, 127, 'a7e93a8c78Xn3JQa+Dm5MTVIEy09WuMJKZZhq7zmY6whfU+RTbXRAqyQ/Aev2RcY5ZwBPkR0enqb6oIkPwQ3f9xHiL8U+fGwRTK3mzdR8+mWYpi621iS4mYCFjwAcmgqupkroVeRi7yUpyiJQKN7mvboBb/PusYVxKaMAMQBeqUGVqnSbOz0yrGlGMcXg+M8LCmEUhQNnpqyz9chp/FPKGwhTH/GTozivNqcbCweZnRGV/yblhfxBpTBnL51B9Y/m5Wk6v5Gb/3jdXARCRdFq39WLztjQJlKgYdpzfTY8QnjY3fm');
INSERT INTO `cs_admin_log_data` VALUES (128, 128, 'd06ce98abxa0QqQrIcTQoC9Kdlw0Udls3ZPvC8zMmC47BIENUSK/QJvlFadoGrke51lz21gsvmfTsx0zbfFtS6BufIl4KEewOlo1wL1Z5fK9UP9vEZkcxmDpU0Ml0ljzchkX2VQppq4EAibd6XjQrWXUJ+QkXDv2TY2sPr5Y9wYNxplk6S0QvLl3FO6GKs+SKiftGQmF8lvtnrhyJatC86e77gPQdxFvE4qDSginvRgEVPUeflzDr3YL0x5GVlpBFSr+9gGLLS9SPlD1UThy+eqgHmn/mz+E/gZGhQP5Dv46T1s4');
INSERT INTO `cs_admin_log_data` VALUES (129, 129, '36bb7e45+d8TW+91JOInC94v7N9CXkPsxQQOjcczC2riraAQn90yNy/VhNBCA6cQDUtY9aZo0DVSkkUJsSloxhR7/wt45zkZKCIDg0X5nemc86HoAMwVdpzK+3ISCJTi1xen+1smAHySxYf5h8mj0nzEjaE0RPP5XVPnC31tF3Ldz2n24tJxwWIkuLKgpLj9z5i/gwGWOtu3Y49ER165NLqHZMSeE1GveiT+mAhBjB4gTGHpZmUhV2DZzlS15BgCD9YhLHflgYMinTb5Hy6ztDJta/QfMrOXhrYtQ0dW3bpU6bYc');
INSERT INTO `cs_admin_log_data` VALUES (130, 130, 'e6834dd9CEjg2PQ0vPdAJmKwfA7vByznCvA6nshz6ChcdHyP0w8VZdkeNklmjDjQEijeLTJ1M6lCg2pLfZKrkBckX5BYYs2yaBlqxS77aF+9e3gwCEbEYWrInn8jZpKJbvUKBcFVqjHN61uIKguq7HGieb3/udQzRcUxBileHCZ8b33hDeAfrvYGm6kjLm+3DAgDZ416XYWZww7Ye/Ur4gPvz5SLt4x0ZcQCBld4MH73dwKdB/ffxRkK8V1tgnToSHBDcuFJcO6Vwljr6r+bMZcyGC4o3UcdQD3TAIolfgH0106h');
INSERT INTO `cs_admin_log_data` VALUES (131, 131, '2fca67966hP3AXEoABh+W5shdUL5ikERSEPSWz08x+MFJZ/a5hHrpvltImj5I2hkFRHDHHqKMRt/rDP7knPGMQHVNU70b0KXvbzbyn5G4fqhw/10SaaMrWC3Ttr4ce2+l7R7vjUcW4ir5dfCrHUg2EJapE3cd8XKUWTP4MlUEfNzfG51jJbdyoR9Iv6p1SQSZ/K+wNGOp8SfQye/NPEh5QPFGy3vfKuBUMkSMcTVa9UwXbhNFK+YI1omBN6koRj/tvAqx+fXShcMQSLzCgsC4csacA3E784WbktdVeWLW9dwIH4');
INSERT INTO `cs_admin_log_data` VALUES (132, 132, '2b92dd1d9QSiKQ+FwzD+7Gygf1JCNUPJkPBZQeaZP4FXr+Tlh6M+fsS2mXgx5dXUUxLvNkCKONr1VuTPHv/Hre2Hk50mSzJsrvGbGxsXKBR/JRTRVs1P56M8ewRnlU37sUHv3M3YehG8RlW2BOYVTf9kYbxY/M2zWa+JLTyQMbcLH+b+FhAdYtDFPehPcr65orKVaUrzOWk22Zkiu7YoZ+DMcsJQjbt0aD5sBAZHf7lDVhUC7H7M4/stK3F8+G4y9e357IL0wZfTO55yZbgWx67w4UvI630WQVjOBSJ5NIJkOQ');
INSERT INTO `cs_admin_log_data` VALUES (133, 133, '68b9f29f5QdJRebPSNYtqsXSHQBbnudr6crVs4U/pZgUKB1ZMovqFgMBZSKZkIGh2CJqMvCLFdEdIl9ux1mPH+7WNFrcq6ilUr67izqeVRSkk4j3O5lbpqA5uZcW8wc3cQ0Ke0MAths9W17Vqy8YgrTaitcP65FJnGWD/LhkTXlN5UBTnERlaXbsOAe/481ueijbeEemuWukE7qrDyYRMBiuyx+pn27JQR4Yqm5banvLdxqtpgMiRwsdfitLv0cNuMCx7yNq6mOeUjvCYFc6IBMccY6H4xuax7Pcue+/o7EJEw');
INSERT INTO `cs_admin_log_data` VALUES (134, 134, 'd34adf94cGDRjgJuHN1gv9eCjAlIAfPqCA2vwBJbpUuUYUXvJx4TLjD+D+hVQsxMEUw9Ycqw44Ji5tK81QcXxKZ9WEcHY5+74qvAd2DtPqQgtzM3PT4fB53kYcwpkKtnTCnNmq9c6htWtZACFSF+bzACbLwtTDaAgkkHQNHLgPTUql6iC03/MB6/PFj3aRZr6DLvTcJECrsuIm5HmGnBihI+oij2qxpeMN0xPsw1ztlQqpJTjkllUkui5VBKOJ36k6k1HdyGi/ouMkmjOVVrNJ/ZQmorRqRK8EB0xQTUnjFR9o2OpYE1Z95Pn1QQj1fzcJGoAUg4bZPC2QGfzonei/8lsDr6Eu3X4Gd+PdU/HxI000GEHFt5Nyj7frzwYGnSl87/tiw');
INSERT INTO `cs_admin_log_data` VALUES (135, 135, 'caee92c5l26ckZzcHxJ3sXy4ZT/oCEpk3Qh4woOxcXEqWhmWM5fdagmYrEp+HrDulJ5r1Einvq8h41GyRJ5urRnnur3crZl+JTJcSf3KTAtbBvIKIbg5M/ZJcDDSmS9ay9Acs4u55GNxgpGgYoE6aL9pnpuXBsSEXBo8z8CgHALm0iaSMgBjS8YI1zWiW6gHAd08uKZ8Zbgr+EA4h4yLP4GSmohHOvyjGhgSz7ESlEdzd0kjWqiOTMa0mRxtdlWoQSHF/w4d3XFkXjAxQ+FtOVfhhA4vaXdJhvkT4mYvItdYNgQJ5QVls43psyR6/KsGTXpi0C39Bpmn0NvJVb8Vj8zrHeYx9hW/GWr80GvZEx8r5mp0z6M276PU4KXh4J4dGeCo/AI');
INSERT INTO `cs_admin_log_data` VALUES (136, 136, 'da22eb2cl4SRooqhfkoJPlvoZyQG1galmyPeCPk1Af7KxDBbTASmh7XM+WCjqmgMeS+BZt9qeZ1oZGZ1qAgtYGZVcq6KQYT2Fo+aiNLfHNkxANWB6ZaWHGitxR/PgH39CV8F5y7/APiZjMDcBseGk8gwubXMQviPsqwonopWJa6ZCvgTbXzVkmBMdHP2oZCO+ehudah6DM5HGLEI/17sWhyIgx6gaRsq5McGOlGnVPfCC+yzzV15jrZ/wNXi/Xqsd+5l6/3H2CuDSXWKj/3akLrHDJ1zFJ3rghmnB8n7kQRMpwl8CNMrw+iKivI+yOCzzVQxVzwX38jmGLTrEzlccpfhfuEongknrAj6Mdz0EryEGYd8/O7vL2qKwf4NAGTVEmjjana7iwS5U78');
INSERT INTO `cs_admin_log_data` VALUES (137, 137, 'af84de50LpN8Al+3cThQFLrGvRaAsz66ibobwNpA1ne4EUslecUafKtHTjs9Cpp+aF82dXuKhExytbX210IQKBXe1wklbJ2EdjYCx84JeyDQqwa1m4+bThv1yGz2fXele+eOHjXT2aZssTZ8uQOaGWx6pYOzlyXkbwnZ0/DJFgUL0gWSxq0ldj4Iy6shwx3+a3qLj/BDjUYM7NqA24mQmBejKjwN0N+bfPNFoU2StAKmQ18ivkl4VoM17pv4+DiSeVZCjvb3lKDzMxlXxXhmvzMPQH15X0xQV+rUg8+5hRNa2VbGbyInssnUPPy34D9B1jNpBGf+XLkJh54dA0YUSawJCQdbM1zYg2Klkc/zFso07iw4E9e/kftfQ0As3zDTvc4KOkc');
INSERT INTO `cs_admin_log_data` VALUES (138, 138, '1cd194c61ytb7edHruLYFyve6ruXwEucgF1Yrb0CspQfWqiJQNymPmlAljGdt5qm8WHx4G24+LA6x5NFK2KZGYJ1gYQRhJob1Xai5OgYKZnF8uVO6/+UoePmdOkbamDSlOwg3lkz04j3I6mOsbw/4R87677PVu83r4dU06Z1WZdfAsl3aIp6liMSNNaVJ8rwYH47GIQlhgSTCDwW8JzSnydviudX2/iNHai3/wpHQ0Fc7yAv1T2bZ0d5FKrEHNTwowgKQyjLWjlNyyrBqGizBd9NWT6ppxE4le69QeTl4A7X7PIVqn+ixnTsJ7lz5UJN2udraTJCsLbGZtyVKQrgHOdjpE5Q7vQpL0hghagI7JLrRMo+/sf0Re5Fw9Sl+WXPJbBshCFVA/D/NQ');
INSERT INTO `cs_admin_log_data` VALUES (139, 139, 'eee81972LnD8lMf1XTUNhYLKIj22SHlJGiMVRGOcSUTdb2Cr4YpCkpsOiYdg6uKYHPvMeaFoQdFhCvWF1b2GgvEZdpGMS8WU4sFyqJamXYYiEe02CXnCbpiMGk02iVmx2rvPGSyIBp/X7snStCCED7jKMKD6IG8InnPoTkR4Tg2Y6x8PsSoJItN6g5rsaTI7WYZ8M5fwogtfVGhDm7ulDo/XckWQWtoSg5C1jrWUcwmDD6neXQqEwyX26nAQbgGZTGf1mZXwbLzp9AvGUFTFiF/Vcn2NQBIqsZrJ1tiP65KemR1n7FEBD0h/T84kPEUmaQparjJPMth9tTz9gKHLVTOGXmo8GC5J9+rCIZZrDr5TGbh67yg11N+FONM15JxY4NDvFjm8F/Oodw');
INSERT INTO `cs_admin_log_data` VALUES (140, 140, 'a6c7e359LZ37zpsCnkpnBmfBab5t0NmocfzwHQzBGulhdDNsEjYCAIGzVGnzRJidMw56OPVcIuRQFnYqpGMjkP/+Y3TcUqKhGQ7tJeiuLflqRdfhVZ1X42t9KtXSDlb9OBD7PBPhmXqcd7lUqbHggDK6BcPngFTMDTsPScfcVsVEn1HDTBg3EMk6fXIEBj9dSJrInd4pXfFoWmykgnid2vyIdK3XsdL4Dr9udxfgzm5aBsGJL1j5TO8gEuEqKCyaDu+oR2xIekWjiNLz8Go24sGxYQT/FH6JJmr9ck5KTSENeAPEF0SLWDxbqEM4PHx4pu6H1QjP7i4EV2+1y5K/FzNDM0AZu4jmGspLUl3bv7GX7wWAzzABGD83wuQy3jgZL84D8hjS2Pz8Jg');
INSERT INTO `cs_admin_log_data` VALUES (141, 141, 'f5d6e00abGfl7ib52j50Qb2+mtEpAjBTDlFYwHTfhC5AJ8bg/vvRfnN2+zoqyE0SdhDCpXay5F7+sjBYfUoX+ofMn7Sq7x+TR2idP49FeBjdsl5b7OjFBoMiD+lWzLnJWr2kRRwQcLqJhH+zx/Kc8MY8LP5YyfJZTbpooPI/F0CUeNuXdhLlF2VY8WlS9SFyVH0hDrZJuM5BE57kv/cGmqOabkGvQYec0nHKVHRtjCDzd+qhiu2EikdoQ0cUOi9B3X7O4E/305ALLVWXf1qnCayerRB94965rJzcy10mJiZjnb6BlqYzPNSFaWuGO8DaZXlfL2xpLy4cSvvQ3xHb/xt0BZl3GQMBLlod1YCeMVyM1zw4oXRWkIQtg9SGpg');
INSERT INTO `cs_admin_log_data` VALUES (142, 142, '2e7cef4f1cBTnrEtGbZL7auFD9A7uy9lVDkYq80lmlLRqm5J9eNM4R0RHWdYVnDk5i7yL8ZS+4LSI4gqHU2dWl/PnfJzOsqCEvM/8y6L6irnJoSLTGR/6RfDdgaVggjREl4kzuMsyd/3Zkm3sNP/RZRyKqfEGJ7e+QKUovZHNOve9/Rfql68fe4yy4raJXjEgn7WOrDAjtxFWTylfpSawcXr9JEMauu8DLKtFeCZrmze+NYiLuUgY4xka21GmccLWI+MFREE7qHB+0OG9IlWDc/1QSPw2NxknGdgbSGAlW27xGH3pPya0zCDgxsKppQOAC7a1RJvhOOsonFyT5KdlsCTHKvI5JdmKQvWWUKe9cf6WcJtppvexEjA+VgDTA');
INSERT INTO `cs_admin_log_data` VALUES (143, 143, '6b406b72OtlSQFm65ITi1HCNB3IO2u+0nrb9UkPBxJox5oxfmHd96fhcsBKw8A63Yc+DfdGL/l5rcWeqAnLodkl0dhbiRbK/UDzAxpABS2S380bUjc/AcxX7/XQeCtcmDbmzqlsYX6qEKw+9/+Iczz2juuHo5l55PShK4eHSm98W/HMKpkY86s1/WCnfmaBO/X5bI79vBQ7XyHB+hLRlhEluy3qXQ6oDMmfsca6iO9NuFuczDBIBBY0drvkCxiivrWNtyegmvNkejYUlLkC5i4hQW8ONLYembjoS9/IMy67ha1xQ/15vNBPDq03JPpD5sfcRovmzsepMLpdmq3V3AN8Gj19F504xZVnyWrS/UhyoqL3FLsmKjhOFSNw3cg');
INSERT INTO `cs_admin_log_data` VALUES (144, 144, 'a3526a6dJlSIghORdjUQr1vK26HXxc335i6KJDSIyRA17ANTQpSt3WqLUWUmgTGpHP21CYQiUa8nCrVv3v0BznjWDlCiYLDzb74tbjYDxZxFRRVPO4gN0BxerKXXua1mQfu2NXviZg+YgZmYaz8rUi47tUtRdH3Ccpi6DwZ2iOksogu+7Ydk/RMIyWHHccXOxSmmkSGQ1/DUmGt+rd3uX9VJKOWC5shtSYz5byjq6t3RWLN/QoTx3kuYmcwqJhhSQ629N+MqzR6V49dRQP2UCOmYaoqgzxsB7gF6nM9U1XefMpwrveBGoIYSHF6jDjJWOw7/evdI+sT4DIP38FdqUI4VxLGSHxC77pRLV/Qo+QVvnGs+UV/kAbSH539EA+u2KQ');
INSERT INTO `cs_admin_log_data` VALUES (145, 145, 'eb053b7bKKfmkk6QfknVZVtOcoQNsO4X/bmIz07RAR2RG98JzbDQ/k5CSH8BB+wc512aUpTNua03hU9TE2uVqI165m2NPmJZBf+r4d+IVRWvOgLdZM1Xwq6ycWVkIpal+lIAh9J3EwTrzHtZi5Oz6Igbs7UB/e+fGNpyHKH7xBz9DmHrhlmjZT5303/hWH/icoFOe3jwvzHOlfNEMSu+VY/UZJe3bsD31nsBsnyn9piJO8IfVzPIpWL+nommrCpAUBuVQf/fzqnz1OFrgj0n1tZtQZjQi0qS4+J8rk1dyfimyWaUSco9c5rI2SGvQFw8TgiPDfiS6fgYnj999AF4140Fvdl54kUPeVnmz+gBjHq3K/2DH8kjQvRmLEneB3+H1A');
INSERT INTO `cs_admin_log_data` VALUES (146, 146, '006a6cdcopn/w1R14KHhD5gQVBZ/3TAeYo+tgr+SSTv2W8abn86l4EDTj+/PrsSv6PQkweu2wllPhcLConcba45VNL6hIcu54kH6l+ajWc50aSlnREgVB5Ugn3PnD0EyaHwoCIwcNxuphuhG0wSsZ00u3dwRX6xZlVp/Fzk4F3Ps5CnRLauw72XFqHeOXivL3eBD4o/4jlIxwb10EiU6k0Mw8fFFoE/v8uWxEi/NCBvIB5N4ShwWlpB9rmxJyfukgJ2ISLTh13RPDYoi9F+ij2KlpsxIotbETTd2S0d6JNGH7uE92uApP1CO8kPCDbnS++WnSytg0+EFns/qwDbUXnQI19mAxsDhI1YS8kR+sMxCCgzSDzQZssc6mqeIop/KPQ');
INSERT INTO `cs_admin_log_data` VALUES (147, 147, 'b6a2110akDumBjTote9+h8NZU6Oc+/HoN5V1flK74Ozwk+q14IerJS8lPCFEvEzKSi5q4YZxyb9iH1KiWy6CluUWBK5myUjRAlK9vGM5kAcc7MIjx/6AFFGSFGWDiqXiy1+TS6WMqtT6bESp6sFdMfRArFLzwbJdPlWJK4uax4vYwADa+aJoUbLRv5I/3iIRFepY9TtBYxCk2hx365se7LIIbSMYxANAgFAa7iPgQLzwFxZ7YQWdi1QnvEQWjhwmaysK9Op/bDriZWFL7IQ3KSxorD6ScVP7yfDxEHSNRYzTCNdZZlMQVRJRZlB0auS9XZqVKvMyKVD59mmeC95XX2nu4utAbJZvPLkbv1SxG6Z1P6o3/BUVrVLfcfTpagIp7Q');
INSERT INTO `cs_admin_log_data` VALUES (148, 148, '31bd582fCfSd+wpNOsMaevcdoZhBG8RwijQbmZB6CuhVHhoJMNDHpTLm7hRKXHK9KjevM0CAutJa/wfujTHlID+uyODBHZFQcf44s+BJs9XLLyCC0mHEmcie+crIxFoox4Q/PmFMKSOtoF8GSgI9hsUGgSn9D7YnlcUR/Wtz1PFLoLxmVqMc23fDwOBBhsSQHfaAJjY9P7lAhqNh6QcnH+Hjqx6IkrOBxYLgPAcUMmxC0SdBNLqgRxeBeKzTOfrvwI6VU+6CyiLde95gdEZDYTi2M1Zo+aVjqJ+pii9heA5amLKoqX5NMNFyfH27F+uDVxeCJvhzGEkn2FEKuNkJveG8OhHo29uf8oWjg0HQ/FUI5Mo4LPyOXgG+/LAuWGelHw');
INSERT INTO `cs_admin_log_data` VALUES (149, 149, 'eb0354a8O464kpST7XTdgyVUit+XJbXRN6KUDaNrSqLkbXO8Q8gnh829Q4mhDaiuz4jwR2NRW/LyRatL/eYCA9/bibwjs9lHrCfCX8t7u6POOUdFC+R1pS6ScIBYrw04dtAtQdjhGORtHXO1ggHeqWXR3hCrTOMa3K2boIZ28ymE6Xr7Q7RTZdeUQ6W+/oEOPe9yUdu1uuIMmndXZUtBDiIjZt/qz4YB7qQ42XG9GlNd6eWZzFIbadDx9nSor81gacwJ0pfk+LiGOVrVpAGBNDgs7iTL6qy4Uby1nxfvMp5saR7xYWo1DlhHlQu0XEtp8m9V0zKFBGya3Akf2foDkAiCtkhjAMbjS8D3H9aZIYuuGdKVwbWjLbkq6YJ0odLMpw');
INSERT INTO `cs_admin_log_data` VALUES (150, 150, '4eff15b7bwIOfbapF2qDKc7M3L9K8He/Mmip5frbCXvZUQFBO2N25DxgfQCmKP/wP2YcV8fa08LlbGx72etzC88T4stvt1viucAL3PiYXZRuhVORRDGOn8/e8OxGZlgA8dQ6sGETdtALWVhy0cDtbmZwzL07QbULzGv4J9yFREQ6MVRY7GHRk0tAX8QlHe8LOhDyl4dBIx/rpLsIfFMtwgRpCS2rY94DK2JTWfk0Ude5KNk4nDMldp7EJWpXILUXtHVL2z0z3X2sSWISLjBud8UfdVxcmDYWSpO/19nvusssRIg0XBSHizTyXvASK/8BMdhTMIIbiBzpGC8xMevxRQM5Nomq9Fxz0pzfULGtE8uQQgQWiTpc3vpKfzmUlYu1iQ');
INSERT INTO `cs_admin_log_data` VALUES (151, 151, 'a0594408YVWwg56P77b3RP8GjSx1PdQC+Jd7D1PsGNUAY+hvhK/4IeSQmntrPLoGS4JUhzjrlxoW888jhrxrct8HqTHwoj1NzLrUxTsB+HyYvqepKm43RLG7gUaYjjFYiIPz/cgF0gKolTTLyfu5TqVDb979SW1pCkMJaElWrkWO8JpWGoxyVyqs+/d33ql5wHCnEqvpyIaXqIKEOOWzpJSGqfoJiClbyeK00FnFLWOJG3F+3+3lyBYBlA2vObQ1/eNhLnI4aHpuHHFs4MA0uZqp96O80ScifmPRoUUAGI1uegn+8wcO17QPtYhM4xqOOmG7DKRWoonFPY5rE7dKgTSs8oCCEgoGDaOKwUTz9cx+I1eelVyxq0sFZDHQ7WPPgw');
INSERT INTO `cs_admin_log_data` VALUES (152, 152, 'b357d812DVFncwKMxvej1wezhSo0Ve7t1WFykomk/ylFwV5eJdSceJ3ubVco/C4hysHsdoMiO6RHo38tUKPvGh8AWT0tCf1ZSB2DJrzV8fiLyY1ofZJ0wOmVVG/fG0pGPRxiA/zfqATH7FO4tzZl08wD9OsWghf75lcEPpaPf9NePRaFQ+uVey32II72md7HU8pCh6eBfRU5sugkLdzH9Y5bTR9hshTb3epoeKmM7FyT02hUrVmkbsaNhi4L9qK84RbFqgPjq5ZY9sjVB/QZQ5y15M9rJm/SswrGDg5HFzH/hrzxYE+nnQ/rRxxUyIE7I0MArXXXaearhBg515gf98QxyzKq09atXK+QlIzgCRou9dvzOq7P2NmSBOOE6UJ45g');
INSERT INTO `cs_admin_log_data` VALUES (153, 153, 'f677cd43NtPdgDncbCSfB+1JZmfvJIdic/4iIyWgGc7ESR260L8b2irqAkkzRUVEc24jpoPmI1Td9SR/Cjl1VcoHHIyRHNWMMIJQ2yjGCip58F12OvQ2ZMTqjo8uQNPbBYrDKHf903AW2Bg7LfIj4o8PyFez22zRUPY1sw4HsW4EbHMidGDDwYpZbXTJirNqMIzQbZS2E5AMzg1R+PakjPkFaCz+TQbonyrswBoCGrxJNJLwgXlYJCjnOix6bNKydngV+7SwE+nkxecurqXnBonSNpv7/TVlWvV+5JzrDy1FtaqyxCocC0fXVqdlTz3wwuxQ7guWOXcB2lutMqsfCNUr3/MFQaIr2AoSLXcYUupQBWAH+NCu85BtdGaDhdxPwQ');
INSERT INTO `cs_admin_log_data` VALUES (154, 154, 'ec1cf79e8IeIbtRFVaMCHngWcIdgn41XkhUUWWCub+xAJKeBIbSfTZDx3F65FDRFe4HQaD7QsaGemgBQVg5HJ/OwBhioNRH9jxjSZRZHCbXFIoaSz20oc5nni0AiuigMD4S2mXAB+o/iavXHBsLGT7kOWx/rBJKTKkbx5U00vGga9ardXh4zSpaN69PsKvgpHj4PXd/f0HoA+pxLc0KIDdr8n29OpBHxwk5/py5WoyQ9hlVNFowQnX8IOM3qGpKQehDQWATy0Frk0cg+KzSo9ma2J9bYosW+LhYXy7w1VVyVuLAxxJcWunmXirq/2v8J3ziFhgYBsoM129bqKNeHvad+as3NKElCuwvAr33XPf9B9i8dSfoG1DzaThdCALbj3uih/HonKtYVitAd6RY8oJUUKnfo6A');
INSERT INTO `cs_admin_log_data` VALUES (155, 155, '23546a42nzYZptqnLnbJjCJArSPrBkKemlxBbQjmEJL6jVOIKxsc2yfZofEpw5Znf08f3gJ0b9cKMtdFedoYqfG6NmA5643hnxZLFY8dxznyUgUWmkJXdo6Oc/c/lm0kThEj/gxq6qZlJkEXS9x9oIRK8lTWwGWE9NUpoyHsWIE1rXUkwOeYPPD8/MnDY/e9sZh5Bg3nNHEUOKLWOpj7gsaJJG6WfyVCDswxgqxuJuKYUuW+qNd1K3Gp2G0HmXKoXpkNAo+43ClwBUTGNs01Z6wi0KsV4WrEWWooZ/6KEX61PPL9YShmbieLHL5MsM6YZULMB5x6jb75OiHfBHjOyO9B40RJTEayTXrSUvFSsGX5aBPxB991FEk2CeKGv41zBB1VVhnDw4mXNwOlG8jvghQCxn7ISQ');
INSERT INTO `cs_admin_log_data` VALUES (156, 156, '745556098H5fekyTDbke9YqK+ordOWELmicRkeMcP37pymO/+AfF48fTr5yKACRNWzlB1NPYthaNcUymC2zMJs9TYKtYojH4LhHoNX1jGMNy1YS6RAoNV4Fvx4xBTnhIPSMFOhKcsvdOXdeXgrJYZ+7fKZU+NC7w9Ko2xl55+5zzIuJXVRtza59QL5gtMO4qHDiks0lMVspQ0mBrVLRawMm3TGSpjim0g7MiHFLkNflKMO8b2jrkOpFCA7xq4ZjCwnJfPn880W38EvWs5WyUoZwuNsXfBSiUyquf2Fp4IFHvY2OxtuHuVmhYQRG5p6Hv/KkGqEIc0qnB6sygYEKB7x02eojkNtvEC42ZkN6adc9KV+j3iZWIdls3743Ynb65mWS5a9Z/xiA6XYiOfUn6JPLk4J390w');
INSERT INTO `cs_admin_log_data` VALUES (157, 157, 'd85da123nC57jQolyrmX27Bx23KOHdnzCGb/qMRG5wthA8MQjEhNfFb5SGFoH1BJLiwtX1b4UgLJmpZZxtpzGE8NHe5EHpHdrPbwL9q1RzU5M4XGhJaqp/Qv6/3i7B9gnW6Hs6JIDAlTm7kC4zcUQLiPVRU/xKQJw/0df5q/vGeqgzlUKEP36vzbzb/yOSs8QQFJdiNR+SBOKnXdf2Z/cBIubbvYaywGDwR0sokoa4nGh+NB9TolvgEgWRj+SQYTqhBBO1jMUSUuSYPnWRFCYTbiV/3ZqeXh8dN/QpOJ4ZbH6k8C6YD9km9JBJrJLkIAj1kg06HMgtUZ1nKUWR/8bE4Udrj/jmdxV9qzEHWY98kUf90za0rp0QFnWhdss/EuA1ulE4HtZ5/yaYFNJ7ndW86pD30ZaQ');
INSERT INTO `cs_admin_log_data` VALUES (158, 158, '451c3ad2q17IO7DJdbK1zGn+cKEVXSNrEVG+UmCUvkVjmdDas+JMVUZZbx40Jz9wCRSYfL+aslH/ZJU0O5MLRpQUxYsJhzBZ7m/wQ+57pAQllb3y4OVufBIR/RYgZKZV+PPtuuiPE8AvShmUk/RmJ/FifC1tR9GSCG6bGxU3+e1/2WqafDrYh977gD9gxudctD7BP2f4Mgvz1S02pd2NSex3E/OJ7AjmAFQtB3fNrxWu3jKVon3DQjRvQ21CnFEjubyZBuPf5tYxs4GO4BWpx8mn12I9XKxtNhBAmC+ScLCIg2ybZIKuDaIWzNId7cCL+PJxARYT2icTrsuyXWQ0jXYvJ9covDKZaNOh/y2yMPC2WqgVP8+r+DUCERT4kGc5vnK2msM978llc+Wb69OmCYEiDxU7Xg');
INSERT INTO `cs_admin_log_data` VALUES (159, 159, '167bd9d3p93HhVD0dTrG9/3k2qiS84NpmO10290XjqvKauIC5dvJNfKK1MAenwkFPLXp5LuKI6RpduCWEpbcXUSehY1HWuCZedBTFAwuPJaBufYHWGy5y+tiXTV3qItzD7yzctSDcZ/+jyjzEbmK0Ah4aS0J73VGcMV1Jc0oUn5YPxm4cpMus1G/ofTaNH0Ar3r5h032sevOIwggyDBsbYsBwhFOp9IyFuorSuxG0exmpy8oQBilmAEdiN4SMgZM48WCEdqIez2JIumAseMsKf9xJa64Q8Lml3FKkOaQT8kQ0K5tyR7uNrMcHd5pGHVzoubOaf+M+4UQVumowTqtjxOlxMT5qpWco3+VD4e0/O5CtHzFiQQR61s0S9MBfr9JPmQGxaSXYF2Up7O+kOGIdp6T/3ItzQ');
INSERT INTO `cs_admin_log_data` VALUES (160, 160, 'c686bb504cY4rI3BeyGVfvaMXQjD4p0delJaKQ9IDtZwiIQadnAKlBUJFV1XJAansEpJAKr4dRhgc1F14qkarjaijo6ADA2FB3Oj3TqJjGKTiPi6l85li8JPeFp72O6Jqn9tyZ1/VB8o6dbisTgyinfROXYKRyeyxXhnrm2xeS3oS16l8CmBMXMhB11JsMcXGztoRJrcPlqoML4X7P4mOdJLxK2VDk1a249TCy02vufu8HotdB/uuOfWXfS2eyf0KIYYuseI5qj90MSGpY8jLBiqBHtAgJpZ6A');
INSERT INTO `cs_admin_log_data` VALUES (161, 161, '7db667522S773UgiH12Ke3pq7Jh9PA9F93Xx+PBoX+Gmry9YebtvxuxGTzQw1pIyDVQcn2b7H2LrQmAytFNgPMLBJ2Lzj/BuCEiGuNJ/FwXxJJ9FSacKLRl06nxchiY6RDHYj5TfaoT+n1vucVrORqCWVY0zHlgDd1KPKmUF9U+rjfzzx8rMJ4IrZCFq1WFaoS735zJmd72cu2jmZPsfeTbHUZ9Xcv4ZjxyTxuGoaCy7gSOlcMbzFNyM+imUpdNuJR2DGFpqxe7rOhh1xvnDPTl0DfLVp+0CAQ');
INSERT INTO `cs_admin_log_data` VALUES (162, 162, '5f52cb1cNMLMDaAm2DMcUCmeyAaXGDaDW3S/VQGa7ibpp5iMbG/l8RLxjtF3vxHfdHxN4/EsG7C/FcYCYsZOTx9mKT+MXZ9AxbhPPzQSxMiOdFhPTveyejZQgy4QlTCT+HIbuCPNdvWRoGpIN8w96K1N4zzRslmvhAF2evB3+atfSJ37EIDUpy2RCF4nE+nA44HfjOoYfW/Dl5TdW1k0NChVeQUMj6uzEV94Z5n0zFrJkB4RBWYLNVwnUdA1SmuWb7dldYaAITlre5K68db0cE+cC2GHohhQfw');
INSERT INTO `cs_admin_log_data` VALUES (163, 163, '8e2d9f51nP3Npmsu0yaeskQLLRGlS7RdxpZOYQDqd+0/GGVl6P1dqPFOHdEtgSYnf/eZvDkYk3eV9F9q5wkj0NnQgCZ9we4i6yVySS/P7bCTIE7OjSxZOoLumUTZBfa1qGMSQH9xxo/aIMN6iIaeDb1yAsuY1YRnNzk+f6nPzplNqqHz2pGX1SZtmw1Se88zrJno9Oc+Q8lq3J2Jqg4XFfA2Pz92FhfB8vSDTnjGlsS97R38UVN6Lz8V/2pugi0sFEe5pIGe0tYaTSsHVGg5k+MyFUkUNDWZaw');
INSERT INTO `cs_admin_log_data` VALUES (164, 164, 'fcd29613UFPCUi9OjyGBLncVnxsPNiLTQNnXK/NrP29NQ8JVmyb15KoaNZj9e7VyYMCbKZQA3Ggn6H+IgEX59pka/F5euMQFr1NP5Pm+NHnPWIehOQ/zQjk3imqmtLZfvqh55MAJJLImb7bc1xqyqXWPSBfQvSSGNtdQqU04ykPCx9nGs0C+ItIlb00O1jo/UYCrH12IC/JroD+94YwibWLvWgRwpZtD4SOc/G9clJic/yx4xawVHdxU2cswJwbbZH7msA+V4fzZjO/vPPVkVRdfgMMfCcbYUQ');
INSERT INTO `cs_admin_log_data` VALUES (165, 165, '3c58bdfc5od8rflrHfFTKzfTK2KwhTgOx0nY8/d1GE8dv9nYic0r8o3lM8f5pdjtNNAP9QY2A9sVBlITIbzAxHFa6Fixs6gmyMqpT7q3vtdbuyFxFLGUnAIAeg+KP90etkL8GtYItk6ueMOmktRqY1raQLA+0ooLx6vvfpmlhFmW52bIgMe9WMo0l1tIfqDTQNrc0udvifFQT8oN+pkpSdGjQTgCxYqAzs5W2/I2j8tA0YzyW1gff2SP/NQkOKh2U6IuFhOYWADWnbTNg0N4ihawzUs6Tat7DA');
INSERT INTO `cs_admin_log_data` VALUES (166, 166, '5c8db70eQjcRi5Mg+GJPwDSP5Bnu58ZDy3EMGx7FqKrPAdvS6E4nsdf+jdwV5tyqbLD1kbMAQ1Q5dZ2PpQ/T5BAb80KIttUFIFDWPkrNET6VRUXj0mMUGuS+MHCunHqi8+gPb/TzuHU492qi8r1iZcUGnL1DR7XrRdAJsJBlKSvl3ZfyJg9CHs0lz/ouNz03fL70dC75KQ1llF4fzLeIODydNPy1k9ZOu1Bx4++KBQAAsfLBVv33iXuQmUC8s341qhxVoEyE03rquF6dJSabny06GJelkpte9w');
INSERT INTO `cs_admin_log_data` VALUES (167, 167, '9cc716fe9iljL1leFSnm+MvCI0RNnzJ5J/l8M5LXJ/iz0wHeKykCT8d8VnrCjxLw73n/fWyU+HJaIg/xPUtVbxhWS01BiKa96KWTyiu7yJEc33ifbWnRC20bjtiV31czB9zmkuxponHERjaRXXFx/oYTPkFf0ygSDXZWirlOsfdAfWQyzbfI4w8zbwiB9OoiLzVaQ9JWEudp+P6TTJWPmimt9dyzwUtSZMx3TtVkMd04ysM9YVpSaAu5s0EQl8DYaiGjhCHwhPcUlTHR57tTcaM8s4uLWJ85Kw');
INSERT INTO `cs_admin_log_data` VALUES (168, 168, 'e828d86aPwrE4sYK5mgHzqz0BjT0HW07wLW4pElVODq4gYIzrR6+VVgEtUqS5Zu6DxUIiye0UyjbC84+JG+bDNPKlUFXnK1xNRkVAVE+j83zsGuzmP5VspgbngsNaxKEIPpjW6q24AAKkXRv36wxLVh3/XSrEcxmfaDF4CYVTUZZUMy/8rsWHEzF+MzYaAbbAorqLvHi/PIQ2vZe7EMRKlWcaMElpoTogyXvFgrEBbSf3FSIsmNYfgTAzhrqCq9Sl97026ZEA2S6auxzVUgL3UgnOqh1sqPfuQ');
INSERT INTO `cs_admin_log_data` VALUES (169, 169, '98af458eFsqEWkIlVPwhpsXShBkazgZJrDa0FiVPc1vmXk0/9l4h4P8b7yKMejL5SgkJPI6Vo/zDubHxgQg3Cj3nrRWRjQNBy/yY6htWoDADnt1+MranlJUWHOlbgJnVPaSyPKpN8u+84jNWxRD9tvSKKozR1g5R6ldmzc+eV3dsfT18c8QcNrsSVnvg1OMSWAEKQpcbaRSCon30Exlg2HM6KiB4wtI+VMhy8l/Fmlj03hbHq5m0lpbwcwzTewVxP4DHnTKbfnqIg2Z8fN/zduZghWfSZvjoCw');
INSERT INTO `cs_admin_log_data` VALUES (170, 170, '03a7452aA+arry6yg2TfIm910M78dZzTmCh2tD1dv0Je0GgJlFQPHOCAuwaklG6APf3FQEUkLAga9I9C7LgTFh0AlrgO/1c4uThBey+J29BcrQOO+Sh/SKH7WokQqOhHbsVdwI4GpRZvVjwD6vKxMPFfpkJ/mLWVn+TAO4NVvTyeAYI92+dNpx2Sm/9lbNdAKZ1K/iXsk5NGeAeoCFPtMsVi6R6CUTOjmg1OrU93Cov8v7tbv9LQI0kmjP8rWJDsWApwI+TuuUag5uFBLMTpDbB3lHqkcIbLIg');
INSERT INTO `cs_admin_log_data` VALUES (171, 171, '663fa185byw/mL/AmweeTEPyX3XhKUspCbjgBWq7O+O4HGBt/rYvu3iuOOWRxwKigwyDO1jCYblTPn1MtckUPbN+xRWl6VBui5Lz0wnzEFQSNgksa9cWRtjFRZz828wEm1A4QIKlTNDYq5f+saYU1FO4uO/7eL1GTLCgNLugvT4+jLBM0B2ho787xagGx2vDYQgmtL9sQyc9RtYNfXykfH4UWDAr69XN/c/oZ8x8bKvLd5KTptNujS/QTdGpsXRAQT69YldlRzoPvAEBQpTsSv44ng9UwL/Yuw');
INSERT INTO `cs_admin_log_data` VALUES (172, 172, 'a76a2058ysKXoT5c2l7W5LZbTptoRmrwu6ewpAVOvzC1ofGsuDhqHjdFYsv+bCUD+g9pWs6Zas+/KA0Yc+vJ25rHR1NdTKNY/buhVcnyDCowWADykr+PjF1LxNIIxyaGxtWnevR4f8zby9ta5NYh39wJfs/gjLJJkJreBPfVv1e1loiakkLBG9gUTm1Aj8cACgnmkd12ZCamDLhfUoVcigkQt/SOwLqjeneQswkOrxRjaItRXkolEjZAi2sBtXJcNzQdOB0Lu6Y4yCgxhc+4u3T3nTVrAtfQ1w');
INSERT INTO `cs_admin_log_data` VALUES (173, 173, '620313feqdpbCfWoZ+svju6HtM/h2g6D3dq3y7zi7RKRHObzLaE06t3DWru8GH3Li7aWsMIWgFQspcp2bYZtTiBJGDXH/hPWEzsE2tE0SHlQOjep+XxmK9G6SRJq3uMj1xCw+gGvIsa/nmzuOyLDGmwHxoFO06BgQ1o/6S2fO2cMtPhJ/smM087DAW2M6PAv5sWdHxe4eIdbrUxyafeKBtObwBeN7LdX56a3qA4U3pvLrRu4s9gSOlr9Ak7EOkSmz3jI0saPWR7wTUq+hXxKhppbjq/fdMY31w');
INSERT INTO `cs_admin_log_data` VALUES (174, 174, 'b01983f8OCX0tw80JdByEDPzI48Bje5wAbDdvh+pMRr+hH2gbADXZj+loeGAQAHjwLqs6j5KzaVvAWkiy/P9NhenKsxECubezKgjmyL4VUj1ZKhQvtPuSLshffrzBUA1MFiJbkgs7S/b8YDAtoRVEdU8Mr8kp+/kKnzCXcCR3wsiYyz+QA0LPV6GlKoBZDjRh2B86RMs+W61Y1VQYcnd5Ny8uNCUXco74jH9v6TXGvqENpfX78x+6g9Mf8ihg566Hb23Qp/9pBqFgpMTl9BiD2as3MfGwq9d2g');
INSERT INTO `cs_admin_log_data` VALUES (175, 175, '20c97520uNpuRc3eWxStotpwBZMZV4s3B3j/UWT+HC2VRlGWh6Bd1vqdudnKfOD8Me1j1mb3tNu70QktwNP4sajY/Dy4p5SXSULfs8n/HrT3cILlUxgy+MR98jnFTCc9gDLn7IkhwTqlCUAucAnRTb/+e58A2O5qOVxkfGp1+Ype+NPiPKP1xYt73OxwuS36vJKl9sOqrNBTt6TMzt2/D/wKQJzwha1pQfT0NFn797I9bEDjxnTEdsBc5r7BFJ50KuMc7WSmcnbW7KB2igjA/CNrercTl9tsFg');
INSERT INTO `cs_admin_log_data` VALUES (176, 176, '565a70b4n4+eHEWyVjH/84cQGJ9DpBWV5XATchzrJnM2FNtIIqUUx992rIPAeJRQeLIYfWzUkPFwNM9c8A4kXaaPAyaZR3z7515CLxgF5sBWCJPynq5eMN1ZSiJr1h7OnreRrVr7iCrotS+i+CBgHG1XKnSLZwd02q+fZEGQBsjXXhEbq8d1rEzIBC2LVijCr+K9jd63rHwn/wt4+ZiyPIjqZ1q1Wrfmz40ivGfEYckqtG2BoZjhOlq4sJ1kIRAk38UAFsRfW7yWXsmTzGNgUZ1k0mDDEXoHQg');
INSERT INTO `cs_admin_log_data` VALUES (177, 177, '08419eff/tSIGVd+9baL6qU0sqeKnEt9J5/mkWZcdwYHz2X7NOkEPfE2Fyt5T1fj6XvQc99C263iEdy18kRLEFtKkBOYqhlEN29Sx0jjJOBbhE6VPxZmX4nC14uoGM7rFzUDVxKw7pTr/hLltjvaZfXy0db0qqZI5eB4U3RHn/0dMk7ZeZtFMOMfV+RWWmqDbZP/Np3rxLIw9Cu7CSrcn+4C9OUf1ioyjFmqEiForqFlVPJzEyDfUNtAP6GrhV7pM8QSwqhjHHoNVSicTI/VcijcvV1S2Y4rUg');
INSERT INTO `cs_admin_log_data` VALUES (178, 178, 'e718cc8cje5TLq0MEAlQen99jKMrVD/Jn8lNOFYbBOgpLNhAJkvZUOxW3+aC8qgSFLIChv6cyn4uG2SCNmQ3cvtbjERYc6TAabw2ADU2Jf9/FvItJHZf52FONHa+8mZC4uezoBOVV8QsDkUZwr+97CDgHBwr5W7y7YJbmJF/Yc5fu2lwva+W2THH/uZKJ9du5lcLAMr/yn+H2xYHkYwYmxbAgiDv/77PnpaXTMwUtDiyAMTqvKpfUkf+x7qgS982nYaCIz4JJuyC6cv7AUOFlOuAqO8NEFCzGw');
INSERT INTO `cs_admin_log_data` VALUES (179, 179, 'fad7c9d71LzXWTCr1oTBlB6vKrPBDLV7lPBRyRxVDoT2PrqnwVU/kaMoI3gJJjlRn3eGVfBKo1sWO0L2bcmzmJN6Al+A5LDATJLjclhvLu0pY2NGjERd78eGtpC8GJ8R7DseTBTVlmLcyltUvcKgxLzKB5C2PW/zwT674ZcJ5hcXpwL73JIWROXpRDE424mdzLieY8gLskSUndO8YT2gl03e+O9XEltsR5DZNdEOj+fj1lXXGAUo73G7cu/WtK0kMbHQcw4PDGIijPqyviltDwd3aPYqFJc6lwRrj6nIBRC9niu/dus0L8VzwbEufoIH2qKsZ+DiH+tOT9fYPhNXEJ1vnPm27YwecvY+1qXbUPtPPYv2U1d8k5MBFaAkhNURGoAbDnqL2Gd0dg4ZrGGk4ZfwkL+1');
INSERT INTO `cs_admin_log_data` VALUES (180, 180, '6a6a01d5D06hSx0EAxvcCAS0AHr67lJcCijeY8pTyYL+QJhq/N00BfLtkzFQpilXkR5gSmRwmXyh49kRw3WA6SiKUyyMA2kHDpkj1G5mmHIzcm79Kw4mCmBuO58AIywxk9mLSztJwvI32YNzJ/4z4pOiKk+XIPOGZotySa7joFg9/FdU/ngvMmCCP7lcfvRQTf5G7aSz05EIdkqDOi5ClwFHTM20sVoVhq4mknHcPAcg8nv/R9RNyVgdPYXcwZuqb7+tICN25DFOqCLQ1KZDTxDL6wwcsJO0F9k0outXBveOiCncoKoQvQozZe9Bhw6mIH1yzEZwrylVJEDU+9hsxzOfF89M+S8JLyM6');
INSERT INTO `cs_admin_log_data` VALUES (181, 181, '2a11a89fEhjkpCP2uKaCi48zDqWTUIwxxUUQtOQ8qfl3OQS5kTqsXPk2xEenMoZVX5IYK0cQRGCAx53UiFidRM2RVrUGr2NXE/eajJtH/ADVhq0UNCkid7Oe6LeZzQeeZhnu+BgYXTMGDOgO5yuCJVheYNiswZ6KcvLLT4j2arn/o21RYf7qrVhJVAhc91Jk4BW9diQhjPUMB29fDxvy2Rq3ly12d7z5oLG9PjLW60dVAbi/2y2znCJTmvjjStoBzKTocUfE2wqgc66LNM8yHuzVuycjXl8xPfWkv6MQulCMgmpJfew08PtQGYDUYg/XAuaPQvF9ugFNdesagZJO6He1t1T0LHvdG3Ig');
INSERT INTO `cs_admin_log_data` VALUES (182, 182, '18a513226sPOS9mYStPgnYJFWFMF2lHI2oOwUlZbXLWLnKf5ZQHbqvzTJ66bYpNH3CiBG4Yp4i7hIhp/5GE3Mpp9HIHjzyI0uykufwSBq9cFEmJDQVZQESme8aS8MnWiMk1JGX1L0ESJn6tXP2fUpjglZgXa1XGdKyEtp9JlmiRux+rkYuqRYVaVRyA5q/aPZP3H/FuHjOY+nMclAogwVSg8duxGDKMqIeM74at8KVif9Rk5RPqNlWijAyn1jp+Spx1gjBycOOG9VC/dZvEffiMawXZsPDFRN4MGrFTjLwPe6cVOuniBJbt2ACJ3ETdZBm27nPkwvRYk1o8gbcC+huxpuaQlldqpT1iu');
INSERT INTO `cs_admin_log_data` VALUES (183, 183, 'af39d9e9MUUTJYRENG76m8C32wHA4xWwwBE2m4/WKqNB+aPcCcsHgz6Zc+E8dxB+TGxSmsWHtTL1eLxZ013I3bxwJKMkwWbQ/plLb/9FCNKBRV9SvSOt2B8iV/ntJZwjW+W3otn7cf0JqAnvUxIHWCHz4gdk5fvveurSz5z3ydsMLVAFhbyFgFyVoXc2rTJ1v6b1ckuXQS6Pb3pQoxVSOTCMnmdTM9yOIE/i9zepPRGCDeIvYS1I9M80LGvNazKMVklH2DdMVCZuuAKCdhqj3yWfcbDemv6zUuo');
INSERT INTO `cs_admin_log_data` VALUES (184, 184, '52b600ae9XYjb4xBkRFoRGHam7oAeW8hPhN52IH4mmTZvX9bYj7T2HHU6zxhwDk1rDeGacxq3Qh0AF5sI38zqv3AbQi8AoxWSaL+X6Q3GJeG1fQ+GxpZ8O66tMuwsyMKdBGhjIfym3jJzNdUXsRcUjUeYh8PyLEAJFiy4OEj6iRQT4iHn1w3BGpEgxFB8LZhJ2sWrAdwwzvZHqaxtWwnvHBg1GPe1/SNHAjJjoRe8IdyXZY1w3hVrsx+C3tYG9UIb2Vwiq7EdxhIBjQJRoR9zYh3sR3Lc1O4Qac');
INSERT INTO `cs_admin_log_data` VALUES (185, 185, 'dea97956Ic+sUotzqf3D+eevjh/badG1cELWbW/edof5HDQgrY2B9z3gJKEA3ghMPEYkBwEFSdG586A6KOjw7XF8pcp6PXaAhDc1Aky7KXBI7dVj6c5ktgf/w8kZJ3hKcXcFJXH9TYzGI0EgLRVRXL93oWe/+xA3okrEN0O412LAiIyVJH8twQlrmK4opESP0mXZapzVwtcnfZ2943bOKpqIBvOnChx/peggmKtPsuotUi0Ae3mxP5b68dcy13oZqXD44d47bge9AeXHjx/zOTgDkdliomcWomsyqvdtB+wW0D4LtMDfOTriJrM//xJGA9/ggP9mbDvgv824rBHwk3HnziYdHIU8D/FRRGWh9s/srcjK1P4PLsHEvm21VyjGWdM4/Wm7YT1YmixABA');
INSERT INTO `cs_admin_log_data` VALUES (186, 186, '8cd11b26tG8MPyoVgnAywViy5JCC87Epc+H6wugO+ym0q0rNSiKq1ozTey+oKzvp6aKcu3/V98VGGwlsBAlJ6i7+RgLR3tF3Gk5OLqs9o0le0XSkKrA06auaZ4/Yb5LaeJyeTPXJrdbAR2YLge9HpN+0SsQZo7AITohROFV8m75sxXhHUAM4uw8FCxRvIJrdhMqcx3zcb0MI+TOIuGv3OsfyXvnufG0Ibnydzjfe6YslZZT7d4jCjZh6w2nUszQ2FExnzTnr3t1ycvGe6EZdUki5EQwnBIXIl/vexyJaGxDxgUhoHyoPoeCjuqShQ9cuvhXIX08RbUiIfRqeq9d8h2rrExJOtBUKJLk37a9AV0DTpvAEBKr0wDji80u6awQChm78JJTg');
INSERT INTO `cs_admin_log_data` VALUES (187, 187, '415a3c69QyOKHiLuripa8Mra0kLQK75k9Ciy6IuxAZoTkYW03pYen/AGWZEx95QgVYO58U7qzFLzT316XTz4nsMQG7vYL54s5RgdQjf5pcD2mf7ZNC/t+WE327DtknShDd18EjYLpc6bDJTuUISH5i5blEjtpoPSxdzLLU2fqt5A5+C0jv0GkvtT3JEvCIdr66iBpO/dKk2aAMJ15ygPb/NkuCIix6XlkRBLzX2FYKbR5e8ZgK16PL+jzpI0JVyLCHI/A1UsriJ9Qcd/IKYW54ua2cshVWafbRj6Km8/Y/U+PSByWCPvEJSyTU5KGXcQNK3cXrhBQAPIEftALEuiBbwoCxxJngw0cOwKCIoqWaml7dIcaC10RQnpXLDmQIxRrnhaddbOEu4H');
INSERT INTO `cs_admin_log_data` VALUES (188, 188, 'd081028cJ6+El4IniVvqTg0fQFEAqDDNMZGwVEisoJnWwWvmIMGQc6weeqO7bLfBwPzBvFS0WN+G0QpJjG/BmKy4TdUB7GcQAw1YWR9RtvGYnZaMJ2xqM7USfCuCtEdLJNSuICmpSo3t/b/SPihd8VkuGvWos8sH1kPfs7KfUI+f53b/D6oFr9SzxuGdzxtrTDqPKJV2a+ZPs4HG4ZPnLrA3PXoX7QmDhOEU/M/UJGcjln0A0E851vpgWDS2dP+9lOuj96Z1WRrpJl9ckmux4czjQYrJPmPyZUj/Et9psI0VanTZ');
INSERT INTO `cs_admin_log_data` VALUES (189, 189, '3f1d5ca4KGcdlTor1EmC7n6VTDXs/wCDuECb6TrdKyG6GYhuHkO2RO/SY2PNxF9qwTysOFqYYt9i7ijzcomDcjRLXr25G459JzUEGqUWv9l8YFSBURsFCZDOyLj9oSRWPzCfv0T2A9LKJ7IzznmeIoC0DuBMsAi5PWl8QD4mSb9YIyheldlRufETNcAKTsn29awBT/N283b72gkv0pGoTvAhaGHf/KSLUpGR64cQIZaXNNIWasBNy8fvTA7Im+zS41HQKPFIOJEGGAGCYwTYuCsOFsAT4Dsq01FQIP7PMNkYEDbb92DeqQaMyPmOIT8CpE6rchwBABnQTXqTXtzG/3NvBw3RtwYhyYbkViywFZ54FrA7bP4Do8ULCh91yh7RHDo');
INSERT INTO `cs_admin_log_data` VALUES (190, 190, 'b4fc7cdeksXhSGlrcDRqaXBdHvJotkEo7riabCz1ONG51DTEZXD0FYcP3bwdp+KHnL3Tiz+/NIBrEtQC8COu7wmXwGl0wb+G1/KKuceKW0wn1h8piYLXcZxGfjuKcxsUm524yH8VVhPoAuzPpDpg9embpFJI8wFTx1boExZj0Eup8SbHBel+4qTBEMXKyC8wOy6ob4QdWYg99mZKDIqcw5OIS6sb5qLVdVUSodkxgf8CdjgOfMT4Z1B0xVpK9ALlZ3kViYQnuqdiTshnYrG8tCL4nN2xB26T+pWqCGiTVAYZFM6r4Li+L9vUBINHiPz2nhZXSAffvMUgmp7nXKj3XKJz/XNNJGpkBpaks4ye4lF44OhImdrbyVA8BIX9fD3XsTM');
INSERT INTO `cs_admin_log_data` VALUES (191, 191, '0ade77ba62/uahsR+Y47aTwFFpibGrKZvpLnqxy8frgMxQN6V9WZ2MBpz1XnnwvdwSLvQt1bdoRY/jbt4jInyDGDynSdAP8G+7TSnlVHE2GHhns1OPXrmxq0lZZIOjUovtdKCIoE7mXk521YswxU9MYLtlMKIeCqWwk61ddqM+gT2ER8tbfYGB/ZZfX4x71mxwpYbD84TJ6NYmJTkFTIhVVqwf7JeVPO792WFmlBH8O6FdL0dVQYzNWsAwU0rnNEayGS/rcYCRk2Q61qK91PHQdxQLK+CdVrdeQyYrbxFP3Gfgj9Phx8Li3Kr6tXghY7WssZgvOCxX/QqThtqkaT2DXuhbuSLCm4Ye8koFW/Wv235L5JBBy2pszJvi6jaknurw0');
INSERT INTO `cs_admin_log_data` VALUES (192, 192, '7ec30e12U6tG4X5y9KAAW0yGVtU9vQIL3i5YNk7kwV7HAzrzeo9DREDAfqAHBCf1/SB7vxD+Gpwj/1c+mML7jmZe2iYTZAGhSWVu6yMIS5cIRgaUMEP5lcb5bKHl4Gn2QQbZ7nLx5gXxfviJ3TDDzmqoEwBQ1B16gv2CEHMnrgEwzRDySHBUqNrpvG/jtx85O/WZvBOAxvYspEXl1jaAIBGcVWSsvyZTSSYKZpENPDRpLIxIOpDSL9ZIZXi4CA8YpSboImsUNDAOslCotstRfBWzvKju6Qn0xPN4DPBpkug0Ow/3/jZFF4UFfC1v7+m8mVNYERVnQXm0RhcKIDh5eQmp5mCt+uCxscRTYZMMR8MOGUWdIWx4DoI2mhc97wSpIv7DcsQSaXgBft4jSMtiVlGzaVUWHFeudQbJVBZOEZleRjReh2HYSBPyXwwFadQLqAX8QKoahqlp3o/OpaBbJDLAcNVREicayktBd09vTXhYb0GFIycLwnEwtJSbJ9mvwA5m51I1/uXYsYUedtk8tMLlK34hKD9AEc3OzyATKe35LZI/2tVNwe7qdRFJEHDNwHpiPgRaik2e07rUhaoBmkBE7v1llGDSbqhSCTNWhxHznndKKl8');
INSERT INTO `cs_admin_log_data` VALUES (193, 193, 'ecfd8812SElyhav79W8C2W7UVoZZol8vB033opg41qiKg//Zunazg2Am3ffFU0wrxDqVnBabHufHb+gAJAYLKPFemUXCTjFjsk3SYeylN89piJh6kdNhxGk565SG+c3tTVbkvQ/J71KPeMGwykeBaDqEHBy1mT0lXnUVbrB3y6YQzZeoanFs7A');
INSERT INTO `cs_admin_log_data` VALUES (194, 194, '4ddd6dc2tzEB5plm1DQ54Z7UNReCo+DYStHZMIrMsp2DFgZbPh2umCC36zn4eGgnsMxSMozT7DhDVfooxDX2VKs5z9GZP0njOxjUyFZMZkG4goWi72rPhLLNfWUCv3JvvvC/YPkgVbv0VfOnmBPzF6qI1BU/QibouYJjFnOOi503H/AVPCzdxgvbm8wH3p6/uG9uTy9Mn4bufikHM3NlonaTOnC2LlJqzYa7uUyS1EWRp+fUdo/pgRfosaDoOTIm+U3PdlHCYHTgSM51phsqpJjBCeYI9T+ZVabSakNNV0Rgn+W9/MiRvPOyEOzFns4P0oNEzIIEvvB/SPbh7gIiyg');
INSERT INTO `cs_admin_log_data` VALUES (195, 195, '95e1f6d9YeKfshO5pTIoQjrGmlYwH58Hk2pkdjdD3+z15L7bx3fT27pClSt+eBppoMAz875bQJQyYEBWknZhUE/34FVAsiq1FseHVPUWdEbN9+E9MHF7u1a8nqOz+nThG+Fbi2VpwzU+aiSdDzNqbJsg9jssZNSwS9LoRIpn7/qwXiiYeFhaUU6dewK4WGQgrYj5Cxa01FIG8u5mHwohX2NkJkxwVexciswaeg3PJdtGfNiJzFHlWcsEE1BRmDqz2xDJEZ7T3giiGa1yvzryigDxHeIi5DAiJPrSegrYwB8lU214DtzZnq8WkwGEaUFumuwXCs/8j/3iO9T0Mi6t2fc6YdWnC35XswXNiCWsuSHLUshtKGkFkzinPkTX1AU5ZCKYWbtDuKfTaA');
INSERT INTO `cs_admin_log_data` VALUES (196, 196, '544d24b0yDCfJxPcWdGTOBzajPeMG/qWyr/dmBNmjBYBLjs3NBNxnpxto5grKEaWFsEiXOj2kds/5yN4Mp8se3+hkk2ebBEZDba3auEUSsQrsw04rKF329VM+yPjwYn5TX8/mYSULAIDc9CWOChxc0R9DjKZG/xLfHm1um1D2n88tYBtLISGRctLd0yJaGnWCRlE50YKMWtVO5ec3X9dwR0FnUNGelYeDYFPGNk6E+EIe258o3E0YIYoBr0OtPfq71V9drGiHadheZCuDid8O0TMDmI9WMAD0qqhgF7ax2afWRHlvxfTWhalVBXXcyvP792Es6+XLIh/j7q864j9e2mSVlRDAKip9M2E/OqjRwtkWu0uwKQMHx6Hig67qz/rgnb9NgOl');
INSERT INTO `cs_admin_log_data` VALUES (197, 197, '9b20f0ecgSjW4DpAf+7JlsJ5bU8x9C2dvDKx8sAuXtZeZ9Oo3flY+y3yI0/gR3qR+CMaIfFA+SyAZrYn4UcJ/823DsElcZEudSbzerWw5FsezKIs/4LpdNub73cjGBN6LygfN3cZ//Ge9Y/3Je0Ns1JkLZIo6CK4OXCC0gOMPmQ/iL8QIN0xWMJSdocdlI3rkKI2up8iWYIAusU4Nn05UUSQVeJMvRq2GOW/iczA4a0AznMQCciXp0aonWzbuBenvqqydFI3A8A2QkRqAgUGcgDNf8sDwpBxjAxPE1K4bq8m5wrBPWNpnYdLJiTkCWisihyQqRY1do3koF3Fi/ywSfNKumUZHQQm1MC+D0uwJZ2JCQrTuGk/6dU7FJTqOiG1a6Gzx56F8wPaiZvJxg');
INSERT INTO `cs_admin_log_data` VALUES (198, 198, '74512d49tO7rGel7dWk0P+pzAEMfDyN1Uii9/PRW7kCEQfnE1BO/WzhJlBf6hn+f9zzl2uasuUbyMCpV/Vn8TcERTgx5xnKwLItRaDVP3wbWGfYaHEmvjs+MqzBq93biYfefWi3KGP5lganKHJSy/lzEuNSf/xZqaeKpEEis0aO3g1ykeouksEPnouBgzL0QICcDUFcP+ElTQdlxrmXuz7JoXlH1q2NuHRCOk9p3+T3AqXp3IG80mNdi9gyCEb9nGVXDhhH4hQAIgXrtXVNyGEXYplnCJouDO3xe4vphBLLnfcs');
INSERT INTO `cs_admin_log_data` VALUES (199, 199, 'd03dc3abFeMOvBrpIIxVXIU0R+OpB8+LqNoZCRjHIqvsJwq21UwwhIKUelm44cy7LzeDOhr8DZE2DO3Zj04yKOPsMY6rfmyfoWL/CimBzBqeoxj2QKOjoBVxkGcsj24Zimo6l5BqTZHZq9XLz7NoxgrfQ6s8/qBz4DGXYZOxpYptRNNC5qWUhQ');
INSERT INTO `cs_admin_log_data` VALUES (200, 200, 'ea5deb88rkZ2jCl34U6cu9aBzm+ChNb1/romWyOcEUD+EeqWijYnutl9YP4');
INSERT INTO `cs_admin_log_data` VALUES (201, 201, 'a3bae0ce1HRU3mMqKzsNaFF5uFtTtxPOoZQUKYmTc99SNXMYxQi/UmY1jD4');
INSERT INTO `cs_admin_log_data` VALUES (202, 202, 'c73ea06eEDAIcNx7rmrhIyvjtEkl53IbRML6MgQl93MSUbkSzczaYXVFCQs');
INSERT INTO `cs_admin_log_data` VALUES (203, 203, 'f67e643fQfTTkRI2vvSHggY6G4qp5NIAsdRMGz+Uu0X+D8dbuWwpN/6jSe4');
INSERT INTO `cs_admin_log_data` VALUES (204, 204, '1644c0baARcWx53i/tdvJa5wi4g5wiWPkLTcnWTfpRHUtUYNqEll2FgT/GMJYgZvUdoimb/qtjrpcQubJwGBpJTcr323p7ThIFFk1Mlqf9ePXd1sKiyjyI0fJdxiBler/6SLvooRmQKtCKz4x9YN6Uo6q5bijmarGdkhCL3vFzi5Ue22tA76hg');
INSERT INTO `cs_admin_log_data` VALUES (205, 205, 'dc92faa9v7lxDhf6EIoZ4Yg1oDHQIkv+ycjxN/obBjNVFGTLTGcRcWgjN12H9w66M3Sx5UkGwRCaDf/cKFqfSIJSFkkmwtuPkf5yadWQC8DxoH2KOAC8NpQ0Lyula6hAZSJPdhKPJwEPvGUna/C8r0G4/iLPdN3MnyYhWtuqCsOdv/nPwZ5osA');
INSERT INTO `cs_admin_log_data` VALUES (206, 206, '16d8c4acvG+EA5fEUH468YJKbZ4XrdoxaO5i3hM5Nti33cJanSlinQfd3tq9xJQZbEI2JPY+eEKb7H4M1ilTFfgBrszIVAzdD2GAPd0e1s+X9ZAdT/nglcIoCeGYDHlwulqDvGrz6meQu5DOolZqguL2YZrLUkfQuW2wUwg46wR3X1CYvd6E5w');
INSERT INTO `cs_admin_log_data` VALUES (207, 207, 'fc2aa3cbaUGEbDbnigIsJ3ENkUg2ZYHa4Pj9NNVRt9gay4kONSeT3xLYBnT1D2/THdihDFp9Nf5+1xn1DVks7EwH8Nun2l3Dts2wRYABUgnJxXJCIeUvtX8LxFbvQejEBdhLA+8plcBLmOmH+IYnrB27+qu+3lxrJ41fpoWV8hjyPuTNedSqB+EtEgAutEY3719SeRbDodqps0pNXKd+wM8B7dpMjTKBw0JuNqqctVk+X3xwxtCP/qxgRr+SV0rP+d5J++bH6OfVnCRseWwwAxe1B9vxXnlo7BSv3GxWeeRSA0OCiV4Z13td4YE');
INSERT INTO `cs_admin_log_data` VALUES (208, 208, 'ec866df4rLFCqOf34i7p8JNavJh3ErBb2jyoF612OVlVtrRzIGX9GoZEshfxpAeEKxn95diog6ce8eTdnMmBDUxHs8b+izXgKHaOrjeeRnPI9xVMjCTtg6f1DclaNuMZDOIEhTbMFAQTsLUtzk2OnQRfR7RPB3Br4bgZT5TZ9aUsLQdIwsw6beOUfoyUcC04cOoJvVCAxriHLLLU3WcxQoApplo0sSBOi8dZWKN2cAhCG1q5NY1yh4GsyVSLHD/617N5w/c8xVxb0a5peGgtFMT51uY9rN/q/4cSRg5gc2t8AUL2+ZB6p6u5BxA');
INSERT INTO `cs_admin_log_data` VALUES (209, 209, '87b983bcOGcfh7XAtHQq2ubxqI6YT9BceFBfqnQgSCX7Kq+7T2zpyQsaECsP8pkFnPtkUdCJ1MUJYhTh8UE+5aRV4IkyDoPLlFaAoxfiG1/6cVMvxuf2Isyfcw6WgFNRFpk8Dwj0QJqB2F3bXxpqeeQHosHEj1xS4fN6NP8oQrTccGZGaEsyGvA8Vwd+loaqkeGXkJAPr2kEr4kfOjjDqsAM7MA/nVXfgASYCHBdDtTfnvhG9JM06iy3IJrFA9/PShCTHCObKDRDNvMOOND/BImTIMeDKRwCqhJvwWeL64M/sXRJ7ngmCZNVORY');
INSERT INTO `cs_admin_log_data` VALUES (210, 210, '87ec87faizvMwsoqjN6tdvZhU6ugOH9s9pLm+IOK2j5FGEB9ZNyEZ2QvGimYJQG/P//jQO5X77Kij5lvgT7zbbxDd45ScX9AcP/ZX6WARqWX7uipAHhoD3LHxcwSm7Zrye+WfOO8F7+zsAi5Gu6PmnH+NACi6vFvyzA5X3E9x7qPhgbPZWSTnKmuMSzznmU4oz7YkWWp2Irk8mDY1g2G5SAJSjOMPbzMVw0Pw+vUmYeKRoqtitklQBFbkNCFbf3S8639D+K8pfQkyb+cGarP7k/tHHY+3FHnCj5ArwVGcHRchxfol33oiHw4SUE');
INSERT INTO `cs_admin_log_data` VALUES (211, 211, '5acc7d1cV6uJsi3jRxKD8Kokc5ZI9k0rUH3Lo1kOOYTyVf3FQ53QjOt+FpI');
INSERT INTO `cs_admin_log_data` VALUES (212, 212, 'e22c9452FKECgoHIo0qPgsErX0JxGYPIYgkqYsn8cO3MOeYsBKhMN+1VKaCLL4HbtjfSH/Lm8ejeqmdjxKAGKvQ4+/+yjNQzXtVb0MUvooXbqa6MPEz91ax9qdADM5CixJg4noK7M5rIBQeBjl+kPsvHrm/t6x/64uaBlm66E5OL9PCo0TJiZjRgXWKgl4+IQXsJcdq+tdXngZzPD6UHJQg0bh9J4nm14JHe9kIr5icpVBVpp5Kbp/CbehNQkMoPWiW7xBUGj/d6673DOqlxJh1S4vY6PCcg3e5pVJwE8Uf20HyE70LCBeFP3eJYcVAmxl7GRiHQ4bSUgiQqUlal96zJT/H0yHbsmMQX8Y85hHwYSqr3fx++mpqcC15fd+WOZRd1Z0DbTZ/6gxiUMr1BFygqr3obIpcwQGCqL9dl9VKuiTQPcnIcJbZHz3z9Hf+UaZW0m7IpWZzIjWzXD+YsAddVfCfqs6jH38Qezn8X0aisZnvoLLB3oxQ3dXCbUPYfDXhJQz6g6f3fVizLov6i2/tikkRifJZ8hXXo7MZhW9MGjmwu6De3V+AQ4pZRIet6ULdR6Yc9eUfqhVjppWMmcV+djV3at4UJzDkA/O0MwB2hCjgVGQFjZvk6PiesRWUjGX2Q9ngnOcnK+IQC5bg6pyXWBMLhZqUkgRrKL43FvxanBCqg/maPVD43Qrc6uWwNWDwBWhDVZx/sSOPF3b+osSrPdE4M3qMtvyG3nHTHI4p5TjAKJjeQrlVmfP7IK+YWnEbh2dGMUIW5lHOItL8xN9t644Ha2fsYN0243jpOH6oRp2vRgZF2Gzfevpcwut/HxH60maJGqd/z0aZH/HRXak3D6uPWYfUSNmcfqs4N5qyvUSHEXyScdW8yux117AfQACLHizfUWQkXgmaB7Mof4dAg6wuc7AJqroRxpekDYkMrH2zr/dNk34eA14sryksQaqtsPzzZdqtxuwNs/iKe6B0BX+bkWXBw48LeyWTm2SSDgtOmJ1B7DImrbhGf');
INSERT INTO `cs_admin_log_data` VALUES (213, 213, '67e8c567irAeQ5BlHqJo3tRhaN2XKCkw/VGHxOeK+FUmwCoGw5Z/kBapElBGtt08Pu9aHiOERVsQfIAPuSarhIFq9DAkPOf7LYmBx8vibOQiyx6TkMm6jVRguOh2DaQO54mLbzGc83UFknqJIIfrUwpZ3qP1a9vCmcpN5TpjyLSG7wSoPDyI9wwMTgfeUZZhBLxova2PgoKGDKVdj45OAEanf2MGMggyWzRer/nBC5HPv5TxhaZGanY4eJStYu5ZYXipwuI202zOT+kEeR04Tolfn1gP8VGWxbt5LTXXwyg9fe6PfBlOpknWjzfYltRUpG/IJP0svDlycMvq15l8AbfqfBtbcs1WnDVi5U9459eD+fu7lqnMddmxI4Mho02C54a/9PMwCMAneDm26n1Ba4aSpH9tJGOclQDEYeUt9o389dpNZ5ASUSsZr4J6zpgZywjLOns4b787epGF/DhLutybITEflkjGYLXqye0DhO7tHTBT51nU3iJwmqF6jgp16fbDIptPE+hltRzKEQEwdzBeKxKkXCiV883qVXVUyTGkbXvFaVGetmT30IWoULB8Frsya4NCg9hnikE+ol48wqiAK/4tgaC6upQnZF0i8qPeIUz9AS/cCTQ3Cw25rNyQC2MKS0520jB101smgnHBWnfL+j6y5UpwOoUqEi1a2N8wnZHl1GylRW93UglHUeHQloS5vhPXslXnbGswB8s1eGZMxtGdVQchjNfIjreRtyFUibYgO/Rd7L/+prt4kUYYlOmfaHe+OxXppbkXIw8AvJ048KhPNALKfy3e2cp3+LC0aduN1DyEKI7gSF4jXWI8B7xbrs2BQPAVQf7ca8Rz7ebLjZ6OYyPs9QgrWsMbdW72FD4d4SAK8d7fgbQTRnElFjLefwtgBTnq5zCrBkaK41AGrx73i24VntQVx2/HVdmcoonh9Gx/jInk3qC7DR+dsesVJaleFG9lAMAKEHW+sF7Civ8y4Jzx5bVLqae/FF5vi28+QxCVVjACWv3L');
INSERT INTO `cs_admin_log_data` VALUES (214, 214, 'aa4fa31cbhC1pIORPn4DH4osGcvxIDeMzdO1PeqhQyAdBcWEko34GSQQuZG+EBiicJUgNFHYJ+Oia2XfVh4woGAdu6bfF7m7W1VZDZ+UUunO+nNmD573JQXiOejVAKO4okdC8x0UYLcHq8uF4btSYRpEiDRuRKTLZ9U13/wPK9n49b8DFdvwmd+YQjtAIbu2ppYC8nMXDSgrrCfeVi6J/efx184azhYcIi4WF1VERpB5p1fK/tMls8hY01cqhboZFSpiZJ6ozLIihK3T0cG0hlYUWmQ6EXTobidrP7pkVKBn4x71WmyIOEg');
INSERT INTO `cs_admin_log_data` VALUES (215, 215, 'f2657a20LFGgLncTlY1rBd5hihTntZgtw4teNcAriXtWmA');
INSERT INTO `cs_admin_log_data` VALUES (216, 216, '2cceef2a86jcZyyjSWmMqJysc1z1rvuZiCpKK/rf7MiOlA');
INSERT INTO `cs_admin_log_data` VALUES (217, 217, '45b5ad7fn+Zy2MeBRcF7GmkgUTptQSO+04Zg+EljYQsqkA');
INSERT INTO `cs_admin_log_data` VALUES (218, 218, 'faa0eb3avg5/Wt+0YIy38dtXT59IAzYvvmigC/hEECX6aAQO4yFjMbpd');
INSERT INTO `cs_admin_log_data` VALUES (219, 219, 'ac3870ddsdezzE/3ItGKxm2sJUjV2xyLkJlRszSjyOw5Guj9Nh9o59lhkAyLTx+7zMthgpp48KppFPTI4tj/Sth7uzELzO5UEBQmc5a6xagB+RtZ/njxD67iw2yY2Fq9oHsGAl9FTSQO3mBAcnFubo9UDjwWAK/AwrYPF6FAaiBJZLU8gCgo33olJ7eBkhhq2O9bmMSHIO7Umhgk5m+y2Ts0vVJeylSqPLq7hsU+6ELQnqMIY3myLp0x4hSDY5Nv+HbePAGkZZZUArWgoUCNCNmB0x96AUpLGml60LypFcMu6p7Qyxw/5mHyEsIgt59h2TEKqKoW3MMqfnM2BhzTV/ztTqxIAosG0fyPttkx4fEjpTEHZrERistvmYjAIcBqGfCvtkeqEStAbdT/jA');
INSERT INTO `cs_admin_log_data` VALUES (220, 220, '981f298fiSZcAxP3Xngvz2Kze/M9XJ8/ovKS3fFdbvIeX2SM9HlSZxxa33ku+VJAZXlHHCfuzhKXw9ul5eFlM+U6p11R4sNm5sU1YzxeGZafWGt2ip5a0PAR1aeBHBBy8r+/01hiWB3cMOKtGyZLSZjnc0KyFqE99Y2IAgplbKca4CGdgktcUQ');
INSERT INTO `cs_admin_log_data` VALUES (221, 221, '08388e93RKbcqGGXiGh14WDOs73kGlW3XEt69CZ3DmYaJyGEr4cbFC3InESwD8rox5EkKGjNh00pA4Co1PNe1B03JIauEgN3ApPFHJ9BoCMsBmtPLJcvJZhKrPFeYT4ro25QOjLXjTCnmq1vNsP6f79qWHhyBCfKJBXEYfbJzrpSin0QD+OaiA');
INSERT INTO `cs_admin_log_data` VALUES (222, 222, 'fdc0a290sbSIbfnEh4sT62LU69y/OalrtkM3IwqbZ53h6oHyQ/l0hx/Jc+OS7KXo74IX7a78nR0kH90FcXfn2DqR8I3YMd6eud+FDA6Sc381jWKdzDeAuDkuTI/hGUOZl1TLVBiLP8rMr5uC4Lcn2E7qlI5SBgubNF8hlvtP0unkvQl08Ov+HNlNF92j6a06UPmyamMr9RZKrIL0/DsC42agxyFMaqHYfnheVdLwq+jUXoajKZzekMsVY2e3grZ9qnHd1OwjdRs0hgYGoUzGVyxh8s9VoVNu5/NfwLnseaISreDvwm5ZWOMpFLKImCHw93KC9LhvvF7iBuSgWQeF9w4pr+Lmd4HzP1biDPWc0gtW');
INSERT INTO `cs_admin_log_data` VALUES (223, 223, 'eef1ad5cU6yC1fH3UCcif9LYTDwQzbcNg5h/zuWFv1XrK9qA1Q0aFP9HXGgmV47nPggmzKgxXAXGsfZTHb39gFAqEXs/B5l34chD6Kv/dX59zPZRSYG/dhLb9qrHhQjCwne8fpQBN4IPzyaweKE85d/nWtjCUhf4tNRpDyZ3GIb6IUjfl8VU6W9ahfw4eTqgZNPuZTYr3JO76+egBcCKOX8zXPyR7BJAlaFpjLFTHkae109HIiQKuaCxA+MntBTK/m7kdXNx/tpRH2fcvOnxcRQyBCGjJ3OW+0YuLstqXkto4iQmZbSlu0bHn4FuiEL24xArWSMytyZOeeC1wCj5e/V7be71JLkzcnEZEqb5vJh0ZbABBNqufA');
INSERT INTO `cs_admin_log_data` VALUES (224, 224, 'e39e2b4dIHqmBCrzOeSxi3+23rgtfhD4QMFVTbLvPO039GxNelmU7HtSpobVO+FmtNILwzd9vLEIJfeU81OreU4mcB/fS97+/UxfUiz9C9XTJBdFu41VL6j0nmvoU66VZhuPMH+gU6ZFqP1xa1AlCt8axRpWdcz2uIPw2Qxnff9xMa+pWqjwONFK3BfZSrr3uh0qg8w/j4Jr+CxLTGIZxomZ8jcyL19NrhihSb+BwVILw9Cz7anB6zvU1C8xFRZHZr9v24ypHRG59Vx7sWjRu2/fHAAFQxpC5w53eVoIoc1NXz5gZUB0fzT7FybPxyx+HOE7OP7ePlKfyjRWVgL495kUipd1ZGpUMa5TLQHM52K7R9NYBP/KCA');
INSERT INTO `cs_admin_log_data` VALUES (225, 225, 'c9a0bd3b9FkjEesbjHfEBG/44YbGNTLin8lWE0utckyiRXTRNWqeGcxhFBom+xur8FqfsrMBgUSTdK5kIwx1VuxJBGXDgZrbUV5h+Wc8I4BqvOaklJn9iDVtgf7CAyKHIPtBStWwtn2BONHYcZWrU5lPQ1pPqlO4NEGvRNyurk5S4zjfr4Rn5XHou63mWuw1jU9aivH3s7C4QqJmbZTUBN7HLShpdXD1wAt54K2RI1YwHRxxWeOIvb0nmwt1T6HtRQDhNc0Y64shRwVR7YQrjKGfG5K2V1M1r6hXpiKbCmv5aab+2aQNK21Bn7KLOo1qYBdlCWlgPZjH4XBb40u/SMYp7l+Vzeaug0P3VVlTto7sR37r/3dEqQ');
INSERT INTO `cs_admin_log_data` VALUES (226, 226, 'a8c0dd7buW74fVTKQ16BuN2BpAbOMHp7b+0+beVXhOnPnso70ZX6JX2Ju+h9YpYQdOTzSjjfus/7ThV1pdTOOHqwKCePsYseKwGRmEgGbVjk0Y5K34BYLaQF8ezzmJQ1FBFX1X71Ur13SYESVfB3sPYzcUxOlSFUKl+24x2nQkEcujpvPmgCKDesSumOYgv5zcJ46aqInhxJtULwrCbr5/npXmbSiAX94i0mSm0OFOiCBkPzouJnuCCr+XtSY6qRosOiZLU1Abn5eaj19kAmdLFXwO3bJtjzjbInfCxa0HY9kOcQsQQiNm2VZBSlpSrOLYfQor+XTY9TfTEqk0JXP+4aYTOC16d9hmc3VUh1jDXjJGVkDUaruA');
INSERT INTO `cs_admin_log_data` VALUES (227, 227, '0dd8a83dqs/MtRmbkP8V/bMeb7zNFgcIMBHy294+Gk64v/WG/sKrADPGWdC5ImIvyZdPv4BryKETmtX+vnFhpR1XJ21ufPua3gbUkifwBi0LASpsS1GpZ8BtjP22t7ZAXtXBc7FWtmdY+pFRp1+vpf6ATxVj/gu6OZnuQ/Svabdqix2JcwpFx3oVJDPrQMIhg77adn0iTjr0YT1PIXrr6YsSxhKVqdVLaJFZmZQdUdIzhMzfYQbEbka2ffSsmH60TxpsypUnrd3U7CDdYpXfTqJisgxOi9mjrMwf0xDN7ndxdiMUYpiIwyPt3it3kB9Up8v9z0mJNAtrwfZU7aikBpYoOgOUEt2V74SCW86GYq+Nl9WsHTj8LA');
INSERT INTO `cs_admin_log_data` VALUES (228, 228, 'cd24a8300J7QNKW0Z+U99KhlYQ0ZzIZQ7OBqInFM02EPz42eoT9Smvapdw2XBzQZ9kQdNFYL2Y3JR4ebhXbY284pnzeMEUsL8c5BMrP3su8ugu4baxHRNA49en/7wJ6e6MNYhoegxFDRGSVa3mchDj05yx6ErXG9bjFIQnfA8+NcjqHew8zCXiuuJOO6c8dMuKiur44s3jC+y0+Lyw1rR4NsGbPBccgBBM3Ef/ScA0smc2KT1WoxbC5ti4tA4NOPkBse/rUDjGvaqumJakJTuA93dhPOWlw8OLNai9ayvqkODQgDTOHp488YUlSiZfEQUIsN6Awk91BfyzYNn5jv1xcjyMdiHWhizaGMjeCTCuNcsVWGA9SZHA');
INSERT INTO `cs_admin_log_data` VALUES (229, 229, 'b15435dflkKxRkPqdNkSN7sLghF8paYoFlvoXIgC9qNDmAV8WIpoYkRvcWN9v5LZ');
INSERT INTO `cs_admin_log_data` VALUES (230, 230, '0a230061OkGsunY37hQE7gUgtNOAX8xd2TOow3J5CFdN0GVDOD4g3/ptqx0AR8rlhg+Q5HNEmnu6UvDcgNUltiDrkTodkCUwxMRLtQITyTGgkGAzB8Y3N1sozC6rNFziT3qhUrYCY+2io9jlt+2qU+bRDs3IcNwCuBKTNsh1m6ugDQlE8KaK0X/aZAAbhH5KrD7Y1Hg5VOawZSWP8mCQR5Zp9rIbqHeZue//5Otps4V9hiZo92yuSk1ohsj7fl3M6HtuMq4stRLk2G81leFXeCelJEpRn5WKdtligdGZRlvFirLEwTEO/nZsEkyesHWUgQyCmz/eJ1y7RZZhrmQ+aCycxyoYn+2jRCvZOSMs8MXW7MeL9LrZZ2lD8h2I5ubg0ZhePeIgzX3rEmCVMUFfjxLTP1OmZxXTsc5rcME5+uYf3ChzLLNn8cXVoS+rDKvk36e2h0m9cHdwqvBwup1HMonJXBLrxEPgOxpJDyFcaVSbdl8CEVU679FQmTXzcdS9E7YeZZ5gxDNfv0QD');
INSERT INTO `cs_admin_log_data` VALUES (231, 231, '5b61f909IkGUtYb+10QJBfkxCWbmlROKWODnMYNLG9+2RoUiEta63vIpwjKBW36wHCWllFnfxWuNI4sRcNxv9JX261Tk5EQpPm0uq0weRLx7v5C/BtScWi93DSidMz4c8ViPdhl0oWnk7epKiUXiWvoqGJmNaX57ejdajlwk4aWb4GrvtY8Cvjwf7Oy1AE7fbdbrLi0QHZ69jgNooW6TDZyotw9ISF7EGqYQcpiLzQEGabiRSOYoo1x+TCHz6llyD1ezMWcpR+ShjNzlua1hlV3N35Ywe1eKgEPavUJTmCjkzWXC9LtsFCvIFEyHRo+hoHyrTXAc7AgfANcP7iqO/68eXfZA4STGGGgm++ClubHyipFnGfl7VUuWTH36Bf01/T1b0IJaXSWPjW7mvXr2uFkdycM5gurH/+2aDlL0VCGTFWRljlAKPGxCPfusJc96fyBZKXRFczSWgh3ZFp4VtkDQzhr+NvpeVvijIm/ARlJu4x67F5Q8rxr8f4NtUVmTNhVAuV0N');
INSERT INTO `cs_admin_log_data` VALUES (232, 232, '7ebb3e047iLOrccMHjE5pm/Dt++79L/05SBcnHpzXknwnFW/5L53PJs7laNb8wDE/fZ6xWUqQxuchC4YOiDa+WJsVnikfyAdc9McCVN1JQbUmrBiglSHqUI');
INSERT INTO `cs_admin_log_data` VALUES (233, 233, '0192c600TEANenm9EvMxexwGg1eNRDUjMJHQcBqF4RgMAFbNVauFQV9NWY4PRz1X8N8LHu++LnFzEi/TDUny7qjJ4JTmV8dvavP7o8vUr/BfZ93PwN1OZbwWnzwnJ2MxFoLz6HN5Z5FqHy6vm+ZRRAtlN6l1SyGVo/dyeD7EVIPQf/hDpXIl/w');
INSERT INTO `cs_admin_log_data` VALUES (234, 234, '50a3dcc3qbC2rY8rS963k9RkSTTXWcGZ6922TWzD7ALcQQK8OwgCYbQKgAsE20CxgvmEfEgqxPeh+VVMEX2vFDGv+S+rIVgSTz4XIpEqePNFnI4Uc8r3kYRldr5ZqMX+ee1mJ6bt4ekO9SuTlxA5/emIqsQF7vD9/xfQwr8di2kjhFIQUDFEuMWhs+X76IxeqZb8Yz2W+AO/WcAmWV+X+xJ9EZlAIGDPz7sUG/a94fMpXU1L7zvQskT9rRPbbFFStkKgvYcPj36UOxynLzL7GSmz9FZFTe23Qa7prZCnMLmg3vb+HCJxw0xnjOwwELcZJFi8bYIv+UzzdFOwscEmOmlghO18qIf86gA7LXshH9KC26hozjEitum7GpL7fY2Ds3J4Dg5FUMK0tPsIsdINK5MN33sX06sWqV9EutzVTLPU7dY+fG7Oo4vht2nm9+XhpiEPzYIutoXGxKHX/vJssBt0wjQtnijjOe6ov41J3Hg1Dhh8mKw66SAmLKC+WRi3npWAPKmxAZD8MATo79IrGTIgDYl0LZ15WoQA37YkZPnfGM9Ma7OSAHMxysLHCcbdJNxN2Of6Bunu93CBSvNwSNu4eI2BFFm7bRCMbrH7YqXh0eRVi04NOpFSOflXhEvOsznQJqgT9pl9p7mwc6vSZybCsp+9rypr6oUdX3Q1/N9DwVCxYHMLSIwxLtxHTjr3gHxVdksKTa1T7gE');
INSERT INTO `cs_admin_log_data` VALUES (235, 235, '04daffedhrayX9ykolIj+SKVCtqr6TT8EQ/mt7N1rtd6x0SOJaFKzMFJhFbUoEdmGrxVI0MJ3SVUvrMxLVNACAvD3mBf+rkzqzBbjoRRmuHrjUMaDst1/Gs5YHw5WAsbSS9BuCDS3sWn6+ybZhjgBwCPwjN1');
INSERT INTO `cs_admin_log_data` VALUES (236, 236, '6feed985/yoEeSyE6KxQQiCk4fDv+P0CYMCAH5te8e4z77HQ1uln5PIH889joKeqXpG6bWV91YszuQAKauuFwfwivGP71aCtEmjCCilRvVrvRVkI9F9+tI5y+ZOLMgfk6RxRBcoQB2xs6QNUWORpmgBb9NHwk/EYH8AkFvWP6u6muZr9sc0FDBi7hI8ENDc/giKFWAx/r/PvWDO80lssgchXregkw1A22ukDDPY0StYsPNxm1AwQT8jXBxZRw8B7HchT8cHW5oQ0CrBmfzh72BMyXMjSnpSFyNL4tPYyMntuFokFyoDY7pUmK/izEbygFOEzZmowp7pYJoBPFS2UZytVF0wt4OIwEDpGEhj71sTNFho32SEO+E7JQ70ZEuGJMKglIhzTZ4Sz5eJy1Z879RAVcoqoTQOvX9SBEuWOj9Bmkmp1vIT9AmSq9EXUSoGwwDVMrEn9gVm1EUCzUP/1TRoLYs0scmA9HyFPMNud3d0ZPosg8LN3ptTdD1EzpXduq3cZJUJWgTsbyatZ9JsvmGw0ig1IdtBnH+0nUxkXGCbi8vkAnJYmijcWPBXad4vA4oYv3Td8W+DuNqrW5Ox8yw6Q8sp0y65TWGMJj3g');
INSERT INTO `cs_admin_log_data` VALUES (237, 237, '143a4afbn5rotdYgcn7Ry7BjGDb8fEC1InKBZzJtTDRvapByR6JnO69dCWPxD76CG3NoCQvY0HHAX7oIcNo8bKnhYhqSkvS1BfDrhzZQC2/lQlJUIp9WVoKjpPg8v2N75lFD2QAt2HC66rk0beHRV6oevscPmVkhc5xAgMC7lGkAC9KBuoe86b40aztB8Vgxd3A9MPmWD5GkBJPkAOVdzsonV7/Zb/b9ZtpNt8Y1hVDIM1wHQNGvsiAoqpuyu1BwMw/pKMuG0a7prxwn3YH5mzwgUXuAbUBy9YSGm6s');
INSERT INTO `cs_admin_log_data` VALUES (238, 238, 'f97920caxQ50mO5dASauizcn4dngTvcJjPa3VL+/q8a2knG5pevhmVJp0B/EftIZN8mMCKl0dyh4DHOLNPjjv+QjKLXMUOXS3npdd77BacmtH5cG3yvUfx+B23lHK1wX9wmKtlBW/BxcF2PPlmpdFlL0QvTa7qWM4UD8a/osnoFxL3oGkiP/bd1aDf1pRxe+Mh24k1zhaN60Yt7qeKQpcte7CzpF1sqOqIDUofI8HUru6h+rUmSHixa/nNHMcxh4qoXiJwa46UGN9IMEb50YqECiIGVrCjiOUOZum0g');
INSERT INTO `cs_admin_log_data` VALUES (239, 239, '350ccdb7RsFWT86d3RYUqxCmrW5N4znqq5DUjV3Vdd3eb04sTHiw+ap3HdPa3F5fqFk4LTDGEq6KHdinALD56sjluxSbxvPAIoRWZUNnzBP4xqudYkYYxzsoI4xREVJQGrihuPxbAvWn4wICWhs+HdD0wEdkA6LA92vV7CsFdBz5Sy4tSLvKOr/ZtTmaE5L1tlAprJLQZw9w5AK7jRVsoMm4fa4GyqQNN/9rN9xu1u65CFpPJ98zkvz3GC/RR4IsoMQc2l8PZr3hRumZux2gSTSJHVRuuXlvejUl1HY');
INSERT INTO `cs_admin_log_data` VALUES (240, 240, '97a332e0qOUe+02IwdyBCq86TZghDaoEyFlw2upFnIltynE1XOHoTJ9cTOkzzJCIxDfv6ywhhah5UCCetDF2ZM4NwN1LnM3qHIMRuUAKZcGbCik4CprcIRe9l3eoW354wn8zehA1Uv2F2R0aZ0HUJzEQ7fsQ5DcSCY2KDGBITfUrS/pbdjwhLHGIMrwuSMvxw3fNjpOjN6NnSwNwJJs2ISE7qdMPFi2jaI728nWht481Xu8wXrWBkAevk8KGGfNPZ92UnbdxbaGPZQtuy24d7Ji7MUSOWIwnoVQuvaY');
INSERT INTO `cs_admin_log_data` VALUES (241, 241, '2662f803RsQ81c2prWa9NyiHRmMjxP69Xa+jCxCr8RwDbd/4HfVhECtFpChz2XoozGUwIvg9PAFWCM5MQK8clhAG+ee4cgs27t3bj+6slWRpZPqeX7Hb+a1o19fDVxbBzY9C8ZEBiZ8A53gYg24hTSYKWaVyCWnrRejKx9LvnmPF/qNPlG65xEptpzj31j3TAHDU9+3K5oRvVH8FziWYUlY40aYKH/0xw+NCEyWMtpQYBwqZBsd9m7Zx8TNAc04z0GB1K7JPZPJBsMS05UlngWXHfMA7k5YWu1b4OKQ');
INSERT INTO `cs_admin_log_data` VALUES (242, 242, 'bcfb489a6V0TJUDdLYpHE0zK4CpUyyySX/cec9bnAoy5026Sut4FARpPi2qjOfQxsnWCYmT9Wu0cIQILYgDMju/tTZAhvQaVige7iphSvc6gM/5/0NpTu8yIMjWsJUj1FGhDxe4PvTGjVtRH0g4cr4Ry70wxfg7v0Zv3GM9a77l7o118/taUsSDMSGPgNBKKG8j9+BJvoVFuStoK99QjqVmMj7yBlS51//+7CejECqEdd9zEL7whUOE9ZAvqusnx0ZtWMZY8TDflUSBSBliqAumsvrDYraRQpuc8oQ4');
INSERT INTO `cs_admin_log_data` VALUES (243, 243, '65fdf37aYE9f9c3j9u9JzE81anbectC3FCGSizCaoCJSRXpi/aF6AGbuJHxtn6sGaek355y7POCRidiLTrnx+O/8qu6LQg0dsDO+RPZCXQIn8k8nNLP/bd3wd431ci0BdDrEeOZzPM/KBUUTxHt65xHO8CNW0yhDTUe8WicU0b3IGfNLmKxg8A');
INSERT INTO `cs_admin_log_data` VALUES (244, 244, 'd4a79a6dYNAJgKnuegJRCWkpVtyy0MBGVwglt+ZVCZlZevY59t4u9iiLO8RDfkruaBv0EN8/sRPFkZuZqW3YizFGSvXFfoj3MyxaeJWb5Xl4KIDFvoS5oxCgL8af5sgrYBWdm1ZfI4ggGgy7Ex3Fbg3kH8MRGvpyIr/q1ln3w/61rwp103MfDw');
INSERT INTO `cs_admin_log_data` VALUES (245, 245, 'f73e945ecaDJu+Wk5sGm6pOSqDnt7Zpz8oubqBdhlY0n8cfQo/1F/4wyD1feqV7rZZlVAnlzUEO2TWRgWppzwUff41+WtYGQHen2hvclgb9YQyfvYgz7xMrqUEUt1/wxQmDaA2tGkJNcnz3Q0YOKVoRsv/ylZEZN1HcaQnosMX50AWUhKmQOmw');
INSERT INTO `cs_admin_log_data` VALUES (246, 246, 'b86a95024Ug5w0h/Tnml+aQXAt9mLy+hewa6LAltcOJF02blJ50QZ21QKc/lPgQ1aW84Oy2kjlU9agRJP8k7VZN+KV6wA9KPPjoPrBVQdWJZn4BxqPkiufli4cP4zExOdkpXJANtljWWQQFEqbC+bMIfYK/mNwul8kMx+sLGUnzs3kg3LgjjMg');
INSERT INTO `cs_admin_log_data` VALUES (247, 247, '6cf6e121w7n1xuTLzrVs8j2lYiGzz+VBkb9t4N9oDzOwSP0Jlk+A9mZKDvWcyUZnmJsNHEcYfRxWbHtHlC5LxIgtT9jL7BYQo1Su0a3BrlgMJaAa0K+LKmCTepMISBbr/OGQkwHlipW77S+Nbkiv5lpw7nmi2wzttMJAqaNZDkE616Er5Hjj6w');
INSERT INTO `cs_admin_log_data` VALUES (248, 248, '83079682oOowlO2iQ2u/mPDlMOBcvQTRog9nso53mAbHJ6R6LDD5z6VR');
INSERT INTO `cs_admin_log_data` VALUES (249, 249, 'd28213a8yGtbSYcTNxOQC3TKIrT2Crc5JSNMR8RNEF3eEgsyaCk7OMof');
INSERT INTO `cs_admin_log_data` VALUES (250, 250, '18f20a9b7e2nn66gPjUkVKkZd6ilW2OabMrh4Ox2Doppxn5YhZF2Wk2KuVtCaNlSCLsmf7iKhKxCAZxCv3eICf9xyHc2PgLDmjPY6aTDpgSZV1iohuF+50zgA4v7argq+xUg6DdTDkKUqTZv6+MgjOeNCEAY+0RcDCutBrhppeYE0ui6hmocZ8gAbU/gFQoC4BSoUD+LUUkhDrHoRFqNoI2ezgHal5tJqA8sLsU2391iaHYfYM9kaHItq5ftJ9WH9N6fBAAmN2iTfQ6eazPau2iY8wChBGXZ8HtMuotAzCj/ZHAdlf2cQc2FPGlAZbdQUc2sVYktNF79czk');
INSERT INTO `cs_admin_log_data` VALUES (251, 251, '2a47fbe104YycL16/n2MPAFWHRv/ZmiRuUgOvD0agUokT4nm/+SlK+Uf1hQYtbBT6T8Cg2OWEgIYooFW4AGdQDMFnBEFq9GK8hKJHBsm1VTZKqouw2idBYjAldt/rvn4UAPtb0bqxT9f9olzjyIqt5Xj3aKc+DmNN8711o5OvF4LKpOwKOCVrvaZgRrjHr7Qkhp7/1nzD3qAt0oEl+q9F8m51J80JJcTy7ZKsgaGIP0VNld0eDmIwYCUAh80sIdUd4XlO1fAvuNu/jyYYxfWOGvwh4egc+eG6mBxHDQ8F3u4YV3rLL2OgPsIc8oc82+v9R0XqDFj+Wq6TCU');
INSERT INTO `cs_admin_log_data` VALUES (252, 252, 'c2587a9a3nZSmZkk6xtclqhPLciLnG+wVaeB9EE+Y3GVzjRwsWlmDuwFlZxF3g7qOGXVI74akyrFs5hRJJjF1WO4iS80AOghH7E6uMwbeQUB1a+F5LHqhfcECvz6VXn4d9RiAy8dWhfuMxEfXfPXIULpnVlCiKaJEes/rgEozrEqMfJJbOf02ohMDbCEMXIGQ4dqMn9qNr62zQrlxmg3kVZ6aaDR1nv3VyYnF4ZIRdmZRQMSiSws0KzLiah9dvdlui9ePbSCn6sCBG9ooZOLDbKPcyQhCI8vO4NDT5cDeKd/LYrKbSpYnpBLYXrF93ZEPmEtNrDR07hIDOc');
INSERT INTO `cs_admin_log_data` VALUES (253, 253, 'f7415208y7IkopU16YEhc4MYtwwY6lfmQeQ2k5NQrUVRyl0KPAOluMcI825GxcTyHI6kxKhL9uqBerSq4ff0jGKG1fqcQPDJzR+rs/768v6p3gymKbWASFX/vAjL4WfVPuuIbbImAVFE/q2oPQ6biqtSxgqZ4uWLieGUuSPPgckxHokz6h6T89NeVSNKh0vZ00b/E8WjJITcqgsrOlQQf9T8p9ODzHjr4XywNjZ7j+N5cdQdb1uRM7284V8wFyR6nPpmcvgZw6LN5IVMpKLBuFy38aLogEaZx4VxZQozWSs6hhVLDCjcCNbIQ2IQDEnhEdRTCDQykmYNFLo');
INSERT INTO `cs_admin_log_data` VALUES (254, 254, 'f19e44505mw/xpiJTmQQeRgbz6a2jdPoVjhVX3jZU+LLKPNkuGgol7FjxdT1a1zgMAWI/pWbwFP00r+qaDQFVqhm+brptVEl5ZUQI0lDO26ssf419fOrUzXMPeiS2uEgRZLevRWeLz3FC9Wk1S3dM0817gcCBIK+NszLsnURPusGmMBQ6Vdfu3JwdntuCIGZTGuWX/QD1jxQMBYDRXIsoSWCVxGxwvCr2gMjXdokBvidGdkeoZyF2YZp2ZMOFnfpByUixRu5eYTvf/yqpdIIEJXNK4FKQfYjHhsQ1KvXQEUFlRG3dpQxNiAShzLFON3DjtbL5/VISjjEHDs');
INSERT INTO `cs_admin_log_data` VALUES (255, 255, '5c5ce58aRS8R0zbVt6Qht6zj2s2hYLh9Wyokl07xnKwDw6Lu2ybk79Na7cNcL3EiyiYIY0hZq0pxigSX3NNSy33v2KPaEE3+7uvhOHbRl9IKEpXwIdFAO2M2UCUyiJR9FdvHxHqubcuU0XDdIAlLzM/rYaO8dHn7rnsuGp13+9G9S3Sz3JHU0ecAp3Hxv/zjqpIkVnrzuZb71HGI0Dz2uTlp65riNpN7ao2zWPRADwbYgi1mdG6ufgwRgWr8G0I3pfxnVmKOZsXZuUYIXxErdDF3urFFgTs5yyJrYk4vq2oV4nPEAvqtcnsnGdtemGc1FQd1bkV45KOHQy09kHrUKG040zRxw349YM8eyJfOyJZg10CUtop50vcRj67zoZ4');
INSERT INTO `cs_admin_log_data` VALUES (256, 256, 'ff5ab16ekGORwh3MvbjvPmNu2pZB4kdTOYkfocZcuEvzzsbcIko74v4gtrd9NYTCC4O2dL/zhdyVuzL62lmItpEW7wR4mEjq0OwacjdGC99cKGKPab+VArufKbtPqqqT1+Fn/dhdJT3Hi/tTguofH4+ZAtbuZzodaJN5TtF0MacHItPMk9DIsb4yDVHkqHD/gMKCWnkeIDUbpJCqMvHVsEXM3t5JiNqDyK4j0FUjl+X7siVXTNCUcLzXrz3lNmHMQPIuf+zFNGPwx5ozq7wuLPVzrTsHm1ZS7ebGBgs3tXe1iXxE0gTFUmX8AV0U+s87b3lw2br578DqDWINulpqE+GboglZbJW2DjTcJjN3tRCt5V7r0/l3wqI');
INSERT INTO `cs_admin_log_data` VALUES (257, 257, '67b60291TD8vB7tAzYC1x1SrA+Kj1lSMrzRV8PRmSmXt/eG5LPIde23xsmuNwPklvGiJ+MKu7gDS1n76MOBLldUz0jUQ8ULAE8hsE0NBmP+1ytFDzf1bPeDg89b5UCVAchYuQw6m0pnCq3gq4S0Sc9Tu38yozaAnRChQafhhejq4WXf6pkoN6A');
INSERT INTO `cs_admin_log_data` VALUES (258, 258, '34bb8f5fsbK53gmeewMl7F21DrbZUP5f63ISH22cmEXE8WJ3s7vk0QzD33/9uP8TRk426YvsTY+s8enqju1VZPDMIKNqZt/BG1DARR8V9dcWL6K6z8brSyXwxnPUYWUDdoCuIiKCbMLiY6hJjoKT5Dn1M+NdwX5Zqwh2iaxyvH+OY0J3al7M5w');
INSERT INTO `cs_admin_log_data` VALUES (259, 259, '0a8be90bD+9wsdVFpVYgmrycUo5Tm3098Guq873GI8SE/ZEn4Vs1HMRJclQlqeoNGPdqOa471FGSE5CV79RP3Zx++q5Dia0UxyTV/EH8kXyf90d05RL91S5V1Ca3IN61c4BMV3fTHp4i8robXFtK38dQfgBgfB2riHQnCMiDOXUWBCL5YpPMkQ1tahx7V4nyG/rhFj627i4AMBSKrY2suYagPOplKKRvWwjlHwjnnc4hYlHM+kdcpEUDOJ4PCh3sPks/XGDXoPcTvT9fDtPggMdOoKihKxF1aq2FLSkWt2HkmAalPbvmHHx3XTKFFDi9fxz967wKiRPOE64zZf8+ZIc');
INSERT INTO `cs_admin_log_data` VALUES (260, 260, '6a83fd2c11P5timhLvEX2OFbQGfc27HoGZMF4TqBDa4m/KqnqLap3d32nUIOX5KMPyADaCYM/K3bLB4ohwaj5t8oZlxSMU1wEjCvn20eBCKNelK50MiHbmY0vGtILs9vWLQNPgk09tOZz4Nyyd08SEqKdreM8hDj6i5k/d4wyhylI9P1Q6pJQQwPxFCloYv7pnJwZeosFQVloiRBHc/dbmCQTaCBnVD2xgmwjyIxEQ8VV14T3G19qEYdUt8aBJ3GBXkZiGwNjYWAAQKVvOLAch9bJ26neleTVl721RcoODBjH2Mb7gwRwPRR0bmo2gnm3Me5KliC8Dd1uHXd9Lqpl/Y');
INSERT INTO `cs_admin_log_data` VALUES (261, 261, 'ccd317d51fZqDToO3W1sfGy21OIv9JVgi8DUCRo03V9H9CcUwBa0Bny6d+7M7e8bg7Bh771ojws4IKALiSJSki4HXdCEzdLI5vE8OQ/2kSrPrAssplpNWcPbwOI3QhRaMjD2TeOR8j9M4TYomzMHtcJSox9pCEZvuB5++vWUiug36yvoFQmBMrSlQxqwSz9/5l4hMCEbVPNPOUVvkuVHttC2N8cuAYNA367QwUVvkuFxWAx6zOt5MKj7EWF1FMew0ylQxUDnaLp95AKrA4LnXatSJwVwwzvjtbtqmemSxAG+5XTkf7ldDP22xjyeNO67KHYNoCkwK4LPFUWx1ggg80JozCwThJFOb1QWJVRmIQQJFmOVAfFjn6r2yB0e1z5B60GLrQaKkZNYfhD4H5M/OfNz6ARTu89kIQuvgJp5');
INSERT INTO `cs_admin_log_data` VALUES (262, 262, 'c067c459XMFTfr6+O+o059RWfCZRZpjS5zPdP/UlzLfBFdinU+F8j/nrzOPmFvmbLSd+bReBolWq/7AzMVYmDzvL8Df6rNOEtGGUauBFt0ieE2bEpshf5Fc0GLEfjP5Ss96k6UTylPgWvkgBQFo6gk4yVOUex9M51SRNLB4H/b1zAn+v6/MHnTpTZq4ycWr2kWYe4NKUQGOrohIu/FmzOPHlmQmf6ypuaK7E4F607Gwz7c4VAg++EJtHqSd0X6mdE4Nqs0XgKu2qaRZyKWei2AqEOXMYbBSMBFJwvOY0Af1+vJRqEvrodqRmcvh1U5SXHB32OCIrS7Nr6tWRKaK6Bw7K/3GQYVIaOHsbWI3eHVyE54UXGX4pqyEs0yr4tqo5jJJKkl0Y7cHndKkd+WYzUuxbjcndU69uBrjTHWeP');
INSERT INTO `cs_admin_log_data` VALUES (263, 263, '31ad7951TkuPZT8D7Nizq8hG9Qs0C6wMNbvWA/5QojrppbxxVGxPmcMWtKZ076NRb0cykAR+qlvDI9HDm2IAtA5IXRWGvHpJpWMu6sCdjcUZSN1wlKGg8KnJkA9vhv7zyOyYn8OgqLp4WQEIAoHRP+zFeYzY6NA0UK/hRp4CLRy9It9NbAt+iJcswxjmhfArn6bRNM9QOQeP/lPN4jtOzOGxSSC+1B59zoTL/miXUuPoQo+IBhESSnUPf5T5cfN/j7980qdKNvluFU5WhfZuSMTl/R8AB0VEGxWSDHR1E85RJZmr94W8xVVTAAsSTgFBAv10dk3az8GIOwO7HsB+RfkiB1jWukb4aXGj4xL5K5QX2IXRIvOSunpKEljSuwP1MoFZW7WKljYdy36yE4dAb2dWYsUh+uX2nALSuk8C');
INSERT INTO `cs_admin_log_data` VALUES (264, 264, '03d613adS7S4n+CqLyYCFNSEH5E1QDHh4uDFlDK8wctqP0AcRGm8dmXTfdfgeX+llh2ccsQyEe0DjLN2jOzs2ywT6nIX9fbNReddyxuc+oaW2zS12Y3wqRs3+R4PEAuvVr2EDQTHCuANjuBwzn2BZUi576UfkGAELUVUzVwlti6l2uNG4pKMEHjXbLkulJPhndunQhHtwwWKJ44HfDhdxCw3y61jF4WBFQkUVdE9A1F2CU5yjpYzVTYLhSOKvcErJcOZdPLVbz0QnlLX6dFHpl8pBkGXpLWLsjiYpVN+tNT9CobBeJm+l6p2F2K95B401XhSsixbA3/Kx7JtZV5VZqJLSr4Jtyri37a5m2tI4xCRvkAbgO8Y7svKWEz7q5ziIL2TK8K8giPECqhKx7nsBXl3BUqfZ30vq0HtE0e/');
INSERT INTO `cs_admin_log_data` VALUES (265, 265, 'a2ccd3b8fuStEbsgljPKDKgVHqtJZ0++fGPYU88ylfoeXdp69KTygcxf+Hi0SFHo12nua/IBGBxBgtm24w4HAzjGxlf9OXe3fXZQmzsBbBp0kZzq19VycOPFgtiLD2pfoqeYe+fAr7Sl7pv+mT1IzfeahP1Dn32Eyfy9HZ9gUs8enOciuHcPc6ERXx3dP7DLp/gEZBzGuKc0JmOyo5iSA4Gn25Rwg3MAR5FeBj6M88GXyEfNULsafqTKSPnkS3KIjS92aMNGekdvZjcNqV2Bhy96uECN7V4cH1MkadZRIacQPdwDGD9d8xL2R7tI8M+JDGrNRAQumWGSE07qtlWQk7gRwfin9QaRhijTFKZ+I0AWu6Q1n84g6tYTaBLgEHNHkpBmxc1aJL+OzIJPJUW9dUd/gOdDpqet+STj+oEa');
INSERT INTO `cs_admin_log_data` VALUES (266, 266, '45b3eb3fshxc9GJi0QnKkg3sPiqFbbProv10aINfgO9oSoG70CfdSNVeKAWpr149xtWAea6Ab4fdDZIyeR9B7CtGjITWGvMicAEzvsMkdSlF6SqhCrDZ99z0wPTf94hRk+BQWhmIG2Ve8/LwWS9OP0sqYYSGn8IhANia4VmYENTxsiGyNW7gK/aQZNyIkRgE6G9fFBFcVn7AnKcupovT6zy5fI4TOtFMZ1VZEtojIpC7r2I+fpMtgN0bZfKjEQ57GWILQcAJgJkX75JM+73AyBBtHanZG+byMFFtqwmoODklEaQPYHfxpq+tyYqYLAmahQDk6WYfcQ+YLoaH8teWIgq9mgTQ28cXwIG3OjrlPrYFmR+NmO+4mAojRhgjTffdI9hEMDQ72J7H/d8/g0eC0j+DdIAiTD4baGYcwaNmBS+h0gEqCbCPaOnmYsw9r2zNKk4tYTnEUQ');
INSERT INTO `cs_admin_log_data` VALUES (267, 267, '9b0abe6fkrd/sqk2EjEEZm7Pu5W7VJpSgSHAZkCjsKd7ratZ7oR9EmbYzxOQpZ/pbQ407CzYdnyHR6XyQ7VE9FPGYAncFKh7/sP29iD5u4sIpWV7wheCb5lpercvHmGB4xBhq3NU9EEnLHxSvz16PTMyvYN6FQSJXpo15LbTuUMfDOxGXCIzW/48/nRcjVNo/0NFug6B6iA5ef1wOntp8yEmMClLh6cHXOq6/BxiKvQtgvcS5uK7RFMStt/bFcrt5qTSWSY58DexEJHD5MMsU2S2LwnXETlfm8qzMX6JKgMWChOYpz+QfTTkc0s47lxEdOoHlRPtt80erJnDrYEKH419EkF4TyVXcpYnaPZHSe2eTV5tAt/jxyoYVFywb6D8mRgvMKMq6+2iIkE1+47csiKdcZE6YvfkiW0SWYqI1AAUfr7EoF5xAoWJOmUzD+eZGQKNq0GRpwvtCfPk/FF1OKiXXAvbsLCUqg+nhu6zgCnc0kT75IUchtH0bcv01O/L+Vm9ALKeelEFZw5F/DUS9w3o1RL1FkSXaH3m+CtukUP3');
INSERT INTO `cs_admin_log_data` VALUES (268, 268, '5f1e5e3ePy5fV+XThXPBkBKn/W+O7Kojtlg2Sd0utxgN8b8dh3Az4HD/');
INSERT INTO `cs_admin_log_data` VALUES (269, 269, '64e94764rN7qAmPQBdFqt6KfamXzKnJAmn6iAl0MgpsI3aVBQatwlndY76TzvJ6bou9EKIIMGDZFSmtglSqC8VelxvPwwaXeK5UTyoT8G4n+aNl0/75jSjKO0vB6WFKEF0aO64Q4VDxw7bb4UTQABa5Lz0yNzKGOu/3irWhZ7NB84EwFjTOGbhENCAje/PwZLreKFvg8wLz3fRKq6RANqmGMf8fxwhsK3db32ZeeY41BcZwDUIEwrjmo+WlFn5jp/WGEJ3eAxdyXoS3Kzgq5wJBPCfBI+EHLsurckrhjGZrqH8fOzOFfSdMPNLkhMZw5b7xbmUQjrpYOdA/zaxGGiLXrlBmnRBDKU9HZ4GVDg+iP+PFG0a2XZQQmqmLpHKR2nZ2IrDbT2KtCEjUK25nDELqEWVDhOQdLa3hsNdM5O3GyzBKZGlKteD9H9Lv0AZxATYEBq1A3CEBYFbjN0mGOUcvujQ22oOHgZsFHUVpyg3HgjgEDVUFbBufXxT7eGa6qb+YcAQ9jHoHSTjBM8KKcYrwukXhsCteDnN9TizF7HYJ+oGWsjH31FyMxxU5kibIvZd3F7TWU');
INSERT INTO `cs_admin_log_data` VALUES (270, 270, 'dcfbd656zY2ALJX1TZ8etraAAyfLABZqADAxKd+KJZIE/eu8FanRutPo');
INSERT INTO `cs_admin_log_data` VALUES (271, 271, '7de5a893lKmdA1kvt+XIwV0lLnku6olYNz04hzHGNVqi/2b5nesRBqCoXmsrkBVqw9OVEB0gxG1eCmDVDAN9qfd21+l5zBqo8AFbESDRqScm6/kakqKMdyLEI6gd2L3fMThoV1+6bg6QHsi4g0CtdGfRSSAK8EVliESLV4gPxyM5hM+x8nzfCEkwPuaFD4bn57ZI9I+1KttUdosYvW32XjilzRh3JAv50rxL/Z9eTMvL2LYpUxLQmuZtLs55Z9TFxCmi2Ubo+f9bTrZh8sMZTrZ6BS+UYxDI3fKr0AxY67KdkmTK+uumEyVqq+V3HAmbUGKdY7HcI7IJ9oZXORzCKDRNSeEPtZTlFHhDLIjMhZdTTayeBzbb+ZdwfEj3M+GYcMXqoNNVMRbmpwAQv4sr3PYySjJa22fWFUHFPdhpOnqIif3hHvIroDZHjwg06TmupUPxNNttA0o1Qary9PmaPODRLHRpXaGw4SbmpRlTBBB8lKDW0TkonFz4FirspR8q7bo9');
INSERT INTO `cs_admin_log_data` VALUES (272, 272, 'e0aea7f9uk2m2uUEBCcKjXxJg7qKvBZ/zAlaUyk8dmehO3j/Dvpeg7GwZ0UZUKSC/3Qc3/VLIBuqp1+y9bGBw3g2CSi8Z3IiWGODE0XOLuGTmdcAmz8oJEMQVqLQ/i4/aDOhB0YmjOKz/1+u78zEn/FQ70Gb/sW38kUqwzncruCbsgU6M61V47omPHdp0GSGO4HOAFHPvA/INhRt7uYoqihlTLjCIEiLxhnZt6/HVbNxVabiKm31KF46Pqgfg0pt4ARagLXgPPMnVp+6h2wpe8aDKiPVovsrfeowad//yUDjLdDx774fXajElW+vRhoVwIeX/YVwxkozY4GUHslFFU1wrhMGQIELtWh2K/ECAOUG0uBUYmSxQkbYL+PBxaEW6puym9RnL4NWiwewbLCv9+S1MEMar98dMaAuUx0jrZLU/ANHz6T3ePZQEHQ7tpqWhNpqLj1jxuzjEPNv803LQ5opQSKUeEndS5vZmEmL1tIcZEMDm4cjY0pLegIMq+7pZaw03BNdngFFJ6r2UfJNDkrmsBpkPvuEn61OP/djyaF7/8tBaru3SQ4f6eEx2+NfPT1NrHrsG95jLfWcX2o4EOXDz+YHiYfigqkLLA5LFLX1c6AS/sFLBxRME6tL9kyNgFXwlkoB0pdsofUnOx5w+4VVl4xc5K6JK1ZWAtyCj/mIM6CUTOsNe2VRNRYKfhADavWYFVMGWg65TK/T9FktEs7B+pdP1z2w7ytS1ATUFgs9rQ8OMpm9KEXWwnNTnstOliZCABEYRUTDlhRgaGclC+O8lmdqpdqu7K/+pKUzHsUltuR9fIfNsfw31mgSwzrOhDPECXCb4y/GMMxpB54UTrKpSRPsyA5q/fHPgzLu60FaodJPQ0h3298jnzPzwjhJ2QaydJtUDulRvDgXHkbNN0xC0p6iaZAZcB+V6Qv9wPPB1kZhy+A52qwotWwSvKNbgK5grlFggipY3eNMuXGBAc4X56L8AYh3+v3gv1sPIa7tvo14/W/ly/7Y5SBq47sHhQaIiN0jCyzkHOd/4RqvpjukTi9Q1AuZim5puO197QkC5bb3NEU9ozCXUMlJ3wBds+LnL2ch2AePhssMqDgUPp5ybriAfmlf5R4Z9ReBBjCNeD2Tk0LZsV+nLCQsm/p8rYIh2FcUxZQy8NyJVTtduHDkrR4cDGXLH28UX1hWzlFcaJSQSIJv1g2302UvLVCfQQW+Ax561JQWMEYMfVoi9AjNpjfgsqL+05Brbepk9nH38JG1AfwDhzxASXfx+6rVhKVVhDFtXS63dMxvtLf8TeCC5nKYRO5FRPeETcKsOjREySJNhn0Z/zFBhqV0yKSOGVLpPNaTkPAUNHp5jV2uQ1ui0gOksJJycd89gpiK/IWt7impehJ0vN7+r3htIQb0dySGNeXCGic5DZTNRsSr+jY+DNIncBcq20nRk8ewVJ1lfPl7ostMGYfSyaJ9X6DNDpSbbqaA4DO+L0bUKPwQGp+B+dYLrA9Fqddq+suMlfk+vXJOqcODLPTshcNHg3Ts1uvUn6hz3CYsik1o6cLwAwdUpZj6PWyU0HwP8YXD42x0fXg3MGuxuxxgUtWM3N9axxJ8h0W5i3TJU3WnOcJBBbYrrFw/Xbum2RmX/j14etdk9h03gRylbGo/BiHD9VL1FPmwxfr5HuEB0Xn3NSuNda/+bqGaRPzmuJVK2KHNK8M+f7erBZVhkD45vZ9OuG8oCo0vhfDKVDCtCKpMfhu2USda9/c36wq9LyRnHOw/nqFMxZIrXVGO3wKglThc27P0QNn2DNRwHE+u7KI8dHrpYJeN/0CBBsoXpkT22GZqlWlX7ABJ8nODhTDf/+RMtuvby3Eik7GJz5GrJoIHEUYta25EtFysejVAiJpSJQell3MjdP4itE6G8HYrDQJ0xeFNufHeI4ti3FG+Q7N5pD2DgJeThAP9kiSlA0g8l2HWnoFAGNbvUm5fO7t8dAEJdiAlnLSUZ4R15p0jRhXmQQ0jNhC1KLDsQfENlh5FCjTtAySo4VZP7a2J2kBHWHk7O1Sw/4furhRdOzgqay1bbdGJTruOwlhP+wvzCtriX6FoRzwBUDQwXYsILuco6/YXb+RmcZd86m2ht651oVIQdfAZ80R8PCzRiUHutE0vYttNtof968Qer1aZ9M89OjknGS7Xzv+WUibW6R3KB9RcZvA2i1254VbXuQXT50gNfGyhfejmFxg6KpJQX805FHTFWuHWSrgC1LkIKkF2zdww03I4wBMjT1rWnQazQ2iL0vz9FXltor8nPtA33xvIM2VRENNX7CwyzAnej3Xv/ePeUsRkqwhhMDZY1p5hOGcZ2mgK4o2d5o5lYnJWx/Uvt3z6pAX3Usso1MyzW0l6L0khOplahddGuZOV3+6bzSaxBarbGPZ/bzQ7xO4UugjMTksIOMaMe4ozzcexLfgQkPQaDSPux2yKEG1MP3I0lu+4prIsta5ycbkzuRY23Sf8+CCliknlFJav1hIumB4euc7mm3YaL/Jrj2Yz/o6pCbU6LyS0BfToU2dsp21BkpGm5MvvPhqyQ79QO5cjcPn9oIL5phcBrUMKKvU94EA3XkfBqdcuqA5eFQtul/jLoNCn62LSXWAgXFqSiRHLfjPl3aLzsPF0wPwC9P1hmcOkoe+82Cy0R2QBoy3tEHn8I9brJofCB5bgUISBNu6wqzMTIXnzxFlO3wlgNvN+EQ3FryUPaQVsl0fi2kD0vgKcyJNGO16KwwNXsaHXw/g+34HHFApAL1qSMCZ6jwceiMr7/aZl0PYclAtjbZ8OqIMLuIaAfJ44TWPNAfsot5SY4wZfZVmSJzei103q4bCg9zuidHUFmDz2CBFCxBLReuh6WcnJbSgeHB/D14K3jlMygvLfaNkD8exEvwQdXAjBE96OoVowY16gOcNAr1m0RYRTF6Q2LpvfylcEwANak96fFw3nm3E7Q0No+U6sxsMK+c3OxC5h0F+boTGN0/yXfJn6UEePyPatOYnAui+fUV70REJFFhgmwNQ/X1fmX/L4zGASXMGSIUXDNgHBroj5qzCh6x9NYrLlreCPbQSPkgjs+6U4JV9RsFgWdag7USGG2ro42U0VDeC9C4pvvhEmkAymZWUOM6ONW6UtJJLUtbITNXYYYTCWcUuKyK63H8lSPFOjHT/R56rRx1LgCquoAKSitFM6NX29IybMFLnrznwk4lxW+luy3m5T5Nu3DCraVYWojzxLLkJReHr5GeNoac71PnQEBEuTPambwIUWi4R8cfHxXnb+sR5KL62DmwdHfLZPNADdZeQODaF33YsiETEcgH6h9n4zWqsqD81neBgsWKMlC4FYMsIK7XLuzToSFXnHHxSrKYfUzUScZT6zXttilnET/GJKImiPeiTmNg0Hv0JIcOetL1+6Uw58U2MVv41kyEhY+3AXmNDfU0Kf3NohqieiJJE4jqJ+xtkN4Thso3QRR/qhiUF7BkQKVhdwrSOxUJ6LnEwrDFOZm3qoQsTyLgK7e8vQAQ5tZk/x0hYK8pyHXrKNI+kv/VWMTpq8FA9HGx6+2BstxEWkOO2F+7o2c0IngNa2rZfGuPLAB8qRiCPRYVW3NtHTRQn3glo6EAyxy09kDW+lyP0Hr87vj6eRvU/9pOFn8G0ipjrfhFQNxxzyvO2wooxjlC+Mu9t7Elfyy+wMUIt0VeF8VhLXFhqmhG8aYfKWJhZO+x6kM4FfKA98J8HkuuYzY8QCh1v5fUWbPg25FB0TCvYvWtsGM/unuOx6uzwjGanVAm6KywRc40mHx4cY4CoWCUTrkVgq9Pb0ozDUaAuAoJDf/CS3WIJYDKwihWfusSTpag7jVnaliIQrd8WnSI8Pfw1Bn7Cr2UHRSoWhj0bkRRBTZLUUejC90IhTAtaOhIOGG/PwCWl4PY5xD8GgsScxsdaCudpyKNej7fiIDz/BB1EUf4CYTqhhiPDg1G6d3JwnY7OM0leyz3lMNpRzk/bWqx3V2wEOL4O8cUO7yOqrK/2vJLfeX0ZQOBDS66Xk9AV1pd593eYhLEjJvqp2Tyj7OSc2cCuvxJXW30JaQzSpm1bDM7n0Nhi6csF+yVrlTVlA97YOZveF7Iu1webCOMSe7gvwFEdew+tLtoYkZv+koVE7RYK88RbHiwZ4veoonXaBOa5gKU5kwjtH0jlcxInYMpNStvec6byMbEn/y2sM2s3iRpzqVJvLIm5MqxaFRVCKQfB81FX94GX7aCwV6dmrOfNmDNKg77igjLZc9L3HdcnilKruIXXgyeEm1BoJh4MUZfnQWpAcJk2PPfRDl8yH3lcqKlllIa8BMaUtQyt4ot1z9+jXJxm7rPiKty/EF5D2hAVuCwhaFGjUdJkVrhwv4hLGc8Uz8AIpBY4d/eZBvQ4JGNekMjmp16Unyj9e2mt9vjFmImsWYsvgz1Rl7jU85lLkYLFiQyCXd+3wdXH2CK12pcIZd5mflyv2LOBBxUYW8yqtUJ/PGa/Hj6zu7P2nBqerbm1/6m7mOZeLjHMyCFOGPEyrX512GoXvu4MT4DwIK+NX/OiYe+vUgS7cATu3dWYhuWFD/Z1fxJttfXRdtcc32g1L/b9en8AIU9qYS4bEs6JS3/lcp9HWdg+v2Rqp0sMPId12PyxkrSjO/ZmjN2keAEBsAzdIPekbSJp8QKjrAQib/7roOpTGFbvBcY9SaJHcwWkWatnGr0jnKJ2Ecaa3OD2q5Klt1cDkxZt3DbesZMYEERW7s2hUx6lqV00D7w94OD0Z8vkaXjFdCAt3V3rRwFNuTYaQv44/eWwNkQziyLcPfLPKIpJtRxswrGJG5V3+rBYv+Vw39tnAgnyiCdt+IHAI90XLJAN9eb3LVTONJC+UUsHPVG/T+QOkRpHSuczoE+m2I/MG4VFMYmfuJIhGAK6O2H7rTDYpthi6rKiTqY+QYS7Xpk7ww8vZbkUM0x0Y/S8MecHVAJFBT+ysIfNGcPyQTCERAcVu106hoLfYqYYaHfLC5vLOU66wbduqvC0fRHyVKjsaQFTO+3MBVnubWjbg1YcFmYSsHfjPW8WbhKIxAJCANuChh/xx6YfPw9OfbkwHcO7Uso2UK/koOInwvrrqBD9TDQEUbIVG3vi4vOM2uxqflRXaL6z6hw/pufWPknGlYo71h/sbjWRUpq44t0bEphkwcYTzREr7qk+uEmOgIRnnVnMYU2tFuO0kpnRK+T50kVIg5CAlqwV14Hc5GwD4IqyD6c+vNkkA3ojq8gbKi0RdxMDPWTuBD0x0pVtZB8+wrCILx44lNis1UJROwh6/PryUEA+bCNOih4VnfUgtzYq7tNXkOFNXGxqQdLVPjmNTFr74evkpwV16MeGVwRTSpCxIaL6OcoIRt97Yuwo8B3SSoYq7pvtaq0MGcR9/YGtG5HN+ytiZYTxrdOGmHFBfkPPnICR1WIuCPpEW7KTp4bn/w37z8nCJ3+cqAg+IoosYuhK2ZKOokQkYyUG1QCVp123YcX8pA5Gnfqi6z9ptVpd7XXR3F5pVHJHLXZ3ohVw2JqsfqnWZMWyGw0ypXK/yMloaoFMwcQwHWHHq9lvZ+mYJ/Ff/ANMBnRNSzC2a9gVBMT2AnufZ3SeKqb16BsrGe0Z69oAjTHtL2RDJNd9WQ4HRBUdWoted9g4WA9o500qh3/6x3AOeVlOtdvAUZi/UBqjz/iTEsPNskq7wsULaHiBv6/tC56I42xD4o/pn+faJNZpnWvixqHwGyT89ZoY6aTdWnZmSQYVaTRvghhp6UhaOffvOflcYK5outKeN7hiwcSDK6GpC3qSo0D1XlXlNffQ0YHZj0bCDk1XN0duc47RvqqJI1eNeI0shAzCOfdwuRbVu0u3/Jz6e2lQ5Af6rqxoQErE4zwJzfQrbKwUo8aIfJL49SFDw13Uk4fEh2OTTrlaceRslQrT7VIVNuxIF+3coVJTijoWs55/hSPt0QTW9ajE1XEBLYxu6xzN2tD9s9AP7vGkdFjHkydaMiSjyuveTWsTy5o2Mq4eYiym3x+S0JVpBIS4Mo7hb9e3WWTfH+5HTLlG1OnnbRGEPRUnXdCZE79tvyXmyigwGs3kb4rlIDBoYyBad//uSqAhaKzn3SkTCRFEfi/tx5j/AtasaNP7fFRyfpOidCzooH9z8fTwNZOxRkZxHISMK3fLt6x2f8GJtzlTmzR/HtmpiCfciASU5iWFOaIe5ZMoMjxx8CmG03p0SgFR7RbML3j2t0umAdCtHYQMlUb/2CaTc8KQK6cYw+Hie6wjhVZg42H1yT+h4JZMnSsxR2Co/9alT5C3/f81+loXU8HUaCd66bCLmWnxFZQmVEyAeyQscIzu36R5iytunj8eUZEUXfFwdlBOc8DKt4Y63ZUazUZdJCkx4e7vDoH3NSDsdaVqhoJO480CRiXDSnjuSnA8LfUTqPGGXbUV1VddjHhic35fWAkufxXF5s8Nzho1p9Hm0+yk7fkTR7/QaL9khUX0ebLXwx4p/421gcPxcnJnWcAUPHos29Knkt4Y4imZLJfQ1hjDwhXf3H5HmyOOsuXQrBmMD73P2fOrJaQnKa67igj+I0C8IMOGJ/amcOnMmAdh/vXQZLVhx1mALo8+qs1bWodTPobZh8nKJ2nSmoZGOq55nBOvh2cxkqyrz88qqFmQDRrUnjp3Jj8mff/f40T2xxSbBiu5fFZVK/MIC3tltwpZYKo2D5on1Tnd3H6NzKKjlRiaH9AcL2OU/v5YphquY2IWjVQ5KTim3wwvIxuoRU5iSKeYCVTlB0LdUF/hF8fceUQwOXH2XEujDf5mM2n824N4AbEJnqay6NsC64hL3iXWL0pe3FlBK38hUrCwyj4cqBUiQ4F9MgKWgHT3kDHBn465vl7q04l1sLyHEy+CahuIcakh5ZU+GXaBsfZBYw02xaERxYSwxMx83eyk1b2KQLJRxe0qSrH2FvNWO+feLIr/qbaUqXvLrKHKvsCbrVkH4nyWkAC6jZQ8VHnx698zeMKEhQDq9XUVYRk47hgrMD+T9VQMSWIKWeq3L2jKc7wcEjnPQWHli03lwyle/igfLEjX69CzSCSY9hwYZ4Y5D7Rrv8DfbkKcTW0UdevTHD3GRQVyYzRWhXmwPsEqlthZlzy/fAigdREXIT2iP6LIhDqqA/dOVb79hhMX1z1X74mfTLPs6hTzINMx4w+ZOsN07NLXblZjDyprv7De/gcT0pcE7E3SjIDhiyWHuzMnhD314jqe9DXWJmNb4ODlMoKQwJMS2UxCfL898pG/IOMqwiSn6Z8Iahx/8DZ8xqHB80XBtg+ZzR4GUQpOC5xaPH3cJid26z28p5Nxe6cTr6ZjOhHMXJXTzgS+2bvWescN5LyjjSHBmAMOjUO0CLByye3malWQASo4QQzOXV2bQysiRueZjSE4G6fkmY3YxBveU7Y7b7RV4kNPVn8eeWWrxK+khQa7E1ngOxlbq7Rljaud3aY3mRVR3+tEdkTQuFyqslsjjuAqzxjHXO2IYs00yl2gNJ3NXr+bNdm7OWMF9eYXHC0Uv/O17gvBg0r2AC5qxAprA2nzL54iRoFXPhLPWiImcGIIwd6ltSN9IaWZF52u0rWvUWmR8xzh89xOknmwJcHa0Cj1pHd4xOpjM6DlRH/x9RcQw64959EctclL5koE2HYAf4gxtOYem3LzwLnyY8mM8Ha03Vmyw8BUkcxwasUAFflZ2rNC3SzxN7x1MVmnJBdPCLjnaH+V1NRiY8GSBSo9fDBvHVcQW1w');
INSERT INTO `cs_admin_log_data` VALUES (273, 273, '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');
INSERT INTO `cs_admin_log_data` VALUES (274, 274, 'dcfeff45Ngxl52cV3/JBzs8ymOahXtbQfjHARpP5OWj3wcX+BZifVK/VJJsddK2fPD3ioxhfxnhlIXdNuxCZKuKsrrXjFBb+KKqcg+40208P16BNzbqFWcW3yoZvcnVJCio03YsnUVZ/0Lj2NhAxucRVn4oV2BlGuyDZAVTmSalspRqBlxwwe+AAaRcZcRPy375Wr7MIKSrgQcW/W+rEBiYN67406lkPubEfNhYZmzCYX78xbh1hnZS1iCuLSaaobZJYhlkuRM7RLpgsu+N4yezas9hcYKmrSkT0L7AUIvY4hLsocSseu9HYRjxw/hqeZSyUFETaE9M025YbJA1kOdsauSHt6VNck0bugEbrSA09UW2lhV2YxGlIFsD24m6+rsPVJRyFZLgGDVi9ny/B3N1/mq04wix/Q2bXL819K2bTx9oPy+eJOTPlFDBW8Nx5GS9ihxotclKsxo9ncxMRngJpwlI7kP+S53GsOxXsey/gceHmc8IEzWFL+ndE6pznQQC+Wp1HoajVS9fS80vbuJQCyea9ts/Tg/wfPptxaUwg7IZuXF8Kvo7vh2iM4A0rJ9cGlr6QXc5yOilk7oFOoSxfKdBznTnWmEqMfTSrLdPabDv+BT+eaOYA5TYG3qIrpwV36UG5ZCPkTrk71EE5DEq2N1kFshljNYBPQkYx9NGaZJBB8HyLI7C3rpqrR4tROxyqRBhJaHzqBr158trl+khnvHT6ouy4kphDGDRYXr2rPSEVjBQ0EjBQUZO0eOrm3zvX7BVRmQ26An0ypZH/WvoPvH6wuhAR/WrALUYnG8ouyFz14vLH7h63EkkTqns1sh0Hijn+9Sp/5s3UddoqbcED/mReHDxHpE6VxYJmnR9VRL/wxJkMlaXwJZ7x6ylbTCM5/9cQYWYOOEYy1D3RDz33Sk0C/DzfalPZOTq4LPXUHfbfbGrI7cbUwBBVWZwsNk4H3E56GnXTxtKYtUeH5kQg9WFDiid8dQ8vU/dQWR+2gYbaosbldX+df7Hybs7cq8HRcAI2dyFMGypxmMUeOyS963vFumJ3MkdEEscTG9qB2mxCA55Pos4tuv7cXnLIjQktn++u9qX/xn0ENtexfGEBp/9fm8B3VkL5ksYBQFeTbn8UWz/pcDj8+G3ivfVJROiHrDtkm+gfiBsN7hTS8KegJarWPOqiajrALGb+PHvZIiMTWfpO38q8vK/lu2Qy3/YfVX9VyzVSpAYdy8WLA37Ha2GX7J96SE9b78GuRrJgvCyvXqraZyLkECCL96qvkxtK6L1h+oHb2a48861yXeW6WtS3GZP+EdjazaZ4t2asjLKE0NFZGigEyyCAgMKhTFRmvTFHsbMRrcbFmLfGhOiktYmXM0EmexxFHTSOnqRLPW55aHY9PF/lMQUzmloX68fd8A51r5n5dCBtMYUYqIVO89bFUGBTieOUrX4LuczB8xdpJdbKT+tzsO/IH4jV0oxg91JDxNb6pBIHDck96SUmkQruFWvEx0wNERbhfP50W9W17eUkyDwO0eEVGq2cbEuf0Pz7NApWHJPTYLvwMRRW93sc85hh2wZVvh0m1M8Jr7Vs9sHnvFCf2s+ayvYjO0Y7Hzq6egDcKvV5a1qksGnP/NoYPCrTBAea5pKacUON/nsyFEOX3WCoNpZv1PKboa4ViC1ulTAmUhIzUVEd/na/EFvypd6u92mJL+UZalFpoOP/eiBKvLZqx49SmxM+lgzaBpsceuvbfQrrtm6gX5ijPtJtxgTn+ygaJfRz+zZXwn/hZfP7T5qbZX8zIAPpXMbqiK1QaXJ+2swWVOOS9sswMRpecDZv6qOwjr93h0dkujNh9u8bd8B1qpA76MRWqxCKfLdTIcFnGee2mrgvXBStmcaD7I6Jy5fIpWZ6jMAW6Dz/BeLC7G4VbPbzmJrW2Z8slLAdNZ8VZjEmDMEZRxL10vpC5fa3XJiKV+VWtdwApanh6yYxn7ZK0qam/ztqZq7kL83kfIIZFPHak67yzXbkSJ+cAso/DwZcm1tDHa93le7uF2zQzhRJ80r3qVeUhsAHeGGj2Xp4TAV9hoxzuXJEuWYGjMwCWvXRCzjb4garqHYSppS0Dl/R359l6r8sTwou8fSAz0KHQrgCClYQ/72pgCDqDOFngpAXeujoolcOP42kpayUBxV+OxWV2/8+GJY6RwxWf1b2upEJEJLJJK7hk30jDzzxJ7oQK3dxkCAbCtXWos59DFf7ncILPXe6TZ1oignkjdmbF1R0G77PFOOs5hNqZNbaA7K5oeyElLIAEo+9YVPyRCph4fNvop2Q62r0upRUx3ZfZiWUrz4n+t+1LnC26Hnl+2r6jTvbDxlDa2WsB1yWi0u3z6qBfvYVunzVcaUqh9/uAUAW/uCGGoiWBe2S74VjppdlnbU6N6OoheFhkJPdxkr8Y+M9jKrQYIQ1NINtbbK7kJ5zA4H6wZQo2PKpEvdXJrfhV9XsnLsh71RhrscBBuYIoln+mTMU/L8lMKtT2cO63cPI/4e0XWEpTw2Bdw+e0NCK+kfyh59SdQvTZl6/pnHI8PbC5G/UNF02yrI/uyI/PaPscbWeJYUG/Ou3+pnH5q/VNIKRrVEllOIf/qpCDuzGVFzFEiu9gI2eqmoMVjlV2DFa+C/jRrYAvf9BBDPDgwuJdSiCIYKREXxziJHbkDytFxa9bADkWznFVNSarUljhuBR2lB0ujdP/GXgL5S/4uHNKOW18og8+KsavJLmC3YktE41w36foI9IhAMswe64oPKLdnO6UXFxIOGzYGJ7ms9LuKXRkrnwxiLxc3ywmeR/GWtyFRI9B6hRRds9vkYd4ZKXYnh2avwpQqysDmogiuvccYeTOLghk+ee1/OuPfMMIFLtFCH9p8ZkjOjNtlwgC+9fIjN0ag/50FE4vpzJErUA48iBLsHpoTSmWFKycocYvBrof9Z3pGh7LqpkilNGoiUclc803JLHNhKhr7e/FedeBt0w2E+fjBDMN9ps7MKeoDtUuGd2qtr1z9kII8oZVsMcy7+ymxGgWFAN/GYAaWR6aKedZffMWeApCQ3XsMWQQOkFHXLqj/8jUF0HEKr2dMrewGnauNA3akj5GXmA2hWz60T9KuJ2BLDWxvqvjvrL/FfAWKwv0DG2I2HZ1fI/S4bWYT+O2Fpcez/j9WpEr5bYDm2hDAnnq7GcKbvQU20oYji1jju+kBRZVGGvdDz1cb2sHIQR+mfjt1sZps5WufO2Oc99bti5UvX83vwRa2uYKHBJYNL7emu3HvdcVLJEDH7PyUWNDvccwYPNp9iSsSWdvtw0he+U/5kkE9gDBQ0TorMkhaJAB33jhU54T/h6EA9gn2K1iWxW/QN3JyzuB7zxdLZh+KH9JcanSLoQHRNCL+27eX8IBuNYujFqDTeaMhVRBah7XgvAWRNKbQ6iP57GWFmvYY8wg9y+Ri3JZ1QZgAU6GZtxSALk693g0BtJPgUMQ2BujV5/jJFH6uvdlo2IRYVbmvmKio2T6+HlwrGOBCVKM0wN8M6W2158IxYX7fygjZIdqATm+jq7ToNrnE3rBNTFxMnJFJ4Wi9O3YrHeuqcXma2B4EvtC/z2kj9jNajeXeM+JgjBdZehn2yMyTnKxrIHU2IMaLEB4Y3hLNV/jmfuwLA9cpj45OKmrw46B1p2hZ4rn+b7Mx/HgpFASxhpHCSQLHJmXj6jPKPS5NyH6up+2f9H7x3B3wnjqKV6FnaCq5FBlY1vQ2X++e9on5SX0wZeNQsIQmcX0SE6tKjkVtwbXAREmeN0ReA2lK5njgbbD3OrZhdxv1qcFuBHS/KgGEVIyXqp2xnPPJs4t3S4yeZW6nOeo7FH8Jbo5s0bPrmE7ZbdComovsLepnUBv2ejbpqqGOqpe7PyvcffPVrdghqu7DMipFSbUo7XaQfvP+u3qn7ydrgO0E5P0nbVDNSScP7quNPFPyc+/Q14CsDMmznaVPproxVyfAdvgsPls6t7zE4r1UuOZhuqcBkvxYkgaoMWmjNrE1UlaV1PqIsUv45z5q8xI+N5vP650i46JnB8qmiLw8jauHIZZJVMgwSq0ctC8jmI3OCrrpiwiOFSKtcVwJ1Sy+JCWMgAh+G3/Qb5VTEoCAp272wE2xC+S8Y5U+94rzoJX/hUEgmEgT/zn0h1aD6g/xia/lLVaxFU1xc1G3tY4HPFWlvo1p4Ve7LIVa7kIxRWChzaz3SJpxn7C+qrZwnntTzefhEUsu3dO0F54cc0VIbCA/s0k6IC396rOhFuBj/hQGrPS9D4Pq3Ixfx5ey5JCZ4MqXEiisDk3vDpgWqxnF8YYuuyXCJy6fDq2E/kzU0jbIcWVMTngbt5VQ4zNRShP2A0hM1vOIupuy3LkZmytiPi7XFf5BQL2jArU1xdv1D1rSQCt2DZxYZ+RPQfWrTVmxTdkUB/qpLuk7ZPwJyPj/YthsTU/hY2FbFVfJYLYxJKMf6wyHTMho8aRryVXfHp36nk3DaFrFantRYd4wFeBt7HiPL1QkYkGPF5Ae27pLKdHKlMjr82Qe6C6Zv75HVUisGGfhfZXzPA5gcd35YCtaBrdsgAtfMfNciQz64QooTv4H2maYaf23Ht8HTI94ftWTIjuEwU7NHZaEGTp8A3OhIly6lVCfIN3+wmfHysxXLdQwQLa6vGyxb5BhfXSWlf7WemkpeiCoBxX2GX476hdsGDFmV92VYc0R8scvM8s7L0Ct278aBlECcuvgrFY3Qp90Ere5/ftEMX9skl9QtMnsw75GExlJfExGA0qxrD4in4h7XOV6MyI+gMJjRBbzobMynmcCXi7odTDw/+OIumXKlWTQMyUlSCj5I4leVNopEp8oVVDzE2y1++TVSqTh/lqy/Cd/Fb0HaegxEuVxlVAhjgCDBi0C5A+2/bxFVfrDtJdUx4NISm8YscBgomj/bM30h3m59ufsApPfrPbts0wq5K4qp8LJxSa0cX2tsMxhBjyGuFFR5GFE4hfWjHcT64ecg333W8wrkruhnguoDmhKci5qJeP37/Vh6PXl9axiREPbuag4zO/dKZznoqxYHOVggwWVSBg7H4l/PoEwrd0bwMO+GnAlpNf1JIrWOOCWUqL5rc68wDzuw3lvS6bWDSb/KY8yfVwSwXUIBvBYR9Yjx7u9XKtHtp1t+xSaFV2uqJHKdPierLnjz8hSBvWxd3rIO29icZmOxsPV/5pws0acexB1I0nb6mDi9wPXOgD+aCMO/Z5Fj4Re3yrLRORv58EzKNYfWoPjT0dNJR7dgD4tzKPvpey7d7dp64FFNOc+LXGmPuv83LZP7VLQUMoyAZ1g4V5ghpw8qjCYjmBcSYYuy2KYmTjS/V2GpVAcqdCi+obObPKBmJO1ofRt/tKxprqLfhT9crh9pJ3qFSvpTnEnBRFTaTx6t9guKoSGN5vXQAverQfPEVbyRL3jAhSOCIuDjTFhaI/0YZhxhd/w4dTuDeBG50Wy8RJuJl+DtyNPeYq0ksOBDiT9bEzwCdmp2SnJ/tZrF7dHPY/J8Nr/05cDaDeZ1Wq6lfOgJUPyHj1IrsZvnzPYs5lUGcN3mBBPee10V+01LXTb7g5el3xzibCW3QDD3jGmtgkeU1A8UWUNfYdEQ/6hgF5HjqkQqrJcLEgxXo4UQJ1zSu8D/DZuOMdiQt0bWmtuv5v3NtIScrGEW62YeD2VieUsbIzkVs0WU99WrR61fYwXb7NA68ybhSxEk9LCxyZ8MPUCqnWsB1QaR6eYzrtp1gCaoitmyS194mAMVZ8mkOjhIqoheMF8kfzZcHaGlwOt8qSGP6QUcrXykTQ8UtdAU0/ZDwQF9vt/Sd7OnlmxnHegJ1kN3Av2KetKGadQYQMkz/2fa8PjdE2/e92PZJswHSvOpzvFwaYOEjMi7u+7GiBrgyfRxLZM5Vmx0qwTnoVSfhi6utZ+jXEKlKbkYqPyHV9r+RLLTk26LLyOPtrBwDsiWWCTusg4hSYHYBxsvyGcblMxYGXEtnkAGVnA6IhtBurXrlcbuRZMK1lh22ttqN85ed9QGHlShIfqpG9pozxAGnAlQOKpdI7mPCKDYhg2Zs4BKr/6+nBR9yw/gmMJycntnoEhmU8ZdrPtKHNuhmdrUKBFYqFWWCpcvwUAhh+b/SI58+KVq/SyB2gMGoJClOGp0FvT8QzhF+ikcWn3pd45PvW4cPx4FRyzuEF3AkO7nNghqr0MnxsMOVOKdImAL3eG4b+P4ESACsSDz91rbxbNu5HJAvZKnD/SE2dgShjDGXUvt1fU8C3kYd2m9hLpSYX372wsmzL09DE0LiZtDuU5abVqs5zZ6Lsv1SXf14OmROOmuQTWFaL9LVRvZykiJ8JDW0TnfjvJSw4NN94ODaEFcaSvcv+ILBWN+5AyFhb4dmeTl2EwuQlFnk3amINPVJV8d5adP33dcetYsUbGvBeb+gt5U44Y7qUDuJc5+DjPINd95SaPoM61rpwetQqUCivkta2GHrQYvnt0n+3depWsiJqmYcbQissxUAzD+ZPunBDn6rLkrTGZXR6PjBLLASXgTck84ZN/81ShDMp6fknP4tdEclGhb8JWtmt3fmx1CQyaMaRJClPz0izLO9Bh0H0y/oBy/kGBIScdeKr5rmbbQRH0Ar2hVnRfb9vF54mS24hrfMQz02yP9VIouw2Iml0X4my1S5HzeadJvCgY0VSgxpwMVUykZSZi8BTzXClM3NslrtEE1uzZpmQ1iGJueaOR3ey7f2XpEeTPED4mRfIJ3f8Ol3nJxlVKLaaGxWY3D9skuEvn22VFA+X31qWX941KT+zcIEH+DLwdKUPfpKVp6HxKSZ602QhACBffUvQyNeYY9EU34EP6I1HHvaNN8elb/eHp+FWaB6TNud++Akt+TX2DVmAss+KZ3DjXJ0du7xvIUGF7xdJ3CpZuDKwZ0CNWqmcVtYjb8i6qGH2/+h0aeLQudnAZwUBzNWvKf6Hq9IgmqAqiewpYQzEmnbgU0OpBpsLZKtqI6nci4bsjXSohwBCWW3W3eyMAfK1zCuEVXtz8imnLuebcn429ovddD8D2Zvdsfc5fN3+VRWppQs+BiqL6gATsPe1rWLhTfVoUmZFScyO/0bFpHWmjsARKBxtIPxICA8/IoYJefOipQZn/uH1MruugwL2YEuSWcqsAtgsZ9BQrZfp89BvDbH4zytT6XgWo6503FMLgO4syvHGdgur9jvJLsCetWg3aXCCKALxZAEeR1LrHUVHFnA4mN+LxWB6MmhZ/UvJ9Mx9q4VBhP9DFtirthH4lzOitWBZoppJ2TNlHUT8n0pPhPfU/yaInXZjzhTw1ZqNVj3e+o3Zn+SVGdcPHBUDgrFbCzX5ENiOK0QBm+QptnmDnPvExyiZYEs6euZSRhfCz0pBfec7Cz3hllBVLA707/v937X/fGxH4iMnvfyDmUvbyCvcVno939ZMS5T8pynslOwEKgJab6gOuDFNtkBSzvVk6eWQFOjQ+Bz5uhMM8Yr83bBCyE/0xNZ33Rl+mJmWmsk2/g3MdJOKrz1i0V7U33y8RR6MDQHTUEQKt8R0YAjGbwYhYKPcrL0G8al7IhLIC6q1z5LQZuAcUlOGmFvLfDyxPsbw0IUYONbu98fZbqUYirywK1yk6+1LRgjqbKoFHrnIaFFALmr1m1hA/WNpySLmUzJIbUWuBurHlAP/b8K1nxBqoXAbGAPW7glrDUbbOfXmirVICsNufbGeuqXinm3+8k+v/KRmRieca3F8kmhnvsi9FpYmA');
INSERT INTO `cs_admin_log_data` VALUES (275, 275, '63cad18dGcHMXZgSLxNHGp+EIIGSxlAn2bO9f95I/WMMHUQ8nFcz3BlxlGY4tpAmGtH08zryRTSwdZtYapaHMrkZbO112EE4ZnfV4j6DKjltWH9AutGjqiS6rM5OWXi5UTuRtEQpRhnudD6eyilvHbtzu/zrNWGAhb1rDsKYveZjPiquDj49FA9BluwIqJ6yJeZ/uz4H7Cl4K5mLslQVIk/TwJWQ1QvxfZGlfpMxjFoUoqoUswsDclqvcFYK/LiLhy0yUojAi/m9bj6t2hpJ2tLURTn5qzgNw8jleh1ENaTMevUPfTl4ohVM2/ibBQbedpEwApX8hnk7iNlet8Ic1tdCj+05IpFtCjyY2cCxPGqLHsEqrkKBsTGM1ibQghFh9BVuyFseUnL9t/4hqV3/hFkiwEP+mehvtQe++AotBXPHyAE+qBTItND8ALAOKcaJDiYrkgfQIxwBptD4jhps/J5972GkP+F+ronE3Ty9RB6Og1Jx+Yjw/fxV8qrjry+3ewPvNLfR0sfjEl9G6sypyEwP');
INSERT INTO `cs_admin_log_data` VALUES (276, 276, '7fcbb34am+VrC/pxvfDkdPOMcjA51KdxCgksojZxl7OAdLTNA+O9d/+vMp8rtujbDGHg1bzlBhG04pp2GsdPYfBm+XKo+ZUsayR5nPoreupmN2zLZ+LlI98j8KcceuaFzpAZvXcEWhIe2Yj5gvptAlgW05TkXdwc18OUNQ5Z+NcuwbQo9azf/nvCgpcrFzgAJ1xVWZr7+sVbyGXcavUCeQm6kBxlOOh9waoSgaRe7jI1t0TGLnDaij5a7cCFCTfeDjTMknRq1LUAkrMgSO3xc3dGgkhk47s+kqmxp+g87+goFLl1MZ7ff3SfxhQ5n8I/ux4isLl+f4UAwZcc/gFMDVdwtq7R9NUDJZ0I+LCqyExJ/dg1d5XAehU5E+y/1/0KLtmDsQOF1YFX72g7UmosVFj2Y+JUrAUeWTmZyP6bj2uGiju4HxLhGq40M5yqg2WElzHaTwTOzkxUqQ0hUgi+ORaZhzhbCDXrXR2HsGiXkcAhFauChIfZu+MHQGCY93T98yrYrn7Bc/Dqm/b2/dNYlZkS');
INSERT INTO `cs_admin_log_data` VALUES (277, 277, '84a9ff1dK5NIefPMj2SiSMkIOJg8L32zl/jklFn0GFnYxsR3w3uMJSsUO1bT8sUlqk4PpSqPr5t70kMM/tftttBe2DaojQlauP10uc+tl1n0ho5Gvn1fLimb/7/Yb7la06wNUkLU1+LjP79n/xRe9ScD2mq0QhC/4BlDifjuLps5w6nZuvRnsD4aNP0Pa9qINzbXa0RPQjlEzm1PAVO0QJ1sBInIsU/1qS/qHoeYjaOxMCW97jiPnXsX6uCTUSYwmYEPjXAq77bz6+2f9Y6pYDIQ1g0OVTatLYvLZuk7KHAblX7U/O0lh6AEzF8lm8JT0LsMiU9jSVai+jjG32uT+tfe6tr5CazdKfFFmunpe6mmn/0LKqXjXL6lKOvyKO/lVt/IyqYF238gz9Feh/5Y4xe1TOeapir8BBXiVl1tJ8fsEmVjeawET6CE+eOEPgcU7BFHNy3udSAmaMRmnKxSZA38bgYdangMALbcHs71vVtXo1wWseZhZK9ghs1s0SI16zdCRwQbpqDXoS0rVQtPQG4TUe1+CS4c/cU');
INSERT INTO `cs_admin_log_data` VALUES (278, 278, '12efa18a/S/2iAzc1sVkXCPMr+/TUORgg2PB1oiaEq1rbRicdcJ3w3a76JH6AGYB5q+9Xcnw+2R5Yawu4oJ2JVtcwFTL7yDdZIMbMtreHT/v2qczeCCIxRU7pP5v3OgwhEiomHdZl9mpJXbMLy2M4nR9AoqkY2GS7NjJNLiFdMn756imF3Dtjvb0/bRLtpT5Ke3MrAWVosRolEPVOnPt6YSCP/f/OjWtt6zK6FAc/93cAbAwg+c7Y5QOcGGbOp4utnO8bft1fFgqsPz1+cAkYFdLyulISQYPPuOSn9EC5fo58EVHjzlG5v5Tz/fBoH9LRzpDmRRTKK7uK76QROxNkhyYRZGNonrrA+DK280YruHV7RJz+IA2A2lTCtV5G8xzHCyR1mzlmpVsqJcw9z45lIQlRurpagKOKJ3bGpZcuFoO7xqDVXPuJNp8AQO6l9dMhHv/dbzJNy6JJixn1T51JOOqGKQ/F6yBA+5o5AjvZMPn0iQzWh/uou2wfEKF5xiSQvDZzLjEv9u72OplY9T9qxmCjQqDAzUfnUM');
INSERT INTO `cs_admin_log_data` VALUES (279, 279, '068c0e18yfWY4NpOlmfJ+WsAK7HkvZiFwd4y9e+6CiP4c9Zkpk/KGTDL');
INSERT INTO `cs_admin_log_data` VALUES (280, 280, 'd559d855cTH8e6Et/tgJ5CoXEwf/vPYvB5Q7A5LZ5x6YpVVljg8cGgp3');
INSERT INTO `cs_admin_log_data` VALUES (281, 281, '57981caf+X+4ppbtzZ8dr9vLHWPnAODONoF4ytWVBiP4WoIo8w/anFyFnTDS71a2xTnteNRVs4f+W9Uja5/DiCGoZKF7e92wcemotToWJ2UEHtRZk5NuNXKaxum0aazdQIuJXjkpKxTdpmf7wGLAlbDwhBpuKUyErswcXuGqj9ovoeo/1ZpYCd8Cp4kAZHcO/TsEOLv7SXcdDRMfcE5dsb0/cC+NbNK6ZthMTV9xkJpnPHpBTsm/sjo9uUqUG59o/aeNUmGNpmmz+IIb0OR0q+e4y9myaLCIPiVciEATWspouwUCRselAVVPV+f07cxvgsdZlaJRbl4GD935fGh3AKn1U5zD+Il+m++hV47VYA');
INSERT INTO `cs_admin_log_data` VALUES (282, 282, '1fd0d553x+8JItV1wnpuWdV/WhPWUFIJRauyuvR/YOR5K76i6D9ivPka9uMSoOCFKcEOGwXvcFQQLZqf9pvpx9NcKv7zbiu8BgLgFiWcVspW0+7Qsa3fZvl19T0y8h1JqHSkkBdYvK76olOMmw83oPkE5IEOuNC27HvE1Yrh/smkYNwpKqu2P7GrIeJb34/C8o9ZPLBnahQhYgRTdQy0to6c2KK5CBy79BOfeAxVjZDkzy3Lds3vAqu+NNkNssJg5n6uQ419ErDuq0Yys9yMgNXOpMxcKUvjjzbYrhroKdSUWn4PXyp1icu3w5BpcNz7tjBOdK19vEztESqZ5UNTjtKViYOPZg9htZ1iscwSkHM3njs');
INSERT INTO `cs_admin_log_data` VALUES (283, 283, 'f18a91cd+xydIFy1bivGkaJ5Otr3eciw+sMFvt1j8noVkcWlgQzV2WFv+6oxzvlkRrlTKkDI4OJGgM0GsGeEqTqIWSDCMcSt46I1vS4cdMd2WDCpsn1OpIBWLBevDGSlmu3x5UEPAoVQ4n9RztcbPOXGFFSUiT97cBmqbt0lMaz1AJNQ4ePgxGoGW4PzAxkqBo6Eof1lGmkC6xe8xhd9F1tJjOfozG28GWkX3RkRX2N3WB0vOiZACPi+3Q0kPeYCm7DF+JHeX80j+ibPK0SB/XQCZxNDD2VbsVn+4273v7VqkpB2bsKxNUrvkBf8EaJDbE4WUtvmk/tYRJYOb2YNiZtiRK/36kwPQCnz2ZcX4DVE');
INSERT INTO `cs_admin_log_data` VALUES (284, 284, '0e305039J3eINhjykxGlM6JbT0lJ0Z80eVCvPir4yUh4L2Zm/adB3XbMLmY2HMomCpJn+pX2Us/a8vMUkFJfcFIqf4C3bKfWhW54tiT7FnaZyfBTPpdDE8DgM/iJV058y80gQrpu/Zl2DPPSiiJOK7a4STUWxPNCvG9tsuExJxGE640hXgw5w9PDPzrLAo/weQPkvdtnvAX0IWmCQnT0IgG03PB1AWnnT+iOXKEUqiY0bmtbK/1fU8AqubujI7cnmaeovCrj9QJ2K3N+U51ZzJ1pAmy0k8FgDJHMlw+e0SPVy2WOXyw528/YVi8lCW/CfwGV6RjJlxG+eNUF9Ax4JA9thgUlSJ4+WJiondZKNg');
INSERT INTO `cs_admin_log_data` VALUES (285, 285, '5e72e45dQQf++/PnTCS4hqtnU8VOLoRqyJIl9n53mEDTCkRWbmhvXdzaz1P7HubmxghK2pGNnel6rmpBN7lN7XgtGhz9W7h6wQT7fPwsHbfs2u9KFGwRCKU+UL//jo8RcdiacCM6oN96OM7V5PAja6rib0YbHWlMdL7vN3yIW5sOfuoSp7qupqOBtqjqrtD/xuBeEpII2hl03PJ1z37rJL8PXdwmcC2on9lTxR5wSZVZ3rdRwKil5oX1SHw9CAbqk4s+AZ1a7xZxzbXpowcMoxevNETZigneWYoxPlI1vj/qLa90+RoOUNPfdbeXAPrtTIUDgYvKobVDrPy4ntA4VLhTYVDATCwCQC8');
INSERT INTO `cs_admin_log_data` VALUES (286, 286, 'aae38ccfFWROdNiPGjuM8Nzj/oJeLI/a5MferluTp1VybUmOzfTYsJAYmuAYNlx/pyfojD2PhqNdizExKlJhaz6hAj8dCGkD5rhDSGMTI8gV5fpO4tFe49kid1bKGbrcM4pfh+tbFmvInveEGK4cNxhoHQ2S18n2nscT6+d1h29DRP+svdWVcg');
INSERT INTO `cs_admin_log_data` VALUES (287, 287, '7ee2cf88OixIAXOgJuk/yJbDMeLrEE2draA3jFeT8i9iZcDpDJNKPytLQFIf8TA9DCMPjFkf1LFb8L7MMkQ8rOeF7US8hgCKvmMMZXhdHnuK3OTgrbFeDXcV/oDhmJzQKBwI+7Fhf6Z4lDsSswlSSDVdn/WZzjexc7DhkMN+t2wBnWpSzksLTF9em5zCsYuM4FyVe+0m3WlZD1UKMGPjts+wiEUxejpEqifERUAfm6KVcqpMdrPNrW+ViEcqeUsXd6WHNLllGfzcOXhWMkmpc5xE05XG70x0KFr7hX1DQIoOQRALNCZ2OAWtWpUA8XV8GPV3lW6tzAV6sAE');
INSERT INTO `cs_admin_log_data` VALUES (288, 288, '98f04cfbJ9XZawRwD3rRALYHZHiBoOwAzKH7YjvmE/nwgBNiFD1fiq0v4i+3aDeqoiSK9wgv6VGqoEUHi5DIBP6a9B0OQ1zIGdtqgqrM5Ta27gmYeVqWhvgf/aXniW/wojlo/Eh4J3GVeJj7R9feDmJ8p0KArpQlCthzu1ucpNeTsuDXKQDo4g7CbXK+BykpiEL/AOCcnPrZZhSdh3EhMdaVIAf46MffqLbRSkC3KiP6bIgw9OMgVm1qgsPavDA1wyyH1T5Yep2yH5o/oju0CUimpA3RkW0U7Rb7K4h6GtOxT6LRnOjQc+EgoQmmwsRsI1Qz5HKM8DlDoz8');
INSERT INTO `cs_admin_log_data` VALUES (289, 289, 'b68b0a46yeGIK3HZ/6l8/GzKF6GB5sp+bRp5diG7+decPUFbtdI0VZ4sqbGcCvDJpheMP15QYh780ioGafXDnUULBaoWrD8aZ+uSxTUfYIQGvOZcgCwxHdyUHyOmD5tFAOUxPpC7UGMGA/MoWoKUJUdKaLcBHFibAcZ2jSmOZ73jEi5hQHOO6OqTu+Bu4qRJGfVUxKjz86yGrfLIzQklN5khsKnnXj3gS0NWy+oXQK+KWrm1HZCJdxSuKNc1hUXW2XJLFIn43Larnq/TB03Qqn4uGxkUDnMx10/Y+I7ZlhI42sid2MstLfKuAyS3hmWfcFdy6M/hYw');
INSERT INTO `cs_admin_log_data` VALUES (290, 290, '18025c40o95wjA+JLbhSgNymqybUdQNmPZxt1DYaGFO4h/T3RIjsF6e9zniUqNSntM6u0h2eRyeLp0Xa0+AiAK8976cGl0GmotVy8WZij5+Wjdb4L0g3c3tKXyhTCUZcMPx7jqpH9OWgcv85sdE9iKqDojOEPPCOVkV/6YRV2GnxLhpFcDl5DQnc7jty86gxpJdCM1xH74PRcvEbktRcIT0CXq94gNRQ6mCCo3OZy4edSgyW3KZOTpw7htBldUa8NVmdA3pHsqKqgSHZcflMjzzgv7+7+/tcv5z3ilBjlpR7sB42ccmiVpIcvFKQfH0d+1pRJ4OvGg');
INSERT INTO `cs_admin_log_data` VALUES (291, 291, 'e42f0884TNxU94Y9CwBcXRiGpCXJRjDbxQpne2NwUYXmeNwX1kgbFLmxL7037/bU8WdwHrkXM+mn3GBpJkuOFqbmg4DzpncXrOqaQG+6ewGUsFM82LwOF43nqYtk/u3Fjg5Oo3I8VZkcHOWjyPliR2LRm2hBPMVUkbAC3lWncT3vh889rahsN2dwwBTNTBxFwSP6LkG94G3PVW08QsoL4avRD6XPH1Az51PbkTdNikDtcUdU5ow2h60JjxYIQtfG+pkY169pPDj5vHTko8rKMBusaYX/X1gDNaVQaBjDq/vP+HKXXJt/rWO+IttOFAf5q+OO4BZsFg');
INSERT INTO `cs_admin_log_data` VALUES (292, 292, 'a5825ee5vZu8tSI/ba5wWw0cbhJ6Ksz/DqIxj17yojUDrNRbfI+vwuIdGeFJd/X/33DdbbPeTiiASgpDVR9Ru2lPkJuZFMeB8dZFlQr36JvyyBKSgzbZ90q/cZddchHte1miXO0F/IuD28/kl1/S/McJ9VNpmq7Svd9qVttei6bsVLNO4XhdQLEF+5j4aC+/q7tGDoAtPaDmdii9l8ZUg8xqMGWKqFRh8rGcDqzus1vxkAeDJ1OcKFIUt9ncsqKo7uEFcMlxZuePfDVd+2OmEpG0cKe4sErDbrErtXEszJZvtX4JRrkOqUTYcCdzZ0EpiJhUjTnKzA');
INSERT INTO `cs_admin_log_data` VALUES (293, 293, 'e1dcc21fvvPHBAnKoEbt+Azi+YSjtzTsnms2EY4Z7ctXrqnyGKsyXF5ddMKKDbmJgwZhUzkQrRkPSyf0SiFl1iBFVv/zFJ4jJL4L7hwQ02KamIW1vG+qKffUyZBn+irq8jyjREvt73kmSF6Z0GFcMnT20KbGtkPibA5hb5Ao/UFR98iAVL3G3TcpAKU7FO6jKqh+A8aXTmJy2kpsxyMvJ088pYydOblgwKcR4z9Phu7e7K6WG0xmBwzTzHdKIcz2uA8e9Abw9VCI02S3SlNYZjZUyLTz/cD/qVD2VgUhuoqnj6IBdC1AUuSo2MElFe++MF6spFmwMA');
INSERT INTO `cs_admin_log_data` VALUES (294, 294, '2fb844f1gMNVAvtSVyCVRaLaMZkVLxYwJlf6MtH2H1AW2ibr8tInbjPGycvTiAmONzz5vloe9hKR+Kgmq3tHG3wP3crK+UYswSmwyBNcRx/dhiLHKql8IAa9RMKewFj/+dsivF4BhL5vDCug8BNl6Zj3IA3JRp7IPv7r2p6GzlQWDA2By0xsLVOsAT2pVHwoMFVaKPLaIMz/FvzDbcrZco9zzDPr+8sXtLp0FyQM1QrnIoXyF4dc8bt9XfE4QoSLbgclLWczrPptf/kPahmFB9D+OtRk9N3fzwLTaKhd1Anu9oHzYKe+Oi6aatitU7c529ufML8BQsCIRA8FDME6KPPVBQ/Egv+FrLx50UyxHHU6QZtIOl3lvOp0ujgzwt3ktp96QNjffysdZ+AiZS7Nv3tSMajrJzC1smJnNrFi4lohaN99EQdgeg/wq9j/XtO7KsUSqFVdY6oGhuf1GAMtzYBbk3D9VxDOaUAYOyYh3M1cGlKxEkaR009LGYgRvU+IWjnTrzH5GbH6YY3nScqi2OLA7TIBm925mPGVqudjukO7vpNaJ6fbWNe7YuyJUorJ9VmiJFsJrWX8wVPz2RD/OTnQgXvUu3wmszcYs41n9cKY0i2JW+7nwPmv/nzlF8dubflUwQEZw/CMj//pL9m460/zTm1L8KSAb3xz2cIk02gpTs4oIerGyvAK4CATV/wnFG0y093MsCSnBY/ozO0WSNzDLOXO5/M8IbVBFKOKEnIXOwCzi3M7qZk5YK9yEaS7FqF4Dj21YrL51AUV9Js5+StJgva+NcSIZE4lygFMJujy9fZ6cKin9Ud/8VNgVlGipckkAhTAxogf3quWVTr+4UQPpCXIj8rORN1VmXbe4J2LVRAO');
INSERT INTO `cs_admin_log_data` VALUES (295, 295, 'fbfc2915hBPf1yNaCRVjXsJOO/eeWHPFZ62DYP/DGKFC8PvqEnoS9xxJg1mfitN4P7k/Q5DolKW3ay/MZ0R+/Bp4o3nCPQdilYok9Yo28ZScS8kbqIvSVn8+SDt3uCNRS+J4SPBY4PPycqJdUzGvlVgndaHbPsXD76ln91OOiXwHtmDL2asa35vQsqU7UDbzECutlbntHxSlOSvuciDwCRvfOLOVDMHRMNjO+CA7iCvwMfkzdaPiPQrAxei3qwP7l1y4xn9U7BZyPQmMOEuI6jf6sHvri4JKnjJQW4vDy8QPda1JhOpSjyad5hzSlGb62gKejV9TjTt3QF3K7Z05TEmnnQr7qk6ESwiSJXpTkZ3A0+App7g9vQrvowdjYx8cWbligMJ5ucyBFfvAM95JHucATDBo4uUUvUmJbyD80kMinXaD6BcdDOcQa2vZGFeI9JNLHELABMumoci0REztspShmnZGKwoB0rsxqDq4TlIt17SgMoM7ARV3uTOuDjahs15qkfjzejXq6nhhhz+4hVkMw5RieR/yodLDHZOwgK53fx6q5vbiTBam9vBSls/hhXV8II+GVS1RMoSAr3OQbDeNC5Qbi3y2oqkPy8w8w4TV847vz+UFD2GBDy8b6bfI54MZdeJP17H5YI1q8h7i7PtcgmWydsWHfgi8KDbQDoIYbsL47HU9p8ikMJ9aAa8AWFu2BsFwsDnEoryihSG14iBTYZrxCGUsSVkNbY1Rmy9Z/c7lH9HOfAUlOQQRTVVmL0ALC6F6eDAukfTlHVZD2LxnrAF4efoqxk3lhvEQlYBXkZFNTsrxqdQAhK5Y361ZO66ig5cL2A');
INSERT INTO `cs_admin_log_data` VALUES (296, 296, '57802256CPrqnE1eh+NqVGkfz8I5Fka1VHrK2aE0/9/1QYMwrcX0FDQFj2awKZJIU01iFVBy8FCuyOmSEeIBmBTOFguUelIFDPZlDf3UUSEvQMeuoKQjFQ7dAOaOXpDXr6S+cHe4PSIhizw4llJDIy+4uPzd3FE2vnyZWz05xOb8VXsircixyBwb1ktD5ixhIysoq9y8Moc0Jt9JjEYb79mIg8WCV2Vdq7c3cCIrfQp4RigE+8AlUBVvjzB8jb1NS9iuA+Q4ZRyPeYzFdXD0oHmyhkSr4lwKB4O+v1+WMOrh7KNFk5ZTMKDtD4F16gAB6xcHVfRMwVRlPdILA+61MQHomie+MhLhZk3txefTQxxsrC+FVljfNNQPrWQ6zlk0MZ/+no2EsKuQdm/h2WzEbSgdRXdGh2f0kdgXYJ2kt3DGLP+acdu8QjpTttl/T+16YKBlMKuD1BXIxO4bcWAePd3KByzwN/eyroxZQX+E9+n9ZqqkO+Lw1KPlUkD+Uz+42UtMUHAkMIIk4/JNQLVDMT26LJan13nWMhrGV38q6cJYUPvyWOlmlxkkPTwEUc8BYKnEcBz8WgK2aK+0tXH4pAKYStFerBnlVRbc7exZqfVd2aKnmirT7H3vwceFC3dwakMX8xjB7GKwMG1Ym/LqqXb5tqGFhbJRGjzO+dpUXc4Fxk8VT08Wszk2jIRqp6uUlnJ3Ft4tdPuBtIAEJzYYqdUJiM+Tw8hmvieQj0S49QC4sRt2IRtiiKEyz6Lv5WxwEg');
INSERT INTO `cs_admin_log_data` VALUES (297, 297, '180dfc0anvdpT8X0XvVQZp4nOSIgkyu4TwJV/2hpxsrLNu0Z564RCR/rJ/08o9eG7ZMy7596o9oWyV+4iN/t+zamum9tPqn3hFzcWBJ8osySHwDQgAvhET/qQsgkjHn4CQtbDmWCsy61xApTraRgNtkRjX2CQQSsik6CM5QN84h2Ivsb0lTFRsoohEEV6AhK78VXyDwemjAhc916H2Ao5HCRHso1iI7o');
INSERT INTO `cs_admin_log_data` VALUES (298, 298, 'f984c307A0xe/5pls2ov9i319OZCnlFm5s/BK8EDtSs74dXNtvcVWjIy1Hg3ChaAv//OBDqrYBUf56Vl/grGK1xoGx5eVn+v8kk+L6j9D3iFd0jCXME9Ah85/9TNSkHLRXhORXjruTqtb/NNV64KENHTwAwLUQ1QUsfycduErL1FDU1uiYNXJV6TvCcC5GZ16oWlq/5DG7MB7GV4ezg+uMCM/xEMYYNB');
INSERT INTO `cs_admin_log_data` VALUES (299, 299, '7b06b855jmLp5JpqfnRKBIgNr8rtYi+K7K9Q1nLPKlVJuwuPMb7JYko8');
INSERT INTO `cs_admin_log_data` VALUES (300, 300, 'e627f691V3LNJ5n1P1J8A734/oqI/ZmsYY50/5Y2IUL17AaLV7sWgVIDx7tbpbI1H4EpuiN+N8sSayJhzLVxxVawVvaxstpWPWdKg0nLY8bqXmLEVfVpqeYRSTNaH7BojaQlbfPv0SoB3O4tPLcZoh/6w8ZrQ1ADL/43Ga0LhPH0qAtjFoFXxgFBPEU0NBCozTOJz2+DQFt9XZMra0NT9aCpXSzb');
INSERT INTO `cs_admin_log_data` VALUES (301, 301, 'c7db3ff8qPiMgtTaZH0dEWArB9ZroE0XlHykxCEmjmGPAV+/tetsGCOP/eahUgdAQEzNG1NJFC4WWRSbQH8pwzl7KJHaFYFmHorhGMTWK9IXxDAbem3e32dDgjE4FJ1qs2A4LEjnpFuaryCYitNE/ne+byYM+qT8QRqAmTr93bWLPDs1KbN0uelN/XLX8ozgxaZsePoWAfMxuY4oLieH8UDBdQ/5tX6cyre+GxGXBegXH7J9Sib1wDTuDrvJ');
INSERT INTO `cs_admin_log_data` VALUES (302, 302, 'eea5c158QEHr2BGW3+evPSn9BS8UQKzs1OtzM5ajDop/y+xIB5WCegqxPOg1om2VKLmI+WCNMbK6sqxn/yjLSBAjR01FX075B6XcdjeE/lXhFozHpaj8gLplD2qV6Rb6Z2nYXn0k/gPgaDl6i5ZRZfabhYWc+GkJy+QMEIbpuCQkBXCq08pPqLHMUgqFL1faMoleuSCpiUM/oeP0ScPjxMifxtjL');
INSERT INTO `cs_admin_log_data` VALUES (303, 303, '4d3a0515iyss6cQj7c3j6UEuRQOXrn2KeZeKnKLwokN21Yi00dY3+byeaawrKpEphbwfW5yCJfQd6TpZW1Eo4ECTumj+sq/x3MNOeeWDr1/C6H7Ym0ssf/ONRPtgD1RH3if47e8wPEquyRkRz1PNBbANF3x5XZsQt8QipyYlSoAvMOMTIdFE44VyB/F1+r4xheWMhHsudqsPp96tj+INeHnXgHx2wUj4bWUlgivekg8LCq+ODyUC3CHGlLvw');
INSERT INTO `cs_admin_log_data` VALUES (304, 304, '6e5b04b0dJuftBAb3zjOSqNegpERf2beSh6OlOa5z98xNzwpBdPC6xPr6ETHYyKmjANygYiJ7gOyRcwYwEP8qgRYg/SVIjEtS5hdCheWs3vKSRhoMKJARoHybiJI7YOjmyJut0C7Ff3sZTKP3xTGGXqneqPahWByHLTVyiBma1LqJ8nlIZCqtBmrvn5svahm/Y/fPGMwep1hn/20Ce1qDf3/j5v233Dsd0qk/QhiFAdGMQo3Rs/pfWPTE/uWeyJ6DcC+dEOmheb389OHg/znXqCRky6Yaq5XvA6GotF68gJXyzU3hOPN2n14Ki8rM+s4EszHtLxwxHvr8aPBdi0kIJhnraDD0/ac+qaILhm+JGt02cE7wnV2PBvdgEelyASgb4yOllDMYqm/ynpVAICGR7AQrxGwkZfGZV4iZQDQcLnY3KEiMdLOwUYKJIulogWipuJiNbYcd3yu5gSU1kObh6jAMRWZ5/Upk2B/ezdK5B8YSiVY12z/VfG04sCGPdcimtqK2CM0t0WGOywdOM/Vr7XkF23xYDMxPIwlE0e7nWzR8RS1oiEIlwC+ruscTcmEWFVcyumST4U1NKcnogGTutgw/olWSRhKc3YTsZWch8RV2fIT5gqtrbqCakdH7ORsDIJAa0LjlK1WCHb1S5fz7BRuS7clUxo95vUcI9yyPRzo92Lje4vA2fdGi5Uq3e0y0gExSEZfLWm0ZFFU3yevZDp1E+JnVuozcKcYHrBjjq6zFD45G+HxVQBsJALTz+KV6g');
INSERT INTO `cs_admin_log_data` VALUES (305, 305, '87908475wUjFjLwHTc4M4/g+mCCp9DdkmkiIrxJscbm1AIFbpitvy/OvDVJ352tonx0nZmH4hd8oWa7ATzCQ7ULxzTrGwr7CIXCj1wdLJ7j7hmwmiqe9Vn38VxIIgUeFQk13IAwDVFqppxtSlFsaJIrum+pnBze+MlI0nOy2j2hobxIm2X4UGQriwmdvEI73Y0oSwDYmh7j72bgHe5iKh0lESNGyeSU0zPn7G99a1QIIxkAkz7AjkJR4Iji/tmFa75A31ZFsbp9f5JAJJpb8XoHMNpA/TVKERlgCc3eVdlmI6V2l/BmkkhT153p5fr634KKSX+A39wlMSB8FHSzwL9fkXlE0uy2rkkj7WNZqhg76sBNoScp9si8cwLrVdRd2pOx1t+2WoRHsyeqKs1nTzUHQj+a1PEXEtLt/fIDu0bOfLfUD8mH4khJfyfBQefivcJ2TBatibIsyLU3E5mVkQ4GwwmvPtGgoYl5zds3DKQ6vI7RcJxPbcL8L/ssWFYf0ULaqpV0IKpteO5nefqSmVTcidRPho3k0PsrukYMRfgZt3YNbBDIo0Q4KukppAxrggRh51JWgQqyVhovCXmX6o4W2lTF9Xk8b+1/VoEPcPrnOztKDtQxdZxa0NMNI8zQYRfTqEO2J724SjxpqFe77byxsiK/kVBjy7srwNhQxC8hUyc2an8oV82FllvSDYxXnpQsBiXEHKaAXKV++6hi7wMZbnVz4G8AolndaNTyZsVSyxSwZb9QqMsPGYdw6rhxOxg');
INSERT INTO `cs_admin_log_data` VALUES (306, 306, '9c6e9530k/jQSHTB0y7vdBqwqVgS63iOu7740CTTN/amUBTRqFmEskKx4tZstM0HD5bZLXoCCKfxto1hW4zmy9UUtnTBol4pBjDJhkBkLEwrVsrtInTvhCwMcKzAnH3xGzstdENHXcpW/f16SM3jg7+1E+PG1p7XW3gnoJFWf+DzbG4DZbLOqMvDXySGcLoE1NZEaGpPGlkx5mFmrA81UDDLfLsSVKK/q4hVh8qdp0RV+MLTu/73Bw+TYisT48/oBRiES79ijhpohwjIec3/xhqdYW58xzZ51IRGAmfzLcPfhqf+qG84eDsnw9tbfrOvdVJKjB9D8J8wvFosoMQ53O/jpTn0iYTPL6K/qCOIBsSrHJzXYNRRGtoT+cqBMSUHc4HS3LiKKarYESvFJzMThz7sqIsnT4saTGnzv8NZzrZ7NrIeNPbQZCaGAB0V/muZziv+Ir6Z2HXf74Y5XjnjmaaTJbm7XQ4IoKS+pCtRTmWwO2EUo1WguneRDz+pgb7f8DEEVjTN1PVls0GHOyJ99e83C6zKYDttZTTwqdJHgXKF5VtjWWe/qxhFpC9Q2l9DiPpsEV2dtceEy7Lse80GfjpkILIa3Lw2P+EMMnjXYJOeIa0F803x310n09QOxA9h2fjyYNuMA5t/+0LA2KfN9MysyDnX7w/1SRCzMFlxJbOzyXyQoMHjtmKxQ1/02WhT1kZ89cJOhkXAiBXNeYZKQ+nsfOJC8pw09q5QF2O1O0PgOL1gNU8g90XxE9Y/1SLGkg');
INSERT INTO `cs_admin_log_data` VALUES (307, 307, 'aaf52827L/3SclcR6fqiXqXUk+Y7ubNdnwDvu8ZMoU6apvtmU5zxKKIR3sNOkxdhARmgljHtXHp50igWo4FGuv7wRFTAZBEN8p2oVNOoCZUQJVO9YB/Enk3MbtuT0+GuBFgEBt7qSckkdG+gSqdZf1pviBOnjIr371DN2dPcRsN/RzCRiuhy5hjaxnxvVQ04jRXaRvX3IssGlEn1gSKPohMrUPR+0GIuhOM1WL+m/4Tv38YBK1yVA8JlJ2683wwdE8Rj2gzAJyE81bV0F92wBJG7ksF3ad6FmuJVR0g/tLIyh+VbrlFnPttciNoGacuw6MsdaEzb0Tok8EtyUZjviaC8VEXDTDQoWjnKnszOWe0p1znLRd42nZWI8Gu8P4fr4WFwvwsgWgcf7ma784qkkdFQkECPHOzleiAFH/6VhvYLhofS57KXU4GneZ2UqFY1+UhBf3bZI6hx72k8M8b/hCbggDSw+Z+1TN20jZGlDdE3eo1KXmGbQTzwBcX7uKif5QW2gYjNWRc+y08XDNkQpqH1ETbCjWoaXiTp0KDsNQQMQzwqIhqUSd04bO+eXUS6jam2JPn3YzAxAUn+MChDQ2T8wqad4QFT+hFaiBduuzdzDwpyE34ldIlDBtJpJ3vCLGz93OJ/r6Q+S2wmr6YSu/Gckg81pULCPlc2HdISNxj3D+5n+719q1X8/gqppsWOkQeyL6k6+ML6U6f3WqnLDnjFymBZbWChtVctm/v/apv5Cw3XDTEFHjvFuf3+4XvmsQ');
INSERT INTO `cs_admin_log_data` VALUES (308, 308, '87a851d7GAud3CR6wNOqpbOYOMD7/NAWCCsL+7mcU4AEBBQFxJ+5mc38ypl8ZruDJaySreYBd1lrXLSJhoxsLO7g68d0jsUlMjXaa5sU5wDVoJS4CQKwdUFVqyra8mmqaTklKKAtXD/5e6gvdsadzhlOBs5G0PGKFGLUehgs28nC1+OsGrpy0XxRY4GxPQlbyQSIYLYDYoGTMA9UspPyIK1GAmaSMGcxslyxtvOCI79H2V1PivasRLOmBXoIH6tCt5JdUqdk6KsAqn2RIVUZswE7ptLTwl154YpOlYCW3E2mcSEzXajSqAufA+F/xz8Cg9Di4cEC6k9d1Fk9Tn9k1SDNZKBL8IB2LPCUk1H6/lKlOkaug/LjlAXwyrlwx80F+TO4xwrf4i1mib3gc/DxdAOGRrI9PAFMsgAj3PRbBiwTZRkO545mpB5IzyIwO+P+9ifNAYiD5ILW46QGNLoZKG38sRK31PC25/k/vpL5GFnbACKK8g4H8yOmjO/jID2AOPFYGw6BeuE0u/WiBx5xaV6mtNC/7Y2Mtx3Fy0NEz++xLKc2Q7Ug6XwPxwkQZGE+tyqLvod/1l7pH9v7mU99/hplqMWbLL+3okQc99uCo82la9cxI0jXJm0HLpvILehye+zxKdHmld7uu1V6tG2yp+QeKfvMpF5q20pcRGK2BxyxNfLVTfIdYR9UwBIkyNiTxQFi2MYNxsHxTBDOKMFQWQGlal9iC7ELyL3AIfybOAb1/5nruM+D5uXN9TIEK/VhDA');
INSERT INTO `cs_admin_log_data` VALUES (309, 309, '92f27065+W2OZ3C2APdfWjaWLAFAC3C16K8MPxUJjLrOCZANzL8w4SSgQBulGjHgCBALUOAekXnOQ3Zp819gtyBnDQkehWPN9MqcXi59i6AvNxWZVVoSRqFDXiq1HnpJeuFViQQZhRjPQ7CV4mDomyARxAx8akhvuIXB1De3Kdf6M/h4EyIFZ2Qb/eVNJd7pilPusSfTzYRBhU94wJ1NVwnQ9xkh3eQdH5eTrtidLHiHMQylMFiCjEG+CbZgkh0ob8AlKkRWgfWuDKedLFyeNFDNd0jpV5jn9wkhzqGGBR3THtI0RE5Lmn1/+AxcpP1o9bk9yhHZb3Kx+WP65k+9guQMbirhd4oEj5dmOXqha+PCanhQZcaHj+RnCMlP7yyVkjBlK7Q/wyzTTaC9V8+z/6zkSQ0Li8qQS2a0Pf6QDVEfTi65qFUytt2aP62PVqI+XL57Or68dG1TLWAXFIHTkKuDZCOU8JtPugE8jo6MWASyf0PfACpplHHAiwYGW0HN1mIEP1lyaSIxsF+WzcPdNxDwreFXwG7tWLW7KymWHq9wPm1C2p6slbW2UsO+SKuceqY3Q7Lod5dUs4OJPR50hz6WcnFuFpxVixg0W/YKvjjvO0jaYDULEA/1NcW+0JXsa0PaEv9QoPyuKcXp5ZhObtM8BORazIRHwHHVDDMN+Dn9fbVIFATndUe9Tzc3MEg1vXVCL697fxwM0vYkKdVFuIreZp1zoD91vowxuzL+a5w8QOqjRsMueIuFTufHgngxBQ');
INSERT INTO `cs_admin_log_data` VALUES (310, 310, '2bd8f0f4CmwN2pOzBCbHtB8yvgT8LnKUmL5K1r3tt20ibmXmE2fpibqqDOmKTgUtKj7sGmYWeZI28OGNhB8BZiM71md1eWWmGhQbCGe9V6t30SE0WGfcmcv1rV99xvM0clTkJW+GN+zDlFlvOymZiCwK9+MBIe+0I0gvms7o6aiR6h1zhWc/7VdG2PSzUZlCeeguY7VHvqNi3wAcXYexg8CzH9yYaFva1nnGrws6ipqo0x95HxadmK9ICZnmPLFJGPb3SKa2yxCJl4PCpf6dr5FzmZWt8goN30atgzzBcITWGFUddyEwpXjqyEEHt6d+QGFnMjMKFMnszq+zncRRGQONqa3dkrDslAqiE3UrKwf3zRR5FQajtNcrAV8HVAnzm96BnSj89mwOCmQv7BBKpO3qDkPteMjiPNXiEQLY/odhJlU2rZEGDGWfQr7Jr76EHEckyjmAAgCDJFVLxhXICCspf6W15dtliA1tnB5sDWmBfCN/rPsF8RXDcnqxZxGp4Ti1UKKS7I2epbfh67auQWeePsNNUQ1YLlwqtLWNWYnnM3gkKlCkxMm6qaDuA2hiVNT85AdCrKMLrLYr996NO5TjhmCSpZSDc9LlERHCb3KkxGHmWPJHWukfowxbrpTmrU81LGMJCbX1sdDjI5sleNzYif4jmxfGOoXEHtctPiS84OUcYWN+to4uXQZMrabjo9r//FRygAMxD8hHK4uvI5hrCQ0DApIHe/wi96ixJRPM7av4yIm8k8jjyvzhKUxJpQ');
INSERT INTO `cs_admin_log_data` VALUES (311, 311, '4af2f1d2eE34BduWPlaHe6eFb4dysxRaj34VE9CcEOAeYoL8Gnb95DoIWBQ64GgtfJVmYlW7IvzbnSlW17fuIS5Po3osNkqVWaVqbDLakRVv0TtkxMHDQ56myAntpxNCon1ik5dDA/kFLrg3Nuna03UYPFXVh9ODZxDlawhFcWHGwfc+fAWGlMkA+60Dhx2sTv67hmJCjQaUbRdWM7NpJT8bPXSnm8qne2MrrReHP4M');
INSERT INTO `cs_admin_log_data` VALUES (312, 312, '9aa4fdb2MpuCpyyZMK9LMvc0sXlrbMps20fEvibG82A3gvgtgC+zXq7rxGQBOZBkwGnyfZy5YUh/+WclfZ5z1FeO5DMP955sqs0IWK16+pnOg5+cKIRCySNWZa3JxdceFSGm2UtjEC6hpjLMPPxvfOMuTq63oOQYoEZwqg/rMS2lls8CzS6lMtJIXWavSYAmHvoMxIh85hpWHD+7gOT3L5WWy5t2s2JyDn7fUuo8/cbyL3JnsyWBygTxRERqQBQJ/u1tfmBBD4WVkN/WFPkdqPwBkyQgs1SHd7SrwIKIip2hvVWwofuunYqwlvgcTdwB2fG6QAzaCzVlenH0e4YTeAtD1Nun09FBXG5aiD2mFg2wvDqkaKVEnZjBBmtGwgPwcAtb2I22PEhFvzJFY72Z6AA+q+7tWemiD1Uj2QR3O5yiJboxWIGHS7LYuHy6Lrp1iGxOF0cWw6L1WX409RoQ23efNcCiQzbSKcSl1w0ne3vYJey6Yt5MUdYg0Eq/NEJudNk8W2zK63ezQ+X8JLXl+G0H6QJqCq1bUDI');
INSERT INTO `cs_admin_log_data` VALUES (313, 313, '468f3ec6DPTXszO+xKpC2kz0uZCL8tNEeKwk3uHPSlzaXL1TCunB3I5vhuYUaUiIOqI1qbLRaAa/lceicXm3WqM4QX7LP98JiyjeOPO4azqKXBazS6ilyNoZD9VRJ2QZ/RFVtwWp4Xal/U7vI/Ebzs5PT4ksfcpfNp6cxIS5HGBGEyjpCznLJ5Qb9yjRftFrI1vfiJnmb0Ncn9WYcPAz1Aui8335ACETlenW3yyhA3bd9NfxygG7fQMDYoi/GlP67uT+qYv3zdvUnRnrwlymIusewr4BqwHAyL/XLdX6UnhFQ2Cz2e4HbDl5LWd4Oh2LSBO8ZFVfDmRbtjikAcrl8+L1iQADTThRPNZFrhMYyi51smRpNCM7LE4BvUr8TnKHxbEyowGyyCr4TvIMWlCq0os5hhkTAa6GuUsWxSYCPCiOj5L4hteFg3wxfWHFZDpmRTnuCag4hmAaU1BJqx4vgEDS7oX4kNsjOoGZKMVCpLp1mcHLcJI9gDAtrfmvFbjelWsE9fMGkSch4mTTlfIQochP+IK0tkxLfxy7aqMStgSsUYVUzWYbF0ATTed5Kdeipg');
INSERT INTO `cs_admin_log_data` VALUES (314, 314, '4286184652ZC133GKmJ4AC7gO9U5d1gCHb4yvjZb6eAUf9mOpHZzVd14B2cEn4IB4ZjaPT6nyXoXoHINCGC9T9vQeWtWwLU+wMdcbhm7EpwZKRxvBqm9kUK5AxaDk86QK7H835EFndxQRLrAXgJxg1LijbimdKseoKaaPiRp9awGIkLYjtxKxnFF13bFP426YejjEQa/sGSti+tjTJzDpxh0wUSaqG1tJWABygLMhFElrkRsWSoIl8ZNFjrwLkkze0FppJ8RUb0zri7TXRgoNVVpyUI0k05We/twYDCE6cVTMfW3jVx8Jdw++SHYjkErp+vo90TXxIEMzhKXinEHEg/b21yBnP+NBG7ZJyeAMEUJlfdZwt8mh0EcEXj0gqkNo5eGGb7sr4P2KY1mKjmxpImu93OpBe/4oUDMjCzWrxGuFFOWjbl8L9O6j5Fsmxd73d+k+AlZ6+BnMCGtJBnjSCxtL3Id0mTqQY8Ri6vswYBD4CfM+4hIACvePMPbDXC/44EH0JQ+Rk1dFUzrf5KNMq21L3w1JLVE4j0Th+wkKh0iz/Ind8u1bGV3g5FpQzoH/Gj+E6GtD+zIKOGSN3IB');
INSERT INTO `cs_admin_log_data` VALUES (315, 315, '509295d0NG8z7o8jct8eyDvzJTOOChBukG215vwd05LKDTzIj03aY1eQbFguabd9ZI3xs1p+LuY60YV2iMVFDHUdrPJRcLHfUGwd/KzaAkL2+Qrrzlir5HB9AuJL5kyI58v34umPEWjwIRSH3ZnyLRIjspdUf8U7Ffyh+jW7/Vi7Quy9W3NFBhd3jtJdR9e5QUD0jdqhOLLEsqHhzMCkErT4qzg');
INSERT INTO `cs_admin_log_data` VALUES (316, 316, '45269ecbQ2zH8SdE+urcxtOyAhZItC2sDZvfj6nA1qtZsuQFZjLhl+s2ve/2Z+SMmT6zdbdsIm+RXgdNTCga2IMsvp6LVGd5h3BEj9/Me3+YxDgocGQQ/4DXJLNe3VfoKRxurHC+TK+zxp0QEiNCIZPB9g0H21UqHgXP5IxZLO2r0WnqIxzRjkon5+EBHNUeRDriOYYL1jMQlNLd9YXZPEUPhMw');
INSERT INTO `cs_admin_log_data` VALUES (317, 317, '3b2daf4ar/sQqvDFq6ynIkhd4pkzTpbW/EQnMeyj3gwmqPg1d3yELrdb2uXOhBYYTl2kkbaODx25zcBEVVoXie25MJiKofhvtYiEz7VbqFTbY/U9XiPXs42V5RASrOBGOfSjqf49Dq/tFv0pfFbTZvWi9QeqqdHfD4HcFOL7HABdffXQ8+0jGIRUQ08ZV1XNFeC08ZtXzX/FIiEmKnwHOCnnMNw');
INSERT INTO `cs_admin_log_data` VALUES (318, 318, 'ff065a4d1ZqeTtSMoaYUwLHiUXn6OvjLPCwIMXYwFFXX5SHtWOX2ZIEe3vUML5BfdnJzyzOpNDsAA00QtipS8TkpMjKof6rxSF+ii2XEWtjUjtgRL1Ubdgi783TqBKLtTkqOTx6QIZkNjJy+vV26dsCmdAL9KjIWAtIDjNp4uxP85K+6aDmBiDGHyuHksVmFKGay/ZihQ3dsxMtJotbm/UnFefM');
INSERT INTO `cs_admin_log_data` VALUES (319, 319, 'e8fdaa08hYSi/o0p4nenw06jQwzxU26mYtrfBNEzUR3vo0iBpZnr08mFhHFivU09eB4Qun2IAO1MLfF/optk2LlFkGxjttZfu0Q8f7JiCbSlnQWN99CVB3Srlq8leZhBOOnI/e7E2J5dkIvi20mFvJAPzOo6xr8RYlEUPSQ3HOSRWyWeJivjkpJVrpqAqAG6pog9lR3180EotGE78a0cBtcWf84');
INSERT INTO `cs_admin_log_data` VALUES (320, 320, '5de84fd3PENxcPCDfLnIfmSzVIiT0LOYPPxJvpK3fxZYu9bDxGSnyPIIkAOgE5TbSqoO6fjOb2Jbm+j5InO72nZKhloxifLHVepJ2fX0c67tXN2OJiv6P2xU/kLYWF1S+dCno5Mn57Mn3Yyyf7Tqyzxk8iGigFDaioRzT2SQzTviK7p9rV8xIII9VsZ73BX9ha8lzguoen7BQzU6XacslED0i7vXkIH4Vglo/9w');
INSERT INTO `cs_admin_log_data` VALUES (321, 321, 'b342ae86xGKUxJnRpK856UzVwgYfva5+iNJymLX6S2SwWbAAFlG9B6AJStDF/3qcUnyFaRvvCKhuAMFQ+iDQUkgm+sSJgYdMisFF/mPueXauyPfmbb2ToR7hPEGlfQjgix5I/6Rv6Ghv4fkDqoEokzrd3pVaoGGJz2LDKjIMBHr57tSW5NPkq/wL6b8eNwhR+UJBfF9OXCD9f4v6sglVUKVqClJfJBIyShhbB5k');
INSERT INTO `cs_admin_log_data` VALUES (322, 322, '923fc815TlGtFIu2Ts3y5hUXDR7vYsZmWITa0WczWXnfxijB8Wk63Lb0xJ94/foF7dmtRyXDlZYfDH+8wKNePtCEP7kI72HJP/87hq1u/LotewaWnE4DqJ+SYvHO1+CMn4S/LpYX+ibSsn3faXQGMZqdrQNLeY18qlU1oOQGWUe3bAoA5T6S2ba6I8y221EWGDCqP2ZjlbX6BkKBUaiRh+HulmOADbVlxL972hU');
INSERT INTO `cs_admin_log_data` VALUES (323, 323, '0a1d864fmC+C0gDQwQtIoVGiX4xRrXX1HzCzDS5t9nJ6w5HFBslKDbLXOrih+i7lw8zZKjCmOsNZfQ7jDC6wrdQ0cswUsahJ30bdJ3FraasYIsUnAYjop6qRSEKxu1xrgXlF3Ylat70A+7BZ0LzO25XpJpvbv75G4q5tZgBRI0BSFwF8+GDCoExPaqYzImUea8MxFFmzHpBrUIiTV7UDKR9sSz+7++t/rJLBzFk');
INSERT INTO `cs_admin_log_data` VALUES (324, 324, '59e78a8a+3Dex7x5C+A2zpJHuXiOdUMyjvhhELpO/aU3787wYGZtjudP2NUQDFVdWnsygnuOXOwkxZtuS7MYQSkP64B1VfZCWblz6VL9fF4/MHeAmHticR2fZTguhxyvyWglKn+O/WpA+p5cHkWh5vzP5WarE/Cu+WuhL+YHWLjpH+v2SiaggCHAw8JonP+RFSgqP11GESJxOthkLNI1whqsGwNARoFG7dRJr4C28RJoGmQ');
INSERT INTO `cs_admin_log_data` VALUES (325, 325, 'f6da58260nMIT1gGtes0aTcnWKjua79ZfVI5ujJ4dxexHN3wFKBkEM7j');
INSERT INTO `cs_admin_log_data` VALUES (326, 326, 'a81f525c4Z8Nxfd8koey2y4lD+7fMwU9XZtMb93fSZ8UYRS/z5CrnGsN');
INSERT INTO `cs_admin_log_data` VALUES (327, 327, '4ca25aeaJo0EvO9BmB48dXUEaztzTaf3z4TPKJFEmeaIu3wz0nn1f5Ji');
INSERT INTO `cs_admin_log_data` VALUES (328, 328, '4d6b833cDzfrhR6dK9LNrZNp3joy4Fhyo7ZDT/i4qGiuchcyoEhI1b9L');
INSERT INTO `cs_admin_log_data` VALUES (329, 329, 'cc0a9f72qJtKAzojyneJF/7KY5U6+qdGirHzywm/F5pvMpdhjkqjvTd1');
INSERT INTO `cs_admin_log_data` VALUES (330, 330, '50c5c7cf0R3ko+0R6g8biaAt5rpOTWPVX3mfZG6QvMSWPv6MxIZK/DrD');
INSERT INTO `cs_admin_log_data` VALUES (331, 331, '1a6622d2UEpcA9XD2vNIrfRsKScWujo+aK/ZU3W759m9pwqrov6bL9xgHpwmMlVYmHXTnbgFzHe6WmcZ2DvAIAMI57VGIsTWslbsssJSpPMfKxARngOlI7xE7uM5TjhsxQ8JimeaNHbe7AivM56YjI96cbhH4ImqoUZxnVa2tZ/rytPqTZMPDKhItj7aZeBvIHYPn/PK67VFfWS6hA/Eky4');
INSERT INTO `cs_admin_log_data` VALUES (332, 332, '80d30837aWuMmNobqKXwCdOEGYyApYuK/z5aEAifdTAMZD/BJs6xAm/WKkGgecYI4OZPMwuP5ek5wkP90hXP98KUZNmq/8RC0Koy2dfMkiuOGqy5KdECact9VKfgBXrcsvcHqXCyQIvRcGzvpnSPGDTDLQQslqY4olzJSBh15v6XssISgQpzyHbZ42Y9d6pf8mjVcKH4znTLuCxQ3exs8BEaYeBn7gHytAMI57yfDgmzHQ');
INSERT INTO `cs_admin_log_data` VALUES (333, 333, '9ab10375uy6PSGFxmPEquww9CWq46/qdC8+qDDkAG3PhpB9NaK3VH8CR+sjLZ/+cx0Y1Pe7acbRLhoZencEW8RhcHLzVOBBKZ73uQ30Eq9cGCLU2NrMoiM849ADAT1dJIUEztrHab1z2KnlutnvWolDnxCqdzzNV/S1Gak/FZ6KSxGMVb6BsDrBBsQ3m12Q7bn/6VDLvHba/tJniUhNOSiTB');
INSERT INTO `cs_admin_log_data` VALUES (334, 334, '1bf48ae6oPahUkpkLRCAFRKT0y8PkCDrppDnZUdwHwq2gWTXjs5ST41y3HtMNgJEb0Nzqh7O0EsZSpAledhNlZE7Ir13B1ErXVR7Cvw/NJipqzunC2JxxX6yEg5MS0f3QwopvDdIA4PXxnVasrA+Vyg5w6qB2hCnHx1FyukGve6rO1QdhYOpslr2tpYlGGe1ImUE9ktQD9stkjA4awF/ikNjgQ');
INSERT INTO `cs_admin_log_data` VALUES (335, 335, 'f7675160g4PSDKsUjDHNU+FLa6g8ayv2zXGNjMD0YyxgioSlh944K038U+v0th+tf20cx1/3mRuwVdNyA1TwhFwpniC5sNIn20R7xxwnZ3+Xn+0ObdC5ZqaxjPqTJWfgnMYe4RxHu3I19c2BA/Ec9v5316phcF/2R8BO76FJX9IksFy3SHAK5OGtlFjGynPHcFGisDk16i4/DTDEXiXFo/h4');
INSERT INTO `cs_admin_log_data` VALUES (336, 336, '374c2e05MHbYNaRYwMi0a0DF7cKPh+b3lnhE/RZlC0O413v6IlNC9ivN9pZkO3KvZ52vQXFtUSZyAJGc1Je3hq6UgV7Lv+ihZI3lTo9R5IsXg+oav8bxPNShDmv64yJHKR95HOt2SCgB89jJPjZlNGHbg1XfHiCWqG0ygBx8v0gFjdLB6/csIxgxryClEH+FD5cDagD6PfmllLLerqWptb4Ovw');
INSERT INTO `cs_admin_log_data` VALUES (337, 337, '1421b397eARk1ldtfgaEUpo+CVfcIxOk35AThJuErJcEUAU8zdBCmGfZ');
INSERT INTO `cs_admin_log_data` VALUES (338, 338, '47c0b99b2Z78WSLtSLyOYjkm7UYBaMwQ5E1nu4cpY0/KLsAaOBr2V0cb9KutaNEcA9eUjzzhv1h6D+HlAL1zWw0xwIJ1bCxtx6ie6OIrguzwH3SitaTaLtiGYfAJWTcCj/r4xx9hPW+f1R7J8bbpmHUkwy5ChN5L6wz/3ctUZ7ocAdT61ZGqOufMcQ1R3I/KKfNMpgt2n6DeO72WqAYtKlySqOANjxzBnVAvJrejB9cXahB+Ge/e54BKc7lNYxZ/9mZETc6sza6aQw0edBo3zu+qqTLfbm5YjdVeJWUwODL87+mFl4e4hPHGQYLkkRqlW+pjXlYRla/OfZAjJ0Q8ytNwzLLOt+RyxNu9/9AKLH6oSIBG+T6jGnIrMO6bF9OWjprJOhvUpIpYFluMTQ');
INSERT INTO `cs_admin_log_data` VALUES (339, 339, '19a066ecDqLpLaz22qBEOITGJ/gTpgKvsQrUoOSGaf9g7Yh7PCn5gSvWnYTqkyf+iadTC6eKerrDl3uWQ9Ok10+HIA1jIF6uN87KpwDCE8Fymx8jKdE2EjoIPS8K3l0rAVZtL7tJtmOmt40Vu14KIiiaf4XxQQfzxUzJUe1sxTbWWQ9jYHAF19LIoUYcsnaTHLgIOgrkgc4AUg6/O2HGoOoRJlEG28ZK9/A6A5hhO+jwGPdW7AYXD7SRmPCtMqX9bhlwN44FSBmjcUIptGIuNb1nTI3l6772jQaJdxpr0NV1FjZvXJg2Zl9sM5t/v7EobBYGmG8B3jDcLkHHeKcnIw8/e48uuQ001XNlch9k88jfF5/QRyLj3LWL1lcTyNBChCCxWlUM+vuXKWs0rAebf1Jbreo');
INSERT INTO `cs_admin_log_data` VALUES (340, 340, '585832896BHQ6jBVYy6rRnRhYW/hkuLPn1nf0j0OS4b1dbHOCtQ+D1WPvH44a5IzDabbps/ptu5rZoLj+INA8aqVUEXmDlrR+RvE8gAx1WsvfFRuvI5AiIbKtdH/rCriDW7uRTPLEIMYhTEww79G7ifKW8AgwoSYt94k6rAUpqNS+rA7dmE30KW00VbWbA691/x35BuuTAtMb+LUKNgbzgQcxEso7+77RsmRS2gtlSkJQjg+95+7w6a5TcCUWb2NWCD0eGs/bSgCm4u4BJIaRDj0XX8wNoy3KeNLdF62FnnlENyvs/SwZTWsTDksNyM9tOYkvC8QOZVt+4noWOqLdhnkWB2gErdG2akqGvR/4kwcAZHTy3f3KPfAKgqKxf91+BZdBa2DsdlbsxpmMV+UNdkCOv3qWxw');
INSERT INTO `cs_admin_log_data` VALUES (341, 341, '05d40421TnmldDX/LIoYXZlGbLhNAViCJlxTJXaYZ3tnPzwEcaQ0IR7qIrMrZCsoOtmoBK5h6uIE7QGAjfDcSrOMDQSnBXBMdoSGy9XKNdyrARrmrPf2t5xL02k5PnoZGGWwTctUSxhK7XqRljoKkCBZvKnocApaOqwYql+J0zz6r4yzn+gxSEK7jxjUVmpZYW2/hcF4GWn5YSlBEZG3qmARo4TlUUxxa/vVzpDdCq9OGWpkiVbMkGC787lacdIbDbkW99qyQbas/3Dq/6t7NXHDWYXjQOfDed6sqwxdhv0/jMUnMK7QFN1lO66l4xfk+Znoyyh6AQESAKzdTu0TStVoNjzse/uJeU4x3z0CztZ3HUqK2NJXOjcnzXJmFk4thGrhJlqqzLg8drDfirprSHvt+SGijoV15SuhJjbOpoyjzLE');
INSERT INTO `cs_admin_log_data` VALUES (342, 342, 'd2b37d3bjLLnJb4MjAEySKNRpJkA9yKmgjcRvBlwjTqj0KNgcCkTgqFHA6bSSjELDQJik7F3DyIWl+6UbaTIDCX1Bg6XU18JitzHMzbW/sFCMwZI7cQuRn8wj34ZfjiMARVKkmZgarsdhYiXUq/TBWZpVIuZvY3krKpNQJSCIf7dKA5/U2TZPe7Kx8TOTEwnQMDuHDvhMN392PzD8xnMpP0N9Frg8eRGXYI+FwdFty9UALrftCdDP0NsVaHQiAAiTULP2mTXezqIQp5JMdLQcVky0DKif4iN2oxtQBFgisff/nTzO7gtQLK8L2x0KxJYJjDSV1hwYvC4e1SnN36UaHgr9fLR5TFjvmIVsYt9vBR+wP63RcTElAQMYWAMT7uUzRZsw3Y4aZKPhjSoNQglwEKb3pmsxndnacFGON3kJwmZHzk');
INSERT INTO `cs_admin_log_data` VALUES (343, 343, 'b80b1321YL49ZioYCUuaVYgzCadV0xt5+Qc0LDj6UC1bBeYwsNIC9in7FgQDco7r0OPR+2ADP3IBsLZ1WUfG6LKgC39/lzRRt22Zlz2cmY0G46jjXXTHtcnqtEF+d/PRuTQsxiI17xOozoQklpgtIvqVLdMnCbxsPeCy3g19F1CVpwpSb6+cFcRp6uk09v/2J4v8zvIhmNh4Ux/HYA9G0TZpnnDCPmNepUjY3h5rrr+GniyRT4qGPD5eXwOkMpkrZK9VQda5JN+EsmpHMbQCpExzkcSUTIGzA1yDkxRfCzRigZi+E5aMkUYo/3Gvn9KM4ee7E3UOUatWNqjeLI51PdPDuA8rPg7huIyTfwjmygesW7UJvyzO7Y5NmOn+KvoFktl23uuslSi4w7IH1YmgM68Nm/TvD+QN5lzzxurprdMiRVY9FoDbj+5gM/1+lC10PiQ7i0kWhCguy0hYSh6NPaZGN0BsBnhbxMCxHQh9kd5odPd859pmVN3NbZ0p8KnEW6MXj7VSpfwNbPG9nSv339SKbWZ/UnjZVICBtOv8B2U80h2iLNsvQTLyn8VxOXV9zsBTkEyXh3KgvLjF4kcWSc+Ei7LI1shq+oClQ9IBcQCpYbBcvQ+M+rE');
INSERT INTO `cs_admin_log_data` VALUES (344, 344, '1079f169lTQeptKUf3pU4Argdm2/n1wDpo8x5qr+Jjtlw5XgYecuUaq9J7id+k1ByQZGDOHs7QiIZ51mlNIq5NnWXf2vbJXSCb9xat1PyN8/w4TQD3cKsyiFas0Y4Qc942yL+sHHY7LMFwnVlEaLZJMWLhKD453oNVO8');
INSERT INTO `cs_admin_log_data` VALUES (345, 345, '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');
INSERT INTO `cs_admin_log_data` VALUES (346, 346, '5d0e303f8/rl3ejG5gh2t0PCvW7jGL5mdnta+Y5dSLV6cK1K9oUMZy6CGBCuyJfLuQE91BzJ4R265NBIuSv7yLIk5P9U09cWITd4TABJ8eqwnf5UDNxyqO7uCf8mWySkFKDCbCM9RKpWEHe3PVFo3Y/eSuzV3baGmWfN2tzFL8tRbLVEN8Ni+UM0mG4BD3oLAxjbaGZ4HE++kGu+9bb1goiU7DAykiIPZ29yIYI4zjL7vHoKQUkQppknMMVlmPrfKTPnl6+u2buZyTavEYDnfkWnthbKhwvuMFRFOvEqACyPS5aXdtQKuLma8fpNv/5eE0Ks1cLXyLGW6TazyUrgcUZVaMWiFRe9fxnb7/sOzkuV7xK+DIByDtW+3gdHrSvcpduSMzP0tzAnMC6rH+OypH/8uJPK35r0JfXWERvHcQVckZSagpee5uAOBL9OmXV67sgc7CpNsLNxJvVismIG5dyuLTyjio7qG4rx+b8KkEvom7hZr5lFiLDzasxmr4s9uSQmUrbR/6PqQ8cN3fqaKaBLRj99oNJo/p7WMEwFha0p6lvzQCbrEW37nK2U7QOCu6hNNZFaXuLyE4SISUIHc44cxAa8gDBASY5iaXqtzcBt0uPFSckTWtdMgUJZlPJ9Sq8GWZR/sUNEh7jRlJWxk8Jk7AZPMeKmfdOYd9mFi/OphT+ZZ4rkkH7shuriWqrMjna91aRZlN156OP5VaNmOz8c5bMgVcSEY9DRhFoWpAasO08cZa0JY8KVWhMoICSj3UDkxUuo2qIEPJWNhP+OsWqj2Rp9l5ohKEt7HfvN1d+hKpDcHe8tgI54nPsdaEz2+b6W2s1WCYnIEByhwkIcVgjbgZSbrRPkSTyxPBcNholN7kT5bd2WREgKcs8qaj6UGvFMKvL0g6tXTREW2A');
INSERT INTO `cs_admin_log_data` VALUES (347, 347, '22d6876bxxU0i7Po0A6PpHmF/XvRrZyEGHBrC5px66vDG3rb3tcbx5Z91YcehSCnf84kuCWeDbcFqMiggDqxnXJym3h+ZIUKuFbO/La+1aTZVmYUbzgL/8UAF520zU1Rv2WlmDHG13Kg4orkF8Ej04/SSBYXqmbNke3Wmn/XK1PpUU6oIUHgtWx4cujU8LX7uzNemjIfYeQPG73pXK/1DZqkXJ5X39RVjbaGlm9nfVPLk14+2S7Kt/C1RyJINK+0Oq23yBYe0tnszhy6vIM6bWecT6IEtndEk3rtJu6DAczimV9nmExvueSJIguNERYvnZ0KkbC8u+jmB/BzHy0VC3t1+tuS3OSBT9YssAH1FUCXVJRtlKBqKcZiL0F5K5dtqJWwUFZawLhZk+2vXedg7lhE9JESb6YKh896+2IvFd68vsgjECSmFKjWWBe6isOZQS5YF9VKhfXqBJf1z1OrAN/3Z6B6dEh97c7WOVtDFL5U4WvjOrlKRA8S/ytXtjCpqjz1CHYuVwAC+fpiMGeqB437kiVV7iVi6+MgIdp9nIXLBCE+Wm+l0MeiMZiHpTQ/HpIhdg13GYkZfRUzsgbXtgfgG9Vgxj7+3HqcMT/ULF/99DjbyoSuQ+5nHj+FHWqu2Lso/f4vbIWxTa+ZNNZSXgmwrOSwCxbVgp4OOolaLgmknte4PcgSQ1KSuPc5BnzNR/Inrc/V82hAwQA2HLizlY9+uZ+8cvRK6ANy1c3V+x5i40wW/gXKIKuR2VDH48JJS+fZVwjvbyruu7nmwVE7R9sng6Y+bNA4sQOgZMlMgQyX5iaTvXWvXMES7ia1peyUzzUzxCN2+A');
INSERT INTO `cs_admin_log_data` VALUES (348, 348, '924a272188zGrnLY6v3DsgtimCb+eE3TaipdmPv9WMl6hDw9vNGL33ucpEPgtSeU2FbnfWaAyWV3cyq2fwY1+ozw9Q1FdFkKS7L4aRW4yKFqk9/h/J1qLYivDNTTbVepQr1laYFtBiq+62/+OawyctmkuOlEmMntv+815tV4803+8dqP7ZiEEBqcvigDsXtIlLvEQ/+UEhJCAgO/q4d08nX+wmnsXBH6Qk4aVQz1ULUhArx5OZtCB7YLKjGIdUaqGwDg4XmqGk7C/X9ImPQK+QuhamQm68yphQXQBy5fQBLi7DnXxYvOVIb+2X71AO+iCvTxm6RkY/ET1n2Qxv20UXyjcHiL8mJxXIcNlPzOu/Fvf3A77Cw8hql0s/c5vXgusoWWGNx6v2FUopuLscA+PV+vPh1CIMO3UaiuuiMGx1SrojCIfJrdGh5U8H4/qxYLHw9VLJ24UdM8YTxlrwE1wX9HZYju828SoD4NMTITh16Xi+9NhWTxf69Xh8b/235vULV49RSGlMd7Bgih7cX3yUYB7ZdDPrTrJ07Pr4f6Dr9htr8u0LIyHO8bTYzBPWIwUgPZmtWOyoOxsF/4ZB66ARDo+i9s1G8tph1xaVvoFQ/J/y4XgXD8kDK1IH8PkamkuQjqtQCgEKUksMvdO9GJ7f7BGshwsen4I5wqoVBmzNN1VRcgz0A9f8rVAL1MBmfQCeV0O5MBgAnPZVs33dWh8wtkmMDqRLHQtCviT5Mt8PGl1Qk+h1rFpC8yUCM9ULVYHJg1');
INSERT INTO `cs_admin_log_data` VALUES (349, 349, '5abd0f81jBHO/b17O7cQgGv6rvyRHDG1aDZRMoX2eK9VgqV8F+Xc4cqOGK1RZaXtnSCgU59upPKaVsoq9YHsOzI5/2CIFbLP2VCAo7pAwPexS7AybcUOb9rIoCNN+2rkCOFitExsqthTy1hpZ/q3doqjfA/4l0/1Fa7rTZviVGbl0G4IbW8hH1Z3tDMMfPW4T7A2Vy6evooIYpJoYaCQTYICPKHIQ6+O4F8UGf9KZ1Ng1ETfBN/Og49nyINyzCJ6E9z7R8fF5xrUXTPhca/lqjW/WeIT1zB40dW3RaU64iDr7hC1dzEjU9zqx5LxCzoXg8LRVfN0sBx6mQ9tnEk4IucV02XFdFK6nVdInTrEssEg45twFNc/S+ma0FkDXqDGIBU/+qo2KxrJ73Q7cqH7ysvjtZpQDYJP3bWKqRJQVR2fq02BrKn1rhKjFXJzk1MRscjv2Xffpdq1JuQtsa5mocLBk2R4nadkZ7Nj2KBxjRpMX9dE4asksBRtbBmTLAMZHxyi1jQu9KgCAR3QBNLANK0sjVOpHw4bCejiyeyRJPUQ1h3blJzmUsaccb+mcDhdNBBsyGEcTNYaPy2feY4sbmD6TreWKk9QhxZ9wYgscbgCdOgZy4s+S2668jiDtojwwAsHbwJFvBkcLSQmBt8K5JYvV6vjqY5lt4yQwNyzpSvjoBKo0i4W4I+/IpGGRbWIzJaT+81/gaJp8/NvUcOFJPbFarRZLy15PJ0/vdT1ubmVmRJERLTrBKa77Zo77AbrDDoPqCIBRy6yLYMGwy9uHnQGkSV9AGhmxWwXyEsEoTvd1kDm1CBRfU6NojU16T7REY/i/NUGzei3cwOFg3YxSanhnIXD8q5W+k/Bk7+aUlkIlEFvZVEECaTR6nFvoyPylMQUlxh/gTvQfJThoIeI2AvhnGhb3hnYkttXTn2V0YcwqaN2TNLh+zsVFkVzYALemm/0NIAXvL/4wHEWNbGvJvgCxz32Kkq0pTY04PW6gi02M47J');
INSERT INTO `cs_admin_log_data` VALUES (350, 350, '6b3cd0a6asXJVa2P/HOhlZzn7eCijqKr4MwFGVAy7NjgxFQ/QXLQxDDxO47Elq8066JkL8/GYExKzSWIF+bIgazR75HLv/y2kZ190hK2EdYPOKNFBgm54FNAvf6nQgQUegpdBkQKsMnSuO5E4jhwIGV3pev33Wj3d6IsS8QdCsWYVxand9gFuqry5vZwPhkFfb36R6pF0EYCVYGQNjp98dJ38r93R5eE4rn52Bi/xOyNNmYYELR/aY6Rhzy6FBMiMF60I9nNJdkwK4rhtg');
INSERT INTO `cs_admin_log_data` VALUES (351, 351, '93f57d3cWunm5LZ3hEQ3HfkGth8wJDPuysW2J2WfC0NquCw95rUWTkpcSHgsLk0ASpJvob11aUTsiT3VnCgLoTbLOY1x/ioIkeHkMt1YeBxDyd6AUZ3MJBweaQWbIFnqca05aes+KNHUrs5FnGX603Z3scrMKbe1cj6E3veCSszSA/HEoeup7WUrXWcKcKskNjlNAgab6QUPxv4ou8QB3EAwxV+h8ALpadz9JZ7fMYCaZhdnxD1tsrDeLotFmluWDtLUCTaw8U1NSi7g+A');
INSERT INTO `cs_admin_log_data` VALUES (352, 352, '237105eazy6Zamp4TDDtChNXBeHL6s20X2uZGPW0hsxFfpwRj/r9OqoEOnHeBIPoJ6kLu4U18lrAhsPDm/TxEKghaNiNdlnjW+AY/fqM/MMH5u6pcGs8uKB4a+qCUKrN6I5Ik+JjqN21lj7pVE2QyxGh/3rpOsTlcfnrsEfChtrQCWg2J8gcwug+RZaQE4f2meAisDGhqCowm/59FL34R1gkMqHj/4liv78zLZONyLUJOLPdonZuW1NiYPfVOU/OmilVGHbwck1CYI1WB7hYm//yZ2VmNSQlnwmsUZwVPJxtWQ');
INSERT INTO `cs_admin_log_data` VALUES (353, 353, '6399ee70jBle/aSoIEJGW6eCPHqiu14aUluYF7IzkLL6a+rBoHcZTfb54VIjdFVN2EHkWg13qugJvFxFAvu9pIOfs//YCo6e8N9HZPsRlKEZ5j6xB9vfFmd8c0cD1zSf5H08s6UT2vvLMQaI4g0MHc1VPLQ4D8uala7lD0G1Ep6SlKSqgNDIKshRrcvPgjY6NoY4Q9i0LTIdvYXIvRemxhCQ2TUZR0xqQeB5La624lexyrY6YIYUq4rAOuMi3fW7vCBqVD14WDRKbLUcBFdjDWILdZm1Uty1826zUgU');
INSERT INTO `cs_admin_log_data` VALUES (354, 354, '888f8486ZU2SvhpBEF9So92+hnyjUcW18ZbfanOw8tX/giyOP8Ew2/OVbpOw6feD4vNukwv1+oVqjQRCvIm3Pt/NjFgtj+x4xJCeuaq2cJofDCDc+z1koz3p0nIHDiAFSeno6juBhe1HGz3L4HCxRQrl7M08NYNTpL2tJCKeE8JzPdstMeFNrqrMgiWm1FKa7ugjCNSe80vVqLO9ZsHU4tkKrkhbA+udTv0YmvATdKsZVq2eHtaulefkG53TbPI75/f+CU2hqUFpyqK/Dlk42Twwxa87FlGm0Bzp6Gk');
INSERT INTO `cs_admin_log_data` VALUES (355, 355, '7b22403dC00upCgw6RnWV/cq7Da/lSykwXZ5nd0dxgk5WIpOmPqmoGgJ3LJkDrSDfGbIB8utpR7f2b2pVOzhFNIRmw6v8mg8BB0ltwdgqJIAieMIwyhpZdJh5a12R7rIw6ctG/iWw0fUQTi/HSDnSWP5bVWFHFCLi85sjYX1gJ7H6hjIqdk3wvRfYCm407tbZRYN2LIoIqJb608ywa2WWb20zPgqXLsLPkv3onEbElzdBrTb4bov9XDmXihyWsUTmD1uMITWMuMnLbDAHvH4Ee5nSJbIRtBChIUzbg');
INSERT INTO `cs_admin_log_data` VALUES (356, 356, '98017a305t+P55rVj0fDtKAmIykum/YJd2mMbshQfC7b0S5PWf8zjg7l85vOw/JvlIwd/+9JhqFlisnXyyovJw64TRDQGqUm01dIfuPjkFUr+yeJdTqgpHnN6zHJOCKaIl1eeADQCXlBJKyBRRk/FWk6xvOKC0xtcPDMkznRIuBVkuyIbb/kTjcuwDIqOwbxbGvVlqCFGQcWFuhWOdLQrjQRV/RPp/B4LvyFVTg1qIeTNhmSebqcY5D0CtzswQEXMN4AILeiNoswqccYtfpXY792Ua48muxPP+dL');
INSERT INTO `cs_admin_log_data` VALUES (357, 357, '8af3f039VU2KBqxMMJtrDtE9ccVxeL7NR9lE0uLAoeGMGeXF518SwPRZH15hwowFYrSNpa2GR3z2ZHTJo68QlgDvvRD8BOVSjGnGmy/4s/nCTpLfxKpVXAIMsIT2LSUkU00yrOxylBwJppcr3x+ZBW2pm0F7vzHWDW6si3DQpTUgmtmS9j4TDbHQ6gQqQUpocpLUPlKXH0RASqhhR+1+IcvZ6Amh0Lw2kKVDEfeZe6g');
INSERT INTO `cs_admin_log_data` VALUES (358, 358, '4264a6b5CSQQ7xkFRToPOf25wT7WfgD/HjBQtgunxaJQoBYuQsRmZLEbEIfxyFpR/85PqqZOcKo5LBNyWuuyrqpsQHLnz64oafl8VburewhB+w0tmTtlqp9G/8pviWAWCZDoruHYckAfDdzW4Da3UDLgPAbtiTjrHJ3dnVdpb9gIEpAQjFF1YM4sKrAWbiYpliZ+yFS6h9YIh8e7cyNiw9NnyOC/4FfNvq8kNXWABDm7QwRX3jf35ZuisQnJ');
INSERT INTO `cs_admin_log_data` VALUES (359, 359, '70e5eccd0MbkHNmo2dnPLLmTN/51O433MVXCAdGuq13y8ObW/8kos9P/vSVyfLdNSuL9NlqUrnzGguS9wzRIXU4op+WGU70jsybsDUFbR37s395klHchTdbX1pAu1sfAblZVm4pBsgwSnFGIJrbwG/WA5l73dI2XNKA01i9yB65ssFDfdyk3lWkDmr5UERV7B9s1zqpHystyhLOT4vjyamC0DPvB');
INSERT INTO `cs_admin_log_data` VALUES (360, 360, '4c1b56806AJtSqJNcIX9RyYMLASIzP+/CxGwfbYhNP+vbqfZD1TMDvP3Unk252d5PduiEt6YzxpiImhAoTPOkdc27J/mnivEHgFiRQUi2r80gIrs0F9WHk4EjNMo+ElxalmUeGutkZ2x75MG9yU12bqBTpuIgXl/27AfrYZO7LJItfbsQ66pW23WbHBD3JkbTJp7BNgJCrQ6HEwkrx/cDsaOrzzO');
INSERT INTO `cs_admin_log_data` VALUES (361, 361, 'aadc9db06VqL7pzRLFnrVr+jhcN1rhw++7gKL/i8qJk9b6UnO/IOGsq4G/XKpToFGDF66QOeMZUGobX/4Se+yk/m2sWWuDoWgw9IYVCa3YIPacsr9L+3O8yjyFG1UW6M0m+nVrCzudjMM3/4b/eGP6r+dMoDb9JuEJ07ULMrf5k0PtH2n14Fc1kzVEIdsZxU7JE4eACmvFRbPBrZzLTHPA0oq6ya');
INSERT INTO `cs_admin_log_data` VALUES (362, 362, 'ebe3c31ddwGdMwjY3yBBVL4sCdcYGpLr+rTNdaOYvKlBvpX/4d95fGHTyjzc2J9ZGGKRSBNBjJKUsT26t93JeoSVIASXrlV+vjTimJxrAdPz+mznEPwVXE/VymdXbx4urt0pJA0tv67UD6Tj1LXM8E/0KxmSP27cS+tmfFSgRnnp761NYOpL/+5nlDsZQcIVhG2sS6Jfa4vKinuH61YvVOEZuwYY');
INSERT INTO `cs_admin_log_data` VALUES (363, 363, 'fbb23f57r1knx1gvtoSfmhC+EMa6x6UtHSyqpnCiZ8HW92omcB0yZS5274TjcTayYCuFUJsH6mDa53ZTSDlMJIM8O+gadZLyqJAd/o3isizn9wmPHx3Fsi2pLTMe1zwJB8ires/OS+I2GBhd55T9WExv4GoP5+djgQ4jQai2SnLWYZv0bbXK2RIRx1Xi3mfC4VbC1d9a2NwUaXsuYCLokMlc0zOWB+1Cx6vUDKjR6sA');
INSERT INTO `cs_admin_log_data` VALUES (364, 364, '02a69d91B600KJoKdKx7ppyAUhh690tJooF5O1mNGZrZd3RU296Vn4HvSG8LVHEnyXk//4e+c+ryd/70mXFlo8NlqhiEPkf0Tt0B51wQkFvw+Zo2lUhWNI7eTltDdZZ7UAaMx2IPJHRLzjraAbpjwEj6KZgFrHhJVBdmu2bMWAV8/wb9+kpiORpczUKxB0MZuaGu6mG8xK2c5pOZJThhkMtg/C45');
INSERT INTO `cs_admin_log_data` VALUES (365, 365, '164823f0fkFfHixqOnj6mQ717QHRbooMAARkxMrfPs73f/TSLkQXtgWR18PXPfP8gQKJfdvj/b8mw90p90ObxzgoWkSbcKvAV6q/WB1+Vmd+AY1xqSw3G9j/ryGyWP3vWCHnCbSd5oLMiUrDuvC7RPG0+e9Cl5Bgg+K+hBaF+9g7QxLiN+8rH9jkGNE92jU1SDXlNN2SycbYXomtit7NZwF9unuNsUCtfQTfug7rWlE');
INSERT INTO `cs_admin_log_data` VALUES (366, 366, '368d16e5LastjVMdKSRKFuexf/QZTFBbQEFELvF+owzftXLpiXhau3UNdnvpTQbQ+I/pKLWvcF532Hh80UcFpGrjwjRCHPpSSH1Twkvk+M25eskAHL7aEElp7SfZJta0s3IRjUztrI8b29FjBCTLDmD+YFzQfKxJWb6e+596kyRbNeO1EVNjWuRP9Kym88oLGO8dEDh+1YaNT8Qa6Hlc15+rt3qaKJEQECgX2ZzoonY');
INSERT INTO `cs_admin_log_data` VALUES (367, 367, '47bcb8ba8z74ZnVS5bOxHsMwbq8iZUiA3VIa2lu9EV3Jh6FGU4m2d19ithdzsfXPqzp3wLzln22ovddton00i69j84OpFVBq6hJUJ8yZkErq6JMIIavY0Ru8JfpIOi/IatwvFf76jzz/gOXl0Y6CWVQx0B8DJjvr5iRgmRAQ/3q1HeRRpu7xLi9bD5zTcAbZobnoCIZqRGxP49pkFS86wRlbJk+luEZ2ZbfgwEOQXSU');
INSERT INTO `cs_admin_log_data` VALUES (368, 368, 'bebb298bU8a/f2TeRrVFD3LGueeWwVRcBKQLoBIrYs8WrAoG5Te/z4jCRmUCRMPR77P1lm/9oLTvQjug0IVZOP5KHKAX4w9LUpfocyh/BjCG4cPP1Emr3rO6oNK1MwofwDJmQJ4h+xO7oPAx799I38Mz4t6gNWB3H3QMWZmBhnbDOEPttNx2CU1M8U5FerJ5u/FqR244BS25LfKb5Yif+vdBS8DCDT5v/QFFa4PvyE0');
INSERT INTO `cs_admin_log_data` VALUES (369, 369, 'a9b8ae61ksMz1DAjWIeo9fJtrHSR9qX0gpL7EKCoc+BAGBCIJOXks1iiPz+L3jSJJlVQIRRzYfAxOhU32eBiutnONbrB8eVozrQf9zh0WOa7R6M3JzI0g8uGtBefZiNzh4hK3zKmdHI4slZ0mPezqmefJhhowIGJtXHcvgMLMjmF9ewZnHP6SXrbBXkrnxLUc9RcutMoZAinmxLsQFiesO9URN9pD57xQbRs1ktsfJM');
INSERT INTO `cs_admin_log_data` VALUES (370, 370, 'fe9bf91daTlSgqqIGdd30uoL09TnTFSDi/1xFTN5CwKnRoymcjM48vYqtVerlu01PlKj+4G3lMX2+4Z3Oqlx+mOjV/s3ltsTfRyoyDU/7BUolVQB+xwN1KU1oa5FKmxG88wk30D/AjJVzSvh/b/zyx4Nzwawc/kWSfWWQ30Z2vMUQQeEKBdKPVnvViKGdSb/69KT0Ug/cBPpmqAPhdjjxetzMaDF956sYZ+/m6ntllo');
INSERT INTO `cs_admin_log_data` VALUES (371, 371, '7370c260X936jb3e01OHXlHJIke1MQkVvCZEXtzTbhojrBNd9wahAubiQJHt39bXblPPJ6hT5Cl1SmWi/eCzoq9F/MRLChsfQgY02ZWh0UY1wHU7Ye/9EBV4aLAlWT7IdS62pcjq9zUdPwr0OOS5HwD7FmVs56o39Sr/eJuGufgViCz8xGfcn0xwJGXxmp/tW3/Jjn2cuIduIZl+q+97aERcVW+xOEEFccRCbHR2O58');
INSERT INTO `cs_admin_log_data` VALUES (372, 372, '45903a27UO3Ba//iD8i5yx8tbVPDOZ9ZU30r8vK63jqyAMvcZrvK/He8OJSuDihAfV3/2HlFrkNmR3ZVdSKJaoJyfsLGhCQjZ9TwLQrPbWkV22u0RCvNN21AbyyUh+rw5mWHHddKBeqAp1zfYf83hRGWquOptQnNjbwmW/WK83Cl6tcMpiba4/cuBYOfW/3YRfn4YcBGKdZVtQCf2qxhnPZEBP1YrvBXfaKntJyUaks');
INSERT INTO `cs_admin_log_data` VALUES (373, 373, '96e762bb0aNhi+SVH3HBiHmhsMWws1BBYiYc3t91049EjYyY69Jw35i3HyztKlFdwTf4QdTuY6c2MDaQ/GQC02xkeR5EwiNg6IuQqIJf/J43kmtcECd1sDGPL+C6IoZNPcrgnwVUDQ0VMOf8YN8nFSgo1hGCyusYxK8JuOsQN95A7gFjlo/NR4eLyr5XuGxxA4UDONZZ6JO0csTR9UWB6MaFU41m');
INSERT INTO `cs_admin_log_data` VALUES (374, 374, 'ed445116xE/ts4AtrrKS61eBrx1a0QPbNBTJ44ZDMgVYdaXxj25DMgyAdtjUx0tjORdD9e+mJM3GfPkXH6gfrvkDkI3ViFH/WQZoYd22AzXw5dk3bTLljo1HlJAhvAYw9LkD9m8w+YUQ27BoXzQGvjmP//sQrOLoWgDj5UqnxCuDDHUltM+VSac84VjvQqCSTqk1K8OTaqC8G7rvDKVd2xR7Pg1o');
INSERT INTO `cs_admin_log_data` VALUES (375, 375, 'e5b6ddeb++JxvDUlERRx2sjB1iAZfeLD5D6DjWk1i8jQnUfSbMUqn56rBakrHJXDR/DlewOMFtvMNBiT/uBK9v0KfCdnOf+hSmpeB25VkQi590pa0ygNwC0brVi13PWbNerD3CmerI1IQmp+sCTBdkmiRJ0Ns28gYsVvzl+my9thiggNgdRaMiqNBBtpUZdoRrAycKrpfwm01kq07QIc3Zz8qQAr');
INSERT INTO `cs_admin_log_data` VALUES (376, 376, '9c6b714aQsQ8XA4DT6z6hpdnpxj28OnYXkCtnSXy1ceCXeaXusEUEqYK2osbdZeegc/2QXzMTI5rRcAsTEoTUQ8hmxSds94i6g6wWpN8JDoYwwWc/EvKzmuHfiVRL5l5MSNhNlrTDQjlc437WXHlLGROQ6yAYZMGEQkGSaAjLLKu9vgX57uNW/CXhtHIvP81vEfrqGsJ3DUwNGpLUfX43y7Ep8fIW1qXryDROQBd8OvNNGoNzK6RNdQVUGyP');
INSERT INTO `cs_admin_log_data` VALUES (377, 377, 'a2bf5707vBrLO3dWYu1fOM5w+GAh5Dk9/QXx/5/y6XBpyd6zQIz1lIbQxnHQpsSfGIyaaLVKhJ5veU31k//Q7ZYc73813tOGe7JWwOElDnCNtyMVfl9vXWYhf/jenNWSCswhqMNZ1OzMjrXht8fgGxvfgH7Ggw9SJLue6vQEe18L3XREIXOiuMcAVSylyASsTtPQSOUvwAA1i6abS+oiDVK1l6/ijHavgVBPzZbJzxjv7SyZWcHgNzME05CU6fdMBc4');
INSERT INTO `cs_admin_log_data` VALUES (378, 378, '14b52b2cCGbB51EmL3IpMANSouozeRpmKrKXnkWfU6nXQjvyUX+rloejg1P33MjK88K3NGkQPMlcoLHhHLwcRTz3M89N+tT+Y8fvnZeI6Fser/OCxg93KPM4Roa0nPMfO328lQ+vLe7TvyTo0MduUTxSyM95nnnQexwgE9BIw/H5Di2EPg+cXg+4EJt8j2h2XYxTg3a6eE6Dcgqj+qnwAuwpogXv76lT90FY9FzNgP5okbY4dFtKHV3WCwi7t2FwvHYCGwSAMNhGgBrUlw');
INSERT INTO `cs_admin_log_data` VALUES (379, 379, '3b7357e2VDaUSb6mUXCW7hIzwVo2arlivNBQIQXfBmtfE/vGlzzNiqgH+d5uyZuDi3xaRy3ApXWWDaLlJa208SN6FQLt4A5JYopSvQpuoMFCLF2PJJNW14bpDwO4S3V6qoMtSZDTVsxMevIHZqj5x5u2adKV7n6n2qerm6fJ6HRNZkmpRwZQkGBdE3HxjTJ61sLgyMz9XVSsdeRuZntON07HUEYRgWYOT+3X88VV5FlMUUNH5g5Nq9VQgC0OA2bcm6m9fIIirPAGKpW23w');
INSERT INTO `cs_admin_log_data` VALUES (380, 380, '9b1be1365kwn0TG4+B8ZLMjinV4FwAWEJ6Rz3HhY0kggCrL5Sy4I0q06IMGvPKHBa47UEAw/hBwq9WSwswlmgGvcZOpSc6sqOsijRbAgV7laSTrHQMID+Qh4JSzueCng2Uf3QvvMZ+t2Po4cfJjQo1pGJUm28OD+dUccZfe8lftmBtQsBsZFQaXckMnuI3E39AcdWbLg8z3IbSjuWp2XxKPt5GP2s9EQuBgfT0QSADhD2vjfbMeQbSRidBDqNZcQ68QxWPJlRXE');
INSERT INTO `cs_admin_log_data` VALUES (381, 381, 'a25af8bczwblRxrjs2lRLiPq323d5hHpILNz3pUiO/1QOgUmd3nl4B5bdqOyFQrIraqhgFJAdUW5p/tC4iBuFZ3bg7dfeoPuIWNJ1fENHUDsDrJWkA0jQSTokdwpUZ+9tsSIbRB27AY2wm0uJUWZvg7dhPx9sgtgYfdXeDRen6T415w7pcnlTwquoTuhswFO10xCHXBw5xtb6OamCaeCjJ6LjDO9IGhys53mxNdRuffR9/1UMLpiqsJanpiLihzdWv+o/IMTT0SDp4otpUOmE7UFzg');
INSERT INTO `cs_admin_log_data` VALUES (382, 382, '830031baTJ5tEe/5sGdmkI7DXzHuzuNmbmpDeK08yHAcsPBO/eiOiAaut7ycHweTWzzbznf8OVWMQRPw+sgE1qZNL5VKVd8k/0J33yQlAWrwpycLgMDhNM84Un17s+zh1V33VfO90MsgSSYvGAV6/Yn4OC1yUMN4g8cYYrS+f3PlvPXrnApkUamtYjeNyLFiTKwjaBPj1hGs9qmz/b5G+/fX/FCFddFAb9HPoSYJ5b9TY0lHDRsmuYBAnX6oFvB5Lynp/boyofyktqPa68ONdbNU2ZLxrbZCph+gE4oDuBqgnQ');
INSERT INTO `cs_admin_log_data` VALUES (383, 383, 'c0655b13alf8M4kcKnjs2cSM7AG9k9P1idjDUCxyRxy+ClbPd6ddPIjLwGRwhAbArpLcCxbKP1q38ZHnUTcxnL1WgtOVWqnloeQmaxk5/hO9p55OgKNfRsiMYrXkqe7WIrW9P9OeH/7b/67j1m+Y8xqIe/ORTKZxPTyj7E3SX56883WQcYt/bxGRq1ROM5FT6h/9COotF0G7q9pzrzvl9Hf8JmoWrCH9UyzZg8fVxkX75M/gGW7h+mQKgybiQu+XsPcN93V6jM880Q52LVMixWXoJw');
INSERT INTO `cs_admin_log_data` VALUES (384, 384, 'c50cdf8fnWMB7QCZcFg09DSiEP8KkTli1C3AU7+15SxoMMu5qsrmaWt/RtAaPqmOLo/UXtinx+1p1HL+cuS2jiwaR5aoFqPYWfvVh09eqkbp2DEE3TbIdD2gf/0G8rpv3s671CW/24k6iPJoq43C/LAqLVGyH2qNp3w2gMG1KwND8Lt2E4TKt3OdI6kxAWVwmfamq8+jSEUdYVgfnAMIjukhrF18fXgJysVGc/jq5qsCUHsVhC5sY9qJzYCPW0KtBM5dAGSwRIN7AYPPsQ');
INSERT INTO `cs_admin_log_data` VALUES (385, 385, '7ebb4befIZMPykLzbFspTMP3SpNTsuPD6QQy3TGrTU0LcVJi4D9MJn9ZHlXWI4Fn00CRIA/BMy+kvmixaR66ycSev//FwtzZA7umygsW1Cswc1IwMec2OgA30b2SXmKvIaRaC/A+O2qvOFfAw7zkIxvavW3MVQkZhNSJ6Ig4yLmqLxcVrM9le8Fojn5pSK0IcJML4945wkGLD6DxtQxmaQfsKalrZSqAN21ou3b3dSTgDSlJAHmmonuFfb10/uG4iTf2t9WFbKAiiAkLt/XbWw+jm/YWA6oAdchRbSYAFI2t42IYzOd5NJf3xu5q/DuAibqwjfE7cbJI1ItY1uOEX14d1bC4kiCwoxkGrw');
INSERT INTO `cs_admin_log_data` VALUES (386, 386, 'c46b22ccVnuZRGgqz+TuG28UTpk1Uh5EjMaOgzejkWRvaPV/lNxj8TbDwKIgbSLKGLyefx1yQ4KDQsK9JMAK03ppsxRJ1vC8zOQ8bhuIOJLPBfi86YgrHe+5ApA/3wyRQwhYJOjKzlmyQuVuklEIz9OshqDOo951eyycVi+/OMSkqe5ybLfSrg');
INSERT INTO `cs_admin_log_data` VALUES (387, 387, 'f060ea9e6ejNS8lUK51DU0pJwNbwpffzfoXwSnkxCx8cRmYwHO7fIm+5KL/jS/drpGnMwOsgJAfwtyoOtq6Ghbh6bt6S/Wex/iJ6r10iNw0yMI5Jr+Ph10G5dEDdSy5DLOzvYtCK37Rn0dKB2mMSTwVrPgYOZ+PWdkDJdiIy8J9MtBxxjJKL3Y4i09qeawdZRFX9VRUzjKaDF1Fdb//jFoAlI0rTf9+5LxD+3nmWE6NB/purs3WkoTmJYV4KfWra79USoKUPyzV3ei85sOkrSiZ7L630RNkCT0NZZ2lv6/N3sMD9kQ');
INSERT INTO `cs_admin_log_data` VALUES (388, 388, '62825b1bljRkKEbzGQg1tUut2slavX50lvxLbvpDAmfhX09pt6htFkpcnvJNJhVlgnD8v5ePbulBh85yebpeAofPewai2lGG0h26jfYTby9F5FrRS85sOpGrQddMe6sbGMHo2sva1ZUNHmK5pBHAm/0Of5rLsGPSiyLW2fChNkN6WkSrZ9InrJlx6IfrqNlrtn1u5UL3jUIHue8kKC7sMSxgfwBYPSwGWE8FWcLD967aGq8Pf8luZw1QautZySdy5AMA9WdSJz5Sjr57tdRi+04yBczIbVjZaZlyJE7TeqLPs6rEkA');
INSERT INTO `cs_admin_log_data` VALUES (389, 389, 'c3ee0d4auTNdewYJSLTyW1aJGk9Ujch01eqHdDkCTbDQu3wtnqdKt6CBT1df9f6pRP/HXfhz+CrB2ur71Q/ZAzZoi6xH/IKx7Zt1SqGTCJIe2txAfZHZN1deG0rEtIfT/Kgp967noWFOmLZKMfLLU2ypvnSGUEi5BnHEBRE5lQM5ymnkMNDeAhyqRG7z8jWs8wPDCuhZAvKfrAW2MdnvawTJvYE4ZJjdA9xpnhaipJJZ+o9Ul8lyMskoDVl5bJNdHGVyJUfmWQ98UNbRg7egOvD4Lwm12STDPS6zUib6F7S5kkvPCg');
INSERT INTO `cs_admin_log_data` VALUES (390, 390, '7588c7682OHKt711rwCxErkv5TtG6WezFwi+d3df7LlIxUvI7OLnZ0qwVZ5W67MMxIw1Bn0kO/CbKjoeyQnOZikTQ/No+Ojiu5ixt+bK7r3+Bn0jrRG+qvQ25Kwo33QIvLMRbzknHP1s2+Fp2BY8TUOQFRx9HRoEpCLt7+WFgnY4pCEOvPGVQg');
INSERT INTO `cs_admin_log_data` VALUES (391, 391, 'aa63fba8TsvrOhnpqVE8TKbJAYC6KY7oR5Iopf808a8frVeCCBdpLOBRtdjglkV9fTzSwxEOS4+7a9g7dSv4jK03oofaM3q+HeOgfTAKGG8/MTRsToxmKVyMlGtPn12h9ukfu/xVaB+XvRPc6pSIK458Bs2d/MthqNQwp4MPI2RDHLNh/lj/5+B8cYxVoGv0lse3aAP9fG5rEaT30Wf/obttXYIGy3t2QnP0/DM8YPoCnaBd5+K+METJD0AbauZpSSI8vXaXwI6mF57T1JJGMjG2pYtqmkQPjASIxJgLn+0zYpXnv7bgLsE85x+ACsoTrtf9+0j8OzUxJC0OjNzH/i5q2Mo8TgjxrxcYC0zLjXB8');
INSERT INTO `cs_admin_log_data` VALUES (392, 392, '0376793atfkSlu0k6IqB9LfU0/MBoPAXwCbnfSjvNEY4JPYKWauzWk7J+LqzQ0F2VL5Fnq7eSs+DiLyMgpvT1sRoCyIFjwothGcCvYbKXCLfJ+n+l7T2NOo0EE8IgDuR4ztA6tkHa/05UzlndqosvIjdC0b1NLDhVLJ4Bkfs3Su8pzZ/0pS6tM8DNMDQymgwbFaF912Y2UvGREHXwJ05UO20iwsgd8w7IGNIjxSaGp8BfqAMeOgSKOkwA+s2geKdfYiW2sD5Q1ujkN28/dvF7n27nb4sAYKyezBm06AS1Yo5q78jVSXHGi73HuguJOM0B6QX67cAnhk9Zv/V47H8S40xUPvL4LVdbXmqJQ');
INSERT INTO `cs_admin_log_data` VALUES (393, 393, '609f69adUS76CDYe5LRLj1Jp8Nsf62tSKtd52sfqJx8iUPXnvVgUMLyRGObA7N10WvhoFkMUWkiwIqFCnkZ0XFjr/x1xcsfV05w1MAOIDxssa1mfiOXoWBlLN2k5aaK6/l+bEmvrBVqI4kxS1VGFkmMx+4SRDmjasQCHcgu7C5KeQ/ddDOTV8NpJaK5BOTTn092BGaV9Nn0qqh42GU9amF3GhMkjmz0EMGkJDZWYNJSY8EWySgq3ytnylpsHFN9pr2JK4nIlP/hVeXWNZCqhm7B2IV+6EG0JJlkvE57R0qH89F5fxNfgaxo8cIjn1TNquPrB602kVC12F25b8SccXfwNZf+ahKa3/w');
INSERT INTO `cs_admin_log_data` VALUES (394, 394, '17667187qGAZVhcJBvFzsZ2u6IES4gZjzFWkjsHW2vU7GgUOqCvOIwqROXxfPj0BIEwWuehXWynAdOHZPS8Wt467oAWCic0qu/fGfLPjV4BEXOAkNruMimPECiSxMw/Nd/wuowNkUeprjv6H8UTRST5+0Bbv1Cf1MU0L38f4zbSerKWEQovHRw');
INSERT INTO `cs_admin_log_data` VALUES (395, 395, '126e917af4Ip+VtXaxgbyvDLWelcxVtsWwpuMGjHTAtmHmpwmxcuYBUoBvPndqcDhM8zID43yv/kG1FdajniAniqWfR8YZ2uO7tM6kNrnd6PrVtlvLAIWfziOQDkKt1oWZtMOWK6yvEra01Jdi88BhJrFHF8vWmGVQPYCdk6cod52GLkCy3LnUcF0buV1yCtMh36XVXToInzTcs7WnCJX4xntBVJKVuKWgd6esDqvLA7KEq42yLVQaschiQxijS58QHUQICCYHz8DjTe/yw2OsotCISJTeWktzfyakW0fdlIqjcLaDvLxg6aj5fyKGhUEdtMKmwK6YRMZaw');
INSERT INTO `cs_admin_log_data` VALUES (396, 396, '5f202a1e9Y2+MD+5hW8zQI+48/Pz08Csk8QAuWJQrWpdp6JsbXOFo7DrcsKUx+yT4+/aera9BCzgV1dusGiyEnMLhYvRSw1/YgzHXz2bH3a8SoHrGUHh+38kosUOFIKlaPgmjJKWzRmEZKrn7CR5N4SLCBOzybRY7dde66wYDWmureAjQGF6yuPcHB5CJpmTsaFYzV/rhKxCvNQUXiwzp0H4NqZHEayKHQFNd/G9HWxHQH9TBexGzu4EHobuZJZn3LGWCLxSZqgNnWL+dD9x2oPjOjqxRf1zQN1yCbJFmqwR9ydMDeBfpo8MEwCy1QR+u8l9CdqI5AJdxSeuYpOkKDV7nkFz68HZbpmEhfFD3srHLqtbfeJ5SXii74+56NMHZUvnKUhn5eTX6QfQLSVmrv77KcHKYA5PTPy7lw');
INSERT INTO `cs_admin_log_data` VALUES (397, 397, '0ee09820nAA2mqIRvev2nzEp9ukcPRN9ST1MYv7vsx9IibHTR0soKG9CiCCVvzWnvIc5iUxbWYsfEK0iDJIZMAc914gK2HPlxBebiyTt2fvJZzF0U9sGANuwbS1mGA3DkiT+RSQGM6iC+I8kYZmyMA2gPil5P1aU2jjfOEzTE9CMvHxU79EGVsuruKGtlaX8p0MFGEQfrBOlScqkVScw+He/lj5MK60/T/Y3GHuky44ikOCRmRVUSc3B5eZfl8h1SqETXAFOBGnhHB8ODA64K/a4W4ugWmfxwhTzksCJDYZvYlRomijzUi7FU9Dd6RjsQLg9b9Qv1P1gSgHjOLCN7DPLiAnz8I3cI/v0udPvgn4r8hXkxEa//Vtuj6G6ZsjudUTpEGvW0nJNAu++3NC5ogkv+RbuzQo3qh/2FUmojpcDroV+ts5J23ildldg9Zch7gNvO6xgTRjzL3KS7anY18MesQHz0rbmrhnW7B9UJYG0JMFIVCDFDGikBfG9G14MB4UUxEUgBn3/UZ5PO0iK+PdgAMyCLKUdPOBhoNGEX3oVdYJL4UE9R3XZGdteM4JU7S5ZWlBhrfm2xuuNjPOSPRCwu+oKNjoB//NLfPY8q2pjdxoMLlZAQ/8YcPWXtrvgfxE6sSzRKiG0Lv2KR64i93UbSdJEXOUI8QTKzFDHTRGnj088lO5a2eOkzMER0Ncn0qDJMlq8Ee0ZglRln62Fsh7MR1GilTdK2YpFq6gPFXiuT/ldOqTZ4JQvea9yS43ZK6qdfEl0U4ToSrPrQ9aqmdBKU5ut6XaBNlWGTNR9ucPA2MlEKhYhUGeNjhs1jTdaOfmjHLxbN95QtJ9vl03j0buejgqJFtbmeQLVDSE/ETxXLEGOQlj3is3qsiPxqVjKZIyj0RKMj0SxDmD941m6XWW5X3WcricdVWYKMUqBSpPX0k9VvYXO2nc0eW5Wvhgkhh12jNJAa873iTxDqRjC7tK5zOnh');
INSERT INTO `cs_admin_log_data` VALUES (398, 398, '0d0ccf3566q7Xk6/xCfuNn0xMpj4J96Wp9Eg/yZR7N7Yivg4RAnSb8juDGBetq5ihPMyczrVmisDrLKKLCcex6tVOnuBJD2rv6R8j72MUlQ1kMVEGWP6hODil89jOuhMGF4MgNUZLNLa6OGSky14EPvSHNsAwpemH58GSgKZ/KYNJvvBwthFsYo4VMMc7Atc6LO5RlhuRVnm9TLF+oTyCcYOc3Tk2dfIqOOY6Tf94lPhfLp4YK7zcV3H4Gh8trgwKQQ7FN5s4EJ6CARHEj2iW4FunQvyIM9m/0f9dgwnJIiCRyTv9PHgQcIqy3qkKZJ2/Ej362cAgbTWjqc1Radgs1RLDDLI6TQ8eGniYgqbJXvWqjsbncoHq9J8ua83L7+OzW/KIC0P53gFy3kgBA7YPuYo6f7V74lzzwD1SZGTHsTFbKBgnakpEm/R1JUOkH7IZ6YqnA0h/qBLdV9h5uIukH/+QZ7fGXuNm9zS/RyIXrTm2oH744OrW+zFRv1b9ZvWxkTM1QMmI5+HLpxFsUd9sHjeM338a3We0/6sXwNxn7B55/dOuzdtapX/rlH6zExXNodO4MBxd0lwEbPBnbWnFH1eOBW+mfWbnibtUHlxGdanaFVUXeLWTW2tFOpKbMm06iy8lsRLdlTePln0fIWY/ORIzdtmLomXAHUYyuBcQtW7xIYkzoWGd/xYCC54pfxgb3NMVvg2KiQZ7h69LJb+uqiogEyjfGsHHhCmEzzWxMQeodYpFEVsMzx8uziWoEKidlNummn5U93QZ9cvT8OtT5INdMfuBeI2URewrgbhLodQ/uzG9noDomcvVmyQPA9Ht9Spo0nJZSKxSti8ZPTaMXvTNaHsfhtVNCHKJpMLyva2KWIbvrG7L0olgmGLrQ1lZLqQHm9u2AEIsKnEZXOP7AVo0i+eSWTqsrg99JyyykcVDFrzfsK2tgSzv4aZ9H3+8cIa3DaGRVx9U6c9yb5eci649xp7Otl09bzq8vJFSNnXM5sKRLKkReoOXk866e5wNuLE/q4xxAIzzVUVYrbNjGJv6g8dcGaXL3lAeZX7ycJOoyY6TFf1Fejk9UYLCtROaybmFFkJkt07AwcgeFHQv2mhjDlWYKBkP9366CksqcqObgP6mw2OTV8DBHol29wzb7+iis1DZ1HYhIs');
INSERT INTO `cs_admin_log_data` VALUES (399, 399, '01453c7a1rune0PP1yPPe6W7phRqjD88J4t4jAPQtLVq5LEHCChH0KmuTWo3nejSIobd7tbXezTFzAUkyv5Vzt/vwnMv62XYRfERYpvsAiXB7mrCCoF1EugzhOqYBoWLgBleuDdyeEFxfw84nq0mfXpSlOUg9aqOe+WxI3uG+PcK584QgE33cHJtvybV0MyVvLnSjWsbE59AeDu18QH9f7zedwUfiEribDLQTCek8xO+q+bLXOeLT8t3VtSc6End75MLDBqEqwhGMlFW8Ast1ftwPDLZC4pz/Qdg6aE7lF2JYknEK1oWC6wpgHgcn1LYBSjykWXwMg0wOZPm0mW0ADZa8W7ZcIdCdgizbaqblZdS/nHTSZlZ/Jv5InpQ5zv8htzGJPXEceBX0sBPryAC9O64n9w9SYxWx21Le+OELCT/qtDF4CE0ELfPLvH3L+P/UbbSAF1YKtfrJiG82dlB7XY4fk/Vtoyu4Ha1HiyjltcDeplKhzL+OMKzHi8kHOa6u5SoGNNDaAa3wqeZZsR6zIGPMWzOb2cwbA86FyH/KaDLaXkCYPM3SaUmwb2rU2ufa/aPsfbKpe4GZfNFExzknAG/CQiyGIRRdongMZ5+K6T1PHOXTMci5h5iC9f0eOSpQZDHEtP8PlwLI41c5wUoan835A8qLVO9gvgr9YvYKj80Mvx/DKOgsZ5SKWHfr22M75WXqDG20Z34LwbVrTCbWjVe+lKTzhMyYwLx3tkjAYW65wsk0bXdFe6YLLQRnKHV3Qbf4EcmQXBAvMW19lEaQck/7B2zfZ9XTjF1NNOrEsxsejiMebE/jWxAoei+RTj9lYRElR74qlLgIWE4ABpSM1R0RJ3IjJDYxyLtKcA9S8iEBKpbp49I7Jygbt+jvKEpF2CroczwXrvUv+41QEIMDQyWBuYdkgaKW6NtS8UTTHd8Gw/JAQ5KlOTmGTKmAxNwgSj6FtQyUu9K3y4j7e2bZczJKnMmCQQ4cs7Y6B3n+9k/4RUqPu1r0n6VzyVpn4Kbx45+s/wP/IzI1RwmrIqZiTWaK8SxHq1NbD8UfCi7TzZ0eBvsteTDjTxNjSI2kExvIuu1sIxB4vN6v99rB8047YzpnWaI6Zp0Q5LmWqg5MB2Gy8qybbqYe0Hwh/aZYGvD8ZEWHGaKXCyCwBI');
INSERT INTO `cs_admin_log_data` VALUES (400, 400, 'c344648d+hYV9/RnWlq9pZddYefGutg3D4fMnGUU4/FTHSX2k/LM61Y+vQNSvAFOXcm91r87xnZIq33Kz7NbFizPieSsFWndoU1q0JACqgDy+TmT4Y8Nb55F4X8PwQPFA2jMlkVa70CkblopbgO6KUe0wgJwKxTRidTAi/aV9LcdAYp0wsQKNCBz1XUyzVd6kBUeir9TFBJHUsrMgkvntV5QQ9S1znsFIrIOSlPoamrKY4JPnFbsPYwkZSZmSEK4qrG4EvrqsrtzYDRul49vjEY+Kumlc91h5QV8mjCmUgwvgQcFq99FnK5Z/Ous0ruYSugWf2JjlrSzbV6fPb459uLalTwo2M8dstYitKdVRugM0gkBObQEDV25Y1anGYo7jDbeVC0KzGeMIMzFbbVEM7LY6YqnbEm0bBuNIyPczMWzC5R0q7l2GCLIoHOP1HxF31IUjJ3tzRiico9s1faUCLqZFKs3AbfvcH4yNEXMH/Ng2gyIdGgnQAihUNKKadsUSccivK2PaQTh3uRv/LaRcxuGtrybt9lqbP2Mr1mZNbQBCW4HCSEAcVd+GH7x83VXP4hZqbH1w6RrQ5IsEwlI2idEmkk+ytfrtEL9uu51WrOeaOGXz2TJ6amfj1k4ZIRaSdo1i9ehYTrUukW1g7VkWJwfpDmaUxw8JMCh9Z/sXtDWbtKCHc/bE4bCmsXWlruWT+7pRwkgWgY/uT1lMqmM7c5p49EAlrnpoC7yxAJzHWsXQ5LXJeOc9wm/aqp4YNI4oqZG5CakW9L8d2HU54tOBohcK/NoejOXrdxr3Ss/n92aNylnWLqDoSA48dWbCNsU2xhCEDM74nkPhXsWRNCk7/D7Zoa/mHPx3R9AbE9GT7klq1xSzIkFF+rV3QsyEsxu085gHx9n2r9i2V8jSG/a1ybOVVFhnqwlTQPIVOhpyu/W+qGDF2b4bWdnbpRuPX0ezxbMO2YHCpP2Zm41KB0Lqn+176Cpb+0I73GH+Iio71ctwWeSq2AdLfAOkTj/VP7ITbkkDhyN+gbdO+KpP/TK6sbWboaFbrzvnuLA23G85hwH8SbUdFu2mwkFswuAmX5Q5GHtmLjXEgV0bFo0Q6792SRHKtiW0/Rtqs2Z95repZp86q2w0c8jm6DrY+VM7yPpIR3NpNfR6exkcLDF/6LSPLZAfVP+WkpeFgAMM27YyXOw');
INSERT INTO `cs_admin_log_data` VALUES (401, 401, '83397df2X1xc6t2WvF0HrG4UV6wPE8GW7RsVgsgToTC6pleROylbwmH4LG2XXVA7+PmcMy8KlMIjQzk9hd7+TzHI8aJ3XZ9hbNo2ZqEpEKLPbEBMJRdTpj+Zj/eYMzaAjP2+bsng3OUD7ZvcEjesYcfAxIGFvqxjd77MK4OVaJPSSIPhR8XF6D0H3i4g5xng5M/AzqWoGe9hYOSOgmuSTN5OGbsNIumdewC8ojN6u8nfOB39vGCE/5nd+QB0QlZxDOZO+W07yELzxhDTE1cthFRq0UxrP5AjmBdR7sO4HRWm3KIVHwzj46KTIQh6xqDWhr8YHszay0bJIwbDfWH2qdbpAhrS+FrMVCV8BQWF/n4GS2ic/5lpioNg2HEXrs8TN/qCkXgkbtKj0Tsem1h0IkF9u5QFsTorA+SpeIB+6Qok4I3fQ3kRWn4hmrM2P+n84jEa2kcXYauBU+I6LMn8s7e1B+bjMZ6HiUvPTJEFx5Edbl7xIUoM4DxdHYvRgEwcW047Xu4QKxlNCudcrrOtQFGhu0nTCZZGxgTsmdKRzStvfYb5WQ/uRX+tqPOpYKIxpXOreiyWPsydjGyaaSEoddyPzJxmYSvS0/Xy8PD3NDrJvxFRh8bTvgeWN4LePRpiaPsA50JFq1unUX0yP2dyxnHKDsMjJDnmc8Yp/jjzWlVrLk0LYi1y/XfkrdWgBWaj/7NfwnouAeKzeTUS03WS7+BdrxSP/7tTFeEKfT4n5oe0DXKGeIQ4F5q8QX+4Cd7jrtAphL/daNg5bdMx93WNDfEC9dXVjaI1fMqVE5YErR9Sv1T6I2y94J7Wf1OX79+eyJZylhXMS3ggaL6RUglX7NfGLXMaEUQ3lO8U2yJAnX7Zw23RyPqZTj3qUkT7A3Iy6f3yYzje9frbE8nqHHg62/nkcbmNicdLIMLMesWDgakqof7TNtvlq1gsviO/uLgmDvwk2sVluZduKiHKkjXx61s6GYZiNkWT3jrBoCwvO6sx8+RG6k0amQ5NPTh+3wk5eWnYjL+kvpV7yx7kQ9YTzq+kDWIFih/v6z6ACg9PZV08eZY6bDVChsJYWajuFWCpJ9+4+5jRPioYLU1E6Zp1/mSUbnFYk4i34fN67WKqB6AvskN81pATPZjkmSogGffhW02LOFY7sbimOkhMN6g+sWCRVbut1sP9Bp/kXTr32GqP');
INSERT INTO `cs_admin_log_data` VALUES (402, 402, 'f8568283PdhFcjqqWyjCoGZwUpHroaDB5m0e8A52C1G95VfQYVoefgTrS2CYWv7NVUie+b0CSnsl6KQOc5Rny5pkYyvVOhUf5XmpniCKqYV4ZvvGBIoNFMSE7GM8slI4egsEi65p133oVRaVEDfrVIc3OftBL5r/NhLdK6NvdqdIpN/dq/qqS8IB+pId9sjdECMfd9ZKvtiKbUAi6f5074Lt/ot3pp1TSQMlRC3CBsPgU6IySxmXbTs8Jir99UDNFYHFpFj7Q8eJ5PNjJ/luyZiA4SblAujTmiL/eTiGzBInhcQgArr1fbgImlCFJwYamgqnayN2uYFDtJbDXCAuxnpXF3zcRiER0qEO8N8h5DmDwom8JvdTWDVcRjIk/p1rjT7SF5lp7sV4gF1Shm1XZAEYY97P3Q3X25u+/jIUai7Qm1Nljdn3s5HVREJlkVNnQTOUiumReacQoTmU2VMfbTXvuziv10ORV6i8IwBbsFutzayl25fWA8Lbm9QjR+eoF1P/99BrEuQvD1HE/nXM5aSRTp9zMqeSIp2xZWgJ4F0sgx1W1tZX/542+k0z9t33I6S4F4xgC0B5WNhP6ATM0nZddkXi2sDyCVsKuV4rYOaPtb07uY2Mv3sBXIaZ0+rdRP9LvjEa3xbKB+u7ZQA6aKURmQv8Xy69CSE5em7AwBVtLZJ5Y7F2iSeORdcnV5GvxAmHCAZ7TkmT5KcueyDht/CGCU/13cEfcuVXZIkoInHikMI8TQbDNgpWOkH/yZ+l/Y3Rj9STdpU32OS7SFLQcBH2EVw+WpcWdfds7F+erLf9ZEtqyJIb1W3owLSHf+wwghAUYBSH2CEV2N1lmGrwT//xVfZQjIpQbVPcVQUZyQAgeeWvu+hIZU0jf5Vc8Bkdip2zqbRx/Kfxws08353dAzw6NvBy4YoCpwqwkwdg8+C7M+F+AmlIzeJrUdbShAHfUvtxwORwJcen9ncUlXTVitjASV4LBf8lo/6p8tmdVmYsOC94ggOeHdOa5EZsoZZD7nab+8uYZw199qLgh/YREnC0t+oRM/OVT4S8hOd2VkYhB8gdILvGo/BAhOa9TPHchI5DShjAT4UrVfM2nYZPyTWjq3ati7RZR2pOr6JJ90autvXnNNwqiEhcCGDi2W04feT9KyNZfNob9Y8MLx9jP21g5T52gva+HX2TWVFbEWlx');
INSERT INTO `cs_admin_log_data` VALUES (403, 403, 'd9b17d8dILjnV7KlTFRsKHoaLiM/yqZTXgGjimy4DUfNmMVz/oX5H0A58hlNGOvGwZbgBVh1zGc6+8T+f9vmmiJhaPn8BDniRn/TANoMLibVopmhN1vfAkqzMZ1uotSgybuu/JhUsz9LPdsDaJznuaRBV8nuStXMu8uEmI2GqJ2L1PVmphUVQ9oMRE26srsZDU+O6cW9fTAs2iFZZ7Rd1gL8nhqaN3O3D97MgxOqe3NsEd1bnXiv8s6mwJLxHZnkOeaV1xltUCeQKg0v9hC/I+mufQ0wxrMbL5ltw+M96x8RjUdSBcoDgG6BEVpeHjoM8R49bxKKfPMQDC2cjPPicBuP0j/3hTmQrmnlmWyZ69D3u0zx8KXvehdWc8fbY9Cr0NQCLN5IwPvtNBnKAXswTepzEpq2COIwQYQlg79SuWGE29gYS+LHHy+dP1+F12jaYocCK9sGHmU2GAzry6gOHelN4ZbJ3ud6sh6yMu9Pt5/0YDrR9x1Wo9Gfm8EpfvQZLWMqnvXevvqupzwWTWMVFOnVkoRd3rvHRaeMCt21HeHuyGVyk96Rm1zCsff/bvgx+3pBRfyAg6afO3ZaTuB6hl3CUuhue0t1wy3kf3hH1xxE6YkDQh2YnMFEhtNyv/i2sBaPVU7w9Nz98tMxAE1tfI1LEsCKk3o4WlHj2AvtwT33O+JYQq1r2Z+cPLaeks2tQORxj5ofKWki7MlmBK1LNRrzfBv3XdE/IOc0y7BleHCwhlRXEaEX8/0mN+w0A8LKERJjpojniXOgpfw8Icw+SKr8/pT+lQyJD/JJaLQSXvxJdl7ZxvESM5MFecM90nyY2VefwLKDJWZbQgPpuTpq/dvVvAlaRSnjmx10BuHA4eXcTLas2C6uQ7ksvH6aMjsrJVENbM4p0o4xVt39n+B9anhBZNqrmaW+DBlhFYOAz9IopI4WNYuu4hiGWE2/I8CZ+uVFm9BW7+98zF0vIBrC+AgdLFp1vmYY70dkHnWJgwDMqA7jrXpq/mXFNvFs7TjowfBEcwxGwJk2g0rpmVa4wgSi1LT/yZic9rFPxYwe9oDTOnxc4Q2SzxpE5EG8vD5Kndti98vIvoGHWZBb552nZp2gnbhjoijqP7WOI8qHHnp+L23aILuOHPine+qOXUxTYr6cpxZNu1La8NfGdIHex8BtZAgdm5Q/RL6PD/7TL5dp');
INSERT INTO `cs_admin_log_data` VALUES (404, 404, '05b99d42IllZcKwkhdZRdVFKxbC0tLaYhDPUTfZHoBBbOnotsbBfQl0U37fnSMupmiup6jYrOlsaiYDcnJJA8IlCq22kgukHQNoC3ZNIkInxir6343enSEGSSv3EC9B+KMlXZL/cuIIhR7jZ7Sd2mSQa+0BuUCylDxcA0WFDgveDws7js05zM7RSR9LgaYdRUHhNOcc7JbH4eQesfysxYqm1rKyKyDG1FLugYcS0tCUNS4+k7j53SdwlYPP+bsKj/IagyH6NgmVq2hD9OJXO+/LFdd/PK63krl/SGIfmNIf39IloGPS7RuInq0YX4qkBQtZhiEyDwoUy/JJgbrkfandsEPI0qvSeyRJcEi+FBQMgqMWOIf3MUI/0eYYXHEGd3vkm4ZiiMCtyurPohuLQ6LpBetjjgR1x1n7nAEHufyqXy5AwGiMGFIdW7AvsEEC9jPgFCoIfV8NLB/I/dgTsaFZonVRMZIWVS4wHkHDgEJX9vmCUQsgYKZ4sjr3fyzzNVcHmdinBD8HcnDPeYUHQaOQT5JTOUrB7nGMY9ixgFjtbsoewwjQka9mHdoiQj+izIl68GXhCn5hH5WCxyjhTnvDDsfq77TYpZ/Z5u0uUmgMY4UCYDlDas7uktXU/YRMoYBUn0XXHfLjjba45m+5SaX1u/1Wt+0FCWL4x27bT1GfCjdWZOcQaxXFVjtCEEXCL1B3xmnoD5MZJmgeUed/8TC9oASkwZYclBKpzEX1Kv0C6PJgi40TjUvQaw5XJ8RuQQQp8GIffA+jD1K5wFVQRjPH3i1umVtevYRLAApib4jPKNzApTzzGWbi3yEmeqEvRXdwlAXSVn5mqe/w27cDZBSdpcf8PP6nhe3Vp6P8YR9euYWQezEt99uxS9rp/q7fb/tIJ1+RSy2wNSrQ4DhzhMzUBSZr90MVijK/TE54ohU9Q0RLiy8kTGXSDU6idR7GTpXkuC2YvrOvbZ3UGLciOcP0bGO4N6vZY4Yj7C3TIoDy7+jvQoFJKSsYc48Njb1LsOIVgrkQ/b5Wr89tCCWhj7XOPhbh8hiO2vCzqXuKQGSQCTmsfvHIfCeE7V9OdkKNJhn9SSXo8Uk7MKFNlAnVwXzBVMuWuXHrJJs8V2poRRBMxQaPkOfEBE9Ip3JHzA8zY1MWfWZdya/XBUq7Qg+e+aV5AtWwzMUhZQZVK614x1iMi');
INSERT INTO `cs_admin_log_data` VALUES (405, 405, 'daadae59X/YEstvZa+lRg6OG/uiC5YnRioFBgHb7ZPF7kmFXEUDWNZ+aN/A7HVpsurgnhwyDFCusCu4sHYfONiRR0mfJ5ST4Lz0JxBdjqhO0esRvf4eJLAbwy5kEG/1vHzknYAy68veUf/0WhQ9CFyGQJ0ytFqjTte/DiwSCWSWSgSDx03Np3yP40Gy1uswjE8twP9Jnb8NsdLMWj3Ids4aiWvGXk8RhQKN1McCy3qjfMPpa7032WIM02Etmb6sqRPaEamHI8Wo4QDYeYC3weF+cui2IrElNcqtq34a+aYl8TO1ldy0byipqPfKxYrU6Fv4QQGiCd5zajC7uZ9YLwd1px4pWmcj2xZaYQ6QI5HjDHJzM6tkcpn0M01wYzXoUuEqb9vK6Ev75kd7eWFSKc9A+g4F9l/9Z90VrGfLCze9D16Cei7GmvF5HuPL36T/onhK8ETFV9SNPE5w+DB+a2+vNMLs9I4S9AT8I44G13ymGmYpQUreGfYPP7HAFtqIRNJjZ/aMQcyE/xtf1ZHcbXfJBsi2lBq1h0CAyDAi3bFsL0T0kSUgfonDwom0cgTKy/LGvDNTuxTyE5LGdK4oI80DmPYr9cf9XgzTmayeO/X4+aZ2pIQneDJ+rW3hGUkWoMEl99ThWq0qQgQS/ZNYUF4VeJinYBaWutFVHLb+UHakvr5CIKf6UleXeVhffhI0I2C9tlNT4TNpTzlW54KlmThaVmzgjls9qFqq4vE5AxSxaprTA46/SPYWNzwNTXfU4PnwlhOnTcXKoQxA4TMktCsIvu+wjT3gCjFRmc1XaFRWF2g7JaGeL7k+W+bWDQ1TQMnKw2591gC5YagVkX3IW9yD8X9u1obrn3SdlcBZ9iwTuSHJdYtYZBIIQNE/WlZnQsc1nSAzeS6Dlm3+/s56DD/pLOStlbQpCBKqE+RIeluTF+Cqjp2E8iGH88HLm69HJNUXNagrObPYI8PbLXTF6zkOdVPPy02pkqtV1HxSU6QBMpUYLnLPM8kGf9H92V/3npyVdIJzgycmBti6ndyEArd1rKs8NpR5kDPhIF3g1QhgBUaY2qHlA36x5rpXHfx3VIIZdWhWZNKFWLuiJW6WxBBhXGYe7PwtygU2uLtuHJZ4p+kENV95Ss7kwTWc1JmhwRkQleXOqmZtdCQep3u4njnqGA75V6oBFcxbGmXtr0HhO');
INSERT INTO `cs_admin_log_data` VALUES (406, 406, '45c0bf8eR+fZ9o7iCyrvfFav8dCB6DXYGpIDj5e5umudOsJtv//kVKR3ToaVmW3DYcsb0jAIOFbPGUTqCWLNMDSg374A3kbROvxmUG1aoYzvUfGvLJYD3wEnebhxCAc6EcDQ8KqL/jTuoQfN93yu45oS8Hu0Piuy3WYv3KZtkDc6YvUuZZxj6OHVWxyDk0WZiRG9NYRl4N6q8q08g14DbFbJywZUITJ0OeoaGUPwVD6BpHNA3GYclpxyOD/ShwdWMvkJXTQVPA1JAj9ygpzffXCtQfvl7bhwfmZRt2gvcaNRcR6pu0x1ZcbbbR9wQlQMAsbxv2jq95VN/Kw/947QHXutpHJy7XzcmoXv7dpa7QgElyX1cedEfrM9lfNWEn3LJ3Xm24D3xltfrqDwGgLItEjyNqw0//wU+T+nnQrl2zPAMRGotvdtvTbJGuNlS5gtKKKU5ECMNjOLwhzz34xbWAqBQpDnpafHOpV5TThPAC5ok12IGWKnmUEL7weAZnLamxd8pS9Od6WnUVQIe/9G/82QvXDfaAtyNMDcJ/Hyg1+SO0WEJ/UcYAtemFZ7/O6lszuPMsb/R20vEwYLWFpHiCNTiEF+fBBbtli9XglcEMS25S27rNKIKZBL0pDx5jP7xu1zeW0qrjsFpYCUOAdPx732bdapeTrhyJJfQgk5Z8LL7sAHOQJmp0iWfSLRWR0fvh5nCaf5ZKMFF4FJDi9E3ivRIqjp2PXGq4lDmsk4RAXRNl5DRBzPcjlqdrgVUxTmhpGpsHZPeHcOMTwMGo2VtJWZDwRgMqt5i6ZVSz1BNEIQOZknhYNf6qLHb8eeWw3b50rkCe28aMvT20bIc50VOdo79KDuv7NC6UuWYFnlJHwmmZMFWohaNolskQ9vxkeHYIy3dJ77xph0wK3uL3lbq9Ds4FvdA11WKBB5dYyTN9URliP8RkORC2XZC2OFNxqcXUZUyH/AqWEhTuPE2UiLj7DjNd9pTWD6Z98uYABcvtLIkhNcSs/B8TQe5hyo84vS3wMXfJzQZURosULZ/hT0pWsqhg5iw32WbEu4oPMrKPeiprM1U8pXJuSbJW14p8d3NvzZCKllW+033ydFEbdqEQ+tTPJfaEcqkM4HiCJjIwiPqfuu+skehdo0d+f/PZZhjDAocqCeIw2vHPQJ0C+Q2kufzv7BHWupBQLseHieDdug');
INSERT INTO `cs_admin_log_data` VALUES (407, 407, '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');
INSERT INTO `cs_admin_log_data` VALUES (408, 408, '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');
INSERT INTO `cs_admin_log_data` VALUES (409, 409, '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');
INSERT INTO `cs_admin_log_data` VALUES (410, 410, '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');
INSERT INTO `cs_admin_log_data` VALUES (411, 411, 'e6511cd6JR1fRlXONzTDAj1fSUthfMXH0lV2zF7nSsBf/J1mWIt9RFGEJdXEQw9oJEhr4O9bdc09lgIiHBSGtdvxjJp0+bJzuJZQg0/stS8wWR5rNCxgvPUzWhXbK9eGwJN9KYw6iZOQJf2deeKWxj/vdWBsWwqKOyh2f/z3piBR9kHsozV7yA');
INSERT INTO `cs_admin_log_data` VALUES (412, 412, '86104f9eUDM1HrPdQluahF4XU132Z3Ap8jWEvgp/tx2gRFtpdr/8ET8d/MGaHy/O/zySvhBs08mHntlA/BnzWpyRSVWR5M/NV7Tah4o8XNOCeLJvUEIG/vmctOa7yssG7vmtKL//O6WBvCPaO9RdT/K7CDIHk8CK1iXvciCwzsP0ENWuZWYasXq1hC7XE4gLLkUe6hzMNO+ic6U7k8GKhjbztfAU5fqxxyMas1TsGtpHgL8cRWjBgiIvUtziX28sOyWDu7qnW6m+t9jq6FcugiQHtZVt2jI2BQsY5xNsiV2ONtMH1aG0qL63vg6ZvJoMe6fviMmMcJ8tpkbA4BcoMfYBrTwVtjDBnT5kkcsj3vx3HCmrPJdgsRCK1jpfwOc9R3q7k36H9m+8ijc7gvWHlSOPP2UmEua2RjNLmiQos0gRQCKDXkjbPsUUC3AtVHHq04BPSZ1a84DAygRG9PtgWFVXRPWsFPL/0lYJ82mFHmJK/ydl+W93BHD211faNvX7+NBoPsExqgPwJGNv3AMj91I7pkV7AqYSpmApbwEHDnpXWhWC/MbWE8pFJq+CViedd65U+GdTHFwJTF5K+6BrfoCKxmt7Ue5yXlgPR5l8mNOwCOZUXzkp6+fLhXSrTpFVD4l8hPz9Fhb9JapDrG+N/4hUOiV36OGlQjjtadcUpuqPdnIKI0al8S0oumxrxX9pt+/Thnw2LycNZCsHTgBCTcGq5JixQ6XODiux99x+Vli5OH61yiIsxTYIoY4gAF1sjQ');
INSERT INTO `cs_admin_log_data` VALUES (413, 413, '6861cf80BCPtsajXJd0PHTKnXtAMX5cCQRR1xvrFVmap2UdjM9UO05zE8CtX6t0WZKPM5i43fEtp54OexV/83XviIkHf13wY8qw5l/S/80VnTRxN9AV9POMqqHMgC6LjTOTHZC+3Cgaisa1bA1VsYU/2OMW15lzFG2FTpoXi+0vZvjgWlTh3ss03h5BJWJ2bnH8ZSYCsB9vBdT1lLhB3KXShl7MQ+FZJtWcoaDiLWaUqm7refp/sYie2yQpLfKYUl+UNyCT/237v1t6THD7WM7Y+mKHP8sp667SatT0wdGmFkeNHqn4n3OLfwzliNDgrhxYZqUgIaeA37gfXDn5iJxiaZ4FOy1HEZH67Kq2L8olz97t/JIKwWccba0jDT5ZGzufDa+f0sb/X6ZxjlkS6v04BkRx4MMkiODPnG2KuuiUlG3H/OJ5gtBwPpdFADvkaSKCkAEGfVGVgquuI2XMxisNuXb5CwE3porNm8H2ipSV0HeibMIFn+4URDLOuyi/7XHXht6wz1SKhnwQZADgfggD3uAfBgHsQ0WTfGX+i9loOTEYKwV3JFr1K2P2/YO/zxQ');
INSERT INTO `cs_admin_log_data` VALUES (414, 414, '0b8f51c06mGq1vP/2hZjAlT4F3SpzPOeBVwL404WWrcyGnbt2POL9hBAY1WE47eeNwOcrpWxBALD0Cmw0uSqr4m/aTxVAxjiaBERKYGKpfURlEO6XjrzIET5Kv00/0+jgj7FxweMC4PpdvU8pt6hyhlar2ke2p8O6KXpa416jh9Yejc2c1RBFxqRzFAvfqtLvpnHubjXNRBR0b6YqXKncoOVd5uMkAOKanf7zTnGFu674rAwAwMVe9OxwiRWsDOd6x/QgpzSIHImG7Dp5vbhJRKKP2ImWicxjvXbrfrpHCTwlPODX9QX8j2OVpkD/QGdjod18H28hVHWZd9w54aDsnGYHBbAPxuhbp0kxB8auk8pHkV1BFAC3BIuMecbyKWs/4m8NuO+bYY9//DEK6SVEQ2KzeFLwDhXIVWH2uNguOTge37CX1SjpDU7TnQ9Gf7tKoVoFKuMidl1RSg/JgB00T1tVfF/j/PSr8e1Fsla8ZeMKwQ9OiCuDSongb5hJMxe2nNGg0J7M85jaOmRiB8jI3WwVHCe8lnTDDsDaSqCDqGdePUxrcvSAJzinhMglYRftg4BdEQz0dHqKCzlFJVF7jBHglx1xzeQK/YhuytG/PAxYYgJvBSQ96QEnh9GRQvAF6ThV/4k1ZDIBz8mo9EA0nuonjvvu+eGgj+sq5dAX6CyWZu8JKzQ4pyUeRX5UU6Z1rO1w/y8Rj/3j2JES0puxhGs76rbArzd3FlF6tGbKhYyLY/lyORg3kfPm3/f2EXa0HHloGWcmo6dJ41TfoWgSQ');
INSERT INTO `cs_admin_log_data` VALUES (415, 415, 'bd8d2d48SxUuITLPsLGFkuHfLDxO66DugRonWMbfbdnbkjQSZ5FBNnB0SRCb9YvZO0s63rAfVZfqzrRZcOLvq1DLVQnxflUsadN7GmfxFytjrNT6eJl0u7YJfz3ns7NWySTP4hWRhKaCRnCuS2GsxKl/DhMem5rvtZv2qX4etUEFWBO5z229ryGZ77O5BVtjcfqyBXXoK0sXSlJAbwBx54v+tKhp5dDIc62R3hGCLnyCcvzceHO0jCd1oogk3UiCvJU4q5kike8ez/ceSqPH/bD5nA50AiSBeuIxtagWvgXROH8lGewty3poLqUpJTcs8+fxMMb/6D4NzKUgdRSlzabOwmJNeSLcQMeNxRxZnvqjeplYfRRmUFe2uSz9nxP7ASTy8Zak8lbeVX6+AUA+++H0ZQF2rq4K/+t7MVEhbQnOP9omAPx58B9mA9vUOFabxECDFKTMUImV5tWTRtfYIQtAtra988VjJB+DT3xURSE516imTEUEXBH9KFBF9t4N1TBNBFPJQ3aYvvQf0g/gk7WKzwdO4aAeic9RGUP9rFJ3qnHsNMVMgOlrf8JEBrmo00Uwda0CaeXgeoAo0ieEuQ');
INSERT INTO `cs_admin_log_data` VALUES (416, 416, 'f5295de9a7GXsXJDwD1FRyM5XjFPXHOBdP1r1BDkoBxImQVV11+vSZ0OyyNAVWQUJZrZG4dfMuXgXYdNRkLIwMo9eCEYsbGWjeGb61N0PB6ZTgZg4vnmqd7r/9b8IVKgFVlqRZQWmKeSqaJUGGYg0bQPOmGEk3/3Bbq0Q2c2q3PkWJKAT4uIHe3JEDKp7Ax7P31dlY//MTAKgugCGN/48isRjSFrCKEEnnS+QgN7O2k1LFlUkfM4kO9i6lGtL/AE/xEnrj97ezxkNOlz/0aJlWjNEj0EQ2eUdVlLNR88swARxpwaaS8Eh1vKCSH9O/NAKGo8bZNXEPKZWRwvQUtR3l1P27F2moPhUNbczO4xJqapKN/1ykoJXcr3YS+NwNnv2GHRPMoXB8ntmvgFWb59epgFWughyNKYZP/SEv1WlcOIbd7tOXq6T+H/2hPWhHLj621GbOCLrOt8HgIlajRnJYBeJfI7IBRyysq/uXL35EbFs57zQHxOeEETPBCj34+vWEg/qTRZm82wVat7431ndP+aK61laNuXFLKPqu/7Lq4kWI8hqgSzLTsPIEZ/M3wClKXnhxv2KjXulKGOP+eP7dt+AQMKlZOqug5zzTpS');
INSERT INTO `cs_admin_log_data` VALUES (417, 417, 'aaa0c472gl6uTVFXCW2YGs+I0BnF+RSzTMTmTGgnBs2wawiifB03FK4MtkLIh/HEoh7MbztfXIrRRpTxtOExNOiK3Eag8PTZXg/E2EnitpmvHNsme6JpJKdtvKgWHRkof/aaopdT37WHIJkJMBXNRyUwD2CpQYZqC90eC58D7+egJAPszpi5LIOfICTSs0ltEbDOZzJvrWIexLc5Hh7g859LIa1UWGI8j+CPdXmST1SpKT8+wQuC4pyflvdVIf9KjYSqXe0H+snK4oRSkQ7Tj6WLCkRIr9PZ++Wt9GdBwROoifp3RR7V9Gh5aHyEhyms6dZ95ADNPh4zUnswp5CsqB4eI9aamNKZFGg1/BnA2HhhBQSx2ORudxXk2KtDKGt4tzoik/Xy6o2FNVVVPn/nmier6EJYcdZLlQKc5DeqGfKB+XRtCPecFG+twhO1qdC0x5/cCn7j5VRWhEy04H2PkQez2tq0HoOXzrsdS1m4XsWRLm5X1HpVGItt5a2uhK9Jiwz9N5fx7RJM2UDL8ZsG8Jnd3KYApIyCAUWFeOb5E4/I7vplPKwrYPT9lOeFDjol6X1G8e8zE4B1zmcIL8sswkRki5ChIjWDG9JokBGw');
INSERT INTO `cs_admin_log_data` VALUES (418, 418, '0ee33414IXoZoGNbr7LlJsIzg9fmTAlZkBo0RPuC5lefomXrW+9rn7CFf8W3jfpOqUY8JyjGpzkoUXKU7bARXq2Wu8xkFyU9lBJ/d5J9X7FMqzbEjGIwnGSZsL7gtkUTxXVqtgR+MjdndG1Rxi7NIlDpC1KcS0sbtOVip2FmwXvgh2jbRaFS1w');
INSERT INTO `cs_admin_log_data` VALUES (419, 419, 'db910c05JzjrNv5hhqQ3NfEwarzfAE33slP8t52iYWfiu70XyEtE8z6s9mLDjwjTpxr75GM14xyayDefXnBJp004wPSw4mHRztzdQ0liuZZRwpUeBteG/B7SWjo31YxNqKEAol/Rln48oGR9Areca6AyvcJqpfq5PYMEvJ9ZEj7wm9XT9lI0aDmAHpKa+6jWLkVIYvZbNhmFMa7AWjz1Ie+ZIws0zwHNADhwiJ2MKw4');
INSERT INTO `cs_admin_log_data` VALUES (420, 420, 'c6d3ab39RDDtX3MUhzJNjDA+X7PkkOKWgXKinFcCoT9wCFK1L7eunlYBvM+X9f++IWHxqS+iw5rYI2bvHzeh6Bu/0u4Ehb7rJKTrBnC7TVI+TATjW5CC+ryaGoT5AczrMq2jUMI8OngTGSF8jKxa5FSlFYIaOfcqH+L05L26yNGZjIt9Noq9ysAASXSK/BnrI7FFaAsYqGbIi5FAvBisq3mGEs049Y0hb0XSBnzaEA');
INSERT INTO `cs_admin_log_data` VALUES (421, 421, '83167183sPfepCjvoqrtpRVTh/zviihUgcCnSZbFVAI+5vhXaYldLjYlU+mhbRroYMorNp/POv8aiSMtgJTF360JyMnfkt6kNkwXBKfxV/JpX0Q7naoO6ngnA/0jBQVlrXTCPQ8p+HZF20/sGVnmXK5n1mQ3qcLSU85RkX8iAOkdkmTyHThpw/6SZ/swvBdw31KR19+29iM5KGBrAgh0E0puwvGHbgh7Bpxj9BkFFA');
INSERT INTO `cs_admin_log_data` VALUES (422, 422, '1aa66ffe7g62aOohrdPI/toWPKlJCrW2b4CYwnGVnlTPBUDXCkcHmwAt+8UIq9Dlaoec1levl73K/+z4c+asUY1XhNKLJ4IJ9fDbVY6WeSwLqMuoWKnVF8P6H+2cqurH6esoAPA4iiMt0P7ovg2s9nTRa64jLXhtdpD2MlpzPJyP2gRXjwd2EEjpI9NCvcMcWYcWCblByac0ZetfYzClZfqcAdtYAg0h/x0GqWFk3gNZ8LMhWg');
INSERT INTO `cs_admin_log_data` VALUES (423, 423, '1e5927f9Dkp9KkCCejjiSDpq2HT6/2hbIFat1gcVpaBI5pf52pnCPop/');
INSERT INTO `cs_admin_log_data` VALUES (424, 424, '5d2039aecHGvT4cYXYx02PZWD5B7QERUpCHaE/y7fCBs/ehFxdEDmEGPhW/NyKIZgkbmBv8SDye0SMilmjYcqls6zZfQ9TZfYVhASyAVy2EZpCoxeK5W/oJK3J4sF6K6MGtlKxnep2Tl8fZSlTeQh8xtAiqAAnZ6+t5hKGF+31C9mAJpgSK7/Q+dM+sJ9LmDq4yA9II+bSg7jL2EvKVgoQU7k28OnpK62Z5FG/XincfzIUy8aZ4VO4Urz/gehH1p0Azyn98UwL9CaWoRNEwea58TyW7Lxepi2gUNL+tcnIWH6R3trXpXNsiH7RRCcoXOhnyZHG5NMk61+6AWHyndMThZz9LGYF2OUPc');
INSERT INTO `cs_admin_log_data` VALUES (425, 425, 'bfdc4630AaODAz2YQoEvePwKRtwYf1lN+fqa0UG5HURHJA+PCKWMvVwRHkeVbptNccWhO9beY5mkr33YCma2Y3tkMU0wR7yhqVz1dDno2VeWdd4a6E0ko1CSPyuGosZNVu6mIjlMr1UPBkFLuDzaeTWctTT5ZknHt7IaixC6UmLnuKuXQY2dZAO7Mw0u1qvPc1Z/LiQ+Vg75dAi8mc8uOg3Ni72084WspLtxF0EM2NSU/DUzQnZkN8w5Q/an+YoQtqa5CaEtXdg1vVaY1AWn7YCNsw');
INSERT INTO `cs_admin_log_data` VALUES (426, 426, '6396d35e3cmHD/3eksM6mo7CXSA3RNHQela2II9VCUiN8kSzIRNd16oo0JFUC5pzYeZOQyIBJRRCwy/hyB2y34KG1Naou920DT3HYbP5wr3JNI7b2ZqXwavmnyxyQex+8QtUR4aCzQfqxj3m+xlG7t3QzF8wAEB+yl0VDaFf4UMpjjS1whQaUd5UMWCL4TsPwThAw5JwcqUH9XLcPnQAv7GNV1ffKk92/AosaZZw256kmhfFEbea9K0p1JMmz0RevnYuLdtgvTfybQq/oA');
INSERT INTO `cs_admin_log_data` VALUES (427, 427, '2a5dc7ddDveyDOQjprzzSGT5S3llblb0nvoIh+wTAIermrn3Oc+EJSzWLKaOw/BBv38XN7ganSjfbM7cVlVm7rRLXNBoSx0yfgDYOrIyfSQki9LW6MHNACw6ZuOAhzTnif+vKfSF2X3383eLvqoGA3JsK9Mr753gBJqqzZV4NxYlT4CPna9Ek9juOveuAqWmqyoKIeXtshSW2mIwYReVtek0RMGjiTNA1VQ407D8x6YqsF3jBD900J4KAO5VorXE8A09mceJG6kJbvUH2khqDh9fFlWecem+/wNMw4B+WgmgTA');
INSERT INTO `cs_admin_log_data` VALUES (428, 428, '1ae24211WWbRR4TZnrmddkqZVlPmssc1jM71VjiB/5kMgT0gfHubDQwegSLQGKfrZZPiGtjA3VniAfVOG3vnrG/ZCFaxxDwQo4usK/ELARq3qJ9Pv1MNXHyV0STwft51/4TGV4K30DgM8nOQo/9e/N0u1CgS0HXY55br0Yy3Tq6h38olZ1TcEqv8hRp5QxgSb62LQAKoDGCaS2i+Xrtg4luoeFQsTumlcBhg7dsCfyU+nb/c5UehVAjuU1oQrtow99duYC6h2mEcZb6DsxE7xrDxhSKfIw7fdO1hX/aMOCc2g6ZtY1lgBDFqBgX+NOWJYiSBw0FRV0rd9jBr4XGcAOkRww');
INSERT INTO `cs_admin_log_data` VALUES (429, 429, 'def5abacz+gWSIrRXr7WV7yB3vm4LWHR64DyftpFzOss+IpXVWTLMBpwfUz85nTfxAyseTs4Xh3ylTdbZmjnjYMWTUSEZVBVtouniTvfBQpaiME+DKNj4l5OdudY95WIE+aEEhTu7mRdwoOm3Rwju5bjXzLsrNsOUL1JO3iTSIYTdtiNWLkuYCyeiHXy1uGhl+IHkcAPXCLXi5s1/Elrrp8W0BYENbFQykJoK30ljPeC0QhgCZ0ZZQ0WH6XkxSg5eqBCxzWvw2pVdjnzfXgim7zBXYLtFP2lf8nr8Je3IHSXp9/PF0jEZ4te/RfgKTt6YRaMNZNqyRBiGHjwft1vwJglru8+BMpfHk4yKQ');
INSERT INTO `cs_admin_log_data` VALUES (430, 430, '5f1fb99eoDoKDkVLGe3w8SvQjsROcoKJwgQa3I3Niw+uHIKlBs3Fde5MdfZYjqdATbAolECoyVxbYIdxlEIbp6VNdCeV3zSk9BA39OO9sLxTBsPGtfghT8uuK7UiPg6aITHrduGp/1XDedx6cEPB4jfwlosVg8fE1wV1JhOssK9gdxFONORpqxFtl9r/TneGpyL3Lktc9zcFpqX8KlXbHlmv05vhnO6kJUTmplwBYg561Q35UtN+xv4XfXk7WAqVQ+j22okCpAUmnvtLvRyBP0MEn8t1xPW6XNz3Tlw/thlciF8VLnPOO6pHJH8FYpaJ0OAD1M19wj+QDx/YWRKtcXp+ag');
INSERT INTO `cs_admin_log_data` VALUES (431, 431, '7671a27ahXrPR4QtRD0bFo3B6hDJjLk9JgMK4oLRDHWcwYztOEhAO2wPhsp8f7Krbl3JZGPigj2GK3Hi/FMJStXw1gnVkUFXYGw7sgc0+saCTVvKm0ByxJDxWNqX32V4VlyDIX1GLhL114ZhPxdQa2s809nUpydCVC+uHUw6PsGxt4zBMSfUZPu5QBCuTkqdL8Y+jFUZ0vNPYYYA8mn6ctyceDYNf4c8aH0h3TmWS/RR6gGCCRI5aBY7D7GoEb2Fic+b2PTFXfKSg4n1vudDS5qikhSkAh+rd7u6sbx5W4hDqXdtQhcM28h3NFQM7V4GDPc86g7Vb1bVtQPLezo');
INSERT INTO `cs_admin_log_data` VALUES (432, 432, 'fe2d283eo+x0Djiy094AedAGGC4DNbeq9gbLUmhvV8eMyGbka6x5fHhKRNtnOZx64JtyFANlf/fm9o0//APXwMKOQbB5pP3lsWdiCQnUr1hdilt4SnwchczWSqE531MTaYfRhLEvB9/tmwyu1U0wyW6/Th0Qy0GDtqo83NBv4c5hA/eftb+psYzECIiqWhe21GzJmj9jz4o8uJBRDx+tc9Yc0s/F5fwdTkJUCaE88aq1bDRsUSUwCLGnPxKJO/8UYArLQERkuxe4rx0HyonR4FELblsgfhziVR1JrrY55KVfO1e31Vpz/f/iOBR8gEB4F8VQY4U/MqmR428FH7zW2GUyJYGeB3Mt23zUFC8/');
INSERT INTO `cs_admin_log_data` VALUES (433, 433, '42bf6fffkKCrqWz8tEuLMrmJ4EQ4oQHlYaBUf45Lt4nF2N/N4cU7h3IpVVAh9XSog6+2mW8OQlpLt8HaDJ1AmLCy2eJvdAJrJkcATGSY8YdaVoALdne2HOu5tV6MAlxtO05nAozeeGnN0rBAfv1zyO4Jbnw4+fXi+IvLqt1OxDXAePEwTsCJhdh/Csw8xrX9jGfs1yeZVH5++ZJS4Pppdoq/rYDL0N5nDSEsinZVGJOTU19R+/ZxghG8kGy4OD+bbEaMg9QFPFCjxYW5i0VC8ls1IJ94N01R/kHdiW9TVnoGAi4Age33C3n09a5Vod/vfiGHCzwHL+M0DjcN0UcsHyCjjDUIZa7tx15HtYw25hERfSqea1HVvQk');
INSERT INTO `cs_admin_log_data` VALUES (434, 434, 'd23905baDDjbzex8Hlz0hcz7HvwXwTXqL1fAz8Zliu78ZRoFpQ+uBR0tVxynLrai+wihsDMMlNEkq91xXFcP+U7pTLJ9dWO9pJegwQR5ZfbuEcw6twLdvleInZZ3ELP6n/65DI6xUEI0ujfjaQCHh/eRwYuUialR8AK5xKezUdLoi7mcjfWys61WtxeZZiV1H9sZAq2o0qIBU7UZVJrfRCe3zO4Cp7p/heDvGJeic/+Szl8Be1RayedEG3PehkXTT0LHotZ8+u1Ubd+OD2Z4tFruglV9SUVRhTHW8hwgCoT4F0dFmKL7FFf7u3kRVrSi6v6xkEnsud3w07xez2VW');
INSERT INTO `cs_admin_log_data` VALUES (435, 435, 'cef8fd54JiVjtPBkY4imrOFUBApZjK6hai4zKTP/fLHcqipGmyh0mUlqwxOumJ9XuhbX0S9LDg6hxaq08Z2SPzqrxTapIiuC1TsQHPlBRAZvBTUMesscYVOEbccDarGewK+ToWwhR3F//egrg0I/oDr+SlBsxzBmzrYTB/qt4UROn+N3LHLI6h2WJcNqlU4QJnoRzqKP62i7e0PDgrdWC648JeB/Q2vtqj+thXE8TzMka/pTsNc9lvbm/NRnZxII58CBMcLVzhOUGaBu5m1JD1Se8nOVh2tybTrOBEagJsBbpZnbTf1csnUxBichLvyHMifaRe0WgCPuQXOAtrlvmNQ6mRCo7HKPTl98APupiQ');
INSERT INTO `cs_admin_log_data` VALUES (436, 436, '61a0e1dfTXDOonRVLVkCSUKyV+BUQMVrGrU+YhdtpJD6qDrbLSsDs4WOGdR+AXGsZGZCwf0eI3L7HOAsggtQIx8U0Pizie/7zfev2jDdfhMBTu8pqjI1sM+gw4npUm5QjNp6gJ/eLp9vqmjKeoMWQ0MaADo4PBIYmTi50JORid1lRgHelZGMUIIERfL/bKE03raE0+yxhj5JG1mnVKoI6EMosmfrbrUHVZVriaiC5iibTcFATYW1ihtkmTyY+V/mbMuFD8VMzwunpaVT4iuvyhLwO9bAEJKawirb7U8WtxLXo4YSeXKeg4tMf31bY1bTi+ZCCpjbp+gmBF5WnC9B1deI2xpkrAwkn0m1vQ');
INSERT INTO `cs_admin_log_data` VALUES (437, 437, '0d2324c2Y9imvAWVBI37n/XB+f013uHeL53Xy18gccDzRhwdcZIE9sYmtcMifMQhwl+8hLzDc5E+y3AI6x1tjJtWwO7Wu/ncrx3x1pamq+GYwV6eNFc+e7bd7+zQ80Z9UgOZcUMyIFnmwyZDVkMPwTymUQVRaGOQrhHHMiBY8yZs6IqX6xcf8VeGu2npHHMXxLSjhOLW6GXU4hP46qmSkXVf+nmFJR8tmLUNyUguV5PhWdDo7Nj9c5A/8is8lWeYXZOLuDqcPs+uaBpHFNq3ztgonNl0hNf0ttXeucyz9h7KqGHiADlAabQgyifBDmQNZsyPntfZqxa4ug');
INSERT INTO `cs_admin_log_data` VALUES (438, 438, '5c9a8f77nBaKw3CBBOGh30bLHZDOW3cQp2DkCLUbeYOWDs/JFYaOXYcUt0uvAggemJzefZgWn8V7OlWn/KxJj67na/Hjmg03/lk6uPpm7hIYeSuC/XvxAmRUDuCd4i4AGqJJbbsvZ4uT0ckXojb7TmpFzB9oBxFc76dZ20mywEfPe9LV7+cQc5VSkC/pdUSuso8ou0EcvTuh3XrvWTyp/wv0VictYz0kEnXBk3K/5XAppcE2SVzJ6LkZSzdnslDkiNHP8j7zJyRG594b4mYwVEtCHnTpzaQTKcQ9DBWX5dlDOJ2uL6VDmcRlrRrVm1aW7VJ8kal01d3r+HRQqln4yiB2uFV0BQ');
INSERT INTO `cs_admin_log_data` VALUES (439, 439, '998dcc743EDkTbLqfhvyg1mraITt6UP17FXphwAaJ7PnEWwsQXWHYcjU9ENMfpAEUMbXvTgxi6G1Xgthv4578bHEj+CyOB56Be+UqXTYqs5zAjhzgI6jKjGpifGMJ7i75BB0BscsWh7zuuRZbaXVnUXZ0+1ZOWo5zMhujA9bhg6cCPfBXTYUerAQDTJAwMf5uxo2LvlxZN/9JMcx');
INSERT INTO `cs_admin_log_data` VALUES (440, 440, '54141781ftpAPv2R8RPlOoenmLPvW5Q7SY9IztabMmSH480duw/htQM7G5dPb5BTluJUWZZtVeCdMjI+SHWuoBC3VWb7upXw82MvmANux8f8IGWe6FKXzh7mX0aCLwvnzE6k0qxITlkYCqCs2toou4CcQcr81Cqth7BiCiIDXskWfEN2FXZMJs7qIVKTUP0BiideilJEshl7FKeI+2m8UEMjIjRmnG1DurIfw4es8zi79PHEHM4FzQ');
INSERT INTO `cs_admin_log_data` VALUES (441, 441, '1bb84306HYuoLMBOVdfyILVxO/ilCGOJhcgJqg1wiIBydjEaOinQHokOFkePLSg6MOIkDv9F59oF14mJX+akZdCwrrazkYG53J3zzoL8A5sGaAHq3f8scdYoHpjLD+w8X3AUk1lkSnb1tOreJE2/rRU0kdgMcNCCzPI3+Lw8dF6HK1sB6Nx0PLf8x7fuqO5uFAMhtr5/ZgSxzHu2hlaIbsT9dv9K/b6jD2KiguOg5tnM32Cr/Xv/0k3jQeE7b4qAwgjdAVIkOqEJ6CQaXrMY/QVITMKNxA8sOOpQ6VzcmOQeIMq8bvi+ClqB4dlX9fGBsPEvJHDTWy8lNP/1RW4RnD31ouvbyeY');
INSERT INTO `cs_admin_log_data` VALUES (442, 442, 'b22cd4a8qD+tF92WYZgMHhoixgS/Orqxzwu5YFdubH+iIJobF93LsjlEYUZw+g1nrVtSl/Bao6RSEA3Beg+yvrrSr1G+d7YfknIUbWG4xTAVs1mecx9so/ESpEhjxaiNsXZrD7O+X2TFMN554IiPypDeSw1aGk6Qv4ReiXsmuahoXmgJE3z2KA');
INSERT INTO `cs_admin_log_data` VALUES (443, 443, '660e0cffGLHxEsndNg2FppT14VaOCDqlev1YYUy5IDnBnhBEPgV6RZn2ZqYpAbBjp+/GfQagLYkUOQkCeVexDHKqQ0/zOfYbaBGB5HQETVObYoTh0k+SBeKGV53wZecLgGLPElzyy8GyfzE6lzXE3y3lf/9vcpBdsmQ0rzwodaW8Ux7phbkeKA');
INSERT INTO `cs_admin_log_data` VALUES (444, 444, 'e967ac221ZQBqgPeJ495X6IPw2JL+FeQXArrf0aBUyW2CpNrh3ZBavaIZFqt1y/qIeONvx4ZV47+TFqMgSS3/BhBhJt9hERJebOy+jS8SnVV9UPIS/+7l2mDBQgEZ6lrvEyNF9f3DyZnTow/MqEMs84ofaiRdZN6LCKYZrJg1NgBklgMf2ReXQ');
INSERT INTO `cs_admin_log_data` VALUES (445, 445, '6de550f9vKhINiDotHqeFxRnn1imDtSesqPL7V5FSd6mO3de1zBe5OLFDeBak+L5gciwHqzDmzojaUcKdRTJrEE+mm3ZLgXgTizBuWgmHGef5pj6BfQFWdkpihG7/0zIc9S9V1wMOf2GXe6kqNMjHOyFSk9xaQpb+aahnr0pL3ytJe/cLsv7oQ');
INSERT INTO `cs_admin_log_data` VALUES (446, 446, 'eee148f55q9txt2g0YHP4JErxoHRL7UvjsrESN+Ll4N3EfBRjUpJdVLFDoiFGMmK6OFFeLbWeCgBIbXCrq653ty8Qo8ZmXpUB+GGUwk4dQiFQL7Bx5AKW2QETzuID/Mcn9RINC1edE5uT6UTNfY7VLiZ9Yl0heHb6iImb9+gV1ralPnEMA5V6kJGN+naT1RRC+kkRDjzVniyF2nzyzUtORewOqcvWYclOVLziO8GmmrDriDEFC5d5Vr+rtp8pqFcfo1YzOpqu7nVWBWNButPfdlCpI+JwewUsi51ccEDfp0VmVZis6pzchq15b3/FU+Ng6cXnVu7Mp4I+eYOR6aghvKlW7icoLE');
INSERT INTO `cs_admin_log_data` VALUES (447, 447, '55e42da38DACCyCLEQu0dsSwy+M4bpSIwv5hQxo3V5YpQ4tOPxZjrG2nCdNFU4ejaJCAd1cATQgQdv83mun8RrDa1VSx+t44oOUV/7zm/b2WIL82v9/gmOqU7C23e1t+xWga0U5/3STKLPVzUn4ITRFVdhPfAbD9A+8Xqy+JPbYmh7Cb2lgbxg');
INSERT INTO `cs_admin_log_data` VALUES (448, 448, 'df350364X3c9ju+fWKND4CyPL8coapbM84wHtsxPkhoMhlmB18GWKfsFA/cUA58qU9fNs4ThFIDbkRAzb9+0ka6YJv8uPkspKCujl6Aw1ib3WvnNbP6nvQnPo8p37L3nQwsbtsjaBAb5A5v0JD8CzQeY5HqLcT2GwfRyu7p7ZD174QvLB5AYpo4FmKF07ulStaued6eOKLq8WcIhB6Hdo0FC7nN9DuKTHEUdK7zmsYCGo91qXXa5iBNj4i1Kwi6ylpryhWZUYfV6Nt81KHZ4Ls0tnAy64P1b8BUWepw');
INSERT INTO `cs_admin_log_data` VALUES (449, 449, '3a45bdd72b1THx/wxX+XUZnD2sS1cWExNy/BSJznGUWRxthry+0JLA21dYZTdXdG0dCEBQ/v/7XT8nBJsGO3BC0aZEx8ZzWWt3on9jNOtr7KGzE39Da7C/R0a6lszlx2XerQ7GMMTz6vwnT1+qwgrie0zOH/ezfx7/OvUSjltbfydgqPjcrWKXq6PG8trCHH4pNSNtaQ7hrOpx+QICRVXDJSZ/0nR06b6eOIizpA2gaui+Y4bFCy6Cx1TjFJHm0nPuSbMGKYcyzWrj39wCqT2yLLmNujp7bB/cixfdA');
INSERT INTO `cs_admin_log_data` VALUES (450, 450, 'ddfe53e9aOqvtY1cFJDeAK6qmAxG9LkJzubhgeswHV2eIeJw0kl6vWVjt56NqukMtoiStZecgT6wPycfCH96/cmUwVekG5vgoCAwfxhOy/pGOhUc69vjJQIekLR1w2xOFd7GOIml+8qfIi+Gmy3GwGmrm1E/pnorsRPqKHsbpocblp5s0sgXUnKeg+/NV8RO9Xtt+Su4maxyKPw/CxR8HbaqvJl1VFO6wX9IpM1wke9z0Rnld34u6KlpeuY1AtypYD4EZfh4ByVkYkukpp9a42gtNJ0TO3Vc71wZXw');
INSERT INTO `cs_admin_log_data` VALUES (451, 451, '7b216cadR4a7VXPX9QiZF08RkY0WmKWJKwidJ7J07yL/ZsBvrXPsilF40eScKDphEiNlCkJCvTFCxFGuOZpHePrwjxrzJhf5QkE0n8yvLRlCNSymOl5osAvLX8XA6IdfJjCkg3nyxnqO7cxU+xHtJQ3hCn/G0ml5fdQ6kfJHp3x9+hM4OLY4Xg');
INSERT INTO `cs_admin_log_data` VALUES (452, 452, 'f5b224b2pFdA9ow4Y8ml0vATM4km/hZSKtPLbDDyWnWVUkokIUqpMCp6UPAMzoB3MYgKJL8qkp/NvONf9vzXByuV5Qr9yoG2tl24kJh66HR+410KG50aLrSP9Lv2Dfl3jVl0EnxYUb6DxxZXuYJ4w2ygJxUrD5kZguabP2rofkf2AnMu0GaR9g');
INSERT INTO `cs_admin_log_data` VALUES (453, 453, '2846ab17iCPt/aWpzDpoZc7uj+FqbIaWhNnfLHr6p0PBk5AMxjz8WtWiuOaIlmFtWcSrjC2QSK9mlRut7xHsyKrIwQdn2CIDOaRj8BZEM7PhV6+R9hquGV6TWPRYY4Vc4DvVlQS5GOnPcA+qERHwajwgchLSJ5H81sotcRKflg/dzEns0ctC8M1S9BrfVPSueHwYLEFpf5Xb+DX2rP2tKbgsNptbOuS81d7c/zjuUfvOukjcf8X078gLWV8C9LlwzXyugwkq5IB5AdEgNfE0syUuN5rcOcR/xqLbXQdwZHmIGIxLxJwxV8+UOejsuZ486wdq8izqk9olb2lICAI16YYecXC6hF0');
INSERT INTO `cs_admin_log_data` VALUES (454, 454, 'a312c47cP/rrkGcW+khXXFY79Jb+GSfjMBVVLmj9KOtPwMcYlKWGZTTCAM+fVhwhBNvdVsabL9IvjnU3EP7aG9TwVwMndToFv/Qlh3PCAbtZ+mHQCs0KFqVRyKWaQlH/v5A+ieTUCICfWUjcxaPOaUAqM3wdJmN1Inkq2LH4geCP0BU9iC2+o5ZPUaezGjPElK6WaNjNxM0c+AFmBiRg5pZU8YOmDa7nnhqw3FHw94JcYvfxPabH3w6C9DmduiiHACdsnpdF4LNgYWrsO4RvsquH8HqAvU2k+h016SXnKF+DruXO4nFBkK0SES+Nx9S33DtB5ciLzVcCDShc2A1MJkAEMgb58hm2vR0');
INSERT INTO `cs_admin_log_data` VALUES (455, 455, '2138d086FF3M0sHYHkEr02DQqJEROi5hQlnb7G0ylzsxwhllwEW7cOYfPA4Fpu0CxrYPCCCtQEcDufUG7C9RMlTFoholF4StKSuxmrejhDBD0jIOOVIaQxu9vZH2n+mV3IJVf1h0U651RSXJtq9DWlv2GoghE6L4h+lFZZNlGODPmycoTpvp4A');

-- ----------------------------
-- Table structure for cs_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin_menu`;
CREATE TABLE `cs_admin_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父级菜单',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url',
  `icon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '等级',
  `sort_id` int(10) NOT NULL DEFAULT 1000 COMMENT '排序',
  `log_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_url`(`url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_admin_menu
-- ----------------------------
INSERT INTO `cs_admin_menu` VALUES (1, 0, '后台首页', 'admin/index/index', 'fa-home', 1, 99, '不记录');
INSERT INTO `cs_admin_menu` VALUES (2, 0, '系统管理', 'admin/sys', 'fa-desktop', 1, 1099, '不记录');
INSERT INTO `cs_admin_menu` VALUES (3, 2, '用户管理', 'admin/admin_user/index', 'fa-user', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (4, 3, '添加用户', 'admin/admin_user/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (5, 3, '修改用户', 'admin/admin_user/edit', 'fa-edit', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (6, 3, '删除用户', 'admin/admin_user/del', 'fa-close', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (7, 2, '角色管理', 'admin/admin_role/index', 'fa-group', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (8, 7, '添加角色', 'admin/admin_role/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (9, 7, '修改角色', 'admin/admin_role/edit', 'fa-edit', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (10, 7, '删除角色', 'admin/admin_role/del', 'fa-close', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (11, 7, '角色授权', 'admin/admin_role/access', 'fa-key', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (12, 2, '菜单管理', 'admin/admin_menu/index', 'fa-align-justify', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (13, 12, '添加菜单', 'admin/admin_menu/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (14, 12, '修改菜单', 'admin/admin_menu/edit', 'fa-edit', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (15, 12, '删除菜单', 'admin/admin_menu/del', 'fa-close', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (16, 2, '操作日志', 'admin/admin_log/index', 'fa-keyboard-o', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (17, 16, '查看操作日志详情', 'admin/admin_log/view', 'fa-search-plus', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (18, 2, '个人资料', 'admin/admin_user/profile', 'fa-smile-o', 1, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (19, 0, '用户管理', 'user/user/mange', 'fa-users', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (20, 19, '用户管理', 'user/user/index', 'fa-user', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (21, 20, '添加用户', 'user/user/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (22, 20, '修改用户', 'user/user/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (23, 20, '删除用户', 'user/user/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (24, 20, '启用用户', 'user/user/enable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (25, 20, '禁用用户', 'user/user/disable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (26, 19, '等级管理', 'user/user_level/index', 'fa-asterisk', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (27, 26, '添加用户等级', 'user/user_level/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (28, 26, '修改用户等级', 'user/user_level/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (29, 26, '删除用户等级', 'user/user_level/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (30, 26, '启用用户等级', 'user/user_level/enable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (31, 26, '禁用用户等级', 'user/user_level/disable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (32, 2, '开发管理', 'admin/develop/manager', 'fa-code', 1, 1005, '不记录');
INSERT INTO `cs_admin_menu` VALUES (33, 32, '代码生成', 'admin/generate/index', 'fa-file-code-o', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (34, 32, '设置配置', 'admin/develop/setting', 'fa-cogs', 1, 995, '不记录');
INSERT INTO `cs_admin_menu` VALUES (35, 34, '设置管理', 'admin/setting/index', 'fa-cog', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (36, 35, '添加设置', 'admin/setting/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (37, 35, '修改设置', 'admin/setting/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (38, 35, '删除设置', 'admin/setting/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (39, 34, '设置分组管理', 'admin/setting_group/index', 'fa-list', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (40, 39, '添加设置分组', 'admin/setting_group/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (41, 39, '修改设置分组', 'admin/setting_group/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (42, 39, '删除设置分组', 'admin/setting_group/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (43, 0, '设置中心', 'admin/setting/center', 'fa-cogs', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (44, 43, '所有配置', 'admin/setting/all', 'fa-list', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (47, 43, '后台设置', 'admin/setting/admin', 'fa-adjust', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (48, 43, '更新设置', 'admin/setting/update', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (49, 32, '数据维护', 'admin/database/table', 'fa-database', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (50, 49, '查看表详情', 'admin/database/view', 'fa-eye', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (51, 49, '优化表', 'admin/database/optimize', 'fa-refresh', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (52, 49, '修复表', 'admin/database/repair', 'fa-circle-o-notch', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (53, 61, '文章分类管理', 'cms/category/index', 'fa-bullseye', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (54, 53, '添加文章分类', 'cms/category/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (55, 53, '修改文章分类', 'cms/category/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (56, 53, '删除文章分类', 'cms/category/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (61, 0, '内容管理系统', 'cms', 'fa-list', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (66, 61, '文章管理', 'cms/article/index', 'fa-bell-slash-o', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (67, 66, '添加文章', 'cms/article/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (68, 66, '修改文章', 'cms/article/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (69, 66, '删除文章表', 'cms/article/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (71, 70, '添加文章单页', 'cms/page/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (72, 70, '修改文章单页', 'cms/page/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (73, 70, '删除文章单页', 'cms/page/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (74, 61, '轮播图管理', 'cms/slide/index', 'fa-adn', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (75, 74, '添加轮播图', 'cms/slide/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (76, 74, '修改轮播图', 'cms/slide/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (77, 74, '删除轮播图', 'cms/slide/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (78, 0, '商城系统', 'shop', 'fa-shopping-bag', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (79, 78, '商品管理', 'shop/good/index', 'fa-microphone', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (80, 79, '添加商品', 'shop/good/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (81, 79, '修改商品', 'shop/good/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (82, 79, '删除商品', 'shop/good/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (83, 79, '启用商品', 'shop/good/enable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (84, 79, '禁用商品', 'shop/good/disable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (85, 78, '商品分类管理', 'shop/good_cate/index', 'fa-angellist', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (86, 85, '添加商品分类', 'shop/good_cate/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (87, 85, '修改商品分类', 'shop/good_cate/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (88, 85, '删除商品分类', 'shop/good_cate/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (89, 85, '启用商品分类', 'shop/good_cate/enable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (90, 85, '禁用商品分类', 'shop/good_cate/disable', 'fa-circle', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (95, 78, '商品规格管理', 'shop/good_specs/index', 'fa-yoast', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (96, 95, '添加商品规格', 'shop/good_specs/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (97, 95, '修改商品规格', 'shop/good_specs/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (98, 95, '删除商品规格', 'shop/good_specs/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (99, 78, '订单管理', 'shop/order/index', 'fa-file', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (100, 99, '添加订单', 'shop/order/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (101, 99, '修改订单', 'shop/order/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (102, 99, '删除订单', 'shop/order/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (107, 19, '地址管理', 'user/user_address/index', 'fa-clipboard', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (108, 107, '添加用户地址', 'user/user_address/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (109, 107, '修改用户地址', 'user/user_address/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (110, 107, '删除用户地址', 'user/user_address/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (111, 19, '账单管理', 'user/user_finance/index', 'fa-archive', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (112, 111, '添加用户账单', 'user/user_bill/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (113, 111, '修改用户账单', 'user/user_bill/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (114, 111, '删除用户账单', 'user/user_bill/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (116, 115, '添加用户提现', 'user/user_extract/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (117, 115, '修改用户提现', 'user/user_extract/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (118, 115, '删除用户提现', 'user/user_extract/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (120, 119, '添加用户充值', 'user/user_recharge/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (121, 119, '修改用户充值', 'user/user_recharge/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (122, 119, '删除用户充值', 'user/user_recharge/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (124, 123, '添加转账记录', 'user/user_transfer_accounts/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (125, 123, '修改转账记录', 'user/user_transfer_accounts/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (126, 123, '删除转账记录', 'user/user_transfer_accounts/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (127, 43, 'app基本设置', 'admin/setting/system_app', 'fa-500px', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (129, 128, '添加商城活动', 'shop/shop_activity/add', 'fa-plus', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (130, 128, '修改商城活动', 'shop/shop_activity/edit', 'fa-pencil', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (131, 128, '删除商城活动', 'shop/shop_activity/del', 'fa-trash', 0, 1000, 'POST');
INSERT INTO `cs_admin_menu` VALUES (132, 19, '提现管理', 'user/user_withdraw/index', 'fa-bank', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (134, 132, '用户提现修改', 'user/user_withdraw/edit', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (135, 132, '用户提现删除', 'user/user_withdraw/del', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (136, 19, '分销设置', 'user/distribution_setting/index', 'fa-deaf', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (137, 0, '消息管理', 'message/message/index', 'fa-address-book', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (138, 137, '消息管理', 'message/message/index', 'fa-pencil', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (139, 138, '消息添加', 'message/message/add', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (140, 138, '消息删除', 'message/message/del', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (141, 61, '热门搜索管理', 'cms/hot_search/index', 'fa-comment', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (142, 141, '热门搜索添加', 'cms/hot_search/add', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (143, 141, '热门搜索修改', 'cms/hot_search/edit', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (144, 141, '热门搜索删除', 'cms/hot_search/del', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (145, 19, '收藏管理', 'user/collection/index', 'fa-list', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (146, 19, '安全日志', 'user/user_login_log/index', 'fa-address-book', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (147, 61, '取消/退款原因管理', 'cms/result/index', 'fa-dashcube', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (148, 147, '取消/退款原因添加', 'cms/result/add', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (149, 147, '取消/退款原因修改', 'cms/result/edit', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (150, 147, '取消/退款原因删除', 'cms/result/del', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (151, 19, '邀请规则', 'user/distribution_setting/rule', 'fa-book', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (152, 19, '等级规则', 'user/distribution_setting/level_rule', 'fa-anchor', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (153, 61, '公告管理', 'cms/notice/index', 'fa-list', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (154, 153, '公告添加', 'cms/notice/add', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (155, 153, '公告修改', 'cms/notice/edit', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (156, 153, '公告删除', 'cms/notice/del', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (157, 19, '用户历史搜索管理', 'user/user_history/index', 'fa-anchor', 1, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (158, 157, '用户历史搜索删除', 'user/user_history/del', 'fa-list', 0, 1000, '不记录');
INSERT INTO `cs_admin_menu` VALUES (159, 19, '会员价格管理', 'user/user/vip', 'fa-list', 1, 1000, '不记录');

-- ----------------------------
-- Table structure for cs_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin_role`;
CREATE TABLE `cs_admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_admin_role
-- ----------------------------
INSERT INTO `cs_admin_role` VALUES (1, '管理员', '后台管理员角色', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48', 1);

-- ----------------------------
-- Table structure for cs_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin_user`;
CREATE TABLE `cs_admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJGMzRnR3U2ovR1NobzZ5Mkx1QmFYUC5tdEhRLkZCcWNCeE1nV25uSkVjeUFtSUMuOC5xODhT' COMMENT '密码',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/admin/images/avatar.png' COMMENT '头像',
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '后台用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_admin_user
-- ----------------------------
INSERT INTO `cs_admin_user` VALUES (1, 'admin', 'JDJ5JDEwJGpaZUgzUmdNZlQ0RjVvTWVwemxEVC4ud0dyYld3d2JDNERTU1ZudmNqUVpRTjdPN0ZOdmQu', '超级管理员', '/static/admin/images/avatar.png', '1', 1, 0);

-- ----------------------------
-- Table structure for cs_attachment
-- ----------------------------
DROP TABLE IF EXISTS `cs_attachment`;
CREATE TABLE `cs_attachment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) NOT NULL COMMENT '后台用户ID',
  `user_id` int(11) NOT NULL COMMENT '前台用户ID',
  `original_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `save_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '保存文件名',
  `save_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `extension` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '后缀',
  `mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `size` bigint(20) NOT NULL DEFAULT 0 COMMENT '大小',
  `md5` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MD5',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '附件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_attachment
-- ----------------------------
INSERT INTO `cs_attachment` VALUES (1, 0, 0, '8d313384cb74ffb7cb83fe717bbc5717.jpg', 'b5f111ca260893e20ae6bcbbd1db11d7.jpg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191118/b5f111ca260893e20ae6bcbbd1db11d7.jpg', '/uploads/attachment/20191118/b5f111ca260893e20ae6bcbbd1db11d7.jpg', 'jpg', 'image/jpeg', 17550, '01770a7abda472b9aa03f7ebf75cc880', 'c957e6b086ac829f5ca6ee9489aea7fbef53fa46', 1574070436, 1574070436, 0);
INSERT INTO `cs_attachment` VALUES (2, 0, 0, '8d313384cb74ffb7cb83fe717bbc5717.jpg', '5103b01cce03b1bada850278cf783060.jpg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191118/5103b01cce03b1bada850278cf783060.jpg', '/uploads/attachment/20191118/5103b01cce03b1bada850278cf783060.jpg', 'jpg', 'image/jpeg', 17550, '01770a7abda472b9aa03f7ebf75cc880', 'c957e6b086ac829f5ca6ee9489aea7fbef53fa46', 1574070571, 1574070571, 0);
INSERT INTO `cs_attachment` VALUES (3, 0, 0, '7478e6966e7738b08cc0c34094c017ad.jpeg', '22bfee09f50e3539f4719450b66fccf3.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/22bfee09f50e3539f4719450b66fccf3.jpeg', '/uploads/attachment/20191119/22bfee09f50e3539f4719450b66fccf3.jpeg', 'jpeg', 'image/jpeg', 25693, '8bbc181bdc7b62d19674a66461ea48b2', 'd5fcaa6e7a271cd5e11ca8efc52df8d5d9ba743f', 1574133564, 1574133564, 0);
INSERT INTO `cs_attachment` VALUES (4, 0, 0, '7478e6966e7738b08cc0c34094c017ad.jpeg', '42c285b9b9cdfe8c2bb8c5dcdb49b31a.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/42c285b9b9cdfe8c2bb8c5dcdb49b31a.jpeg', '/uploads/attachment/20191119/42c285b9b9cdfe8c2bb8c5dcdb49b31a.jpeg', 'jpeg', 'image/jpeg', 25693, '8bbc181bdc7b62d19674a66461ea48b2', 'd5fcaa6e7a271cd5e11ca8efc52df8d5d9ba743f', 1574133574, 1574133574, 0);
INSERT INTO `cs_attachment` VALUES (5, 0, 0, '7478e6966e7738b08cc0c34094c017ad.jpeg', '64d6f0645bb5e8d665a5f96bc17944bf.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/64d6f0645bb5e8d665a5f96bc17944bf.jpeg', '/uploads/attachment/20191119/64d6f0645bb5e8d665a5f96bc17944bf.jpeg', 'jpeg', 'image/jpeg', 25693, '8bbc181bdc7b62d19674a66461ea48b2', 'd5fcaa6e7a271cd5e11ca8efc52df8d5d9ba743f', 1574133666, 1574133666, 0);
INSERT INTO `cs_attachment` VALUES (6, 0, 0, '2019_10_15_18bf1d6a3cf34a6396f0c3005e6c482b.jpeg', '8155f2e4b940a609cc990090e244ee74.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/8155f2e4b940a609cc990090e244ee74.jpeg', '/uploads/attachment/20191119/8155f2e4b940a609cc990090e244ee74.jpeg', 'jpeg', 'image/jpeg', 46425, '871cda169dc511742c666f497d3ef6d1', 'edd6a12690a24b478450688da6351a92c6ff32cd', 1574135533, 1574135533, 0);
INSERT INTO `cs_attachment` VALUES (7, 0, 0, '2019_10_15_3fe9119ce0bc4b4b953b49bce5b79471.jpeg', 'd7c71391b31c148754c761f9cac507a9.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/d7c71391b31c148754c761f9cac507a9.jpeg', '/uploads/attachment/20191119/d7c71391b31c148754c761f9cac507a9.jpeg', 'jpeg', 'image/jpeg', 100340, '5f79e4516bde1d9fa64789371e4f26e5', '5aae45ec4c819596d36fe8893cff49288b3170c7', 1574135627, 1574135627, 0);
INSERT INTO `cs_attachment` VALUES (8, 0, 0, '2019_10_15_682ff16aefee41a8a5ca45812ff95b63.jpeg', '9656c0c1ac3c1925559ea3a7f51dad14.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/9656c0c1ac3c1925559ea3a7f51dad14.jpeg', '/uploads/attachment/20191119/9656c0c1ac3c1925559ea3a7f51dad14.jpeg', 'jpeg', 'image/jpeg', 91985, '48fa8039cbafbfd2afcda55e7c5859dc', 'd91638ca879281f3b2eb2263d2c60ebb8075e700', 1574135654, 1574135654, 0);
INSERT INTO `cs_attachment` VALUES (9, 0, 0, '2019_10_15_ef2cafee8ebb49df807a73b8cc851f3d.jpeg', '3eace8cdfbb7d8a613160f3046d4f008.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/3eace8cdfbb7d8a613160f3046d4f008.jpeg', '/uploads/attachment/20191119/3eace8cdfbb7d8a613160f3046d4f008.jpeg', 'jpeg', 'image/jpeg', 86505, '03af0a9bec56244f4baf786da94c8d4a', '2bce1d5e93b13822378c314fb39eaa8330ae725c', 1574142779, 1574142779, 0);
INSERT INTO `cs_attachment` VALUES (10, 0, 0, '2019_10_15_ef2cafee8ebb49df807a73b8cc851f3d.jpeg', '974adf5983a8ef0994791ab3737da63c.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191119/974adf5983a8ef0994791ab3737da63c.jpeg', '/uploads/attachment/20191119/974adf5983a8ef0994791ab3737da63c.jpeg', 'jpeg', 'image/jpeg', 86505, '03af0a9bec56244f4baf786da94c8d4a', '2bce1d5e93b13822378c314fb39eaa8330ae725c', 1574142785, 1574142785, 0);
INSERT INTO `cs_attachment` VALUES (11, 0, 0, '8d313384cb74ffb7cb83fe717bbc5717.jpg', 'a727ac29ece61696ba0c02479d1b71f9.jpg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191120/a727ac29ece61696ba0c02479d1b71f9.jpg', '/uploads/attachment/20191120/a727ac29ece61696ba0c02479d1b71f9.jpg', 'jpg', 'image/jpeg', 17550, '01770a7abda472b9aa03f7ebf75cc880', 'c957e6b086ac829f5ca6ee9489aea7fbef53fa46', 1574217906, 1574217906, 0);
INSERT INTO `cs_attachment` VALUES (12, 0, 0, '7478e6966e7738b08cc0c34094c017ad.jpeg', 'f6d869df774d3545db8cbe69996e1e72.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191120/f6d869df774d3545db8cbe69996e1e72.jpeg', '/uploads/attachment/20191120/f6d869df774d3545db8cbe69996e1e72.jpeg', 'jpeg', 'image/jpeg', 25693, '8bbc181bdc7b62d19674a66461ea48b2', 'd5fcaa6e7a271cd5e11ca8efc52df8d5d9ba743f', 1574220971, 1574220971, 0);
INSERT INTO `cs_attachment` VALUES (13, 0, 0, '8d313384cb74ffb7cb83fe717bbc5717.jpg', '7cf9ecd4850aa33a7c7d0a80b2da93bf.jpg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191120/7cf9ecd4850aa33a7c7d0a80b2da93bf.jpg', '/uploads/attachment/20191120/7cf9ecd4850aa33a7c7d0a80b2da93bf.jpg', 'jpg', 'image/jpeg', 17550, '01770a7abda472b9aa03f7ebf75cc880', 'c957e6b086ac829f5ca6ee9489aea7fbef53fa46', 1574236637, 1574236637, 0);
INSERT INTO `cs_attachment` VALUES (14, 0, 0, '7478e6966e7738b08cc0c34094c017ad.jpeg', '2306462adedaa5af4ceb59d4cb1811ff.jpeg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191120/2306462adedaa5af4ceb59d4cb1811ff.jpeg', '/uploads/attachment/20191120/2306462adedaa5af4ceb59d4cb1811ff.jpeg', 'jpeg', 'image/jpeg', 25693, '8bbc181bdc7b62d19674a66461ea48b2', 'd5fcaa6e7a271cd5e11ca8efc52df8d5d9ba743f', 1574236713, 1574236713, 0);
INSERT INTO `cs_attachment` VALUES (15, 0, 0, '3.jpg', '981a88516e53a4edd5b488690944bcaa.jpg', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/981a88516e53a4edd5b488690944bcaa.jpg', '/uploads/attachment/20191121/981a88516e53a4edd5b488690944bcaa.jpg', 'jpg', 'image/jpeg', 76243, '8aa08a962db5c51187f21e2d63302507', 'b36ad058101a0f79a5b385f6ece8b5bf62e256b3', 1574308784, 1574308784, 0);
INSERT INTO `cs_attachment` VALUES (16, 0, 0, '2.png', '360d66c88af7cad9af61be396264a132.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/360d66c88af7cad9af61be396264a132.png', '/uploads/attachment/20191121/360d66c88af7cad9af61be396264a132.png', 'png', 'image/png', 29274, 'c96fa9b6281415888fe64ec488925423', '11e81c49bac55b0d8e705154ac95f8bd9da9f2e5', 1574320781, 1574320781, 0);
INSERT INTO `cs_attachment` VALUES (17, 0, 0, 'tianjiang58.png', '11b666dfab6d38285c99fb4d76a9fdc3.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/11b666dfab6d38285c99fb4d76a9fdc3.png', '/uploads/attachment/20191121/11b666dfab6d38285c99fb4d76a9fdc3.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574320865, 1574320865, 0);
INSERT INTO `cs_attachment` VALUES (18, 0, 0, 'tianjiang58.png', 'ce4baaa7b8062178fee83cecfbf2c65c.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/ce4baaa7b8062178fee83cecfbf2c65c.png', '/uploads/attachment/20191121/ce4baaa7b8062178fee83cecfbf2c65c.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574320878, 1574320878, 0);
INSERT INTO `cs_attachment` VALUES (19, 0, 0, 'tianjiang58.png', 'ec19f4838bd39a0d90e28505e1b7786c.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/ec19f4838bd39a0d90e28505e1b7786c.png', '/uploads/attachment/20191121/ec19f4838bd39a0d90e28505e1b7786c.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574320946, 1574320946, 0);
INSERT INTO `cs_attachment` VALUES (20, 0, 0, 'tianjiang58.png', '76ad5921f50f68194226c0a2f05712d2.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/76ad5921f50f68194226c0a2f05712d2.png', '/uploads/attachment/20191121/76ad5921f50f68194226c0a2f05712d2.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574320980, 1574320980, 0);
INSERT INTO `cs_attachment` VALUES (21, 0, 0, 'tianjiang58.png', '35e6d3834ebab6e8e319e8bc370fa4b7.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/35e6d3834ebab6e8e319e8bc370fa4b7.png', '/uploads/attachment/20191121/35e6d3834ebab6e8e319e8bc370fa4b7.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574326722, 1574326722, 0);
INSERT INTO `cs_attachment` VALUES (22, 0, 0, 'tianjiang58.png', '13c0bc8995059f05fcfe8ed9724b1b86.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/13c0bc8995059f05fcfe8ed9724b1b86.png', '/uploads/attachment/20191121/13c0bc8995059f05fcfe8ed9724b1b86.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574326722, 1574326722, 0);
INSERT INTO `cs_attachment` VALUES (23, 0, 0, 'tianjiangpgyer.png', '291cea9c9478c4d00b98e8c47da90259.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/291cea9c9478c4d00b98e8c47da90259.png', '/uploads/attachment/20191121/291cea9c9478c4d00b98e8c47da90259.png', 'png', 'image/png', 9401, 'a0385168f0be8d25592688127fb5c935', '2b887725732b315f93dae7478e1be9f4631bf66d', 1574326722, 1574326722, 0);
INSERT INTO `cs_attachment` VALUES (24, 0, 0, 'tianjiang58.png', 'ae30945b1f44a904c0e9240e40e1df7c.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/ae30945b1f44a904c0e9240e40e1df7c.png', '/uploads/attachment/20191121/ae30945b1f44a904c0e9240e40e1df7c.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574326813, 1574326813, 0);
INSERT INTO `cs_attachment` VALUES (25, 0, 0, 'tianjiang58.png', '4eddea0545a3204717033272303bc99e.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/4eddea0545a3204717033272303bc99e.png', '/uploads/attachment/20191121/4eddea0545a3204717033272303bc99e.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574326813, 1574326813, 0);
INSERT INTO `cs_attachment` VALUES (26, 0, 0, 'tianjiangpgyer.png', '58032f5446085462b02ddfb739596892.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/58032f5446085462b02ddfb739596892.png', '/uploads/attachment/20191121/58032f5446085462b02ddfb739596892.png', 'png', 'image/png', 9401, 'a0385168f0be8d25592688127fb5c935', '2b887725732b315f93dae7478e1be9f4631bf66d', 1574326813, 1574326813, 0);
INSERT INTO `cs_attachment` VALUES (27, 0, 0, 'tianjiang58.png', '2bf015f0486b45b349fc47ecfa1896a3.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/2bf015f0486b45b349fc47ecfa1896a3.png', '/uploads/attachment/20191121/2bf015f0486b45b349fc47ecfa1896a3.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574327818, 1574327818, 0);
INSERT INTO `cs_attachment` VALUES (28, 0, 0, 'tianjiang58.png', '0312ea8ad0c9b6d3a5cbc18c33c9f9c5.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/0312ea8ad0c9b6d3a5cbc18c33c9f9c5.png', '/uploads/attachment/20191121/0312ea8ad0c9b6d3a5cbc18c33c9f9c5.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574327818, 1574327818, 0);
INSERT INTO `cs_attachment` VALUES (29, 0, 0, 'tianjiangpgyer.png', '3031112a0f4f1e69d74a811fa664abe5.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/3031112a0f4f1e69d74a811fa664abe5.png', '/uploads/attachment/20191121/3031112a0f4f1e69d74a811fa664abe5.png', 'png', 'image/png', 9401, 'a0385168f0be8d25592688127fb5c935', '2b887725732b315f93dae7478e1be9f4631bf66d', 1574327818, 1574327818, 0);
INSERT INTO `cs_attachment` VALUES (30, 0, 0, 'tianjiang58.png', '8ad84287de51103257c05668d4bfb1be.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/8ad84287de51103257c05668d4bfb1be.png', '/uploads/attachment/20191121/8ad84287de51103257c05668d4bfb1be.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574328125, 1574328125, 0);
INSERT INTO `cs_attachment` VALUES (31, 0, 0, 'tianjiang58.png', 'c1bfaff4ba6f86702d416311f37c7352.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/c1bfaff4ba6f86702d416311f37c7352.png', '/uploads/attachment/20191121/c1bfaff4ba6f86702d416311f37c7352.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574328125, 1574328125, 0);
INSERT INTO `cs_attachment` VALUES (32, 0, 0, 'tianjiangpgyer.png', 'b9ffcc9c69506482bf07ed0e3897bc08.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/b9ffcc9c69506482bf07ed0e3897bc08.png', '/uploads/attachment/20191121/b9ffcc9c69506482bf07ed0e3897bc08.png', 'png', 'image/png', 9401, 'a0385168f0be8d25592688127fb5c935', '2b887725732b315f93dae7478e1be9f4631bf66d', 1574328125, 1574328125, 0);
INSERT INTO `cs_attachment` VALUES (33, 0, 0, 'tianjiang58.png', '9aa2ee75d485e67f2d5482a48d3771e6.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/9aa2ee75d485e67f2d5482a48d3771e6.png', '/uploads/attachment/20191121/9aa2ee75d485e67f2d5482a48d3771e6.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574328144, 1574328144, 0);
INSERT INTO `cs_attachment` VALUES (34, 0, 0, 'tianjiang58.png', 'f2ae255c010f4486d4a06835d2b7066b.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/f2ae255c010f4486d4a06835d2b7066b.png', '/uploads/attachment/20191121/f2ae255c010f4486d4a06835d2b7066b.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1574328144, 1574328144, 0);
INSERT INTO `cs_attachment` VALUES (35, 0, 0, 'tianjiangpgyer.png', '72786f6baae283ee71408f638f4588e3.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191121/72786f6baae283ee71408f638f4588e3.png', '/uploads/attachment/20191121/72786f6baae283ee71408f638f4588e3.png', 'png', 'image/png', 9401, 'a0385168f0be8d25592688127fb5c935', '2b887725732b315f93dae7478e1be9f4631bf66d', 1574328144, 1574328144, 0);
INSERT INTO `cs_attachment` VALUES (36, 0, 0, 'tianjiang58.png', '577ed467a8f2f1134e841c4d10c56aa0.png', 'C:/wamp64/www/bearadmin/public/uploads/attachment/20191129/577ed467a8f2f1134e841c4d10c56aa0.png', '/uploads/attachment/20191129/577ed467a8f2f1134e841c4d10c56aa0.png', 'png', 'image/png', 422, 'af255403ea8891288aecf703a5782a8d', 'f554c5ebecd7efdd2f15556431387aa1e82a9389', 1575015275, 1575015275, 0);
INSERT INTO `cs_attachment` VALUES (37, 0, 0, 'u=109697600,3507733880&fm=26&gp=0.jpg', '1073ec05c97c82f1437cb89d170ce6e4.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191223/1073ec05c97c82f1437cb89d170ce6e4.jpg', '/uploads/attachment/20191223/1073ec05c97c82f1437cb89d170ce6e4.jpg', 'jpg', 'image/jpeg', 23039, '02d4cc2155d61792d505bc3211e323e5', '470245364526e72d61f1c800843d5d68c8c0e130', 0, 0, 0);
INSERT INTO `cs_attachment` VALUES (38, 0, 0, 'u=109697600,3507733880&fm=26&gp=0.jpg', 'd144a605c81c76f70ec30026c55693b2.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191223/d144a605c81c76f70ec30026c55693b2.jpg', '/uploads/attachment/20191223/d144a605c81c76f70ec30026c55693b2.jpg', 'jpg', 'image/jpeg', 23039, '02d4cc2155d61792d505bc3211e323e5', '470245364526e72d61f1c800843d5d68c8c0e130', 0, 0, 0);
INSERT INTO `cs_attachment` VALUES (39, 0, 0, 'u=109697600,3507733880&fm=26&gp=0.jpg', '005f461c1dc3691e823f5da3ebedf131.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191223/005f461c1dc3691e823f5da3ebedf131.jpg', '/uploads/attachment/20191223/005f461c1dc3691e823f5da3ebedf131.jpg', 'jpg', 'image/jpeg', 23039, '02d4cc2155d61792d505bc3211e323e5', '470245364526e72d61f1c800843d5d68c8c0e130', 0, 0, 0);
INSERT INTO `cs_attachment` VALUES (40, 0, 0, 'u=288144752,2580219070&fm=26&gp=0.jpg', 'b3796a3842cc481262b4fc9d4bc695b7.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/b3796a3842cc481262b4fc9d4bc695b7.jpg', '/uploads/attachment/20191225/b3796a3842cc481262b4fc9d4bc695b7.jpg', 'jpg', 'image/jpeg', 35527, '305808946bb45e879e8c75b35611b29b', '21687a36eab633a29244fd204d49a3fbc576eb4f', 1577236294, 1577236294, 0);
INSERT INTO `cs_attachment` VALUES (41, 0, 0, 'u=498753096,2625518&fm=111&gp=0.jpg', '69ed0ee8da1c005db010411ef7d36cbf.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/69ed0ee8da1c005db010411ef7d36cbf.jpg', '/uploads/attachment/20191225/69ed0ee8da1c005db010411ef7d36cbf.jpg', 'jpg', 'image/jpeg', 5975, '83e8d5e18ecb5993586aceefe9f48da9', '3d3a8268774a42b0910326d6374ab5265ddd3ad8', 1577236874, 1577236874, 0);
INSERT INTO `cs_attachment` VALUES (42, 0, 0, 'u=498753096,2625518&fm=111&gp=0.jpg', '12f52483da0b0d167d391b4f340b30db.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/12f52483da0b0d167d391b4f340b30db.jpg', '/uploads/attachment/20191225/12f52483da0b0d167d391b4f340b30db.jpg', 'jpg', 'image/jpeg', 5975, '83e8d5e18ecb5993586aceefe9f48da9', '3d3a8268774a42b0910326d6374ab5265ddd3ad8', 1577236878, 1577236878, 0);
INSERT INTO `cs_attachment` VALUES (43, 0, 0, 'u=498753096,2625518&fm=111&gp=0.jpg', 'f5b6da9ab586f2c07194278d583d9961.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/f5b6da9ab586f2c07194278d583d9961.jpg', '/uploads/attachment/20191225/f5b6da9ab586f2c07194278d583d9961.jpg', 'jpg', 'image/jpeg', 5975, '83e8d5e18ecb5993586aceefe9f48da9', '3d3a8268774a42b0910326d6374ab5265ddd3ad8', 1577236905, 1577236905, 0);
INSERT INTO `cs_attachment` VALUES (44, 0, 0, 'u=288144752,2580219070&fm=26&gp=0.jpg', 'f40d8e8e321d8755a9e0cd72c29ae276.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/f40d8e8e321d8755a9e0cd72c29ae276.jpg', '/uploads/attachment/20191225/f40d8e8e321d8755a9e0cd72c29ae276.jpg', 'jpg', 'image/jpeg', 35527, '305808946bb45e879e8c75b35611b29b', '21687a36eab633a29244fd204d49a3fbc576eb4f', 1577239455, 1577239455, 0);
INSERT INTO `cs_attachment` VALUES (45, 0, 0, 'u=498753096,2625518&fm=111&gp=0.jpg', '0f2237184690e24c6c7e647edde0ae21.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/0f2237184690e24c6c7e647edde0ae21.jpg', '/uploads/attachment/20191225/0f2237184690e24c6c7e647edde0ae21.jpg', 'jpg', 'image/jpeg', 5975, '83e8d5e18ecb5993586aceefe9f48da9', '3d3a8268774a42b0910326d6374ab5265ddd3ad8', 1577239455, 1577239455, 0);
INSERT INTO `cs_attachment` VALUES (46, 0, 0, 'u=1161532757,1053859586&fm=26&gp=0.gif', '67345f4dcc3573fe1e2cef957819fc25.gif', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/67345f4dcc3573fe1e2cef957819fc25.gif', '/uploads/attachment/20191225/67345f4dcc3573fe1e2cef957819fc25.gif', 'gif', 'image/gif', 5912, '71fb49e42b81209b06decca287e90b5c', '775dccbe00e019e86328abaf31fa5276e9734b08', 1577239455, 1577239455, 0);
INSERT INTO `cs_attachment` VALUES (47, 0, 0, 'u=3700457405,1988268375&fm=26&gp=0.gif', '167f8adeef80786cf4783013d1f40e8c.gif', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/167f8adeef80786cf4783013d1f40e8c.gif', '/uploads/attachment/20191225/167f8adeef80786cf4783013d1f40e8c.gif', 'gif', 'image/gif', 232670, '4463a0062c39455008702e21d30aef0b', 'eceeb71352194c0dd0a0d4e254eb784406b3f02c', 1577239899, 1577239899, 0);
INSERT INTO `cs_attachment` VALUES (48, 0, 0, 'A17F6FFFDEF91EFE.jpg', 'c42abf07a363eb75e550c00219129be0.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/c42abf07a363eb75e550c00219129be0.jpg', '/uploads/attachment/20191225/c42abf07a363eb75e550c00219129be0.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577240089, 1577240089, 0);
INSERT INTO `cs_attachment` VALUES (49, 0, 0, '33611BEEF8273F03.jpg', '3b8ee18154487492fc54fce8dca478cb.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/3b8ee18154487492fc54fce8dca478cb.jpg', '/uploads/attachment/20191225/3b8ee18154487492fc54fce8dca478cb.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577240089, 1577240089, 0);
INSERT INTO `cs_attachment` VALUES (50, 0, 0, 'A17F6FFFDEF91EFE.jpg', '5eef98f5aa8055f33c30caaa6eba67dd.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/5eef98f5aa8055f33c30caaa6eba67dd.jpg', '/uploads/attachment/20191225/5eef98f5aa8055f33c30caaa6eba67dd.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577240089, 1577240089, 0);
INSERT INTO `cs_attachment` VALUES (51, 0, 0, 'A17F6FFFDEF91EFE.jpg', '9ebace20b03531ca5021f792ee5ee583.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/9ebace20b03531ca5021f792ee5ee583.jpg', '/uploads/attachment/20191225/9ebace20b03531ca5021f792ee5ee583.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577240094, 1577240094, 0);
INSERT INTO `cs_attachment` VALUES (52, 0, 0, '33611BEEF8273F03.jpg', '557d0f70971e7717d0d3ab521437fe79.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/557d0f70971e7717d0d3ab521437fe79.jpg', '/uploads/attachment/20191225/557d0f70971e7717d0d3ab521437fe79.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577240094, 1577240094, 0);
INSERT INTO `cs_attachment` VALUES (53, 0, 0, 'A17F6FFFDEF91EFE.jpg', '3b71b0f3ac6e26abddf08b6740672010.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/3b71b0f3ac6e26abddf08b6740672010.jpg', '/uploads/attachment/20191225/3b71b0f3ac6e26abddf08b6740672010.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577240094, 1577240094, 0);
INSERT INTO `cs_attachment` VALUES (54, 0, 0, '33611BEEF8273F03.jpg', '6e6eb0e0ac474dd8b5d88b035846f44e.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/6e6eb0e0ac474dd8b5d88b035846f44e.jpg', '/uploads/attachment/20191225/6e6eb0e0ac474dd8b5d88b035846f44e.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577240183, 1577240183, 0);
INSERT INTO `cs_attachment` VALUES (55, 0, 0, 'A17F6FFFDEF91EFE.jpg', '7afce2a9f80a14fe60ca9a08e7557c2c.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/7afce2a9f80a14fe60ca9a08e7557c2c.jpg', '/uploads/attachment/20191225/7afce2a9f80a14fe60ca9a08e7557c2c.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577240183, 1577240183, 0);
INSERT INTO `cs_attachment` VALUES (56, 0, 0, '33611BEEF8273F03.jpg', '45ec42e77ad2a26230a94ad43d103f60.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/45ec42e77ad2a26230a94ad43d103f60.jpg', '/uploads/attachment/20191225/45ec42e77ad2a26230a94ad43d103f60.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577240195, 1577240195, 0);
INSERT INTO `cs_attachment` VALUES (57, 0, 0, '33611BEEF8273F03.jpg', 'afd64d236c07236bec0009419a1dde74.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/afd64d236c07236bec0009419a1dde74.jpg', '/uploads/attachment/20191225/afd64d236c07236bec0009419a1dde74.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577240237, 1577240237, 0);
INSERT INTO `cs_attachment` VALUES (58, 0, 0, 'A17F6FFFDEF91EFE.jpg', '843150c25a13e260a503ca4a5ab92c42.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/843150c25a13e260a503ca4a5ab92c42.jpg', '/uploads/attachment/20191225/843150c25a13e260a503ca4a5ab92c42.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577240314, 1577240314, 0);
INSERT INTO `cs_attachment` VALUES (59, 0, 0, 'u=1895540491,803137920&fm=26&gp=0.jpg', '53c3047d497008fb2c8a185abe323775.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/53c3047d497008fb2c8a185abe323775.jpg', '/uploads/attachment/20191225/53c3047d497008fb2c8a185abe323775.jpg', 'jpg', 'image/jpeg', 32178, '913d867bdda7643725db466a193207b4', 'ae5319b28fc47e1c8d62ef8ba3fa5c701b286893', 1577240592, 1577240592, 0);
INSERT INTO `cs_attachment` VALUES (60, 0, 0, 'u=3607734869,1597962336&fm=26&gp=0 - 副本.jpg', '60b1490984764b4bcea46c5d21ed7747.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/60b1490984764b4bcea46c5d21ed7747.jpg', '/uploads/attachment/20191225/60b1490984764b4bcea46c5d21ed7747.jpg', 'jpg', 'image/jpeg', 61325, '56f9c8c30c2e9f845cb3f5932f6120f2', '2367020f05dad6ab142ed91dae21a0cff8081b90', 1577240592, 1577240592, 0);
INSERT INTO `cs_attachment` VALUES (61, 0, 0, 'u=3607734869,1597962336&fm=26&gp=0.jpg', '5b3ec8ddf6f11aa6eb6b58a9b4db1aae.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/5b3ec8ddf6f11aa6eb6b58a9b4db1aae.jpg', '/uploads/attachment/20191225/5b3ec8ddf6f11aa6eb6b58a9b4db1aae.jpg', 'jpg', 'image/jpeg', 61325, '56f9c8c30c2e9f845cb3f5932f6120f2', '2367020f05dad6ab142ed91dae21a0cff8081b90', 1577240592, 1577240592, 0);
INSERT INTO `cs_attachment` VALUES (62, 0, 0, 'u=2789690325,3642341048&fm=26&gp=0 - 副本.jpg', '70ea9017c0426dc8c48d2227760a5306.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/70ea9017c0426dc8c48d2227760a5306.jpg', '/uploads/attachment/20191225/70ea9017c0426dc8c48d2227760a5306.jpg', 'jpg', 'image/jpeg', 21664, '1013d4ad4f84b1f264fe30a8398d21b5', '504f5cd48415e401ad90b0a121680fc07561ecac', 1577240787, 1577240787, 0);
INSERT INTO `cs_attachment` VALUES (63, 0, 0, 'u=2789690325,3642341048&fm=26&gp=0 - 副本.jpg', '613e28eb6af709d0503b2e6657e58fc0.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/613e28eb6af709d0503b2e6657e58fc0.jpg', '/uploads/attachment/20191225/613e28eb6af709d0503b2e6657e58fc0.jpg', 'jpg', 'image/jpeg', 21664, '1013d4ad4f84b1f264fe30a8398d21b5', '504f5cd48415e401ad90b0a121680fc07561ecac', 1577240787, 1577240787, 0);
INSERT INTO `cs_attachment` VALUES (64, 0, 0, 'u=2789690325,3642341048&fm=26&gp=0.jpg', '3afe52e0aa82224f08713529f1ae9597.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/3afe52e0aa82224f08713529f1ae9597.jpg', '/uploads/attachment/20191225/3afe52e0aa82224f08713529f1ae9597.jpg', 'jpg', 'image/jpeg', 21664, '1013d4ad4f84b1f264fe30a8398d21b5', '504f5cd48415e401ad90b0a121680fc07561ecac', 1577240787, 1577240787, 0);
INSERT INTO `cs_attachment` VALUES (65, 0, 0, 'u=1895540491,803137920&fm=26&gp=0.jpg', '030eef2ba5d87e73a6d6b961b774e491.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/030eef2ba5d87e73a6d6b961b774e491.jpg', '/uploads/attachment/20191225/030eef2ba5d87e73a6d6b961b774e491.jpg', 'jpg', 'image/jpeg', 32178, '913d867bdda7643725db466a193207b4', 'ae5319b28fc47e1c8d62ef8ba3fa5c701b286893', 1577257614, 1577257614, 0);
INSERT INTO `cs_attachment` VALUES (66, 0, 0, 'u=1895540491,803137920&fm=26&gp=0.jpg', 'ea2e534220e33d5f4a71bdcce3b32382.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/ea2e534220e33d5f4a71bdcce3b32382.jpg', '/uploads/attachment/20191225/ea2e534220e33d5f4a71bdcce3b32382.jpg', 'jpg', 'image/jpeg', 32178, '913d867bdda7643725db466a193207b4', 'ae5319b28fc47e1c8d62ef8ba3fa5c701b286893', 1577262357, 1577262357, 0);
INSERT INTO `cs_attachment` VALUES (67, 0, 0, 'u=1986451467,394304688&fm=26&gp=0.jpg', 'b570f12d60bfd17cb593d9cdf0962235.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/b570f12d60bfd17cb593d9cdf0962235.jpg', '/uploads/attachment/20191225/b570f12d60bfd17cb593d9cdf0962235.jpg', 'jpg', 'image/jpeg', 13998, '913b018fe98b0ebf58bafa34c20b3e9e', '7c0fb5cd647e4ad5e94890c65b4aed6a568cec5e', 1577262367, 1577262367, 0);
INSERT INTO `cs_attachment` VALUES (68, 0, 0, 'u=1176719798,1927397418&fm=26&gp=0.jpg', '90e748d8c944f34c47d016a10ad67740.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/90e748d8c944f34c47d016a10ad67740.jpg', '/uploads/attachment/20191225/90e748d8c944f34c47d016a10ad67740.jpg', 'jpg', 'image/jpeg', 13790, '9d6fa2f229718b4f7609f926c6d61eb9', 'ad43ccfabae124c716b1f21e5f522b83837ac616', 1577262379, 1577262379, 0);
INSERT INTO `cs_attachment` VALUES (69, 0, 0, 'u=1883867978,19024621&fm=26&gp=0.jpg', '02975beef13f44658bd7aeea3ce1a4b4.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/02975beef13f44658bd7aeea3ce1a4b4.jpg', '/uploads/attachment/20191225/02975beef13f44658bd7aeea3ce1a4b4.jpg', 'jpg', 'image/jpeg', 45809, '61ddc0d7cdfc11dc53c9bb93b2c43a45', '44aeec731191a60c82093a410eab9666dd7ffa53', 1577262387, 1577262387, 0);
INSERT INTO `cs_attachment` VALUES (70, 0, 0, 'ic_lei1.png', 'fcf7bd57c3ff1762b09f225e5ae851fc.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/fcf7bd57c3ff1762b09f225e5ae851fc.png', '/uploads/attachment/20191225/fcf7bd57c3ff1762b09f225e5ae851fc.png', 'png', 'image/png', 6925, '50f06107fc130aefa5b9bed7ebc1bb23', '30088220e28485a4541a244f4a7a4d06d4dd29d0', 1577263232, 1577263232, 0);
INSERT INTO `cs_attachment` VALUES (71, 0, 0, 'ic_lei2.png', '619d1343b1b00ea3da03b7582084383f.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/619d1343b1b00ea3da03b7582084383f.png', '/uploads/attachment/20191225/619d1343b1b00ea3da03b7582084383f.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577263243, 1577263243, 0);
INSERT INTO `cs_attachment` VALUES (72, 0, 0, 'ic_lei1.png', '7b46c5705888f23fca372a4536b5a94b.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/7b46c5705888f23fca372a4536b5a94b.png', '/uploads/attachment/20191225/7b46c5705888f23fca372a4536b5a94b.png', 'png', 'image/png', 6925, '50f06107fc130aefa5b9bed7ebc1bb23', '30088220e28485a4541a244f4a7a4d06d4dd29d0', 1577263254, 1577263254, 0);
INSERT INTO `cs_attachment` VALUES (73, 0, 0, 'ic_lei1.png', 'ef8e1417695ef28e119f0ddd790c79da.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/ef8e1417695ef28e119f0ddd790c79da.png', '/uploads/attachment/20191225/ef8e1417695ef28e119f0ddd790c79da.png', 'png', 'image/png', 6925, '50f06107fc130aefa5b9bed7ebc1bb23', '30088220e28485a4541a244f4a7a4d06d4dd29d0', 1577263261, 1577263261, 0);
INSERT INTO `cs_attachment` VALUES (74, 0, 0, 'ic_lei2.png', 'fb5bf1c650a23f92d4df0ea7b42eb0b1.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/fb5bf1c650a23f92d4df0ea7b42eb0b1.png', '/uploads/attachment/20191225/fb5bf1c650a23f92d4df0ea7b42eb0b1.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577263918, 1577263918, 0);
INSERT INTO `cs_attachment` VALUES (75, 0, 0, 'ic_lei2.png', '93e7713b9183a306ea76a16a6f716f2b.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/93e7713b9183a306ea76a16a6f716f2b.png', '/uploads/attachment/20191225/93e7713b9183a306ea76a16a6f716f2b.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577263923, 1577263923, 0);
INSERT INTO `cs_attachment` VALUES (76, 0, 0, 'ic_lei2.png', '7fb9c0bd641e848e60de94e24ca88e71.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/7fb9c0bd641e848e60de94e24ca88e71.png', '/uploads/attachment/20191225/7fb9c0bd641e848e60de94e24ca88e71.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577263943, 1577263943, 0);
INSERT INTO `cs_attachment` VALUES (77, 0, 0, 'ic_lei2.png', 'a8659a7562226b3edf694cd58c7d7675.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/a8659a7562226b3edf694cd58c7d7675.png', '/uploads/attachment/20191225/a8659a7562226b3edf694cd58c7d7675.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577263959, 1577263959, 0);
INSERT INTO `cs_attachment` VALUES (78, 0, 0, 'ic_lei2.png', 'a90ab4c5c0e2fdbab5a7fc1d67f7259e.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/a90ab4c5c0e2fdbab5a7fc1d67f7259e.png', '/uploads/attachment/20191225/a90ab4c5c0e2fdbab5a7fc1d67f7259e.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577263993, 1577263993, 0);
INSERT INTO `cs_attachment` VALUES (79, 0, 0, 'ic_lei2.png', 'aa2b73864540173b42bbb7657ee7c720.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/aa2b73864540173b42bbb7657ee7c720.png', '/uploads/attachment/20191225/aa2b73864540173b42bbb7657ee7c720.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577264036, 1577264036, 0);
INSERT INTO `cs_attachment` VALUES (80, 0, 0, 'ic_lei2.png', 'b4289ce16f085d5fb8a66e5d04f95e52.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/b4289ce16f085d5fb8a66e5d04f95e52.png', '/uploads/attachment/20191225/b4289ce16f085d5fb8a66e5d04f95e52.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577264066, 1577264066, 0);
INSERT INTO `cs_attachment` VALUES (81, 0, 0, 'ic_lei2.png', '70f35a46e3493e8e9f7bb2faa59b8401.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/70f35a46e3493e8e9f7bb2faa59b8401.png', '/uploads/attachment/20191225/70f35a46e3493e8e9f7bb2faa59b8401.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577264148, 1577264148, 0);
INSERT INTO `cs_attachment` VALUES (82, 0, 0, 'ic_lei1.png', 'dd415d1eea1419556f2724844cea538d.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/dd415d1eea1419556f2724844cea538d.png', '/uploads/attachment/20191225/dd415d1eea1419556f2724844cea538d.png', 'png', 'image/png', 6925, '50f06107fc130aefa5b9bed7ebc1bb23', '30088220e28485a4541a244f4a7a4d06d4dd29d0', 1577264160, 1577264160, 0);
INSERT INTO `cs_attachment` VALUES (83, 0, 0, 'ic_lei2.png', 'bd871c79efe1be7d556b222aa331078d.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/bd871c79efe1be7d556b222aa331078d.png', '/uploads/attachment/20191225/bd871c79efe1be7d556b222aa331078d.png', 'png', 'image/png', 6336, '65a57a54b684fa22e759642a4aa71d4f', 'a5c7dcaf49be32b56e906120bdf7174692d37714', 1577264170, 1577264170, 0);
INSERT INTO `cs_attachment` VALUES (84, 0, 0, 'ic_lei3.png', 'f594978c53e3fb0610bc4f46222ce958.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/f594978c53e3fb0610bc4f46222ce958.png', '/uploads/attachment/20191225/f594978c53e3fb0610bc4f46222ce958.png', 'png', 'image/png', 7190, 'bbc1a9175e82faea691def8fc249db5b', 'b2c5efe83d210c92bd3e1165a4875a19e1993ece', 1577264181, 1577264181, 0);
INSERT INTO `cs_attachment` VALUES (85, 0, 0, 'u=31543700,3055650877&fm=26&gp=0.jpg', 'f37b4d1504d8eb1a99e92ca69b074d7e.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/f37b4d1504d8eb1a99e92ca69b074d7e.jpg', '/uploads/attachment/20191225/f37b4d1504d8eb1a99e92ca69b074d7e.jpg', 'jpg', 'image/jpeg', 58973, '5aa26c883d2272f3bfd877b06e5b0c7b', '6fff87b498ab43be77a8c2d950180fd769195e57', 1577264232, 1577264232, 0);
INSERT INTO `cs_attachment` VALUES (86, 0, 0, 'u=31543700,3055650877&fm=26&gp=0.jpg', 'f1b898b1e562e0c1f4a00a232de9f323.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/f1b898b1e562e0c1f4a00a232de9f323.jpg', '/uploads/attachment/20191225/f1b898b1e562e0c1f4a00a232de9f323.jpg', 'jpg', 'image/jpeg', 58973, '5aa26c883d2272f3bfd877b06e5b0c7b', '6fff87b498ab43be77a8c2d950180fd769195e57', 1577264242, 1577264242, 0);
INSERT INTO `cs_attachment` VALUES (87, 0, 0, 'u=1895540491,803137920&fm=26&gp=0.jpg', '469308e43a439f03f1dc50f109501ac5.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/469308e43a439f03f1dc50f109501ac5.jpg', '/uploads/attachment/20191225/469308e43a439f03f1dc50f109501ac5.jpg', 'jpg', 'image/jpeg', 32178, '913d867bdda7643725db466a193207b4', 'ae5319b28fc47e1c8d62ef8ba3fa5c701b286893', 1577264409, 1577264409, 0);
INSERT INTO `cs_attachment` VALUES (88, 0, 0, 'u=1176719798,1927397418&fm=26&gp=0.jpg', '5f54466c5064b3085c361b8e7463348d.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/5f54466c5064b3085c361b8e7463348d.jpg', '/uploads/attachment/20191225/5f54466c5064b3085c361b8e7463348d.jpg', 'jpg', 'image/jpeg', 13790, '9d6fa2f229718b4f7609f926c6d61eb9', 'ad43ccfabae124c716b1f21e5f522b83837ac616', 1577264417, 1577264417, 0);
INSERT INTO `cs_attachment` VALUES (89, 0, 0, 'A17F6FFFDEF91EFE.jpg', 'ad4c392858e60c40a2d245c1e2742992.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191225/ad4c392858e60c40a2d245c1e2742992.jpg', '/uploads/attachment/20191225/ad4c392858e60c40a2d245c1e2742992.jpg', 'jpg', 'image/jpeg', 15919, '72b522b62e6691969d8ff0c92a6ce858', '885b1542fa913cfe45891ad4b0d532db10f9888d', 1577264423, 1577264423, 0);
INSERT INTO `cs_attachment` VALUES (90, 0, 0, '33611BEEF8273F03.jpg', '8ac75e9a93ac29fc350308b67d09dcf2.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191226/8ac75e9a93ac29fc350308b67d09dcf2.jpg', '/uploads/attachment/20191226/8ac75e9a93ac29fc350308b67d09dcf2.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577332131, 1577332131, 0);
INSERT INTO `cs_attachment` VALUES (91, 0, 0, '33611BEEF8273F03.jpg', '92c3d8ed1b0b160b20f4acb7a1c71e62.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191226/92c3d8ed1b0b160b20f4acb7a1c71e62.jpg', '/uploads/attachment/20191226/92c3d8ed1b0b160b20f4acb7a1c71e62.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577332136, 1577332136, 0);
INSERT INTO `cs_attachment` VALUES (92, 0, 0, '33611BEEF8273F03.jpg', '701bf0df727752fde8d2ec20c75773b1.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191226/701bf0df727752fde8d2ec20c75773b1.jpg', '/uploads/attachment/20191226/701bf0df727752fde8d2ec20c75773b1.jpg', 'jpg', 'image/jpeg', 19561, '31d3f9d221ba1fecd262a4f04453f756', 'd5464106c347c73d187861a3f399d1b42ea5ab54', 1577332226, 1577332226, 0);
INSERT INTO `cs_attachment` VALUES (93, 0, 0, 'u=1176719798,1927397418&fm=26&gp=0.jpg', '4b74302349d81409ad9e0a1cc5d17ad8.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191226/4b74302349d81409ad9e0a1cc5d17ad8.jpg', '/uploads/attachment/20191226/4b74302349d81409ad9e0a1cc5d17ad8.jpg', 'jpg', 'image/jpeg', 13790, '9d6fa2f229718b4f7609f926c6d61eb9', 'ad43ccfabae124c716b1f21e5f522b83837ac616', 1577345566, 1577345566, 0);
INSERT INTO `cs_attachment` VALUES (94, 0, 0, 'u=31543700,3055650877&fm=26&gp=0.jpg', '668a36a35d215de9e94952b0ef865817.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191226/668a36a35d215de9e94952b0ef865817.jpg', '/uploads/attachment/20191226/668a36a35d215de9e94952b0ef865817.jpg', 'jpg', 'image/jpeg', 58973, '5aa26c883d2272f3bfd877b06e5b0c7b', '6fff87b498ab43be77a8c2d950180fd769195e57', 1577346049, 1577346049, 0);
INSERT INTO `cs_attachment` VALUES (95, 0, 0, 'timg.jpg', '87e5db0d2dc688db213e341ad3858690.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20191227/87e5db0d2dc688db213e341ad3858690.jpg', '/uploads/attachment/20191227/87e5db0d2dc688db213e341ad3858690.jpg', 'jpg', 'image/jpeg', 67782, '73a2a1f50349ff28f7e7555fce5da16d', 'd8ea86f218b7db3524c41538ce9b7d7af67a26f1', 1577431193, 1577431193, 0);
INSERT INTO `cs_attachment` VALUES (96, 0, 0, 'timg.jpg', 'c641c918dd566d432ba32b9de5c17fd3.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200102/c641c918dd566d432ba32b9de5c17fd3.jpg', '/uploads/attachment/20200102/c641c918dd566d432ba32b9de5c17fd3.jpg', 'jpg', 'image/jpeg', 67782, '73a2a1f50349ff28f7e7555fce5da16d', 'd8ea86f218b7db3524c41538ce9b7d7af67a26f1', 1577928542, 1577928542, 0);
INSERT INTO `cs_attachment` VALUES (97, 0, 0, 'timg.jpg', '6275453226df66bd39eb7b53ff32ef61.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200102/6275453226df66bd39eb7b53ff32ef61.jpg', '/uploads/attachment/20200102/6275453226df66bd39eb7b53ff32ef61.jpg', 'jpg', 'image/jpeg', 67782, '73a2a1f50349ff28f7e7555fce5da16d', 'd8ea86f218b7db3524c41538ce9b7d7af67a26f1', 1577930597, 1577930597, 0);
INSERT INTO `cs_attachment` VALUES (98, 0, 0, 'timg.jpg', 'd4fd0ecb0944e750960f854d149aa883.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200102/d4fd0ecb0944e750960f854d149aa883.jpg', '/uploads/attachment/20200102/d4fd0ecb0944e750960f854d149aa883.jpg', 'jpg', 'image/jpeg', 67782, '73a2a1f50349ff28f7e7555fce5da16d', 'd8ea86f218b7db3524c41538ce9b7d7af67a26f1', 1577930647, 1577930647, 0);
INSERT INTO `cs_attachment` VALUES (99, 0, 0, 'timg.jpg', '77a18ce5b3ee6bfb14eea423c4e5fb71.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200102/77a18ce5b3ee6bfb14eea423c4e5fb71.jpg', '/uploads/attachment/20200102/77a18ce5b3ee6bfb14eea423c4e5fb71.jpg', 'jpg', 'image/jpeg', 67782, '73a2a1f50349ff28f7e7555fce5da16d', 'd8ea86f218b7db3524c41538ce9b7d7af67a26f1', 1577930653, 1577930653, 0);
INSERT INTO `cs_attachment` VALUES (100, 0, 0, 'timg.jpg', '9d6d2da5145b46edf84e68c7cd1a1321.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200102/9d6d2da5145b46edf84e68c7cd1a1321.jpg', '/uploads/attachment/20200102/9d6d2da5145b46edf84e68c7cd1a1321.jpg', 'jpg', 'image/jpeg', 67782, '73a2a1f50349ff28f7e7555fce5da16d', 'd8ea86f218b7db3524c41538ce9b7d7af67a26f1', 1577930684, 1577930684, 0);
INSERT INTO `cs_attachment` VALUES (101, 0, 0, 'u=1895540491,803137920&fm=26&gp=0.jpg', '143f5aad09fed46873bde3a027478e95.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200102/143f5aad09fed46873bde3a027478e95.jpg', '/uploads/attachment/20200102/143f5aad09fed46873bde3a027478e95.jpg', 'jpg', 'image/jpeg', 32178, '913d867bdda7643725db466a193207b4', 'ae5319b28fc47e1c8d62ef8ba3fa5c701b286893', 1577930694, 1577930694, 0);
INSERT INTO `cs_attachment` VALUES (102, 0, 0, 'u=498753096,2625518&fm=111&gp=0.jpg', '6fa5afcecbc38a3b5cc98585e38f945c.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200104/6fa5afcecbc38a3b5cc98585e38f945c.jpg', '/uploads/attachment/20200104/6fa5afcecbc38a3b5cc98585e38f945c.jpg', 'jpg', 'image/jpeg', 5975, '83e8d5e18ecb5993586aceefe9f48da9', '3d3a8268774a42b0910326d6374ab5265ddd3ad8', 1578102034, 1578102034, 0);
INSERT INTO `cs_attachment` VALUES (103, 0, 0, 'u=1883867978,19024621&fm=26&gp=0.jpg', '693df42a2478138f8f065e1985ea8024.jpg', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200104/693df42a2478138f8f065e1985ea8024.jpg', '/uploads/attachment/20200104/693df42a2478138f8f065e1985ea8024.jpg', 'jpg', 'image/jpeg', 45809, '61ddc0d7cdfc11dc53c9bb93b2c43a45', '44aeec731191a60c82093a410eab9666dd7ffa53', 1578102047, 1578102047, 0);
INSERT INTO `cs_attachment` VALUES (104, 0, 0, 'ic_lei6@2x.png', '5c52f309fde94cc5e0e8a05f9d723ee0.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200104/5c52f309fde94cc5e0e8a05f9d723ee0.png', '/uploads/attachment/20200104/5c52f309fde94cc5e0e8a05f9d723ee0.png', 'png', 'image/png', 7625, '5f80a7a8c222312ab31c486a69de0cf7', '761f4a7a27e5ab57b9c3ea868168d3e3eeb7e01f', 1578124636, 1578124636, 0);
INSERT INTO `cs_attachment` VALUES (105, 0, 0, 'ic_lei4@2x.png', 'e7eda041ed0219545eadefdf03f4a294.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200104/e7eda041ed0219545eadefdf03f4a294.png', '/uploads/attachment/20200104/e7eda041ed0219545eadefdf03f4a294.png', 'png', 'image/png', 7792, '9069cdfdcafb128dc4e37c8555fce105', 'a92061a802abc1204687f194cace592458a32e6f', 1578124661, 1578124661, 0);
INSERT INTO `cs_attachment` VALUES (106, 0, 0, 'gouwuche_hui@2x.png', 'cf45bd908000a4d7315dca57a9b8f898.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/cf45bd908000a4d7315dca57a9b8f898.png', '/uploads/attachment/20200106/cf45bd908000a4d7315dca57a9b8f898.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578293054, 1578293054, 0);
INSERT INTO `cs_attachment` VALUES (107, 0, 0, 'gouwuche_hui@2x.png', 'a97f842c775dbaba420b3385b90e4b72.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/a97f842c775dbaba420b3385b90e4b72.png', '/uploads/attachment/20200106/a97f842c775dbaba420b3385b90e4b72.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578293093, 1578293093, 0);
INSERT INTO `cs_attachment` VALUES (108, 0, 0, 'gouwuche_hui@2x.png', '5011c18a8de3c8caba7b401e74ac697f.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/5011c18a8de3c8caba7b401e74ac697f.png', '/uploads/attachment/20200106/5011c18a8de3c8caba7b401e74ac697f.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578293244, 1578293244, 0);
INSERT INTO `cs_attachment` VALUES (109, 0, 0, 'ic_lei1@3x.png', '6ae98d52ae4161b0f9a79f723143efa3.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/6ae98d52ae4161b0f9a79f723143efa3.png', '/uploads/attachment/20200106/6ae98d52ae4161b0f9a79f723143efa3.png', 'png', 'image/png', 18131, '1d9683fa7c54a4b63a82690f56979e25', 'f5974dd231046686fb151a53372a536df1fb37b4', 1578293367, 1578293367, 0);
INSERT INTO `cs_attachment` VALUES (110, 0, 0, 'ic_lei1@3x.png', '0248759c5ed7fea2b7c29c082d041368.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/0248759c5ed7fea2b7c29c082d041368.png', '/uploads/attachment/20200106/0248759c5ed7fea2b7c29c082d041368.png', 'png', 'image/png', 18131, '1d9683fa7c54a4b63a82690f56979e25', 'f5974dd231046686fb151a53372a536df1fb37b4', 1578293397, 1578293397, 0);
INSERT INTO `cs_attachment` VALUES (111, 0, 0, 'ic_lei1@3x.png', '0f68a94845862f2c8d9a6c7021ee0362.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/0f68a94845862f2c8d9a6c7021ee0362.png', '/uploads/attachment/20200106/0f68a94845862f2c8d9a6c7021ee0362.png', 'png', 'image/png', 18131, '1d9683fa7c54a4b63a82690f56979e25', 'f5974dd231046686fb151a53372a536df1fb37b4', 1578293418, 1578293418, 0);
INSERT INTO `cs_attachment` VALUES (112, 0, 0, 'ic_lei1@3x.png', '893c90e9b40e4f2bf7820f4ec475baae.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/893c90e9b40e4f2bf7820f4ec475baae.png', '/uploads/attachment/20200106/893c90e9b40e4f2bf7820f4ec475baae.png', 'png', 'image/png', 18131, '1d9683fa7c54a4b63a82690f56979e25', 'f5974dd231046686fb151a53372a536df1fb37b4', 1578293453, 1578293453, 0);
INSERT INTO `cs_attachment` VALUES (113, 0, 0, 'fenlei_hui@1x.png', '62c8875d01198bd268cebe28409d6e17.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/62c8875d01198bd268cebe28409d6e17.png', '/uploads/attachment/20200106/62c8875d01198bd268cebe28409d6e17.png', 'png', 'image/png', 879, '9574cd57c75e77257b165fba3ad1639d', 'f5bd712b608544b71c04b09954558b29cb9ea5fd', 1578294393, 1578294393, 0);
INSERT INTO `cs_attachment` VALUES (114, 0, 0, 'fenlei_hui@2x - 副本.png', 'f256ecd33e6ca37cc23fb775a977e3e8.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/f256ecd33e6ca37cc23fb775a977e3e8.png', '/uploads/attachment/20200106/f256ecd33e6ca37cc23fb775a977e3e8.png', 'png', 'image/png', 988, '3c466172f2d8b0fee9a26513626f7569', 'e2e76239ba73ea380d48f5c9fa147cd38b9ab362', 1578294393, 1578294393, 0);
INSERT INTO `cs_attachment` VALUES (115, 0, 0, 'gouwuche_hui@1x.png', 'e4775954ad49c4883de40bbdd2a931fc.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/e4775954ad49c4883de40bbdd2a931fc.png', '/uploads/attachment/20200106/e4775954ad49c4883de40bbdd2a931fc.png', 'png', 'image/png', 853, '76eae6c4db54e011a19807c2405a53d9', '43092fc1c6f178ea0ef1265d0797a3d4244b618b', 1578294393, 1578294393, 0);
INSERT INTO `cs_attachment` VALUES (116, 0, 0, 'gouwuche_hui@2x.png', '3400a4c271ef09dba905a06bcc896780.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/3400a4c271ef09dba905a06bcc896780.png', '/uploads/attachment/20200106/3400a4c271ef09dba905a06bcc896780.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578294393, 1578294393, 0);
INSERT INTO `cs_attachment` VALUES (117, 0, 0, 'fenlei_hui@1x.png', '7b0e87395a8a06ec5058c668c026aa60.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/7b0e87395a8a06ec5058c668c026aa60.png', '/uploads/attachment/20200106/7b0e87395a8a06ec5058c668c026aa60.png', 'png', 'image/png', 879, '9574cd57c75e77257b165fba3ad1639d', 'f5bd712b608544b71c04b09954558b29cb9ea5fd', 1578294449, 1578294449, 0);
INSERT INTO `cs_attachment` VALUES (118, 0, 0, 'fenlei_hui@2x - 副本.png', '91f5f39f2f2f56ef863c92d909e4b5d7.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/91f5f39f2f2f56ef863c92d909e4b5d7.png', '/uploads/attachment/20200106/91f5f39f2f2f56ef863c92d909e4b5d7.png', 'png', 'image/png', 988, '3c466172f2d8b0fee9a26513626f7569', 'e2e76239ba73ea380d48f5c9fa147cd38b9ab362', 1578294449, 1578294449, 0);
INSERT INTO `cs_attachment` VALUES (119, 0, 0, 'gouwuche_hui@1x.png', '574716c739ba7d9b66fd1c2c0eb35c5b.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/574716c739ba7d9b66fd1c2c0eb35c5b.png', '/uploads/attachment/20200106/574716c739ba7d9b66fd1c2c0eb35c5b.png', 'png', 'image/png', 853, '76eae6c4db54e011a19807c2405a53d9', '43092fc1c6f178ea0ef1265d0797a3d4244b618b', 1578294449, 1578294449, 0);
INSERT INTO `cs_attachment` VALUES (120, 0, 0, 'gouwuche_hui@2x.png', 'd56d6e0cb7d6ff776121b91e09e4a6ff.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/d56d6e0cb7d6ff776121b91e09e4a6ff.png', '/uploads/attachment/20200106/d56d6e0cb7d6ff776121b91e09e4a6ff.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578294449, 1578294449, 0);
INSERT INTO `cs_attachment` VALUES (121, 0, 0, 'fenlei_hui@1x.png', 'bfdbeb3eb5ff60e70b3eed5c01125a79.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/bfdbeb3eb5ff60e70b3eed5c01125a79.png', '/uploads/attachment/20200106/bfdbeb3eb5ff60e70b3eed5c01125a79.png', 'png', 'image/png', 879, '9574cd57c75e77257b165fba3ad1639d', 'f5bd712b608544b71c04b09954558b29cb9ea5fd', 1578294465, 1578294465, 0);
INSERT INTO `cs_attachment` VALUES (122, 0, 0, 'fenlei_hui@2x - 副本.png', '7302a62c5ba4bf541f4ec0520aaf9104.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/7302a62c5ba4bf541f4ec0520aaf9104.png', '/uploads/attachment/20200106/7302a62c5ba4bf541f4ec0520aaf9104.png', 'png', 'image/png', 988, '3c466172f2d8b0fee9a26513626f7569', 'e2e76239ba73ea380d48f5c9fa147cd38b9ab362', 1578294465, 1578294465, 0);
INSERT INTO `cs_attachment` VALUES (123, 0, 0, 'gouwuche_hui@1x.png', '32ba466a622234357c4c4f1535ed5197.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/32ba466a622234357c4c4f1535ed5197.png', '/uploads/attachment/20200106/32ba466a622234357c4c4f1535ed5197.png', 'png', 'image/png', 853, '76eae6c4db54e011a19807c2405a53d9', '43092fc1c6f178ea0ef1265d0797a3d4244b618b', 1578294465, 1578294465, 0);
INSERT INTO `cs_attachment` VALUES (124, 0, 0, 'gouwuche_hui@2x.png', '6cec0254fd82d9dccd079f1742f06955.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/6cec0254fd82d9dccd079f1742f06955.png', '/uploads/attachment/20200106/6cec0254fd82d9dccd079f1742f06955.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578294465, 1578294465, 0);
INSERT INTO `cs_attachment` VALUES (125, 0, 0, 'fenlei_hui@1x.png', '8dbd206510c778e9be9b204b099516b5.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/8dbd206510c778e9be9b204b099516b5.png', '/uploads/attachment/20200106/8dbd206510c778e9be9b204b099516b5.png', 'png', 'image/png', 879, '9574cd57c75e77257b165fba3ad1639d', 'f5bd712b608544b71c04b09954558b29cb9ea5fd', 1578294512, 1578294512, 0);
INSERT INTO `cs_attachment` VALUES (126, 0, 0, 'fenlei_hui@2x - 副本.png', '3cb8d789788900fd83d7be4a5711db31.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/3cb8d789788900fd83d7be4a5711db31.png', '/uploads/attachment/20200106/3cb8d789788900fd83d7be4a5711db31.png', 'png', 'image/png', 988, '3c466172f2d8b0fee9a26513626f7569', 'e2e76239ba73ea380d48f5c9fa147cd38b9ab362', 1578294512, 1578294512, 0);
INSERT INTO `cs_attachment` VALUES (127, 0, 0, 'gouwuche_hui@1x.png', '1bbc9eed2347bbd57bcf2aa319b761b1.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/1bbc9eed2347bbd57bcf2aa319b761b1.png', '/uploads/attachment/20200106/1bbc9eed2347bbd57bcf2aa319b761b1.png', 'png', 'image/png', 853, '76eae6c4db54e011a19807c2405a53d9', '43092fc1c6f178ea0ef1265d0797a3d4244b618b', 1578294512, 1578294512, 0);
INSERT INTO `cs_attachment` VALUES (128, 0, 0, 'gouwuche_hui@2x.png', '3c739fba273219351c5e29e84bf35482.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/3c739fba273219351c5e29e84bf35482.png', '/uploads/attachment/20200106/3c739fba273219351c5e29e84bf35482.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578294512, 1578294512, 0);
INSERT INTO `cs_attachment` VALUES (129, 0, 0, 'fenlei_hui@1x.png', '655f5a7b698378420c7bed261808a4e1.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/655f5a7b698378420c7bed261808a4e1.png', '/uploads/attachment/20200106/655f5a7b698378420c7bed261808a4e1.png', 'png', 'image/png', 879, '9574cd57c75e77257b165fba3ad1639d', 'f5bd712b608544b71c04b09954558b29cb9ea5fd', 1578294536, 1578294536, 0);
INSERT INTO `cs_attachment` VALUES (130, 0, 0, 'fenlei_hui@2x - 副本.png', '332b3635d3cda440ee7b1ed80d242db2.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/332b3635d3cda440ee7b1ed80d242db2.png', '/uploads/attachment/20200106/332b3635d3cda440ee7b1ed80d242db2.png', 'png', 'image/png', 988, '3c466172f2d8b0fee9a26513626f7569', 'e2e76239ba73ea380d48f5c9fa147cd38b9ab362', 1578294536, 1578294536, 0);
INSERT INTO `cs_attachment` VALUES (131, 0, 0, 'gouwuche_hui@1x.png', '2d2511b18b57cca0e3114c6041437292.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/2d2511b18b57cca0e3114c6041437292.png', '/uploads/attachment/20200106/2d2511b18b57cca0e3114c6041437292.png', 'png', 'image/png', 853, '76eae6c4db54e011a19807c2405a53d9', '43092fc1c6f178ea0ef1265d0797a3d4244b618b', 1578294536, 1578294536, 0);
INSERT INTO `cs_attachment` VALUES (132, 0, 0, 'gouwuche_hui@2x.png', '72586cdb68aac04f74abadead69a2a44.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/72586cdb68aac04f74abadead69a2a44.png', '/uploads/attachment/20200106/72586cdb68aac04f74abadead69a2a44.png', 'png', 'image/png', 1543, '509895c0963534b5368408605652a93f', '26a228ff37ff87cca72f62664160d1385fe55746', 1578294536, 1578294536, 0);
INSERT INTO `cs_attachment` VALUES (133, 0, 0, 'ic_lei1@2x.png', 'ef217df7a9c9718e10a6b564293eebc1.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/ef217df7a9c9718e10a6b564293eebc1.png', '/uploads/attachment/20200106/ef217df7a9c9718e10a6b564293eebc1.png', 'png', 'image/png', 8211, '84484b84d99b024fa54915e4870c804b', 'edc47ef74807cfb55876c6347ebf7ba8af54d892', 1578294600, 1578294600, 0);
INSERT INTO `cs_attachment` VALUES (134, 0, 0, 'ic_lei1@2x.png', 'fd47386ce48223826b5477112d6278e0.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/fd47386ce48223826b5477112d6278e0.png', '/uploads/attachment/20200106/fd47386ce48223826b5477112d6278e0.png', 'png', 'image/png', 8211, '84484b84d99b024fa54915e4870c804b', 'edc47ef74807cfb55876c6347ebf7ba8af54d892', 1578294600, 1578294600, 0);
INSERT INTO `cs_attachment` VALUES (135, 0, 0, 'ic_lei1@2x.png', 'e674b0be9db845a09d6ebab2a0a5e0c8.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/e674b0be9db845a09d6ebab2a0a5e0c8.png', '/uploads/attachment/20200106/e674b0be9db845a09d6ebab2a0a5e0c8.png', 'png', 'image/png', 8211, '84484b84d99b024fa54915e4870c804b', 'edc47ef74807cfb55876c6347ebf7ba8af54d892', 1578294624, 1578294624, 0);
INSERT INTO `cs_attachment` VALUES (136, 0, 0, 'ic_lei1@2x.png', '22d46e1844585ca573e77376f0d97116.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200106/22d46e1844585ca573e77376f0d97116.png', '/uploads/attachment/20200106/22d46e1844585ca573e77376f0d97116.png', 'png', 'image/png', 8211, '84484b84d99b024fa54915e4870c804b', 'edc47ef74807cfb55876c6347ebf7ba8af54d892', 1578294624, 1578294624, 0);
INSERT INTO `cs_attachment` VALUES (137, 0, 0, '650cc113b532d82ced5fa1aebee5997.png', '2c93fcf5185013079a2bdd9c1c6ae2bf.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200107/2c93fcf5185013079a2bdd9c1c6ae2bf.png', '/uploads/attachment/20200107/2c93fcf5185013079a2bdd9c1c6ae2bf.png', 'png', 'image/png', 46397, '701e142419d42b987e6652f994971801', '6ccd11abb9c9040d654a18d40e5565b23ff23b42', 1578375411, 1578375411, 0);
INSERT INTO `cs_attachment` VALUES (138, 0, 0, '40b380148eda6e1df17ba6d74d06673.png', 'e2b5257ae651a32819e01b4ff5153c17.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200107/e2b5257ae651a32819e01b4ff5153c17.png', '/uploads/attachment/20200107/e2b5257ae651a32819e01b4ff5153c17.png', 'png', 'image/png', 39199, 'e2f44a2b069c0113e12846956d8ddaa8', 'c20509689c9bb659ab578157e93e6b36e0313df8', 1578375418, 1578375418, 0);
INSERT INTO `cs_attachment` VALUES (139, 0, 0, '6c898a37a4c1ab02630f19d8e6d865d.png', '6417e0ec1023127c33b8ca8d15c9f17a.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200107/6417e0ec1023127c33b8ca8d15c9f17a.png', '/uploads/attachment/20200107/6417e0ec1023127c33b8ca8d15c9f17a.png', 'png', 'image/png', 40852, 'a03964ea2ce36c43c567fb133767e1ac', '0f62fa1e0a515ffd4e7e349e53fc5210ae13cce7', 1578375424, 1578375424, 0);
INSERT INTO `cs_attachment` VALUES (140, 0, 0, '650cc113b532d82ced5fa1aebee5997.png', 'b9f93453381a2a806507080736942f42.png', 'C:/Users/Administrator/Desktop/xhfy/public/uploads/attachment/20200108/b9f93453381a2a806507080736942f42.png', '/uploads/attachment/20200108/b9f93453381a2a806507080736942f42.png', 'png', 'image/png', 46397, '701e142419d42b987e6652f994971801', '6ccd11abb9c9040d654a18d40e5565b23ff23b42', 1578465902, 1578465902, 0);

-- ----------------------------
-- Table structure for cs_city
-- ----------------------------
DROP TABLE IF EXISTS `cs_city`;
CREATE TABLE `cs_city`  (
  `Id` int(11) NOT NULL,
  `Code` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `Name` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `ProvinceCode` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_city
-- ----------------------------
INSERT INTO `cs_city` VALUES (1, '110100', '市辖区', '110000');
INSERT INTO `cs_city` VALUES (2, '110200', '县', '110000');
INSERT INTO `cs_city` VALUES (3, '120100', '市辖区', '120000');
INSERT INTO `cs_city` VALUES (4, '120200', '县', '120000');
INSERT INTO `cs_city` VALUES (5, '130100', '石家庄市', '130000');
INSERT INTO `cs_city` VALUES (6, '130200', '唐山市', '130000');
INSERT INTO `cs_city` VALUES (7, '130300', '秦皇岛市', '130000');
INSERT INTO `cs_city` VALUES (8, '130400', '邯郸市', '130000');
INSERT INTO `cs_city` VALUES (9, '130500', '邢台市', '130000');
INSERT INTO `cs_city` VALUES (10, '130600', '保定市', '130000');
INSERT INTO `cs_city` VALUES (11, '130700', '张家口市', '130000');
INSERT INTO `cs_city` VALUES (12, '130800', '承德市', '130000');
INSERT INTO `cs_city` VALUES (13, '130900', '沧州市', '130000');
INSERT INTO `cs_city` VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO `cs_city` VALUES (15, '131100', '衡水市', '130000');
INSERT INTO `cs_city` VALUES (16, '140100', '太原市', '140000');
INSERT INTO `cs_city` VALUES (17, '140200', '大同市', '140000');
INSERT INTO `cs_city` VALUES (18, '140300', '阳泉市', '140000');
INSERT INTO `cs_city` VALUES (19, '140400', '长治市', '140000');
INSERT INTO `cs_city` VALUES (20, '140500', '晋城市', '140000');
INSERT INTO `cs_city` VALUES (21, '140600', '朔州市', '140000');
INSERT INTO `cs_city` VALUES (22, '140700', '晋中市', '140000');
INSERT INTO `cs_city` VALUES (23, '140800', '运城市', '140000');
INSERT INTO `cs_city` VALUES (24, '140900', '忻州市', '140000');
INSERT INTO `cs_city` VALUES (25, '141000', '临汾市', '140000');
INSERT INTO `cs_city` VALUES (26, '141100', '吕梁市', '140000');
INSERT INTO `cs_city` VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO `cs_city` VALUES (28, '150200', '包头市', '150000');
INSERT INTO `cs_city` VALUES (29, '150300', '乌海市', '150000');
INSERT INTO `cs_city` VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO `cs_city` VALUES (31, '150500', '通辽市', '150000');
INSERT INTO `cs_city` VALUES (32, '150600', '鄂尔多斯市', '150000');
INSERT INTO `cs_city` VALUES (33, '150700', '呼伦贝尔市', '150000');
INSERT INTO `cs_city` VALUES (34, '150800', '巴彦淖尔市', '150000');
INSERT INTO `cs_city` VALUES (35, '150900', '乌兰察布市', '150000');
INSERT INTO `cs_city` VALUES (36, '152200', '兴安盟', '150000');
INSERT INTO `cs_city` VALUES (37, '152500', '锡林郭勒盟', '150000');
INSERT INTO `cs_city` VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO `cs_city` VALUES (39, '210100', '沈阳市', '210000');
INSERT INTO `cs_city` VALUES (40, '210200', '大连市', '210000');
INSERT INTO `cs_city` VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO `cs_city` VALUES (42, '210400', '抚顺市', '210000');
INSERT INTO `cs_city` VALUES (43, '210500', '本溪市', '210000');
INSERT INTO `cs_city` VALUES (44, '210600', '丹东市', '210000');
INSERT INTO `cs_city` VALUES (45, '210700', '锦州市', '210000');
INSERT INTO `cs_city` VALUES (46, '210800', '营口市', '210000');
INSERT INTO `cs_city` VALUES (47, '210900', '阜新市', '210000');
INSERT INTO `cs_city` VALUES (48, '211000', '辽阳市', '210000');
INSERT INTO `cs_city` VALUES (49, '211100', '盘锦市', '210000');
INSERT INTO `cs_city` VALUES (50, '211200', '铁岭市', '210000');
INSERT INTO `cs_city` VALUES (51, '211300', '朝阳市', '210000');
INSERT INTO `cs_city` VALUES (52, '211400', '葫芦岛市', '210000');
INSERT INTO `cs_city` VALUES (53, '220100', '长春市', '220000');
INSERT INTO `cs_city` VALUES (54, '220200', '吉林市', '220000');
INSERT INTO `cs_city` VALUES (55, '220300', '四平市', '220000');
INSERT INTO `cs_city` VALUES (56, '220400', '辽源市', '220000');
INSERT INTO `cs_city` VALUES (57, '220500', '通化市', '220000');
INSERT INTO `cs_city` VALUES (58, '220600', '白山市', '220000');
INSERT INTO `cs_city` VALUES (59, '220700', '松原市', '220000');
INSERT INTO `cs_city` VALUES (60, '220800', '白城市', '220000');
INSERT INTO `cs_city` VALUES (61, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `cs_city` VALUES (62, '230100', '哈尔滨市', '230000');
INSERT INTO `cs_city` VALUES (63, '230200', '齐齐哈尔市', '230000');
INSERT INTO `cs_city` VALUES (64, '230300', '鸡西市', '230000');
INSERT INTO `cs_city` VALUES (65, '230400', '鹤岗市', '230000');
INSERT INTO `cs_city` VALUES (66, '230500', '双鸭山市', '230000');
INSERT INTO `cs_city` VALUES (67, '230600', '大庆市', '230000');
INSERT INTO `cs_city` VALUES (68, '230700', '伊春市', '230000');
INSERT INTO `cs_city` VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO `cs_city` VALUES (70, '230900', '七台河市', '230000');
INSERT INTO `cs_city` VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO `cs_city` VALUES (72, '231100', '黑河市', '230000');
INSERT INTO `cs_city` VALUES (73, '231200', '绥化市', '230000');
INSERT INTO `cs_city` VALUES (74, '232700', '大兴安岭地区', '230000');
INSERT INTO `cs_city` VALUES (75, '310100', '市辖区', '310000');
INSERT INTO `cs_city` VALUES (76, '310200', '县', '310000');
INSERT INTO `cs_city` VALUES (77, '320100', '南京市', '320000');
INSERT INTO `cs_city` VALUES (78, '320200', '无锡市', '320000');
INSERT INTO `cs_city` VALUES (79, '320300', '徐州市', '320000');
INSERT INTO `cs_city` VALUES (80, '320400', '常州市', '320000');
INSERT INTO `cs_city` VALUES (81, '320500', '苏州市', '320000');
INSERT INTO `cs_city` VALUES (82, '320600', '南通市', '320000');
INSERT INTO `cs_city` VALUES (83, '320700', '连云港市', '320000');
INSERT INTO `cs_city` VALUES (84, '320800', '淮安市', '320000');
INSERT INTO `cs_city` VALUES (85, '320900', '盐城市', '320000');
INSERT INTO `cs_city` VALUES (86, '321000', '扬州市', '320000');
INSERT INTO `cs_city` VALUES (87, '321100', '镇江市', '320000');
INSERT INTO `cs_city` VALUES (88, '321200', '泰州市', '320000');
INSERT INTO `cs_city` VALUES (89, '321300', '宿迁市', '320000');
INSERT INTO `cs_city` VALUES (90, '330100', '杭州市', '330000');
INSERT INTO `cs_city` VALUES (91, '330200', '宁波市', '330000');
INSERT INTO `cs_city` VALUES (92, '330300', '温州市', '330000');
INSERT INTO `cs_city` VALUES (93, '330400', '嘉兴市', '330000');
INSERT INTO `cs_city` VALUES (94, '330500', '湖州市', '330000');
INSERT INTO `cs_city` VALUES (95, '330600', '绍兴市', '330000');
INSERT INTO `cs_city` VALUES (96, '330700', '金华市', '330000');
INSERT INTO `cs_city` VALUES (97, '330800', '衢州市', '330000');
INSERT INTO `cs_city` VALUES (98, '330900', '舟山市', '330000');
INSERT INTO `cs_city` VALUES (99, '331000', '台州市', '330000');
INSERT INTO `cs_city` VALUES (100, '331100', '丽水市', '330000');
INSERT INTO `cs_city` VALUES (101, '340100', '合肥市', '340000');
INSERT INTO `cs_city` VALUES (102, '340200', '芜湖市', '340000');
INSERT INTO `cs_city` VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO `cs_city` VALUES (104, '340400', '淮南市', '340000');
INSERT INTO `cs_city` VALUES (105, '340500', '马鞍山市', '340000');
INSERT INTO `cs_city` VALUES (106, '340600', '淮北市', '340000');
INSERT INTO `cs_city` VALUES (107, '340700', '铜陵市', '340000');
INSERT INTO `cs_city` VALUES (108, '340800', '安庆市', '340000');
INSERT INTO `cs_city` VALUES (109, '341000', '黄山市', '340000');
INSERT INTO `cs_city` VALUES (110, '341100', '滁州市', '340000');
INSERT INTO `cs_city` VALUES (111, '341200', '阜阳市', '340000');
INSERT INTO `cs_city` VALUES (112, '341300', '宿州市', '340000');
INSERT INTO `cs_city` VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO `cs_city` VALUES (114, '341500', '六安市', '340000');
INSERT INTO `cs_city` VALUES (115, '341600', '亳州市', '340000');
INSERT INTO `cs_city` VALUES (116, '341700', '池州市', '340000');
INSERT INTO `cs_city` VALUES (117, '341800', '宣城市', '340000');
INSERT INTO `cs_city` VALUES (118, '350100', '福州市', '350000');
INSERT INTO `cs_city` VALUES (119, '350200', '厦门市', '350000');
INSERT INTO `cs_city` VALUES (120, '350300', '莆田市', '350000');
INSERT INTO `cs_city` VALUES (121, '350400', '三明市', '350000');
INSERT INTO `cs_city` VALUES (122, '350500', '泉州市', '350000');
INSERT INTO `cs_city` VALUES (123, '350600', '漳州市', '350000');
INSERT INTO `cs_city` VALUES (124, '350700', '南平市', '350000');
INSERT INTO `cs_city` VALUES (125, '350800', '龙岩市', '350000');
INSERT INTO `cs_city` VALUES (126, '350900', '宁德市', '350000');
INSERT INTO `cs_city` VALUES (127, '360100', '南昌市', '360000');
INSERT INTO `cs_city` VALUES (128, '360200', '景德镇市', '360000');
INSERT INTO `cs_city` VALUES (129, '360300', '萍乡市', '360000');
INSERT INTO `cs_city` VALUES (130, '360400', '九江市', '360000');
INSERT INTO `cs_city` VALUES (131, '360500', '新余市', '360000');
INSERT INTO `cs_city` VALUES (132, '360600', '鹰潭市', '360000');
INSERT INTO `cs_city` VALUES (133, '360700', '赣州市', '360000');
INSERT INTO `cs_city` VALUES (134, '360800', '吉安市', '360000');
INSERT INTO `cs_city` VALUES (135, '360900', '宜春市', '360000');
INSERT INTO `cs_city` VALUES (136, '361000', '抚州市', '360000');
INSERT INTO `cs_city` VALUES (137, '361100', '上饶市', '360000');
INSERT INTO `cs_city` VALUES (138, '370100', '济南市', '370000');
INSERT INTO `cs_city` VALUES (139, '370200', '青岛市', '370000');
INSERT INTO `cs_city` VALUES (140, '370300', '淄博市', '370000');
INSERT INTO `cs_city` VALUES (141, '370400', '枣庄市', '370000');
INSERT INTO `cs_city` VALUES (142, '370500', '东营市', '370000');
INSERT INTO `cs_city` VALUES (143, '370600', '烟台市', '370000');
INSERT INTO `cs_city` VALUES (144, '370700', '潍坊市', '370000');
INSERT INTO `cs_city` VALUES (145, '370800', '济宁市', '370000');
INSERT INTO `cs_city` VALUES (146, '370900', '泰安市', '370000');
INSERT INTO `cs_city` VALUES (147, '371000', '威海市', '370000');
INSERT INTO `cs_city` VALUES (148, '371100', '日照市', '370000');
INSERT INTO `cs_city` VALUES (149, '371200', '莱芜市', '370000');
INSERT INTO `cs_city` VALUES (150, '371300', '临沂市', '370000');
INSERT INTO `cs_city` VALUES (151, '371400', '德州市', '370000');
INSERT INTO `cs_city` VALUES (152, '371500', '聊城市', '370000');
INSERT INTO `cs_city` VALUES (153, '371600', '滨州市', '370000');
INSERT INTO `cs_city` VALUES (154, '371700', '荷泽市', '370000');
INSERT INTO `cs_city` VALUES (155, '410100', '郑州市', '410000');
INSERT INTO `cs_city` VALUES (156, '410200', '开封市', '410000');
INSERT INTO `cs_city` VALUES (157, '410300', '洛阳市', '410000');
INSERT INTO `cs_city` VALUES (158, '410400', '平顶山市', '410000');
INSERT INTO `cs_city` VALUES (159, '410500', '安阳市', '410000');
INSERT INTO `cs_city` VALUES (160, '410600', '鹤壁市', '410000');
INSERT INTO `cs_city` VALUES (161, '410700', '新乡市', '410000');
INSERT INTO `cs_city` VALUES (162, '410800', '焦作市', '410000');
INSERT INTO `cs_city` VALUES (163, '410900', '濮阳市', '410000');
INSERT INTO `cs_city` VALUES (164, '411000', '许昌市', '410000');
INSERT INTO `cs_city` VALUES (165, '411100', '漯河市', '410000');
INSERT INTO `cs_city` VALUES (166, '411200', '三门峡市', '410000');
INSERT INTO `cs_city` VALUES (167, '411300', '南阳市', '410000');
INSERT INTO `cs_city` VALUES (168, '411400', '商丘市', '410000');
INSERT INTO `cs_city` VALUES (169, '411500', '信阳市', '410000');
INSERT INTO `cs_city` VALUES (170, '411600', '周口市', '410000');
INSERT INTO `cs_city` VALUES (171, '411700', '驻马店市', '410000');
INSERT INTO `cs_city` VALUES (172, '420100', '武汉市', '420000');
INSERT INTO `cs_city` VALUES (173, '420200', '黄石市', '420000');
INSERT INTO `cs_city` VALUES (174, '420300', '十堰市', '420000');
INSERT INTO `cs_city` VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO `cs_city` VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO `cs_city` VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO `cs_city` VALUES (178, '420800', '荆门市', '420000');
INSERT INTO `cs_city` VALUES (179, '420900', '孝感市', '420000');
INSERT INTO `cs_city` VALUES (180, '421000', '荆州市', '420000');
INSERT INTO `cs_city` VALUES (181, '421100', '黄冈市', '420000');
INSERT INTO `cs_city` VALUES (182, '421200', '咸宁市', '420000');
INSERT INTO `cs_city` VALUES (183, '421300', '随州市', '420000');
INSERT INTO `cs_city` VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `cs_city` VALUES (185, '429000', '省直辖行政单位', '420000');
INSERT INTO `cs_city` VALUES (186, '430100', '长沙市', '430000');
INSERT INTO `cs_city` VALUES (187, '430200', '株洲市', '430000');
INSERT INTO `cs_city` VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO `cs_city` VALUES (189, '430400', '衡阳市', '430000');
INSERT INTO `cs_city` VALUES (190, '430500', '邵阳市', '430000');
INSERT INTO `cs_city` VALUES (191, '430600', '岳阳市', '430000');
INSERT INTO `cs_city` VALUES (192, '430700', '常德市', '430000');
INSERT INTO `cs_city` VALUES (193, '430800', '张家界市', '430000');
INSERT INTO `cs_city` VALUES (194, '430900', '益阳市', '430000');
INSERT INTO `cs_city` VALUES (195, '431000', '郴州市', '430000');
INSERT INTO `cs_city` VALUES (196, '431100', '永州市', '430000');
INSERT INTO `cs_city` VALUES (197, '431200', '怀化市', '430000');
INSERT INTO `cs_city` VALUES (198, '431300', '娄底市', '430000');
INSERT INTO `cs_city` VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `cs_city` VALUES (200, '440100', '广州市', '440000');
INSERT INTO `cs_city` VALUES (201, '440200', '韶关市', '440000');
INSERT INTO `cs_city` VALUES (202, '440300', '深圳市', '440000');
INSERT INTO `cs_city` VALUES (203, '440400', '珠海市', '440000');
INSERT INTO `cs_city` VALUES (204, '440500', '汕头市', '440000');
INSERT INTO `cs_city` VALUES (205, '440600', '佛山市', '440000');
INSERT INTO `cs_city` VALUES (206, '440700', '江门市', '440000');
INSERT INTO `cs_city` VALUES (207, '440800', '湛江市', '440000');
INSERT INTO `cs_city` VALUES (208, '440900', '茂名市', '440000');
INSERT INTO `cs_city` VALUES (209, '441200', '肇庆市', '440000');
INSERT INTO `cs_city` VALUES (210, '441300', '惠州市', '440000');
INSERT INTO `cs_city` VALUES (211, '441400', '梅州市', '440000');
INSERT INTO `cs_city` VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO `cs_city` VALUES (213, '441600', '河源市', '440000');
INSERT INTO `cs_city` VALUES (214, '441700', '阳江市', '440000');
INSERT INTO `cs_city` VALUES (215, '441800', '清远市', '440000');
INSERT INTO `cs_city` VALUES (216, '441900', '东莞市', '440000');
INSERT INTO `cs_city` VALUES (217, '442000', '中山市', '440000');
INSERT INTO `cs_city` VALUES (218, '445100', '潮州市', '440000');
INSERT INTO `cs_city` VALUES (219, '445200', '揭阳市', '440000');
INSERT INTO `cs_city` VALUES (220, '445300', '云浮市', '440000');
INSERT INTO `cs_city` VALUES (221, '450100', '南宁市', '450000');
INSERT INTO `cs_city` VALUES (222, '450200', '柳州市', '450000');
INSERT INTO `cs_city` VALUES (223, '450300', '桂林市', '450000');
INSERT INTO `cs_city` VALUES (224, '450400', '梧州市', '450000');
INSERT INTO `cs_city` VALUES (225, '450500', '北海市', '450000');
INSERT INTO `cs_city` VALUES (226, '450600', '防城港市', '450000');
INSERT INTO `cs_city` VALUES (227, '450700', '钦州市', '450000');
INSERT INTO `cs_city` VALUES (228, '450800', '贵港市', '450000');
INSERT INTO `cs_city` VALUES (229, '450900', '玉林市', '450000');
INSERT INTO `cs_city` VALUES (230, '451000', '百色市', '450000');
INSERT INTO `cs_city` VALUES (231, '451100', '贺州市', '450000');
INSERT INTO `cs_city` VALUES (232, '451200', '河池市', '450000');
INSERT INTO `cs_city` VALUES (233, '451300', '来宾市', '450000');
INSERT INTO `cs_city` VALUES (234, '451400', '崇左市', '450000');
INSERT INTO `cs_city` VALUES (235, '460100', '海口市', '460000');
INSERT INTO `cs_city` VALUES (236, '460200', '三亚市', '460000');
INSERT INTO `cs_city` VALUES (237, '469000', '省直辖县级行政单位', '460000');
INSERT INTO `cs_city` VALUES (238, '500100', '市辖区', '500000');
INSERT INTO `cs_city` VALUES (239, '500200', '县', '500000');
INSERT INTO `cs_city` VALUES (240, '500300', '市', '500000');
INSERT INTO `cs_city` VALUES (241, '510100', '成都市', '510000');
INSERT INTO `cs_city` VALUES (242, '510300', '自贡市', '510000');
INSERT INTO `cs_city` VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO `cs_city` VALUES (244, '510500', '泸州市', '510000');
INSERT INTO `cs_city` VALUES (245, '510600', '德阳市', '510000');
INSERT INTO `cs_city` VALUES (246, '510700', '绵阳市', '510000');
INSERT INTO `cs_city` VALUES (247, '510800', '广元市', '510000');
INSERT INTO `cs_city` VALUES (248, '510900', '遂宁市', '510000');
INSERT INTO `cs_city` VALUES (249, '511000', '内江市', '510000');
INSERT INTO `cs_city` VALUES (250, '511100', '乐山市', '510000');
INSERT INTO `cs_city` VALUES (251, '511300', '南充市', '510000');
INSERT INTO `cs_city` VALUES (252, '511400', '眉山市', '510000');
INSERT INTO `cs_city` VALUES (253, '511500', '宜宾市', '510000');
INSERT INTO `cs_city` VALUES (254, '511600', '广安市', '510000');
INSERT INTO `cs_city` VALUES (255, '511700', '达州市', '510000');
INSERT INTO `cs_city` VALUES (256, '511800', '雅安市', '510000');
INSERT INTO `cs_city` VALUES (257, '511900', '巴中市', '510000');
INSERT INTO `cs_city` VALUES (258, '512000', '资阳市', '510000');
INSERT INTO `cs_city` VALUES (259, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `cs_city` VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO `cs_city` VALUES (261, '513400', '凉山彝族自治州', '510000');
INSERT INTO `cs_city` VALUES (262, '520100', '贵阳市', '520000');
INSERT INTO `cs_city` VALUES (263, '520200', '六盘水市', '520000');
INSERT INTO `cs_city` VALUES (264, '520300', '遵义市', '520000');
INSERT INTO `cs_city` VALUES (265, '520400', '安顺市', '520000');
INSERT INTO `cs_city` VALUES (266, '522200', '铜仁地区', '520000');
INSERT INTO `cs_city` VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `cs_city` VALUES (268, '522400', '毕节地区', '520000');
INSERT INTO `cs_city` VALUES (269, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `cs_city` VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `cs_city` VALUES (271, '530100', '昆明市', '530000');
INSERT INTO `cs_city` VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO `cs_city` VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO `cs_city` VALUES (274, '530500', '保山市', '530000');
INSERT INTO `cs_city` VALUES (275, '530600', '昭通市', '530000');
INSERT INTO `cs_city` VALUES (276, '530700', '丽江市', '530000');
INSERT INTO `cs_city` VALUES (277, '530800', '思茅市', '530000');
INSERT INTO `cs_city` VALUES (278, '530900', '临沧市', '530000');
INSERT INTO `cs_city` VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO `cs_city` VALUES (280, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `cs_city` VALUES (281, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `cs_city` VALUES (282, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `cs_city` VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO `cs_city` VALUES (284, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `cs_city` VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `cs_city` VALUES (286, '533400', '迪庆藏族自治州', '530000');
INSERT INTO `cs_city` VALUES (287, '540100', '拉萨市', '540000');
INSERT INTO `cs_city` VALUES (288, '542100', '昌都地区', '540000');
INSERT INTO `cs_city` VALUES (289, '542200', '山南地区', '540000');
INSERT INTO `cs_city` VALUES (290, '542300', '日喀则地区', '540000');
INSERT INTO `cs_city` VALUES (291, '542400', '那曲地区', '540000');
INSERT INTO `cs_city` VALUES (292, '542500', '阿里地区', '540000');
INSERT INTO `cs_city` VALUES (293, '542600', '林芝地区', '540000');
INSERT INTO `cs_city` VALUES (294, '610100', '西安市', '610000');
INSERT INTO `cs_city` VALUES (295, '610200', '铜川市', '610000');
INSERT INTO `cs_city` VALUES (296, '610300', '宝鸡市', '610000');
INSERT INTO `cs_city` VALUES (297, '610400', '咸阳市', '610000');
INSERT INTO `cs_city` VALUES (298, '610500', '渭南市', '610000');
INSERT INTO `cs_city` VALUES (299, '610600', '延安市', '610000');
INSERT INTO `cs_city` VALUES (300, '610700', '汉中市', '610000');
INSERT INTO `cs_city` VALUES (301, '610800', '榆林市', '610000');
INSERT INTO `cs_city` VALUES (302, '610900', '安康市', '610000');
INSERT INTO `cs_city` VALUES (303, '611000', '商洛市', '610000');
INSERT INTO `cs_city` VALUES (304, '620100', '兰州市', '620000');
INSERT INTO `cs_city` VALUES (305, '620200', '嘉峪关市', '620000');
INSERT INTO `cs_city` VALUES (306, '620300', '金昌市', '620000');
INSERT INTO `cs_city` VALUES (307, '620400', '白银市', '620000');
INSERT INTO `cs_city` VALUES (308, '620500', '天水市', '620000');
INSERT INTO `cs_city` VALUES (309, '620600', '武威市', '620000');
INSERT INTO `cs_city` VALUES (310, '620700', '张掖市', '620000');
INSERT INTO `cs_city` VALUES (311, '620800', '平凉市', '620000');
INSERT INTO `cs_city` VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO `cs_city` VALUES (313, '621000', '庆阳市', '620000');
INSERT INTO `cs_city` VALUES (314, '621100', '定西市', '620000');
INSERT INTO `cs_city` VALUES (315, '621200', '陇南市', '620000');
INSERT INTO `cs_city` VALUES (316, '622900', '临夏回族自治州', '620000');
INSERT INTO `cs_city` VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO `cs_city` VALUES (318, '630100', '西宁市', '630000');
INSERT INTO `cs_city` VALUES (319, '632100', '海东地区', '630000');
INSERT INTO `cs_city` VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO `cs_city` VALUES (321, '632300', '黄南藏族自治州', '630000');
INSERT INTO `cs_city` VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO `cs_city` VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO `cs_city` VALUES (324, '632700', '玉树藏族自治州', '630000');
INSERT INTO `cs_city` VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `cs_city` VALUES (326, '640100', '银川市', '640000');
INSERT INTO `cs_city` VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO `cs_city` VALUES (328, '640300', '吴忠市', '640000');
INSERT INTO `cs_city` VALUES (329, '640400', '固原市', '640000');
INSERT INTO `cs_city` VALUES (330, '640500', '中卫市', '640000');
INSERT INTO `cs_city` VALUES (331, '650100', '乌鲁木齐市', '650000');
INSERT INTO `cs_city` VALUES (332, '650200', '克拉玛依市', '650000');
INSERT INTO `cs_city` VALUES (333, '652100', '吐鲁番地区', '650000');
INSERT INTO `cs_city` VALUES (334, '652200', '哈密地区', '650000');
INSERT INTO `cs_city` VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO `cs_city` VALUES (336, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `cs_city` VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `cs_city` VALUES (338, '652900', '阿克苏地区', '650000');
INSERT INTO `cs_city` VALUES (339, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `cs_city` VALUES (340, '653100', '喀什地区', '650000');
INSERT INTO `cs_city` VALUES (341, '653200', '和田地区', '650000');
INSERT INTO `cs_city` VALUES (342, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `cs_city` VALUES (343, '654200', '塔城地区', '650000');
INSERT INTO `cs_city` VALUES (344, '654300', '阿勒泰地区', '650000');
INSERT INTO `cs_city` VALUES (345, '659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for cs_cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cs_cms_article`;
CREATE TABLE `cs_cms_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) UNSIGNED NOT NULL COMMENT '分类id',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `keywords` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关键字',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件id',
  `view` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '阅读量',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`cate_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_cms_article
-- ----------------------------
INSERT INTO `cs_cms_article` VALUES (1, 1, '玉米亩产一千八', '<p><br/></p><p><img src=\"http://www.xhfy.com//uploads/ueditor/20200102/387a9d9a04920bb06345e5dbbc6994b6.jpg\" title=\"387a9d9a04920bb06345e5dbbc6994b6.jpg\" alt=\"387a9d9a04920bb06345e5dbbc6994b6.jpg\" width=\"832\" height=\"316\"/></p><p>1建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八建设玉米亩产一千八</p>', '玉米', '玉米', '/uploads/attachment/20200102/143f5aad09fed46873bde3a027478e95.jpg', 10, 1574070571, 1577930821, 0, 1);
INSERT INTO `cs_cms_article` VALUES (2, 1, '推进新农业技术革命.实现传统农业想现代农业的跨越', '<p>推进新农业技术革命.实现传统农业想现代农业的跨越推进新农业技术革命.实现传统农业想现代农业的跨越推进新农业技术革命.实现传统农业想现代农业的跨越</p>', '农业', '推进新农业技术革命.实现传统农业想现代农业的跨越', '/uploads/attachment/20200102/9d6d2da5145b46edf84e68c7cd1a1321.jpg', 0, 1577928542, 1577930684, 0, 1);

-- ----------------------------
-- Table structure for cs_cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cs_cms_category`;
CREATE TABLE `cs_cms_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_cms_category
-- ----------------------------
INSERT INTO `cs_cms_category` VALUES (1, 0, '技术优势', 0, 0);

-- ----------------------------
-- Table structure for cs_cms_notice
-- ----------------------------
DROP TABLE IF EXISTS `cs_cms_notice`;
CREATE TABLE `cs_cms_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态  ',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `sort` int(10) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_cms_notice
-- ----------------------------
INSERT INTO `cs_cms_notice` VALUES (1, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 10);
INSERT INTO `cs_cms_notice` VALUES (2, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 11);
INSERT INTO `cs_cms_notice` VALUES (3, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 12);
INSERT INTO `cs_cms_notice` VALUES (4, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 13);
INSERT INTO `cs_cms_notice` VALUES (5, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 14);
INSERT INTO `cs_cms_notice` VALUES (6, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 15);
INSERT INTO `cs_cms_notice` VALUES (7, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 16);
INSERT INTO `cs_cms_notice` VALUES (8, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 17);
INSERT INTO `cs_cms_notice` VALUES (9, '双十二活动劲爆来袭', '双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭双十二活动劲爆来袭', 1, 1578018054, 18);

-- ----------------------------
-- Table structure for cs_cms_page
-- ----------------------------
DROP TABLE IF EXISTS `cs_cms_page`;
CREATE TABLE `cs_cms_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `keywords` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关键字',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `attachment` int(10) UNSIGNED NOT NULL COMMENT '附件id',
  `view` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '阅读量',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1启用0禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章单页' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_cms_page
-- ----------------------------
INSERT INTO `cs_cms_page` VALUES (1, '第一个单页', '<p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 2em; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, 宋体, sans-serif; white-space: normal;\">根据峨眉山景区工作人员曾先生提供的视频显示，峨眉山接引殿、金顶等高山区房顶上、草丛中、树枝间，到处都铺了薄薄的一层白雪，高山上的寺庙也更添了一丝禅意。面对突然而至的降雪，游客们惊喜不已。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 2em; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, 宋体, sans-serif; white-space: normal;\">红星新闻记者查询发现，2018年10月2日深夜至10月3日凌晨，峨眉山迎来了2018年入秋的第一场雪，而今年秋冬以来的首场雪比去年晚了1个半月。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 2em; line-height: 30px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, 宋体, sans-serif; white-space: normal;\">11月18日上午，据峨眉山国家基准气候站工作人员告诉红星新闻记者，前段时间峨眉山金顶即有零星降雪，但是很小，这场雪是首场积雪，从11月17日晚20时开始下，积了10厘米左右厚，目前还在持续。</p><p><img src=\"/uploads/ueditor/20191121/328fa13bba301fd31623da4ab0efface.jpeg\" title=\"328fa13bba301fd31623da4ab0efface.jpeg\"/></p><p><img src=\"/uploads/ueditor/20191121/328fa13bba301fd31623da4ab0efface.jpeg\" title=\"328fa13bba301fd31623da4ab0efface.jpeg\"/></p><p><br/></p><p><br/></p><p><br/></p>', '峨眉山第一场雪', '前两天，四川省#峨眉山金顶缆车被奇光笼罩#登上微博热搜话题。11月18日，峨眉山景区又给游客带来惊喜——迎来了2019年入冬以来的第一场雪，银装素裹，分外妖娆。', 5, 100, 1, 1574133666, 1574299230, 0);

-- ----------------------------
-- Table structure for cs_cms_slide
-- ----------------------------
DROP TABLE IF EXISTS `cs_cms_slide`;
CREATE TABLE `cs_cms_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件id',
  `type` tinyint(1) UNSIGNED NOT NULL COMMENT '类型0不跳转1外链2商品3查询商品分类列表',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '1跳转url',
  `jump_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '2/3 跳转id',
  `position` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1首页2商城模块',
  `sort` tinyint(3) UNSIGNED NULL DEFAULT 100 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1启用0禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(11) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_cms_slide
-- ----------------------------
INSERT INTO `cs_cms_slide` VALUES (1, '第一张轮播图', '/uploads/attachment/20191225/ad4c392858e60c40a2d245c1e2742992.jpg', 0, '', 0, 1, 100, 1, 1574135533, 1577264423, 0);
INSERT INTO `cs_cms_slide` VALUES (2, '第二章轮播图', '/uploads/attachment/20191225/5f54466c5064b3085c361b8e7463348d.jpg', 1, 'Shop-ShopInfo-5', 0, 1, 100, 1, 1574135627, 1578116774, 0);
INSERT INTO `cs_cms_slide` VALUES (3, '第三章轮播图', '/uploads/attachment/20191225/469308e43a439f03f1dc50f109501ac5.jpg', 2, '', 1, 1, 100, 1, 1574135654, 1578116765, 0);
INSERT INTO `cs_cms_slide` VALUES (4, '第四轮播图', '/uploads/attachment/20191225/f1b898b1e562e0c1f4a00a232de9f323.jpg', 2, '', 1, 1, 100, 1, 1574142785, 1578116770, 0);

-- ----------------------------
-- Table structure for cs_collection
-- ----------------------------
DROP TABLE IF EXISTS `cs_collection`;
CREATE TABLE `cs_collection`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `good_id` int(10) NOT NULL COMMENT '商品id',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1正常 0 丢失状态 ',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `is_cancel` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cs_collection
-- ----------------------------
INSERT INTO `cs_collection` VALUES (1, 1, 6, 1, 1577261291, 0);
INSERT INTO `cs_collection` VALUES (3, 2, 6, 1, 1577261291, 1);
INSERT INTO `cs_collection` VALUES (2, 1, 5, 1, 1577261291, 1);
INSERT INTO `cs_collection` VALUES (7, 2, 5, 1, 1578040937, 0);

-- ----------------------------
-- Table structure for cs_distribution_setting
-- ----------------------------
DROP TABLE IF EXISTS `cs_distribution_setting`;
CREATE TABLE `cs_distribution_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_distribution` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '一级分销获得佣金',
  `second_distribution` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '二级分销获得佣金',
  `vip_price` decimal(10, 2) NULL DEFAULT NULL COMMENT 'vip价格',
  `rule` text CHARACTER SET utf16 COLLATE utf16_bin NULL COMMENT '邀请规则',
  `max_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '提现最大金额',
  `min_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '提现最小金额',
  `day_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '每日提现总金额',
  `level_rule` text CHARACTER SET utf16 COLLATE utf16_bin NULL COMMENT '等级规则',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_distribution_setting
-- ----------------------------
INSERT INTO `cs_distribution_setting` VALUES (1, 788.00, 288.00, 0.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cs_distribution_setting` VALUES (2, 0.00, 0.00, 0.00, '<p>初始注册级别为1级,每邀请一位好友后,可获得直推奖励{data}元.当您的好友也邀请他人后.您可后的{data2}的间接奖励,会员可获得直属下级和间接下级的分销返利</p><p><br/></p><p><br/></p><p>2级会员: 除会员所以权益外,享受更高分销返利</p><p><br/></p><p><br/></p><p>3级会员: 除会员所有权益外,享受比二级会员更高的分销返利&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, NULL, NULL, NULL);
INSERT INTO `cs_distribution_setting` VALUES (3, 0.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL);
INSERT INTO `cs_distribution_setting` VALUES (4, 0.00, 0.00, NULL, NULL, 200.00, 100.00, 500.00, '<p style=\"white-space: normal;\">初始注册级别为1级,每邀请一位好友后,可获得直推奖励{data}元.当您的好友也邀请他人后.您可后的{data2}的间接奖励,会员可获得直属下级和间接下级的分销返利</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">2级会员: 除会员所以权益外,享受更高分销返利</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">3级会员: 除会员所有权益外,享受比二级会员更高的分销返利&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/></p>');

-- ----------------------------
-- Table structure for cs_district
-- ----------------------------
DROP TABLE IF EXISTS `cs_district`;
CREATE TABLE `cs_district`  (
  `Id` int(11) NOT NULL,
  `Code` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `Name` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `CityCode` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_district
-- ----------------------------
INSERT INTO `cs_district` VALUES (1, '110101', '东城区', '110100');
INSERT INTO `cs_district` VALUES (2, '110102', '西城区', '110100');
INSERT INTO `cs_district` VALUES (3, '110103', '崇文区', '110100');
INSERT INTO `cs_district` VALUES (4, '110104', '宣武区', '110100');
INSERT INTO `cs_district` VALUES (5, '110105', '朝阳区', '110100');
INSERT INTO `cs_district` VALUES (6, '110106', '丰台区', '110100');
INSERT INTO `cs_district` VALUES (7, '110107', '石景山区', '110100');
INSERT INTO `cs_district` VALUES (8, '110108', '海淀区', '110100');
INSERT INTO `cs_district` VALUES (9, '110109', '门头沟区', '110100');
INSERT INTO `cs_district` VALUES (10, '110111', '房山区', '110100');
INSERT INTO `cs_district` VALUES (11, '110112', '通州区', '110100');
INSERT INTO `cs_district` VALUES (12, '110113', '顺义区', '110100');
INSERT INTO `cs_district` VALUES (13, '110114', '昌平区', '110100');
INSERT INTO `cs_district` VALUES (14, '110115', '大兴区', '110100');
INSERT INTO `cs_district` VALUES (15, '110116', '怀柔区', '110100');
INSERT INTO `cs_district` VALUES (16, '110117', '平谷区', '110100');
INSERT INTO `cs_district` VALUES (17, '110228', '密云县', '110200');
INSERT INTO `cs_district` VALUES (18, '110229', '延庆县', '110200');
INSERT INTO `cs_district` VALUES (19, '120101', '和平区', '120100');
INSERT INTO `cs_district` VALUES (20, '120102', '河东区', '120100');
INSERT INTO `cs_district` VALUES (21, '120103', '河西区', '120100');
INSERT INTO `cs_district` VALUES (22, '120104', '南开区', '120100');
INSERT INTO `cs_district` VALUES (23, '120105', '河北区', '120100');
INSERT INTO `cs_district` VALUES (24, '120106', '红桥区', '120100');
INSERT INTO `cs_district` VALUES (25, '120107', '塘沽区', '120100');
INSERT INTO `cs_district` VALUES (26, '120108', '汉沽区', '120100');
INSERT INTO `cs_district` VALUES (27, '120109', '大港区', '120100');
INSERT INTO `cs_district` VALUES (28, '120110', '东丽区', '120100');
INSERT INTO `cs_district` VALUES (29, '120111', '西青区', '120100');
INSERT INTO `cs_district` VALUES (30, '120112', '津南区', '120100');
INSERT INTO `cs_district` VALUES (31, '120113', '北辰区', '120100');
INSERT INTO `cs_district` VALUES (32, '120114', '武清区', '120100');
INSERT INTO `cs_district` VALUES (33, '120115', '宝坻区', '120100');
INSERT INTO `cs_district` VALUES (34, '120221', '宁河县', '120200');
INSERT INTO `cs_district` VALUES (35, '120223', '静海县', '120200');
INSERT INTO `cs_district` VALUES (36, '120225', '蓟　县', '120200');
INSERT INTO `cs_district` VALUES (37, '130101', '市辖区', '130100');
INSERT INTO `cs_district` VALUES (38, '130102', '长安区', '130100');
INSERT INTO `cs_district` VALUES (39, '130103', '桥东区', '130100');
INSERT INTO `cs_district` VALUES (40, '130104', '桥西区', '130100');
INSERT INTO `cs_district` VALUES (41, '130105', '新华区', '130100');
INSERT INTO `cs_district` VALUES (42, '130107', '井陉矿区', '130100');
INSERT INTO `cs_district` VALUES (43, '130108', '裕华区', '130100');
INSERT INTO `cs_district` VALUES (44, '130121', '井陉县', '130100');
INSERT INTO `cs_district` VALUES (45, '130123', '正定县', '130100');
INSERT INTO `cs_district` VALUES (46, '130124', '栾城县', '130100');
INSERT INTO `cs_district` VALUES (47, '130125', '行唐县', '130100');
INSERT INTO `cs_district` VALUES (48, '130126', '灵寿县', '130100');
INSERT INTO `cs_district` VALUES (49, '130127', '高邑县', '130100');
INSERT INTO `cs_district` VALUES (50, '130128', '深泽县', '130100');
INSERT INTO `cs_district` VALUES (51, '130129', '赞皇县', '130100');
INSERT INTO `cs_district` VALUES (52, '130130', '无极县', '130100');
INSERT INTO `cs_district` VALUES (53, '130131', '平山县', '130100');
INSERT INTO `cs_district` VALUES (54, '130132', '元氏县', '130100');
INSERT INTO `cs_district` VALUES (55, '130133', '赵　县', '130100');
INSERT INTO `cs_district` VALUES (56, '130181', '辛集市', '130100');
INSERT INTO `cs_district` VALUES (57, '130182', '藁城市', '130100');
INSERT INTO `cs_district` VALUES (58, '130183', '晋州市', '130100');
INSERT INTO `cs_district` VALUES (59, '130184', '新乐市', '130100');
INSERT INTO `cs_district` VALUES (60, '130185', '鹿泉市', '130100');
INSERT INTO `cs_district` VALUES (61, '130201', '市辖区', '130200');
INSERT INTO `cs_district` VALUES (62, '130202', '路南区', '130200');
INSERT INTO `cs_district` VALUES (63, '130203', '路北区', '130200');
INSERT INTO `cs_district` VALUES (64, '130204', '古冶区', '130200');
INSERT INTO `cs_district` VALUES (65, '130205', '开平区', '130200');
INSERT INTO `cs_district` VALUES (66, '130207', '丰南区', '130200');
INSERT INTO `cs_district` VALUES (67, '130208', '丰润区', '130200');
INSERT INTO `cs_district` VALUES (68, '130223', '滦　县', '130200');
INSERT INTO `cs_district` VALUES (69, '130224', '滦南县', '130200');
INSERT INTO `cs_district` VALUES (70, '130225', '乐亭县', '130200');
INSERT INTO `cs_district` VALUES (71, '130227', '迁西县', '130200');
INSERT INTO `cs_district` VALUES (72, '130229', '玉田县', '130200');
INSERT INTO `cs_district` VALUES (73, '130230', '唐海县', '130200');
INSERT INTO `cs_district` VALUES (74, '130281', '遵化市', '130200');
INSERT INTO `cs_district` VALUES (75, '130283', '迁安市', '130200');
INSERT INTO `cs_district` VALUES (76, '130301', '市辖区', '130300');
INSERT INTO `cs_district` VALUES (77, '130302', '海港区', '130300');
INSERT INTO `cs_district` VALUES (78, '130303', '山海关区', '130300');
INSERT INTO `cs_district` VALUES (79, '130304', '北戴河区', '130300');
INSERT INTO `cs_district` VALUES (80, '130321', '青龙满族自治县', '130300');
INSERT INTO `cs_district` VALUES (81, '130322', '昌黎县', '130300');
INSERT INTO `cs_district` VALUES (82, '130323', '抚宁县', '130300');
INSERT INTO `cs_district` VALUES (83, '130324', '卢龙县', '130300');
INSERT INTO `cs_district` VALUES (84, '130401', '市辖区', '130400');
INSERT INTO `cs_district` VALUES (85, '130402', '邯山区', '130400');
INSERT INTO `cs_district` VALUES (86, '130403', '丛台区', '130400');
INSERT INTO `cs_district` VALUES (87, '130404', '复兴区', '130400');
INSERT INTO `cs_district` VALUES (88, '130406', '峰峰矿区', '130400');
INSERT INTO `cs_district` VALUES (89, '130421', '邯郸县', '130400');
INSERT INTO `cs_district` VALUES (90, '130423', '临漳县', '130400');
INSERT INTO `cs_district` VALUES (91, '130424', '成安县', '130400');
INSERT INTO `cs_district` VALUES (92, '130425', '大名县', '130400');
INSERT INTO `cs_district` VALUES (93, '130426', '涉　县', '130400');
INSERT INTO `cs_district` VALUES (94, '130427', '磁　县', '130400');
INSERT INTO `cs_district` VALUES (95, '130428', '肥乡县', '130400');
INSERT INTO `cs_district` VALUES (96, '130429', '永年县', '130400');
INSERT INTO `cs_district` VALUES (97, '130430', '邱　县', '130400');
INSERT INTO `cs_district` VALUES (98, '130431', '鸡泽县', '130400');
INSERT INTO `cs_district` VALUES (99, '130432', '广平县', '130400');
INSERT INTO `cs_district` VALUES (100, '130433', '馆陶县', '130400');
INSERT INTO `cs_district` VALUES (101, '130434', '魏　县', '130400');
INSERT INTO `cs_district` VALUES (102, '130435', '曲周县', '130400');
INSERT INTO `cs_district` VALUES (103, '130481', '武安市', '130400');
INSERT INTO `cs_district` VALUES (104, '130501', '市辖区', '130500');
INSERT INTO `cs_district` VALUES (105, '130502', '桥东区', '130500');
INSERT INTO `cs_district` VALUES (106, '130503', '桥西区', '130500');
INSERT INTO `cs_district` VALUES (107, '130521', '邢台县', '130500');
INSERT INTO `cs_district` VALUES (108, '130522', '临城县', '130500');
INSERT INTO `cs_district` VALUES (109, '130523', '内丘县', '130500');
INSERT INTO `cs_district` VALUES (110, '130524', '柏乡县', '130500');
INSERT INTO `cs_district` VALUES (111, '130525', '隆尧县', '130500');
INSERT INTO `cs_district` VALUES (112, '130526', '任　县', '130500');
INSERT INTO `cs_district` VALUES (113, '130527', '南和县', '130500');
INSERT INTO `cs_district` VALUES (114, '130528', '宁晋县', '130500');
INSERT INTO `cs_district` VALUES (115, '130529', '巨鹿县', '130500');
INSERT INTO `cs_district` VALUES (116, '130530', '新河县', '130500');
INSERT INTO `cs_district` VALUES (117, '130531', '广宗县', '130500');
INSERT INTO `cs_district` VALUES (118, '130532', '平乡县', '130500');
INSERT INTO `cs_district` VALUES (119, '130533', '威　县', '130500');
INSERT INTO `cs_district` VALUES (120, '130534', '清河县', '130500');
INSERT INTO `cs_district` VALUES (121, '130535', '临西县', '130500');
INSERT INTO `cs_district` VALUES (122, '130581', '南宫市', '130500');
INSERT INTO `cs_district` VALUES (123, '130582', '沙河市', '130500');
INSERT INTO `cs_district` VALUES (124, '130601', '市辖区', '130600');
INSERT INTO `cs_district` VALUES (125, '130602', '新市区', '130600');
INSERT INTO `cs_district` VALUES (126, '130603', '北市区', '130600');
INSERT INTO `cs_district` VALUES (127, '130604', '南市区', '130600');
INSERT INTO `cs_district` VALUES (128, '130621', '满城县', '130600');
INSERT INTO `cs_district` VALUES (129, '130622', '清苑县', '130600');
INSERT INTO `cs_district` VALUES (130, '130623', '涞水县', '130600');
INSERT INTO `cs_district` VALUES (131, '130624', '阜平县', '130600');
INSERT INTO `cs_district` VALUES (132, '130625', '徐水县', '130600');
INSERT INTO `cs_district` VALUES (133, '130626', '定兴县', '130600');
INSERT INTO `cs_district` VALUES (134, '130627', '唐　县', '130600');
INSERT INTO `cs_district` VALUES (135, '130628', '高阳县', '130600');
INSERT INTO `cs_district` VALUES (136, '130629', '容城县', '130600');
INSERT INTO `cs_district` VALUES (137, '130630', '涞源县', '130600');
INSERT INTO `cs_district` VALUES (138, '130631', '望都县', '130600');
INSERT INTO `cs_district` VALUES (139, '130632', '安新县', '130600');
INSERT INTO `cs_district` VALUES (140, '130633', '易　县', '130600');
INSERT INTO `cs_district` VALUES (141, '130634', '曲阳县', '130600');
INSERT INTO `cs_district` VALUES (142, '130635', '蠡　县', '130600');
INSERT INTO `cs_district` VALUES (143, '130636', '顺平县', '130600');
INSERT INTO `cs_district` VALUES (144, '130637', '博野县', '130600');
INSERT INTO `cs_district` VALUES (145, '130638', '雄　县', '130600');
INSERT INTO `cs_district` VALUES (146, '130681', '涿州市', '130600');
INSERT INTO `cs_district` VALUES (147, '130682', '定州市', '130600');
INSERT INTO `cs_district` VALUES (148, '130683', '安国市', '130600');
INSERT INTO `cs_district` VALUES (149, '130684', '高碑店市', '130600');
INSERT INTO `cs_district` VALUES (150, '130701', '市辖区', '130700');
INSERT INTO `cs_district` VALUES (151, '130702', '桥东区', '130700');
INSERT INTO `cs_district` VALUES (152, '130703', '桥西区', '130700');
INSERT INTO `cs_district` VALUES (153, '130705', '宣化区', '130700');
INSERT INTO `cs_district` VALUES (154, '130706', '下花园区', '130700');
INSERT INTO `cs_district` VALUES (155, '130721', '宣化县', '130700');
INSERT INTO `cs_district` VALUES (156, '130722', '张北县', '130700');
INSERT INTO `cs_district` VALUES (157, '130723', '康保县', '130700');
INSERT INTO `cs_district` VALUES (158, '130724', '沽源县', '130700');
INSERT INTO `cs_district` VALUES (159, '130725', '尚义县', '130700');
INSERT INTO `cs_district` VALUES (160, '130726', '蔚　县', '130700');
INSERT INTO `cs_district` VALUES (161, '130727', '阳原县', '130700');
INSERT INTO `cs_district` VALUES (162, '130728', '怀安县', '130700');
INSERT INTO `cs_district` VALUES (163, '130729', '万全县', '130700');
INSERT INTO `cs_district` VALUES (164, '130730', '怀来县', '130700');
INSERT INTO `cs_district` VALUES (165, '130731', '涿鹿县', '130700');
INSERT INTO `cs_district` VALUES (166, '130732', '赤城县', '130700');
INSERT INTO `cs_district` VALUES (167, '130733', '崇礼县', '130700');
INSERT INTO `cs_district` VALUES (168, '130801', '市辖区', '130800');
INSERT INTO `cs_district` VALUES (169, '130802', '双桥区', '130800');
INSERT INTO `cs_district` VALUES (170, '130803', '双滦区', '130800');
INSERT INTO `cs_district` VALUES (171, '130804', '鹰手营子矿区', '130800');
INSERT INTO `cs_district` VALUES (172, '130821', '承德县', '130800');
INSERT INTO `cs_district` VALUES (173, '130822', '兴隆县', '130800');
INSERT INTO `cs_district` VALUES (174, '130823', '平泉县', '130800');
INSERT INTO `cs_district` VALUES (175, '130824', '滦平县', '130800');
INSERT INTO `cs_district` VALUES (176, '130825', '隆化县', '130800');
INSERT INTO `cs_district` VALUES (177, '130826', '丰宁满族自治县', '130800');
INSERT INTO `cs_district` VALUES (178, '130827', '宽城满族自治县', '130800');
INSERT INTO `cs_district` VALUES (179, '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `cs_district` VALUES (180, '130901', '市辖区', '130900');
INSERT INTO `cs_district` VALUES (181, '130902', '新华区', '130900');
INSERT INTO `cs_district` VALUES (182, '130903', '运河区', '130900');
INSERT INTO `cs_district` VALUES (183, '130921', '沧　县', '130900');
INSERT INTO `cs_district` VALUES (184, '130922', '青　县', '130900');
INSERT INTO `cs_district` VALUES (185, '130923', '东光县', '130900');
INSERT INTO `cs_district` VALUES (186, '130924', '海兴县', '130900');
INSERT INTO `cs_district` VALUES (187, '130925', '盐山县', '130900');
INSERT INTO `cs_district` VALUES (188, '130926', '肃宁县', '130900');
INSERT INTO `cs_district` VALUES (189, '130927', '南皮县', '130900');
INSERT INTO `cs_district` VALUES (190, '130928', '吴桥县', '130900');
INSERT INTO `cs_district` VALUES (191, '130929', '献　县', '130900');
INSERT INTO `cs_district` VALUES (192, '130930', '孟村回族自治县', '130900');
INSERT INTO `cs_district` VALUES (193, '130981', '泊头市', '130900');
INSERT INTO `cs_district` VALUES (194, '130982', '任丘市', '130900');
INSERT INTO `cs_district` VALUES (195, '130983', '黄骅市', '130900');
INSERT INTO `cs_district` VALUES (196, '130984', '河间市', '130900');
INSERT INTO `cs_district` VALUES (197, '131001', '市辖区', '131000');
INSERT INTO `cs_district` VALUES (198, '131002', '安次区', '131000');
INSERT INTO `cs_district` VALUES (199, '131003', '广阳区', '131000');
INSERT INTO `cs_district` VALUES (200, '131022', '固安县', '131000');
INSERT INTO `cs_district` VALUES (201, '131023', '永清县', '131000');
INSERT INTO `cs_district` VALUES (202, '131024', '香河县', '131000');
INSERT INTO `cs_district` VALUES (203, '131025', '大城县', '131000');
INSERT INTO `cs_district` VALUES (204, '131026', '文安县', '131000');
INSERT INTO `cs_district` VALUES (205, '131028', '大厂回族自治县', '131000');
INSERT INTO `cs_district` VALUES (206, '131081', '霸州市', '131000');
INSERT INTO `cs_district` VALUES (207, '131082', '三河市', '131000');
INSERT INTO `cs_district` VALUES (208, '131101', '市辖区', '131100');
INSERT INTO `cs_district` VALUES (209, '131102', '桃城区', '131100');
INSERT INTO `cs_district` VALUES (210, '131121', '枣强县', '131100');
INSERT INTO `cs_district` VALUES (211, '131122', '武邑县', '131100');
INSERT INTO `cs_district` VALUES (212, '131123', '武强县', '131100');
INSERT INTO `cs_district` VALUES (213, '131124', '饶阳县', '131100');
INSERT INTO `cs_district` VALUES (214, '131125', '安平县', '131100');
INSERT INTO `cs_district` VALUES (215, '131126', '故城县', '131100');
INSERT INTO `cs_district` VALUES (216, '131127', '景　县', '131100');
INSERT INTO `cs_district` VALUES (217, '131128', '阜城县', '131100');
INSERT INTO `cs_district` VALUES (218, '131181', '冀州市', '131100');
INSERT INTO `cs_district` VALUES (219, '131182', '深州市', '131100');
INSERT INTO `cs_district` VALUES (220, '140101', '市辖区', '140100');
INSERT INTO `cs_district` VALUES (221, '140105', '小店区', '140100');
INSERT INTO `cs_district` VALUES (222, '140106', '迎泽区', '140100');
INSERT INTO `cs_district` VALUES (223, '140107', '杏花岭区', '140100');
INSERT INTO `cs_district` VALUES (224, '140108', '尖草坪区', '140100');
INSERT INTO `cs_district` VALUES (225, '140109', '万柏林区', '140100');
INSERT INTO `cs_district` VALUES (226, '140110', '晋源区', '140100');
INSERT INTO `cs_district` VALUES (227, '140121', '清徐县', '140100');
INSERT INTO `cs_district` VALUES (228, '140122', '阳曲县', '140100');
INSERT INTO `cs_district` VALUES (229, '140123', '娄烦县', '140100');
INSERT INTO `cs_district` VALUES (230, '140181', '古交市', '140100');
INSERT INTO `cs_district` VALUES (231, '140201', '市辖区', '140200');
INSERT INTO `cs_district` VALUES (232, '140202', '城　区', '140200');
INSERT INTO `cs_district` VALUES (233, '140203', '矿　区', '140200');
INSERT INTO `cs_district` VALUES (234, '140211', '南郊区', '140200');
INSERT INTO `cs_district` VALUES (235, '140212', '新荣区', '140200');
INSERT INTO `cs_district` VALUES (236, '140221', '阳高县', '140200');
INSERT INTO `cs_district` VALUES (237, '140222', '天镇县', '140200');
INSERT INTO `cs_district` VALUES (238, '140223', '广灵县', '140200');
INSERT INTO `cs_district` VALUES (239, '140224', '灵丘县', '140200');
INSERT INTO `cs_district` VALUES (240, '140225', '浑源县', '140200');
INSERT INTO `cs_district` VALUES (241, '140226', '左云县', '140200');
INSERT INTO `cs_district` VALUES (242, '140227', '大同县', '140200');
INSERT INTO `cs_district` VALUES (243, '140301', '市辖区', '140300');
INSERT INTO `cs_district` VALUES (244, '140302', '城　区', '140300');
INSERT INTO `cs_district` VALUES (245, '140303', '矿　区', '140300');
INSERT INTO `cs_district` VALUES (246, '140311', '郊　区', '140300');
INSERT INTO `cs_district` VALUES (247, '140321', '平定县', '140300');
INSERT INTO `cs_district` VALUES (248, '140322', '盂　县', '140300');
INSERT INTO `cs_district` VALUES (249, '140401', '市辖区', '140400');
INSERT INTO `cs_district` VALUES (250, '140402', '城　区', '140400');
INSERT INTO `cs_district` VALUES (251, '140411', '郊　区', '140400');
INSERT INTO `cs_district` VALUES (252, '140421', '长治县', '140400');
INSERT INTO `cs_district` VALUES (253, '140423', '襄垣县', '140400');
INSERT INTO `cs_district` VALUES (254, '140424', '屯留县', '140400');
INSERT INTO `cs_district` VALUES (255, '140425', '平顺县', '140400');
INSERT INTO `cs_district` VALUES (256, '140426', '黎城县', '140400');
INSERT INTO `cs_district` VALUES (257, '140427', '壶关县', '140400');
INSERT INTO `cs_district` VALUES (258, '140428', '长子县', '140400');
INSERT INTO `cs_district` VALUES (259, '140429', '武乡县', '140400');
INSERT INTO `cs_district` VALUES (260, '140430', '沁　县', '140400');
INSERT INTO `cs_district` VALUES (261, '140431', '沁源县', '140400');
INSERT INTO `cs_district` VALUES (262, '140481', '潞城市', '140400');
INSERT INTO `cs_district` VALUES (263, '140501', '市辖区', '140500');
INSERT INTO `cs_district` VALUES (264, '140502', '城　区', '140500');
INSERT INTO `cs_district` VALUES (265, '140521', '沁水县', '140500');
INSERT INTO `cs_district` VALUES (266, '140522', '阳城县', '140500');
INSERT INTO `cs_district` VALUES (267, '140524', '陵川县', '140500');
INSERT INTO `cs_district` VALUES (268, '140525', '泽州县', '140500');
INSERT INTO `cs_district` VALUES (269, '140581', '高平市', '140500');
INSERT INTO `cs_district` VALUES (270, '140601', '市辖区', '140600');
INSERT INTO `cs_district` VALUES (271, '140602', '朔城区', '140600');
INSERT INTO `cs_district` VALUES (272, '140603', '平鲁区', '140600');
INSERT INTO `cs_district` VALUES (273, '140621', '山阴县', '140600');
INSERT INTO `cs_district` VALUES (274, '140622', '应　县', '140600');
INSERT INTO `cs_district` VALUES (275, '140623', '右玉县', '140600');
INSERT INTO `cs_district` VALUES (276, '140624', '怀仁县', '140600');
INSERT INTO `cs_district` VALUES (277, '140701', '市辖区', '140700');
INSERT INTO `cs_district` VALUES (278, '140702', '榆次区', '140700');
INSERT INTO `cs_district` VALUES (279, '140721', '榆社县', '140700');
INSERT INTO `cs_district` VALUES (280, '140722', '左权县', '140700');
INSERT INTO `cs_district` VALUES (281, '140723', '和顺县', '140700');
INSERT INTO `cs_district` VALUES (282, '140724', '昔阳县', '140700');
INSERT INTO `cs_district` VALUES (283, '140725', '寿阳县', '140700');
INSERT INTO `cs_district` VALUES (284, '140726', '太谷县', '140700');
INSERT INTO `cs_district` VALUES (285, '140727', '祁　县', '140700');
INSERT INTO `cs_district` VALUES (286, '140728', '平遥县', '140700');
INSERT INTO `cs_district` VALUES (287, '140729', '灵石县', '140700');
INSERT INTO `cs_district` VALUES (288, '140781', '介休市', '140700');
INSERT INTO `cs_district` VALUES (289, '140801', '市辖区', '140800');
INSERT INTO `cs_district` VALUES (290, '140802', '盐湖区', '140800');
INSERT INTO `cs_district` VALUES (291, '140821', '临猗县', '140800');
INSERT INTO `cs_district` VALUES (292, '140822', '万荣县', '140800');
INSERT INTO `cs_district` VALUES (293, '140823', '闻喜县', '140800');
INSERT INTO `cs_district` VALUES (294, '140824', '稷山县', '140800');
INSERT INTO `cs_district` VALUES (295, '140825', '新绛县', '140800');
INSERT INTO `cs_district` VALUES (296, '140826', '绛　县', '140800');
INSERT INTO `cs_district` VALUES (297, '140827', '垣曲县', '140800');
INSERT INTO `cs_district` VALUES (298, '140828', '夏　县', '140800');
INSERT INTO `cs_district` VALUES (299, '140829', '平陆县', '140800');
INSERT INTO `cs_district` VALUES (300, '140830', '芮城县', '140800');
INSERT INTO `cs_district` VALUES (301, '140881', '永济市', '140800');
INSERT INTO `cs_district` VALUES (302, '140882', '河津市', '140800');
INSERT INTO `cs_district` VALUES (303, '140901', '市辖区', '140900');
INSERT INTO `cs_district` VALUES (304, '140902', '忻府区', '140900');
INSERT INTO `cs_district` VALUES (305, '140921', '定襄县', '140900');
INSERT INTO `cs_district` VALUES (306, '140922', '五台县', '140900');
INSERT INTO `cs_district` VALUES (307, '140923', '代　县', '140900');
INSERT INTO `cs_district` VALUES (308, '140924', '繁峙县', '140900');
INSERT INTO `cs_district` VALUES (309, '140925', '宁武县', '140900');
INSERT INTO `cs_district` VALUES (310, '140926', '静乐县', '140900');
INSERT INTO `cs_district` VALUES (311, '140927', '神池县', '140900');
INSERT INTO `cs_district` VALUES (312, '140928', '五寨县', '140900');
INSERT INTO `cs_district` VALUES (313, '140929', '岢岚县', '140900');
INSERT INTO `cs_district` VALUES (314, '140930', '河曲县', '140900');
INSERT INTO `cs_district` VALUES (315, '140931', '保德县', '140900');
INSERT INTO `cs_district` VALUES (316, '140932', '偏关县', '140900');
INSERT INTO `cs_district` VALUES (317, '140981', '原平市', '140900');
INSERT INTO `cs_district` VALUES (318, '141001', '市辖区', '141000');
INSERT INTO `cs_district` VALUES (319, '141002', '尧都区', '141000');
INSERT INTO `cs_district` VALUES (320, '141021', '曲沃县', '141000');
INSERT INTO `cs_district` VALUES (321, '141022', '翼城县', '141000');
INSERT INTO `cs_district` VALUES (322, '141023', '襄汾县', '141000');
INSERT INTO `cs_district` VALUES (323, '141024', '洪洞县', '141000');
INSERT INTO `cs_district` VALUES (324, '141025', '古　县', '141000');
INSERT INTO `cs_district` VALUES (325, '141026', '安泽县', '141000');
INSERT INTO `cs_district` VALUES (326, '141027', '浮山县', '141000');
INSERT INTO `cs_district` VALUES (327, '141028', '吉　县', '141000');
INSERT INTO `cs_district` VALUES (328, '141029', '乡宁县', '141000');
INSERT INTO `cs_district` VALUES (329, '141030', '大宁县', '141000');
INSERT INTO `cs_district` VALUES (330, '141031', '隰　县', '141000');
INSERT INTO `cs_district` VALUES (331, '141032', '永和县', '141000');
INSERT INTO `cs_district` VALUES (332, '141033', '蒲　县', '141000');
INSERT INTO `cs_district` VALUES (333, '141034', '汾西县', '141000');
INSERT INTO `cs_district` VALUES (334, '141081', '侯马市', '141000');
INSERT INTO `cs_district` VALUES (335, '141082', '霍州市', '141000');
INSERT INTO `cs_district` VALUES (336, '141101', '市辖区', '141100');
INSERT INTO `cs_district` VALUES (337, '141102', '离石区', '141100');
INSERT INTO `cs_district` VALUES (338, '141121', '文水县', '141100');
INSERT INTO `cs_district` VALUES (339, '141122', '交城县', '141100');
INSERT INTO `cs_district` VALUES (340, '141123', '兴　县', '141100');
INSERT INTO `cs_district` VALUES (341, '141124', '临　县', '141100');
INSERT INTO `cs_district` VALUES (342, '141125', '柳林县', '141100');
INSERT INTO `cs_district` VALUES (343, '141126', '石楼县', '141100');
INSERT INTO `cs_district` VALUES (344, '141127', '岚　县', '141100');
INSERT INTO `cs_district` VALUES (345, '141128', '方山县', '141100');
INSERT INTO `cs_district` VALUES (346, '141129', '中阳县', '141100');
INSERT INTO `cs_district` VALUES (347, '141130', '交口县', '141100');
INSERT INTO `cs_district` VALUES (348, '141181', '孝义市', '141100');
INSERT INTO `cs_district` VALUES (349, '141182', '汾阳市', '141100');
INSERT INTO `cs_district` VALUES (350, '150101', '市辖区', '150100');
INSERT INTO `cs_district` VALUES (351, '150102', '新城区', '150100');
INSERT INTO `cs_district` VALUES (352, '150103', '回民区', '150100');
INSERT INTO `cs_district` VALUES (353, '150104', '玉泉区', '150100');
INSERT INTO `cs_district` VALUES (354, '150105', '赛罕区', '150100');
INSERT INTO `cs_district` VALUES (355, '150121', '土默特左旗', '150100');
INSERT INTO `cs_district` VALUES (356, '150122', '托克托县', '150100');
INSERT INTO `cs_district` VALUES (357, '150123', '和林格尔县', '150100');
INSERT INTO `cs_district` VALUES (358, '150124', '清水河县', '150100');
INSERT INTO `cs_district` VALUES (359, '150125', '武川县', '150100');
INSERT INTO `cs_district` VALUES (360, '150201', '市辖区', '150200');
INSERT INTO `cs_district` VALUES (361, '150202', '东河区', '150200');
INSERT INTO `cs_district` VALUES (362, '150203', '昆都仑区', '150200');
INSERT INTO `cs_district` VALUES (363, '150204', '青山区', '150200');
INSERT INTO `cs_district` VALUES (364, '150205', '石拐区', '150200');
INSERT INTO `cs_district` VALUES (365, '150206', '白云矿区', '150200');
INSERT INTO `cs_district` VALUES (366, '150207', '九原区', '150200');
INSERT INTO `cs_district` VALUES (367, '150221', '土默特右旗', '150200');
INSERT INTO `cs_district` VALUES (368, '150222', '固阳县', '150200');
INSERT INTO `cs_district` VALUES (369, '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `cs_district` VALUES (370, '150301', '市辖区', '150300');
INSERT INTO `cs_district` VALUES (371, '150302', '海勃湾区', '150300');
INSERT INTO `cs_district` VALUES (372, '150303', '海南区', '150300');
INSERT INTO `cs_district` VALUES (373, '150304', '乌达区', '150300');
INSERT INTO `cs_district` VALUES (374, '150401', '市辖区', '150400');
INSERT INTO `cs_district` VALUES (375, '150402', '红山区', '150400');
INSERT INTO `cs_district` VALUES (376, '150403', '元宝山区', '150400');
INSERT INTO `cs_district` VALUES (377, '150404', '松山区', '150400');
INSERT INTO `cs_district` VALUES (378, '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `cs_district` VALUES (379, '150422', '巴林左旗', '150400');
INSERT INTO `cs_district` VALUES (380, '150423', '巴林右旗', '150400');
INSERT INTO `cs_district` VALUES (381, '150424', '林西县', '150400');
INSERT INTO `cs_district` VALUES (382, '150425', '克什克腾旗', '150400');
INSERT INTO `cs_district` VALUES (383, '150426', '翁牛特旗', '150400');
INSERT INTO `cs_district` VALUES (384, '150428', '喀喇沁旗', '150400');
INSERT INTO `cs_district` VALUES (385, '150429', '宁城县', '150400');
INSERT INTO `cs_district` VALUES (386, '150430', '敖汉旗', '150400');
INSERT INTO `cs_district` VALUES (387, '150501', '市辖区', '150500');
INSERT INTO `cs_district` VALUES (388, '150502', '科尔沁区', '150500');
INSERT INTO `cs_district` VALUES (389, '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `cs_district` VALUES (390, '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `cs_district` VALUES (391, '150523', '开鲁县', '150500');
INSERT INTO `cs_district` VALUES (392, '150524', '库伦旗', '150500');
INSERT INTO `cs_district` VALUES (393, '150525', '奈曼旗', '150500');
INSERT INTO `cs_district` VALUES (394, '150526', '扎鲁特旗', '150500');
INSERT INTO `cs_district` VALUES (395, '150581', '霍林郭勒市', '150500');
INSERT INTO `cs_district` VALUES (396, '150602', '东胜区', '150600');
INSERT INTO `cs_district` VALUES (397, '150621', '达拉特旗', '150600');
INSERT INTO `cs_district` VALUES (398, '150622', '准格尔旗', '150600');
INSERT INTO `cs_district` VALUES (399, '150623', '鄂托克前旗', '150600');
INSERT INTO `cs_district` VALUES (400, '150624', '鄂托克旗', '150600');
INSERT INTO `cs_district` VALUES (401, '150625', '杭锦旗', '150600');
INSERT INTO `cs_district` VALUES (402, '150626', '乌审旗', '150600');
INSERT INTO `cs_district` VALUES (403, '150627', '伊金霍洛旗', '150600');
INSERT INTO `cs_district` VALUES (404, '150701', '市辖区', '150700');
INSERT INTO `cs_district` VALUES (405, '150702', '海拉尔区', '150700');
INSERT INTO `cs_district` VALUES (406, '150721', '阿荣旗', '150700');
INSERT INTO `cs_district` VALUES (407, '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `cs_district` VALUES (408, '150723', '鄂伦春自治旗', '150700');
INSERT INTO `cs_district` VALUES (409, '150724', '鄂温克族自治旗', '150700');
INSERT INTO `cs_district` VALUES (410, '150725', '陈巴尔虎旗', '150700');
INSERT INTO `cs_district` VALUES (411, '150726', '新巴尔虎左旗', '150700');
INSERT INTO `cs_district` VALUES (412, '150727', '新巴尔虎右旗', '150700');
INSERT INTO `cs_district` VALUES (413, '150781', '满洲里市', '150700');
INSERT INTO `cs_district` VALUES (414, '150782', '牙克石市', '150700');
INSERT INTO `cs_district` VALUES (415, '150783', '扎兰屯市', '150700');
INSERT INTO `cs_district` VALUES (416, '150784', '额尔古纳市', '150700');
INSERT INTO `cs_district` VALUES (417, '150785', '根河市', '150700');
INSERT INTO `cs_district` VALUES (418, '150801', '市辖区', '150800');
INSERT INTO `cs_district` VALUES (419, '150802', '临河区', '150800');
INSERT INTO `cs_district` VALUES (420, '150821', '五原县', '150800');
INSERT INTO `cs_district` VALUES (421, '150822', '磴口县', '150800');
INSERT INTO `cs_district` VALUES (422, '150823', '乌拉特前旗', '150800');
INSERT INTO `cs_district` VALUES (423, '150824', '乌拉特中旗', '150800');
INSERT INTO `cs_district` VALUES (424, '150825', '乌拉特后旗', '150800');
INSERT INTO `cs_district` VALUES (425, '150826', '杭锦后旗', '150800');
INSERT INTO `cs_district` VALUES (426, '150901', '市辖区', '150900');
INSERT INTO `cs_district` VALUES (427, '150902', '集宁区', '150900');
INSERT INTO `cs_district` VALUES (428, '150921', '卓资县', '150900');
INSERT INTO `cs_district` VALUES (429, '150922', '化德县', '150900');
INSERT INTO `cs_district` VALUES (430, '150923', '商都县', '150900');
INSERT INTO `cs_district` VALUES (431, '150924', '兴和县', '150900');
INSERT INTO `cs_district` VALUES (432, '150925', '凉城县', '150900');
INSERT INTO `cs_district` VALUES (433, '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `cs_district` VALUES (434, '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `cs_district` VALUES (435, '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `cs_district` VALUES (436, '150929', '四子王旗', '150900');
INSERT INTO `cs_district` VALUES (437, '150981', '丰镇市', '150900');
INSERT INTO `cs_district` VALUES (438, '152201', '乌兰浩特市', '152200');
INSERT INTO `cs_district` VALUES (439, '152202', '阿尔山市', '152200');
INSERT INTO `cs_district` VALUES (440, '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `cs_district` VALUES (441, '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `cs_district` VALUES (442, '152223', '扎赉特旗', '152200');
INSERT INTO `cs_district` VALUES (443, '152224', '突泉县', '152200');
INSERT INTO `cs_district` VALUES (444, '152501', '二连浩特市', '152500');
INSERT INTO `cs_district` VALUES (445, '152502', '锡林浩特市', '152500');
INSERT INTO `cs_district` VALUES (446, '152522', '阿巴嘎旗', '152500');
INSERT INTO `cs_district` VALUES (447, '152523', '苏尼特左旗', '152500');
INSERT INTO `cs_district` VALUES (448, '152524', '苏尼特右旗', '152500');
INSERT INTO `cs_district` VALUES (449, '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `cs_district` VALUES (450, '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `cs_district` VALUES (451, '152527', '太仆寺旗', '152500');
INSERT INTO `cs_district` VALUES (452, '152528', '镶黄旗', '152500');
INSERT INTO `cs_district` VALUES (453, '152529', '正镶白旗', '152500');
INSERT INTO `cs_district` VALUES (454, '152530', '正蓝旗', '152500');
INSERT INTO `cs_district` VALUES (455, '152531', '多伦县', '152500');
INSERT INTO `cs_district` VALUES (456, '152921', '阿拉善左旗', '152900');
INSERT INTO `cs_district` VALUES (457, '152922', '阿拉善右旗', '152900');
INSERT INTO `cs_district` VALUES (458, '152923', '额济纳旗', '152900');
INSERT INTO `cs_district` VALUES (459, '210101', '市辖区', '210100');
INSERT INTO `cs_district` VALUES (460, '210102', '和平区', '210100');
INSERT INTO `cs_district` VALUES (461, '210103', '沈河区', '210100');
INSERT INTO `cs_district` VALUES (462, '210104', '大东区', '210100');
INSERT INTO `cs_district` VALUES (463, '210105', '皇姑区', '210100');
INSERT INTO `cs_district` VALUES (464, '210106', '铁西区', '210100');
INSERT INTO `cs_district` VALUES (465, '210111', '苏家屯区', '210100');
INSERT INTO `cs_district` VALUES (466, '210112', '东陵区', '210100');
INSERT INTO `cs_district` VALUES (467, '210113', '新城子区', '210100');
INSERT INTO `cs_district` VALUES (468, '210114', '于洪区', '210100');
INSERT INTO `cs_district` VALUES (469, '210122', '辽中县', '210100');
INSERT INTO `cs_district` VALUES (470, '210123', '康平县', '210100');
INSERT INTO `cs_district` VALUES (471, '210124', '法库县', '210100');
INSERT INTO `cs_district` VALUES (472, '210181', '新民市', '210100');
INSERT INTO `cs_district` VALUES (473, '210201', '市辖区', '210200');
INSERT INTO `cs_district` VALUES (474, '210202', '中山区', '210200');
INSERT INTO `cs_district` VALUES (475, '210203', '西岗区', '210200');
INSERT INTO `cs_district` VALUES (476, '210204', '沙河口区', '210200');
INSERT INTO `cs_district` VALUES (477, '210211', '甘井子区', '210200');
INSERT INTO `cs_district` VALUES (478, '210212', '旅顺口区', '210200');
INSERT INTO `cs_district` VALUES (479, '210213', '金州区', '210200');
INSERT INTO `cs_district` VALUES (480, '210224', '长海县', '210200');
INSERT INTO `cs_district` VALUES (481, '210281', '瓦房店市', '210200');
INSERT INTO `cs_district` VALUES (482, '210282', '普兰店市', '210200');
INSERT INTO `cs_district` VALUES (483, '210283', '庄河市', '210200');
INSERT INTO `cs_district` VALUES (484, '210301', '市辖区', '210300');
INSERT INTO `cs_district` VALUES (485, '210302', '铁东区', '210300');
INSERT INTO `cs_district` VALUES (486, '210303', '铁西区', '210300');
INSERT INTO `cs_district` VALUES (487, '210304', '立山区', '210300');
INSERT INTO `cs_district` VALUES (488, '210311', '千山区', '210300');
INSERT INTO `cs_district` VALUES (489, '210321', '台安县', '210300');
INSERT INTO `cs_district` VALUES (490, '210323', '岫岩满族自治县', '210300');
INSERT INTO `cs_district` VALUES (491, '210381', '海城市', '210300');
INSERT INTO `cs_district` VALUES (492, '210401', '市辖区', '210400');
INSERT INTO `cs_district` VALUES (493, '210402', '新抚区', '210400');
INSERT INTO `cs_district` VALUES (494, '210403', '东洲区', '210400');
INSERT INTO `cs_district` VALUES (495, '210404', '望花区', '210400');
INSERT INTO `cs_district` VALUES (496, '210411', '顺城区', '210400');
INSERT INTO `cs_district` VALUES (497, '210421', '抚顺县', '210400');
INSERT INTO `cs_district` VALUES (498, '210422', '新宾满族自治县', '210400');
INSERT INTO `cs_district` VALUES (499, '210423', '清原满族自治县', '210400');
INSERT INTO `cs_district` VALUES (500, '210501', '市辖区', '210500');
INSERT INTO `cs_district` VALUES (501, '210502', '平山区', '210500');
INSERT INTO `cs_district` VALUES (502, '210503', '溪湖区', '210500');
INSERT INTO `cs_district` VALUES (503, '210504', '明山区', '210500');
INSERT INTO `cs_district` VALUES (504, '210505', '南芬区', '210500');
INSERT INTO `cs_district` VALUES (505, '210521', '本溪满族自治县', '210500');
INSERT INTO `cs_district` VALUES (506, '210522', '桓仁满族自治县', '210500');
INSERT INTO `cs_district` VALUES (507, '210601', '市辖区', '210600');
INSERT INTO `cs_district` VALUES (508, '210602', '元宝区', '210600');
INSERT INTO `cs_district` VALUES (509, '210603', '振兴区', '210600');
INSERT INTO `cs_district` VALUES (510, '210604', '振安区', '210600');
INSERT INTO `cs_district` VALUES (511, '210624', '宽甸满族自治县', '210600');
INSERT INTO `cs_district` VALUES (512, '210681', '东港市', '210600');
INSERT INTO `cs_district` VALUES (513, '210682', '凤城市', '210600');
INSERT INTO `cs_district` VALUES (514, '210701', '市辖区', '210700');
INSERT INTO `cs_district` VALUES (515, '210702', '古塔区', '210700');
INSERT INTO `cs_district` VALUES (516, '210703', '凌河区', '210700');
INSERT INTO `cs_district` VALUES (517, '210711', '太和区', '210700');
INSERT INTO `cs_district` VALUES (518, '210726', '黑山县', '210700');
INSERT INTO `cs_district` VALUES (519, '210727', '义　县', '210700');
INSERT INTO `cs_district` VALUES (520, '210781', '凌海市', '210700');
INSERT INTO `cs_district` VALUES (521, '210782', '北宁市', '210700');
INSERT INTO `cs_district` VALUES (522, '210801', '市辖区', '210800');
INSERT INTO `cs_district` VALUES (523, '210802', '站前区', '210800');
INSERT INTO `cs_district` VALUES (524, '210803', '西市区', '210800');
INSERT INTO `cs_district` VALUES (525, '210804', '鲅鱼圈区', '210800');
INSERT INTO `cs_district` VALUES (526, '210811', '老边区', '210800');
INSERT INTO `cs_district` VALUES (527, '210881', '盖州市', '210800');
INSERT INTO `cs_district` VALUES (528, '210882', '大石桥市', '210800');
INSERT INTO `cs_district` VALUES (529, '210901', '市辖区', '210900');
INSERT INTO `cs_district` VALUES (530, '210902', '海州区', '210900');
INSERT INTO `cs_district` VALUES (531, '210903', '新邱区', '210900');
INSERT INTO `cs_district` VALUES (532, '210904', '太平区', '210900');
INSERT INTO `cs_district` VALUES (533, '210905', '清河门区', '210900');
INSERT INTO `cs_district` VALUES (534, '210911', '细河区', '210900');
INSERT INTO `cs_district` VALUES (535, '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `cs_district` VALUES (536, '210922', '彰武县', '210900');
INSERT INTO `cs_district` VALUES (537, '211001', '市辖区', '211000');
INSERT INTO `cs_district` VALUES (538, '211002', '白塔区', '211000');
INSERT INTO `cs_district` VALUES (539, '211003', '文圣区', '211000');
INSERT INTO `cs_district` VALUES (540, '211004', '宏伟区', '211000');
INSERT INTO `cs_district` VALUES (541, '211005', '弓长岭区', '211000');
INSERT INTO `cs_district` VALUES (542, '211011', '太子河区', '211000');
INSERT INTO `cs_district` VALUES (543, '211021', '辽阳县', '211000');
INSERT INTO `cs_district` VALUES (544, '211081', '灯塔市', '211000');
INSERT INTO `cs_district` VALUES (545, '211101', '市辖区', '211100');
INSERT INTO `cs_district` VALUES (546, '211102', '双台子区', '211100');
INSERT INTO `cs_district` VALUES (547, '211103', '兴隆台区', '211100');
INSERT INTO `cs_district` VALUES (548, '211121', '大洼县', '211100');
INSERT INTO `cs_district` VALUES (549, '211122', '盘山县', '211100');
INSERT INTO `cs_district` VALUES (550, '211201', '市辖区', '211200');
INSERT INTO `cs_district` VALUES (551, '211202', '银州区', '211200');
INSERT INTO `cs_district` VALUES (552, '211204', '清河区', '211200');
INSERT INTO `cs_district` VALUES (553, '211221', '铁岭县', '211200');
INSERT INTO `cs_district` VALUES (554, '211223', '西丰县', '211200');
INSERT INTO `cs_district` VALUES (555, '211224', '昌图县', '211200');
INSERT INTO `cs_district` VALUES (556, '211281', '调兵山市', '211200');
INSERT INTO `cs_district` VALUES (557, '211282', '开原市', '211200');
INSERT INTO `cs_district` VALUES (558, '211301', '市辖区', '211300');
INSERT INTO `cs_district` VALUES (559, '211302', '双塔区', '211300');
INSERT INTO `cs_district` VALUES (560, '211303', '龙城区', '211300');
INSERT INTO `cs_district` VALUES (561, '211321', '朝阳县', '211300');
INSERT INTO `cs_district` VALUES (562, '211322', '建平县', '211300');
INSERT INTO `cs_district` VALUES (563, '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `cs_district` VALUES (564, '211381', '北票市', '211300');
INSERT INTO `cs_district` VALUES (565, '211382', '凌源市', '211300');
INSERT INTO `cs_district` VALUES (566, '211401', '市辖区', '211400');
INSERT INTO `cs_district` VALUES (567, '211402', '连山区', '211400');
INSERT INTO `cs_district` VALUES (568, '211403', '龙港区', '211400');
INSERT INTO `cs_district` VALUES (569, '211404', '南票区', '211400');
INSERT INTO `cs_district` VALUES (570, '211421', '绥中县', '211400');
INSERT INTO `cs_district` VALUES (571, '211422', '建昌县', '211400');
INSERT INTO `cs_district` VALUES (572, '211481', '兴城市', '211400');
INSERT INTO `cs_district` VALUES (573, '220101', '市辖区', '220100');
INSERT INTO `cs_district` VALUES (574, '220102', '南关区', '220100');
INSERT INTO `cs_district` VALUES (575, '220103', '宽城区', '220100');
INSERT INTO `cs_district` VALUES (576, '220104', '朝阳区', '220100');
INSERT INTO `cs_district` VALUES (577, '220105', '二道区', '220100');
INSERT INTO `cs_district` VALUES (578, '220106', '绿园区', '220100');
INSERT INTO `cs_district` VALUES (579, '220112', '双阳区', '220100');
INSERT INTO `cs_district` VALUES (580, '220122', '农安县', '220100');
INSERT INTO `cs_district` VALUES (581, '220181', '九台市', '220100');
INSERT INTO `cs_district` VALUES (582, '220182', '榆树市', '220100');
INSERT INTO `cs_district` VALUES (583, '220183', '德惠市', '220100');
INSERT INTO `cs_district` VALUES (584, '220201', '市辖区', '220200');
INSERT INTO `cs_district` VALUES (585, '220202', '昌邑区', '220200');
INSERT INTO `cs_district` VALUES (586, '220203', '龙潭区', '220200');
INSERT INTO `cs_district` VALUES (587, '220204', '船营区', '220200');
INSERT INTO `cs_district` VALUES (588, '220211', '丰满区', '220200');
INSERT INTO `cs_district` VALUES (589, '220221', '永吉县', '220200');
INSERT INTO `cs_district` VALUES (590, '220281', '蛟河市', '220200');
INSERT INTO `cs_district` VALUES (591, '220282', '桦甸市', '220200');
INSERT INTO `cs_district` VALUES (592, '220283', '舒兰市', '220200');
INSERT INTO `cs_district` VALUES (593, '220284', '磐石市', '220200');
INSERT INTO `cs_district` VALUES (594, '220301', '市辖区', '220300');
INSERT INTO `cs_district` VALUES (595, '220302', '铁西区', '220300');
INSERT INTO `cs_district` VALUES (596, '220303', '铁东区', '220300');
INSERT INTO `cs_district` VALUES (597, '220322', '梨树县', '220300');
INSERT INTO `cs_district` VALUES (598, '220323', '伊通满族自治县', '220300');
INSERT INTO `cs_district` VALUES (599, '220381', '公主岭市', '220300');
INSERT INTO `cs_district` VALUES (600, '220382', '双辽市', '220300');
INSERT INTO `cs_district` VALUES (601, '220401', '市辖区', '220400');
INSERT INTO `cs_district` VALUES (602, '220402', '龙山区', '220400');
INSERT INTO `cs_district` VALUES (603, '220403', '西安区', '220400');
INSERT INTO `cs_district` VALUES (604, '220421', '东丰县', '220400');
INSERT INTO `cs_district` VALUES (605, '220422', '东辽县', '220400');
INSERT INTO `cs_district` VALUES (606, '220501', '市辖区', '220500');
INSERT INTO `cs_district` VALUES (607, '220502', '东昌区', '220500');
INSERT INTO `cs_district` VALUES (608, '220503', '二道江区', '220500');
INSERT INTO `cs_district` VALUES (609, '220521', '通化县', '220500');
INSERT INTO `cs_district` VALUES (610, '220523', '辉南县', '220500');
INSERT INTO `cs_district` VALUES (611, '220524', '柳河县', '220500');
INSERT INTO `cs_district` VALUES (612, '220581', '梅河口市', '220500');
INSERT INTO `cs_district` VALUES (613, '220582', '集安市', '220500');
INSERT INTO `cs_district` VALUES (614, '220601', '市辖区', '220600');
INSERT INTO `cs_district` VALUES (615, '220602', '八道江区', '220600');
INSERT INTO `cs_district` VALUES (616, '220621', '抚松县', '220600');
INSERT INTO `cs_district` VALUES (617, '220622', '靖宇县', '220600');
INSERT INTO `cs_district` VALUES (618, '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `cs_district` VALUES (619, '220625', '江源县', '220600');
INSERT INTO `cs_district` VALUES (620, '220681', '临江市', '220600');
INSERT INTO `cs_district` VALUES (621, '220701', '市辖区', '220700');
INSERT INTO `cs_district` VALUES (622, '220702', '宁江区', '220700');
INSERT INTO `cs_district` VALUES (623, '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `cs_district` VALUES (624, '220722', '长岭县', '220700');
INSERT INTO `cs_district` VALUES (625, '220723', '乾安县', '220700');
INSERT INTO `cs_district` VALUES (626, '220724', '扶余县', '220700');
INSERT INTO `cs_district` VALUES (627, '220801', '市辖区', '220800');
INSERT INTO `cs_district` VALUES (628, '220802', '洮北区', '220800');
INSERT INTO `cs_district` VALUES (629, '220821', '镇赉县', '220800');
INSERT INTO `cs_district` VALUES (630, '220822', '通榆县', '220800');
INSERT INTO `cs_district` VALUES (631, '220881', '洮南市', '220800');
INSERT INTO `cs_district` VALUES (632, '220882', '大安市', '220800');
INSERT INTO `cs_district` VALUES (633, '222401', '延吉市', '222400');
INSERT INTO `cs_district` VALUES (634, '222402', '图们市', '222400');
INSERT INTO `cs_district` VALUES (635, '222403', '敦化市', '222400');
INSERT INTO `cs_district` VALUES (636, '222404', '珲春市', '222400');
INSERT INTO `cs_district` VALUES (637, '222405', '龙井市', '222400');
INSERT INTO `cs_district` VALUES (638, '222406', '和龙市', '222400');
INSERT INTO `cs_district` VALUES (639, '222424', '汪清县', '222400');
INSERT INTO `cs_district` VALUES (640, '222426', '安图县', '222400');
INSERT INTO `cs_district` VALUES (641, '230101', '市辖区', '230100');
INSERT INTO `cs_district` VALUES (642, '230102', '道里区', '230100');
INSERT INTO `cs_district` VALUES (643, '230103', '南岗区', '230100');
INSERT INTO `cs_district` VALUES (644, '230104', '道外区', '230100');
INSERT INTO `cs_district` VALUES (645, '230106', '香坊区', '230100');
INSERT INTO `cs_district` VALUES (646, '230107', '动力区', '230100');
INSERT INTO `cs_district` VALUES (647, '230108', '平房区', '230100');
INSERT INTO `cs_district` VALUES (648, '230109', '松北区', '230100');
INSERT INTO `cs_district` VALUES (649, '230111', '呼兰区', '230100');
INSERT INTO `cs_district` VALUES (650, '230123', '依兰县', '230100');
INSERT INTO `cs_district` VALUES (651, '230124', '方正县', '230100');
INSERT INTO `cs_district` VALUES (652, '230125', '宾　县', '230100');
INSERT INTO `cs_district` VALUES (653, '230126', '巴彦县', '230100');
INSERT INTO `cs_district` VALUES (654, '230127', '木兰县', '230100');
INSERT INTO `cs_district` VALUES (655, '230128', '通河县', '230100');
INSERT INTO `cs_district` VALUES (656, '230129', '延寿县', '230100');
INSERT INTO `cs_district` VALUES (657, '230181', '阿城市', '230100');
INSERT INTO `cs_district` VALUES (658, '230182', '双城市', '230100');
INSERT INTO `cs_district` VALUES (659, '230183', '尚志市', '230100');
INSERT INTO `cs_district` VALUES (660, '230184', '五常市', '230100');
INSERT INTO `cs_district` VALUES (661, '230201', '市辖区', '230200');
INSERT INTO `cs_district` VALUES (662, '230202', '龙沙区', '230200');
INSERT INTO `cs_district` VALUES (663, '230203', '建华区', '230200');
INSERT INTO `cs_district` VALUES (664, '230204', '铁锋区', '230200');
INSERT INTO `cs_district` VALUES (665, '230205', '昂昂溪区', '230200');
INSERT INTO `cs_district` VALUES (666, '230206', '富拉尔基区', '230200');
INSERT INTO `cs_district` VALUES (667, '230207', '碾子山区', '230200');
INSERT INTO `cs_district` VALUES (668, '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `cs_district` VALUES (669, '230221', '龙江县', '230200');
INSERT INTO `cs_district` VALUES (670, '230223', '依安县', '230200');
INSERT INTO `cs_district` VALUES (671, '230224', '泰来县', '230200');
INSERT INTO `cs_district` VALUES (672, '230225', '甘南县', '230200');
INSERT INTO `cs_district` VALUES (673, '230227', '富裕县', '230200');
INSERT INTO `cs_district` VALUES (674, '230229', '克山县', '230200');
INSERT INTO `cs_district` VALUES (675, '230230', '克东县', '230200');
INSERT INTO `cs_district` VALUES (676, '230231', '拜泉县', '230200');
INSERT INTO `cs_district` VALUES (677, '230281', '讷河市', '230200');
INSERT INTO `cs_district` VALUES (678, '230301', '市辖区', '230300');
INSERT INTO `cs_district` VALUES (679, '230302', '鸡冠区', '230300');
INSERT INTO `cs_district` VALUES (680, '230303', '恒山区', '230300');
INSERT INTO `cs_district` VALUES (681, '230304', '滴道区', '230300');
INSERT INTO `cs_district` VALUES (682, '230305', '梨树区', '230300');
INSERT INTO `cs_district` VALUES (683, '230306', '城子河区', '230300');
INSERT INTO `cs_district` VALUES (684, '230307', '麻山区', '230300');
INSERT INTO `cs_district` VALUES (685, '230321', '鸡东县', '230300');
INSERT INTO `cs_district` VALUES (686, '230381', '虎林市', '230300');
INSERT INTO `cs_district` VALUES (687, '230382', '密山市', '230300');
INSERT INTO `cs_district` VALUES (688, '230401', '市辖区', '230400');
INSERT INTO `cs_district` VALUES (689, '230402', '向阳区', '230400');
INSERT INTO `cs_district` VALUES (690, '230403', '工农区', '230400');
INSERT INTO `cs_district` VALUES (691, '230404', '南山区', '230400');
INSERT INTO `cs_district` VALUES (692, '230405', '兴安区', '230400');
INSERT INTO `cs_district` VALUES (693, '230406', '东山区', '230400');
INSERT INTO `cs_district` VALUES (694, '230407', '兴山区', '230400');
INSERT INTO `cs_district` VALUES (695, '230421', '萝北县', '230400');
INSERT INTO `cs_district` VALUES (696, '230422', '绥滨县', '230400');
INSERT INTO `cs_district` VALUES (697, '230501', '市辖区', '230500');
INSERT INTO `cs_district` VALUES (698, '230502', '尖山区', '230500');
INSERT INTO `cs_district` VALUES (699, '230503', '岭东区', '230500');
INSERT INTO `cs_district` VALUES (700, '230505', '四方台区', '230500');
INSERT INTO `cs_district` VALUES (701, '230506', '宝山区', '230500');
INSERT INTO `cs_district` VALUES (702, '230521', '集贤县', '230500');
INSERT INTO `cs_district` VALUES (703, '230522', '友谊县', '230500');
INSERT INTO `cs_district` VALUES (704, '230523', '宝清县', '230500');
INSERT INTO `cs_district` VALUES (705, '230524', '饶河县', '230500');
INSERT INTO `cs_district` VALUES (706, '230601', '市辖区', '230600');
INSERT INTO `cs_district` VALUES (707, '230602', '萨尔图区', '230600');
INSERT INTO `cs_district` VALUES (708, '230603', '龙凤区', '230600');
INSERT INTO `cs_district` VALUES (709, '230604', '让胡路区', '230600');
INSERT INTO `cs_district` VALUES (710, '230605', '红岗区', '230600');
INSERT INTO `cs_district` VALUES (711, '230606', '大同区', '230600');
INSERT INTO `cs_district` VALUES (712, '230621', '肇州县', '230600');
INSERT INTO `cs_district` VALUES (713, '230622', '肇源县', '230600');
INSERT INTO `cs_district` VALUES (714, '230623', '林甸县', '230600');
INSERT INTO `cs_district` VALUES (715, '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `cs_district` VALUES (716, '230701', '市辖区', '230700');
INSERT INTO `cs_district` VALUES (717, '230702', '伊春区', '230700');
INSERT INTO `cs_district` VALUES (718, '230703', '南岔区', '230700');
INSERT INTO `cs_district` VALUES (719, '230704', '友好区', '230700');
INSERT INTO `cs_district` VALUES (720, '230705', '西林区', '230700');
INSERT INTO `cs_district` VALUES (721, '230706', '翠峦区', '230700');
INSERT INTO `cs_district` VALUES (722, '230707', '新青区', '230700');
INSERT INTO `cs_district` VALUES (723, '230708', '美溪区', '230700');
INSERT INTO `cs_district` VALUES (724, '230709', '金山屯区', '230700');
INSERT INTO `cs_district` VALUES (725, '230710', '五营区', '230700');
INSERT INTO `cs_district` VALUES (726, '230711', '乌马河区', '230700');
INSERT INTO `cs_district` VALUES (727, '230712', '汤旺河区', '230700');
INSERT INTO `cs_district` VALUES (728, '230713', '带岭区', '230700');
INSERT INTO `cs_district` VALUES (729, '230714', '乌伊岭区', '230700');
INSERT INTO `cs_district` VALUES (730, '230715', '红星区', '230700');
INSERT INTO `cs_district` VALUES (731, '230716', '上甘岭区', '230700');
INSERT INTO `cs_district` VALUES (732, '230722', '嘉荫县', '230700');
INSERT INTO `cs_district` VALUES (733, '230781', '铁力市', '230700');
INSERT INTO `cs_district` VALUES (734, '230801', '市辖区', '230800');
INSERT INTO `cs_district` VALUES (735, '230802', '永红区', '230800');
INSERT INTO `cs_district` VALUES (736, '230803', '向阳区', '230800');
INSERT INTO `cs_district` VALUES (737, '230804', '前进区', '230800');
INSERT INTO `cs_district` VALUES (738, '230805', '东风区', '230800');
INSERT INTO `cs_district` VALUES (739, '230811', '郊　区', '230800');
INSERT INTO `cs_district` VALUES (740, '230822', '桦南县', '230800');
INSERT INTO `cs_district` VALUES (741, '230826', '桦川县', '230800');
INSERT INTO `cs_district` VALUES (742, '230828', '汤原县', '230800');
INSERT INTO `cs_district` VALUES (743, '230833', '抚远县', '230800');
INSERT INTO `cs_district` VALUES (744, '230881', '同江市', '230800');
INSERT INTO `cs_district` VALUES (745, '230882', '富锦市', '230800');
INSERT INTO `cs_district` VALUES (746, '230901', '市辖区', '230900');
INSERT INTO `cs_district` VALUES (747, '230902', '新兴区', '230900');
INSERT INTO `cs_district` VALUES (748, '230903', '桃山区', '230900');
INSERT INTO `cs_district` VALUES (749, '230904', '茄子河区', '230900');
INSERT INTO `cs_district` VALUES (750, '230921', '勃利县', '230900');
INSERT INTO `cs_district` VALUES (751, '231001', '市辖区', '231000');
INSERT INTO `cs_district` VALUES (752, '231002', '东安区', '231000');
INSERT INTO `cs_district` VALUES (753, '231003', '阳明区', '231000');
INSERT INTO `cs_district` VALUES (754, '231004', '爱民区', '231000');
INSERT INTO `cs_district` VALUES (755, '231005', '西安区', '231000');
INSERT INTO `cs_district` VALUES (756, '231024', '东宁县', '231000');
INSERT INTO `cs_district` VALUES (757, '231025', '林口县', '231000');
INSERT INTO `cs_district` VALUES (758, '231081', '绥芬河市', '231000');
INSERT INTO `cs_district` VALUES (759, '231083', '海林市', '231000');
INSERT INTO `cs_district` VALUES (760, '231084', '宁安市', '231000');
INSERT INTO `cs_district` VALUES (761, '231085', '穆棱市', '231000');
INSERT INTO `cs_district` VALUES (762, '231101', '市辖区', '231100');
INSERT INTO `cs_district` VALUES (763, '231102', '爱辉区', '231100');
INSERT INTO `cs_district` VALUES (764, '231121', '嫩江县', '231100');
INSERT INTO `cs_district` VALUES (765, '231123', '逊克县', '231100');
INSERT INTO `cs_district` VALUES (766, '231124', '孙吴县', '231100');
INSERT INTO `cs_district` VALUES (767, '231181', '北安市', '231100');
INSERT INTO `cs_district` VALUES (768, '231182', '五大连池市', '231100');
INSERT INTO `cs_district` VALUES (769, '231201', '市辖区', '231200');
INSERT INTO `cs_district` VALUES (770, '231202', '北林区', '231200');
INSERT INTO `cs_district` VALUES (771, '231221', '望奎县', '231200');
INSERT INTO `cs_district` VALUES (772, '231222', '兰西县', '231200');
INSERT INTO `cs_district` VALUES (773, '231223', '青冈县', '231200');
INSERT INTO `cs_district` VALUES (774, '231224', '庆安县', '231200');
INSERT INTO `cs_district` VALUES (775, '231225', '明水县', '231200');
INSERT INTO `cs_district` VALUES (776, '231226', '绥棱县', '231200');
INSERT INTO `cs_district` VALUES (777, '231281', '安达市', '231200');
INSERT INTO `cs_district` VALUES (778, '231282', '肇东市', '231200');
INSERT INTO `cs_district` VALUES (779, '231283', '海伦市', '231200');
INSERT INTO `cs_district` VALUES (780, '232721', '呼玛县', '232700');
INSERT INTO `cs_district` VALUES (781, '232722', '塔河县', '232700');
INSERT INTO `cs_district` VALUES (782, '232723', '漠河县', '232700');
INSERT INTO `cs_district` VALUES (783, '310101', '黄浦区', '310100');
INSERT INTO `cs_district` VALUES (784, '310103', '卢湾区', '310100');
INSERT INTO `cs_district` VALUES (785, '310104', '徐汇区', '310100');
INSERT INTO `cs_district` VALUES (786, '310105', '长宁区', '310100');
INSERT INTO `cs_district` VALUES (787, '310106', '静安区', '310100');
INSERT INTO `cs_district` VALUES (788, '310107', '普陀区', '310100');
INSERT INTO `cs_district` VALUES (789, '310108', '闸北区', '310100');
INSERT INTO `cs_district` VALUES (790, '310109', '虹口区', '310100');
INSERT INTO `cs_district` VALUES (791, '310110', '杨浦区', '310100');
INSERT INTO `cs_district` VALUES (792, '310112', '闵行区', '310100');
INSERT INTO `cs_district` VALUES (793, '310113', '宝山区', '310100');
INSERT INTO `cs_district` VALUES (794, '310114', '嘉定区', '310100');
INSERT INTO `cs_district` VALUES (795, '310115', '浦东新区', '310100');
INSERT INTO `cs_district` VALUES (796, '310116', '金山区', '310100');
INSERT INTO `cs_district` VALUES (797, '310117', '松江区', '310100');
INSERT INTO `cs_district` VALUES (798, '310118', '青浦区', '310100');
INSERT INTO `cs_district` VALUES (799, '310119', '南汇区', '310100');
INSERT INTO `cs_district` VALUES (800, '310120', '奉贤区', '310100');
INSERT INTO `cs_district` VALUES (801, '310230', '崇明县', '310200');
INSERT INTO `cs_district` VALUES (802, '320101', '市辖区', '320100');
INSERT INTO `cs_district` VALUES (803, '320102', '玄武区', '320100');
INSERT INTO `cs_district` VALUES (804, '320103', '白下区', '320100');
INSERT INTO `cs_district` VALUES (805, '320104', '秦淮区', '320100');
INSERT INTO `cs_district` VALUES (806, '320105', '建邺区', '320100');
INSERT INTO `cs_district` VALUES (807, '320106', '鼓楼区', '320100');
INSERT INTO `cs_district` VALUES (808, '320107', '下关区', '320100');
INSERT INTO `cs_district` VALUES (809, '320111', '浦口区', '320100');
INSERT INTO `cs_district` VALUES (810, '320113', '栖霞区', '320100');
INSERT INTO `cs_district` VALUES (811, '320114', '雨花台区', '320100');
INSERT INTO `cs_district` VALUES (812, '320115', '江宁区', '320100');
INSERT INTO `cs_district` VALUES (813, '320116', '六合区', '320100');
INSERT INTO `cs_district` VALUES (814, '320124', '溧水县', '320100');
INSERT INTO `cs_district` VALUES (815, '320125', '高淳县', '320100');
INSERT INTO `cs_district` VALUES (816, '320201', '市辖区', '320200');
INSERT INTO `cs_district` VALUES (817, '320202', '崇安区', '320200');
INSERT INTO `cs_district` VALUES (818, '320203', '南长区', '320200');
INSERT INTO `cs_district` VALUES (819, '320204', '北塘区', '320200');
INSERT INTO `cs_district` VALUES (820, '320205', '锡山区', '320200');
INSERT INTO `cs_district` VALUES (821, '320206', '惠山区', '320200');
INSERT INTO `cs_district` VALUES (822, '320211', '滨湖区', '320200');
INSERT INTO `cs_district` VALUES (823, '320281', '江阴市', '320200');
INSERT INTO `cs_district` VALUES (824, '320282', '宜兴市', '320200');
INSERT INTO `cs_district` VALUES (825, '320301', '市辖区', '320300');
INSERT INTO `cs_district` VALUES (826, '320302', '鼓楼区', '320300');
INSERT INTO `cs_district` VALUES (827, '320303', '云龙区', '320300');
INSERT INTO `cs_district` VALUES (828, '320304', '九里区', '320300');
INSERT INTO `cs_district` VALUES (829, '320305', '贾汪区', '320300');
INSERT INTO `cs_district` VALUES (830, '320311', '泉山区', '320300');
INSERT INTO `cs_district` VALUES (831, '320321', '丰　县', '320300');
INSERT INTO `cs_district` VALUES (832, '320322', '沛　县', '320300');
INSERT INTO `cs_district` VALUES (833, '320323', '铜山县', '320300');
INSERT INTO `cs_district` VALUES (834, '320324', '睢宁县', '320300');
INSERT INTO `cs_district` VALUES (835, '320381', '新沂市', '320300');
INSERT INTO `cs_district` VALUES (836, '320382', '邳州市', '320300');
INSERT INTO `cs_district` VALUES (837, '320401', '市辖区', '320400');
INSERT INTO `cs_district` VALUES (838, '320402', '天宁区', '320400');
INSERT INTO `cs_district` VALUES (839, '320404', '钟楼区', '320400');
INSERT INTO `cs_district` VALUES (840, '320405', '戚墅堰区', '320400');
INSERT INTO `cs_district` VALUES (841, '320411', '新北区', '320400');
INSERT INTO `cs_district` VALUES (842, '320412', '武进区', '320400');
INSERT INTO `cs_district` VALUES (843, '320481', '溧阳市', '320400');
INSERT INTO `cs_district` VALUES (844, '320482', '金坛市', '320400');
INSERT INTO `cs_district` VALUES (845, '320501', '市辖区', '320500');
INSERT INTO `cs_district` VALUES (846, '320502', '沧浪区', '320500');
INSERT INTO `cs_district` VALUES (847, '320503', '平江区', '320500');
INSERT INTO `cs_district` VALUES (848, '320504', '金阊区', '320500');
INSERT INTO `cs_district` VALUES (849, '320505', '虎丘区', '320500');
INSERT INTO `cs_district` VALUES (850, '320506', '吴中区', '320500');
INSERT INTO `cs_district` VALUES (851, '320507', '相城区', '320500');
INSERT INTO `cs_district` VALUES (852, '320581', '常熟市', '320500');
INSERT INTO `cs_district` VALUES (853, '320582', '张家港市', '320500');
INSERT INTO `cs_district` VALUES (854, '320583', '昆山市', '320500');
INSERT INTO `cs_district` VALUES (855, '320584', '吴江市', '320500');
INSERT INTO `cs_district` VALUES (856, '320585', '太仓市', '320500');
INSERT INTO `cs_district` VALUES (857, '320601', '市辖区', '320600');
INSERT INTO `cs_district` VALUES (858, '320602', '崇川区', '320600');
INSERT INTO `cs_district` VALUES (859, '320611', '港闸区', '320600');
INSERT INTO `cs_district` VALUES (860, '320621', '海安县', '320600');
INSERT INTO `cs_district` VALUES (861, '320623', '如东县', '320600');
INSERT INTO `cs_district` VALUES (862, '320681', '启东市', '320600');
INSERT INTO `cs_district` VALUES (863, '320682', '如皋市', '320600');
INSERT INTO `cs_district` VALUES (864, '320683', '通州市', '320600');
INSERT INTO `cs_district` VALUES (865, '320684', '海门市', '320600');
INSERT INTO `cs_district` VALUES (866, '320701', '市辖区', '320700');
INSERT INTO `cs_district` VALUES (867, '320703', '连云区', '320700');
INSERT INTO `cs_district` VALUES (868, '320705', '新浦区', '320700');
INSERT INTO `cs_district` VALUES (869, '320706', '海州区', '320700');
INSERT INTO `cs_district` VALUES (870, '320721', '赣榆县', '320700');
INSERT INTO `cs_district` VALUES (871, '320722', '东海县', '320700');
INSERT INTO `cs_district` VALUES (872, '320723', '灌云县', '320700');
INSERT INTO `cs_district` VALUES (873, '320724', '灌南县', '320700');
INSERT INTO `cs_district` VALUES (874, '320801', '市辖区', '320800');
INSERT INTO `cs_district` VALUES (875, '320802', '清河区', '320800');
INSERT INTO `cs_district` VALUES (876, '320803', '楚州区', '320800');
INSERT INTO `cs_district` VALUES (877, '320804', '淮阴区', '320800');
INSERT INTO `cs_district` VALUES (878, '320811', '清浦区', '320800');
INSERT INTO `cs_district` VALUES (879, '320826', '涟水县', '320800');
INSERT INTO `cs_district` VALUES (880, '320829', '洪泽县', '320800');
INSERT INTO `cs_district` VALUES (881, '320830', '盱眙县', '320800');
INSERT INTO `cs_district` VALUES (882, '320831', '金湖县', '320800');
INSERT INTO `cs_district` VALUES (883, '320901', '市辖区', '320900');
INSERT INTO `cs_district` VALUES (884, '320902', '亭湖区', '320900');
INSERT INTO `cs_district` VALUES (885, '320903', '盐都区', '320900');
INSERT INTO `cs_district` VALUES (886, '320921', '响水县', '320900');
INSERT INTO `cs_district` VALUES (887, '320922', '滨海县', '320900');
INSERT INTO `cs_district` VALUES (888, '320923', '阜宁县', '320900');
INSERT INTO `cs_district` VALUES (889, '320924', '射阳县', '320900');
INSERT INTO `cs_district` VALUES (890, '320925', '建湖县', '320900');
INSERT INTO `cs_district` VALUES (891, '320981', '东台市', '320900');
INSERT INTO `cs_district` VALUES (892, '320982', '大丰市', '320900');
INSERT INTO `cs_district` VALUES (893, '321001', '市辖区', '321000');
INSERT INTO `cs_district` VALUES (894, '321002', '广陵区', '321000');
INSERT INTO `cs_district` VALUES (895, '321003', '邗江区', '321000');
INSERT INTO `cs_district` VALUES (896, '321011', '郊　区', '321000');
INSERT INTO `cs_district` VALUES (897, '321023', '宝应县', '321000');
INSERT INTO `cs_district` VALUES (898, '321081', '仪征市', '321000');
INSERT INTO `cs_district` VALUES (899, '321084', '高邮市', '321000');
INSERT INTO `cs_district` VALUES (900, '321088', '江都市', '321000');
INSERT INTO `cs_district` VALUES (901, '321101', '市辖区', '321100');
INSERT INTO `cs_district` VALUES (902, '321102', '京口区', '321100');
INSERT INTO `cs_district` VALUES (903, '321111', '润州区', '321100');
INSERT INTO `cs_district` VALUES (904, '321112', '丹徒区', '321100');
INSERT INTO `cs_district` VALUES (905, '321181', '丹阳市', '321100');
INSERT INTO `cs_district` VALUES (906, '321182', '扬中市', '321100');
INSERT INTO `cs_district` VALUES (907, '321183', '句容市', '321100');
INSERT INTO `cs_district` VALUES (908, '321201', '市辖区', '321200');
INSERT INTO `cs_district` VALUES (909, '321202', '海陵区', '321200');
INSERT INTO `cs_district` VALUES (910, '321203', '高港区', '321200');
INSERT INTO `cs_district` VALUES (911, '321281', '兴化市', '321200');
INSERT INTO `cs_district` VALUES (912, '321282', '靖江市', '321200');
INSERT INTO `cs_district` VALUES (913, '321283', '泰兴市', '321200');
INSERT INTO `cs_district` VALUES (914, '321284', '姜堰市', '321200');
INSERT INTO `cs_district` VALUES (915, '321301', '市辖区', '321300');
INSERT INTO `cs_district` VALUES (916, '321302', '宿城区', '321300');
INSERT INTO `cs_district` VALUES (917, '321311', '宿豫区', '321300');
INSERT INTO `cs_district` VALUES (918, '321322', '沭阳县', '321300');
INSERT INTO `cs_district` VALUES (919, '321323', '泗阳县', '321300');
INSERT INTO `cs_district` VALUES (920, '321324', '泗洪县', '321300');
INSERT INTO `cs_district` VALUES (921, '330101', '市辖区', '330100');
INSERT INTO `cs_district` VALUES (922, '330102', '上城区', '330100');
INSERT INTO `cs_district` VALUES (923, '330103', '下城区', '330100');
INSERT INTO `cs_district` VALUES (924, '330104', '江干区', '330100');
INSERT INTO `cs_district` VALUES (925, '330105', '拱墅区', '330100');
INSERT INTO `cs_district` VALUES (926, '330106', '西湖区', '330100');
INSERT INTO `cs_district` VALUES (927, '330108', '滨江区', '330100');
INSERT INTO `cs_district` VALUES (928, '330109', '萧山区', '330100');
INSERT INTO `cs_district` VALUES (929, '330110', '余杭区', '330100');
INSERT INTO `cs_district` VALUES (930, '330122', '桐庐县', '330100');
INSERT INTO `cs_district` VALUES (931, '330127', '淳安县', '330100');
INSERT INTO `cs_district` VALUES (932, '330182', '建德市', '330100');
INSERT INTO `cs_district` VALUES (933, '330183', '富阳市', '330100');
INSERT INTO `cs_district` VALUES (934, '330185', '临安市', '330100');
INSERT INTO `cs_district` VALUES (935, '330201', '市辖区', '330200');
INSERT INTO `cs_district` VALUES (936, '330203', '海曙区', '330200');
INSERT INTO `cs_district` VALUES (937, '330204', '江东区', '330200');
INSERT INTO `cs_district` VALUES (938, '330205', '江北区', '330200');
INSERT INTO `cs_district` VALUES (939, '330206', '北仑区', '330200');
INSERT INTO `cs_district` VALUES (940, '330211', '镇海区', '330200');
INSERT INTO `cs_district` VALUES (941, '330212', '鄞州区', '330200');
INSERT INTO `cs_district` VALUES (942, '330225', '象山县', '330200');
INSERT INTO `cs_district` VALUES (943, '330226', '宁海县', '330200');
INSERT INTO `cs_district` VALUES (944, '330281', '余姚市', '330200');
INSERT INTO `cs_district` VALUES (945, '330282', '慈溪市', '330200');
INSERT INTO `cs_district` VALUES (946, '330283', '奉化市', '330200');
INSERT INTO `cs_district` VALUES (947, '330301', '市辖区', '330300');
INSERT INTO `cs_district` VALUES (948, '330302', '鹿城区', '330300');
INSERT INTO `cs_district` VALUES (949, '330303', '龙湾区', '330300');
INSERT INTO `cs_district` VALUES (950, '330304', '瓯海区', '330300');
INSERT INTO `cs_district` VALUES (951, '330322', '洞头县', '330300');
INSERT INTO `cs_district` VALUES (952, '330324', '永嘉县', '330300');
INSERT INTO `cs_district` VALUES (953, '330326', '平阳县', '330300');
INSERT INTO `cs_district` VALUES (954, '330327', '苍南县', '330300');
INSERT INTO `cs_district` VALUES (955, '330328', '文成县', '330300');
INSERT INTO `cs_district` VALUES (956, '330329', '泰顺县', '330300');
INSERT INTO `cs_district` VALUES (957, '330381', '瑞安市', '330300');
INSERT INTO `cs_district` VALUES (958, '330382', '乐清市', '330300');
INSERT INTO `cs_district` VALUES (959, '330401', '市辖区', '330400');
INSERT INTO `cs_district` VALUES (960, '330402', '秀城区', '330400');
INSERT INTO `cs_district` VALUES (961, '330411', '秀洲区', '330400');
INSERT INTO `cs_district` VALUES (962, '330421', '嘉善县', '330400');
INSERT INTO `cs_district` VALUES (963, '330424', '海盐县', '330400');
INSERT INTO `cs_district` VALUES (964, '330481', '海宁市', '330400');
INSERT INTO `cs_district` VALUES (965, '330482', '平湖市', '330400');
INSERT INTO `cs_district` VALUES (966, '330483', '桐乡市', '330400');
INSERT INTO `cs_district` VALUES (967, '330501', '市辖区', '330500');
INSERT INTO `cs_district` VALUES (968, '330502', '吴兴区', '330500');
INSERT INTO `cs_district` VALUES (969, '330503', '南浔区', '330500');
INSERT INTO `cs_district` VALUES (970, '330521', '德清县', '330500');
INSERT INTO `cs_district` VALUES (971, '330522', '长兴县', '330500');
INSERT INTO `cs_district` VALUES (972, '330523', '安吉县', '330500');
INSERT INTO `cs_district` VALUES (973, '330601', '市辖区', '330600');
INSERT INTO `cs_district` VALUES (974, '330602', '越城区', '330600');
INSERT INTO `cs_district` VALUES (975, '330621', '绍兴县', '330600');
INSERT INTO `cs_district` VALUES (976, '330624', '新昌县', '330600');
INSERT INTO `cs_district` VALUES (977, '330681', '诸暨市', '330600');
INSERT INTO `cs_district` VALUES (978, '330682', '上虞市', '330600');
INSERT INTO `cs_district` VALUES (979, '330683', '嵊州市', '330600');
INSERT INTO `cs_district` VALUES (980, '330701', '市辖区', '330700');
INSERT INTO `cs_district` VALUES (981, '330702', '婺城区', '330700');
INSERT INTO `cs_district` VALUES (982, '330703', '金东区', '330700');
INSERT INTO `cs_district` VALUES (983, '330723', '武义县', '330700');
INSERT INTO `cs_district` VALUES (984, '330726', '浦江县', '330700');
INSERT INTO `cs_district` VALUES (985, '330727', '磐安县', '330700');
INSERT INTO `cs_district` VALUES (986, '330781', '兰溪市', '330700');
INSERT INTO `cs_district` VALUES (987, '330782', '义乌市', '330700');
INSERT INTO `cs_district` VALUES (988, '330783', '东阳市', '330700');
INSERT INTO `cs_district` VALUES (989, '330784', '永康市', '330700');
INSERT INTO `cs_district` VALUES (990, '330801', '市辖区', '330800');
INSERT INTO `cs_district` VALUES (991, '330802', '柯城区', '330800');
INSERT INTO `cs_district` VALUES (992, '330803', '衢江区', '330800');
INSERT INTO `cs_district` VALUES (993, '330822', '常山县', '330800');
INSERT INTO `cs_district` VALUES (994, '330824', '开化县', '330800');
INSERT INTO `cs_district` VALUES (995, '330825', '龙游县', '330800');
INSERT INTO `cs_district` VALUES (996, '330881', '江山市', '330800');
INSERT INTO `cs_district` VALUES (997, '330901', '市辖区', '330900');
INSERT INTO `cs_district` VALUES (998, '330902', '定海区', '330900');
INSERT INTO `cs_district` VALUES (999, '330903', '普陀区', '330900');
INSERT INTO `cs_district` VALUES (1000, '330921', '岱山县', '330900');
INSERT INTO `cs_district` VALUES (1001, '330922', '嵊泗县', '330900');
INSERT INTO `cs_district` VALUES (1002, '331001', '市辖区', '331000');
INSERT INTO `cs_district` VALUES (1003, '331002', '椒江区', '331000');
INSERT INTO `cs_district` VALUES (1004, '331003', '黄岩区', '331000');
INSERT INTO `cs_district` VALUES (1005, '331004', '路桥区', '331000');
INSERT INTO `cs_district` VALUES (1006, '331021', '玉环县', '331000');
INSERT INTO `cs_district` VALUES (1007, '331022', '三门县', '331000');
INSERT INTO `cs_district` VALUES (1008, '331023', '天台县', '331000');
INSERT INTO `cs_district` VALUES (1009, '331024', '仙居县', '331000');
INSERT INTO `cs_district` VALUES (1010, '331081', '温岭市', '331000');
INSERT INTO `cs_district` VALUES (1011, '331082', '临海市', '331000');
INSERT INTO `cs_district` VALUES (1012, '331101', '市辖区', '331100');
INSERT INTO `cs_district` VALUES (1013, '331102', '莲都区', '331100');
INSERT INTO `cs_district` VALUES (1014, '331121', '青田县', '331100');
INSERT INTO `cs_district` VALUES (1015, '331122', '缙云县', '331100');
INSERT INTO `cs_district` VALUES (1016, '331123', '遂昌县', '331100');
INSERT INTO `cs_district` VALUES (1017, '331124', '松阳县', '331100');
INSERT INTO `cs_district` VALUES (1018, '331125', '云和县', '331100');
INSERT INTO `cs_district` VALUES (1019, '331126', '庆元县', '331100');
INSERT INTO `cs_district` VALUES (1020, '331127', '景宁畲族自治县', '331100');
INSERT INTO `cs_district` VALUES (1021, '331181', '龙泉市', '331100');
INSERT INTO `cs_district` VALUES (1022, '340101', '市辖区', '340100');
INSERT INTO `cs_district` VALUES (1023, '340102', '瑶海区', '340100');
INSERT INTO `cs_district` VALUES (1024, '340103', '庐阳区', '340100');
INSERT INTO `cs_district` VALUES (1025, '340104', '蜀山区', '340100');
INSERT INTO `cs_district` VALUES (1026, '340111', '包河区', '340100');
INSERT INTO `cs_district` VALUES (1027, '340121', '长丰县', '340100');
INSERT INTO `cs_district` VALUES (1028, '340122', '肥东县', '340100');
INSERT INTO `cs_district` VALUES (1029, '340123', '肥西县', '340100');
INSERT INTO `cs_district` VALUES (1030, '340201', '市辖区', '340200');
INSERT INTO `cs_district` VALUES (1031, '340202', '镜湖区', '340200');
INSERT INTO `cs_district` VALUES (1032, '340203', '马塘区', '340200');
INSERT INTO `cs_district` VALUES (1033, '340204', '新芜区', '340200');
INSERT INTO `cs_district` VALUES (1034, '340207', '鸠江区', '340200');
INSERT INTO `cs_district` VALUES (1035, '340221', '芜湖县', '340200');
INSERT INTO `cs_district` VALUES (1036, '340222', '繁昌县', '340200');
INSERT INTO `cs_district` VALUES (1037, '340223', '南陵县', '340200');
INSERT INTO `cs_district` VALUES (1038, '340301', '市辖区', '340300');
INSERT INTO `cs_district` VALUES (1039, '340302', '龙子湖区', '340300');
INSERT INTO `cs_district` VALUES (1040, '340303', '蚌山区', '340300');
INSERT INTO `cs_district` VALUES (1041, '340304', '禹会区', '340300');
INSERT INTO `cs_district` VALUES (1042, '340311', '淮上区', '340300');
INSERT INTO `cs_district` VALUES (1043, '340321', '怀远县', '340300');
INSERT INTO `cs_district` VALUES (1044, '340322', '五河县', '340300');
INSERT INTO `cs_district` VALUES (1045, '340323', '固镇县', '340300');
INSERT INTO `cs_district` VALUES (1046, '340401', '市辖区', '340400');
INSERT INTO `cs_district` VALUES (1047, '340402', '大通区', '340400');
INSERT INTO `cs_district` VALUES (1048, '340403', '田家庵区', '340400');
INSERT INTO `cs_district` VALUES (1049, '340404', '谢家集区', '340400');
INSERT INTO `cs_district` VALUES (1050, '340405', '八公山区', '340400');
INSERT INTO `cs_district` VALUES (1051, '340406', '潘集区', '340400');
INSERT INTO `cs_district` VALUES (1052, '340421', '凤台县', '340400');
INSERT INTO `cs_district` VALUES (1053, '340501', '市辖区', '340500');
INSERT INTO `cs_district` VALUES (1054, '340502', '金家庄区', '340500');
INSERT INTO `cs_district` VALUES (1055, '340503', '花山区', '340500');
INSERT INTO `cs_district` VALUES (1056, '340504', '雨山区', '340500');
INSERT INTO `cs_district` VALUES (1057, '340521', '当涂县', '340500');
INSERT INTO `cs_district` VALUES (1058, '340601', '市辖区', '340600');
INSERT INTO `cs_district` VALUES (1059, '340602', '杜集区', '340600');
INSERT INTO `cs_district` VALUES (1060, '340603', '相山区', '340600');
INSERT INTO `cs_district` VALUES (1061, '340604', '烈山区', '340600');
INSERT INTO `cs_district` VALUES (1062, '340621', '濉溪县', '340600');
INSERT INTO `cs_district` VALUES (1063, '340701', '市辖区', '340700');
INSERT INTO `cs_district` VALUES (1064, '340702', '铜官山区', '340700');
INSERT INTO `cs_district` VALUES (1065, '340703', '狮子山区', '340700');
INSERT INTO `cs_district` VALUES (1066, '340711', '郊　区', '340700');
INSERT INTO `cs_district` VALUES (1067, '340721', '铜陵县', '340700');
INSERT INTO `cs_district` VALUES (1068, '340801', '市辖区', '340800');
INSERT INTO `cs_district` VALUES (1069, '340802', '迎江区', '340800');
INSERT INTO `cs_district` VALUES (1070, '340803', '大观区', '340800');
INSERT INTO `cs_district` VALUES (1071, '340811', '郊　区', '340800');
INSERT INTO `cs_district` VALUES (1072, '340822', '怀宁县', '340800');
INSERT INTO `cs_district` VALUES (1073, '340823', '枞阳县', '340800');
INSERT INTO `cs_district` VALUES (1074, '340824', '潜山县', '340800');
INSERT INTO `cs_district` VALUES (1075, '340825', '太湖县', '340800');
INSERT INTO `cs_district` VALUES (1076, '340826', '宿松县', '340800');
INSERT INTO `cs_district` VALUES (1077, '340827', '望江县', '340800');
INSERT INTO `cs_district` VALUES (1078, '340828', '岳西县', '340800');
INSERT INTO `cs_district` VALUES (1079, '340881', '桐城市', '340800');
INSERT INTO `cs_district` VALUES (1080, '341001', '市辖区', '341000');
INSERT INTO `cs_district` VALUES (1081, '341002', '屯溪区', '341000');
INSERT INTO `cs_district` VALUES (1082, '341003', '黄山区', '341000');
INSERT INTO `cs_district` VALUES (1083, '341004', '徽州区', '341000');
INSERT INTO `cs_district` VALUES (1084, '341021', '歙　县', '341000');
INSERT INTO `cs_district` VALUES (1085, '341022', '休宁县', '341000');
INSERT INTO `cs_district` VALUES (1086, '341023', '黟　县', '341000');
INSERT INTO `cs_district` VALUES (1087, '341024', '祁门县', '341000');
INSERT INTO `cs_district` VALUES (1088, '341101', '市辖区', '341100');
INSERT INTO `cs_district` VALUES (1089, '341102', '琅琊区', '341100');
INSERT INTO `cs_district` VALUES (1090, '341103', '南谯区', '341100');
INSERT INTO `cs_district` VALUES (1091, '341122', '来安县', '341100');
INSERT INTO `cs_district` VALUES (1092, '341124', '全椒县', '341100');
INSERT INTO `cs_district` VALUES (1093, '341125', '定远县', '341100');
INSERT INTO `cs_district` VALUES (1094, '341126', '凤阳县', '341100');
INSERT INTO `cs_district` VALUES (1095, '341181', '天长市', '341100');
INSERT INTO `cs_district` VALUES (1096, '341182', '明光市', '341100');
INSERT INTO `cs_district` VALUES (1097, '341201', '市辖区', '341200');
INSERT INTO `cs_district` VALUES (1098, '341202', '颍州区', '341200');
INSERT INTO `cs_district` VALUES (1099, '341203', '颍东区', '341200');
INSERT INTO `cs_district` VALUES (1100, '341204', '颍泉区', '341200');
INSERT INTO `cs_district` VALUES (1101, '341221', '临泉县', '341200');
INSERT INTO `cs_district` VALUES (1102, '341222', '太和县', '341200');
INSERT INTO `cs_district` VALUES (1103, '341225', '阜南县', '341200');
INSERT INTO `cs_district` VALUES (1104, '341226', '颍上县', '341200');
INSERT INTO `cs_district` VALUES (1105, '341282', '界首市', '341200');
INSERT INTO `cs_district` VALUES (1106, '341301', '市辖区', '341300');
INSERT INTO `cs_district` VALUES (1107, '341302', '墉桥区', '341300');
INSERT INTO `cs_district` VALUES (1108, '341321', '砀山县', '341300');
INSERT INTO `cs_district` VALUES (1109, '341322', '萧　县', '341300');
INSERT INTO `cs_district` VALUES (1110, '341323', '灵璧县', '341300');
INSERT INTO `cs_district` VALUES (1111, '341324', '泗　县', '341300');
INSERT INTO `cs_district` VALUES (1112, '341401', '市辖区', '341400');
INSERT INTO `cs_district` VALUES (1113, '341402', '居巢区', '341400');
INSERT INTO `cs_district` VALUES (1114, '341421', '庐江县', '341400');
INSERT INTO `cs_district` VALUES (1115, '341422', '无为县', '341400');
INSERT INTO `cs_district` VALUES (1116, '341423', '含山县', '341400');
INSERT INTO `cs_district` VALUES (1117, '341424', '和　县', '341400');
INSERT INTO `cs_district` VALUES (1118, '341501', '市辖区', '341500');
INSERT INTO `cs_district` VALUES (1119, '341502', '金安区', '341500');
INSERT INTO `cs_district` VALUES (1120, '341503', '裕安区', '341500');
INSERT INTO `cs_district` VALUES (1121, '341521', '寿　县', '341500');
INSERT INTO `cs_district` VALUES (1122, '341522', '霍邱县', '341500');
INSERT INTO `cs_district` VALUES (1123, '341523', '舒城县', '341500');
INSERT INTO `cs_district` VALUES (1124, '341524', '金寨县', '341500');
INSERT INTO `cs_district` VALUES (1125, '341525', '霍山县', '341500');
INSERT INTO `cs_district` VALUES (1126, '341601', '市辖区', '341600');
INSERT INTO `cs_district` VALUES (1127, '341602', '谯城区', '341600');
INSERT INTO `cs_district` VALUES (1128, '341621', '涡阳县', '341600');
INSERT INTO `cs_district` VALUES (1129, '341622', '蒙城县', '341600');
INSERT INTO `cs_district` VALUES (1130, '341623', '利辛县', '341600');
INSERT INTO `cs_district` VALUES (1131, '341701', '市辖区', '341700');
INSERT INTO `cs_district` VALUES (1132, '341702', '贵池区', '341700');
INSERT INTO `cs_district` VALUES (1133, '341721', '东至县', '341700');
INSERT INTO `cs_district` VALUES (1134, '341722', '石台县', '341700');
INSERT INTO `cs_district` VALUES (1135, '341723', '青阳县', '341700');
INSERT INTO `cs_district` VALUES (1136, '341801', '市辖区', '341800');
INSERT INTO `cs_district` VALUES (1137, '341802', '宣州区', '341800');
INSERT INTO `cs_district` VALUES (1138, '341821', '郎溪县', '341800');
INSERT INTO `cs_district` VALUES (1139, '341822', '广德县', '341800');
INSERT INTO `cs_district` VALUES (1140, '341823', '泾　县', '341800');
INSERT INTO `cs_district` VALUES (1141, '341824', '绩溪县', '341800');
INSERT INTO `cs_district` VALUES (1142, '341825', '旌德县', '341800');
INSERT INTO `cs_district` VALUES (1143, '341881', '宁国市', '341800');
INSERT INTO `cs_district` VALUES (1144, '350101', '市辖区', '350100');
INSERT INTO `cs_district` VALUES (1145, '350102', '鼓楼区', '350100');
INSERT INTO `cs_district` VALUES (1146, '350103', '台江区', '350100');
INSERT INTO `cs_district` VALUES (1147, '350104', '仓山区', '350100');
INSERT INTO `cs_district` VALUES (1148, '350105', '马尾区', '350100');
INSERT INTO `cs_district` VALUES (1149, '350111', '晋安区', '350100');
INSERT INTO `cs_district` VALUES (1150, '350121', '闽侯县', '350100');
INSERT INTO `cs_district` VALUES (1151, '350122', '连江县', '350100');
INSERT INTO `cs_district` VALUES (1152, '350123', '罗源县', '350100');
INSERT INTO `cs_district` VALUES (1153, '350124', '闽清县', '350100');
INSERT INTO `cs_district` VALUES (1154, '350125', '永泰县', '350100');
INSERT INTO `cs_district` VALUES (1155, '350128', '平潭县', '350100');
INSERT INTO `cs_district` VALUES (1156, '350181', '福清市', '350100');
INSERT INTO `cs_district` VALUES (1157, '350182', '长乐市', '350100');
INSERT INTO `cs_district` VALUES (1158, '350201', '市辖区', '350200');
INSERT INTO `cs_district` VALUES (1159, '350203', '思明区', '350200');
INSERT INTO `cs_district` VALUES (1160, '350205', '海沧区', '350200');
INSERT INTO `cs_district` VALUES (1161, '350206', '湖里区', '350200');
INSERT INTO `cs_district` VALUES (1162, '350211', '集美区', '350200');
INSERT INTO `cs_district` VALUES (1163, '350212', '同安区', '350200');
INSERT INTO `cs_district` VALUES (1164, '350213', '翔安区', '350200');
INSERT INTO `cs_district` VALUES (1165, '350301', '市辖区', '350300');
INSERT INTO `cs_district` VALUES (1166, '350302', '城厢区', '350300');
INSERT INTO `cs_district` VALUES (1167, '350303', '涵江区', '350300');
INSERT INTO `cs_district` VALUES (1168, '350304', '荔城区', '350300');
INSERT INTO `cs_district` VALUES (1169, '350305', '秀屿区', '350300');
INSERT INTO `cs_district` VALUES (1170, '350322', '仙游县', '350300');
INSERT INTO `cs_district` VALUES (1171, '350401', '市辖区', '350400');
INSERT INTO `cs_district` VALUES (1172, '350402', '梅列区', '350400');
INSERT INTO `cs_district` VALUES (1173, '350403', '三元区', '350400');
INSERT INTO `cs_district` VALUES (1174, '350421', '明溪县', '350400');
INSERT INTO `cs_district` VALUES (1175, '350423', '清流县', '350400');
INSERT INTO `cs_district` VALUES (1176, '350424', '宁化县', '350400');
INSERT INTO `cs_district` VALUES (1177, '350425', '大田县', '350400');
INSERT INTO `cs_district` VALUES (1178, '350426', '尤溪县', '350400');
INSERT INTO `cs_district` VALUES (1179, '350427', '沙　县', '350400');
INSERT INTO `cs_district` VALUES (1180, '350428', '将乐县', '350400');
INSERT INTO `cs_district` VALUES (1181, '350429', '泰宁县', '350400');
INSERT INTO `cs_district` VALUES (1182, '350430', '建宁县', '350400');
INSERT INTO `cs_district` VALUES (1183, '350481', '永安市', '350400');
INSERT INTO `cs_district` VALUES (1184, '350501', '市辖区', '350500');
INSERT INTO `cs_district` VALUES (1185, '350502', '鲤城区', '350500');
INSERT INTO `cs_district` VALUES (1186, '350503', '丰泽区', '350500');
INSERT INTO `cs_district` VALUES (1187, '350504', '洛江区', '350500');
INSERT INTO `cs_district` VALUES (1188, '350505', '泉港区', '350500');
INSERT INTO `cs_district` VALUES (1189, '350521', '惠安县', '350500');
INSERT INTO `cs_district` VALUES (1190, '350524', '安溪县', '350500');
INSERT INTO `cs_district` VALUES (1191, '350525', '永春县', '350500');
INSERT INTO `cs_district` VALUES (1192, '350526', '德化县', '350500');
INSERT INTO `cs_district` VALUES (1193, '350527', '金门县', '350500');
INSERT INTO `cs_district` VALUES (1194, '350581', '石狮市', '350500');
INSERT INTO `cs_district` VALUES (1195, '350582', '晋江市', '350500');
INSERT INTO `cs_district` VALUES (1196, '350583', '南安市', '350500');
INSERT INTO `cs_district` VALUES (1197, '350601', '市辖区', '350600');
INSERT INTO `cs_district` VALUES (1198, '350602', '芗城区', '350600');
INSERT INTO `cs_district` VALUES (1199, '350603', '龙文区', '350600');
INSERT INTO `cs_district` VALUES (1200, '350622', '云霄县', '350600');
INSERT INTO `cs_district` VALUES (1201, '350623', '漳浦县', '350600');
INSERT INTO `cs_district` VALUES (1202, '350624', '诏安县', '350600');
INSERT INTO `cs_district` VALUES (1203, '350625', '长泰县', '350600');
INSERT INTO `cs_district` VALUES (1204, '350626', '东山县', '350600');
INSERT INTO `cs_district` VALUES (1205, '350627', '南靖县', '350600');
INSERT INTO `cs_district` VALUES (1206, '350628', '平和县', '350600');
INSERT INTO `cs_district` VALUES (1207, '350629', '华安县', '350600');
INSERT INTO `cs_district` VALUES (1208, '350681', '龙海市', '350600');
INSERT INTO `cs_district` VALUES (1209, '350701', '市辖区', '350700');
INSERT INTO `cs_district` VALUES (1210, '350702', '延平区', '350700');
INSERT INTO `cs_district` VALUES (1211, '350721', '顺昌县', '350700');
INSERT INTO `cs_district` VALUES (1212, '350722', '浦城县', '350700');
INSERT INTO `cs_district` VALUES (1213, '350723', '光泽县', '350700');
INSERT INTO `cs_district` VALUES (1214, '350724', '松溪县', '350700');
INSERT INTO `cs_district` VALUES (1215, '350725', '政和县', '350700');
INSERT INTO `cs_district` VALUES (1216, '350781', '邵武市', '350700');
INSERT INTO `cs_district` VALUES (1217, '350782', '武夷山市', '350700');
INSERT INTO `cs_district` VALUES (1218, '350783', '建瓯市', '350700');
INSERT INTO `cs_district` VALUES (1219, '350784', '建阳市', '350700');
INSERT INTO `cs_district` VALUES (1220, '350801', '市辖区', '350800');
INSERT INTO `cs_district` VALUES (1221, '350802', '新罗区', '350800');
INSERT INTO `cs_district` VALUES (1222, '350821', '长汀县', '350800');
INSERT INTO `cs_district` VALUES (1223, '350822', '永定县', '350800');
INSERT INTO `cs_district` VALUES (1224, '350823', '上杭县', '350800');
INSERT INTO `cs_district` VALUES (1225, '350824', '武平县', '350800');
INSERT INTO `cs_district` VALUES (1226, '350825', '连城县', '350800');
INSERT INTO `cs_district` VALUES (1227, '350881', '漳平市', '350800');
INSERT INTO `cs_district` VALUES (1228, '350901', '市辖区', '350900');
INSERT INTO `cs_district` VALUES (1229, '350902', '蕉城区', '350900');
INSERT INTO `cs_district` VALUES (1230, '350921', '霞浦县', '350900');
INSERT INTO `cs_district` VALUES (1231, '350922', '古田县', '350900');
INSERT INTO `cs_district` VALUES (1232, '350923', '屏南县', '350900');
INSERT INTO `cs_district` VALUES (1233, '350924', '寿宁县', '350900');
INSERT INTO `cs_district` VALUES (1234, '350925', '周宁县', '350900');
INSERT INTO `cs_district` VALUES (1235, '350926', '柘荣县', '350900');
INSERT INTO `cs_district` VALUES (1236, '350981', '福安市', '350900');
INSERT INTO `cs_district` VALUES (1237, '350982', '福鼎市', '350900');
INSERT INTO `cs_district` VALUES (1238, '360101', '市辖区', '360100');
INSERT INTO `cs_district` VALUES (1239, '360102', '东湖区', '360100');
INSERT INTO `cs_district` VALUES (1240, '360103', '西湖区', '360100');
INSERT INTO `cs_district` VALUES (1241, '360104', '青云谱区', '360100');
INSERT INTO `cs_district` VALUES (1242, '360105', '湾里区', '360100');
INSERT INTO `cs_district` VALUES (1243, '360111', '青山湖区', '360100');
INSERT INTO `cs_district` VALUES (1244, '360121', '南昌县', '360100');
INSERT INTO `cs_district` VALUES (1245, '360122', '新建县', '360100');
INSERT INTO `cs_district` VALUES (1246, '360123', '安义县', '360100');
INSERT INTO `cs_district` VALUES (1247, '360124', '进贤县', '360100');
INSERT INTO `cs_district` VALUES (1248, '360201', '市辖区', '360200');
INSERT INTO `cs_district` VALUES (1249, '360202', '昌江区', '360200');
INSERT INTO `cs_district` VALUES (1250, '360203', '珠山区', '360200');
INSERT INTO `cs_district` VALUES (1251, '360222', '浮梁县', '360200');
INSERT INTO `cs_district` VALUES (1252, '360281', '乐平市', '360200');
INSERT INTO `cs_district` VALUES (1253, '360301', '市辖区', '360300');
INSERT INTO `cs_district` VALUES (1254, '360302', '安源区', '360300');
INSERT INTO `cs_district` VALUES (1255, '360313', '湘东区', '360300');
INSERT INTO `cs_district` VALUES (1256, '360321', '莲花县', '360300');
INSERT INTO `cs_district` VALUES (1257, '360322', '上栗县', '360300');
INSERT INTO `cs_district` VALUES (1258, '360323', '芦溪县', '360300');
INSERT INTO `cs_district` VALUES (1259, '360401', '市辖区', '360400');
INSERT INTO `cs_district` VALUES (1260, '360402', '庐山区', '360400');
INSERT INTO `cs_district` VALUES (1261, '360403', '浔阳区', '360400');
INSERT INTO `cs_district` VALUES (1262, '360421', '九江县', '360400');
INSERT INTO `cs_district` VALUES (1263, '360423', '武宁县', '360400');
INSERT INTO `cs_district` VALUES (1264, '360424', '修水县', '360400');
INSERT INTO `cs_district` VALUES (1265, '360425', '永修县', '360400');
INSERT INTO `cs_district` VALUES (1266, '360426', '德安县', '360400');
INSERT INTO `cs_district` VALUES (1267, '360427', '星子县', '360400');
INSERT INTO `cs_district` VALUES (1268, '360428', '都昌县', '360400');
INSERT INTO `cs_district` VALUES (1269, '360429', '湖口县', '360400');
INSERT INTO `cs_district` VALUES (1270, '360430', '彭泽县', '360400');
INSERT INTO `cs_district` VALUES (1271, '360481', '瑞昌市', '360400');
INSERT INTO `cs_district` VALUES (1272, '360501', '市辖区', '360500');
INSERT INTO `cs_district` VALUES (1273, '360502', '渝水区', '360500');
INSERT INTO `cs_district` VALUES (1274, '360521', '分宜县', '360500');
INSERT INTO `cs_district` VALUES (1275, '360601', '市辖区', '360600');
INSERT INTO `cs_district` VALUES (1276, '360602', '月湖区', '360600');
INSERT INTO `cs_district` VALUES (1277, '360622', '余江县', '360600');
INSERT INTO `cs_district` VALUES (1278, '360681', '贵溪市', '360600');
INSERT INTO `cs_district` VALUES (1279, '360701', '市辖区', '360700');
INSERT INTO `cs_district` VALUES (1280, '360702', '章贡区', '360700');
INSERT INTO `cs_district` VALUES (1281, '360721', '赣　县', '360700');
INSERT INTO `cs_district` VALUES (1282, '360722', '信丰县', '360700');
INSERT INTO `cs_district` VALUES (1283, '360723', '大余县', '360700');
INSERT INTO `cs_district` VALUES (1284, '360724', '上犹县', '360700');
INSERT INTO `cs_district` VALUES (1285, '360725', '崇义县', '360700');
INSERT INTO `cs_district` VALUES (1286, '360726', '安远县', '360700');
INSERT INTO `cs_district` VALUES (1287, '360727', '龙南县', '360700');
INSERT INTO `cs_district` VALUES (1288, '360728', '定南县', '360700');
INSERT INTO `cs_district` VALUES (1289, '360729', '全南县', '360700');
INSERT INTO `cs_district` VALUES (1290, '360730', '宁都县', '360700');
INSERT INTO `cs_district` VALUES (1291, '360731', '于都县', '360700');
INSERT INTO `cs_district` VALUES (1292, '360732', '兴国县', '360700');
INSERT INTO `cs_district` VALUES (1293, '360733', '会昌县', '360700');
INSERT INTO `cs_district` VALUES (1294, '360734', '寻乌县', '360700');
INSERT INTO `cs_district` VALUES (1295, '360735', '石城县', '360700');
INSERT INTO `cs_district` VALUES (1296, '360781', '瑞金市', '360700');
INSERT INTO `cs_district` VALUES (1297, '360782', '南康市', '360700');
INSERT INTO `cs_district` VALUES (1298, '360801', '市辖区', '360800');
INSERT INTO `cs_district` VALUES (1299, '360802', '吉州区', '360800');
INSERT INTO `cs_district` VALUES (1300, '360803', '青原区', '360800');
INSERT INTO `cs_district` VALUES (1301, '360821', '吉安县', '360800');
INSERT INTO `cs_district` VALUES (1302, '360822', '吉水县', '360800');
INSERT INTO `cs_district` VALUES (1303, '360823', '峡江县', '360800');
INSERT INTO `cs_district` VALUES (1304, '360824', '新干县', '360800');
INSERT INTO `cs_district` VALUES (1305, '360825', '永丰县', '360800');
INSERT INTO `cs_district` VALUES (1306, '360826', '泰和县', '360800');
INSERT INTO `cs_district` VALUES (1307, '360827', '遂川县', '360800');
INSERT INTO `cs_district` VALUES (1308, '360828', '万安县', '360800');
INSERT INTO `cs_district` VALUES (1309, '360829', '安福县', '360800');
INSERT INTO `cs_district` VALUES (1310, '360830', '永新县', '360800');
INSERT INTO `cs_district` VALUES (1311, '360881', '井冈山市', '360800');
INSERT INTO `cs_district` VALUES (1312, '360901', '市辖区', '360900');
INSERT INTO `cs_district` VALUES (1313, '360902', '袁州区', '360900');
INSERT INTO `cs_district` VALUES (1314, '360921', '奉新县', '360900');
INSERT INTO `cs_district` VALUES (1315, '360922', '万载县', '360900');
INSERT INTO `cs_district` VALUES (1316, '360923', '上高县', '360900');
INSERT INTO `cs_district` VALUES (1317, '360924', '宜丰县', '360900');
INSERT INTO `cs_district` VALUES (1318, '360925', '靖安县', '360900');
INSERT INTO `cs_district` VALUES (1319, '360926', '铜鼓县', '360900');
INSERT INTO `cs_district` VALUES (1320, '360981', '丰城市', '360900');
INSERT INTO `cs_district` VALUES (1321, '360982', '樟树市', '360900');
INSERT INTO `cs_district` VALUES (1322, '360983', '高安市', '360900');
INSERT INTO `cs_district` VALUES (1323, '361001', '市辖区', '361000');
INSERT INTO `cs_district` VALUES (1324, '361002', '临川区', '361000');
INSERT INTO `cs_district` VALUES (1325, '361021', '南城县', '361000');
INSERT INTO `cs_district` VALUES (1326, '361022', '黎川县', '361000');
INSERT INTO `cs_district` VALUES (1327, '361023', '南丰县', '361000');
INSERT INTO `cs_district` VALUES (1328, '361024', '崇仁县', '361000');
INSERT INTO `cs_district` VALUES (1329, '361025', '乐安县', '361000');
INSERT INTO `cs_district` VALUES (1330, '361026', '宜黄县', '361000');
INSERT INTO `cs_district` VALUES (1331, '361027', '金溪县', '361000');
INSERT INTO `cs_district` VALUES (1332, '361028', '资溪县', '361000');
INSERT INTO `cs_district` VALUES (1333, '361029', '东乡县', '361000');
INSERT INTO `cs_district` VALUES (1334, '361030', '广昌县', '361000');
INSERT INTO `cs_district` VALUES (1335, '361101', '市辖区', '361100');
INSERT INTO `cs_district` VALUES (1336, '361102', '信州区', '361100');
INSERT INTO `cs_district` VALUES (1337, '361121', '上饶县', '361100');
INSERT INTO `cs_district` VALUES (1338, '361122', '广丰县', '361100');
INSERT INTO `cs_district` VALUES (1339, '361123', '玉山县', '361100');
INSERT INTO `cs_district` VALUES (1340, '361124', '铅山县', '361100');
INSERT INTO `cs_district` VALUES (1341, '361125', '横峰县', '361100');
INSERT INTO `cs_district` VALUES (1342, '361126', '弋阳县', '361100');
INSERT INTO `cs_district` VALUES (1343, '361127', '余干县', '361100');
INSERT INTO `cs_district` VALUES (1344, '361128', '鄱阳县', '361100');
INSERT INTO `cs_district` VALUES (1345, '361129', '万年县', '361100');
INSERT INTO `cs_district` VALUES (1346, '361130', '婺源县', '361100');
INSERT INTO `cs_district` VALUES (1347, '361181', '德兴市', '361100');
INSERT INTO `cs_district` VALUES (1348, '370101', '市辖区', '370100');
INSERT INTO `cs_district` VALUES (1349, '370102', '历下区', '370100');
INSERT INTO `cs_district` VALUES (1350, '370103', '市中区', '370100');
INSERT INTO `cs_district` VALUES (1351, '370104', '槐荫区', '370100');
INSERT INTO `cs_district` VALUES (1352, '370105', '天桥区', '370100');
INSERT INTO `cs_district` VALUES (1353, '370112', '历城区', '370100');
INSERT INTO `cs_district` VALUES (1354, '370113', '长清区', '370100');
INSERT INTO `cs_district` VALUES (1355, '370124', '平阴县', '370100');
INSERT INTO `cs_district` VALUES (1356, '370125', '济阳县', '370100');
INSERT INTO `cs_district` VALUES (1357, '370126', '商河县', '370100');
INSERT INTO `cs_district` VALUES (1358, '370181', '章丘市', '370100');
INSERT INTO `cs_district` VALUES (1359, '370201', '市辖区', '370200');
INSERT INTO `cs_district` VALUES (1360, '370202', '市南区', '370200');
INSERT INTO `cs_district` VALUES (1361, '370203', '市北区', '370200');
INSERT INTO `cs_district` VALUES (1362, '370205', '四方区', '370200');
INSERT INTO `cs_district` VALUES (1363, '370211', '黄岛区', '370200');
INSERT INTO `cs_district` VALUES (1364, '370212', '崂山区', '370200');
INSERT INTO `cs_district` VALUES (1365, '370213', '李沧区', '370200');
INSERT INTO `cs_district` VALUES (1366, '370214', '城阳区', '370200');
INSERT INTO `cs_district` VALUES (1367, '370281', '胶州市', '370200');
INSERT INTO `cs_district` VALUES (1368, '370282', '即墨市', '370200');
INSERT INTO `cs_district` VALUES (1369, '370283', '平度市', '370200');
INSERT INTO `cs_district` VALUES (1370, '370284', '胶南市', '370200');
INSERT INTO `cs_district` VALUES (1371, '370285', '莱西市', '370200');
INSERT INTO `cs_district` VALUES (1372, '370301', '市辖区', '370300');
INSERT INTO `cs_district` VALUES (1373, '370302', '淄川区', '370300');
INSERT INTO `cs_district` VALUES (1374, '370303', '张店区', '370300');
INSERT INTO `cs_district` VALUES (1375, '370304', '博山区', '370300');
INSERT INTO `cs_district` VALUES (1376, '370305', '临淄区', '370300');
INSERT INTO `cs_district` VALUES (1377, '370306', '周村区', '370300');
INSERT INTO `cs_district` VALUES (1378, '370321', '桓台县', '370300');
INSERT INTO `cs_district` VALUES (1379, '370322', '高青县', '370300');
INSERT INTO `cs_district` VALUES (1380, '370323', '沂源县', '370300');
INSERT INTO `cs_district` VALUES (1381, '370401', '市辖区', '370400');
INSERT INTO `cs_district` VALUES (1382, '370402', '市中区', '370400');
INSERT INTO `cs_district` VALUES (1383, '370403', '薛城区', '370400');
INSERT INTO `cs_district` VALUES (1384, '370404', '峄城区', '370400');
INSERT INTO `cs_district` VALUES (1385, '370405', '台儿庄区', '370400');
INSERT INTO `cs_district` VALUES (1386, '370406', '山亭区', '370400');
INSERT INTO `cs_district` VALUES (1387, '370481', '滕州市', '370400');
INSERT INTO `cs_district` VALUES (1388, '370501', '市辖区', '370500');
INSERT INTO `cs_district` VALUES (1389, '370502', '东营区', '370500');
INSERT INTO `cs_district` VALUES (1390, '370503', '河口区', '370500');
INSERT INTO `cs_district` VALUES (1391, '370521', '垦利县', '370500');
INSERT INTO `cs_district` VALUES (1392, '370522', '利津县', '370500');
INSERT INTO `cs_district` VALUES (1393, '370523', '广饶县', '370500');
INSERT INTO `cs_district` VALUES (1394, '370601', '市辖区', '370600');
INSERT INTO `cs_district` VALUES (1395, '370602', '芝罘区', '370600');
INSERT INTO `cs_district` VALUES (1396, '370611', '福山区', '370600');
INSERT INTO `cs_district` VALUES (1397, '370612', '牟平区', '370600');
INSERT INTO `cs_district` VALUES (1398, '370613', '莱山区', '370600');
INSERT INTO `cs_district` VALUES (1399, '370634', '长岛县', '370600');
INSERT INTO `cs_district` VALUES (1400, '370681', '龙口市', '370600');
INSERT INTO `cs_district` VALUES (1401, '370682', '莱阳市', '370600');
INSERT INTO `cs_district` VALUES (1402, '370683', '莱州市', '370600');
INSERT INTO `cs_district` VALUES (1403, '370684', '蓬莱市', '370600');
INSERT INTO `cs_district` VALUES (1404, '370685', '招远市', '370600');
INSERT INTO `cs_district` VALUES (1405, '370686', '栖霞市', '370600');
INSERT INTO `cs_district` VALUES (1406, '370687', '海阳市', '370600');
INSERT INTO `cs_district` VALUES (1407, '370701', '市辖区', '370700');
INSERT INTO `cs_district` VALUES (1408, '370702', '潍城区', '370700');
INSERT INTO `cs_district` VALUES (1409, '370703', '寒亭区', '370700');
INSERT INTO `cs_district` VALUES (1410, '370704', '坊子区', '370700');
INSERT INTO `cs_district` VALUES (1411, '370705', '奎文区', '370700');
INSERT INTO `cs_district` VALUES (1412, '370724', '临朐县', '370700');
INSERT INTO `cs_district` VALUES (1413, '370725', '昌乐县', '370700');
INSERT INTO `cs_district` VALUES (1414, '370781', '青州市', '370700');
INSERT INTO `cs_district` VALUES (1415, '370782', '诸城市', '370700');
INSERT INTO `cs_district` VALUES (1416, '370783', '寿光市', '370700');
INSERT INTO `cs_district` VALUES (1417, '370784', '安丘市', '370700');
INSERT INTO `cs_district` VALUES (1418, '370785', '高密市', '370700');
INSERT INTO `cs_district` VALUES (1419, '370786', '昌邑市', '370700');
INSERT INTO `cs_district` VALUES (1420, '370801', '市辖区', '370800');
INSERT INTO `cs_district` VALUES (1421, '370802', '市中区', '370800');
INSERT INTO `cs_district` VALUES (1422, '370811', '任城区', '370800');
INSERT INTO `cs_district` VALUES (1423, '370826', '微山县', '370800');
INSERT INTO `cs_district` VALUES (1424, '370827', '鱼台县', '370800');
INSERT INTO `cs_district` VALUES (1425, '370828', '金乡县', '370800');
INSERT INTO `cs_district` VALUES (1426, '370829', '嘉祥县', '370800');
INSERT INTO `cs_district` VALUES (1427, '370830', '汶上县', '370800');
INSERT INTO `cs_district` VALUES (1428, '370831', '泗水县', '370800');
INSERT INTO `cs_district` VALUES (1429, '370832', '梁山县', '370800');
INSERT INTO `cs_district` VALUES (1430, '370881', '曲阜市', '370800');
INSERT INTO `cs_district` VALUES (1431, '370882', '兖州市', '370800');
INSERT INTO `cs_district` VALUES (1432, '370883', '邹城市', '370800');
INSERT INTO `cs_district` VALUES (1433, '370901', '市辖区', '370900');
INSERT INTO `cs_district` VALUES (1434, '370902', '泰山区', '370900');
INSERT INTO `cs_district` VALUES (1435, '370903', '岱岳区', '370900');
INSERT INTO `cs_district` VALUES (1436, '370921', '宁阳县', '370900');
INSERT INTO `cs_district` VALUES (1437, '370923', '东平县', '370900');
INSERT INTO `cs_district` VALUES (1438, '370982', '新泰市', '370900');
INSERT INTO `cs_district` VALUES (1439, '370983', '肥城市', '370900');
INSERT INTO `cs_district` VALUES (1440, '371001', '市辖区', '371000');
INSERT INTO `cs_district` VALUES (1441, '371002', '环翠区', '371000');
INSERT INTO `cs_district` VALUES (1442, '371081', '文登市', '371000');
INSERT INTO `cs_district` VALUES (1443, '371082', '荣成市', '371000');
INSERT INTO `cs_district` VALUES (1444, '371083', '乳山市', '371000');
INSERT INTO `cs_district` VALUES (1445, '371101', '市辖区', '371100');
INSERT INTO `cs_district` VALUES (1446, '371102', '东港区', '371100');
INSERT INTO `cs_district` VALUES (1447, '371103', '岚山区', '371100');
INSERT INTO `cs_district` VALUES (1448, '371121', '五莲县', '371100');
INSERT INTO `cs_district` VALUES (1449, '371122', '莒　县', '371100');
INSERT INTO `cs_district` VALUES (1450, '371201', '市辖区', '371200');
INSERT INTO `cs_district` VALUES (1451, '371202', '莱城区', '371200');
INSERT INTO `cs_district` VALUES (1452, '371203', '钢城区', '371200');
INSERT INTO `cs_district` VALUES (1453, '371301', '市辖区', '371300');
INSERT INTO `cs_district` VALUES (1454, '371302', '兰山区', '371300');
INSERT INTO `cs_district` VALUES (1455, '371311', '罗庄区', '371300');
INSERT INTO `cs_district` VALUES (1456, '371312', '河东区', '371300');
INSERT INTO `cs_district` VALUES (1457, '371321', '沂南县', '371300');
INSERT INTO `cs_district` VALUES (1458, '371322', '郯城县', '371300');
INSERT INTO `cs_district` VALUES (1459, '371323', '沂水县', '371300');
INSERT INTO `cs_district` VALUES (1460, '371324', '苍山县', '371300');
INSERT INTO `cs_district` VALUES (1461, '371325', '费　县', '371300');
INSERT INTO `cs_district` VALUES (1462, '371326', '平邑县', '371300');
INSERT INTO `cs_district` VALUES (1463, '371327', '莒南县', '371300');
INSERT INTO `cs_district` VALUES (1464, '371328', '蒙阴县', '371300');
INSERT INTO `cs_district` VALUES (1465, '371329', '临沭县', '371300');
INSERT INTO `cs_district` VALUES (1466, '371401', '市辖区', '371400');
INSERT INTO `cs_district` VALUES (1467, '371402', '德城区', '371400');
INSERT INTO `cs_district` VALUES (1468, '371421', '陵　县', '371400');
INSERT INTO `cs_district` VALUES (1469, '371422', '宁津县', '371400');
INSERT INTO `cs_district` VALUES (1470, '371423', '庆云县', '371400');
INSERT INTO `cs_district` VALUES (1471, '371424', '临邑县', '371400');
INSERT INTO `cs_district` VALUES (1472, '371425', '齐河县', '371400');
INSERT INTO `cs_district` VALUES (1473, '371426', '平原县', '371400');
INSERT INTO `cs_district` VALUES (1474, '371427', '夏津县', '371400');
INSERT INTO `cs_district` VALUES (1475, '371428', '武城县', '371400');
INSERT INTO `cs_district` VALUES (1476, '371481', '乐陵市', '371400');
INSERT INTO `cs_district` VALUES (1477, '371482', '禹城市', '371400');
INSERT INTO `cs_district` VALUES (1478, '371501', '市辖区', '371500');
INSERT INTO `cs_district` VALUES (1479, '371502', '东昌府区', '371500');
INSERT INTO `cs_district` VALUES (1480, '371521', '阳谷县', '371500');
INSERT INTO `cs_district` VALUES (1481, '371522', '莘　县', '371500');
INSERT INTO `cs_district` VALUES (1482, '371523', '茌平县', '371500');
INSERT INTO `cs_district` VALUES (1483, '371524', '东阿县', '371500');
INSERT INTO `cs_district` VALUES (1484, '371525', '冠　县', '371500');
INSERT INTO `cs_district` VALUES (1485, '371526', '高唐县', '371500');
INSERT INTO `cs_district` VALUES (1486, '371581', '临清市', '371500');
INSERT INTO `cs_district` VALUES (1487, '371601', '市辖区', '371600');
INSERT INTO `cs_district` VALUES (1488, '371602', '滨城区', '371600');
INSERT INTO `cs_district` VALUES (1489, '371621', '惠民县', '371600');
INSERT INTO `cs_district` VALUES (1490, '371622', '阳信县', '371600');
INSERT INTO `cs_district` VALUES (1491, '371623', '无棣县', '371600');
INSERT INTO `cs_district` VALUES (1492, '371624', '沾化县', '371600');
INSERT INTO `cs_district` VALUES (1493, '371625', '博兴县', '371600');
INSERT INTO `cs_district` VALUES (1494, '371626', '邹平县', '371600');
INSERT INTO `cs_district` VALUES (1495, '371701', '市辖区', '371700');
INSERT INTO `cs_district` VALUES (1496, '371702', '牡丹区', '371700');
INSERT INTO `cs_district` VALUES (1497, '371721', '曹　县', '371700');
INSERT INTO `cs_district` VALUES (1498, '371722', '单　县', '371700');
INSERT INTO `cs_district` VALUES (1499, '371723', '成武县', '371700');
INSERT INTO `cs_district` VALUES (1500, '371724', '巨野县', '371700');
INSERT INTO `cs_district` VALUES (1501, '371725', '郓城县', '371700');
INSERT INTO `cs_district` VALUES (1502, '371726', '鄄城县', '371700');
INSERT INTO `cs_district` VALUES (1503, '371727', '定陶县', '371700');
INSERT INTO `cs_district` VALUES (1504, '371728', '东明县', '371700');
INSERT INTO `cs_district` VALUES (1505, '410101', '市辖区', '410100');
INSERT INTO `cs_district` VALUES (1506, '410102', '中原区', '410100');
INSERT INTO `cs_district` VALUES (1507, '410103', '二七区', '410100');
INSERT INTO `cs_district` VALUES (1508, '410104', '管城回族区', '410100');
INSERT INTO `cs_district` VALUES (1509, '410105', '金水区', '410100');
INSERT INTO `cs_district` VALUES (1510, '410106', '上街区', '410100');
INSERT INTO `cs_district` VALUES (1511, '410108', '邙山区', '410100');
INSERT INTO `cs_district` VALUES (1512, '410122', '中牟县', '410100');
INSERT INTO `cs_district` VALUES (1513, '410181', '巩义市', '410100');
INSERT INTO `cs_district` VALUES (1514, '410182', '荥阳市', '410100');
INSERT INTO `cs_district` VALUES (1515, '410183', '新密市', '410100');
INSERT INTO `cs_district` VALUES (1516, '410184', '新郑市', '410100');
INSERT INTO `cs_district` VALUES (1517, '410185', '登封市', '410100');
INSERT INTO `cs_district` VALUES (1518, '410201', '市辖区', '410200');
INSERT INTO `cs_district` VALUES (1519, '410202', '龙亭区', '410200');
INSERT INTO `cs_district` VALUES (1520, '410203', '顺河回族区', '410200');
INSERT INTO `cs_district` VALUES (1521, '410204', '鼓楼区', '410200');
INSERT INTO `cs_district` VALUES (1522, '410205', '南关区', '410200');
INSERT INTO `cs_district` VALUES (1523, '410211', '郊　区', '410200');
INSERT INTO `cs_district` VALUES (1524, '410221', '杞　县', '410200');
INSERT INTO `cs_district` VALUES (1525, '410222', '通许县', '410200');
INSERT INTO `cs_district` VALUES (1526, '410223', '尉氏县', '410200');
INSERT INTO `cs_district` VALUES (1527, '410224', '开封县', '410200');
INSERT INTO `cs_district` VALUES (1528, '410225', '兰考县', '410200');
INSERT INTO `cs_district` VALUES (1529, '410301', '市辖区', '410300');
INSERT INTO `cs_district` VALUES (1530, '410302', '老城区', '410300');
INSERT INTO `cs_district` VALUES (1531, '410303', '西工区', '410300');
INSERT INTO `cs_district` VALUES (1532, '410304', '廛河回族区', '410300');
INSERT INTO `cs_district` VALUES (1533, '410305', '涧西区', '410300');
INSERT INTO `cs_district` VALUES (1534, '410306', '吉利区', '410300');
INSERT INTO `cs_district` VALUES (1535, '410307', '洛龙区', '410300');
INSERT INTO `cs_district` VALUES (1536, '410322', '孟津县', '410300');
INSERT INTO `cs_district` VALUES (1537, '410323', '新安县', '410300');
INSERT INTO `cs_district` VALUES (1538, '410324', '栾川县', '410300');
INSERT INTO `cs_district` VALUES (1539, '410325', '嵩　县', '410300');
INSERT INTO `cs_district` VALUES (1540, '410326', '汝阳县', '410300');
INSERT INTO `cs_district` VALUES (1541, '410327', '宜阳县', '410300');
INSERT INTO `cs_district` VALUES (1542, '410328', '洛宁县', '410300');
INSERT INTO `cs_district` VALUES (1543, '410329', '伊川县', '410300');
INSERT INTO `cs_district` VALUES (1544, '410381', '偃师市', '410300');
INSERT INTO `cs_district` VALUES (1545, '410401', '市辖区', '410400');
INSERT INTO `cs_district` VALUES (1546, '410402', '新华区', '410400');
INSERT INTO `cs_district` VALUES (1547, '410403', '卫东区', '410400');
INSERT INTO `cs_district` VALUES (1548, '410404', '石龙区', '410400');
INSERT INTO `cs_district` VALUES (1549, '410411', '湛河区', '410400');
INSERT INTO `cs_district` VALUES (1550, '410421', '宝丰县', '410400');
INSERT INTO `cs_district` VALUES (1551, '410422', '叶　县', '410400');
INSERT INTO `cs_district` VALUES (1552, '410423', '鲁山县', '410400');
INSERT INTO `cs_district` VALUES (1553, '410425', '郏　县', '410400');
INSERT INTO `cs_district` VALUES (1554, '410481', '舞钢市', '410400');
INSERT INTO `cs_district` VALUES (1555, '410482', '汝州市', '410400');
INSERT INTO `cs_district` VALUES (1556, '410501', '市辖区', '410500');
INSERT INTO `cs_district` VALUES (1557, '410502', '文峰区', '410500');
INSERT INTO `cs_district` VALUES (1558, '410503', '北关区', '410500');
INSERT INTO `cs_district` VALUES (1559, '410505', '殷都区', '410500');
INSERT INTO `cs_district` VALUES (1560, '410506', '龙安区', '410500');
INSERT INTO `cs_district` VALUES (1561, '410522', '安阳县', '410500');
INSERT INTO `cs_district` VALUES (1562, '410523', '汤阴县', '410500');
INSERT INTO `cs_district` VALUES (1563, '410526', '滑　县', '410500');
INSERT INTO `cs_district` VALUES (1564, '410527', '内黄县', '410500');
INSERT INTO `cs_district` VALUES (1565, '410581', '林州市', '410500');
INSERT INTO `cs_district` VALUES (1566, '410601', '市辖区', '410600');
INSERT INTO `cs_district` VALUES (1567, '410602', '鹤山区', '410600');
INSERT INTO `cs_district` VALUES (1568, '410603', '山城区', '410600');
INSERT INTO `cs_district` VALUES (1569, '410611', '淇滨区', '410600');
INSERT INTO `cs_district` VALUES (1570, '410621', '浚　县', '410600');
INSERT INTO `cs_district` VALUES (1571, '410622', '淇　县', '410600');
INSERT INTO `cs_district` VALUES (1572, '410701', '市辖区', '410700');
INSERT INTO `cs_district` VALUES (1573, '410702', '红旗区', '410700');
INSERT INTO `cs_district` VALUES (1574, '410703', '卫滨区', '410700');
INSERT INTO `cs_district` VALUES (1575, '410704', '凤泉区', '410700');
INSERT INTO `cs_district` VALUES (1576, '410711', '牧野区', '410700');
INSERT INTO `cs_district` VALUES (1577, '410721', '新乡县', '410700');
INSERT INTO `cs_district` VALUES (1578, '410724', '获嘉县', '410700');
INSERT INTO `cs_district` VALUES (1579, '410725', '原阳县', '410700');
INSERT INTO `cs_district` VALUES (1580, '410726', '延津县', '410700');
INSERT INTO `cs_district` VALUES (1581, '410727', '封丘县', '410700');
INSERT INTO `cs_district` VALUES (1582, '410728', '长垣县', '410700');
INSERT INTO `cs_district` VALUES (1583, '410781', '卫辉市', '410700');
INSERT INTO `cs_district` VALUES (1584, '410782', '辉县市', '410700');
INSERT INTO `cs_district` VALUES (1585, '410801', '市辖区', '410800');
INSERT INTO `cs_district` VALUES (1586, '410802', '解放区', '410800');
INSERT INTO `cs_district` VALUES (1587, '410803', '中站区', '410800');
INSERT INTO `cs_district` VALUES (1588, '410804', '马村区', '410800');
INSERT INTO `cs_district` VALUES (1589, '410811', '山阳区', '410800');
INSERT INTO `cs_district` VALUES (1590, '410821', '修武县', '410800');
INSERT INTO `cs_district` VALUES (1591, '410822', '博爱县', '410800');
INSERT INTO `cs_district` VALUES (1592, '410823', '武陟县', '410800');
INSERT INTO `cs_district` VALUES (1593, '410825', '温　县', '410800');
INSERT INTO `cs_district` VALUES (1594, '410881', '济源市', '410800');
INSERT INTO `cs_district` VALUES (1595, '410882', '沁阳市', '410800');
INSERT INTO `cs_district` VALUES (1596, '410883', '孟州市', '410800');
INSERT INTO `cs_district` VALUES (1597, '410901', '市辖区', '410900');
INSERT INTO `cs_district` VALUES (1598, '410902', '华龙区', '410900');
INSERT INTO `cs_district` VALUES (1599, '410922', '清丰县', '410900');
INSERT INTO `cs_district` VALUES (1600, '410923', '南乐县', '410900');
INSERT INTO `cs_district` VALUES (1601, '410926', '范　县', '410900');
INSERT INTO `cs_district` VALUES (1602, '410927', '台前县', '410900');
INSERT INTO `cs_district` VALUES (1603, '410928', '濮阳县', '410900');
INSERT INTO `cs_district` VALUES (1604, '411001', '市辖区', '411000');
INSERT INTO `cs_district` VALUES (1605, '411002', '魏都区', '411000');
INSERT INTO `cs_district` VALUES (1606, '411023', '许昌县', '411000');
INSERT INTO `cs_district` VALUES (1607, '411024', '鄢陵县', '411000');
INSERT INTO `cs_district` VALUES (1608, '411025', '襄城县', '411000');
INSERT INTO `cs_district` VALUES (1609, '411081', '禹州市', '411000');
INSERT INTO `cs_district` VALUES (1610, '411082', '长葛市', '411000');
INSERT INTO `cs_district` VALUES (1611, '411101', '市辖区', '411100');
INSERT INTO `cs_district` VALUES (1612, '411102', '源汇区', '411100');
INSERT INTO `cs_district` VALUES (1613, '411103', '郾城区', '411100');
INSERT INTO `cs_district` VALUES (1614, '411104', '召陵区', '411100');
INSERT INTO `cs_district` VALUES (1615, '411121', '舞阳县', '411100');
INSERT INTO `cs_district` VALUES (1616, '411122', '临颍县', '411100');
INSERT INTO `cs_district` VALUES (1617, '411201', '市辖区', '411200');
INSERT INTO `cs_district` VALUES (1618, '411202', '湖滨区', '411200');
INSERT INTO `cs_district` VALUES (1619, '411221', '渑池县', '411200');
INSERT INTO `cs_district` VALUES (1620, '411222', '陕　县', '411200');
INSERT INTO `cs_district` VALUES (1621, '411224', '卢氏县', '411200');
INSERT INTO `cs_district` VALUES (1622, '411281', '义马市', '411200');
INSERT INTO `cs_district` VALUES (1623, '411282', '灵宝市', '411200');
INSERT INTO `cs_district` VALUES (1624, '411301', '市辖区', '411300');
INSERT INTO `cs_district` VALUES (1625, '411302', '宛城区', '411300');
INSERT INTO `cs_district` VALUES (1626, '411303', '卧龙区', '411300');
INSERT INTO `cs_district` VALUES (1627, '411321', '南召县', '411300');
INSERT INTO `cs_district` VALUES (1628, '411322', '方城县', '411300');
INSERT INTO `cs_district` VALUES (1629, '411323', '西峡县', '411300');
INSERT INTO `cs_district` VALUES (1630, '411324', '镇平县', '411300');
INSERT INTO `cs_district` VALUES (1631, '411325', '内乡县', '411300');
INSERT INTO `cs_district` VALUES (1632, '411326', '淅川县', '411300');
INSERT INTO `cs_district` VALUES (1633, '411327', '社旗县', '411300');
INSERT INTO `cs_district` VALUES (1634, '411328', '唐河县', '411300');
INSERT INTO `cs_district` VALUES (1635, '411329', '新野县', '411300');
INSERT INTO `cs_district` VALUES (1636, '411330', '桐柏县', '411300');
INSERT INTO `cs_district` VALUES (1637, '411381', '邓州市', '411300');
INSERT INTO `cs_district` VALUES (1638, '411401', '市辖区', '411400');
INSERT INTO `cs_district` VALUES (1639, '411402', '梁园区', '411400');
INSERT INTO `cs_district` VALUES (1640, '411403', '睢阳区', '411400');
INSERT INTO `cs_district` VALUES (1641, '411421', '民权县', '411400');
INSERT INTO `cs_district` VALUES (1642, '411422', '睢　县', '411400');
INSERT INTO `cs_district` VALUES (1643, '411423', '宁陵县', '411400');
INSERT INTO `cs_district` VALUES (1644, '411424', '柘城县', '411400');
INSERT INTO `cs_district` VALUES (1645, '411425', '虞城县', '411400');
INSERT INTO `cs_district` VALUES (1646, '411426', '夏邑县', '411400');
INSERT INTO `cs_district` VALUES (1647, '411481', '永城市', '411400');
INSERT INTO `cs_district` VALUES (1648, '411501', '市辖区', '411500');
INSERT INTO `cs_district` VALUES (1649, '411502', '师河区', '411500');
INSERT INTO `cs_district` VALUES (1650, '411503', '平桥区', '411500');
INSERT INTO `cs_district` VALUES (1651, '411521', '罗山县', '411500');
INSERT INTO `cs_district` VALUES (1652, '411522', '光山县', '411500');
INSERT INTO `cs_district` VALUES (1653, '411523', '新　县', '411500');
INSERT INTO `cs_district` VALUES (1654, '411524', '商城县', '411500');
INSERT INTO `cs_district` VALUES (1655, '411525', '固始县', '411500');
INSERT INTO `cs_district` VALUES (1656, '411526', '潢川县', '411500');
INSERT INTO `cs_district` VALUES (1657, '411527', '淮滨县', '411500');
INSERT INTO `cs_district` VALUES (1658, '411528', '息　县', '411500');
INSERT INTO `cs_district` VALUES (1659, '411601', '市辖区', '411600');
INSERT INTO `cs_district` VALUES (1660, '411602', '川汇区', '411600');
INSERT INTO `cs_district` VALUES (1661, '411621', '扶沟县', '411600');
INSERT INTO `cs_district` VALUES (1662, '411622', '西华县', '411600');
INSERT INTO `cs_district` VALUES (1663, '411623', '商水县', '411600');
INSERT INTO `cs_district` VALUES (1664, '411624', '沈丘县', '411600');
INSERT INTO `cs_district` VALUES (1665, '411625', '郸城县', '411600');
INSERT INTO `cs_district` VALUES (1666, '411626', '淮阳县', '411600');
INSERT INTO `cs_district` VALUES (1667, '411627', '太康县', '411600');
INSERT INTO `cs_district` VALUES (1668, '411628', '鹿邑县', '411600');
INSERT INTO `cs_district` VALUES (1669, '411681', '项城市', '411600');
INSERT INTO `cs_district` VALUES (1670, '411701', '市辖区', '411700');
INSERT INTO `cs_district` VALUES (1671, '411702', '驿城区', '411700');
INSERT INTO `cs_district` VALUES (1672, '411721', '西平县', '411700');
INSERT INTO `cs_district` VALUES (1673, '411722', '上蔡县', '411700');
INSERT INTO `cs_district` VALUES (1674, '411723', '平舆县', '411700');
INSERT INTO `cs_district` VALUES (1675, '411724', '正阳县', '411700');
INSERT INTO `cs_district` VALUES (1676, '411725', '确山县', '411700');
INSERT INTO `cs_district` VALUES (1677, '411726', '泌阳县', '411700');
INSERT INTO `cs_district` VALUES (1678, '411727', '汝南县', '411700');
INSERT INTO `cs_district` VALUES (1679, '411728', '遂平县', '411700');
INSERT INTO `cs_district` VALUES (1680, '411729', '新蔡县', '411700');
INSERT INTO `cs_district` VALUES (1681, '420101', '市辖区', '420100');
INSERT INTO `cs_district` VALUES (1682, '420102', '江岸区', '420100');
INSERT INTO `cs_district` VALUES (1683, '420103', '江汉区', '420100');
INSERT INTO `cs_district` VALUES (1684, '420104', '乔口区', '420100');
INSERT INTO `cs_district` VALUES (1685, '420105', '汉阳区', '420100');
INSERT INTO `cs_district` VALUES (1686, '420106', '武昌区', '420100');
INSERT INTO `cs_district` VALUES (1687, '420107', '青山区', '420100');
INSERT INTO `cs_district` VALUES (1688, '420111', '洪山区', '420100');
INSERT INTO `cs_district` VALUES (1689, '420112', '东西湖区', '420100');
INSERT INTO `cs_district` VALUES (1690, '420113', '汉南区', '420100');
INSERT INTO `cs_district` VALUES (1691, '420114', '蔡甸区', '420100');
INSERT INTO `cs_district` VALUES (1692, '420115', '江夏区', '420100');
INSERT INTO `cs_district` VALUES (1693, '420116', '黄陂区', '420100');
INSERT INTO `cs_district` VALUES (1694, '420117', '新洲区', '420100');
INSERT INTO `cs_district` VALUES (1695, '420201', '市辖区', '420200');
INSERT INTO `cs_district` VALUES (1696, '420202', '黄石港区', '420200');
INSERT INTO `cs_district` VALUES (1697, '420203', '西塞山区', '420200');
INSERT INTO `cs_district` VALUES (1698, '420204', '下陆区', '420200');
INSERT INTO `cs_district` VALUES (1699, '420205', '铁山区', '420200');
INSERT INTO `cs_district` VALUES (1700, '420222', '阳新县', '420200');
INSERT INTO `cs_district` VALUES (1701, '420281', '大冶市', '420200');
INSERT INTO `cs_district` VALUES (1702, '420301', '市辖区', '420300');
INSERT INTO `cs_district` VALUES (1703, '420302', '茅箭区', '420300');
INSERT INTO `cs_district` VALUES (1704, '420303', '张湾区', '420300');
INSERT INTO `cs_district` VALUES (1705, '420321', '郧　县', '420300');
INSERT INTO `cs_district` VALUES (1706, '420322', '郧西县', '420300');
INSERT INTO `cs_district` VALUES (1707, '420323', '竹山县', '420300');
INSERT INTO `cs_district` VALUES (1708, '420324', '竹溪县', '420300');
INSERT INTO `cs_district` VALUES (1709, '420325', '房　县', '420300');
INSERT INTO `cs_district` VALUES (1710, '420381', '丹江口市', '420300');
INSERT INTO `cs_district` VALUES (1711, '420501', '市辖区', '420500');
INSERT INTO `cs_district` VALUES (1712, '420502', '西陵区', '420500');
INSERT INTO `cs_district` VALUES (1713, '420503', '伍家岗区', '420500');
INSERT INTO `cs_district` VALUES (1714, '420504', '点军区', '420500');
INSERT INTO `cs_district` VALUES (1715, '420505', '猇亭区', '420500');
INSERT INTO `cs_district` VALUES (1716, '420506', '夷陵区', '420500');
INSERT INTO `cs_district` VALUES (1717, '420525', '远安县', '420500');
INSERT INTO `cs_district` VALUES (1718, '420526', '兴山县', '420500');
INSERT INTO `cs_district` VALUES (1719, '420527', '秭归县', '420500');
INSERT INTO `cs_district` VALUES (1720, '420528', '长阳土家族自治县', '420500');
INSERT INTO `cs_district` VALUES (1721, '420529', '五峰土家族自治县', '420500');
INSERT INTO `cs_district` VALUES (1722, '420581', '宜都市', '420500');
INSERT INTO `cs_district` VALUES (1723, '420582', '当阳市', '420500');
INSERT INTO `cs_district` VALUES (1724, '420583', '枝江市', '420500');
INSERT INTO `cs_district` VALUES (1725, '420601', '市辖区', '420600');
INSERT INTO `cs_district` VALUES (1726, '420602', '襄城区', '420600');
INSERT INTO `cs_district` VALUES (1727, '420606', '樊城区', '420600');
INSERT INTO `cs_district` VALUES (1728, '420607', '襄阳区', '420600');
INSERT INTO `cs_district` VALUES (1729, '420624', '南漳县', '420600');
INSERT INTO `cs_district` VALUES (1730, '420625', '谷城县', '420600');
INSERT INTO `cs_district` VALUES (1731, '420626', '保康县', '420600');
INSERT INTO `cs_district` VALUES (1732, '420682', '老河口市', '420600');
INSERT INTO `cs_district` VALUES (1733, '420683', '枣阳市', '420600');
INSERT INTO `cs_district` VALUES (1734, '420684', '宜城市', '420600');
INSERT INTO `cs_district` VALUES (1735, '420701', '市辖区', '420700');
INSERT INTO `cs_district` VALUES (1736, '420702', '梁子湖区', '420700');
INSERT INTO `cs_district` VALUES (1737, '420703', '华容区', '420700');
INSERT INTO `cs_district` VALUES (1738, '420704', '鄂城区', '420700');
INSERT INTO `cs_district` VALUES (1739, '420801', '市辖区', '420800');
INSERT INTO `cs_district` VALUES (1740, '420802', '东宝区', '420800');
INSERT INTO `cs_district` VALUES (1741, '420804', '掇刀区', '420800');
INSERT INTO `cs_district` VALUES (1742, '420821', '京山县', '420800');
INSERT INTO `cs_district` VALUES (1743, '420822', '沙洋县', '420800');
INSERT INTO `cs_district` VALUES (1744, '420881', '钟祥市', '420800');
INSERT INTO `cs_district` VALUES (1745, '420901', '市辖区', '420900');
INSERT INTO `cs_district` VALUES (1746, '420902', '孝南区', '420900');
INSERT INTO `cs_district` VALUES (1747, '420921', '孝昌县', '420900');
INSERT INTO `cs_district` VALUES (1748, '420922', '大悟县', '420900');
INSERT INTO `cs_district` VALUES (1749, '420923', '云梦县', '420900');
INSERT INTO `cs_district` VALUES (1750, '420981', '应城市', '420900');
INSERT INTO `cs_district` VALUES (1751, '420982', '安陆市', '420900');
INSERT INTO `cs_district` VALUES (1752, '420984', '汉川市', '420900');
INSERT INTO `cs_district` VALUES (1753, '421001', '市辖区', '421000');
INSERT INTO `cs_district` VALUES (1754, '421002', '沙市区', '421000');
INSERT INTO `cs_district` VALUES (1755, '421003', '荆州区', '421000');
INSERT INTO `cs_district` VALUES (1756, '421022', '公安县', '421000');
INSERT INTO `cs_district` VALUES (1757, '421023', '监利县', '421000');
INSERT INTO `cs_district` VALUES (1758, '421024', '江陵县', '421000');
INSERT INTO `cs_district` VALUES (1759, '421081', '石首市', '421000');
INSERT INTO `cs_district` VALUES (1760, '421083', '洪湖市', '421000');
INSERT INTO `cs_district` VALUES (1761, '421087', '松滋市', '421000');
INSERT INTO `cs_district` VALUES (1762, '421101', '市辖区', '421100');
INSERT INTO `cs_district` VALUES (1763, '421102', '黄州区', '421100');
INSERT INTO `cs_district` VALUES (1764, '421121', '团风县', '421100');
INSERT INTO `cs_district` VALUES (1765, '421122', '红安县', '421100');
INSERT INTO `cs_district` VALUES (1766, '421123', '罗田县', '421100');
INSERT INTO `cs_district` VALUES (1767, '421124', '英山县', '421100');
INSERT INTO `cs_district` VALUES (1768, '421125', '浠水县', '421100');
INSERT INTO `cs_district` VALUES (1769, '421126', '蕲春县', '421100');
INSERT INTO `cs_district` VALUES (1770, '421127', '黄梅县', '421100');
INSERT INTO `cs_district` VALUES (1771, '421181', '麻城市', '421100');
INSERT INTO `cs_district` VALUES (1772, '421182', '武穴市', '421100');
INSERT INTO `cs_district` VALUES (1773, '421201', '市辖区', '421200');
INSERT INTO `cs_district` VALUES (1774, '421202', '咸安区', '421200');
INSERT INTO `cs_district` VALUES (1775, '421221', '嘉鱼县', '421200');
INSERT INTO `cs_district` VALUES (1776, '421222', '通城县', '421200');
INSERT INTO `cs_district` VALUES (1777, '421223', '崇阳县', '421200');
INSERT INTO `cs_district` VALUES (1778, '421224', '通山县', '421200');
INSERT INTO `cs_district` VALUES (1779, '421281', '赤壁市', '421200');
INSERT INTO `cs_district` VALUES (1780, '421301', '市辖区', '421300');
INSERT INTO `cs_district` VALUES (1781, '421302', '曾都区', '421300');
INSERT INTO `cs_district` VALUES (1782, '421381', '广水市', '421300');
INSERT INTO `cs_district` VALUES (1783, '422801', '恩施市', '422800');
INSERT INTO `cs_district` VALUES (1784, '422802', '利川市', '422800');
INSERT INTO `cs_district` VALUES (1785, '422822', '建始县', '422800');
INSERT INTO `cs_district` VALUES (1786, '422823', '巴东县', '422800');
INSERT INTO `cs_district` VALUES (1787, '422825', '宣恩县', '422800');
INSERT INTO `cs_district` VALUES (1788, '422826', '咸丰县', '422800');
INSERT INTO `cs_district` VALUES (1789, '422827', '来凤县', '422800');
INSERT INTO `cs_district` VALUES (1790, '422828', '鹤峰县', '422800');
INSERT INTO `cs_district` VALUES (1791, '429004', '仙桃市', '429000');
INSERT INTO `cs_district` VALUES (1792, '429005', '潜江市', '429000');
INSERT INTO `cs_district` VALUES (1793, '429006', '天门市', '429000');
INSERT INTO `cs_district` VALUES (1794, '429021', '神农架林区', '429000');
INSERT INTO `cs_district` VALUES (1795, '430101', '市辖区', '430100');
INSERT INTO `cs_district` VALUES (1796, '430102', '芙蓉区', '430100');
INSERT INTO `cs_district` VALUES (1797, '430103', '天心区', '430100');
INSERT INTO `cs_district` VALUES (1798, '430104', '岳麓区', '430100');
INSERT INTO `cs_district` VALUES (1799, '430105', '开福区', '430100');
INSERT INTO `cs_district` VALUES (1800, '430111', '雨花区', '430100');
INSERT INTO `cs_district` VALUES (1801, '430121', '长沙县', '430100');
INSERT INTO `cs_district` VALUES (1802, '430122', '望城县', '430100');
INSERT INTO `cs_district` VALUES (1803, '430124', '宁乡县', '430100');
INSERT INTO `cs_district` VALUES (1804, '430181', '浏阳市', '430100');
INSERT INTO `cs_district` VALUES (1805, '430201', '市辖区', '430200');
INSERT INTO `cs_district` VALUES (1806, '430202', '荷塘区', '430200');
INSERT INTO `cs_district` VALUES (1807, '430203', '芦淞区', '430200');
INSERT INTO `cs_district` VALUES (1808, '430204', '石峰区', '430200');
INSERT INTO `cs_district` VALUES (1809, '430211', '天元区', '430200');
INSERT INTO `cs_district` VALUES (1810, '430221', '株洲县', '430200');
INSERT INTO `cs_district` VALUES (1811, '430223', '攸　县', '430200');
INSERT INTO `cs_district` VALUES (1812, '430224', '茶陵县', '430200');
INSERT INTO `cs_district` VALUES (1813, '430225', '炎陵县', '430200');
INSERT INTO `cs_district` VALUES (1814, '430281', '醴陵市', '430200');
INSERT INTO `cs_district` VALUES (1815, '430301', '市辖区', '430300');
INSERT INTO `cs_district` VALUES (1816, '430302', '雨湖区', '430300');
INSERT INTO `cs_district` VALUES (1817, '430304', '岳塘区', '430300');
INSERT INTO `cs_district` VALUES (1818, '430321', '湘潭县', '430300');
INSERT INTO `cs_district` VALUES (1819, '430381', '湘乡市', '430300');
INSERT INTO `cs_district` VALUES (1820, '430382', '韶山市', '430300');
INSERT INTO `cs_district` VALUES (1821, '430401', '市辖区', '430400');
INSERT INTO `cs_district` VALUES (1822, '430405', '珠晖区', '430400');
INSERT INTO `cs_district` VALUES (1823, '430406', '雁峰区', '430400');
INSERT INTO `cs_district` VALUES (1824, '430407', '石鼓区', '430400');
INSERT INTO `cs_district` VALUES (1825, '430408', '蒸湘区', '430400');
INSERT INTO `cs_district` VALUES (1826, '430412', '南岳区', '430400');
INSERT INTO `cs_district` VALUES (1827, '430421', '衡阳县', '430400');
INSERT INTO `cs_district` VALUES (1828, '430422', '衡南县', '430400');
INSERT INTO `cs_district` VALUES (1829, '430423', '衡山县', '430400');
INSERT INTO `cs_district` VALUES (1830, '430424', '衡东县', '430400');
INSERT INTO `cs_district` VALUES (1831, '430426', '祁东县', '430400');
INSERT INTO `cs_district` VALUES (1832, '430481', '耒阳市', '430400');
INSERT INTO `cs_district` VALUES (1833, '430482', '常宁市', '430400');
INSERT INTO `cs_district` VALUES (1834, '430501', '市辖区', '430500');
INSERT INTO `cs_district` VALUES (1835, '430502', '双清区', '430500');
INSERT INTO `cs_district` VALUES (1836, '430503', '大祥区', '430500');
INSERT INTO `cs_district` VALUES (1837, '430511', '北塔区', '430500');
INSERT INTO `cs_district` VALUES (1838, '430521', '邵东县', '430500');
INSERT INTO `cs_district` VALUES (1839, '430522', '新邵县', '430500');
INSERT INTO `cs_district` VALUES (1840, '430523', '邵阳县', '430500');
INSERT INTO `cs_district` VALUES (1841, '430524', '隆回县', '430500');
INSERT INTO `cs_district` VALUES (1842, '430525', '洞口县', '430500');
INSERT INTO `cs_district` VALUES (1843, '430527', '绥宁县', '430500');
INSERT INTO `cs_district` VALUES (1844, '430528', '新宁县', '430500');
INSERT INTO `cs_district` VALUES (1845, '430529', '城步苗族自治县', '430500');
INSERT INTO `cs_district` VALUES (1846, '430581', '武冈市', '430500');
INSERT INTO `cs_district` VALUES (1847, '430601', '市辖区', '430600');
INSERT INTO `cs_district` VALUES (1848, '430602', '岳阳楼区', '430600');
INSERT INTO `cs_district` VALUES (1849, '430603', '云溪区', '430600');
INSERT INTO `cs_district` VALUES (1850, '430611', '君山区', '430600');
INSERT INTO `cs_district` VALUES (1851, '430621', '岳阳县', '430600');
INSERT INTO `cs_district` VALUES (1852, '430623', '华容县', '430600');
INSERT INTO `cs_district` VALUES (1853, '430624', '湘阴县', '430600');
INSERT INTO `cs_district` VALUES (1854, '430626', '平江县', '430600');
INSERT INTO `cs_district` VALUES (1855, '430681', '汨罗市', '430600');
INSERT INTO `cs_district` VALUES (1856, '430682', '临湘市', '430600');
INSERT INTO `cs_district` VALUES (1857, '430701', '市辖区', '430700');
INSERT INTO `cs_district` VALUES (1858, '430702', '武陵区', '430700');
INSERT INTO `cs_district` VALUES (1859, '430703', '鼎城区', '430700');
INSERT INTO `cs_district` VALUES (1860, '430721', '安乡县', '430700');
INSERT INTO `cs_district` VALUES (1861, '430722', '汉寿县', '430700');
INSERT INTO `cs_district` VALUES (1862, '430723', '澧　县', '430700');
INSERT INTO `cs_district` VALUES (1863, '430724', '临澧县', '430700');
INSERT INTO `cs_district` VALUES (1864, '430725', '桃源县', '430700');
INSERT INTO `cs_district` VALUES (1865, '430726', '石门县', '430700');
INSERT INTO `cs_district` VALUES (1866, '430781', '津市市', '430700');
INSERT INTO `cs_district` VALUES (1867, '430801', '市辖区', '430800');
INSERT INTO `cs_district` VALUES (1868, '430802', '永定区', '430800');
INSERT INTO `cs_district` VALUES (1869, '430811', '武陵源区', '430800');
INSERT INTO `cs_district` VALUES (1870, '430821', '慈利县', '430800');
INSERT INTO `cs_district` VALUES (1871, '430822', '桑植县', '430800');
INSERT INTO `cs_district` VALUES (1872, '430901', '市辖区', '430900');
INSERT INTO `cs_district` VALUES (1873, '430902', '资阳区', '430900');
INSERT INTO `cs_district` VALUES (1874, '430903', '赫山区', '430900');
INSERT INTO `cs_district` VALUES (1875, '430921', '南　县', '430900');
INSERT INTO `cs_district` VALUES (1876, '430922', '桃江县', '430900');
INSERT INTO `cs_district` VALUES (1877, '430923', '安化县', '430900');
INSERT INTO `cs_district` VALUES (1878, '430981', '沅江市', '430900');
INSERT INTO `cs_district` VALUES (1879, '431001', '市辖区', '431000');
INSERT INTO `cs_district` VALUES (1880, '431002', '北湖区', '431000');
INSERT INTO `cs_district` VALUES (1881, '431003', '苏仙区', '431000');
INSERT INTO `cs_district` VALUES (1882, '431021', '桂阳县', '431000');
INSERT INTO `cs_district` VALUES (1883, '431022', '宜章县', '431000');
INSERT INTO `cs_district` VALUES (1884, '431023', '永兴县', '431000');
INSERT INTO `cs_district` VALUES (1885, '431024', '嘉禾县', '431000');
INSERT INTO `cs_district` VALUES (1886, '431025', '临武县', '431000');
INSERT INTO `cs_district` VALUES (1887, '431026', '汝城县', '431000');
INSERT INTO `cs_district` VALUES (1888, '431027', '桂东县', '431000');
INSERT INTO `cs_district` VALUES (1889, '431028', '安仁县', '431000');
INSERT INTO `cs_district` VALUES (1890, '431081', '资兴市', '431000');
INSERT INTO `cs_district` VALUES (1891, '431101', '市辖区', '431100');
INSERT INTO `cs_district` VALUES (1892, '431102', '芝山区', '431100');
INSERT INTO `cs_district` VALUES (1893, '431103', '冷水滩区', '431100');
INSERT INTO `cs_district` VALUES (1894, '431121', '祁阳县', '431100');
INSERT INTO `cs_district` VALUES (1895, '431122', '东安县', '431100');
INSERT INTO `cs_district` VALUES (1896, '431123', '双牌县', '431100');
INSERT INTO `cs_district` VALUES (1897, '431124', '道　县', '431100');
INSERT INTO `cs_district` VALUES (1898, '431125', '江永县', '431100');
INSERT INTO `cs_district` VALUES (1899, '431126', '宁远县', '431100');
INSERT INTO `cs_district` VALUES (1900, '431127', '蓝山县', '431100');
INSERT INTO `cs_district` VALUES (1901, '431128', '新田县', '431100');
INSERT INTO `cs_district` VALUES (1902, '431129', '江华瑶族自治县', '431100');
INSERT INTO `cs_district` VALUES (1903, '431201', '市辖区', '431200');
INSERT INTO `cs_district` VALUES (1904, '431202', '鹤城区', '431200');
INSERT INTO `cs_district` VALUES (1905, '431221', '中方县', '431200');
INSERT INTO `cs_district` VALUES (1906, '431222', '沅陵县', '431200');
INSERT INTO `cs_district` VALUES (1907, '431223', '辰溪县', '431200');
INSERT INTO `cs_district` VALUES (1908, '431224', '溆浦县', '431200');
INSERT INTO `cs_district` VALUES (1909, '431225', '会同县', '431200');
INSERT INTO `cs_district` VALUES (1910, '431226', '麻阳苗族自治县', '431200');
INSERT INTO `cs_district` VALUES (1911, '431227', '新晃侗族自治县', '431200');
INSERT INTO `cs_district` VALUES (1912, '431228', '芷江侗族自治县', '431200');
INSERT INTO `cs_district` VALUES (1913, '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `cs_district` VALUES (1914, '431230', '通道侗族自治县', '431200');
INSERT INTO `cs_district` VALUES (1915, '431281', '洪江市', '431200');
INSERT INTO `cs_district` VALUES (1916, '431301', '市辖区', '431300');
INSERT INTO `cs_district` VALUES (1917, '431302', '娄星区', '431300');
INSERT INTO `cs_district` VALUES (1918, '431321', '双峰县', '431300');
INSERT INTO `cs_district` VALUES (1919, '431322', '新化县', '431300');
INSERT INTO `cs_district` VALUES (1920, '431381', '冷水江市', '431300');
INSERT INTO `cs_district` VALUES (1921, '431382', '涟源市', '431300');
INSERT INTO `cs_district` VALUES (1922, '433101', '吉首市', '433100');
INSERT INTO `cs_district` VALUES (1923, '433122', '泸溪县', '433100');
INSERT INTO `cs_district` VALUES (1924, '433123', '凤凰县', '433100');
INSERT INTO `cs_district` VALUES (1925, '433124', '花垣县', '433100');
INSERT INTO `cs_district` VALUES (1926, '433125', '保靖县', '433100');
INSERT INTO `cs_district` VALUES (1927, '433126', '古丈县', '433100');
INSERT INTO `cs_district` VALUES (1928, '433127', '永顺县', '433100');
INSERT INTO `cs_district` VALUES (1929, '433130', '龙山县', '433100');
INSERT INTO `cs_district` VALUES (1930, '440101', '市辖区', '440100');
INSERT INTO `cs_district` VALUES (1931, '440102', '东山区', '440100');
INSERT INTO `cs_district` VALUES (1932, '440103', '荔湾区', '440100');
INSERT INTO `cs_district` VALUES (1933, '440104', '越秀区', '440100');
INSERT INTO `cs_district` VALUES (1934, '440105', '海珠区', '440100');
INSERT INTO `cs_district` VALUES (1935, '440106', '天河区', '440100');
INSERT INTO `cs_district` VALUES (1936, '440107', '芳村区', '440100');
INSERT INTO `cs_district` VALUES (1937, '440111', '白云区', '440100');
INSERT INTO `cs_district` VALUES (1938, '440112', '黄埔区', '440100');
INSERT INTO `cs_district` VALUES (1939, '440113', '番禺区', '440100');
INSERT INTO `cs_district` VALUES (1940, '440114', '花都区', '440100');
INSERT INTO `cs_district` VALUES (1941, '440183', '增城市', '440100');
INSERT INTO `cs_district` VALUES (1942, '440184', '从化市', '440100');
INSERT INTO `cs_district` VALUES (1943, '440201', '市辖区', '440200');
INSERT INTO `cs_district` VALUES (1944, '440203', '武江区', '440200');
INSERT INTO `cs_district` VALUES (1945, '440204', '浈江区', '440200');
INSERT INTO `cs_district` VALUES (1946, '440205', '曲江区', '440200');
INSERT INTO `cs_district` VALUES (1947, '440222', '始兴县', '440200');
INSERT INTO `cs_district` VALUES (1948, '440224', '仁化县', '440200');
INSERT INTO `cs_district` VALUES (1949, '440229', '翁源县', '440200');
INSERT INTO `cs_district` VALUES (1950, '440232', '乳源瑶族自治县', '440200');
INSERT INTO `cs_district` VALUES (1951, '440233', '新丰县', '440200');
INSERT INTO `cs_district` VALUES (1952, '440281', '乐昌市', '440200');
INSERT INTO `cs_district` VALUES (1953, '440282', '南雄市', '440200');
INSERT INTO `cs_district` VALUES (1954, '440301', '市辖区', '440300');
INSERT INTO `cs_district` VALUES (1955, '440303', '罗湖区', '440300');
INSERT INTO `cs_district` VALUES (1956, '440304', '福田区', '440300');
INSERT INTO `cs_district` VALUES (1957, '440305', '南山区', '440300');
INSERT INTO `cs_district` VALUES (1958, '440306', '宝安区', '440300');
INSERT INTO `cs_district` VALUES (1959, '440307', '龙岗区', '440300');
INSERT INTO `cs_district` VALUES (1960, '440308', '盐田区', '440300');
INSERT INTO `cs_district` VALUES (1961, '440401', '市辖区', '440400');
INSERT INTO `cs_district` VALUES (1962, '440402', '香洲区', '440400');
INSERT INTO `cs_district` VALUES (1963, '440403', '斗门区', '440400');
INSERT INTO `cs_district` VALUES (1964, '440404', '金湾区', '440400');
INSERT INTO `cs_district` VALUES (1965, '440501', '市辖区', '440500');
INSERT INTO `cs_district` VALUES (1966, '440507', '龙湖区', '440500');
INSERT INTO `cs_district` VALUES (1967, '440511', '金平区', '440500');
INSERT INTO `cs_district` VALUES (1968, '440512', '濠江区', '440500');
INSERT INTO `cs_district` VALUES (1969, '440513', '潮阳区', '440500');
INSERT INTO `cs_district` VALUES (1970, '440514', '潮南区', '440500');
INSERT INTO `cs_district` VALUES (1971, '440515', '澄海区', '440500');
INSERT INTO `cs_district` VALUES (1972, '440523', '南澳县', '440500');
INSERT INTO `cs_district` VALUES (1973, '440601', '市辖区', '440600');
INSERT INTO `cs_district` VALUES (1974, '440604', '禅城区', '440600');
INSERT INTO `cs_district` VALUES (1975, '440605', '南海区', '440600');
INSERT INTO `cs_district` VALUES (1976, '440606', '顺德区', '440600');
INSERT INTO `cs_district` VALUES (1977, '440607', '三水区', '440600');
INSERT INTO `cs_district` VALUES (1978, '440608', '高明区', '440600');
INSERT INTO `cs_district` VALUES (1979, '440701', '市辖区', '440700');
INSERT INTO `cs_district` VALUES (1980, '440703', '蓬江区', '440700');
INSERT INTO `cs_district` VALUES (1981, '440704', '江海区', '440700');
INSERT INTO `cs_district` VALUES (1982, '440705', '新会区', '440700');
INSERT INTO `cs_district` VALUES (1983, '440781', '台山市', '440700');
INSERT INTO `cs_district` VALUES (1984, '440783', '开平市', '440700');
INSERT INTO `cs_district` VALUES (1985, '440784', '鹤山市', '440700');
INSERT INTO `cs_district` VALUES (1986, '440785', '恩平市', '440700');
INSERT INTO `cs_district` VALUES (1987, '440801', '市辖区', '440800');
INSERT INTO `cs_district` VALUES (1988, '440802', '赤坎区', '440800');
INSERT INTO `cs_district` VALUES (1989, '440803', '霞山区', '440800');
INSERT INTO `cs_district` VALUES (1990, '440804', '坡头区', '440800');
INSERT INTO `cs_district` VALUES (1991, '440811', '麻章区', '440800');
INSERT INTO `cs_district` VALUES (1992, '440823', '遂溪县', '440800');
INSERT INTO `cs_district` VALUES (1993, '440825', '徐闻县', '440800');
INSERT INTO `cs_district` VALUES (1994, '440881', '廉江市', '440800');
INSERT INTO `cs_district` VALUES (1995, '440882', '雷州市', '440800');
INSERT INTO `cs_district` VALUES (1996, '440883', '吴川市', '440800');
INSERT INTO `cs_district` VALUES (1997, '440901', '市辖区', '440900');
INSERT INTO `cs_district` VALUES (1998, '440902', '茂南区', '440900');
INSERT INTO `cs_district` VALUES (1999, '440903', '茂港区', '440900');
INSERT INTO `cs_district` VALUES (2000, '440923', '电白县', '440900');
INSERT INTO `cs_district` VALUES (2001, '440981', '高州市', '440900');
INSERT INTO `cs_district` VALUES (2002, '440982', '化州市', '440900');
INSERT INTO `cs_district` VALUES (2003, '440983', '信宜市', '440900');
INSERT INTO `cs_district` VALUES (2004, '441201', '市辖区', '441200');
INSERT INTO `cs_district` VALUES (2005, '441202', '端州区', '441200');
INSERT INTO `cs_district` VALUES (2006, '441203', '鼎湖区', '441200');
INSERT INTO `cs_district` VALUES (2007, '441223', '广宁县', '441200');
INSERT INTO `cs_district` VALUES (2008, '441224', '怀集县', '441200');
INSERT INTO `cs_district` VALUES (2009, '441225', '封开县', '441200');
INSERT INTO `cs_district` VALUES (2010, '441226', '德庆县', '441200');
INSERT INTO `cs_district` VALUES (2011, '441283', '高要市', '441200');
INSERT INTO `cs_district` VALUES (2012, '441284', '四会市', '441200');
INSERT INTO `cs_district` VALUES (2013, '441301', '市辖区', '441300');
INSERT INTO `cs_district` VALUES (2014, '441302', '惠城区', '441300');
INSERT INTO `cs_district` VALUES (2015, '441303', '惠阳区', '441300');
INSERT INTO `cs_district` VALUES (2016, '441322', '博罗县', '441300');
INSERT INTO `cs_district` VALUES (2017, '441323', '惠东县', '441300');
INSERT INTO `cs_district` VALUES (2018, '441324', '龙门县', '441300');
INSERT INTO `cs_district` VALUES (2019, '441401', '市辖区', '441400');
INSERT INTO `cs_district` VALUES (2020, '441402', '梅江区', '441400');
INSERT INTO `cs_district` VALUES (2021, '441421', '梅　县', '441400');
INSERT INTO `cs_district` VALUES (2022, '441422', '大埔县', '441400');
INSERT INTO `cs_district` VALUES (2023, '441423', '丰顺县', '441400');
INSERT INTO `cs_district` VALUES (2024, '441424', '五华县', '441400');
INSERT INTO `cs_district` VALUES (2025, '441426', '平远县', '441400');
INSERT INTO `cs_district` VALUES (2026, '441427', '蕉岭县', '441400');
INSERT INTO `cs_district` VALUES (2027, '441481', '兴宁市', '441400');
INSERT INTO `cs_district` VALUES (2028, '441501', '市辖区', '441500');
INSERT INTO `cs_district` VALUES (2029, '441502', '城　区', '441500');
INSERT INTO `cs_district` VALUES (2030, '441521', '海丰县', '441500');
INSERT INTO `cs_district` VALUES (2031, '441523', '陆河县', '441500');
INSERT INTO `cs_district` VALUES (2032, '441581', '陆丰市', '441500');
INSERT INTO `cs_district` VALUES (2033, '441601', '市辖区', '441600');
INSERT INTO `cs_district` VALUES (2034, '441602', '源城区', '441600');
INSERT INTO `cs_district` VALUES (2035, '441621', '紫金县', '441600');
INSERT INTO `cs_district` VALUES (2036, '441622', '龙川县', '441600');
INSERT INTO `cs_district` VALUES (2037, '441623', '连平县', '441600');
INSERT INTO `cs_district` VALUES (2038, '441624', '和平县', '441600');
INSERT INTO `cs_district` VALUES (2039, '441625', '东源县', '441600');
INSERT INTO `cs_district` VALUES (2040, '441701', '市辖区', '441700');
INSERT INTO `cs_district` VALUES (2041, '441702', '江城区', '441700');
INSERT INTO `cs_district` VALUES (2042, '441721', '阳西县', '441700');
INSERT INTO `cs_district` VALUES (2043, '441723', '阳东县', '441700');
INSERT INTO `cs_district` VALUES (2044, '441781', '阳春市', '441700');
INSERT INTO `cs_district` VALUES (2045, '441801', '市辖区', '441800');
INSERT INTO `cs_district` VALUES (2046, '441802', '清城区', '441800');
INSERT INTO `cs_district` VALUES (2047, '441821', '佛冈县', '441800');
INSERT INTO `cs_district` VALUES (2048, '441823', '阳山县', '441800');
INSERT INTO `cs_district` VALUES (2049, '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `cs_district` VALUES (2050, '441826', '连南瑶族自治县', '441800');
INSERT INTO `cs_district` VALUES (2051, '441827', '清新县', '441800');
INSERT INTO `cs_district` VALUES (2052, '441881', '英德市', '441800');
INSERT INTO `cs_district` VALUES (2053, '441882', '连州市', '441800');
INSERT INTO `cs_district` VALUES (2054, '445101', '市辖区', '445100');
INSERT INTO `cs_district` VALUES (2055, '445102', '湘桥区', '445100');
INSERT INTO `cs_district` VALUES (2056, '445121', '潮安县', '445100');
INSERT INTO `cs_district` VALUES (2057, '445122', '饶平县', '445100');
INSERT INTO `cs_district` VALUES (2058, '445201', '市辖区', '445200');
INSERT INTO `cs_district` VALUES (2059, '445202', '榕城区', '445200');
INSERT INTO `cs_district` VALUES (2060, '445221', '揭东县', '445200');
INSERT INTO `cs_district` VALUES (2061, '445222', '揭西县', '445200');
INSERT INTO `cs_district` VALUES (2062, '445224', '惠来县', '445200');
INSERT INTO `cs_district` VALUES (2063, '445281', '普宁市', '445200');
INSERT INTO `cs_district` VALUES (2064, '445301', '市辖区', '445300');
INSERT INTO `cs_district` VALUES (2065, '445302', '云城区', '445300');
INSERT INTO `cs_district` VALUES (2066, '445321', '新兴县', '445300');
INSERT INTO `cs_district` VALUES (2067, '445322', '郁南县', '445300');
INSERT INTO `cs_district` VALUES (2068, '445323', '云安县', '445300');
INSERT INTO `cs_district` VALUES (2069, '445381', '罗定市', '445300');
INSERT INTO `cs_district` VALUES (2070, '450101', '市辖区', '450100');
INSERT INTO `cs_district` VALUES (2071, '450102', '兴宁区', '450100');
INSERT INTO `cs_district` VALUES (2072, '450103', '青秀区', '450100');
INSERT INTO `cs_district` VALUES (2073, '450105', '江南区', '450100');
INSERT INTO `cs_district` VALUES (2074, '450107', '西乡塘区', '450100');
INSERT INTO `cs_district` VALUES (2075, '450108', '良庆区', '450100');
INSERT INTO `cs_district` VALUES (2076, '450109', '邕宁区', '450100');
INSERT INTO `cs_district` VALUES (2077, '450122', '武鸣县', '450100');
INSERT INTO `cs_district` VALUES (2078, '450123', '隆安县', '450100');
INSERT INTO `cs_district` VALUES (2079, '450124', '马山县', '450100');
INSERT INTO `cs_district` VALUES (2080, '450125', '上林县', '450100');
INSERT INTO `cs_district` VALUES (2081, '450126', '宾阳县', '450100');
INSERT INTO `cs_district` VALUES (2082, '450127', '横　县', '450100');
INSERT INTO `cs_district` VALUES (2083, '450201', '市辖区', '450200');
INSERT INTO `cs_district` VALUES (2084, '450202', '城中区', '450200');
INSERT INTO `cs_district` VALUES (2085, '450203', '鱼峰区', '450200');
INSERT INTO `cs_district` VALUES (2086, '450204', '柳南区', '450200');
INSERT INTO `cs_district` VALUES (2087, '450205', '柳北区', '450200');
INSERT INTO `cs_district` VALUES (2088, '450221', '柳江县', '450200');
INSERT INTO `cs_district` VALUES (2089, '450222', '柳城县', '450200');
INSERT INTO `cs_district` VALUES (2090, '450223', '鹿寨县', '450200');
INSERT INTO `cs_district` VALUES (2091, '450224', '融安县', '450200');
INSERT INTO `cs_district` VALUES (2092, '450225', '融水苗族自治县', '450200');
INSERT INTO `cs_district` VALUES (2093, '450226', '三江侗族自治县', '450200');
INSERT INTO `cs_district` VALUES (2094, '450301', '市辖区', '450300');
INSERT INTO `cs_district` VALUES (2095, '450302', '秀峰区', '450300');
INSERT INTO `cs_district` VALUES (2096, '450303', '叠彩区', '450300');
INSERT INTO `cs_district` VALUES (2097, '450304', '象山区', '450300');
INSERT INTO `cs_district` VALUES (2098, '450305', '七星区', '450300');
INSERT INTO `cs_district` VALUES (2099, '450311', '雁山区', '450300');
INSERT INTO `cs_district` VALUES (2100, '450321', '阳朔县', '450300');
INSERT INTO `cs_district` VALUES (2101, '450322', '临桂县', '450300');
INSERT INTO `cs_district` VALUES (2102, '450323', '灵川县', '450300');
INSERT INTO `cs_district` VALUES (2103, '450324', '全州县', '450300');
INSERT INTO `cs_district` VALUES (2104, '450325', '兴安县', '450300');
INSERT INTO `cs_district` VALUES (2105, '450326', '永福县', '450300');
INSERT INTO `cs_district` VALUES (2106, '450327', '灌阳县', '450300');
INSERT INTO `cs_district` VALUES (2107, '450328', '龙胜各族自治县', '450300');
INSERT INTO `cs_district` VALUES (2108, '450329', '资源县', '450300');
INSERT INTO `cs_district` VALUES (2109, '450330', '平乐县', '450300');
INSERT INTO `cs_district` VALUES (2110, '450331', '荔蒲县', '450300');
INSERT INTO `cs_district` VALUES (2111, '450332', '恭城瑶族自治县', '450300');
INSERT INTO `cs_district` VALUES (2112, '450401', '市辖区', '450400');
INSERT INTO `cs_district` VALUES (2113, '450403', '万秀区', '450400');
INSERT INTO `cs_district` VALUES (2114, '450404', '蝶山区', '450400');
INSERT INTO `cs_district` VALUES (2115, '450405', '长洲区', '450400');
INSERT INTO `cs_district` VALUES (2116, '450421', '苍梧县', '450400');
INSERT INTO `cs_district` VALUES (2117, '450422', '藤　县', '450400');
INSERT INTO `cs_district` VALUES (2118, '450423', '蒙山县', '450400');
INSERT INTO `cs_district` VALUES (2119, '450481', '岑溪市', '450400');
INSERT INTO `cs_district` VALUES (2120, '450501', '市辖区', '450500');
INSERT INTO `cs_district` VALUES (2121, '450502', '海城区', '450500');
INSERT INTO `cs_district` VALUES (2122, '450503', '银海区', '450500');
INSERT INTO `cs_district` VALUES (2123, '450512', '铁山港区', '450500');
INSERT INTO `cs_district` VALUES (2124, '450521', '合浦县', '450500');
INSERT INTO `cs_district` VALUES (2125, '450601', '市辖区', '450600');
INSERT INTO `cs_district` VALUES (2126, '450602', '港口区', '450600');
INSERT INTO `cs_district` VALUES (2127, '450603', '防城区', '450600');
INSERT INTO `cs_district` VALUES (2128, '450621', '上思县', '450600');
INSERT INTO `cs_district` VALUES (2129, '450681', '东兴市', '450600');
INSERT INTO `cs_district` VALUES (2130, '450701', '市辖区', '450700');
INSERT INTO `cs_district` VALUES (2131, '450702', '钦南区', '450700');
INSERT INTO `cs_district` VALUES (2132, '450703', '钦北区', '450700');
INSERT INTO `cs_district` VALUES (2133, '450721', '灵山县', '450700');
INSERT INTO `cs_district` VALUES (2134, '450722', '浦北县', '450700');
INSERT INTO `cs_district` VALUES (2135, '450801', '市辖区', '450800');
INSERT INTO `cs_district` VALUES (2136, '450802', '港北区', '450800');
INSERT INTO `cs_district` VALUES (2137, '450803', '港南区', '450800');
INSERT INTO `cs_district` VALUES (2138, '450804', '覃塘区', '450800');
INSERT INTO `cs_district` VALUES (2139, '450821', '平南县', '450800');
INSERT INTO `cs_district` VALUES (2140, '450881', '桂平市', '450800');
INSERT INTO `cs_district` VALUES (2141, '450901', '市辖区', '450900');
INSERT INTO `cs_district` VALUES (2142, '450902', '玉州区', '450900');
INSERT INTO `cs_district` VALUES (2143, '450921', '容　县', '450900');
INSERT INTO `cs_district` VALUES (2144, '450922', '陆川县', '450900');
INSERT INTO `cs_district` VALUES (2145, '450923', '博白县', '450900');
INSERT INTO `cs_district` VALUES (2146, '450924', '兴业县', '450900');
INSERT INTO `cs_district` VALUES (2147, '450981', '北流市', '450900');
INSERT INTO `cs_district` VALUES (2148, '451001', '市辖区', '451000');
INSERT INTO `cs_district` VALUES (2149, '451002', '右江区', '451000');
INSERT INTO `cs_district` VALUES (2150, '451021', '田阳县', '451000');
INSERT INTO `cs_district` VALUES (2151, '451022', '田东县', '451000');
INSERT INTO `cs_district` VALUES (2152, '451023', '平果县', '451000');
INSERT INTO `cs_district` VALUES (2153, '451024', '德保县', '451000');
INSERT INTO `cs_district` VALUES (2154, '451025', '靖西县', '451000');
INSERT INTO `cs_district` VALUES (2155, '451026', '那坡县', '451000');
INSERT INTO `cs_district` VALUES (2156, '451027', '凌云县', '451000');
INSERT INTO `cs_district` VALUES (2157, '451028', '乐业县', '451000');
INSERT INTO `cs_district` VALUES (2158, '451029', '田林县', '451000');
INSERT INTO `cs_district` VALUES (2159, '451030', '西林县', '451000');
INSERT INTO `cs_district` VALUES (2160, '451031', '隆林各族自治县', '451000');
INSERT INTO `cs_district` VALUES (2161, '451101', '市辖区', '451100');
INSERT INTO `cs_district` VALUES (2162, '451102', '八步区', '451100');
INSERT INTO `cs_district` VALUES (2163, '451121', '昭平县', '451100');
INSERT INTO `cs_district` VALUES (2164, '451122', '钟山县', '451100');
INSERT INTO `cs_district` VALUES (2165, '451123', '富川瑶族自治县', '451100');
INSERT INTO `cs_district` VALUES (2166, '451201', '市辖区', '451200');
INSERT INTO `cs_district` VALUES (2167, '451202', '金城江区', '451200');
INSERT INTO `cs_district` VALUES (2168, '451221', '南丹县', '451200');
INSERT INTO `cs_district` VALUES (2169, '451222', '天峨县', '451200');
INSERT INTO `cs_district` VALUES (2170, '451223', '凤山县', '451200');
INSERT INTO `cs_district` VALUES (2171, '451224', '东兰县', '451200');
INSERT INTO `cs_district` VALUES (2172, '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `cs_district` VALUES (2173, '451226', '环江毛南族自治县', '451200');
INSERT INTO `cs_district` VALUES (2174, '451227', '巴马瑶族自治县', '451200');
INSERT INTO `cs_district` VALUES (2175, '451228', '都安瑶族自治县', '451200');
INSERT INTO `cs_district` VALUES (2176, '451229', '大化瑶族自治县', '451200');
INSERT INTO `cs_district` VALUES (2177, '451281', '宜州市', '451200');
INSERT INTO `cs_district` VALUES (2178, '451301', '市辖区', '451300');
INSERT INTO `cs_district` VALUES (2179, '451302', '兴宾区', '451300');
INSERT INTO `cs_district` VALUES (2180, '451321', '忻城县', '451300');
INSERT INTO `cs_district` VALUES (2181, '451322', '象州县', '451300');
INSERT INTO `cs_district` VALUES (2182, '451323', '武宣县', '451300');
INSERT INTO `cs_district` VALUES (2183, '451324', '金秀瑶族自治县', '451300');
INSERT INTO `cs_district` VALUES (2184, '451381', '合山市', '451300');
INSERT INTO `cs_district` VALUES (2185, '451401', '市辖区', '451400');
INSERT INTO `cs_district` VALUES (2186, '451402', '江洲区', '451400');
INSERT INTO `cs_district` VALUES (2187, '451421', '扶绥县', '451400');
INSERT INTO `cs_district` VALUES (2188, '451422', '宁明县', '451400');
INSERT INTO `cs_district` VALUES (2189, '451423', '龙州县', '451400');
INSERT INTO `cs_district` VALUES (2190, '451424', '大新县', '451400');
INSERT INTO `cs_district` VALUES (2191, '451425', '天等县', '451400');
INSERT INTO `cs_district` VALUES (2192, '451481', '凭祥市', '451400');
INSERT INTO `cs_district` VALUES (2193, '460101', '市辖区', '460100');
INSERT INTO `cs_district` VALUES (2194, '460105', '秀英区', '460100');
INSERT INTO `cs_district` VALUES (2195, '460106', '龙华区', '460100');
INSERT INTO `cs_district` VALUES (2196, '460107', '琼山区', '460100');
INSERT INTO `cs_district` VALUES (2197, '460108', '美兰区', '460100');
INSERT INTO `cs_district` VALUES (2198, '460201', '市辖区', '460200');
INSERT INTO `cs_district` VALUES (2199, '469001', '五指山市', '469000');
INSERT INTO `cs_district` VALUES (2200, '469002', '琼海市', '469000');
INSERT INTO `cs_district` VALUES (2201, '469003', '儋州市', '469000');
INSERT INTO `cs_district` VALUES (2202, '469005', '文昌市', '469000');
INSERT INTO `cs_district` VALUES (2203, '469006', '万宁市', '469000');
INSERT INTO `cs_district` VALUES (2204, '469007', '东方市', '469000');
INSERT INTO `cs_district` VALUES (2205, '469025', '定安县', '469000');
INSERT INTO `cs_district` VALUES (2206, '469026', '屯昌县', '469000');
INSERT INTO `cs_district` VALUES (2207, '469027', '澄迈县', '469000');
INSERT INTO `cs_district` VALUES (2208, '469028', '临高县', '469000');
INSERT INTO `cs_district` VALUES (2209, '469030', '白沙黎族自治县', '469000');
INSERT INTO `cs_district` VALUES (2210, '469031', '昌江黎族自治县', '469000');
INSERT INTO `cs_district` VALUES (2211, '469033', '乐东黎族自治县', '469000');
INSERT INTO `cs_district` VALUES (2212, '469034', '陵水黎族自治县', '469000');
INSERT INTO `cs_district` VALUES (2213, '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `cs_district` VALUES (2214, '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `cs_district` VALUES (2215, '469037', '西沙群岛', '469000');
INSERT INTO `cs_district` VALUES (2216, '469038', '南沙群岛', '469000');
INSERT INTO `cs_district` VALUES (2217, '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `cs_district` VALUES (2218, '500101', '万州区', '500100');
INSERT INTO `cs_district` VALUES (2219, '500102', '涪陵区', '500100');
INSERT INTO `cs_district` VALUES (2220, '500103', '渝中区', '500100');
INSERT INTO `cs_district` VALUES (2221, '500104', '大渡口区', '500100');
INSERT INTO `cs_district` VALUES (2222, '500105', '江北区', '500100');
INSERT INTO `cs_district` VALUES (2223, '500106', '沙坪坝区', '500100');
INSERT INTO `cs_district` VALUES (2224, '500107', '九龙坡区', '500100');
INSERT INTO `cs_district` VALUES (2225, '500108', '南岸区', '500100');
INSERT INTO `cs_district` VALUES (2226, '500109', '北碚区', '500100');
INSERT INTO `cs_district` VALUES (2227, '500110', '万盛区', '500100');
INSERT INTO `cs_district` VALUES (2228, '500111', '双桥区', '500100');
INSERT INTO `cs_district` VALUES (2229, '500112', '渝北区', '500100');
INSERT INTO `cs_district` VALUES (2230, '500113', '巴南区', '500100');
INSERT INTO `cs_district` VALUES (2231, '500114', '黔江区', '500100');
INSERT INTO `cs_district` VALUES (2232, '500115', '长寿区', '500100');
INSERT INTO `cs_district` VALUES (2233, '500222', '綦江县', '500200');
INSERT INTO `cs_district` VALUES (2234, '500223', '潼南县', '500200');
INSERT INTO `cs_district` VALUES (2235, '500224', '铜梁县', '500200');
INSERT INTO `cs_district` VALUES (2236, '500225', '大足县', '500200');
INSERT INTO `cs_district` VALUES (2237, '500226', '荣昌县', '500200');
INSERT INTO `cs_district` VALUES (2238, '500227', '璧山县', '500200');
INSERT INTO `cs_district` VALUES (2239, '500228', '梁平县', '500200');
INSERT INTO `cs_district` VALUES (2240, '500229', '城口县', '500200');
INSERT INTO `cs_district` VALUES (2241, '500230', '丰都县', '500200');
INSERT INTO `cs_district` VALUES (2242, '500231', '垫江县', '500200');
INSERT INTO `cs_district` VALUES (2243, '500232', '武隆县', '500200');
INSERT INTO `cs_district` VALUES (2244, '500233', '忠　县', '500200');
INSERT INTO `cs_district` VALUES (2245, '500234', '开　县', '500200');
INSERT INTO `cs_district` VALUES (2246, '500235', '云阳县', '500200');
INSERT INTO `cs_district` VALUES (2247, '500236', '奉节县', '500200');
INSERT INTO `cs_district` VALUES (2248, '500237', '巫山县', '500200');
INSERT INTO `cs_district` VALUES (2249, '500238', '巫溪县', '500200');
INSERT INTO `cs_district` VALUES (2250, '500240', '石柱土家族自治县', '500200');
INSERT INTO `cs_district` VALUES (2251, '500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `cs_district` VALUES (2252, '500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `cs_district` VALUES (2253, '500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `cs_district` VALUES (2254, '500381', '江津市', '500300');
INSERT INTO `cs_district` VALUES (2255, '500382', '合川市', '500300');
INSERT INTO `cs_district` VALUES (2256, '500383', '永川市', '500300');
INSERT INTO `cs_district` VALUES (2257, '500384', '南川市', '500300');
INSERT INTO `cs_district` VALUES (2258, '510101', '市辖区', '510100');
INSERT INTO `cs_district` VALUES (2259, '510104', '锦江区', '510100');
INSERT INTO `cs_district` VALUES (2260, '510105', '青羊区', '510100');
INSERT INTO `cs_district` VALUES (2261, '510106', '金牛区', '510100');
INSERT INTO `cs_district` VALUES (2262, '510107', '武侯区', '510100');
INSERT INTO `cs_district` VALUES (2263, '510108', '成华区', '510100');
INSERT INTO `cs_district` VALUES (2264, '510112', '龙泉驿区', '510100');
INSERT INTO `cs_district` VALUES (2265, '510113', '青白江区', '510100');
INSERT INTO `cs_district` VALUES (2266, '510114', '新都区', '510100');
INSERT INTO `cs_district` VALUES (2267, '510115', '温江县', '510100');
INSERT INTO `cs_district` VALUES (2268, '510121', '金堂县', '510100');
INSERT INTO `cs_district` VALUES (2269, '510122', '双流县', '510100');
INSERT INTO `cs_district` VALUES (2270, '510124', '郫　县', '510100');
INSERT INTO `cs_district` VALUES (2271, '510129', '大邑县', '510100');
INSERT INTO `cs_district` VALUES (2272, '510131', '蒲江县', '510100');
INSERT INTO `cs_district` VALUES (2273, '510132', '新津县', '510100');
INSERT INTO `cs_district` VALUES (2274, '510181', '都江堰市', '510100');
INSERT INTO `cs_district` VALUES (2275, '510182', '彭州市', '510100');
INSERT INTO `cs_district` VALUES (2276, '510183', '邛崃市', '510100');
INSERT INTO `cs_district` VALUES (2277, '510184', '崇州市', '510100');
INSERT INTO `cs_district` VALUES (2278, '510301', '市辖区', '510300');
INSERT INTO `cs_district` VALUES (2279, '510302', '自流井区', '510300');
INSERT INTO `cs_district` VALUES (2280, '510303', '贡井区', '510300');
INSERT INTO `cs_district` VALUES (2281, '510304', '大安区', '510300');
INSERT INTO `cs_district` VALUES (2282, '510311', '沿滩区', '510300');
INSERT INTO `cs_district` VALUES (2283, '510321', '荣　县', '510300');
INSERT INTO `cs_district` VALUES (2284, '510322', '富顺县', '510300');
INSERT INTO `cs_district` VALUES (2285, '510401', '市辖区', '510400');
INSERT INTO `cs_district` VALUES (2286, '510402', '东　区', '510400');
INSERT INTO `cs_district` VALUES (2287, '510403', '西　区', '510400');
INSERT INTO `cs_district` VALUES (2288, '510411', '仁和区', '510400');
INSERT INTO `cs_district` VALUES (2289, '510421', '米易县', '510400');
INSERT INTO `cs_district` VALUES (2290, '510422', '盐边县', '510400');
INSERT INTO `cs_district` VALUES (2291, '510501', '市辖区', '510500');
INSERT INTO `cs_district` VALUES (2292, '510502', '江阳区', '510500');
INSERT INTO `cs_district` VALUES (2293, '510503', '纳溪区', '510500');
INSERT INTO `cs_district` VALUES (2294, '510504', '龙马潭区', '510500');
INSERT INTO `cs_district` VALUES (2295, '510521', '泸　县', '510500');
INSERT INTO `cs_district` VALUES (2296, '510522', '合江县', '510500');
INSERT INTO `cs_district` VALUES (2297, '510524', '叙永县', '510500');
INSERT INTO `cs_district` VALUES (2298, '510525', '古蔺县', '510500');
INSERT INTO `cs_district` VALUES (2299, '510601', '市辖区', '510600');
INSERT INTO `cs_district` VALUES (2300, '510603', '旌阳区', '510600');
INSERT INTO `cs_district` VALUES (2301, '510623', '中江县', '510600');
INSERT INTO `cs_district` VALUES (2302, '510626', '罗江县', '510600');
INSERT INTO `cs_district` VALUES (2303, '510681', '广汉市', '510600');
INSERT INTO `cs_district` VALUES (2304, '510682', '什邡市', '510600');
INSERT INTO `cs_district` VALUES (2305, '510683', '绵竹市', '510600');
INSERT INTO `cs_district` VALUES (2306, '510701', '市辖区', '510700');
INSERT INTO `cs_district` VALUES (2307, '510703', '涪城区', '510700');
INSERT INTO `cs_district` VALUES (2308, '510704', '游仙区', '510700');
INSERT INTO `cs_district` VALUES (2309, '510722', '三台县', '510700');
INSERT INTO `cs_district` VALUES (2310, '510723', '盐亭县', '510700');
INSERT INTO `cs_district` VALUES (2311, '510724', '安　县', '510700');
INSERT INTO `cs_district` VALUES (2312, '510725', '梓潼县', '510700');
INSERT INTO `cs_district` VALUES (2313, '510726', '北川羌族自治县', '510700');
INSERT INTO `cs_district` VALUES (2314, '510727', '平武县', '510700');
INSERT INTO `cs_district` VALUES (2315, '510781', '江油市', '510700');
INSERT INTO `cs_district` VALUES (2316, '510801', '市辖区', '510800');
INSERT INTO `cs_district` VALUES (2317, '510802', '市中区', '510800');
INSERT INTO `cs_district` VALUES (2318, '510811', '元坝区', '510800');
INSERT INTO `cs_district` VALUES (2319, '510812', '朝天区', '510800');
INSERT INTO `cs_district` VALUES (2320, '510821', '旺苍县', '510800');
INSERT INTO `cs_district` VALUES (2321, '510822', '青川县', '510800');
INSERT INTO `cs_district` VALUES (2322, '510823', '剑阁县', '510800');
INSERT INTO `cs_district` VALUES (2323, '510824', '苍溪县', '510800');
INSERT INTO `cs_district` VALUES (2324, '510901', '市辖区', '510900');
INSERT INTO `cs_district` VALUES (2325, '510903', '船山区', '510900');
INSERT INTO `cs_district` VALUES (2326, '510904', '安居区', '510900');
INSERT INTO `cs_district` VALUES (2327, '510921', '蓬溪县', '510900');
INSERT INTO `cs_district` VALUES (2328, '510922', '射洪县', '510900');
INSERT INTO `cs_district` VALUES (2329, '510923', '大英县', '510900');
INSERT INTO `cs_district` VALUES (2330, '511001', '市辖区', '511000');
INSERT INTO `cs_district` VALUES (2331, '511002', '市中区', '511000');
INSERT INTO `cs_district` VALUES (2332, '511011', '东兴区', '511000');
INSERT INTO `cs_district` VALUES (2333, '511024', '威远县', '511000');
INSERT INTO `cs_district` VALUES (2334, '511025', '资中县', '511000');
INSERT INTO `cs_district` VALUES (2335, '511028', '隆昌县', '511000');
INSERT INTO `cs_district` VALUES (2336, '511101', '市辖区', '511100');
INSERT INTO `cs_district` VALUES (2337, '511102', '市中区', '511100');
INSERT INTO `cs_district` VALUES (2338, '511111', '沙湾区', '511100');
INSERT INTO `cs_district` VALUES (2339, '511112', '五通桥区', '511100');
INSERT INTO `cs_district` VALUES (2340, '511113', '金口河区', '511100');
INSERT INTO `cs_district` VALUES (2341, '511123', '犍为县', '511100');
INSERT INTO `cs_district` VALUES (2342, '511124', '井研县', '511100');
INSERT INTO `cs_district` VALUES (2343, '511126', '夹江县', '511100');
INSERT INTO `cs_district` VALUES (2344, '511129', '沐川县', '511100');
INSERT INTO `cs_district` VALUES (2345, '511132', '峨边彝族自治县', '511100');
INSERT INTO `cs_district` VALUES (2346, '511133', '马边彝族自治县', '511100');
INSERT INTO `cs_district` VALUES (2347, '511181', '峨眉山市', '511100');
INSERT INTO `cs_district` VALUES (2348, '511301', '市辖区', '511300');
INSERT INTO `cs_district` VALUES (2349, '511302', '顺庆区', '511300');
INSERT INTO `cs_district` VALUES (2350, '511303', '高坪区', '511300');
INSERT INTO `cs_district` VALUES (2351, '511304', '嘉陵区', '511300');
INSERT INTO `cs_district` VALUES (2352, '511321', '南部县', '511300');
INSERT INTO `cs_district` VALUES (2353, '511322', '营山县', '511300');
INSERT INTO `cs_district` VALUES (2354, '511323', '蓬安县', '511300');
INSERT INTO `cs_district` VALUES (2355, '511324', '仪陇县', '511300');
INSERT INTO `cs_district` VALUES (2356, '511325', '西充县', '511300');
INSERT INTO `cs_district` VALUES (2357, '511381', '阆中市', '511300');
INSERT INTO `cs_district` VALUES (2358, '511401', '市辖区', '511400');
INSERT INTO `cs_district` VALUES (2359, '511402', '东坡区', '511400');
INSERT INTO `cs_district` VALUES (2360, '511421', '仁寿县', '511400');
INSERT INTO `cs_district` VALUES (2361, '511422', '彭山县', '511400');
INSERT INTO `cs_district` VALUES (2362, '511423', '洪雅县', '511400');
INSERT INTO `cs_district` VALUES (2363, '511424', '丹棱县', '511400');
INSERT INTO `cs_district` VALUES (2364, '511425', '青神县', '511400');
INSERT INTO `cs_district` VALUES (2365, '511501', '市辖区', '511500');
INSERT INTO `cs_district` VALUES (2366, '511502', '翠屏区', '511500');
INSERT INTO `cs_district` VALUES (2367, '511521', '宜宾县', '511500');
INSERT INTO `cs_district` VALUES (2368, '511522', '南溪县', '511500');
INSERT INTO `cs_district` VALUES (2369, '511523', '江安县', '511500');
INSERT INTO `cs_district` VALUES (2370, '511524', '长宁县', '511500');
INSERT INTO `cs_district` VALUES (2371, '511525', '高　县', '511500');
INSERT INTO `cs_district` VALUES (2372, '511526', '珙　县', '511500');
INSERT INTO `cs_district` VALUES (2373, '511527', '筠连县', '511500');
INSERT INTO `cs_district` VALUES (2374, '511528', '兴文县', '511500');
INSERT INTO `cs_district` VALUES (2375, '511529', '屏山县', '511500');
INSERT INTO `cs_district` VALUES (2376, '511601', '市辖区', '511600');
INSERT INTO `cs_district` VALUES (2377, '511602', '广安区', '511600');
INSERT INTO `cs_district` VALUES (2378, '511621', '岳池县', '511600');
INSERT INTO `cs_district` VALUES (2379, '511622', '武胜县', '511600');
INSERT INTO `cs_district` VALUES (2380, '511623', '邻水县', '511600');
INSERT INTO `cs_district` VALUES (2381, '511681', '华莹市', '511600');
INSERT INTO `cs_district` VALUES (2382, '511701', '市辖区', '511700');
INSERT INTO `cs_district` VALUES (2383, '511702', '通川区', '511700');
INSERT INTO `cs_district` VALUES (2384, '511721', '达　县', '511700');
INSERT INTO `cs_district` VALUES (2385, '511722', '宣汉县', '511700');
INSERT INTO `cs_district` VALUES (2386, '511723', '开江县', '511700');
INSERT INTO `cs_district` VALUES (2387, '511724', '大竹县', '511700');
INSERT INTO `cs_district` VALUES (2388, '511725', '渠　县', '511700');
INSERT INTO `cs_district` VALUES (2389, '511781', '万源市', '511700');
INSERT INTO `cs_district` VALUES (2390, '511801', '市辖区', '511800');
INSERT INTO `cs_district` VALUES (2391, '511802', '雨城区', '511800');
INSERT INTO `cs_district` VALUES (2392, '511821', '名山县', '511800');
INSERT INTO `cs_district` VALUES (2393, '511822', '荥经县', '511800');
INSERT INTO `cs_district` VALUES (2394, '511823', '汉源县', '511800');
INSERT INTO `cs_district` VALUES (2395, '511824', '石棉县', '511800');
INSERT INTO `cs_district` VALUES (2396, '511825', '天全县', '511800');
INSERT INTO `cs_district` VALUES (2397, '511826', '芦山县', '511800');
INSERT INTO `cs_district` VALUES (2398, '511827', '宝兴县', '511800');
INSERT INTO `cs_district` VALUES (2399, '511901', '市辖区', '511900');
INSERT INTO `cs_district` VALUES (2400, '511902', '巴州区', '511900');
INSERT INTO `cs_district` VALUES (2401, '511921', '通江县', '511900');
INSERT INTO `cs_district` VALUES (2402, '511922', '南江县', '511900');
INSERT INTO `cs_district` VALUES (2403, '511923', '平昌县', '511900');
INSERT INTO `cs_district` VALUES (2404, '512001', '市辖区', '512000');
INSERT INTO `cs_district` VALUES (2405, '512002', '雁江区', '512000');
INSERT INTO `cs_district` VALUES (2406, '512021', '安岳县', '512000');
INSERT INTO `cs_district` VALUES (2407, '512022', '乐至县', '512000');
INSERT INTO `cs_district` VALUES (2408, '512081', '简阳市', '512000');
INSERT INTO `cs_district` VALUES (2409, '513221', '汶川县', '513200');
INSERT INTO `cs_district` VALUES (2410, '513222', '理　县', '513200');
INSERT INTO `cs_district` VALUES (2411, '513223', '茂　县', '513200');
INSERT INTO `cs_district` VALUES (2412, '513224', '松潘县', '513200');
INSERT INTO `cs_district` VALUES (2413, '513225', '九寨沟县', '513200');
INSERT INTO `cs_district` VALUES (2414, '513226', '金川县', '513200');
INSERT INTO `cs_district` VALUES (2415, '513227', '小金县', '513200');
INSERT INTO `cs_district` VALUES (2416, '513228', '黑水县', '513200');
INSERT INTO `cs_district` VALUES (2417, '513229', '马尔康县', '513200');
INSERT INTO `cs_district` VALUES (2418, '513230', '壤塘县', '513200');
INSERT INTO `cs_district` VALUES (2419, '513231', '阿坝县', '513200');
INSERT INTO `cs_district` VALUES (2420, '513232', '若尔盖县', '513200');
INSERT INTO `cs_district` VALUES (2421, '513233', '红原县', '513200');
INSERT INTO `cs_district` VALUES (2422, '513321', '康定县', '513300');
INSERT INTO `cs_district` VALUES (2423, '513322', '泸定县', '513300');
INSERT INTO `cs_district` VALUES (2424, '513323', '丹巴县', '513300');
INSERT INTO `cs_district` VALUES (2425, '513324', '九龙县', '513300');
INSERT INTO `cs_district` VALUES (2426, '513325', '雅江县', '513300');
INSERT INTO `cs_district` VALUES (2427, '513326', '道孚县', '513300');
INSERT INTO `cs_district` VALUES (2428, '513327', '炉霍县', '513300');
INSERT INTO `cs_district` VALUES (2429, '513328', '甘孜县', '513300');
INSERT INTO `cs_district` VALUES (2430, '513329', '新龙县', '513300');
INSERT INTO `cs_district` VALUES (2431, '513330', '德格县', '513300');
INSERT INTO `cs_district` VALUES (2432, '513331', '白玉县', '513300');
INSERT INTO `cs_district` VALUES (2433, '513332', '石渠县', '513300');
INSERT INTO `cs_district` VALUES (2434, '513333', '色达县', '513300');
INSERT INTO `cs_district` VALUES (2435, '513334', '理塘县', '513300');
INSERT INTO `cs_district` VALUES (2436, '513335', '巴塘县', '513300');
INSERT INTO `cs_district` VALUES (2437, '513336', '乡城县', '513300');
INSERT INTO `cs_district` VALUES (2438, '513337', '稻城县', '513300');
INSERT INTO `cs_district` VALUES (2439, '513338', '得荣县', '513300');
INSERT INTO `cs_district` VALUES (2440, '513401', '西昌市', '513400');
INSERT INTO `cs_district` VALUES (2441, '513422', '木里藏族自治县', '513400');
INSERT INTO `cs_district` VALUES (2442, '513423', '盐源县', '513400');
INSERT INTO `cs_district` VALUES (2443, '513424', '德昌县', '513400');
INSERT INTO `cs_district` VALUES (2444, '513425', '会理县', '513400');
INSERT INTO `cs_district` VALUES (2445, '513426', '会东县', '513400');
INSERT INTO `cs_district` VALUES (2446, '513427', '宁南县', '513400');
INSERT INTO `cs_district` VALUES (2447, '513428', '普格县', '513400');
INSERT INTO `cs_district` VALUES (2448, '513429', '布拖县', '513400');
INSERT INTO `cs_district` VALUES (2449, '513430', '金阳县', '513400');
INSERT INTO `cs_district` VALUES (2450, '513431', '昭觉县', '513400');
INSERT INTO `cs_district` VALUES (2451, '513432', '喜德县', '513400');
INSERT INTO `cs_district` VALUES (2452, '513433', '冕宁县', '513400');
INSERT INTO `cs_district` VALUES (2453, '513434', '越西县', '513400');
INSERT INTO `cs_district` VALUES (2454, '513435', '甘洛县', '513400');
INSERT INTO `cs_district` VALUES (2455, '513436', '美姑县', '513400');
INSERT INTO `cs_district` VALUES (2456, '513437', '雷波县', '513400');
INSERT INTO `cs_district` VALUES (2457, '520101', '市辖区', '520100');
INSERT INTO `cs_district` VALUES (2458, '520102', '南明区', '520100');
INSERT INTO `cs_district` VALUES (2459, '520103', '云岩区', '520100');
INSERT INTO `cs_district` VALUES (2460, '520111', '花溪区', '520100');
INSERT INTO `cs_district` VALUES (2461, '520112', '乌当区', '520100');
INSERT INTO `cs_district` VALUES (2462, '520113', '白云区', '520100');
INSERT INTO `cs_district` VALUES (2463, '520114', '小河区', '520100');
INSERT INTO `cs_district` VALUES (2464, '520121', '开阳县', '520100');
INSERT INTO `cs_district` VALUES (2465, '520122', '息烽县', '520100');
INSERT INTO `cs_district` VALUES (2466, '520123', '修文县', '520100');
INSERT INTO `cs_district` VALUES (2467, '520181', '清镇市', '520100');
INSERT INTO `cs_district` VALUES (2468, '520201', '钟山区', '520200');
INSERT INTO `cs_district` VALUES (2469, '520203', '六枝特区', '520200');
INSERT INTO `cs_district` VALUES (2470, '520221', '水城县', '520200');
INSERT INTO `cs_district` VALUES (2471, '520222', '盘　县', '520200');
INSERT INTO `cs_district` VALUES (2472, '520301', '市辖区', '520300');
INSERT INTO `cs_district` VALUES (2473, '520302', '红花岗区', '520300');
INSERT INTO `cs_district` VALUES (2474, '520303', '汇川区', '520300');
INSERT INTO `cs_district` VALUES (2475, '520321', '遵义县', '520300');
INSERT INTO `cs_district` VALUES (2476, '520322', '桐梓县', '520300');
INSERT INTO `cs_district` VALUES (2477, '520323', '绥阳县', '520300');
INSERT INTO `cs_district` VALUES (2478, '520324', '正安县', '520300');
INSERT INTO `cs_district` VALUES (2479, '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `cs_district` VALUES (2480, '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `cs_district` VALUES (2481, '520327', '凤冈县', '520300');
INSERT INTO `cs_district` VALUES (2482, '520328', '湄潭县', '520300');
INSERT INTO `cs_district` VALUES (2483, '520329', '余庆县', '520300');
INSERT INTO `cs_district` VALUES (2484, '520330', '习水县', '520300');
INSERT INTO `cs_district` VALUES (2485, '520381', '赤水市', '520300');
INSERT INTO `cs_district` VALUES (2486, '520382', '仁怀市', '520300');
INSERT INTO `cs_district` VALUES (2487, '520401', '市辖区', '520400');
INSERT INTO `cs_district` VALUES (2488, '520402', '西秀区', '520400');
INSERT INTO `cs_district` VALUES (2489, '520421', '平坝县', '520400');
INSERT INTO `cs_district` VALUES (2490, '520422', '普定县', '520400');
INSERT INTO `cs_district` VALUES (2491, '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `cs_district` VALUES (2492, '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `cs_district` VALUES (2493, '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `cs_district` VALUES (2494, '522201', '铜仁市', '522200');
INSERT INTO `cs_district` VALUES (2495, '522222', '江口县', '522200');
INSERT INTO `cs_district` VALUES (2496, '522223', '玉屏侗族自治县', '522200');
INSERT INTO `cs_district` VALUES (2497, '522224', '石阡县', '522200');
INSERT INTO `cs_district` VALUES (2498, '522225', '思南县', '522200');
INSERT INTO `cs_district` VALUES (2499, '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `cs_district` VALUES (2500, '522227', '德江县', '522200');
INSERT INTO `cs_district` VALUES (2501, '522228', '沿河土家族自治县', '522200');
INSERT INTO `cs_district` VALUES (2502, '522229', '松桃苗族自治县', '522200');
INSERT INTO `cs_district` VALUES (2503, '522230', '万山特区', '522200');
INSERT INTO `cs_district` VALUES (2504, '522301', '兴义市', '522300');
INSERT INTO `cs_district` VALUES (2505, '522322', '兴仁县', '522300');
INSERT INTO `cs_district` VALUES (2506, '522323', '普安县', '522300');
INSERT INTO `cs_district` VALUES (2507, '522324', '晴隆县', '522300');
INSERT INTO `cs_district` VALUES (2508, '522325', '贞丰县', '522300');
INSERT INTO `cs_district` VALUES (2509, '522326', '望谟县', '522300');
INSERT INTO `cs_district` VALUES (2510, '522327', '册亨县', '522300');
INSERT INTO `cs_district` VALUES (2511, '522328', '安龙县', '522300');
INSERT INTO `cs_district` VALUES (2512, '522401', '毕节市', '522400');
INSERT INTO `cs_district` VALUES (2513, '522422', '大方县', '522400');
INSERT INTO `cs_district` VALUES (2514, '522423', '黔西县', '522400');
INSERT INTO `cs_district` VALUES (2515, '522424', '金沙县', '522400');
INSERT INTO `cs_district` VALUES (2516, '522425', '织金县', '522400');
INSERT INTO `cs_district` VALUES (2517, '522426', '纳雍县', '522400');
INSERT INTO `cs_district` VALUES (2518, '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `cs_district` VALUES (2519, '522428', '赫章县', '522400');
INSERT INTO `cs_district` VALUES (2520, '522601', '凯里市', '522600');
INSERT INTO `cs_district` VALUES (2521, '522622', '黄平县', '522600');
INSERT INTO `cs_district` VALUES (2522, '522623', '施秉县', '522600');
INSERT INTO `cs_district` VALUES (2523, '522624', '三穗县', '522600');
INSERT INTO `cs_district` VALUES (2524, '522625', '镇远县', '522600');
INSERT INTO `cs_district` VALUES (2525, '522626', '岑巩县', '522600');
INSERT INTO `cs_district` VALUES (2526, '522627', '天柱县', '522600');
INSERT INTO `cs_district` VALUES (2527, '522628', '锦屏县', '522600');
INSERT INTO `cs_district` VALUES (2528, '522629', '剑河县', '522600');
INSERT INTO `cs_district` VALUES (2529, '522630', '台江县', '522600');
INSERT INTO `cs_district` VALUES (2530, '522631', '黎平县', '522600');
INSERT INTO `cs_district` VALUES (2531, '522632', '榕江县', '522600');
INSERT INTO `cs_district` VALUES (2532, '522633', '从江县', '522600');
INSERT INTO `cs_district` VALUES (2533, '522634', '雷山县', '522600');
INSERT INTO `cs_district` VALUES (2534, '522635', '麻江县', '522600');
INSERT INTO `cs_district` VALUES (2535, '522636', '丹寨县', '522600');
INSERT INTO `cs_district` VALUES (2536, '522701', '都匀市', '522700');
INSERT INTO `cs_district` VALUES (2537, '522702', '福泉市', '522700');
INSERT INTO `cs_district` VALUES (2538, '522722', '荔波县', '522700');
INSERT INTO `cs_district` VALUES (2539, '522723', '贵定县', '522700');
INSERT INTO `cs_district` VALUES (2540, '522725', '瓮安县', '522700');
INSERT INTO `cs_district` VALUES (2541, '522726', '独山县', '522700');
INSERT INTO `cs_district` VALUES (2542, '522727', '平塘县', '522700');
INSERT INTO `cs_district` VALUES (2543, '522728', '罗甸县', '522700');
INSERT INTO `cs_district` VALUES (2544, '522729', '长顺县', '522700');
INSERT INTO `cs_district` VALUES (2545, '522730', '龙里县', '522700');
INSERT INTO `cs_district` VALUES (2546, '522731', '惠水县', '522700');
INSERT INTO `cs_district` VALUES (2547, '522732', '三都水族自治县', '522700');
INSERT INTO `cs_district` VALUES (2548, '530101', '市辖区', '530100');
INSERT INTO `cs_district` VALUES (2549, '530102', '五华区', '530100');
INSERT INTO `cs_district` VALUES (2550, '530103', '盘龙区', '530100');
INSERT INTO `cs_district` VALUES (2551, '530111', '官渡区', '530100');
INSERT INTO `cs_district` VALUES (2552, '530112', '西山区', '530100');
INSERT INTO `cs_district` VALUES (2553, '530113', '东川区', '530100');
INSERT INTO `cs_district` VALUES (2554, '530121', '呈贡县', '530100');
INSERT INTO `cs_district` VALUES (2555, '530122', '晋宁县', '530100');
INSERT INTO `cs_district` VALUES (2556, '530124', '富民县', '530100');
INSERT INTO `cs_district` VALUES (2557, '530125', '宜良县', '530100');
INSERT INTO `cs_district` VALUES (2558, '530126', '石林彝族自治县', '530100');
INSERT INTO `cs_district` VALUES (2559, '530127', '嵩明县', '530100');
INSERT INTO `cs_district` VALUES (2560, '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `cs_district` VALUES (2561, '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `cs_district` VALUES (2562, '530181', '安宁市', '530100');
INSERT INTO `cs_district` VALUES (2563, '530301', '市辖区', '530300');
INSERT INTO `cs_district` VALUES (2564, '530302', '麒麟区', '530300');
INSERT INTO `cs_district` VALUES (2565, '530321', '马龙县', '530300');
INSERT INTO `cs_district` VALUES (2566, '530322', '陆良县', '530300');
INSERT INTO `cs_district` VALUES (2567, '530323', '师宗县', '530300');
INSERT INTO `cs_district` VALUES (2568, '530324', '罗平县', '530300');
INSERT INTO `cs_district` VALUES (2569, '530325', '富源县', '530300');
INSERT INTO `cs_district` VALUES (2570, '530326', '会泽县', '530300');
INSERT INTO `cs_district` VALUES (2571, '530328', '沾益县', '530300');
INSERT INTO `cs_district` VALUES (2572, '530381', '宣威市', '530300');
INSERT INTO `cs_district` VALUES (2573, '530401', '市辖区', '530400');
INSERT INTO `cs_district` VALUES (2574, '530402', '红塔区', '530400');
INSERT INTO `cs_district` VALUES (2575, '530421', '江川县', '530400');
INSERT INTO `cs_district` VALUES (2576, '530422', '澄江县', '530400');
INSERT INTO `cs_district` VALUES (2577, '530423', '通海县', '530400');
INSERT INTO `cs_district` VALUES (2578, '530424', '华宁县', '530400');
INSERT INTO `cs_district` VALUES (2579, '530425', '易门县', '530400');
INSERT INTO `cs_district` VALUES (2580, '530426', '峨山彝族自治县', '530400');
INSERT INTO `cs_district` VALUES (2581, '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `cs_district` VALUES (2582, '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `cs_district` VALUES (2583, '530501', '市辖区', '530500');
INSERT INTO `cs_district` VALUES (2584, '530502', '隆阳区', '530500');
INSERT INTO `cs_district` VALUES (2585, '530521', '施甸县', '530500');
INSERT INTO `cs_district` VALUES (2586, '530522', '腾冲县', '530500');
INSERT INTO `cs_district` VALUES (2587, '530523', '龙陵县', '530500');
INSERT INTO `cs_district` VALUES (2588, '530524', '昌宁县', '530500');
INSERT INTO `cs_district` VALUES (2589, '530601', '市辖区', '530600');
INSERT INTO `cs_district` VALUES (2590, '530602', '昭阳区', '530600');
INSERT INTO `cs_district` VALUES (2591, '530621', '鲁甸县', '530600');
INSERT INTO `cs_district` VALUES (2592, '530622', '巧家县', '530600');
INSERT INTO `cs_district` VALUES (2593, '530623', '盐津县', '530600');
INSERT INTO `cs_district` VALUES (2594, '530624', '大关县', '530600');
INSERT INTO `cs_district` VALUES (2595, '530625', '永善县', '530600');
INSERT INTO `cs_district` VALUES (2596, '530626', '绥江县', '530600');
INSERT INTO `cs_district` VALUES (2597, '530627', '镇雄县', '530600');
INSERT INTO `cs_district` VALUES (2598, '530628', '彝良县', '530600');
INSERT INTO `cs_district` VALUES (2599, '530629', '威信县', '530600');
INSERT INTO `cs_district` VALUES (2600, '530630', '水富县', '530600');
INSERT INTO `cs_district` VALUES (2601, '530701', '市辖区', '530700');
INSERT INTO `cs_district` VALUES (2602, '530702', '古城区', '530700');
INSERT INTO `cs_district` VALUES (2603, '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `cs_district` VALUES (2604, '530722', '永胜县', '530700');
INSERT INTO `cs_district` VALUES (2605, '530723', '华坪县', '530700');
INSERT INTO `cs_district` VALUES (2606, '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `cs_district` VALUES (2607, '530801', '市辖区', '530800');
INSERT INTO `cs_district` VALUES (2608, '530802', '翠云区', '530800');
INSERT INTO `cs_district` VALUES (2609, '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `cs_district` VALUES (2610, '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `cs_district` VALUES (2611, '530823', '景东彝族自治县', '530800');
INSERT INTO `cs_district` VALUES (2612, '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `cs_district` VALUES (2613, '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `cs_district` VALUES (2614, '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `cs_district` VALUES (2615, '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `cs_district` VALUES (2616, '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `cs_district` VALUES (2617, '530829', '西盟佤族自治县', '530800');
INSERT INTO `cs_district` VALUES (2618, '530901', '市辖区', '530900');
INSERT INTO `cs_district` VALUES (2619, '530902', '临翔区', '530900');
INSERT INTO `cs_district` VALUES (2620, '530921', '凤庆县', '530900');
INSERT INTO `cs_district` VALUES (2621, '530922', '云　县', '530900');
INSERT INTO `cs_district` VALUES (2622, '530923', '永德县', '530900');
INSERT INTO `cs_district` VALUES (2623, '530924', '镇康县', '530900');
INSERT INTO `cs_district` VALUES (2624, '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `cs_district` VALUES (2625, '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `cs_district` VALUES (2626, '530927', '沧源佤族自治县', '530900');
INSERT INTO `cs_district` VALUES (2627, '532301', '楚雄市', '532300');
INSERT INTO `cs_district` VALUES (2628, '532322', '双柏县', '532300');
INSERT INTO `cs_district` VALUES (2629, '532323', '牟定县', '532300');
INSERT INTO `cs_district` VALUES (2630, '532324', '南华县', '532300');
INSERT INTO `cs_district` VALUES (2631, '532325', '姚安县', '532300');
INSERT INTO `cs_district` VALUES (2632, '532326', '大姚县', '532300');
INSERT INTO `cs_district` VALUES (2633, '532327', '永仁县', '532300');
INSERT INTO `cs_district` VALUES (2634, '532328', '元谋县', '532300');
INSERT INTO `cs_district` VALUES (2635, '532329', '武定县', '532300');
INSERT INTO `cs_district` VALUES (2636, '532331', '禄丰县', '532300');
INSERT INTO `cs_district` VALUES (2637, '532501', '个旧市', '532500');
INSERT INTO `cs_district` VALUES (2638, '532502', '开远市', '532500');
INSERT INTO `cs_district` VALUES (2639, '532522', '蒙自县', '532500');
INSERT INTO `cs_district` VALUES (2640, '532523', '屏边苗族自治县', '532500');
INSERT INTO `cs_district` VALUES (2641, '532524', '建水县', '532500');
INSERT INTO `cs_district` VALUES (2642, '532525', '石屏县', '532500');
INSERT INTO `cs_district` VALUES (2643, '532526', '弥勒县', '532500');
INSERT INTO `cs_district` VALUES (2644, '532527', '泸西县', '532500');
INSERT INTO `cs_district` VALUES (2645, '532528', '元阳县', '532500');
INSERT INTO `cs_district` VALUES (2646, '532529', '红河县', '532500');
INSERT INTO `cs_district` VALUES (2647, '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `cs_district` VALUES (2648, '532531', '绿春县', '532500');
INSERT INTO `cs_district` VALUES (2649, '532532', '河口瑶族自治县', '532500');
INSERT INTO `cs_district` VALUES (2650, '532621', '文山县', '532600');
INSERT INTO `cs_district` VALUES (2651, '532622', '砚山县', '532600');
INSERT INTO `cs_district` VALUES (2652, '532623', '西畴县', '532600');
INSERT INTO `cs_district` VALUES (2653, '532624', '麻栗坡县', '532600');
INSERT INTO `cs_district` VALUES (2654, '532625', '马关县', '532600');
INSERT INTO `cs_district` VALUES (2655, '532626', '丘北县', '532600');
INSERT INTO `cs_district` VALUES (2656, '532627', '广南县', '532600');
INSERT INTO `cs_district` VALUES (2657, '532628', '富宁县', '532600');
INSERT INTO `cs_district` VALUES (2658, '532801', '景洪市', '532800');
INSERT INTO `cs_district` VALUES (2659, '532822', '勐海县', '532800');
INSERT INTO `cs_district` VALUES (2660, '532823', '勐腊县', '532800');
INSERT INTO `cs_district` VALUES (2661, '532901', '大理市', '532900');
INSERT INTO `cs_district` VALUES (2662, '532922', '漾濞彝族自治县', '532900');
INSERT INTO `cs_district` VALUES (2663, '532923', '祥云县', '532900');
INSERT INTO `cs_district` VALUES (2664, '532924', '宾川县', '532900');
INSERT INTO `cs_district` VALUES (2665, '532925', '弥渡县', '532900');
INSERT INTO `cs_district` VALUES (2666, '532926', '南涧彝族自治县', '532900');
INSERT INTO `cs_district` VALUES (2667, '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `cs_district` VALUES (2668, '532928', '永平县', '532900');
INSERT INTO `cs_district` VALUES (2669, '532929', '云龙县', '532900');
INSERT INTO `cs_district` VALUES (2670, '532930', '洱源县', '532900');
INSERT INTO `cs_district` VALUES (2671, '532931', '剑川县', '532900');
INSERT INTO `cs_district` VALUES (2672, '532932', '鹤庆县', '532900');
INSERT INTO `cs_district` VALUES (2673, '533102', '瑞丽市', '533100');
INSERT INTO `cs_district` VALUES (2674, '533103', '潞西市', '533100');
INSERT INTO `cs_district` VALUES (2675, '533122', '梁河县', '533100');
INSERT INTO `cs_district` VALUES (2676, '533123', '盈江县', '533100');
INSERT INTO `cs_district` VALUES (2677, '533124', '陇川县', '533100');
INSERT INTO `cs_district` VALUES (2678, '533321', '泸水县', '533300');
INSERT INTO `cs_district` VALUES (2679, '533323', '福贡县', '533300');
INSERT INTO `cs_district` VALUES (2680, '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `cs_district` VALUES (2681, '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `cs_district` VALUES (2682, '533421', '香格里拉县', '533400');
INSERT INTO `cs_district` VALUES (2683, '533422', '德钦县', '533400');
INSERT INTO `cs_district` VALUES (2684, '533423', '维西傈僳族自治县', '533400');
INSERT INTO `cs_district` VALUES (2685, '540101', '市辖区', '540100');
INSERT INTO `cs_district` VALUES (2686, '540102', '城关区', '540100');
INSERT INTO `cs_district` VALUES (2687, '540121', '林周县', '540100');
INSERT INTO `cs_district` VALUES (2688, '540122', '当雄县', '540100');
INSERT INTO `cs_district` VALUES (2689, '540123', '尼木县', '540100');
INSERT INTO `cs_district` VALUES (2690, '540124', '曲水县', '540100');
INSERT INTO `cs_district` VALUES (2691, '540125', '堆龙德庆县', '540100');
INSERT INTO `cs_district` VALUES (2692, '540126', '达孜县', '540100');
INSERT INTO `cs_district` VALUES (2693, '540127', '墨竹工卡县', '540100');
INSERT INTO `cs_district` VALUES (2694, '542121', '昌都县', '542100');
INSERT INTO `cs_district` VALUES (2695, '542122', '江达县', '542100');
INSERT INTO `cs_district` VALUES (2696, '542123', '贡觉县', '542100');
INSERT INTO `cs_district` VALUES (2697, '542124', '类乌齐县', '542100');
INSERT INTO `cs_district` VALUES (2698, '542125', '丁青县', '542100');
INSERT INTO `cs_district` VALUES (2699, '542126', '察雅县', '542100');
INSERT INTO `cs_district` VALUES (2700, '542127', '八宿县', '542100');
INSERT INTO `cs_district` VALUES (2701, '542128', '左贡县', '542100');
INSERT INTO `cs_district` VALUES (2702, '542129', '芒康县', '542100');
INSERT INTO `cs_district` VALUES (2703, '542132', '洛隆县', '542100');
INSERT INTO `cs_district` VALUES (2704, '542133', '边坝县', '542100');
INSERT INTO `cs_district` VALUES (2705, '542221', '乃东县', '542200');
INSERT INTO `cs_district` VALUES (2706, '542222', '扎囊县', '542200');
INSERT INTO `cs_district` VALUES (2707, '542223', '贡嘎县', '542200');
INSERT INTO `cs_district` VALUES (2708, '542224', '桑日县', '542200');
INSERT INTO `cs_district` VALUES (2709, '542225', '琼结县', '542200');
INSERT INTO `cs_district` VALUES (2710, '542226', '曲松县', '542200');
INSERT INTO `cs_district` VALUES (2711, '542227', '措美县', '542200');
INSERT INTO `cs_district` VALUES (2712, '542228', '洛扎县', '542200');
INSERT INTO `cs_district` VALUES (2713, '542229', '加查县', '542200');
INSERT INTO `cs_district` VALUES (2714, '542231', '隆子县', '542200');
INSERT INTO `cs_district` VALUES (2715, '542232', '错那县', '542200');
INSERT INTO `cs_district` VALUES (2716, '542233', '浪卡子县', '542200');
INSERT INTO `cs_district` VALUES (2717, '542301', '日喀则市', '542300');
INSERT INTO `cs_district` VALUES (2718, '542322', '南木林县', '542300');
INSERT INTO `cs_district` VALUES (2719, '542323', '江孜县', '542300');
INSERT INTO `cs_district` VALUES (2720, '542324', '定日县', '542300');
INSERT INTO `cs_district` VALUES (2721, '542325', '萨迦县', '542300');
INSERT INTO `cs_district` VALUES (2722, '542326', '拉孜县', '542300');
INSERT INTO `cs_district` VALUES (2723, '542327', '昂仁县', '542300');
INSERT INTO `cs_district` VALUES (2724, '542328', '谢通门县', '542300');
INSERT INTO `cs_district` VALUES (2725, '542329', '白朗县', '542300');
INSERT INTO `cs_district` VALUES (2726, '542330', '仁布县', '542300');
INSERT INTO `cs_district` VALUES (2727, '542331', '康马县', '542300');
INSERT INTO `cs_district` VALUES (2728, '542332', '定结县', '542300');
INSERT INTO `cs_district` VALUES (2729, '542333', '仲巴县', '542300');
INSERT INTO `cs_district` VALUES (2730, '542334', '亚东县', '542300');
INSERT INTO `cs_district` VALUES (2731, '542335', '吉隆县', '542300');
INSERT INTO `cs_district` VALUES (2732, '542336', '聂拉木县', '542300');
INSERT INTO `cs_district` VALUES (2733, '542337', '萨嘎县', '542300');
INSERT INTO `cs_district` VALUES (2734, '542338', '岗巴县', '542300');
INSERT INTO `cs_district` VALUES (2735, '542421', '那曲县', '542400');
INSERT INTO `cs_district` VALUES (2736, '542422', '嘉黎县', '542400');
INSERT INTO `cs_district` VALUES (2737, '542423', '比如县', '542400');
INSERT INTO `cs_district` VALUES (2738, '542424', '聂荣县', '542400');
INSERT INTO `cs_district` VALUES (2739, '542425', '安多县', '542400');
INSERT INTO `cs_district` VALUES (2740, '542426', '申扎县', '542400');
INSERT INTO `cs_district` VALUES (2741, '542427', '索　县', '542400');
INSERT INTO `cs_district` VALUES (2742, '542428', '班戈县', '542400');
INSERT INTO `cs_district` VALUES (2743, '542429', '巴青县', '542400');
INSERT INTO `cs_district` VALUES (2744, '542430', '尼玛县', '542400');
INSERT INTO `cs_district` VALUES (2745, '542521', '普兰县', '542500');
INSERT INTO `cs_district` VALUES (2746, '542522', '札达县', '542500');
INSERT INTO `cs_district` VALUES (2747, '542523', '噶尔县', '542500');
INSERT INTO `cs_district` VALUES (2748, '542524', '日土县', '542500');
INSERT INTO `cs_district` VALUES (2749, '542525', '革吉县', '542500');
INSERT INTO `cs_district` VALUES (2750, '542526', '改则县', '542500');
INSERT INTO `cs_district` VALUES (2751, '542527', '措勤县', '542500');
INSERT INTO `cs_district` VALUES (2752, '542621', '林芝县', '542600');
INSERT INTO `cs_district` VALUES (2753, '542622', '工布江达县', '542600');
INSERT INTO `cs_district` VALUES (2754, '542623', '米林县', '542600');
INSERT INTO `cs_district` VALUES (2755, '542624', '墨脱县', '542600');
INSERT INTO `cs_district` VALUES (2756, '542625', '波密县', '542600');
INSERT INTO `cs_district` VALUES (2757, '542626', '察隅县', '542600');
INSERT INTO `cs_district` VALUES (2758, '542627', '朗　县', '542600');
INSERT INTO `cs_district` VALUES (2759, '610101', '市辖区', '610100');
INSERT INTO `cs_district` VALUES (2760, '610102', '新城区', '610100');
INSERT INTO `cs_district` VALUES (2761, '610103', '碑林区', '610100');
INSERT INTO `cs_district` VALUES (2762, '610104', '莲湖区', '610100');
INSERT INTO `cs_district` VALUES (2763, '610111', '灞桥区', '610100');
INSERT INTO `cs_district` VALUES (2764, '610112', '未央区', '610100');
INSERT INTO `cs_district` VALUES (2765, '610113', '雁塔区', '610100');
INSERT INTO `cs_district` VALUES (2766, '610114', '阎良区', '610100');
INSERT INTO `cs_district` VALUES (2767, '610115', '临潼区', '610100');
INSERT INTO `cs_district` VALUES (2768, '610116', '长安区', '610100');
INSERT INTO `cs_district` VALUES (2769, '610122', '蓝田县', '610100');
INSERT INTO `cs_district` VALUES (2770, '610124', '周至县', '610100');
INSERT INTO `cs_district` VALUES (2771, '610125', '户　县', '610100');
INSERT INTO `cs_district` VALUES (2772, '610126', '高陵县', '610100');
INSERT INTO `cs_district` VALUES (2773, '610201', '市辖区', '610200');
INSERT INTO `cs_district` VALUES (2774, '610202', '王益区', '610200');
INSERT INTO `cs_district` VALUES (2775, '610203', '印台区', '610200');
INSERT INTO `cs_district` VALUES (2776, '610204', '耀州区', '610200');
INSERT INTO `cs_district` VALUES (2777, '610222', '宜君县', '610200');
INSERT INTO `cs_district` VALUES (2778, '610301', '市辖区', '610300');
INSERT INTO `cs_district` VALUES (2779, '610302', '渭滨区', '610300');
INSERT INTO `cs_district` VALUES (2780, '610303', '金台区', '610300');
INSERT INTO `cs_district` VALUES (2781, '610304', '陈仓区', '610300');
INSERT INTO `cs_district` VALUES (2782, '610322', '凤翔县', '610300');
INSERT INTO `cs_district` VALUES (2783, '610323', '岐山县', '610300');
INSERT INTO `cs_district` VALUES (2784, '610324', '扶风县', '610300');
INSERT INTO `cs_district` VALUES (2785, '610326', '眉　县', '610300');
INSERT INTO `cs_district` VALUES (2786, '610327', '陇　县', '610300');
INSERT INTO `cs_district` VALUES (2787, '610328', '千阳县', '610300');
INSERT INTO `cs_district` VALUES (2788, '610329', '麟游县', '610300');
INSERT INTO `cs_district` VALUES (2789, '610330', '凤　县', '610300');
INSERT INTO `cs_district` VALUES (2790, '610331', '太白县', '610300');
INSERT INTO `cs_district` VALUES (2791, '610401', '市辖区', '610400');
INSERT INTO `cs_district` VALUES (2792, '610402', '秦都区', '610400');
INSERT INTO `cs_district` VALUES (2793, '610403', '杨凌区', '610400');
INSERT INTO `cs_district` VALUES (2794, '610404', '渭城区', '610400');
INSERT INTO `cs_district` VALUES (2795, '610422', '三原县', '610400');
INSERT INTO `cs_district` VALUES (2796, '610423', '泾阳县', '610400');
INSERT INTO `cs_district` VALUES (2797, '610424', '乾　县', '610400');
INSERT INTO `cs_district` VALUES (2798, '610425', '礼泉县', '610400');
INSERT INTO `cs_district` VALUES (2799, '610426', '永寿县', '610400');
INSERT INTO `cs_district` VALUES (2800, '610427', '彬　县', '610400');
INSERT INTO `cs_district` VALUES (2801, '610428', '长武县', '610400');
INSERT INTO `cs_district` VALUES (2802, '610429', '旬邑县', '610400');
INSERT INTO `cs_district` VALUES (2803, '610430', '淳化县', '610400');
INSERT INTO `cs_district` VALUES (2804, '610431', '武功县', '610400');
INSERT INTO `cs_district` VALUES (2805, '610481', '兴平市', '610400');
INSERT INTO `cs_district` VALUES (2806, '610501', '市辖区', '610500');
INSERT INTO `cs_district` VALUES (2807, '610502', '临渭区', '610500');
INSERT INTO `cs_district` VALUES (2808, '610521', '华　县', '610500');
INSERT INTO `cs_district` VALUES (2809, '610522', '潼关县', '610500');
INSERT INTO `cs_district` VALUES (2810, '610523', '大荔县', '610500');
INSERT INTO `cs_district` VALUES (2811, '610524', '合阳县', '610500');
INSERT INTO `cs_district` VALUES (2812, '610525', '澄城县', '610500');
INSERT INTO `cs_district` VALUES (2813, '610526', '蒲城县', '610500');
INSERT INTO `cs_district` VALUES (2814, '610527', '白水县', '610500');
INSERT INTO `cs_district` VALUES (2815, '610528', '富平县', '610500');
INSERT INTO `cs_district` VALUES (2816, '610581', '韩城市', '610500');
INSERT INTO `cs_district` VALUES (2817, '610582', '华阴市', '610500');
INSERT INTO `cs_district` VALUES (2818, '610601', '市辖区', '610600');
INSERT INTO `cs_district` VALUES (2819, '610602', '宝塔区', '610600');
INSERT INTO `cs_district` VALUES (2820, '610621', '延长县', '610600');
INSERT INTO `cs_district` VALUES (2821, '610622', '延川县', '610600');
INSERT INTO `cs_district` VALUES (2822, '610623', '子长县', '610600');
INSERT INTO `cs_district` VALUES (2823, '610624', '安塞县', '610600');
INSERT INTO `cs_district` VALUES (2824, '610625', '志丹县', '610600');
INSERT INTO `cs_district` VALUES (2825, '610626', '吴旗县', '610600');
INSERT INTO `cs_district` VALUES (2826, '610627', '甘泉县', '610600');
INSERT INTO `cs_district` VALUES (2827, '610628', '富　县', '610600');
INSERT INTO `cs_district` VALUES (2828, '610629', '洛川县', '610600');
INSERT INTO `cs_district` VALUES (2829, '610630', '宜川县', '610600');
INSERT INTO `cs_district` VALUES (2830, '610631', '黄龙县', '610600');
INSERT INTO `cs_district` VALUES (2831, '610632', '黄陵县', '610600');
INSERT INTO `cs_district` VALUES (2832, '610701', '市辖区', '610700');
INSERT INTO `cs_district` VALUES (2833, '610702', '汉台区', '610700');
INSERT INTO `cs_district` VALUES (2834, '610721', '南郑县', '610700');
INSERT INTO `cs_district` VALUES (2835, '610722', '城固县', '610700');
INSERT INTO `cs_district` VALUES (2836, '610723', '洋　县', '610700');
INSERT INTO `cs_district` VALUES (2837, '610724', '西乡县', '610700');
INSERT INTO `cs_district` VALUES (2838, '610725', '勉　县', '610700');
INSERT INTO `cs_district` VALUES (2839, '610726', '宁强县', '610700');
INSERT INTO `cs_district` VALUES (2840, '610727', '略阳县', '610700');
INSERT INTO `cs_district` VALUES (2841, '610728', '镇巴县', '610700');
INSERT INTO `cs_district` VALUES (2842, '610729', '留坝县', '610700');
INSERT INTO `cs_district` VALUES (2843, '610730', '佛坪县', '610700');
INSERT INTO `cs_district` VALUES (2844, '610801', '市辖区', '610800');
INSERT INTO `cs_district` VALUES (2845, '610802', '榆阳区', '610800');
INSERT INTO `cs_district` VALUES (2846, '610821', '神木县', '610800');
INSERT INTO `cs_district` VALUES (2847, '610822', '府谷县', '610800');
INSERT INTO `cs_district` VALUES (2848, '610823', '横山县', '610800');
INSERT INTO `cs_district` VALUES (2849, '610824', '靖边县', '610800');
INSERT INTO `cs_district` VALUES (2850, '610825', '定边县', '610800');
INSERT INTO `cs_district` VALUES (2851, '610826', '绥德县', '610800');
INSERT INTO `cs_district` VALUES (2852, '610827', '米脂县', '610800');
INSERT INTO `cs_district` VALUES (2853, '610828', '佳　县', '610800');
INSERT INTO `cs_district` VALUES (2854, '610829', '吴堡县', '610800');
INSERT INTO `cs_district` VALUES (2855, '610830', '清涧县', '610800');
INSERT INTO `cs_district` VALUES (2856, '610831', '子洲县', '610800');
INSERT INTO `cs_district` VALUES (2857, '610901', '市辖区', '610900');
INSERT INTO `cs_district` VALUES (2858, '610902', '汉滨区', '610900');
INSERT INTO `cs_district` VALUES (2859, '610921', '汉阴县', '610900');
INSERT INTO `cs_district` VALUES (2860, '610922', '石泉县', '610900');
INSERT INTO `cs_district` VALUES (2861, '610923', '宁陕县', '610900');
INSERT INTO `cs_district` VALUES (2862, '610924', '紫阳县', '610900');
INSERT INTO `cs_district` VALUES (2863, '610925', '岚皋县', '610900');
INSERT INTO `cs_district` VALUES (2864, '610926', '平利县', '610900');
INSERT INTO `cs_district` VALUES (2865, '610927', '镇坪县', '610900');
INSERT INTO `cs_district` VALUES (2866, '610928', '旬阳县', '610900');
INSERT INTO `cs_district` VALUES (2867, '610929', '白河县', '610900');
INSERT INTO `cs_district` VALUES (2868, '611001', '市辖区', '611000');
INSERT INTO `cs_district` VALUES (2869, '611002', '商州区', '611000');
INSERT INTO `cs_district` VALUES (2870, '611021', '洛南县', '611000');
INSERT INTO `cs_district` VALUES (2871, '611022', '丹凤县', '611000');
INSERT INTO `cs_district` VALUES (2872, '611023', '商南县', '611000');
INSERT INTO `cs_district` VALUES (2873, '611024', '山阳县', '611000');
INSERT INTO `cs_district` VALUES (2874, '611025', '镇安县', '611000');
INSERT INTO `cs_district` VALUES (2875, '611026', '柞水县', '611000');
INSERT INTO `cs_district` VALUES (2876, '620101', '市辖区', '620100');
INSERT INTO `cs_district` VALUES (2877, '620102', '城关区', '620100');
INSERT INTO `cs_district` VALUES (2878, '620103', '七里河区', '620100');
INSERT INTO `cs_district` VALUES (2879, '620104', '西固区', '620100');
INSERT INTO `cs_district` VALUES (2880, '620105', '安宁区', '620100');
INSERT INTO `cs_district` VALUES (2881, '620111', '红古区', '620100');
INSERT INTO `cs_district` VALUES (2882, '620121', '永登县', '620100');
INSERT INTO `cs_district` VALUES (2883, '620122', '皋兰县', '620100');
INSERT INTO `cs_district` VALUES (2884, '620123', '榆中县', '620100');
INSERT INTO `cs_district` VALUES (2885, '620201', '市辖区', '620200');
INSERT INTO `cs_district` VALUES (2886, '620301', '市辖区', '620300');
INSERT INTO `cs_district` VALUES (2887, '620302', '金川区', '620300');
INSERT INTO `cs_district` VALUES (2888, '620321', '永昌县', '620300');
INSERT INTO `cs_district` VALUES (2889, '620401', '市辖区', '620400');
INSERT INTO `cs_district` VALUES (2890, '620402', '白银区', '620400');
INSERT INTO `cs_district` VALUES (2891, '620403', '平川区', '620400');
INSERT INTO `cs_district` VALUES (2892, '620421', '靖远县', '620400');
INSERT INTO `cs_district` VALUES (2893, '620422', '会宁县', '620400');
INSERT INTO `cs_district` VALUES (2894, '620423', '景泰县', '620400');
INSERT INTO `cs_district` VALUES (2895, '620501', '市辖区', '620500');
INSERT INTO `cs_district` VALUES (2896, '620502', '秦城区', '620500');
INSERT INTO `cs_district` VALUES (2897, '620503', '北道区', '620500');
INSERT INTO `cs_district` VALUES (2898, '620521', '清水县', '620500');
INSERT INTO `cs_district` VALUES (2899, '620522', '秦安县', '620500');
INSERT INTO `cs_district` VALUES (2900, '620523', '甘谷县', '620500');
INSERT INTO `cs_district` VALUES (2901, '620524', '武山县', '620500');
INSERT INTO `cs_district` VALUES (2902, '620525', '张家川回族自治县', '620500');
INSERT INTO `cs_district` VALUES (2903, '620601', '市辖区', '620600');
INSERT INTO `cs_district` VALUES (2904, '620602', '凉州区', '620600');
INSERT INTO `cs_district` VALUES (2905, '620621', '民勤县', '620600');
INSERT INTO `cs_district` VALUES (2906, '620622', '古浪县', '620600');
INSERT INTO `cs_district` VALUES (2907, '620623', '天祝藏族自治县', '620600');
INSERT INTO `cs_district` VALUES (2908, '620701', '市辖区', '620700');
INSERT INTO `cs_district` VALUES (2909, '620702', '甘州区', '620700');
INSERT INTO `cs_district` VALUES (2910, '620721', '肃南裕固族自治县', '620700');
INSERT INTO `cs_district` VALUES (2911, '620722', '民乐县', '620700');
INSERT INTO `cs_district` VALUES (2912, '620723', '临泽县', '620700');
INSERT INTO `cs_district` VALUES (2913, '620724', '高台县', '620700');
INSERT INTO `cs_district` VALUES (2914, '620725', '山丹县', '620700');
INSERT INTO `cs_district` VALUES (2915, '620801', '市辖区', '620800');
INSERT INTO `cs_district` VALUES (2916, '620802', '崆峒区', '620800');
INSERT INTO `cs_district` VALUES (2917, '620821', '泾川县', '620800');
INSERT INTO `cs_district` VALUES (2918, '620822', '灵台县', '620800');
INSERT INTO `cs_district` VALUES (2919, '620823', '崇信县', '620800');
INSERT INTO `cs_district` VALUES (2920, '620824', '华亭县', '620800');
INSERT INTO `cs_district` VALUES (2921, '620825', '庄浪县', '620800');
INSERT INTO `cs_district` VALUES (2922, '620826', '静宁县', '620800');
INSERT INTO `cs_district` VALUES (2923, '620901', '市辖区', '620900');
INSERT INTO `cs_district` VALUES (2924, '620902', '肃州区', '620900');
INSERT INTO `cs_district` VALUES (2925, '620921', '金塔县', '620900');
INSERT INTO `cs_district` VALUES (2926, '620922', '安西县', '620900');
INSERT INTO `cs_district` VALUES (2927, '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `cs_district` VALUES (2928, '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `cs_district` VALUES (2929, '620981', '玉门市', '620900');
INSERT INTO `cs_district` VALUES (2930, '620982', '敦煌市', '620900');
INSERT INTO `cs_district` VALUES (2931, '621001', '市辖区', '621000');
INSERT INTO `cs_district` VALUES (2932, '621002', '西峰区', '621000');
INSERT INTO `cs_district` VALUES (2933, '621021', '庆城县', '621000');
INSERT INTO `cs_district` VALUES (2934, '621022', '环　县', '621000');
INSERT INTO `cs_district` VALUES (2935, '621023', '华池县', '621000');
INSERT INTO `cs_district` VALUES (2936, '621024', '合水县', '621000');
INSERT INTO `cs_district` VALUES (2937, '621025', '正宁县', '621000');
INSERT INTO `cs_district` VALUES (2938, '621026', '宁　县', '621000');
INSERT INTO `cs_district` VALUES (2939, '621027', '镇原县', '621000');
INSERT INTO `cs_district` VALUES (2940, '621101', '市辖区', '621100');
INSERT INTO `cs_district` VALUES (2941, '621102', '安定区', '621100');
INSERT INTO `cs_district` VALUES (2942, '621121', '通渭县', '621100');
INSERT INTO `cs_district` VALUES (2943, '621122', '陇西县', '621100');
INSERT INTO `cs_district` VALUES (2944, '621123', '渭源县', '621100');
INSERT INTO `cs_district` VALUES (2945, '621124', '临洮县', '621100');
INSERT INTO `cs_district` VALUES (2946, '621125', '漳　县', '621100');
INSERT INTO `cs_district` VALUES (2947, '621126', '岷　县', '621100');
INSERT INTO `cs_district` VALUES (2948, '621201', '市辖区', '621200');
INSERT INTO `cs_district` VALUES (2949, '621202', '武都区', '621200');
INSERT INTO `cs_district` VALUES (2950, '621221', '成　县', '621200');
INSERT INTO `cs_district` VALUES (2951, '621222', '文　县', '621200');
INSERT INTO `cs_district` VALUES (2952, '621223', '宕昌县', '621200');
INSERT INTO `cs_district` VALUES (2953, '621224', '康　县', '621200');
INSERT INTO `cs_district` VALUES (2954, '621225', '西和县', '621200');
INSERT INTO `cs_district` VALUES (2955, '621226', '礼　县', '621200');
INSERT INTO `cs_district` VALUES (2956, '621227', '徽　县', '621200');
INSERT INTO `cs_district` VALUES (2957, '621228', '两当县', '621200');
INSERT INTO `cs_district` VALUES (2958, '622901', '临夏市', '622900');
INSERT INTO `cs_district` VALUES (2959, '622921', '临夏县', '622900');
INSERT INTO `cs_district` VALUES (2960, '622922', '康乐县', '622900');
INSERT INTO `cs_district` VALUES (2961, '622923', '永靖县', '622900');
INSERT INTO `cs_district` VALUES (2962, '622924', '广河县', '622900');
INSERT INTO `cs_district` VALUES (2963, '622925', '和政县', '622900');
INSERT INTO `cs_district` VALUES (2964, '622926', '东乡族自治县', '622900');
INSERT INTO `cs_district` VALUES (2965, '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `cs_district` VALUES (2966, '623001', '合作市', '623000');
INSERT INTO `cs_district` VALUES (2967, '623021', '临潭县', '623000');
INSERT INTO `cs_district` VALUES (2968, '623022', '卓尼县', '623000');
INSERT INTO `cs_district` VALUES (2969, '623023', '舟曲县', '623000');
INSERT INTO `cs_district` VALUES (2970, '623024', '迭部县', '623000');
INSERT INTO `cs_district` VALUES (2971, '623025', '玛曲县', '623000');
INSERT INTO `cs_district` VALUES (2972, '623026', '碌曲县', '623000');
INSERT INTO `cs_district` VALUES (2973, '623027', '夏河县', '623000');
INSERT INTO `cs_district` VALUES (2974, '630101', '市辖区', '630100');
INSERT INTO `cs_district` VALUES (2975, '630102', '城东区', '630100');
INSERT INTO `cs_district` VALUES (2976, '630103', '城中区', '630100');
INSERT INTO `cs_district` VALUES (2977, '630104', '城西区', '630100');
INSERT INTO `cs_district` VALUES (2978, '630105', '城北区', '630100');
INSERT INTO `cs_district` VALUES (2979, '630121', '大通回族土族自治县', '630100');
INSERT INTO `cs_district` VALUES (2980, '630122', '湟中县', '630100');
INSERT INTO `cs_district` VALUES (2981, '630123', '湟源县', '630100');
INSERT INTO `cs_district` VALUES (2982, '632121', '平安县', '632100');
INSERT INTO `cs_district` VALUES (2983, '632122', '民和回族土族自治县', '632100');
INSERT INTO `cs_district` VALUES (2984, '632123', '乐都县', '632100');
INSERT INTO `cs_district` VALUES (2985, '632126', '互助土族自治县', '632100');
INSERT INTO `cs_district` VALUES (2986, '632127', '化隆回族自治县', '632100');
INSERT INTO `cs_district` VALUES (2987, '632128', '循化撒拉族自治县', '632100');
INSERT INTO `cs_district` VALUES (2988, '632221', '门源回族自治县', '632200');
INSERT INTO `cs_district` VALUES (2989, '632222', '祁连县', '632200');
INSERT INTO `cs_district` VALUES (2990, '632223', '海晏县', '632200');
INSERT INTO `cs_district` VALUES (2991, '632224', '刚察县', '632200');
INSERT INTO `cs_district` VALUES (2992, '632321', '同仁县', '632300');
INSERT INTO `cs_district` VALUES (2993, '632322', '尖扎县', '632300');
INSERT INTO `cs_district` VALUES (2994, '632323', '泽库县', '632300');
INSERT INTO `cs_district` VALUES (2995, '632324', '河南蒙古族自治县', '632300');
INSERT INTO `cs_district` VALUES (2996, '632521', '共和县', '632500');
INSERT INTO `cs_district` VALUES (2997, '632522', '同德县', '632500');
INSERT INTO `cs_district` VALUES (2998, '632523', '贵德县', '632500');
INSERT INTO `cs_district` VALUES (2999, '632524', '兴海县', '632500');
INSERT INTO `cs_district` VALUES (3000, '632525', '贵南县', '632500');
INSERT INTO `cs_district` VALUES (3001, '632621', '玛沁县', '632600');
INSERT INTO `cs_district` VALUES (3002, '632622', '班玛县', '632600');
INSERT INTO `cs_district` VALUES (3003, '632623', '甘德县', '632600');
INSERT INTO `cs_district` VALUES (3004, '632624', '达日县', '632600');
INSERT INTO `cs_district` VALUES (3005, '632625', '久治县', '632600');
INSERT INTO `cs_district` VALUES (3006, '632626', '玛多县', '632600');
INSERT INTO `cs_district` VALUES (3007, '632721', '玉树县', '632700');
INSERT INTO `cs_district` VALUES (3008, '632722', '杂多县', '632700');
INSERT INTO `cs_district` VALUES (3009, '632723', '称多县', '632700');
INSERT INTO `cs_district` VALUES (3010, '632724', '治多县', '632700');
INSERT INTO `cs_district` VALUES (3011, '632725', '囊谦县', '632700');
INSERT INTO `cs_district` VALUES (3012, '632726', '曲麻莱县', '632700');
INSERT INTO `cs_district` VALUES (3013, '632801', '格尔木市', '632800');
INSERT INTO `cs_district` VALUES (3014, '632802', '德令哈市', '632800');
INSERT INTO `cs_district` VALUES (3015, '632821', '乌兰县', '632800');
INSERT INTO `cs_district` VALUES (3016, '632822', '都兰县', '632800');
INSERT INTO `cs_district` VALUES (3017, '632823', '天峻县', '632800');
INSERT INTO `cs_district` VALUES (3018, '640101', '市辖区', '640100');
INSERT INTO `cs_district` VALUES (3019, '640104', '兴庆区', '640100');
INSERT INTO `cs_district` VALUES (3020, '640105', '西夏区', '640100');
INSERT INTO `cs_district` VALUES (3021, '640106', '金凤区', '640100');
INSERT INTO `cs_district` VALUES (3022, '640121', '永宁县', '640100');
INSERT INTO `cs_district` VALUES (3023, '640122', '贺兰县', '640100');
INSERT INTO `cs_district` VALUES (3024, '640181', '灵武市', '640100');
INSERT INTO `cs_district` VALUES (3025, '640201', '市辖区', '640200');
INSERT INTO `cs_district` VALUES (3026, '640202', '大武口区', '640200');
INSERT INTO `cs_district` VALUES (3027, '640205', '惠农区', '640200');
INSERT INTO `cs_district` VALUES (3028, '640221', '平罗县', '640200');
INSERT INTO `cs_district` VALUES (3029, '640301', '市辖区', '640300');
INSERT INTO `cs_district` VALUES (3030, '640302', '利通区', '640300');
INSERT INTO `cs_district` VALUES (3031, '640323', '盐池县', '640300');
INSERT INTO `cs_district` VALUES (3032, '640324', '同心县', '640300');
INSERT INTO `cs_district` VALUES (3033, '640381', '青铜峡市', '640300');
INSERT INTO `cs_district` VALUES (3034, '640401', '市辖区', '640400');
INSERT INTO `cs_district` VALUES (3035, '640402', '原州区', '640400');
INSERT INTO `cs_district` VALUES (3036, '640422', '西吉县', '640400');
INSERT INTO `cs_district` VALUES (3037, '640423', '隆德县', '640400');
INSERT INTO `cs_district` VALUES (3038, '640424', '泾源县', '640400');
INSERT INTO `cs_district` VALUES (3039, '640425', '彭阳县', '640400');
INSERT INTO `cs_district` VALUES (3040, '640501', '市辖区', '640500');
INSERT INTO `cs_district` VALUES (3041, '640502', '沙坡头区', '640500');
INSERT INTO `cs_district` VALUES (3042, '640521', '中宁县', '640500');
INSERT INTO `cs_district` VALUES (3043, '640522', '海原县', '640400');
INSERT INTO `cs_district` VALUES (3044, '650101', '市辖区', '650100');
INSERT INTO `cs_district` VALUES (3045, '650102', '天山区', '650100');
INSERT INTO `cs_district` VALUES (3046, '650103', '沙依巴克区', '650100');
INSERT INTO `cs_district` VALUES (3047, '650104', '新市区', '650100');
INSERT INTO `cs_district` VALUES (3048, '650105', '水磨沟区', '650100');
INSERT INTO `cs_district` VALUES (3049, '650106', '头屯河区', '650100');
INSERT INTO `cs_district` VALUES (3050, '650107', '达坂城区', '650100');
INSERT INTO `cs_district` VALUES (3051, '650108', '东山区', '650100');
INSERT INTO `cs_district` VALUES (3052, '650121', '乌鲁木齐县', '650100');
INSERT INTO `cs_district` VALUES (3053, '650201', '市辖区', '650200');
INSERT INTO `cs_district` VALUES (3054, '650202', '独山子区', '650200');
INSERT INTO `cs_district` VALUES (3055, '650203', '克拉玛依区', '650200');
INSERT INTO `cs_district` VALUES (3056, '650204', '白碱滩区', '650200');
INSERT INTO `cs_district` VALUES (3057, '650205', '乌尔禾区', '650200');
INSERT INTO `cs_district` VALUES (3058, '652101', '吐鲁番市', '652100');
INSERT INTO `cs_district` VALUES (3059, '652122', '鄯善县', '652100');
INSERT INTO `cs_district` VALUES (3060, '652123', '托克逊县', '652100');
INSERT INTO `cs_district` VALUES (3061, '652201', '哈密市', '652200');
INSERT INTO `cs_district` VALUES (3062, '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `cs_district` VALUES (3063, '652223', '伊吾县', '652200');
INSERT INTO `cs_district` VALUES (3064, '652301', '昌吉市', '652300');
INSERT INTO `cs_district` VALUES (3065, '652302', '阜康市', '652300');
INSERT INTO `cs_district` VALUES (3066, '652303', '米泉市', '652300');
INSERT INTO `cs_district` VALUES (3067, '652323', '呼图壁县', '652300');
INSERT INTO `cs_district` VALUES (3068, '652324', '玛纳斯县', '652300');
INSERT INTO `cs_district` VALUES (3069, '652325', '奇台县', '652300');
INSERT INTO `cs_district` VALUES (3070, '652327', '吉木萨尔县', '652300');
INSERT INTO `cs_district` VALUES (3071, '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `cs_district` VALUES (3072, '652701', '博乐市', '652700');
INSERT INTO `cs_district` VALUES (3073, '652722', '精河县', '652700');
INSERT INTO `cs_district` VALUES (3074, '652723', '温泉县', '652700');
INSERT INTO `cs_district` VALUES (3075, '652801', '库尔勒市', '652800');
INSERT INTO `cs_district` VALUES (3076, '652822', '轮台县', '652800');
INSERT INTO `cs_district` VALUES (3077, '652823', '尉犁县', '652800');
INSERT INTO `cs_district` VALUES (3078, '652824', '若羌县', '652800');
INSERT INTO `cs_district` VALUES (3079, '652825', '且末县', '652800');
INSERT INTO `cs_district` VALUES (3080, '652826', '焉耆回族自治县', '652800');
INSERT INTO `cs_district` VALUES (3081, '652827', '和静县', '652800');
INSERT INTO `cs_district` VALUES (3082, '652828', '和硕县', '652800');
INSERT INTO `cs_district` VALUES (3083, '652829', '博湖县', '652800');
INSERT INTO `cs_district` VALUES (3084, '652901', '阿克苏市', '652900');
INSERT INTO `cs_district` VALUES (3085, '652922', '温宿县', '652900');
INSERT INTO `cs_district` VALUES (3086, '652923', '库车县', '652900');
INSERT INTO `cs_district` VALUES (3087, '652924', '沙雅县', '652900');
INSERT INTO `cs_district` VALUES (3088, '652925', '新和县', '652900');
INSERT INTO `cs_district` VALUES (3089, '652926', '拜城县', '652900');
INSERT INTO `cs_district` VALUES (3090, '652927', '乌什县', '652900');
INSERT INTO `cs_district` VALUES (3091, '652928', '阿瓦提县', '652900');
INSERT INTO `cs_district` VALUES (3092, '652929', '柯坪县', '652900');
INSERT INTO `cs_district` VALUES (3093, '653001', '阿图什市', '653000');
INSERT INTO `cs_district` VALUES (3094, '653022', '阿克陶县', '653000');
INSERT INTO `cs_district` VALUES (3095, '653023', '阿合奇县', '653000');
INSERT INTO `cs_district` VALUES (3096, '653024', '乌恰县', '653000');
INSERT INTO `cs_district` VALUES (3097, '653101', '喀什市', '653100');
INSERT INTO `cs_district` VALUES (3098, '653121', '疏附县', '653100');
INSERT INTO `cs_district` VALUES (3099, '653122', '疏勒县', '653100');
INSERT INTO `cs_district` VALUES (3100, '653123', '英吉沙县', '653100');
INSERT INTO `cs_district` VALUES (3101, '653124', '泽普县', '653100');
INSERT INTO `cs_district` VALUES (3102, '653125', '莎车县', '653100');
INSERT INTO `cs_district` VALUES (3103, '653126', '叶城县', '653100');
INSERT INTO `cs_district` VALUES (3104, '653127', '麦盖提县', '653100');
INSERT INTO `cs_district` VALUES (3105, '653128', '岳普湖县', '653100');
INSERT INTO `cs_district` VALUES (3106, '653129', '伽师县', '653100');
INSERT INTO `cs_district` VALUES (3107, '653130', '巴楚县', '653100');
INSERT INTO `cs_district` VALUES (3108, '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `cs_district` VALUES (3109, '653201', '和田市', '653200');
INSERT INTO `cs_district` VALUES (3110, '653221', '和田县', '653200');
INSERT INTO `cs_district` VALUES (3111, '653222', '墨玉县', '653200');
INSERT INTO `cs_district` VALUES (3112, '653223', '皮山县', '653200');
INSERT INTO `cs_district` VALUES (3113, '653224', '洛浦县', '653200');
INSERT INTO `cs_district` VALUES (3114, '653225', '策勒县', '653200');
INSERT INTO `cs_district` VALUES (3115, '653226', '于田县', '653200');
INSERT INTO `cs_district` VALUES (3116, '653227', '民丰县', '653200');
INSERT INTO `cs_district` VALUES (3117, '654002', '伊宁市', '654000');
INSERT INTO `cs_district` VALUES (3118, '654003', '奎屯市', '654000');
INSERT INTO `cs_district` VALUES (3119, '654021', '伊宁县', '654000');
INSERT INTO `cs_district` VALUES (3120, '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `cs_district` VALUES (3121, '654023', '霍城县', '654000');
INSERT INTO `cs_district` VALUES (3122, '654024', '巩留县', '654000');
INSERT INTO `cs_district` VALUES (3123, '654025', '新源县', '654000');
INSERT INTO `cs_district` VALUES (3124, '654026', '昭苏县', '654000');
INSERT INTO `cs_district` VALUES (3125, '654027', '特克斯县', '654000');
INSERT INTO `cs_district` VALUES (3126, '654028', '尼勒克县', '654000');
INSERT INTO `cs_district` VALUES (3127, '654201', '塔城市', '654200');
INSERT INTO `cs_district` VALUES (3128, '654202', '乌苏市', '654200');
INSERT INTO `cs_district` VALUES (3129, '654221', '额敏县', '654200');
INSERT INTO `cs_district` VALUES (3130, '654223', '沙湾县', '654200');
INSERT INTO `cs_district` VALUES (3131, '654224', '托里县', '654200');
INSERT INTO `cs_district` VALUES (3132, '654225', '裕民县', '654200');
INSERT INTO `cs_district` VALUES (3133, '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `cs_district` VALUES (3134, '654301', '阿勒泰市', '654300');
INSERT INTO `cs_district` VALUES (3135, '654321', '布尔津县', '654300');
INSERT INTO `cs_district` VALUES (3136, '654322', '富蕴县', '654300');
INSERT INTO `cs_district` VALUES (3137, '654323', '福海县', '654300');
INSERT INTO `cs_district` VALUES (3138, '654324', '哈巴河县', '654300');
INSERT INTO `cs_district` VALUES (3139, '654325', '青河县', '654300');
INSERT INTO `cs_district` VALUES (3140, '654326', '吉木乃县', '654300');
INSERT INTO `cs_district` VALUES (3141, '659001', '石河子市', '659000');
INSERT INTO `cs_district` VALUES (3142, '659002', '阿拉尔市', '659000');
INSERT INTO `cs_district` VALUES (3143, '659003', '图木舒克市', '659000');
INSERT INTO `cs_district` VALUES (3144, '659004', '五家渠市', '659000');

-- ----------------------------
-- Table structure for cs_finance
-- ----------------------------
DROP TABLE IF EXISTS `cs_finance`;
CREATE TABLE `cs_finance`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '1花费 2提现 3佣金获得',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1已完成0初始化',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(20, 8) NOT NULL DEFAULT 0.00000000 COMMENT '金额',
  `last_money` decimal(20, 8) NOT NULL DEFAULT 0.00000000,
  `create_time` int(11) NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT 0 COMMENT '如果为0则是前台日志 不为0为后台日志',
  `currency` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1是用户积分 2是人民币',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `种类`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_finance
-- ----------------------------
INSERT INTO `cs_finance` VALUES (1, 1, 2, '用户123提现100.00元成功', 0, 2, 100.00000000, 0.00000000, 1577438877, 0, 0, 2);

-- ----------------------------
-- Table structure for cs_member
-- ----------------------------
DROP TABLE IF EXISTS `cs_member`;
CREATE TABLE `cs_member`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `head_img` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '用户头像',
  `mobile` char(11) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '用户手机号',
  `password` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '用户密码',
  `level` tinyint(1) NULL DEFAULT NULL COMMENT '用户等级',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '用户状态',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(10) NOT NULL DEFAULT 0,
  `login_num` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '登录次数',
  `last_login_time` int(11) NULL DEFAULT NULL COMMENT '登录时间',
  `last_login_ip` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '登录ip',
  `invitation` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '上级邀请码',
  `code` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '我的邀请码',
  `paymat_code` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '交易密码',
  `openid` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '用户绑定的openid',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '判断是否删除',
  `is_vip` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为会员',
  `wx_code` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '用户提现的wx二维码',
  `ali_code` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '用户提现的阿里二维码',
  `money` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '我的余额',
  `parent_id` int(10) NULL DEFAULT 0 COMMENT '上一级id',
  `push_count` int(10) NULL DEFAULT 0 COMMENT '直推人数  暂用',
  `group_count` int(10) NULL DEFAULT 0 COMMENT '团体人数  暂用',
  `token` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT '0',
  `day_withdrawal` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '每日提现金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_member
-- ----------------------------
INSERT INTO `cs_member` VALUES (1, 'xiaowang1', '123', '/uploads/attachment/20191226/4b74302349d81409ad9e0a1cc5d17ad8.jpg', '15704255350', '25d55ad283aa400af464c76d713c07ad', 1, 1, 1577095499, 1578376699, NULL, NULL, NULL, NULL, '123456', NULL, '123456', 0, 1, '/uploads/attachment/20191227/87e5db0d2dc688db213e341ad3858690.jpg', '/uploads/attachment/20191227/87e5db0d2dc688db213e341ad3858690.jpg', 0.00, 0, 0, 0, NULL, 400.00);
INSERT INTO `cs_member` VALUES (2, 'asd', 'xiaowang', '/uploads/attachment/20191223/005f461c1dc3691e823f5da3ebedf131.jpg', '15704255351', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 1577095499, 1577095763, NULL, NULL, NULL, 'code123', '456789', NULL, NULL, 0, 0, NULL, NULL, 0.00, 0, 0, 0, NULL, 0.00);
INSERT INTO `cs_member` VALUES (3, '秀er', '秀er', '/uploads/attachment/20191225/b3796a3842cc481262b4fc9d4bc695b7.jpg', '15704255353', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 1577236294, 1577236294, NULL, NULL, NULL, '123456', '3nMisN', '123456', NULL, 0, 0, NULL, NULL, 0.00, 0, 0, 0, NULL, 0.00);
INSERT INTO `cs_member` VALUES (4, '修', '修', '/uploads/attachment/20191225/f5b6da9ab586f2c07194278d583d9961.jpg', '15704255352', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 1577236905, 1577236905, NULL, NULL, NULL, '123456', '6Eio5a', '123456', NULL, 0, 0, NULL, NULL, 0.00, 1, 0, 0, NULL, 0.00);
INSERT INTO `cs_member` VALUES (5, '123', '123', '/uploads/attachment/20191226/701bf0df727752fde8d2ec20c75773b1.jpg', '15704255556', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 1577332226, 1577332226, NULL, NULL, NULL, '', 'EntzGB', '123', NULL, 0, 0, NULL, NULL, 0.00, NULL, 0, 0, NULL, 0.00);
INSERT INTO `cs_member` VALUES (7, '123', '', '/uploads/attachment/20200104/15781059355606.png', '15704255360', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 1578105935, 1578110011, NULL, NULL, NULL, '123456', '1b8jcG', NULL, NULL, 0, 0, NULL, NULL, 0.00, 1, 0, 0, '0', 0.00);
INSERT INTO `cs_member` VALUES (8, '123', '', '/uploads/attachment/20200107/15783767665937.png', '15704255361', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 1578376766, 1578466963, NULL, NULL, NULL, '123456', 'HmdifC', NULL, NULL, 0, 0, NULL, NULL, 0.00, 1, 0, 0, '0', 0.00);

-- ----------------------------
-- Table structure for cs_message
-- ----------------------------
DROP TABLE IF EXISTS `cs_message`;
CREATE TABLE `cs_message`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf16 COLLATE utf16_bin NULL COMMENT '消息内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0未读1已读',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `admin_id` int(10) NULL DEFAULT NULL COMMENT '后台用户id',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `url` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '跳转路径',
  `read_time` int(10) NULL DEFAULT NULL COMMENT '最近一次阅读时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_message
-- ----------------------------
INSERT INTO `cs_message` VALUES (5, '系统公告', '系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告', 0, 7, 1, 1578120596, NULL, NULL);
INSERT INTO `cs_message` VALUES (2, '系统公告', '名称大市场爱迪生 阿迪王啊安慰啊', 0, 1, 1, 1577181101, 'Shop_ShopInfo_33', NULL);
INSERT INTO `cs_message` VALUES (3, '系统公告', '名称大市场爱迪生 阿迪王啊安慰啊', 0, 2, 1, 1577181101, 'Shop_ShopInfo_34', NULL);
INSERT INTO `cs_message` VALUES (4, '消息', '本次活动地址', 0, 1, 1, 1577179476, 'Shop_ShopInfo_32', NULL);
INSERT INTO `cs_message` VALUES (6, '系统公告', '系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告系统公告', 0, 5, 1, 1578120596, NULL, NULL);

-- ----------------------------
-- Table structure for cs_migrations
-- ----------------------------
DROP TABLE IF EXISTS `cs_migrations`;
CREATE TABLE `cs_migrations`  (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `end_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库迁移' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_migrations
-- ----------------------------
INSERT INTO `cs_migrations` VALUES (20190302092540, 'AdminMenu', '2019-10-31 17:04:57', '2019-10-31 17:04:57', 0);
INSERT INTO `cs_migrations` VALUES (20190302094849, 'AdminUser', '2019-10-31 17:04:57', '2019-10-31 17:04:57', 0);
INSERT INTO `cs_migrations` VALUES (20190302094853, 'AdminLog', '2019-10-31 17:04:57', '2019-10-31 17:04:57', 0);
INSERT INTO `cs_migrations` VALUES (20190302094933, 'AdminRole', '2019-10-31 17:04:57', '2019-10-31 17:04:57', 0);
INSERT INTO `cs_migrations` VALUES (20190312021143, 'AdminLogData', '2019-10-31 17:04:57', '2019-10-31 17:04:57', 0);
INSERT INTO `cs_migrations` VALUES (20190518030432, 'Attachment', '2019-10-31 17:04:57', '2019-10-31 17:04:57', 0);
INSERT INTO `cs_migrations` VALUES (20190615081122, 'User', '2019-10-31 17:04:57', '2019-10-31 17:04:58', 0);
INSERT INTO `cs_migrations` VALUES (20190822082112, 'UserLevel', '2019-10-31 17:04:58', '2019-10-31 17:04:58', 0);
INSERT INTO `cs_migrations` VALUES (20191001081329, 'Setting', '2019-10-31 17:04:58', '2019-10-31 17:04:58', 0);
INSERT INTO `cs_migrations` VALUES (20191001081340, 'SettingGroup', '2019-10-31 17:04:58', '2019-10-31 17:04:58', 0);
INSERT INTO `cs_migrations` VALUES (20191012005355, 'Test', '2019-10-31 17:04:58', '2019-10-31 17:04:58', 0);

-- ----------------------------
-- Table structure for cs_province
-- ----------------------------
DROP TABLE IF EXISTS `cs_province`;
CREATE TABLE `cs_province`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `Name` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_province
-- ----------------------------
INSERT INTO `cs_province` VALUES (1, '110000', '北京市');
INSERT INTO `cs_province` VALUES (2, '120000', '天津市');
INSERT INTO `cs_province` VALUES (3, '130000', '河北省');
INSERT INTO `cs_province` VALUES (4, '140000', '山西省');
INSERT INTO `cs_province` VALUES (5, '150000', '内蒙古自治区');
INSERT INTO `cs_province` VALUES (6, '210000', '辽宁省');
INSERT INTO `cs_province` VALUES (7, '220000', '吉林省');
INSERT INTO `cs_province` VALUES (8, '230000', '黑龙江省');
INSERT INTO `cs_province` VALUES (9, '310000', '上海市');
INSERT INTO `cs_province` VALUES (10, '320000', '江苏省');
INSERT INTO `cs_province` VALUES (11, '330000', '浙江省');
INSERT INTO `cs_province` VALUES (12, '340000', '安徽省');
INSERT INTO `cs_province` VALUES (13, '350000', '福建省');
INSERT INTO `cs_province` VALUES (14, '360000', '江西省');
INSERT INTO `cs_province` VALUES (15, '370000', '山东省');
INSERT INTO `cs_province` VALUES (16, '410000', '河南省');
INSERT INTO `cs_province` VALUES (17, '420000', '湖北省');
INSERT INTO `cs_province` VALUES (18, '430000', '湖南省');
INSERT INTO `cs_province` VALUES (19, '440000', '广东省');
INSERT INTO `cs_province` VALUES (20, '450000', '广西壮族自治区');
INSERT INTO `cs_province` VALUES (21, '460000', '海南省');
INSERT INTO `cs_province` VALUES (22, '500000', '重庆市');
INSERT INTO `cs_province` VALUES (23, '510000', '四川省');
INSERT INTO `cs_province` VALUES (24, '520000', '贵州省');
INSERT INTO `cs_province` VALUES (25, '530000', '云南省');
INSERT INTO `cs_province` VALUES (26, '540000', '西藏自治区');
INSERT INTO `cs_province` VALUES (27, '610000', '陕西省');
INSERT INTO `cs_province` VALUES (28, '620000', '甘肃省');
INSERT INTO `cs_province` VALUES (29, '630000', '青海省');
INSERT INTO `cs_province` VALUES (30, '640000', '宁夏回族自治区');
INSERT INTO `cs_province` VALUES (31, '650000', '新疆维吾尔自治区');
INSERT INTO `cs_province` VALUES (32, '710000', '台湾省');
INSERT INTO `cs_province` VALUES (33, '810000', '香港特别行政区');
INSERT INTO `cs_province` VALUES (34, '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for cs_result
-- ----------------------------
DROP TABLE IF EXISTS `cs_result`;
CREATE TABLE `cs_result`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` text CHARACTER SET utf16 COLLATE utf16_bin NULL COMMENT '标题',
  `content` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '内容',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1退款愿意 2取消原因',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1启用 0禁用',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_result
-- ----------------------------
INSERT INTO `cs_result` VALUES (1, '不想买了', '不想买了', 2, 1, 1577266051);
INSERT INTO `cs_result` VALUES (2, '重新拍', '信息错误,重新拍', 2, 1, 1577266051);
INSERT INTO `cs_result` VALUES (3, '缺货', '卖家缺货', 2, 1, 1577266051);
INSERT INTO `cs_result` VALUES (4, '其他原因', '其他原因', 2, 1, 1577266051);
INSERT INTO `cs_result` VALUES (5, '质量', '商品质量问题', 1, 1, 1577266051);
INSERT INTO `cs_result` VALUES (7, '不同', '商品不同', 1, 1, 1577266051);
INSERT INTO `cs_result` VALUES (6, '有误', '商品有误', 1, 1, 1577266051);

-- ----------------------------
-- Table structure for cs_search_history
-- ----------------------------
DROP TABLE IF EXISTS `cs_search_history`;
CREATE TABLE `cs_search_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `search_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '搜索名称',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `uid` int(10) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_search_history
-- ----------------------------
INSERT INTO `cs_search_history` VALUES (2, '财经', 1578273925, 0, 1);
INSERT INTO `cs_search_history` VALUES (3, '财经', 1578274566, 1, 2);
INSERT INTO `cs_search_history` VALUES (5, '财经1', 1578273997, 1, 2);
INSERT INTO `cs_search_history` VALUES (6, '财经666', 1578274558, 1, 2);

-- ----------------------------
-- Table structure for cs_search_hot
-- ----------------------------
DROP TABLE IF EXISTS `cs_search_hot`;
CREATE TABLE `cs_search_hot`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `search_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '热门搜索名称',
  `is_red` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否加红 1加红 0不加红',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否开启',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_search_hot
-- ----------------------------
INSERT INTO `cs_search_hot` VALUES (1, '玉米', 0, 1, 1577242854);
INSERT INTO `cs_search_hot` VALUES (2, '小米', 1, 1, 1577243749);

-- ----------------------------
-- Table structure for cs_setting
-- ----------------------------
DROP TABLE IF EXISTS `cs_setting`;
CREATE TABLE `cs_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_group_id` int(10) NOT NULL DEFAULT 0 COMMENT '所属分组',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置配置及内容',
  `sort_number` int(10) NOT NULL DEFAULT 1000 COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_setting
-- ----------------------------
INSERT INTO `cs_setting` VALUES (1, 1, '基本设置', '后台的基本信息设置', 'base', '[{\"name\":\"\\u540e\\u53f0\\u540d\\u79f0\",\"field\":\"name\",\"type\":\"text\",\"content\":\"\\u7965\\u548c\\u5bb6\\u56ed\\u540e\\u53f0\\u7cfb\\u7edf\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7b80\\u79f0\",\"field\":\"short_name\",\"type\":\"text\",\"content\":\"\\u7965\\u548c\\u5bb6\\u56ed\\u540e\\u53f0\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u4f5c\\u8005\",\"field\":\"author\",\"type\":\"text\",\"content\":\"\\u521b\\u80dc\\u79d1\\u6280\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7248\\u672c\",\"field\":\"version\",\"type\":\"text\",\"content\":\"0.1\",\"option\":\"\"}]', 1000, 1572512698, 1577927814, 0);
INSERT INTO `cs_setting` VALUES (2, 1, '登录设置', '后台登录相关设置', 'login', '[{\"name\":\"\\u767b\\u5f55token\\u9a8c\\u8bc1\",\"field\":\"token\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"\"},{\"name\":\"\\u9a8c\\u8bc1\\u7801\",\"field\":\"captcha\",\"type\":\"select\",\"content\":\"1\",\"option\":\"0||\\u4e0d\\u5f00\\u542f\\r\\n1||\\u56fe\\u5f62\\u9a8c\\u8bc1\\u7801\\r\\n2||\\u6ed1\\u52a8\\u9a8c\\u8bc1\"},{\"name\":\"\\u767b\\u5f55\\u80cc\\u666f\",\"field\":\"background\",\"type\":\"image\",\"content\":\"\\/static\\/admin\\/images\\/login-default-bg.jpg\",\"option\":\"\"}]', 1000, 1572512698, 1572512698, 0);
INSERT INTO `cs_setting` VALUES (3, 1, '首页设置', '后台首页参数设置', 'index', '[{\"name\":\"\\u9ed8\\u8ba4\\u5bc6\\u7801\\u8b66\\u544a\",\"field\":\"password_warning\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u662f\\u5426\\u663e\\u793a\\u63d0\\u793a\\u4fe1\\u606f\",\"field\":\"show_notice\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u63d0\\u793a\\u4fe1\\u606f\\u5185\\u5bb9\",\"field\":\"notice_content\",\"type\":\"text\",\"content\":\"\\u6b22\\u8fce\\u6765\\u5230\\u4f7f\\u7528\\u672c\\u7cfb\\u7edf\\uff0c\\u5de6\\u4fa7\\u4e3a\\u83dc\\u5355\\u533a\\u57df\\uff0c\\u53f3\\u4fa7\\u4e3a\\u529f\\u80fd\\u533a\\u3002\",\"option\":\"\"}]', 1000, 1572512698, 1572512698, 0);
INSERT INTO `cs_setting` VALUES (4, 2, '限时商城logo', '限时商城logo', 'limited_time_mall_logo', '[{\"name\":\"\\u9650\\u65f6\\u5546\\u57celogo\",\"field\":\"attachment\",\"type\":\"image\",\"content\":\"\\/uploads\\/attachment\\/20191129\\/577ed467a8f2f1134e841c4d10c56aa0.png\",\"option\":\"\"}]', 1000, 1575010744, 1575270339, 0);
INSERT INTO `cs_setting` VALUES (5, 2, '限时商品自动转换限量商品', '是否开启限时商品自动转换限量商品', 'automatic_switch_good', '[{\"name\":\"\\u81ea\\u52a8\\u8f6c\\u6362\\u9650\\u65f6\\u9650\\u91cf\\u5546\\u54c1\",\"field\":\"automatic_switch_good\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"}]', 1000, 1575270202, 1575270213, 0);

-- ----------------------------
-- Table structure for cs_setting_group
-- ----------------------------
DROP TABLE IF EXISTS `cs_setting_group`;
CREATE TABLE `cs_setting_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作用模块',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `sort_number` int(10) NOT NULL DEFAULT 1000 COMMENT '排序',
  `auto_create_menu` tinyint(1) NOT NULL DEFAULT 0 COMMENT '自动生成菜单',
  `auto_create_file` tinyint(1) NOT NULL DEFAULT 0 COMMENT '自动生成配置文件',
  `icon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '设置分组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_setting_group
-- ----------------------------
INSERT INTO `cs_setting_group` VALUES (1, 'admin', '后台设置', '后台管理方面的设置', 'admin', 1000, 1, 1, 'fa-adjust', 1572512698, 1572512698, 0);
INSERT INTO `cs_setting_group` VALUES (2, 'api', 'app基本设置', '前端app设置', 'system_app', 1000, 1, 0, 'fa-list', 1575007551, 1575007551, 0);

-- ----------------------------
-- Table structure for cs_shop_activity
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_activity`;
CREATE TABLE `cs_shop_activity`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `type` tinyint(1) UNSIGNED NOT NULL COMMENT '1限时2限量',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `good_ids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品id,json字符串',
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '活动开始时间',
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '活动结束时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商城活动' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_activity
-- ----------------------------
INSERT INTO `cs_shop_activity` VALUES (1, '限时第一次', 1, 1575272835, '[\"2\",\"6\"]', 1575272637, 1575272654, 0);
INSERT INTO `cs_shop_activity` VALUES (2, '限量第一次', 2, 1575272908, '[\"2\",\"6\"]', 1575272905, 1575272907, 0);

-- ----------------------------
-- Table structure for cs_shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_cart`;
CREATE TABLE `cs_shop_cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `good_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品id ,连接',
  `spec_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规格id ,连接',
  `cart_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数量 ,连接',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `goods_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品价格 ,连接',
  `status` tinyint(255) NOT NULL DEFAULT 1,
  `goods_price_new` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_cart
-- ----------------------------
INSERT INTO `cs_shop_cart` VALUES (1, 1, '5,10', '9,10', '9,6', 1577933681, '450,600', 1, '420.01,528.06', 1578377255);
INSERT INTO `cs_shop_cart` VALUES (2, 2, '5,6,6', '8,10,11', '2,6,2', 1577949692, '300.00,600,400', 1, '288.00,528.06,320', NULL);
INSERT INTO `cs_shop_cart` VALUES (3, 3, '5,6', '8,10', '2,1', 1577949692, '300.00,100.00', 1, '288.00,88.01', NULL);
INSERT INTO `cs_shop_cart` VALUES (4, 4, '', '', '', 1577951659, '', 1, '', 1578130726);
INSERT INTO `cs_shop_cart` VALUES (5, 6, '6,6,5,5', '10,11,9,8', '4,2,4,2', 1577951659, '400,200.00,1800,300.00', 1, '352.04,160.00,1680.04,288.00', NULL);
INSERT INTO `cs_shop_cart` VALUES (10, 10, '5,6', '9,10', '9,1', 1577933681, '450,100.00', 1, '420.01,88.01', NULL);

-- ----------------------------
-- Table structure for cs_shop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_coupon`;
CREATE TABLE `cs_shop_coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠券名称',
  `integral` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券有效期限（单位：天）',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态（0：关闭，1：开启）',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `use_min_price`(`use_min_price`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_shop_coupon_issue
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_coupon_issue`;
CREATE TABLE `cs_shop_coupon_issue`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券ID',
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券领取开启时间',
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券领取结束时间',
  `total_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券领取数量',
  `remain_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 正常 0 未开启 2 已无效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `remain_count`(`remain_count`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `start_time`(`start_time`) USING BTREE,
  INDEX `end_time`(`end_time`) USING BTREE,
  INDEX `coupon_id`(`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券前台领取' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_shop_coupon_issue_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_coupon_issue_user`;
CREATE TABLE `cs_shop_coupon_issue_user`  (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券前台领取ID',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  UNIQUE INDEX `uid`(`uid`, `issue_coupon_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券前台用户领取记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_shop_coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_coupon_user`;
CREATE TABLE `cs_shop_coupon_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',
  `coupon_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '优惠券的面值',
  `use_min_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '最低消费多少金额可用优惠券',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '优惠券创建时间',
  `end_time` int(10) UNSIGNED NOT NULL COMMENT '优惠券结束时间',
  `use_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用时间',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `add_time`(`create_time`) USING BTREE,
  INDEX `end_time`(`end_time`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `is_fail`(`is_fail`) USING BTREE,
  INDEX `coupon_id`(`coupon_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券发放记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_shop_good
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_good`;
CREATE TABLE `cs_shop_good`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `keywords` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关键词',
  `info` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '简介',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '附件id列表图片',
  `good_pic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品轮播图json',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 65535 COMMENT '排序',
  `sales_volume` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销量',
  `virtual_volume` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '虚拟销量',
  `browse_volume` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '浏览量',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型0常规1限时2限量3银币4礼包',
  `new_price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT 'VIP价格',
  `gold` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `integral` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `silver` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '银币',
  `stock` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1启用0禁用',
  `is_hot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否热卖1是',
  `is_new` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否新品1是',
  `service` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品服务字符串,英文逗号隔开',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `old_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '正常价格',
  `is_recom` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cate_id`(`cate_id`) USING BTREE,
  INDEX `keyword`(`keywords`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `is_hot`(`is_hot`) USING BTREE,
  INDEX `is_new`(`is_new`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_good
-- ----------------------------
INSERT INTO `cs_shop_good` VALUES (1, 2, '第一个', '第二个第二个第二个第二个第二个', '第二个第二个第二个第二个第二个', '<p>第二个第二个第二个第二个第二个</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '/uploads/attachment/20191225/ea2e534220e33d5f4a71bdcce3b32382.jpg', '', 65535, 100, 100, 0, 0, 88.00, 100, 0, 0, 0, 1, 1, 0, '免邮寄,无线', 1574308784, 1574320980, 100.00, 1);
INSERT INTO `cs_shop_good` VALUES (2, 4, '第二个', '财经', '请帮我写出AJAX异步请求几个步骤的JS代码', '<p><img src=\"/uploads/ueditor/20191121/1042fcbba8c3c442a8401401b9b0ce11.jpeg\" title=\"1042fcbba8c3c442a8401401b9b0ce11.jpeg\"/></p><p><br/></p><p><br/></p>', '/uploads/attachment/20191225/b570f12d60bfd17cb593d9cdf0962235.jpg', '', 65535, 30, 30, 0, 1, 160.00, 600, 60, 0, 0, 1, 0, 0, '免邮寄,无线', 1574320980, 0, 200.00, 0);
INSERT INTO `cs_shop_good` VALUES (3, 2, '第三个', '个人中心', '请帮我写出AJAX异步请求几个步骤的JS代码', '<p>爱仕达大所多群翁无群二风让各位<br/></p>', '/uploads/attachment/20191225/90e748d8c944f34c47d016a10ad67740.jpg', '[\"\\/uploads\\/attachment\\/20191121\\/f2ae255c010f4486d4a06835d2b7066b.png\",\"\\/uploads\\/attachment\\/20191121\\/72786f6baae283ee71408f638f4588e3.png\"]', 65535, 10, 10, 0, 0, 240.00, 0, 0, 0, 0, 1, 0, 0, '免邮寄,无线', 1574328144, 0, 300.00, 0);
INSERT INTO `cs_shop_good` VALUES (4, 4, '第四个', '财经', '请帮我写出AJAX异步请求几个步骤的JS代码', '<p><img src=\"/uploads/ueditor/20191121/1042fcbba8c3c442a8401401b9b0ce11.jpeg\" title=\"1042fcbba8c3c442a8401401b9b0ce11.jpeg\"/></p><p><img src=\"/uploads/ueditor/20191121/af82125ca282a2b9c09f05609b2dc115.jpeg\" title=\"af82125ca282a2b9c09f05609b2dc115.jpeg\"/></p><p><br/></p>', '/uploads/attachment/20191225/02975beef13f44658bd7aeea3ce1a4b4.jpg', '', 65535, 20, 20, 0, 2, 320.00, 600, 0, 0, 0, 1, 0, 0, '免邮寄,无线', 1574320980, 0, 400.00, 0);
INSERT INTO `cs_shop_good` VALUES (5, 2, '有机大米', '大米', '新疆的有机大米', '<p><br/></p><p>1</p><p><br/></p>', '/uploads/attachment/20191225/70ea9017c0426dc8c48d2227760a5306.jpg', '[\"\\/uploads\\/attachment\\/20191225\\/613e28eb6af709d0503b2e6657e58fc0.jpg\",\"\\/uploads\\/attachment\\/20191225\\/3afe52e0aa82224f08713529f1ae9597.jpg\"]', 65535, 30, 30, 0, 3, 400.00, 600, 0, 0, 0, 1, 0, 0, '免邮寄,无线', 1574320980, 0, 500.00, 1);
INSERT INTO `cs_shop_good` VALUES (6, 1, '有机玉米', '玉米', '新疆的有机玉米', '<p>1</p><p><br/></p>', '/uploads/attachment/20191225/53c3047d497008fb2c8a185abe323775.jpg', '[\"\\/uploads\\/attachment\\/20191225\\/60b1490984764b4bcea46c5d21ed7747.jpg\",\"\\/uploads\\/attachment\\/20191225\\/5b3ec8ddf6f11aa6eb6b58a9b4db1aae.jpg\"]', 65535, 80, 80, 0, 1, 450.00, 600, 60, 0, 0, 1, 0, 1, '免邮寄,无线', 1574320980, 0, 600.00, 1);
INSERT INTO `cs_shop_good` VALUES (7, 4, '有机大豆', '农业', '新疆的有机大豆', '<p><br/></p><p><img src=\"/uploads/ueditor/20191121/af82125ca282a2b9c09f05609b2dc115.jpeg\" title=\"af82125ca282a2b9c09f05609b2dc115.jpeg\"/></p><p><br/></p>', '/uploads/attachment/20191225/843150c25a13e260a503ca4a5ab92c42.jpg', '[\"\\/uploads\\/attachment\\/20191225\\/6e6eb0e0ac474dd8b5d88b035846f44e.jpg\",\"\\/uploads\\/attachment\\/20191225\\/7afce2a9f80a14fe60ca9a08e7557c2c.jpg\"]', 65535, 5, 5, 0, 2, 480.00, 600, 0, 0, 0, 1, 0, 1, '免邮寄,无线', 1574320980, 0, 700.00, 1);

-- ----------------------------
-- Table structure for cs_shop_good_cate
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_good_cate`;
CREATE TABLE `cs_shop_good_cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '附件id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id,0顶级',
  `level` tinyint(1) NOT NULL DEFAULT 1 COMMENT '等级',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1启用0禁用',
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 99 COMMENT '排序',
  `is_index` tinyint(1) NOT NULL DEFAULT 0 COMMENT '首页展示',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(11) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_good_cate
-- ----------------------------
INSERT INTO `cs_shop_good_cate` VALUES (1, '类别1', '/uploads/attachment/20191225/dd415d1eea1419556f2724844cea538d.png', 0, 1, 1, 99, 1, 1574217906, 0);
INSERT INTO `cs_shop_good_cate` VALUES (2, '有机分类', '/uploads/attachment/20191225/70f35a46e3493e8e9f7bb2faa59b8401.png', 1, 2, 1, 99, 0, 1574220971, 0);
INSERT INTO `cs_shop_good_cate` VALUES (3, '类别2', '/uploads/attachment/20191225/bd871c79efe1be7d556b222aa331078d.png', 0, 1, 1, 99, 1, 1574236713, 0);
INSERT INTO `cs_shop_good_cate` VALUES (4, '商品二级分类2', '/uploads/attachment/20191225/f594978c53e3fb0610bc4f46222ce958.png', 3, 2, 1, 99, 1, 1574320781, 0);
INSERT INTO `cs_shop_good_cate` VALUES (6, '京东(・。・)', '/uploads/attachment/20200104/e7eda041ed0219545eadefdf03f4a294.png', 1, 2, 1, 99, 0, 1578102034, 0);
INSERT INTO `cs_shop_good_cate` VALUES (8, '分类3', '/uploads/attachment/20200104/5c52f309fde94cc5e0e8a05f9d723ee0.png', 0, 1, 1, 99, 0, 1578124636, 0);

-- ----------------------------
-- Table structure for cs_shop_good_pic
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_good_pic`;
CREATE TABLE `cs_shop_good_pic`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attachment` int(10) UNSIGNED NOT NULL COMMENT '附件id',
  `good_id` int(10) UNSIGNED NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `good_id`(`good_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_shop_good_specs
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_good_specs`;
CREATE TABLE `cs_shop_good_specs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `good_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规格名称',
  `old_price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `gold` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `integral` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `sale_gold` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '挂卖金币',
  `silver` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '银币',
  `stock` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `sales_volume` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销量',
  `delete_time` int(11) NOT NULL DEFAULT 0 COMMENT '删除时间',
  `new_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'VIP价格',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `good_id`(`good_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品规格' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_good_specs
-- ----------------------------
INSERT INTO `cs_shop_good_specs` VALUES (1, 2, '第一个商品的第一个规格11', 0.00, 200, 20, 10, 0, 10, 20, 1577241826, 0.00);
INSERT INTO `cs_shop_good_specs` VALUES (2, 2, '第二个商品的第一个规1', 5.00, 500, 50, 500, 0, 50, 50, 1577241825, 0.00);
INSERT INTO `cs_shop_good_specs` VALUES (3, 1, '第一个商品的第二个规格2', 1.00, 100, 10, 10, 10, 0, 0, 1577241823, 0.00);
INSERT INTO `cs_shop_good_specs` VALUES (4, 4, 'aa1', 0.00, 0, 0, 0, 0, 0, 0, 1577241819, 0.00);
INSERT INTO `cs_shop_good_specs` VALUES (5, 1, '第一个商品的第二个规格', 10.00, 10, 0, 10, 0, 10, 10, 1577241817, 0.00);
INSERT INTO `cs_shop_good_specs` VALUES (6, 2, '婚姻家庭', 10.00, 10, 10, 10, 0, 10, 10, 1577241815, 0.00);
INSERT INTO `cs_shop_good_specs` VALUES (7, 5, '30kg', 500.00, 10, 10, 10, 0, 10, 10, 0, 488.00);
INSERT INTO `cs_shop_good_specs` VALUES (8, 5, '10kg', 300.00, 0, 0, 0, 0, 0, 10, 0, 288.00);
INSERT INTO `cs_shop_good_specs` VALUES (9, 5, '20kg', 450.00, 0, 0, 0, 0, 0, 0, 0, 420.01);
INSERT INTO `cs_shop_good_specs` VALUES (10, 6, '10kg', 100.00, 0, 0, 0, 0, 0, 0, 0, 88.01);
INSERT INTO `cs_shop_good_specs` VALUES (11, 6, '20kg', 200.00, 0, 0, 0, 0, 0, 0, 0, 160.00);
INSERT INTO `cs_shop_good_specs` VALUES (12, 7, '10kg', 100.00, 0, 0, 0, 0, 0, 0, 0, 88.00);
INSERT INTO `cs_shop_good_specs` VALUES (13, 7, '20kg', 200.00, 0, 0, 0, 0, 0, 0, 0, 100.00);

-- ----------------------------
-- Table structure for cs_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_order`;
CREATE TABLE `cs_shop_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '订单号',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0未知1待付款2待发货3待收货4已收货订单完成 5退款中9已取消',
  `total_price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '订单总价',
  `total_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单总数',
  `freight_price` decimal(4, 2) NOT NULL DEFAULT 0.00 COMMENT '运费',
  `pay_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1微信2支付宝',
  `trade_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '三方订单号',
  `pay_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付时间',
  `pay_price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '实际支付金额',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户备注',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `error_msg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方支付错误原因',
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `user_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `delivery_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `delivery_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `refund_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 未退款1申请中2已退款3已拒绝',
  `refund_reason_wap_explain` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '退款时间',
  `refund_reason_wap` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason_id` int(10) NULL DEFAULT NULL COMMENT '退款原因的id',
  `refund_reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拒绝退款的理由',
  `refund_price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '退款金额',
  `address_id` int(10) NULL DEFAULT NULL COMMENT '地址id',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品id',
  `specs_id` int(10) NULL DEFAULT NULL COMMENT '规格id',
  `good_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物品图片',
  `pay_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0未支付 1已支付',
  `update_time` int(10) NULL DEFAULT NULL,
  `order_pay_sn` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付统一支付的订单号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no_2`(`order_no`) USING BTREE,
  INDEX `order_no`(`order_no`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `refund_status`(`refund_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_order
-- ----------------------------
INSERT INTO `cs_shop_order` VALUES (1, '15236559889', 1, 5, 300.00, 2, 0.00, 1, '0', 1577242854, 300.00, '精米asdsad asdasdadsad 精米asdsad asdasdadsad ', 1577242854, 0, NULL, '15704255350', '沈阳北站', NULL, '6665', 1, NULL, 0, '', NULL, '', 0.00, 1, 5, 7, NULL, 0, 1578473076, NULL);
INSERT INTO `cs_shop_order` VALUES (2, '15236559880', 1, 5, 1000.00, 2, 0.00, 2, '0', 1577242854, 1000.00, '精米asdsad asdasdadsad ', 1577242854, 0, NULL, '15704255350', '沈阳北站', '申通', '6665', 1, '退款原因', 0, '原因', NULL, '', 0.00, 1, 5, 7, NULL, 0, 1578472873, NULL);
INSERT INTO `cs_shop_order` VALUES (3, '15236559810', 1, 3, 300.00, 2, 0.00, 1, '0', 1577242854, 300.00, '精米asdsad asdasdadsad ', 1577242854, 0, NULL, '15704255350', '沈阳北站', '申通', '6665', 3, NULL, 1578294536, '6666', 3, '', 0.00, 1, 5, 7, NULL, 0, 1578298128, NULL);
INSERT INTO `cs_shop_order` VALUES (11, '202001021705401677967033', 1, 1, 840.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1577955940, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 5, 9, NULL, 0, NULL, NULL);
INSERT INTO `cs_shop_order` VALUES (12, '202001021705408919812830', 1, 1, 176.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1577955940, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 6, 10, NULL, 0, NULL, NULL);
INSERT INTO `cs_shop_order` VALUES (13, '152365598819', 1, 1, 300.00, 2, 0.00, 0, '0', 1577242854, 300.00, '精米asdsad asdasdadsad 精米asdsad asdasdadsad ', 1577242854, 0, NULL, '15704255350', '沈阳北站', NULL, '6665', 0, NULL, 0, NULL, NULL, NULL, 0.00, 1, 5, 7, NULL, 0, NULL, NULL);
INSERT INTO `cs_shop_order` VALUES (34, '202001081148225109405936', 1, 1, 840.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1578455302, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 5, 9, NULL, 0, NULL, '202001081148223223261842');
INSERT INTO `cs_shop_order` VALUES (35, '202001081148223000261849', 1, 1, 176.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1578455302, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 6, 10, NULL, 0, NULL, '202001081148223223261842');
INSERT INTO `cs_shop_order` VALUES (36, '202001081148436825545922', 1, 1, 840.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1578455323, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 5, 9, NULL, 0, NULL, '202001081148439087535722');
INSERT INTO `cs_shop_order` VALUES (37, '202001081148599519368513', 1, 1, 840.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1578455339, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 5, 9, NULL, 0, NULL, '202001081148592759235323');
INSERT INTO `cs_shop_order` VALUES (38, '202001081148595351879714', 1, 1, 176.02, 2, 0.00, 0, '0', 0, 0.00, '精米123', 1578455339, 0, NULL, '15704255555', '内蒙通辽科尔沁6169', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0.00, 4, 6, 10, NULL, 0, NULL, '202001081148592759235323');

-- ----------------------------
-- Table structure for cs_shop_order_refund_img
-- ----------------------------
DROP TABLE IF EXISTS `cs_shop_order_refund_img`;
CREATE TABLE `cs_shop_order_refund_img`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '图片路径',
  `order_id` int(10) NOT NULL COMMENT '订单id',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_shop_order_refund_img
-- ----------------------------
INSERT INTO `cs_shop_order_refund_img` VALUES (3, '/uploads/attachment/20200106/5011c18a8de3c8caba7b401e74ac697f.png', 1, 1578293244, 0);
INSERT INTO `cs_shop_order_refund_img` VALUES (18, '/uploads/attachment/20200106/22d46e1844585ca573e77376f0d97116.png', 3, 1578294624, NULL);
INSERT INTO `cs_shop_order_refund_img` VALUES (17, '/uploads/attachment/20200106/e674b0be9db845a09d6ebab2a0a5e0c8.png', 3, 1578294624, NULL);

-- ----------------------------
-- Table structure for cs_user_address
-- ----------------------------
DROP TABLE IF EXISTS `cs_user_address`;
CREATE TABLE `cs_user_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL COMMENT '收货人姓名',
  `mobile` char(11) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL COMMENT '收货人电话',
  `province` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '收货人详细地址',
  `post_code` char(20) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `long` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
  `lat` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
  `is_default` tinyint(2) NULL DEFAULT 0 COMMENT '是否默认',
  `status` tinyint(2) NULL DEFAULT 1,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `province_id` int(10) NULL DEFAULT NULL COMMENT '省id',
  `city_id` int(10) NULL DEFAULT NULL COMMENT '市id',
  `district_id` int(10) NULL DEFAULT NULL COMMENT '区id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf32 COLLATE = utf32_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_user_address
-- ----------------------------
INSERT INTO `cs_user_address` VALUES (8, 1, '小王', '15704255355', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁168', '121400', NULL, NULL, 0, 1, 0, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (1, 1, '京东(・。・)', '15704255555', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁168', '121400', NULL, NULL, 0, 1, 1577428288, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (3, 2, '京东(・。・)', '15704255555', '安徽省', '淮北市', '相山区', '河北邯郸复兴', '121400', NULL, NULL, 1, 1, 1577160036, 340000, 340600, 340603);
INSERT INTO `cs_user_address` VALUES (4, 1, '京东(・。・)', '15704255555', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁6169', '121400', NULL, NULL, 0, 1, 0, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (10, 1, '小王', '15704255355', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁1685', '121400', NULL, NULL, 0, 1, 0, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (11, 1, '小王', '15704255355', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁1684', '121400', NULL, NULL, 0, 1, 0, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (12, 1, '小王', '15704255355', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁1683', '121400', NULL, NULL, 0, 1, 0, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (13, 1, '小王', '15704255355', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁1682', '121400', NULL, NULL, 0, 1, 0, 150000, 150300, 150303);
INSERT INTO `cs_user_address` VALUES (14, 1, '小王', '15704255355', '内蒙古', '通辽市', '科尔沁', '内蒙通辽科尔沁1681', '121400', NULL, NULL, 1, 1, 0, 150000, 150300, 150303);

-- ----------------------------
-- Table structure for cs_user_level
-- ----------------------------
DROP TABLE IF EXISTS `cs_user_level`;
CREATE TABLE `cs_user_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL DEFAULT '' COMMENT '等级名称',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` int(10) NULL DEFAULT NULL,
  `img_path` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT '' COMMENT '图片路径',
  `description` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL,
  `push_one` int(11) NULL DEFAULT 0 COMMENT '直推人数标准',
  `group_num` int(11) NULL DEFAULT 0 COMMENT '团体人数',
  `first_per` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '一级分销获得钱数百分比',
  `second_per` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '二级分销获得钱数百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf32 COLLATE = utf32_general_ci COMMENT = '用户等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_user_level
-- ----------------------------
INSERT INTO `cs_user_level` VALUES (1, '1级VIP', 1, 1577166530, 0, '/uploads/attachment/20200107/6417e0ec1023127c33b8ca8d15c9f17a.png', '1级VIP', 5, 10, 2.00, 1.00);
INSERT INTO `cs_user_level` VALUES (2, '2级VIP', 1, 1577166530, 0, '/uploads/attachment/20200107/e2b5257ae651a32819e01b4ff5153c17.png', '2级VIP', 10, 15, 4.00, 2.00);
INSERT INTO `cs_user_level` VALUES (3, '3级VIP', 1, 1577166530, 0, '/uploads/attachment/20200107/2c93fcf5185013079a2bdd9c1c6ae2bf.png', '3级VIP', 15, 20, 6.00, 4.00);

-- ----------------------------
-- Table structure for cs_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `cs_user_login_log`;
CREATE TABLE `cs_user_login_log`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `status` tinyint(2) NULL DEFAULT NULL,
  `create_time` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录描述',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区/县',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_user_login_log
-- ----------------------------
INSERT INTO `cs_user_login_log` VALUES (1, 1, 1, 1577265746, '用户123在登录', '192.168.1.1', '省', '市', '区');
INSERT INTO `cs_user_login_log` VALUES (3, 1, 1, 1577265746, '用户123在登录', '192.168.1.1', '省', '市', '区');

-- ----------------------------
-- Table structure for cs_user_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `cs_user_withdraw`;
CREATE TABLE `cs_user_withdraw`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `price` decimal(10, 2) NOT NULL COMMENT '提现钱数',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1微信 2支付宝',
  `code` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '二维码',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1审核中 0审核未通过 2 提现通过',
  `content` text CHARACTER SET utf16 COLLATE utf16_bin NULL COMMENT '描述',
  `admin_id` int(10) NULL DEFAULT NULL COMMENT '同意人id',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `delete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf16 COLLATE = utf16_bin COMMENT = '用户提现表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_user_withdraw
-- ----------------------------
INSERT INTO `cs_user_withdraw` VALUES (1, 100.00, 1, 'weixinerweima', 1, 2, '123', 1, 1577166530, 0);
INSERT INTO `cs_user_withdraw` VALUES (3, 200.00, 1, '/uploads/attachment/20191227/87e5db0d2dc688db213e341ad3858690.jpg', 1, 1, NULL, NULL, 1577435363, 0);
INSERT INTO `cs_user_withdraw` VALUES (6, 200.00, 1, '/uploads/attachment/20191227/87e5db0d2dc688db213e341ad3858690.jpg', 1, 1, NULL, NULL, 1577435425, 0);

-- ----------------------------
-- Table structure for cs_vip_order
-- ----------------------------
DROP TABLE IF EXISTS `cs_vip_order`;
CREATE TABLE `cs_vip_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `order_sn` varchar(32) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '订单号',
  `price` decimal(10, 2) NOT NULL COMMENT '会员价格',
  `description` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '描述',
  `pay_time` int(10) NOT NULL COMMENT '支付时间',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `pay_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际支付价格',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '支付状态',
  `pay_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1微信 2支付宝',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_vip_package
-- ----------------------------
DROP TABLE IF EXISTS `cs_vip_package`;
CREATE TABLE `cs_vip_package`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vip_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL COMMENT '会员名称',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '会员价格',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `attachment` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL COMMENT '会员附件',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_vip_package
-- ----------------------------
INSERT INTO `cs_vip_package` VALUES (1, '会员', 1880.00, 1, '/uploads/attachment/20200108/b9f93453381a2a806507080736942f42.png', 1578463892, NULL);

-- ----------------------------
-- Table structure for cs_wx_setting
-- ----------------------------
DROP TABLE IF EXISTS `cs_wx_setting`;
CREATE TABLE `cs_wx_setting`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `appsecret` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf16 COLLATE = utf16_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_wx_setting
-- ----------------------------
INSERT INTO `cs_wx_setting` VALUES (1, 'wx3483c0d35fcd4ba2', '000580a1659a30ad0a00abb3474b2ea8', 1, 123);

SET FOREIGN_KEY_CHECKS = 1;
