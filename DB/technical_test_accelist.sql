/*
 Navicat Premium Data Transfer

 Source Server         : localMySQL
 Source Server Type    : MySQL
 Source Server Version : 120002
 Source Host           : localhost:3306
 Source Schema         : technical_test

 Target Server Type    : MySQL
 Target Server Version : 120002
 File Encoding         : 65001

 Date: 18/10/2025 11:37:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for division
-- ----------------------------
DROP TABLE IF EXISTS `division`;
CREATE TABLE `division`  (
  `division_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `division` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`division_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of division
-- ----------------------------
INSERT INTO `division` VALUES (1, 'HR', '2025-10-18 10:16:39', '2025-10-18 10:16:39');
INSERT INTO `division` VALUES (2, 'IT', '2025-10-18 10:16:39', '2025-10-18 10:16:39');
INSERT INTO `division` VALUES (3, 'Marketing', '2025-10-18 10:16:39', '2025-10-18 10:16:39');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `worker_ref_id` int NOT NULL,
  `total_payment` decimal(15, 0) NOT NULL,
  `last_payment_date` datetime(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, 1, 15000000, '2024-10-26 08:00:00', '2025-10-18 11:09:57', '2025-10-18 11:09:57');
INSERT INTO `payment` VALUES (2, 2, 15000000, '2024-10-26 08:00:00', '2025-10-18 11:09:57', '2025-10-18 11:09:57');
INSERT INTO `payment` VALUES (3, 3, 15000000, '2024-10-26 08:00:00', '2025-10-18 11:09:57', '2025-10-18 11:09:57');
INSERT INTO `payment` VALUES (4, 4, 12500000, '2024-09-28 09:00:00', '2025-10-18 11:09:57', '2025-10-18 11:09:57');
INSERT INTO `payment` VALUES (5, 5, 12500000, '2024-09-28 09:00:00', '2025-10-18 11:09:57', '2025-10-18 11:09:57');
INSERT INTO `payment` VALUES (6, 4, 12500000, '2025-10-18 11:32:22', '2025-10-18 11:32:22', '2025-10-18 11:32:22');
INSERT INTO `payment` VALUES (7, 5, 12500000, '2025-10-18 11:32:22', '2025-10-18 11:32:22', '2025-10-18 11:32:22');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `status_ref_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`status_ref_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, 'PKWT', '2025-10-18 10:17:23', '2025-10-18 10:17:23');
INSERT INTO `status` VALUES (2, 'PKWTT', '2025-10-18 10:17:23', '2025-10-18 10:17:23');

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title`  (
  `title_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` decimal(15, 0) NOT NULL,
  `bonus` decimal(15, 0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`title_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES (1, 'Executive', 500000, 5000000, '2025-10-18 10:29:23', '2025-10-18 10:29:23');
INSERT INTO `title` VALUES (2, 'Manager', 400000, 4500000, '2025-10-18 10:29:23', '2025-10-18 10:29:23');
INSERT INTO `title` VALUES (3, 'Asst. Manager', 200000, 3000000, '2025-10-18 10:29:23', '2025-10-18 10:29:23');
INSERT INTO `title` VALUES (4, 'Lead', 200000, 2000000, '2025-10-18 10:29:23', '2025-10-18 10:29:23');
INSERT INTO `title` VALUES (5, 'Staff', 150000, 500000, '2025-10-18 10:29:23', '2025-10-18 10:29:23');

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker`  (
  `worker_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int NOT NULL,
  `title_id` int NOT NULL,
  `superior_id` bigint UNSIGNED NULL DEFAULT NULL,
  `joining_date` datetime(0) NOT NULL,
  `division_id` int NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`worker_id`) USING BTREE,
  INDEX `fk_worker_superior`(`superior_id`) USING BTREE,
  CONSTRAINT `fk_worker_superior` FOREIGN KEY (`superior_id`) REFERENCES `worker` (`worker_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES (1, 'Monika', 'Arora', 2, 1, NULL, '2024-09-01 09:00:00', 1, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (2, 'Niharika', 'Verma', 2, 1, NULL, '2024-09-01 09:00:00', 2, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (3, 'Vishal', 'Singhal', 2, 1, NULL, '2024-09-01 09:00:00', 3, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (4, 'Amitabh', 'Singh', 2, 2, 1, '2024-09-01 09:00:00', 1, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (5, 'Vivek', 'Bhati', 2, 2, 2, '2024-09-01 09:00:00', 2, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (6, 'Vipul', 'Diwan', 2, 2, 3, '2024-10-01 09:00:00', 3, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (7, 'Satish', 'Kumar', 1, 3, 5, '2024-10-01 09:00:00', 2, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (8, 'Geetika', 'Chauhan', 1, 5, 4, '2024-10-01 09:00:00', 1, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (9, 'Abigail', 'Stephanie', 1, 4, 7, '2024-10-01 09:00:00', 2, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (10, 'Jonathan', 'Duncan', 1, 5, 9, '2024-10-01 09:00:00', 2, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (11, 'Chloe', 'Hemmings', 1, 5, 9, '2024-10-01 09:00:00', 2, '2025-10-18 10:26:10', '2025-10-18 10:26:10');
INSERT INTO `worker` VALUES (12, 'Lisa', 'McDonald', 1, 5, 6, '2024-10-01 09:00:00', 3, '2025-10-18 10:26:10', '2025-10-18 10:26:10');

SET FOREIGN_KEY_CHECKS = 1;
