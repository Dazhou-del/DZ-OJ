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

 Date: 03/09/2023 20:54:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签列表（json 数组）',
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '题目答案',
  `submitNum` int NOT NULL DEFAULT 0 COMMENT '题目提交数',
  `acceptedNum` int NOT NULL DEFAULT 0 COMMENT '题目通过数',
  `judgeCase` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '判题用例（json 数组）',
  `judgeConfig` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '判题配置（json 对象）',
  `thumbNum` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `favourNum` int NOT NULL DEFAULT 0 COMMENT '收藏数',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1698279835966644227 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '题目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 'A+B', '题目内容', '[\"栈\",\"简单\"]', '暴力破解', 0, 0, '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', NULL, 0, 0, 1691401540448927746, '2023-08-16 17:40:33', '2023-09-01 17:13:27', 1);
INSERT INTO `question` VALUES (1691806558503096322, 'C+B', '测试算法', '[\"数组\",\"java\"]', 'daan', 0, 0, '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', NULL, 0, 0, 1691401540448927746, '2023-08-16 21:38:10', '2023-08-30 09:07:42', 1);
INSERT INTO `question` VALUES (1691806660563095553, 'D+H', '测试算法2', '[\"数组\",\"java\"]', 'daan2', 0, 0, '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', NULL, 0, 0, 1691401540448927746, '2023-08-16 21:38:34', '2023-08-30 09:07:41', 1);
INSERT INTO `question` VALUES (1691806702434832385, 'D+E', '测试算法3', '[\"数组\",\"java\"]', 'daan3', 0, 0, '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', NULL, 0, 0, 1691401540448927746, '2023-08-16 21:38:44', '2023-08-16 21:39:11', 1);
INSERT INTO `question` VALUES (1691806827550920705, '修改', '修改', '[\"栈\",\"java\"]', 'xiug', 0, 0, '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', NULL, 0, 0, 1691401540448927746, '2023-08-16 21:39:14', '2023-09-01 17:13:28', 1);
INSERT INTO `question` VALUES (1691812174210584578, '页面创建', 'wwdaw', '[]', 'qweqw', 0, 0, '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', NULL, 0, 0, 1691401540448927746, '2023-08-16 22:00:29', '2023-08-16 22:02:50', 1);
INSERT INTO `question` VALUES (1692444424207937538, 'C+D', 'a+b=c', '[\"java\",\"栈\"]', '    public static void main(String[] args) {\n        int a=1;\n        int b=2;\n        System.out.println(\"a+b=\"+a+b);\n    }', 0, 0, '[{\"input\":\"1 2\",\"output\":\"3 4\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-08-18 15:52:49', '2023-09-01 17:13:31', 1);
INSERT INTO `question` VALUES (1696839087882891265, '数字相加', '# 描述\na+b\n# 输入\n1 2\n# 输出\n3', '[\"简单\"]', 'public class Main {\n    public Main() {\n    }\n\n    public static void main(String[] var0) {\n        int var1 = Integer.parseInt(var0[0]);\n        int var2 = Integer.parseInt(var0[1]);\n        System.out.println(\"结果是\" + (var1 + var2));\n    }\n}', 17, 9, '[{\"input\":\"1 2\",\"output\":\"3\"},{\"input\":\"3 4\",\"output\":\"7\"}]', '{\"timeLimit\":1000,\"memoryLimit\":10000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-08-30 18:55:38', '2023-09-02 21:21:18', 0);
INSERT INTO `question` VALUES (1697088983940780033, '新测试', '# 两数相加\na+b\n# 例如\n输入 1 2\n# 结果\n3', '[\"简单\"]', 'dwadwsw', 0, 0, '[{\"input\":\"1 2\",\"output\":\"3\"},{\"input\":\"3 4\",\"output\":\"7\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-08-31 11:28:38', '2023-09-01 17:13:33', 1);
INSERT INTO `question` VALUES (1697539479805480961, '数字相乘', '# 让两数相乘\n通过args接收参数，让两个数相乘,输出两数相乘之和\n# 输入用例\n5 10\n# 输出用例\n50', '[\"简单\"]', 'public class Main {\n\n    public static void main(String[] args) {\n        int a=Integer.parseInt(args[0]);\n        int b=Integer.parseInt(args[1]);\n        System.out.println(a*b);\n    }\n}', 3, 2, '[{\"input\":\"5 10\",\"output\":\"50\"},{\"input\":\"3 10\",\"output\":\"30\"}]', '{\"timeLimit\":1000,\"memoryLimit\":10000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-01 17:18:45', '2023-09-02 23:28:09', 0);
INSERT INTO `question` VALUES (1697643213382541314, '计算最大值', '# 计算出两个数中的最大值\n通过arg接收到的参数，计算出哪个是最大值,然后输出\n# 输入用例\n22 33\n# 输出\n33\n', '[\"简单\"]', 'public class Main {\n\n    public static void main(String[] args) {\n        //接收第一个参数\n        int a=Integer.parseInt(args[0]);\n        //接收第二个参数\n        int b=Integer.parseInt(args[1]);\n        //计算最大值\n        int max = a > b ? a : b;//存储最大值的变量\n        //输入最大值\n        System.out.println(max);\n    }\n}\n\n', 1, 1, '[{\"input\":\"22 33\",\"output\":\"33\"},{\"input\":\"666 777\",\"output\":\"777\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 00:10:57', '2023-09-02 00:14:44', 0);
INSERT INTO `question` VALUES (1697645286983524353, '数字9出现的次数', '# 统计1~100之间出现了几次数字9\n1=args[0],100=args[1],计算出1-100有多少个9，然后输出\n', '[\"简单\"]', 'public class Main {\npublic static void main(String[] args) {\n  int a=Integer.parseInt(args[0]);\n  int b=Integer.parseInt(args[1]);\n  int count = 0;//记录9的个数\n  for (int i = a; i <= b ; i++) {\n            if (i % 10 == 9) {\n                //看个位是不是9\n                count++;\n            }else if (i / 10 == 9) {\n                //看十位是不是9\n                count++;\n            }\n        }\n        System.out.println(count);\n  }\n}', 2, 2, '[{\"input\":\"1 100\",\"output\":\"19\"}]', '{\"timeLimit\":1000,\"memoryLimit\":3000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 00:19:11', '2023-09-02 00:25:58', 0);
INSERT INTO `question` VALUES (1697648527603458049, '圆的面积', '# 题目描述\n通过args接收参数,有一个半径为 r 的圆，请你计算这个圆的面积。圆的面积公式是π r^2 ，其中 π  取 3.14，计算出结果之后输出。\n# 示例输入\n3\n# 示例输出\n28.26', '[\"简单\"]', 'public class Main {\npublic static void main(String[] args) {\n  int a=Integer.parseInt(args[0]);\n  double s = 0.0;//统计面积\n        s = 3.14 * (a * a);\n        System.out.println(s);\n\n  }\n}', 1, 1, '[{\"input\":\"6\",\"output\":\"113.04\"},{\"input\":\"3\",\"output\":\"28.26\"}]', '{\"timeLimit\":1000,\"memoryLimit\":10000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 00:32:04', '2023-09-03 19:31:29', 0);
INSERT INTO `question` VALUES (1697949864257687553, 'test', 'saw', '[\"test\"]', 'wdqwd', 0, 0, '[{\"input\":\"wqwq\",\"output\":\"wqwd\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 20:29:28', '2023-09-02 20:32:11', 1);
INSERT INTO `question` VALUES (1697949877671071745, 'test', 'saw', '[\"test\"]', 'wdqwd', 0, 0, '[{\"input\":\"wqwq\",\"output\":\"wqwd\"},{\"input\":\"qq\",\"output\":\"dd\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 20:29:31', '2023-09-02 20:32:12', 1);
INSERT INTO `question` VALUES (1697950806717816833, 'ww', 'wdaa', '[\"wawda\"]', 'awdaw', 0, 0, '[{\"input\":\"\",\"output\":\"\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 20:33:13', '2023-09-02 21:22:38', 1);
INSERT INTO `question` VALUES (1697963289260171266, 'wa', 'wdw', '[\"wq\"]', 'caxz', 0, 0, '[{\"input\":\"\",\"output\":\"\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-02 21:22:49', '2023-09-02 21:22:49', 0);
INSERT INTO `question` VALUES (1698279835966644226, 'wavvv', 'wzsfzxcvzxv', '[\"ssaa\"]', 'asdawdawd', 0, 0, '[{\"input\":\"\",\"output\":\"\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1691401540448927746, '2023-09-03 18:20:40', '2023-09-03 18:20:40', 0);

SET FOREIGN_KEY_CHECKS = 1;
