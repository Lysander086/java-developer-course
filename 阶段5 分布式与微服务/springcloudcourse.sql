/*
 Navicat Premium Data Transfer

 Source Server         : windows mysql
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : s5-springcloudcourse

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 21/03/2021 22:47:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `valid` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 362, 'java并发', 1);
INSERT INTO `course` VALUES (2, 409, '玩转ava', 1);
INSERT INTO `course` VALUES (3, 121, 'Nginx入门', 1);

-- ----------------------------
-- Table structure for course_price
-- ----------------------------
DROP TABLE IF EXISTS `course_price`;
CREATE TABLE `course_price`  (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `price` decimal(8, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_price
-- ----------------------------
INSERT INTO `course_price` VALUES (1, 362, 348.00);
INSERT INTO `course_price` VALUES (2, 409, 309.00);
INSERT INTO `course_price` VALUES (3, 121, 266.00);

SET FOREIGN_KEY_CHECKS = 1;
