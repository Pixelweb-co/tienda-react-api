/*
Navicat MySQL Data Transfer

Source Server         : tienda
Source Server Version : 50734
Source Host           : localhost:3306
Source Database       : admin_tiendar

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2021-06-03 12:18:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', 'Oakley');
INSERT INTO `brands` VALUES ('2', 'Puma');
INSERT INTO `brands` VALUES ('3', 'Lacoste');
INSERT INTO `brands` VALUES ('4', 'Nike');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'clothes');
INSERT INTO `categories` VALUES ('2', 'T-shirts');
INSERT INTO `categories` VALUES ('3', 'Baby bags');
INSERT INTO `categories` VALUES ('4', 'Shoes');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `brand` int(10) DEFAULT NULL,
  `category` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Product 1', '8000.00', '1', '2', null);
INSERT INTO `products` VALUES ('2', 'Product 2', '5000.00', '2', '2', null);
INSERT INTO `products` VALUES ('3', 'product 3', '5000.00', '1', '1', null);
INSERT INTO `products` VALUES ('4', 'product 4', '6000.00', '2', '1', null);
INSERT INTO `products` VALUES ('5', 'Product 3', '2500.00', '2', '1', null);
