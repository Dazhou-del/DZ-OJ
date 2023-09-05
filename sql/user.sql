/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : oj

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 03/09/2023 20:54:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `unionId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信开放平台id',
  `mpOpenId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公众号openId',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userProfile` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户简介',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unionId`(`unionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1698307135370194946 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1691401540448927746, 'dazhou', 'ed7c70e73d6d4a6814cccb1ac0143ada', NULL, NULL, 'Dazhou', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202005%2F04%2F20200504114907_hUWuv.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1694706954&t=da4d92a4920cb37b8da83b828aff708d', NULL, 'admin', '2023-08-15 18:48:46', '2023-08-15 23:56:09', 0);
INSERT INTO `user` VALUES (1691426512579919874, 'xxxx', 'e5a12260d7e82158b44c621a6ce3dac5', NULL, NULL, NULL, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202005%2F04%2F20200504114907_hUWuv.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1694706954&t=da4d92a4920cb37b8da83b828aff708d', NULL, 'user', '2023-08-15 20:28:00', '2023-08-15 23:56:16', 0);
INSERT INTO `user` VALUES (1691465317718446081, 'aaaa', 'e5a12260d7e82158b44c621a6ce3dac5', NULL, NULL, 'aaaa', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F1e0466ff-3a60-4544-9630-318439662daf%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1694706709&t=8fcfba4944a3202be4105ee55798265c', NULL, 'user', '2023-08-15 23:02:12', '2023-08-15 23:53:44', 0);
INSERT INTO `user` VALUES (1691472399591034882, 'asdf', '5e207b7ac407dc68356462ec6837b9d2', NULL, NULL, 'asdf', NULL, NULL, 'user', '2023-08-15 23:30:20', '2023-08-15 23:30:20', 0);
INSERT INTO `user` VALUES (1697982182599249922, 'xxaa', 'e5a12260d7e82158b44c621a6ce3dac5', NULL, NULL, NULL, NULL, NULL, 'user', '2023-09-02 22:37:53', '2023-09-02 22:37:53', 0);
INSERT INTO `user` VALUES (1698307135370194945, 'qqqq', 'e5a12260d7e82158b44c621a6ce3dac5', NULL, NULL, 'qqqq', NULL, NULL, 'user', '2023-09-03 20:09:08', '2023-09-03 20:09:08', 0);

SET FOREIGN_KEY_CHECKS = 1;
