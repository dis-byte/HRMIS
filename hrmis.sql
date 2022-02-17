/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : hrmis

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 16/02/2022 13:08:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `age` int(0) UNSIGNED NOT NULL COMMENT '年龄',
  `gender` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '性别',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '年级',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `birthday` date NOT NULL COMMENT '生日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (2011, '李四', 21, '女', '大一', '新海市', '2021-07-19');
INSERT INTO `student` VALUES (2012, '张三', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2013, '王五', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2014, '赵六', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2015, '天器', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2016, '谈起', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2017, '天琦', 21, '女', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2018, '天梦', 21, '女', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2019, '罅隙', 21, '女', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2020, '李梦来', 21, '女', '大一', '新海市', '2021-08-05');
INSERT INTO `student` VALUES (2021, '桑竹', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2022, '罅隙', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2023, '李梦来', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2024, '桑竹', 21, '男', '大一', '新海市', '2000-01-01');
INSERT INTO `student` VALUES (2025, '和', 34, '女', '大一', '新动市', '2021-07-14');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `age` int(0) NOT NULL COMMENT '年龄',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `subject` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师教哪一科的',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (2018, '成交', 23, '女', '数学');
INSERT INTO `teacher` VALUES (2020, '蒋金', 23, '男', '数学');

SET FOREIGN_KEY_CHECKS = 1;
