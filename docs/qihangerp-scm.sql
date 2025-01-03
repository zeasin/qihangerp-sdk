/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : qihangerp-scm

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 23/10/2024 09:56:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for erp_goods
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods`;
CREATE TABLE `erp_goods`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品编号',
  `unit_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '单位名称',
  `category_id` int NULL DEFAULT 0 COMMENT '商品分类ID',
  `bar_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '条码',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态1销售中2已下架',
  `length` float NOT NULL DEFAULT 0 COMMENT '衣长/裙长/裤长',
  `height` float NOT NULL DEFAULT 0 COMMENT '高度/袖长',
  `width` float NOT NULL DEFAULT 0 COMMENT '宽度/胸阔(围)',
  `width1` float NOT NULL DEFAULT 0 COMMENT '肩阔',
  `width2` float NOT NULL DEFAULT 0 COMMENT '腰阔',
  `width3` float NOT NULL DEFAULT 0 COMMENT '臀阔',
  `weight` float NOT NULL DEFAULT 0 COMMENT '重量',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '0启用   1禁用',
  `period` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '保质期',
  `pur_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '预计采购价格',
  `whole_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议批发价',
  `retail_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议零售价',
  `unit_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '单位成本',
  `supplier_id` int NULL DEFAULT 0 COMMENT '供应商id',
  `brand_id` int NULL DEFAULT 0 COMMENT '品牌id',
  `attr1` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性1：季节',
  `attr2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性2：分类',
  `attr3` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性3：风格',
  `attr4` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性4：年份',
  `attr5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性5：面料',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外链url',
  `low_qty` int NULL DEFAULT 0 COMMENT '最低库存（预警）',
  `high_qty` int NULL DEFAULT 0 COMMENT '最高库存（预警）',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `number`(`number` ASC) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品库存管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods
-- ----------------------------
INSERT INTO `erp_goods` VALUES (9, 'HN8026牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN8026.jpg', 'HN8026', '', 27, '', '80-130斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 19.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2021', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (10, 'HN858牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN858.jpg', 'HN858', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 20.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (11, 'HN608牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN608.jpg', 'HN608', '', 27, '', '建议80-120斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 19.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (12, 'HN270牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN270.jpg', 'HN270', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 19.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (13, '681直筒拖地牛仔裤夏款', 'https://cbu01.alicdn.com/img/ibank/O1CN01qHvRwi2FOyGhhNR4M_!!2208857268871-0-cib.jpg', 'HN681', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 49.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (14, '708灰色牛仔短裤', 'https://cbu01.alicdn.com/img/ibank/O1CN011fcYH72FOyGTbaYJO_!!2208857268871-0-cib.jpg', 'HN708', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 24.00, 0.00, 40.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (15, '661高腰复古牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01rXl5A92FOyBlp8KB2_!!2208857268871-0-cib.jpg', 'HN661', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 49.00, NULL, 26, 0, '夏季', '', '', '2021', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (16, '678高腰直筒开叉拖地牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01adpyGm2FOyBpyqNJ5_!!2208857268871-0-cib.jpg', 'HN678', '', 28, '', '建议80-125斤', 1, 97, 0, 0, 0, 66, 93.5, 0, 0, '', 29.00, 0.00, 59.00, NULL, 26, 0, '夏季', '', '', '2021', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (17, '抽绳修身短袖T恤', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', '0320220801', '', 3, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 12.00, 0.00, 12.00, NULL, 28, 0, '夏季', '', '', '2022', '棉', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (18, 'HN0014前开叉微喇叭牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01kdGpaF2FOyFHMzMrK_!!2208857268871-0-cib.jpg', 'HN0014', '', 29, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 32.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (19, 'HN025紧身毛边小脚铅笔裤', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 'HN025', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (20, 'HN029小脚九分铅笔裤弹力紧身', 'https://cbu01.alicdn.com/img/ibank/O1CN01ptoyH92FOyCPES9l4_!!2208857268871-0-cib.jpg', 'HN029', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (21, 'HN0015裤脚开叉牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01xcpzIU2FOyBl2dOl6_!!2208857268871-0-cib.jpg', 'HN015', '', 29, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (22, 'HN0020九分铅笔小脚裤子', 'https://cbu01.alicdn.com/img/ibank/O1CN01hMirkD2FOyA8dH5gg_!!2208857268871-0-cib.jpg', 'HN020', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (23, 'HN0024小脚裤弹力九分铅笔牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01pMo6Nw2FOyH7h62R2_!!2208857268871-0-cib.jpg', 'HN024', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (24, 'HN0012竖条纹阔腿牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01fNcjNj2FOyFLNrkHL_!!2208857268871-0-cib.jpg', 'HN012', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 49.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (25, 'OXN691中腰薄款破洞七分小脚裤', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 'OXN0691', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 79.00, NULL, 29, 0, '春秋季', '裤子', '瑞丽', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (26, 'HN0630松紧腰九分老爹哈伦裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01emC4ZW2FOyCPWDBJP_!!2208857268871-0-cib.jpg', 'HN0630', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (27, 'HN023小直筒牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01oWnpE72FOyGvFmm8P_!!2208857268871-0-cib.jpg', 'HN023', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (28, 'HN670高腰哈伦牛仔裤', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 'HN670', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (29, 'HNP182弹力紧身贴标牛仔短裤女ins', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 'HNP182', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 21.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (30, 'HN672微喇牛仔裤女', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 'HN672', '', 29, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (31, 'HN801九分哈伦萝卜老爹裤', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 'HN801', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 28.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (32, 'HN697双扣后松紧高腰宽松萝卜牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 'HN697', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (33, 'HN0801高腰弹力直筒哈伦老爹萝卜裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 'HN0801', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 25.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (34, 'HN621高腰直筒宽松破洞牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 'HN621', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (35, 'HN662高腰直筒牛仔裤女泫雅bf风小雏菊绣花', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 'HN662', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (36, 'HN692松紧高腰宽松直筒萝卜哈伦九分裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 'HN692', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (37, 'HN106高腰弹力紧身小脚九分铅笔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 'HN106', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (38, 'HN663高腰阔腿裤宽松直筒爱心刺绣拖地长裤潮', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 'HN663', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (39, 'HN022高腰弹力九分小脚铅笔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 'HN022', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (40, 'HN668高腰哈伦松紧腰小个子束脚老爹九分裤子', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 'HN668', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (41, 'HN667可调节高腰直筒牛仔裤女', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 'HN667', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (42, 'HN222高腰宽松阔腿牛仔裤', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 'HN222', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (43, 'HN694半松紧高腰牛仔裤老爹裤', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 'HN694', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (44, 'HN660高腰直筒牛仔裤女腰围可调春秋季', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 'HN660', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (45, 'HN686牛仔裤女宽松vibe风', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 'HN686', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (46, 'HN021豹纹加绒牛仔裤女铅笔小脚裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 'HN021', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '冬季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (47, 'JKL805高腰阔腿牛仔裤女直筒宽松', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 'JKL805', '', 28, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 5.00, 69.00, NULL, 31, 0, '不分季节', '', '', '2022', '棉85% 聚酯纤维6.5% 再生纤维素纤维8.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (48, 'HN180高腰牛仔裤女秋季九分老爹裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 'HN180', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (49, 'JKL9098哈伦裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9098.jpg', 'JKL9098', '', 30, '', '有弹力', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 48.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '', '', '2022', '棉72% 聚酯纤维25.5% 氨纶2.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (53, 'JKL9907小直筒烟管裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9907.jpg', 'JKL9907', '', 32, '', '建议80-140斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '微弹', '高腰', '2022', '棉72% 聚酯纤维25.5% 氨纶2.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (54, 'JKL6010松紧腰哈伦裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6010.jpg', 'JKL6010', '', 30, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 43.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '70%棉     20%聚酯纤维     10%再生纤维素纤维', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (55, 'JKL906阔腿牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL906.jpg', 'JKL906', '', 28, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉85% 聚酯纤维6.5% 再生纤维素纤维8.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (56, 'JKL9977喇叭牛仔裤锁边', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/9977.jpg', 'JKL9977', '', 29, '', '建议70-145斤', 1, 99, 0, 0, 103, 58, 75, 0, 0, '', 50.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (59, 'JKL9978喇叭牛仔裤毛边', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/9978.jpg', 'JKL9978', '', 29, '', '建议70-145斤', 1, 99, 0, 0, 103, 58, 75, 0, 0, '', 50.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (60, 'JKL9950高腰阔腿直筒牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9950_11.jpg', 'JKL9950', '', 28, '', '建议70-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 46.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (61, 'JKL8990高腰阔腿牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL8990.jpg', 'JKL8990', '', 28, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 43.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉93.6% 粘纤4.7% 聚酯纤维1.7%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (62, 'JKL9938牛仔微喇裤裤脚开叉', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 'JKL9938', '', 29, '', '建议70-150斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 44.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '高弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (63, 'JKL6001小脚牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 'JKL6001', '', 31, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '棉：98% 氨纶：2%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (64, 'JKL9909开叉微喇叭裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 'JKL9909', '', 29, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 50.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '高弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (65, 'GZYYZ7277复古显瘦灯芯绒a字半身裙', 'https://cbu01.alicdn.com/img/ibank/O1CN01lfHUDo1p3HVme2o7Q_!!2214743335304-0-cib.jpg', 'GZYYZ7277', '', 8, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 54.00, 0.00, 79.00, NULL, 32, 0, '不分季节', '无弹', '高腰', '2022', '棉，涤纶（聚酯纤维）', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (66, 'JKL1973复古蓝哈伦牛仔裤长裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 'JKL1973', '', 30, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 44.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉85%再生纤维素纤维8.5%聚酯纤维6.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (67, 'JKL1951阔腿长裤加长裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 'JKL1951', '', 28, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉85%再生纤维素纤维8.5%聚酯纤维6.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (68, 'JKL3112松紧腰束脚哈伦裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 'JKL3112', '', 30, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 69.00, NULL, 31, 0, '春秋季', '无弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (69, 'KH9734微喇叭牛仔裤女开叉', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 'KH9734', '', 29, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 39.00, 0.00, 69.00, NULL, 33, 0, '春秋季', '高弹', '高腰', '2022', '69%棉  29.5%聚酯纤维 1.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (70, 'KH9826小脚牛仔裤女', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 'KH9826', '', 31, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 0.00, 79.00, NULL, 33, 0, '春秋季', '中弹', '高腰', '2022', '69%棉  29.5%聚酯纤维 1.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (71, 'aaa', 'aaa', 'aaaaa', '', 2, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, '0', 12.00, 0.00, 0.00, NULL, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2024-01-14 21:52:30', NULL, NULL);
INSERT INTO `erp_goods` VALUES (74, '测试测试', 'http://localhost:8080/preview/images/47', 'A0012D', '', 2, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, '0', 12.00, 0.00, 0.00, NULL, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2024-01-16 10:34:33', NULL, NULL);

-- ----------------------------
-- Table structure for erp_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_attribute`;
CREATE TABLE `erp_goods_attribute`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` bigint NULL DEFAULT 0 COMMENT '商品id',
  `attribute_id` int NULL DEFAULT NULL COMMENT '属性id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品属性表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for erp_goods_attribute_config
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_attribute_config`;
CREATE TABLE `erp_goods_attribute_config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` int NULL DEFAULT NULL COMMENT '分类id（0为所有共用）',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品属性表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_attribute_config
-- ----------------------------
INSERT INTO `erp_goods_attribute_config` VALUES (1, 1, '年份', '2022,2023');
INSERT INTO `erp_goods_attribute_config` VALUES (2, 1, '季节', '春季,夏季,秋季,冬季');

-- ----------------------------
-- Table structure for erp_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_brand`;
CREATE TABLE `erp_goods_brand`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '品牌名',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_brand
-- ----------------------------
INSERT INTO `erp_goods_brand` VALUES (1, '梦小妮', 1, 'admin', '2023-12-29 13:44:29', 'admin', '2023-12-29 13:44:29');

-- ----------------------------
-- Table structure for erp_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_category`;
CREATE TABLE `erp_goods_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类编码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL COMMENT '上架分类id',
  `path` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类路径',
  `sort` int NULL DEFAULT 0 COMMENT '排序值',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '0正常  1删除',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_category
-- ----------------------------
INSERT INTO `erp_goods_category` VALUES (1, 'NVZHUANG', '女装', NULL, 0, '0', 0, '', 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (2, 'MAOYI', '毛衣/针织衫', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (3, 'TXU', 'T恤', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (4, 'LIANYIQUN', '连衣裙', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (5, 'XIUXIANKU', '休闲裤', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (6, 'WAITAO', '外套', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (7, 'ZHENZHIPJ', '内衣/背心', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (8, 'SUOZHI', '半身裙', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (9, NULL, '衬衫', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (10, NULL, '箱包', NULL, 0, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (11, NULL, '双肩包', NULL, 10, '0|10', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (12, NULL, '单肩包', NULL, 10, '0|10', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (13, NULL, '套装', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (14, NULL, '短裙', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (15, NULL, '半身裙', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (16, NULL, '连衣裙', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (17, NULL, '针织裤', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (18, NULL, '针织短裙', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (19, NULL, '针织外套', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (20, NULL, '针织背心', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (21, NULL, 'T恤衫', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (22, NULL, '梭织衬衫', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (23, 'BAIHUO', '百货', NULL, 0, '0', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (24, NULL, '调味调料', NULL, 23, '0|23', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (25, NULL, '小百货', NULL, 23, '0|23', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (26, 'NIUZAI', '牛仔裤', NULL, 1, '0|1|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (27, NULL, '牛仔短裤', NULL, 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (28, NULL, '阔腿裤', NULL, 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (29, NULL, '喇叭裤', NULL, 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (30, NULL, '哈伦裤', '哈伦萝卜老爹裤', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (31, NULL, '铅笔裤', '小脚裤、紧身裤、铅笔裤', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (32, NULL, '直筒裤', '小直筒烟管裤', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (33, NULL, '背带裤', '', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);

-- ----------------------------
-- Table structure for erp_goods_category_attribute
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_category_attribute`;
CREATE TABLE `erp_goods_category_attribute`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` int NOT NULL,
  `type` int NOT NULL DEFAULT 0 COMMENT '类型：0属性1规格',
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '\'属性名\'',
  `code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '固定值color颜色size尺码style款式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_category_attribute
-- ----------------------------
INSERT INTO `erp_goods_category_attribute` VALUES (114, 1, 1, '颜色', 'color');
INSERT INTO `erp_goods_category_attribute` VALUES (115, 1, 1, '尺码', 'size');
INSERT INTO `erp_goods_category_attribute` VALUES (116, 1, 1, '款式', 'style');

-- ----------------------------
-- Table structure for erp_goods_category_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_category_attribute_value`;
CREATE TABLE `erp_goods_category_attribute_value`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键，属性值id',
  `category_attribute_id` int NULL DEFAULT NULL COMMENT '属性id',
  `value` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值文本',
  `sku_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成SKU的编码',
  `orderNum` int NULL DEFAULT 0,
  `isDelete` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 425 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_category_attribute_value
-- ----------------------------
INSERT INTO `erp_goods_category_attribute_value` VALUES (308, 114, '黑色', '01', 999, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (309, 114, '米杏', '02', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (310, 114, '芒果黄', '03', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (311, 114, '中花灰', '04', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (312, 114, '浅杏', '05', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (313, 114, '中粉', '06', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (314, 114, '烟灰色', '07', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (315, 114, '秋香绿', '08', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (316, 114, '花兰', '09', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (317, 114, '杏色', '10', 698, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (318, 114, '芥黄', '11', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (319, 114, '深蓝色', '12', 993, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (320, 114, '大红', '13', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (321, 114, '彩兰', '14', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (322, 114, '白色', '15', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (323, 114, '花米驼', '16', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (324, 114, '粉红', '17', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (325, 114, '黄杏', '18', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (326, 114, '橙红', '19', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (327, 114, '木绿', '20', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (328, 114, '草绿', '21', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (329, 114, '早红', '22', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (330, 114, '咖啡', '23', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (331, 114, '灰色', '24', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (332, 114, '浅绿', '25', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (333, 114, '大红色', '26', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (334, 114, '桔色', '27', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (335, 114, '卡其', '28', 992, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (336, 114, '蓝灰色', '29', 996, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (337, 114, '湖蓝', '30', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (338, 114, '咖啡色', '31', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (339, 114, '蓝绿', '32', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (340, 115, '均码', '00', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (341, 115, 'S', '01', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (342, 115, 'M', '02', 87, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (343, 115, 'L', '03', 86, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (344, 115, 'XL', '04', 85, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (345, 115, '2XL', '05', 84, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (346, 115, '3XL', '06', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (347, 115, '4XL', '07', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (348, 115, '5XL', '08', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (349, 114, '雾霾蓝', '33', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (350, 114, '浅粉红', '34', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (351, 114, '蓝色', '35', 998, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (352, 114, '花色', '36', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (353, 114, '香槟色', '37', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (354, 114, '紫色', '38', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (355, 114, '砖红色', '39', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (356, 114, '复古蓝', '40', 995, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (357, 114, '烟灰', '41', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (358, 114, '橙黄', '42', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (359, 114, '黄色', '43', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (360, 114, '梅子色', '56', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (361, 114, '浅蓝色', '50', 994, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (362, 114, '宝蓝色', '44', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (363, 114, '浅黄', '45', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (364, 114, '浅紫', '49', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (365, 114, '酒红', '57', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (366, 114, '米白', '47', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (367, 114, '复古蓝九分', '48', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (368, 114, '卡灰', '51', 992, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (369, 114, '玫红', '52', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (370, 114, '彩蓝', '53', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (371, 114, '青蓝淡黄', '54', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (372, 114, '紫白', '55', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (373, 114, '碳灰', '58', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (374, 114, '深蓝色加绒', '59', 794, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (375, 114, '深紫色', '60', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (376, 114, '橙色', '61', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (377, 114, '墨绿色', '62', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (378, 114, '桃粉色', '63', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (379, 114, '蓝灰色九分', '64', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (380, 114, '黑色九分', '65', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (381, 114, '新洋米', '67', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (382, 114, '藏蓝色', '68', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (383, 114, '深蓝九分', '69', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (384, 114, '深蓝长款', '70', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (385, 114, '米白色', '71', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (386, 114, '军绿色', '72', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (387, 114, '柠檬黄', '73', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (388, 114, '灰紫', '74', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (389, 114, '黑灰色', '75', 997, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (390, 114, '焦糖红', '76', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (391, 114, '酱紫', '78', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (392, 114, '红杏', '46', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (393, 114, '银灰', '79', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (394, 115, 'XS', '09', 89, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (395, 114, '无色', '00', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (396, 114, '条纹', '80', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (397, 114, '花色/彩色', '81', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (398, 114, '波点', '82', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (399, 114, '字母', '83', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (400, 114, '绿色', '84', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (401, 115, '25', '25', 69, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (402, 115, '26', '26', 68, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (403, 115, '27', '27', 67, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (404, 115, '28', '28', 66, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (405, 115, '29', '29', 65, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (406, 115, '30', '30', 64, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (407, 115, '31', '31', 63, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (408, 115, '32', '32', 62, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (409, 114, '黑色加绒', '101', 799, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (410, 114, '黑灰色加绒', '175', 798, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (411, 114, '蓝灰色加绒', '129', 797, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (412, 114, '复古蓝加绒', '140', 796, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (413, 114, '浅蓝色加绒', '150', 795, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (414, 116, '默认', NULL, 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (415, 116, '加长裤', 'JC', 66, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (416, 116, '长裤', 'CK', 68, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (417, 116, '九分', 'JF', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (418, 116, '八分', 'BF', 86, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (419, 116, '九分加绒', 'JFR', 87, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (420, 116, '单裤', 'D', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (421, 116, '加绒', 'R', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (422, 116, '长裤加绒', 'CR', 65, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (423, 116, '加长裤加绒', 'JCR', 67, 0);

-- ----------------------------
-- Table structure for erp_goods_img
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_img`;
CREATE TABLE `erp_goods_img`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NULL DEFAULT 0 COMMENT '商品Id',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '类型',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片url',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片说明',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_img
-- ----------------------------

-- ----------------------------
-- Table structure for erp_goods_inventory
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_inventory`;
CREATE TABLE `erp_goods_inventory`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` bigint NOT NULL COMMENT '商品id',
  `goods_num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spec_id` bigint NOT NULL COMMENT '商品规格id',
  `spec_num` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规格编码（唯一）',
  `current_qty` bigint NOT NULL DEFAULT 0 COMMENT '当前库存',
  `locked_qty` bigint NOT NULL DEFAULT 0 COMMENT '锁定库存',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常  1删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specIdIndex`(`spec_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_inventory
-- ----------------------------
INSERT INTO `erp_goods_inventory` VALUES (6, 9, 'HN8026', 32, '2720210080260105', 6, 0, 0, '2024-01-16 14:51:50', 'admin', '2024-05-03 10:56:38', 'admin');
INSERT INTO `erp_goods_inventory` VALUES (7, 68, 'JKL3112', 1327, 'JKL31120705', 11, 0, 0, '2024-05-25 10:20:55', 'admin', '2024-05-25 10:36:15', 'admin');

-- ----------------------------
-- Table structure for erp_goods_inventory_detail
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_inventory_detail`;
CREATE TABLE `erp_goods_inventory_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `inventoryId` bigint NOT NULL COMMENT '商品库存id',
  `inQty` int NOT NULL DEFAULT 0 COMMENT '入库数量',
  `originQty` bigint NOT NULL COMMENT '入库前数量',
  `currentQty` bigint NOT NULL DEFAULT 0 COMMENT '当前库存数量',
  `purPrice` double NULL DEFAULT 0 COMMENT '采购价',
  `entryId` bigint NOT NULL COMMENT '入库单id',
  `entryItemId` bigint NOT NULL COMMENT '入库单itemId',
  `remark` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `specId` int NOT NULL COMMENT '规格id',
  `goodsId` int NOT NULL COMMENT '商品id',
  `inLocation` int NOT NULL COMMENT '入库仓位id',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品库存明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_inventory_detail
-- ----------------------------
INSERT INTO `erp_goods_inventory_detail` VALUES (7, 6, 10, 0, 6, NULL, 8, 4, NULL, 32, 9, 20, '2024-01-16 14:51:50', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (8, 7, 1, 0, 1, NULL, 1794181606514589698, 1794181606552338400, NULL, 1327, 68, 20, '2024-05-25 10:20:55', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (9, 7, 1, 1, 2, NULL, 1794181606514589698, 1794181606552338400, NULL, 1327, 68, 20, '2024-05-25 10:22:35', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (10, 7, 2, 2, 4, NULL, 1794181606514589698, 1794181606552338400, NULL, 1327, 68, 20, '2024-05-25 10:25:47', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (11, 7, 2, 4, 6, NULL, 1794181606514589698, 1794181606552338400, NULL, 1327, 68, 20, '2024-05-25 10:28:36', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (12, 7, 2, 6, 8, NULL, 1794181606514589698, 1794181606552338400, NULL, 1327, 68, 20, '2024-05-25 10:33:18', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (13, 7, 2, 8, 10, NULL, 1794181606514589698, 1794181606552338400, NULL, 1327, 68, 20, '2024-05-25 10:35:52', 'admin');
INSERT INTO `erp_goods_inventory_detail` VALUES (14, 7, 1, 10, 11, NULL, 1794181606514589698, 1794181606552338433, NULL, 1327, 68, 20, '2024-05-25 10:36:15', 'admin');

-- ----------------------------
-- Table structure for erp_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_spec`;
CREATE TABLE `erp_goods_spec`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` bigint NOT NULL COMMENT '商品id',
  `spec_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '规格名',
  `spec_num` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规格编码',
  `color_id` int NULL DEFAULT 0 COMMENT '颜色id',
  `color_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色值',
  `color_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色图片',
  `size_id` int NULL DEFAULT 0 COMMENT '尺码id',
  `size_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '尺码值',
  `style_id` int NULL DEFAULT 0 COMMENT '款式id',
  `style_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '款式值',
  `bar_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '库存条形码',
  `pur_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '预计采购价',
  `whole_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议批发价',
  `retail_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议零售价',
  `unit_cost` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '单位成本',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  `low_qty` int NULL DEFAULT 0 COMMENT '最低库存（预警）',
  `high_qty` int NULL DEFAULT 0 COMMENT '最高库存（预警）',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '0启用   1禁用',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `number`(`spec_num` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1372 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品规格库存管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_spec
-- ----------------------------
INSERT INTO `erp_goods_spec` VALUES (23, 9, '', '2720210080260001', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (24, 9, '', '2720210080260002', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (25, 9, '', '2720210080260003', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (26, 9, '', '2720210080260004', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (27, 9, '', '2720210080260005', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (28, 9, '', '2720210080260101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (29, 9, '', '2720210080260102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (30, 9, '', '2720210080260103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (31, 9, '', '2720210080260104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (32, 9, '', '2720210080260105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (33, 9, '', '2720210080260201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (34, 9, '', '2720210080260202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (35, 9, '', '2720210080260203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (36, 9, '', '2720210080260204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (37, 9, '', '2720210080260205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (38, 9, '', '2720210080260301', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (39, 9, '', '2720210080260302', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (40, 9, '', '2720210080260303', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (41, 9, '', '2720210080260304', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (42, 9, '', '2720210080260305', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (43, 10, '', '27202208580101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (44, 10, '', '27202208580102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (45, 10, '', '27202208580103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (46, 10, '', '27202208580104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (47, 10, '', '27202208580105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (48, 10, '', '27202208580201', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (49, 10, '', '27202208580202', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (50, 10, '', '27202208580203', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (51, 10, '', '27202208580204', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (52, 10, '', '27202208580205', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (53, 10, '', '27202208580301', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (54, 10, '', '27202208580302', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (55, 10, '', '27202208580303', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (56, 10, '', '27202208580304', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (57, 10, '', '27202208580305', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (58, 11, '', '27202206080101', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (59, 11, '', '27202206080102', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (60, 11, '', '27202206080103', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (61, 11, '', '27202206080104', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (62, 11, '', '27202206080105', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (63, 11, '', '27202206080201', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (64, 11, '', '27202206080202', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (65, 11, '', '27202206080203', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (66, 11, '', '27202206080204', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (67, 11, '', '27202206080205', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (68, 11, '', '27202206080301', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (69, 11, '', '27202206080302', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (70, 11, '', '27202206080303', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (71, 11, '', '27202206080304', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (72, 11, '', '27202206080305', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (73, 11, '', '27202206080401', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (74, 11, '', '27202206080402', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (75, 11, '', '27202206080403', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (76, 11, '', '27202206080404', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (77, 11, '', '27202206080405', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (78, 11, '', '27202206080501', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (79, 11, '', '27202206080502', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (80, 11, '', '27202206080503', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (81, 11, '', '27202206080504', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (82, 11, '', '27202206080505', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (83, 12, '', '27202202700101', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (84, 12, '', '27202202700102', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (85, 12, '', '27202202700103', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (86, 12, '', '27202202700104', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (87, 12, '', '27202202700105', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (88, 13, '', '28202206810101', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (89, 13, '', '28202206810102', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (90, 13, '', '28202206810103', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (91, 13, '', '28202206810104', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (92, 13, '', '28202206810105', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (93, 13, '', '28202206810201', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (94, 13, '', '28202206810202', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (95, 13, '', '28202206810203', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (96, 13, '', '28202206810204', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (97, 13, '', '28202206810205', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (98, 13, '', '28202206810301', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (99, 13, '', '28202206810302', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (100, 13, '', '28202206810303', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (101, 13, '', '28202206810304', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (102, 13, '', '28202206810305', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (103, 14, '', '27202207080101', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 341, 'S', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (104, 14, '', '27202207080102', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 342, 'M', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (105, 14, '', '27202207080103', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 343, 'L', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (106, 14, '', '27202207080104', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 344, 'XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (107, 14, '', '27202207080105', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 345, '2XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (108, 14, '', '27202207080201', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 341, 'S', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (109, 14, '', '27202207080202', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 342, 'M', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (110, 14, '', '27202207080203', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 343, 'L', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (111, 14, '', '27202207080204', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 344, 'XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (112, 14, '', '27202207080205', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 345, '2XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (113, 14, '', '27202207080301', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 341, 'S', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (114, 14, '', '27202207080302', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 342, 'M', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (115, 14, '', '27202207080303', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 343, 'L', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (116, 14, '', '27202207080304', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 344, 'XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (117, 14, '', '27202207080305', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 345, '2XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (118, 15, '', '28202106610101', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (119, 15, '', '28202106610102', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (120, 15, '', '28202106610103', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (121, 15, '', '28202106610104', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (122, 15, '', '28202106610105', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (123, 15, '', '28202106610201', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (124, 15, '', '28202106610202', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (125, 15, '', '28202106610203', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (126, 15, '', '28202106610204', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (127, 15, '', '28202106610205', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (128, 15, '', '28202106610301', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (129, 15, '', '28202106610302', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (130, 15, '', '28202106610303', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (131, 15, '', '28202106610304', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (132, 15, '', '28202106610305', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (133, 15, '', '28202106610401', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (134, 15, '', '28202106610402', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (135, 15, '', '28202106610403', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (136, 15, '', '28202106610404', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (137, 15, '', '28202106610405', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (138, 15, '', '28202106610501', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (139, 15, '', '28202106610502', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (140, 15, '', '28202106610503', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (141, 15, '', '28202106610504', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (142, 15, '', '28202106610505', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (143, 15, '', '28202106610601', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (144, 15, '', '28202106610602', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (145, 15, '', '28202106610603', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (146, 15, '', '28202106610604', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (147, 15, '', '28202106610605', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (148, 15, '', '28202106610701', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (149, 15, '', '28202106610702', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (150, 15, '', '28202106610703', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (151, 15, '', '28202106610704', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (152, 15, '', '28202106610705', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (153, 15, '', '28202106610801', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (154, 15, '', '28202106610802', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (155, 15, '', '28202106610803', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (156, 15, '', '28202106610804', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (157, 15, '', '28202106610805', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (158, 16, '', '28202106780001', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (159, 16, '', '28202106780002', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (160, 16, '', '28202106780003', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (161, 16, '', '28202106780004', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (162, 16, '', '28202106780005', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (163, 17, '', '03202208010101', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (164, 17, '', '03202208010102', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (165, 17, '', '03202208010103', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (166, 17, '', '03202208010104', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (167, 17, '', '03202208010201', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (168, 17, '', '03202208010202', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (169, 17, '', '03202208010203', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (170, 17, '', '03202208010204', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (171, 17, '', '03202208010301', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (172, 17, '', '03202208010302', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (173, 17, '', '03202208010303', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (174, 17, '', '03202208010304', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (175, 17, '', '03202208010401', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (176, 17, '', '03202208010402', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (177, 17, '', '03202208010403', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (178, 17, '', '03202208010404', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (179, 18, '', 'HN202200140101', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (180, 18, '', 'HN202200140102', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (181, 18, '', 'HN202200140103', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (182, 18, '', 'HN202200140104', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (183, 18, '', 'HN202200140105', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (184, 18, '', 'HN202200140201', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (185, 18, '', 'HN202200140202', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (186, 18, '', 'HN202200140203', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (187, 18, '', 'HN202200140204', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (188, 18, '', 'HN202200140205', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (189, 18, '', 'HN202200140301', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (190, 18, '', 'HN202200140302', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (191, 18, '', 'HN202200140303', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (192, 18, '', 'HN202200140304', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (193, 18, '', 'HN202200140305', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (194, 19, '', 'HN202200250125', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (195, 19, '', 'HN202200250126', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (196, 19, '', 'HN202200250107', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (197, 19, '', 'HN202200250128', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (198, 19, '', 'HN202200250129', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (199, 19, '', 'HN202200250130', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (200, 19, '', 'HN202200250131', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (201, 19, '', 'HN202200250132', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (202, 19, '', 'HN202200250225', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (203, 19, '', 'HN202200250226', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (204, 19, '', 'HN202200250227', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (205, 19, '', 'HN202200250228', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (206, 19, '', 'HN202200250229', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (207, 19, '', 'HN202200250230', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (208, 19, '', 'HN202200250231', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (209, 19, '', 'HN202200250232', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (210, 19, '', 'HN202200250325', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (211, 19, '', 'HN202200250326', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (212, 19, '', 'HN202200250327', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (213, 19, '', 'HN202200250328', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (214, 19, '', 'HN202200250329', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (215, 19, '', 'HN202200250330', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (216, 19, '', 'HN202200250331', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (217, 19, '', 'HN202200250332', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (218, 19, '', 'HN202200250425', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (219, 19, '', 'HN202200250426', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (220, 19, '', 'HN202200250427', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (221, 19, '', 'HN202200250428', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (222, 19, '', 'HN202200250429', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (223, 19, '', 'HN202200250430', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (224, 19, '', 'HN202200250431', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (225, 19, '', 'HN202200250432', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (226, 20, '', 'HN202200290125', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (227, 20, '', 'HN202200290126', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (228, 20, '', 'HN202200290127', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (229, 20, '', 'HN202200290128', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (230, 20, '', 'HN202200290129', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (231, 20, '', 'HN202200290130', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (232, 20, '', 'HN202200290131', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (233, 20, '', 'HN202200290132', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (234, 20, '', 'HN202200290225', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (235, 20, '', 'HN202200290226', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (236, 20, '', 'HN202200290227', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (237, 20, '', 'HN202200290228', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (238, 20, '', 'HN202200290229', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (239, 20, '', 'HN202200290230', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (240, 20, '', 'HN202200290231', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (241, 20, '', 'HN202200290232', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (242, 20, '', 'HN202200290325', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (243, 20, '', 'HN202200290326', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (244, 20, '', 'HN202200290327', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (245, 20, '', 'HN202200290328', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (246, 20, '', 'HN202200290329', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (247, 20, '', 'HN202200290330', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (248, 20, '', 'HN202200290331', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (249, 20, '', 'HN202200290332', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (250, 21, '', 'HN202200150125', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 394, 'XS', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (251, 21, '', 'HN202200150126', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (252, 21, '', 'HN202200150127', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (253, 21, '', 'HN202200150128', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (254, 21, '', 'HN202200150129', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (255, 21, '', 'HN202200150130', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (256, 21, '', 'HN202200150225', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 394, 'XS', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (257, 21, '', 'HN202200150226', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (258, 21, '', 'HN202200150227', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (259, 21, '', 'HN202200150228', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (260, 21, '', 'HN202200150229', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (261, 21, '', 'HN202200150230', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (262, 21, '', 'HN202200150325', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 394, 'XS', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (263, 21, '', 'HN202200150326', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (264, 21, '', 'HN202200150327', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (265, 21, '', 'HN202200150328', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (266, 21, '', 'HN202200150329', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (267, 21, '', 'HN202200150330', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (268, 22, '', 'HN202200200125', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (269, 22, '', 'HN202200200126', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (270, 22, '', 'HN202200200127', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (271, 22, '', 'HN202200200128', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (272, 22, '', 'HN202200200129', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (273, 22, '', 'HN202200200130', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (274, 22, '', 'HN202200200131', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (275, 22, '', 'HN202200200132', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (276, 22, '', 'HN202200200225', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (277, 22, '', 'HN202200200226', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (278, 22, '', 'HN202200200227', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (279, 22, '', 'HN202200200228', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (280, 22, '', 'HN202200200229', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (281, 22, '', 'HN202200200230', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (282, 22, '', 'HN202200200231', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (283, 22, '', 'HN202200200232', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (284, 22, '', 'HN202200200325', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (285, 22, '', 'HN202200200326', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (286, 22, '', 'HN202200200327', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (287, 22, '', 'HN202200200328', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (288, 22, '', 'HN202200200329', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (289, 22, '', 'HN202200200330', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (290, 22, '', 'HN202200200331', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (291, 22, '', 'HN202200200332', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (292, 22, '', 'HN202200200425', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (293, 22, '', 'HN202200200426', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (294, 22, '', 'HN202200200427', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (295, 22, '', 'HN202200200428', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (296, 22, '', 'HN202200200429', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (297, 22, '', 'HN202200200430', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (298, 22, '', 'HN202200200431', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (299, 22, '', 'HN202200200435', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (300, 23, '', 'HN202200240125', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (301, 23, '', 'HN202200240126', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (302, 23, '', 'HN202200240127', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (303, 23, '', 'HN202200240128', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (304, 23, '', 'HN202200240129', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (305, 23, '', 'HN202200240130', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (306, 23, '', 'HN202200240131', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (307, 23, '', 'HN202200240132', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (308, 23, '', 'HN202200240225', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (309, 23, '', 'HN202200240226', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (310, 23, '', 'HN202200240227', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (311, 23, '', 'HN202200240228', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (312, 23, '', 'HN202200240229', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (313, 23, '', 'HN202200240230', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (314, 23, '', 'HN202200240231', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (315, 23, '', 'HN202200240232', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (316, 23, '', 'HN202200240325', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (317, 23, '', 'HN202200240326', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (318, 23, '', 'HN202200240327', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (319, 23, '', 'HN202200240328', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (320, 23, '', 'HN202200240329', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (321, 23, '', 'HN202200240330', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (322, 23, '', 'HN202200240331', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (323, 23, '', 'HN202200240332', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (324, 23, '', 'HN202200240425', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (325, 23, '', 'HN202200240426', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (326, 23, '', 'HN202200240427', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (327, 23, '', 'HN202200240428', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (328, 23, '', 'HN202200240429', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (329, 23, '', 'HN202200240430', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (330, 23, '', 'HN202200240431', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (331, 23, '', 'HN202200240432', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (332, 24, '', 'HN202200120101', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (333, 24, '', 'HN202200120102', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (334, 24, '', 'HN202200120103', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (335, 24, '', 'HN202200120104', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (336, 24, '', 'HN202200120105', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (337, 25, '', 'OXN06910125', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '25', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (338, 25, '', 'OXN06910126', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '26', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (339, 25, '', 'OXN06910127', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '27', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (340, 25, '', 'OXN06910128', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '28', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (341, 25, '', 'OXN06910129', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '29', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (342, 25, '', 'OXN06910130', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '30', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (343, 25, '', 'OXN06910131', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '31', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (344, 25, '', 'OXN06910132', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '32', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (345, 25, '', 'OXN06910225', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '25', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (346, 25, '', 'OXN06910226', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '26', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (347, 25, '', 'OXN06910227', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '27', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (348, 25, '', 'OXN06910228', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '28', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (349, 25, '', 'OXN06910229', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '29', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (350, 25, '', 'OXN06910230', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '30', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (351, 25, '', 'OXN06910231', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '31', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (352, 25, '', 'OXN06910232', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '32', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (353, 26, '', 'HN06300101', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (354, 26, '', 'HN06300102', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (355, 26, '', 'HN06300103', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (356, 26, '', 'HN06300104', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (357, 26, '', 'HN06300105', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (358, 26, '', 'HN06300201', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (359, 26, '', 'HN06300202', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (360, 26, '', 'HN06300203', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (361, 26, '', 'HN06300204', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (362, 26, '', 'HN06300205', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (363, 26, '', 'HN06300301', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (364, 26, '', 'HN06300302', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (365, 26, '', 'HN06300303', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (366, 26, '', 'HN06300304', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (367, 26, '', 'HN06300305', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (368, 27, '', 'HN0234025', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (369, 27, '', 'HN0234026', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (370, 27, '', 'HN0234027', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (371, 27, '', 'HN0234028', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (372, 27, '', 'HN0234029', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (373, 27, '', 'HN0234030', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (374, 27, '', 'HN0234031', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (375, 27, '', 'HN0234032', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (376, 27, '', 'HN0237525', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (377, 27, '', 'HN0237526', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (378, 27, '', 'HN0237527', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (379, 27, '', 'HN0237528', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (380, 27, '', 'HN0237529', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (381, 27, '', 'HN0237530', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (382, 27, '', 'HN0237531', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (383, 27, '', 'HN0237532', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (384, 27, '', 'HN0232925', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (385, 27, '', 'HN0232926', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (386, 27, '', 'HN0232927', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (387, 27, '', 'HN0232928', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (388, 27, '', 'HN0232929', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (389, 27, '', 'HN0232930', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (390, 27, '', 'HN0232931', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (391, 27, '', 'HN0232932', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (392, 27, '', 'HN0230125', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (393, 27, '', 'HN0230126', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (394, 27, '', 'HN0230127', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (395, 27, '', 'HN0230128', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (396, 27, '', 'HN0230129', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (397, 27, '', 'HN0230130', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (398, 27, '', 'HN0230131', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (399, 27, '', 'HN0230132', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (400, 9, '', 'HN80264001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (401, 9, '', 'HN80264002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (402, 9, '', 'HN80264003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (403, 9, '', 'HN80264004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (404, 9, '', 'HN80264005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (405, 9, '', 'HN80267501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (406, 9, '', 'HN80267502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (407, 9, '', 'HN80267503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (408, 9, '', 'HN80267504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (409, 9, '', 'HN80267505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (410, 28, '', 'HN6705001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (411, 28, '', 'HN6705002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (412, 28, '', 'HN6705003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (413, 28, '', 'HN6705004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (414, 28, '', 'HN6705005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (415, 28, '', 'HN6707501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (416, 28, '', 'HN6707502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (417, 28, '', 'HN6707503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (418, 28, '', 'HN6707504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (419, 28, '', 'HN6707505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (420, 28, '', 'HN6704001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (421, 28, '', 'HN6704002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (422, 28, '', 'HN6704003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (423, 28, '', 'HN6704004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (424, 28, '', 'HN6704005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (425, 29, '', 'HNP1820101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (426, 29, '', 'HNP1820102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (427, 29, '', 'HNP1820103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (428, 29, '', 'HNP1820104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (429, 29, '', 'HNP1820105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (430, 29, '', 'HNP1821501', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (431, 29, '', 'HNP1821502', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (432, 29, '', 'HNP1821503', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (433, 29, '', 'HNP1821504', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (434, 29, '', 'HNP1821505', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (435, 29, '', 'HNP1825001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (436, 29, '', 'HNP1825002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (437, 29, '', 'HNP1825003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (438, 29, '', 'HNP1825004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (439, 29, '', 'HNP1825005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (440, 30, '', 'HN6724001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (441, 30, '', 'HN6724002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (442, 30, '', 'HN6724003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (443, 30, '', 'HN6724004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (444, 30, '', 'HN6724005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (445, 31, '', 'HN8010101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (446, 31, '', 'HN8010102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (447, 31, '', 'HN8010103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (448, 31, '', 'HN8010104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (449, 31, '', 'HN8010105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (450, 31, '', 'HN8017501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (451, 31, '', 'HN8017502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (452, 31, '', 'HN8017503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (453, 31, '', 'HN8017504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (454, 31, '', 'HN8017505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (455, 31, '', 'HN8014001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (456, 31, '', 'HN8014002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (457, 31, '', 'HN8014003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (458, 31, '', 'HN8014004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (459, 31, '', 'HN8014005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (460, 31, '', 'HN8012901', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (461, 31, '', 'HN8012902', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (462, 31, '', 'HN8012903', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (463, 31, '', 'HN8012904', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (464, 31, '', 'HN8012905', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (465, 31, '', 'HN8015001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (466, 31, '', 'HN8015002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (467, 31, '', 'HN8015003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (468, 31, '', 'HN8015004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (469, 31, '', 'HN8015005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (470, 31, '', 'HN8011001', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (471, 31, '', 'HN8011002', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (472, 31, '', 'HN8011003', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (473, 31, '', 'HN8011004', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (474, 31, '', 'HN8011005', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (475, 32, '', 'HN6975001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (476, 32, '', 'HN6975002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (477, 32, '', 'HN6975003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (478, 32, '', 'HN6975004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (479, 32, '', 'HN6975005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (480, 32, '', 'HN6977501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (481, 32, '', 'HN6977502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (482, 32, '', 'HN6977503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (483, 32, '', 'HN6977504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (484, 32, '', 'HN6977505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (485, 32, '', 'HN6971001', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (486, 32, '', 'HN6971002', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (487, 32, '', 'HN6971003', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (488, 32, '', 'HN6971004', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (489, 32, '', 'HN6971005', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (490, 33, '', 'HN08010101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (491, 33, '', 'HN08010102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (492, 33, '', 'HN08010103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (493, 33, '', 'HN08010104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (494, 33, '', 'HN08010105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (495, 33, '', 'HN08017501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (496, 33, '', 'HN08017502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (497, 33, '', 'HN08017503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (498, 33, '', 'HN08017504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (499, 33, '', 'HN08017505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (500, 33, '', 'HN08012901', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (501, 33, '', 'HN08012902', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (502, 33, '', 'HN08012903', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (503, 33, '', 'HN08012904', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (504, 33, '', 'HN08012905', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (505, 33, '', 'HN08014001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (506, 33, '', 'HN08014002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (507, 33, '', 'HN08014003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (508, 33, '', 'HN08014004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (509, 33, '', 'HN08014005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (510, 34, '', 'HN6210101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (511, 34, '', 'HN6210102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (512, 34, '', 'HN6210103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (513, 34, '', 'HN6210104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (514, 34, '', 'HN6210105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (515, 34, '', 'HN6217501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (516, 34, '', 'HN6217502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (517, 34, '', 'HN6217503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (518, 34, '', 'HN6217504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (519, 34, '', 'HN6217505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (520, 34, '', 'HN6215001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (521, 34, '', 'HN6215002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (522, 34, '', 'HN6215003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (523, 34, '', 'HN6215004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (524, 34, '', 'HN6215005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (525, 34, '', 'HN6214001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (526, 34, '', 'HN6214002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (527, 34, '', 'HN6214003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (528, 34, '', 'HN6214004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (529, 34, '', 'HN6214005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (530, 35, '', 'HN6625001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (531, 35, '', 'HN6625002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (532, 35, '', 'HN6625003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (533, 35, '', 'HN6625004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (534, 35, '', 'HN6625005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (535, 36, '', 'HN6927501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (536, 36, '', 'HN6927502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (537, 36, '', 'HN6927503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (538, 36, '', 'HN6927504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (539, 36, '', 'HN6927505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (540, 36, '', 'HN6925001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (541, 36, '', 'HN6925002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (542, 36, '', 'HN6925003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (543, 36, '', 'HN6925004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (544, 36, '', 'HN6925005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (545, 37, '', 'HN1060101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (546, 37, '', 'HN1060102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (547, 37, '', 'HN1060103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (548, 37, '', 'HN1060104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (549, 37, '', 'HN1060105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (550, 37, '', 'HN1064001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (551, 37, '', 'HN1064002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (552, 37, '', 'HN1064003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (553, 37, '', 'HN1064004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (554, 37, '', 'HN1064005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (555, 37, '', 'HN1062901', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (556, 37, '', 'HN1062902', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (557, 37, '', 'HN1062903', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (558, 37, '', 'HN1062904', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (559, 37, '', 'HN1062905', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (560, 38, '', 'HN6635001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (561, 38, '', 'HN6635002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (562, 38, '', 'HN6635003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (563, 38, '', 'HN6635004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (564, 38, '', 'HN6635005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (565, 38, '', 'HN6637501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (566, 38, '', 'HN6637502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (567, 38, '', 'HN6637503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (568, 38, '', 'HN6637504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (569, 38, '', 'HN6637505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (570, 39, '', 'HN0220126', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (571, 39, '', 'HN0220127', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (572, 39, '', 'HN0220128', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (573, 39, '', 'HN0220129', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (574, 39, '', 'HN0220130', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (575, 39, '', 'HN0220131', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (576, 39, '', 'HN0220132', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (577, 39, '', 'HN0222926', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (578, 39, '', 'HN0222927', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (579, 39, '', 'HN0222928', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (580, 39, '', 'HN0222929', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (581, 39, '', 'HN0222930', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (582, 39, '', 'HN0222931', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (583, 39, '', 'HN0222932', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (584, 40, '', 'HN6685001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (585, 40, '', 'HN6685002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (586, 40, '', 'HN6685003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (587, 40, '', 'HN6685004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (588, 40, '', 'HN6685005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (589, 40, '', 'HN6681201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (590, 40, '', 'HN6681202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (591, 40, '', 'HN6681203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (592, 40, '', 'HN6681204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (593, 40, '', 'HN6681205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (594, 40, '', 'HN6687501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (595, 40, '', 'HN6687502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (596, 40, '', 'HN6687503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (597, 40, '', 'HN6687504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (598, 40, '', 'HN6687505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (599, 41, '', 'HN6675001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (600, 41, '', 'HN6675002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (601, 41, '', 'HN6675003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (602, 41, '', 'HN6675004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (603, 41, '', 'HN6675005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (604, 41, '', 'HN6674001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (605, 41, '', 'HN6674002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (606, 41, '', 'HN6674003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (607, 41, '', 'HN6674004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (608, 41, '', 'HN6674005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (609, 42, '', 'HN2221226', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (610, 42, '', 'HN2221227', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (611, 42, '', 'HN2221228', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (612, 42, '', 'HN2221229', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (613, 42, '', 'HN2221230', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (614, 42, '', 'HN2221231', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (615, 42, '', 'HN2221232', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (616, 42, '', 'HN2225026', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (617, 42, '', 'HN2225027', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (618, 42, '', 'HN2225028', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (619, 42, '', 'HN2225029', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (620, 42, '', 'HN2225030', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (621, 42, '', 'HN2225031', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (622, 42, '', 'HN2225032', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (623, 43, '', 'HN6945001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (624, 43, '', 'HN6945002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (625, 43, '', 'HN6945003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (626, 43, '', 'HN6945004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (627, 43, '', 'HN6945005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (628, 43, '', 'HN6947501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (629, 43, '', 'HN6947502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (630, 43, '', 'HN6947503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (631, 43, '', 'HN6947504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (632, 43, '', 'HN6947505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (633, 44, '', 'HN6600101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (634, 44, '', 'HN6600102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (635, 44, '', 'HN6600103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (636, 44, '', 'HN6600104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (637, 44, '', 'HN6600105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (638, 44, '', 'HN6605001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (639, 44, '', 'HN6605002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (640, 44, '', 'HN6605003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (641, 44, '', 'HN6605004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (642, 44, '', 'HN6605005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (643, 44, '', 'HN6607501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (644, 44, '', 'HN6607502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (645, 44, '', 'HN6607503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (646, 44, '', 'HN6607504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (647, 44, '', 'HN6607505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (648, 44, '', 'HN6604001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (649, 44, '', 'HN6604002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (650, 44, '', 'HN6604003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (651, 44, '', 'HN6604004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (652, 44, '', 'HN6604005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (653, 45, '', 'HN6861501', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (654, 45, '', 'HN6861502', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (655, 45, '', 'HN6861503', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (656, 45, '', 'HN6861504', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (657, 45, '', 'HN6861505', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (658, 45, '', 'HN6860101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (659, 45, '', 'HN6860102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (660, 45, '', 'HN6860103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (661, 45, '', 'HN6860104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (662, 45, '', 'HN6860105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (663, 45, '', 'HN6865001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (664, 45, '', 'HN6865002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (665, 45, '', 'HN6865003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (666, 45, '', 'HN6865004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (667, 45, '', 'HN6865005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (668, 45, '', 'HN6867501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (669, 45, '', 'HN6867502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (670, 45, '', 'HN6867503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (671, 45, '', 'HN6867504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (672, 45, '', 'HN6867505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (673, 46, '', 'HN0210126', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (674, 46, '', 'HN0210127', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (675, 46, '', 'HN0210128', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (676, 46, '', 'HN0210129', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (677, 46, '', 'HN0210130', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (678, 46, '', 'HN0210131', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (679, 46, '', 'HN0210132', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (680, 46, '', 'HN0212826', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (681, 46, '', 'HN0212827', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (682, 46, '', 'HN0212828', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (683, 46, '', 'HN0212829', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (684, 46, '', 'HN0212830', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (685, 46, '', 'HN0212831', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (686, 46, '', 'HN0212832', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (687, 46, '', 'HN0215026', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (688, 46, '', 'HN0215027', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (689, 46, '', 'HN0215028', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (690, 46, '', 'HN0215029', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (691, 46, '', 'HN0215030', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (692, 46, '', 'HN0215031', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (693, 46, '', 'HN0215032', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (694, 46, '', 'HN0212926', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (695, 46, '', 'HN0212927', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (696, 46, '', 'HN0212928', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (697, 46, '', 'HN0212929', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (698, 46, '', 'HN0212930', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (699, 46, '', 'HN0212931', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (700, 46, '', 'HN0212932', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (701, 46, '', 'HN02110026', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (702, 46, '', 'HN02110027', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (703, 46, '', 'HN02110028', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (704, 46, '', 'HN02110029', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (705, 46, '', 'HN02110030', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (706, 46, '', 'HN02110031', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (707, 46, '', 'HN02110032', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (708, 46, '', 'HN02128026', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (709, 46, '', 'HN02128027', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (710, 46, '', 'HN02128028', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (711, 46, '', 'HN02128029', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (712, 46, '', 'HN02128030', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (713, 46, '', 'HN02128031', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (714, 46, '', 'HN02128032', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (715, 46, '', 'HN02129026', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (716, 46, '', 'HN02129027', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (717, 46, '', 'HN02129028', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (718, 46, '', 'HN02129029', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (719, 46, '', 'HN02129030', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (720, 46, '', 'HN02129031', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (721, 46, '', 'HN02129032', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (722, 46, '', 'HN02150026', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (723, 46, '', 'HN02150027', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (724, 46, '', 'HN02150028', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (725, 46, '', 'HN02150029', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (726, 46, '', 'HN02150030', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (727, 46, '', 'HN02150031', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (728, 46, '', 'HN02150032', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (729, 47, '', 'JKL8051209', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 394, 'XS', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (730, 47, '', 'JKL8051201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 341, 'S', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (731, 47, '', 'JKL8051202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 342, 'M', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (732, 47, '', 'JKL8051203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 343, 'L', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (733, 47, '', 'JKL8051204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 344, 'XL', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (734, 47, '', 'JKL8051205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 345, '2XL', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (735, 47, '', 'JKL80512009', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 394, 'XS', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (736, 47, '', 'JKL80512001', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 341, 'S', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (737, 47, '', 'JKL80512002', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 342, 'M', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (738, 47, '', 'JKL80512003', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 343, 'L', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (739, 47, '', 'JKL80512004', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 344, 'XL', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (740, 47, '', 'JKL80512005', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 345, '2XL', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (741, 33, '', 'HN08015001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (742, 33, '', 'HN08015002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (743, 33, '', 'HN08015003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (744, 33, '', 'HN08015004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (745, 33, '', 'HN08015005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (746, 33, '', 'HN08011001', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (747, 33, '', 'HN08011002', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (748, 33, '', 'HN08011003', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (749, 33, '', 'HN08011004', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (750, 33, '', 'HN08011005', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (751, 33, '', 'HN080110101', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (752, 33, '', 'HN080110102', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (753, 33, '', 'HN080110103', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (754, 33, '', 'HN080110104', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (755, 33, '', 'HN080110105', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (756, 33, '', 'HN080117501', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (757, 33, '', 'HN080117502', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (758, 33, '', 'HN080117503', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (759, 33, '', 'HN080117504', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (760, 33, '', 'HN080117505', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (761, 33, '', 'HN080112901', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (762, 33, '', 'HN080112902', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (763, 33, '', 'HN080112903', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (764, 33, '', 'HN080112904', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (765, 33, '', 'HN080112905', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (766, 33, '', 'HN080114001', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (767, 33, '', 'HN080114002', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (768, 33, '', 'HN080114003', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (769, 33, '', 'HN080114004', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (770, 33, '', 'HN080114005', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (771, 33, '', 'HN080115001', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (772, 33, '', 'HN080115002', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (773, 33, '', 'HN080115003', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (774, 33, '', 'HN080115004', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (775, 33, '', 'HN080115005', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (776, 22, '', 'HN2022002010125', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (777, 22, '', 'HN2022002010126', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (778, 22, '', 'HN2022002010127', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (779, 22, '', 'HN2022002010128', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (780, 22, '', 'HN2022002010129', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (781, 22, '', 'HN2022002010130', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (782, 22, '', 'HN2022002010131', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (783, 22, '', 'HN2022002010132', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (784, 22, '', 'HN2022002017525', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (785, 22, '', 'HN2022002017526', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (786, 22, '', 'HN2022002017527', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (787, 22, '', 'HN2022002017528', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (788, 22, '', 'HN2022002017529', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (789, 22, '', 'HN2022002017530', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (790, 22, '', 'HN2022002017531', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (791, 22, '', 'HN2022002017532', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (792, 22, '', 'HN2022002012925', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (793, 22, '', 'HN2022002012926', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (794, 22, '', 'HN2022002012927', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (795, 22, '', 'HN2022002012928', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (796, 22, '', 'HN2022002012929', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (797, 22, '', 'HN2022002012930', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (798, 22, '', 'HN2022002012931', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (799, 22, '', 'HN2022002012932', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (800, 22, '', 'HN2022002015025', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (801, 22, '', 'HN2022002015026', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (802, 22, '', 'HN2022002015027', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (803, 22, '', 'HN2022002015028', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (804, 22, '', 'HN2022002015029', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (805, 22, '', 'HN2022002015030', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (806, 22, '', 'HN2022002015031', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (807, 22, '', 'HN2022002015032', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (808, 48, '', 'HN1805001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (809, 48, '', 'HN1805002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (810, 48, '', 'HN1805003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (811, 48, '', 'HN1805004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (812, 48, '', 'HN1805005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (813, 49, '', 'JKL90984026', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 402, '26', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (814, 49, '', 'JKL90984027', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 403, '27', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (815, 49, '', 'JKL90984028', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 404, '28', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (816, 49, '', 'JKL90984029', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 405, '29', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (817, 49, '', 'JKL90984030', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 406, '30', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (818, 49, '', 'JKL90984031', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 407, '31', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (819, 49, '', 'JKL90984032', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 408, '32', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (820, 49, '', 'JKL90982926', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 402, '26', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (821, 49, '', 'JKL90982927', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 403, '27', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (822, 49, '', 'JKL90982928', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 404, '28', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (823, 49, '', 'JKL90982929', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 405, '29', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (824, 49, '', 'JKL90982930', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 406, '30', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (825, 49, '', 'JKL90982931', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 407, '31', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (826, 49, '', 'JKL90982932', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 408, '32', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (827, 49, '', 'JKL90980126', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 402, '26', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (828, 49, '', 'JKL90980127', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 403, '27', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (829, 49, '', 'JKL90980128', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 404, '28', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (830, 49, '', 'JKL90980129', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 405, '29', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (831, 49, '', 'JKL90980130', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 406, '30', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (832, 49, '', 'JKL90980131', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 407, '31', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (833, 49, '', 'JKL90980132', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 408, '32', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (834, 49, '', 'JKL909814026', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 402, '26', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (835, 49, '', 'JKL909814027', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 403, '27', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (836, 49, '', 'JKL909814028', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 404, '28', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (837, 49, '', 'JKL909814029', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 405, '29', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (838, 49, '', 'JKL909814030', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 406, '30', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (839, 49, '', 'JKL909814031', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 407, '31', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (840, 49, '', 'JKL909814032', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 408, '32', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (841, 49, '', 'JKL909812926', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 402, '26', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (842, 49, '', 'JKL909812927', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 403, '27', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (843, 49, '', 'JKL909812928', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 404, '28', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (844, 49, '', 'JKL909812929', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 405, '29', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (845, 49, '', 'JKL909812930', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 406, '30', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (846, 49, '', 'JKL909812931', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 407, '31', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (847, 49, '', 'JKL909812932', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 408, '32', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (848, 49, '', 'JKL909810126', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 402, '26', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (849, 49, '', 'JKL909810127', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 403, '27', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (850, 49, '', 'JKL909810128', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 404, '28', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (851, 49, '', 'JKL909810129', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 405, '29', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (852, 49, '', 'JKL909810130', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 406, '30', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (853, 49, '', 'JKL909810131', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 407, '31', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (854, 49, '', 'JKL909810132', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 408, '32', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (855, 49, '', 'JKL90984826', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 402, '26', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (856, 49, '', 'JKL90984827', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 403, '27', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (857, 49, '', 'JKL90984828', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 404, '28', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (858, 49, '', 'JKL90984829', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 405, '29', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (859, 49, '', 'JKL90984830', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 406, '30', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (860, 49, '', 'JKL90984831', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 407, '31', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (861, 49, '', 'JKL90984832', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 408, '32', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (862, 49, '', 'JKL90986426', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 402, '26', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (863, 49, '', 'JKL90986427', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 403, '27', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (864, 49, '', 'JKL90986428', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 404, '28', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (865, 49, '', 'JKL90986429', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 405, '29', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (866, 49, '', 'JKL90986430', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 406, '30', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (867, 49, '', 'JKL90986431', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 407, '31', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (868, 49, '', 'JKL90986432', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 408, '32', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (869, 49, '', 'JKL90986526', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 402, '26', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (870, 49, '', 'JKL90986527', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 403, '27', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (871, 49, '', 'JKL90986528', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 404, '28', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (872, 49, '', 'JKL90986529', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 405, '29', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (873, 49, '', 'JKL90986530', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 406, '30', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (874, 49, '', 'JKL90986531', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 407, '31', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (875, 49, '', 'JKL90986532', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 408, '32', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (879, 53, '', 'JKL99070125JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (880, 53, '', 'JKL99070125BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (881, 53, '', 'JKL99070125JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (882, 53, '', 'JKL99070126JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (883, 53, '', 'JKL99070126BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (884, 53, '', 'JKL99070126JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (885, 53, '', 'JKL99070127JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (886, 53, '', 'JKL99070127BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (887, 53, '', 'JKL99070127JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (888, 53, '', 'JKL99070128JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (889, 53, '', 'JKL99070128BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (890, 53, '', 'JKL99070128JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (891, 53, '', 'JKL99070129JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (892, 53, '', 'JKL99070129BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (893, 53, '', 'JKL99070129JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (894, 53, '', 'JKL99070130JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (895, 53, '', 'JKL99070130BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (896, 53, '', 'JKL99070130JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (897, 53, '', 'JKL99070131JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (898, 53, '', 'JKL99070131BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (899, 53, '', 'JKL99070131JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (900, 53, '', 'JKL99070132JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (901, 53, '', 'JKL99070132BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (902, 53, '', 'JKL99070132JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (903, 53, '', 'JKL99072825JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (904, 53, '', 'JKL99072825BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (905, 53, '', 'JKL99072825JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (906, 53, '', 'JKL99072826JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (907, 53, '', 'JKL99072826BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (908, 53, '', 'JKL99072826JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (909, 53, '', 'JKL99072827JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (910, 53, '', 'JKL99072827BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (911, 53, '', 'JKL99072827JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (912, 53, '', 'JKL99072828JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (913, 53, '', 'JKL99072828BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (914, 53, '', 'JKL99072828JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (915, 53, '', 'JKL99072829JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (916, 53, '', 'JKL99072829BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (917, 53, '', 'JKL99072829JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (918, 53, '', 'JKL99072830JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (919, 53, '', 'JKL99072830BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (920, 53, '', 'JKL99072830JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (921, 53, '', 'JKL99072831JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (922, 53, '', 'JKL99072831BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (923, 53, '', 'JKL99072831JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (924, 53, '', 'JKL99072832JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (925, 53, '', 'JKL99072832BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (926, 53, '', 'JKL99072832JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (927, 53, '', 'JKL99074725JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (928, 53, '', 'JKL99074725BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (929, 53, '', 'JKL99074725JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (930, 53, '', 'JKL99074726JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (931, 53, '', 'JKL99074726BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (932, 53, '', 'JKL99074726JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (933, 53, '', 'JKL99074727JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (934, 53, '', 'JKL99074727BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (935, 53, '', 'JKL99074727JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (936, 53, '', 'JKL99074728JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (937, 53, '', 'JKL99074728BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (938, 53, '', 'JKL99074728JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (939, 53, '', 'JKL99074729JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (940, 53, '', 'JKL99074729BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (941, 53, '', 'JKL99074729JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (942, 53, '', 'JKL99074730JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (943, 53, '', 'JKL99074730BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (944, 53, '', 'JKL99074730JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (945, 53, '', 'JKL99074731JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (946, 53, '', 'JKL99074731BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (947, 53, '', 'JKL99074731JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (948, 53, '', 'JKL99074732JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (949, 53, '', 'JKL99074732BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (950, 53, '', 'JKL99074732JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (951, 53, '', 'JKL99075125JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (952, 53, '', 'JKL99075125BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (953, 53, '', 'JKL99075125JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (954, 53, '', 'JKL99075126JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (955, 53, '', 'JKL99075126BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (956, 53, '', 'JKL99075126JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (957, 53, '', 'JKL99075127JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (958, 53, '', 'JKL99075127BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (959, 53, '', 'JKL99075127JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (960, 53, '', 'JKL99075128JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (961, 53, '', 'JKL99075128BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (962, 53, '', 'JKL99075128JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (963, 53, '', 'JKL99075129JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (964, 53, '', 'JKL99075129BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (965, 53, '', 'JKL99075129JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (966, 53, '', 'JKL99075130JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (967, 53, '', 'JKL99075130BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (968, 53, '', 'JKL99075130JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (969, 53, '', 'JKL99075131JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (970, 53, '', 'JKL99075131BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (971, 53, '', 'JKL99075131JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (972, 53, '', 'JKL99075132JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (973, 53, '', 'JKL99075132BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (974, 53, '', 'JKL99075132JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (975, 54, '', 'JKL60103526', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 402, '26', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (976, 54, '', 'JKL60103527', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 403, '27', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (977, 54, '', 'JKL60103528', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 404, '28', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (978, 54, '', 'JKL60103529', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 405, '29', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (979, 54, '', 'JKL60103530', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 406, '30', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (980, 54, '', 'JKL60103531', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 407, '31', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (981, 54, '', 'JKL60107526', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 402, '26', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (982, 54, '', 'JKL60107527', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 403, '27', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (983, 54, '', 'JKL60107528', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 404, '28', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (984, 54, '', 'JKL60107529', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 405, '29', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (985, 54, '', 'JKL60107530', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 406, '30', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (986, 54, '', 'JKL60107531', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 407, '31', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (987, 55, '', 'JKL9064009', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 394, 'XS', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (988, 55, '', 'JKL9064001', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 341, 'S', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (989, 55, '', 'JKL9064002', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 342, 'M', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (990, 55, '', 'JKL9064003', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 343, 'L', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (991, 55, '', 'JKL9064004', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 344, 'XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (992, 55, '', 'JKL9064005', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 345, '2XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (993, 55, '', 'JKL9065009', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 394, 'XS', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (994, 55, '', 'JKL9065001', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 341, 'S', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (995, 55, '', 'JKL9065002', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 342, 'M', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (996, 55, '', 'JKL9065003', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 343, 'L', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (997, 55, '', 'JKL9065004', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 344, 'XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (998, 55, '', 'JKL9065005', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 345, '2XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (999, 56, '', 'JKL99774009CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 394, 'XS', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1000, 56, '', 'JKL99774009JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 394, 'XS', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1001, 56, '', 'JKL99774001CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 341, 'S', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1002, 56, '', 'JKL99774001JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 341, 'S', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1003, 56, '', 'JKL99774002CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 342, 'M', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1004, 56, '', 'JKL99774002JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 342, 'M', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1005, 56, '', 'JKL99774003CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 343, 'L', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1006, 56, '', 'JKL99774003JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 343, 'L', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1007, 56, '', 'JKL99774004CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 344, 'XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1008, 56, '', 'JKL99774004JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 344, 'XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1009, 56, '', 'JKL99774005CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 345, '2XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1010, 56, '', 'JKL99774005JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 345, '2XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1031, 59, '', 'JKL99784009CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 394, 'XS', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1032, 59, '', 'JKL99784009JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 394, 'XS', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1033, 59, '', 'JKL99784001CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 341, 'S', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1034, 59, '', 'JKL99784001JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 341, 'S', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1035, 59, '', 'JKL99784002CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 342, 'M', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1036, 59, '', 'JKL99784002JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 342, 'M', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1037, 59, '', 'JKL99784003CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 343, 'L', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1038, 59, '', 'JKL99784003JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 343, 'L', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1039, 59, '', 'JKL99784004CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 344, 'XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1040, 59, '', 'JKL99784004JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 344, 'XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1041, 59, '', 'JKL99784005CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 345, '2XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1042, 59, '', 'JKL99784005JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 345, '2XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1043, 60, '', 'JKL99505025', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 401, '25', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1044, 60, '', 'JKL99505026', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 402, '26', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1045, 60, '', 'JKL99505027', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 403, '27', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1046, 60, '', 'JKL99505028', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 404, '28', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1047, 60, '', 'JKL99505029', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 405, '29', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1048, 60, '', 'JKL99505030', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 406, '30', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1049, 60, '', 'JKL99505031', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 407, '31', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1050, 60, '', 'JKL99505032', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 408, '32', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1051, 60, '', 'JKL99501225', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 401, '25', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1052, 60, '', 'JKL99501226', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 402, '26', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1053, 60, '', 'JKL99501227', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 403, '27', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1054, 60, '', 'JKL99501228', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 404, '28', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1055, 60, '', 'JKL99501229', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 405, '29', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1056, 60, '', 'JKL99501230', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 406, '30', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1057, 60, '', 'JKL99501231', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 407, '31', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1058, 60, '', 'JKL99501232', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 408, '32', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1059, 60, '', 'JKL99505925', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 401, '25', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1060, 60, '', 'JKL99505926', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 402, '26', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1061, 60, '', 'JKL99505927', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 403, '27', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1062, 60, '', 'JKL99505928', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 404, '28', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1063, 60, '', 'JKL99505929', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 405, '29', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1064, 60, '', 'JKL99505930', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 406, '30', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1065, 60, '', 'JKL99505931', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 407, '31', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1066, 60, '', 'JKL99505932', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 408, '32', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1067, 61, '', 'JKL89903509', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 394, 'XS', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1068, 61, '', 'JKL89903501', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 341, 'S', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1069, 61, '', 'JKL89903502', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 342, 'M', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1070, 61, '', 'JKL89903503', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 343, 'L', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1071, 61, '', 'JKL89903504', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 344, 'XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1072, 61, '', 'JKL89903505', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 345, '2XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1073, 61, '', 'JKL89907509', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 394, 'XS', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1074, 61, '', 'JKL89907501', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 341, 'S', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1075, 61, '', 'JKL89907502', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 342, 'M', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1076, 61, '', 'JKL89907503', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 343, 'L', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1077, 61, '', 'JKL89907504', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 344, 'XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1078, 61, '', 'JKL89907505', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 345, '2XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1079, 62, '', 'JKL99380109JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 394, 'XS', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1080, 62, '', 'JKL99380109CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 394, 'XS', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1081, 62, '', 'JKL99380101JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 341, 'S', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1082, 62, '', 'JKL99380101CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 341, 'S', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1083, 62, '', 'JKL99380102JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 342, 'M', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1084, 62, '', 'JKL99380102CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 342, 'M', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1085, 62, '', 'JKL99380103JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 343, 'L', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1086, 62, '', 'JKL99380103CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 343, 'L', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1087, 62, '', 'JKL99380104JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 344, 'XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1088, 62, '', 'JKL99380104CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 344, 'XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1089, 62, '', 'JKL99380105JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 345, '2XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1090, 62, '', 'JKL99380105CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 345, '2XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1091, 62, '', 'JKL99384009JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 394, 'XS', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1092, 62, '', 'JKL99384009CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 394, 'XS', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1093, 62, '', 'JKL99384001JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 341, 'S', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1094, 62, '', 'JKL99384001CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 341, 'S', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1095, 62, '', 'JKL99384002JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 342, 'M', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1096, 62, '', 'JKL99384002CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 342, 'M', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1097, 62, '', 'JKL99384003JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 343, 'L', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1098, 62, '', 'JKL99384003CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 343, 'L', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1099, 62, '', 'JKL99384004JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 344, 'XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1100, 62, '', 'JKL99384004CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 344, 'XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1101, 62, '', 'JKL99384005JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 345, '2XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1102, 62, '', 'JKL99384005CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 345, '2XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1103, 62, '', 'JKL99385009JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 394, 'XS', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1104, 62, '', 'JKL99385009CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 394, 'XS', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1105, 62, '', 'JKL99385001JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 341, 'S', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1106, 62, '', 'JKL99385001CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 341, 'S', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1107, 62, '', 'JKL99385002JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 342, 'M', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1108, 62, '', 'JKL99385002CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 342, 'M', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1109, 62, '', 'JKL99385003JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 343, 'L', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1110, 62, '', 'JKL99385003CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 343, 'L', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1111, 62, '', 'JKL99385004JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 344, 'XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1112, 62, '', 'JKL99385004CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 344, 'XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1113, 62, '', 'JKL99385005JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 345, '2XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1114, 62, '', 'JKL99385005CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 345, '2XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1115, 63, '', 'JKL600101258', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1116, 63, '', 'JKL600101259', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1117, 63, '', 'JKL600101268', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1118, 63, '', 'JKL600101269', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1119, 63, '', 'JKL600101278', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1120, 63, '', 'JKL600101279', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1121, 63, '', 'JKL600101288', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1122, 63, '', 'JKL600101289', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1123, 63, '', 'JKL600101298', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1124, 63, '', 'JKL600101299', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1125, 63, '', 'JKL600101308', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1126, 63, '', 'JKL600101309', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1127, 63, '', 'JKL600101318', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1128, 63, '', 'JKL600101319', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1129, 63, '', 'JKL600101328', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1130, 63, '', 'JKL600101329', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1131, 63, '', 'JKL600128258', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1132, 63, '', 'JKL600128259', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1133, 63, '', 'JKL600128268', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1134, 63, '', 'JKL600128269', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1135, 63, '', 'JKL600128278', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1136, 63, '', 'JKL600128279', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1137, 63, '', 'JKL600128288', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1138, 63, '', 'JKL600128289', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1139, 63, '', 'JKL600128298', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1140, 63, '', 'JKL600128299', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1141, 63, '', 'JKL600128308', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1142, 63, '', 'JKL600128309', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1143, 63, '', 'JKL600128318', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1144, 63, '', 'JKL600128319', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1145, 63, '', 'JKL600128328', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1146, 63, '', 'JKL600128329', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1147, 63, '', 'JKL600151258', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1148, 63, '', 'JKL600151259', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1149, 63, '', 'JKL600151268', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1150, 63, '', 'JKL600151269', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1151, 63, '', 'JKL600151278', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1152, 63, '', 'JKL600151279', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1153, 63, '', 'JKL600151288', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1154, 63, '', 'JKL600151289', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1155, 63, '', 'JKL600151298', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1156, 63, '', 'JKL600151299', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1157, 63, '', 'JKL600151308', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1158, 63, '', 'JKL600151309', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1159, 63, '', 'JKL600151318', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1160, 63, '', 'JKL600151319', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1161, 63, '', 'JKL600151328', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1162, 63, '', 'JKL600151329', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1163, 63, '', 'JKL600147258', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1164, 63, '', 'JKL600147259', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1165, 63, '', 'JKL600147268', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1166, 63, '', 'JKL600147269', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1167, 63, '', 'JKL600147278', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1168, 63, '', 'JKL600147279', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1169, 63, '', 'JKL600147288', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1170, 63, '', 'JKL600147289', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1171, 63, '', 'JKL600147298', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1172, 63, '', 'JKL600147299', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1173, 63, '', 'JKL600147308', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1174, 63, '', 'JKL600147309', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1175, 63, '', 'JKL600147318', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1176, 63, '', 'JKL600147319', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1177, 63, '', 'JKL600147328', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1178, 63, '', 'JKL600147329', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1179, 64, '', 'JKL99090125JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 401, '25', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1180, 64, '', 'JKL99090125CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 401, '25', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1181, 64, '', 'JKL99090126JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 402, '26', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1182, 64, '', 'JKL99090126CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 402, '26', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1183, 64, '', 'JKL99090127JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 403, '27', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1184, 64, '', 'JKL99090127CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 403, '27', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1185, 64, '', 'JKL99090128JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 404, '28', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1186, 64, '', 'JKL99090128CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 404, '28', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1187, 64, '', 'JKL99090129JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 405, '29', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1188, 64, '', 'JKL99090129CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 405, '29', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1189, 64, '', 'JKL99090130JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 406, '30', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1190, 64, '', 'JKL99090130CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 406, '30', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1191, 64, '', 'JKL99090131JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 407, '31', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1192, 64, '', 'JKL99090131CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 407, '31', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1193, 64, '', 'JKL99090132JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 408, '32', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1194, 64, '', 'JKL99090132CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 408, '32', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1195, 64, '', 'JKL99091225JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 401, '25', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1196, 64, '', 'JKL99091225CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 401, '25', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1197, 64, '', 'JKL99091226JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 402, '26', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1198, 64, '', 'JKL99091226CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 402, '26', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1199, 64, '', 'JKL99091227JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 403, '27', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1200, 64, '', 'JKL99091227CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 403, '27', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1201, 64, '', 'JKL99091228JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 404, '28', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1202, 64, '', 'JKL99091228CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 404, '28', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1203, 64, '', 'JKL99091229JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 405, '29', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1204, 64, '', 'JKL99091229CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 405, '29', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1205, 64, '', 'JKL99091230JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 406, '30', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1206, 64, '', 'JKL99091230CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 406, '30', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1207, 64, '', 'JKL99091231JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 407, '31', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1208, 64, '', 'JKL99091231CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 407, '31', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1209, 64, '', 'JKL99091232JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 408, '32', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1210, 64, '', 'JKL99091232CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 408, '32', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1211, 64, '', 'JKL99095025JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 401, '25', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1212, 64, '', 'JKL99095025CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 401, '25', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1213, 64, '', 'JKL99095026JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 402, '26', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1214, 64, '', 'JKL99095026CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 402, '26', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1215, 64, '', 'JKL99095027JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 403, '27', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1216, 64, '', 'JKL99095027CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 403, '27', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1217, 64, '', 'JKL99095028JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 404, '28', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1218, 64, '', 'JKL99095028CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 404, '28', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1219, 64, '', 'JKL99095029JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 405, '29', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1220, 64, '', 'JKL99095029CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 405, '29', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1221, 64, '', 'JKL99095030JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 406, '30', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1222, 64, '', 'JKL99095030CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 406, '30', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1223, 64, '', 'JKL99095031JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 407, '31', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1224, 64, '', 'JKL99095031CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 407, '31', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1225, 64, '', 'JKL99095032JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 408, '32', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1226, 64, '', 'JKL99095032CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 408, '32', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1227, 65, '', 'GZYYZ72770100', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lfHUDo1p3HVme2o7Q_!!2214743335304-0-cib.jpg', 340, '均码', 0, '', NULL, 54.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1228, 65, '', 'GZYYZ72773100', 338, '咖啡色', 'https://cbu01.alicdn.com/img/ibank/O1CN01kneLsV1p3HVu8u1xi_!!2214743335304-0-cib.jpg', 340, '均码', 0, '', NULL, 54.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1229, 65, '', 'GZYYZ72776200', 377, '墨绿色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nPrwCh1p3HVouHmtq_!!2214743335304-0-cib.jpg', 340, '均码', 0, '', NULL, 54.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1230, 66, '', 'JKL197340098', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 394, 'XS', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1231, 66, '', 'JKL197340099', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 394, 'XS', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1232, 66, '', 'JKL197340018', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 341, 'S', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1233, 66, '', 'JKL197340019', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 341, 'S', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1234, 66, '', 'JKL197340028', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 342, 'M', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1235, 66, '', 'JKL197340029', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 342, 'M', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1236, 66, '', 'JKL197340038', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 343, 'L', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1237, 66, '', 'JKL197340039', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 343, 'L', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1238, 66, '', 'JKL197340048', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 344, 'XL', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1239, 66, '', 'JKL197340049', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 344, 'XL', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1240, 66, '', 'JKL197340058', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 345, '2XL', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1241, 66, '', 'JKL197340059', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 345, '2XL', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1242, 67, '', 'JKL19511225CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1243, 67, '', 'JKL19511225CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1244, 67, '', 'JKL19511225JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1245, 67, '', 'JKL19511225JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1246, 67, '', 'JKL19511226CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1247, 67, '', 'JKL19511226CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1248, 67, '', 'JKL19511226JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1249, 67, '', 'JKL19511226JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1250, 67, '', 'JKL19511227CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1251, 67, '', 'JKL19511227CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1252, 67, '', 'JKL19511227JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1253, 67, '', 'JKL19511227JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1254, 67, '', 'JKL19511228CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1255, 67, '', 'JKL19511228CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1256, 67, '', 'JKL19511228JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1257, 67, '', 'JKL19511228JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1258, 67, '', 'JKL19511229CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1259, 67, '', 'JKL19511229CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1260, 67, '', 'JKL19511229JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1261, 67, '', 'JKL19511229JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1262, 67, '', 'JKL19511230CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1263, 67, '', 'JKL19511230CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1264, 67, '', 'JKL19511230JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1265, 67, '', 'JKL19511230JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1266, 67, '', 'JKL19511231CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1267, 67, '', 'JKL19511231CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1268, 67, '', 'JKL19511231JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1269, 67, '', 'JKL19511231JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1270, 67, '', 'JKL19511232CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1271, 67, '', 'JKL19511232CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1272, 67, '', 'JKL19511232JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1273, 67, '', 'JKL19511232JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1274, 67, '', 'JKL19514025CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1275, 67, '', 'JKL19514025CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1276, 67, '', 'JKL19514025JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1277, 67, '', 'JKL19514025JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1278, 67, '', 'JKL19514026CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1279, 67, '', 'JKL19514026CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1280, 67, '', 'JKL19514026JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1281, 67, '', 'JKL19514026JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1282, 67, '', 'JKL19514027CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1283, 67, '', 'JKL19514027CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1284, 67, '', 'JKL19514027JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1285, 67, '', 'JKL19514027JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1286, 67, '', 'JKL19514028CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1287, 67, '', 'JKL19514028CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1288, 67, '', 'JKL19514028JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1289, 67, '', 'JKL19514028JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1290, 67, '', 'JKL19514029CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1291, 67, '', 'JKL19514029CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1292, 67, '', 'JKL19514029JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1293, 67, '', 'JKL19514029JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1294, 67, '', 'JKL19514030CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1295, 67, '', 'JKL19514030CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1296, 67, '', 'JKL19514030JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1297, 67, '', 'JKL19514030JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1298, 67, '', 'JKL19514031CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1299, 67, '', 'JKL19514031CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1300, 67, '', 'JKL19514031JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1301, 67, '', 'JKL19514031JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1302, 67, '', 'JKL19514032CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1303, 67, '', 'JKL19514032CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1304, 67, '', 'JKL19514032JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1305, 67, '', 'JKL19514032JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1306, 62, '', 'JKL99387009', 384, '深蓝长款', '', 394, 'XS', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1307, 62, '', 'JKL99387001', 384, '深蓝长款', '', 341, 'S', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1308, 62, '', 'JKL99387002', 384, '深蓝长款', '', 342, 'M', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1309, 62, '', 'JKL99387003', 384, '深蓝长款', '', 343, 'L', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1310, 62, '', 'JKL99387004', 384, '深蓝长款', '', 344, 'XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1311, 62, '', 'JKL99387005', 384, '深蓝长款', '', 345, '2XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1312, 62, '', 'JKL99386909', 383, '深蓝九分', '', 394, 'XS', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1313, 62, '', 'JKL99386901', 383, '深蓝九分', '', 341, 'S', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1314, 62, '', 'JKL99386902', 383, '深蓝九分', '', 342, 'M', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1315, 62, '', 'JKL99386903', 383, '深蓝九分', '', 343, 'L', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1316, 62, '', 'JKL99386904', 383, '深蓝九分', '', 344, 'XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1317, 62, '', 'JKL99386905', 383, '深蓝九分', '', 345, '2XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1318, 68, '', 'JKL31121201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 341, 'S', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1319, 68, '', 'JKL31121202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 342, 'M', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1320, 68, '', 'JKL31121203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 343, 'L', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1321, 68, '', 'JKL31121204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 344, 'XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1322, 68, '', 'JKL31121205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 345, '2XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1323, 68, '', 'JKL31120701', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 341, 'S', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1324, 68, '', 'JKL31120702', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 342, 'M', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1325, 68, '', 'JKL31120703', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 343, 'L', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1326, 68, '', 'JKL31120704', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 344, 'XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1327, 68, '', 'JKL31120705', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 345, '2XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1328, 69, '', 'KH97347526', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1329, 69, '', 'KH97347527', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1330, 69, '', 'KH97347528', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1331, 69, '', 'KH97347529', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1332, 69, '', 'KH97347530', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1333, 69, '', 'KH97347531', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1334, 69, '', 'KH97347532', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1335, 69, '', 'KH97345026', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1336, 69, '', 'KH97345027', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1337, 69, '', 'KH97345028', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1338, 69, '', 'KH97345029', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1339, 69, '', 'KH97345030', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1340, 69, '', 'KH97345031', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1341, 69, '', 'KH97345032', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1342, 70, '', 'KH98265026', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1343, 70, '', 'KH98265027', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1344, 70, '', 'KH98265028', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1345, 70, '', 'KH98265029', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1346, 70, '', 'KH98265030', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1347, 70, '', 'KH98265031', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1348, 70, '', 'KH98265032', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1349, 70, '', 'KH98260126', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1350, 70, '', 'KH98260127', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1351, 70, '', 'KH98260128', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1352, 70, '', 'KH98260129', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1353, 70, '', 'KH98260130', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1354, 70, '', 'KH98260131', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1355, 70, '', 'KH98260132', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1356, 71, '', 'aaaaa15030', 413, '浅蓝色加绒', 'aaa', 406, '30', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1357, 71, '', 'aaaaa15029', 413, '浅蓝色加绒', 'aaa', 405, '29', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1358, 71, '', 'aaaaa14030', 412, '复古蓝加绒', 'aaa', 406, '30', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1359, 71, '', 'aaaaa14029', 412, '复古蓝加绒', 'aaa', 405, '29', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1368, 74, '', 'A0012D15032', 413, '浅蓝色加绒', 'http://localhost:8080/preview/images/48', 408, '32', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1369, 74, '', 'A0012D15031', 413, '浅蓝色加绒', 'http://localhost:8080/preview/images/48', 407, '31', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1370, 74, '', 'A0012D14032', 412, '复古蓝加绒', 'http://localhost:8080/preview/images/49', 408, '32', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);
INSERT INTO `erp_goods_spec` VALUES (1371, 74, '', 'A0012D14031', 412, '复古蓝加绒', 'http://localhost:8080/preview/images/49', 407, '31', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for erp_goods_spec_attr
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_spec_attr`;
CREATE TABLE `erp_goods_spec_attr`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NOT NULL,
  `type` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `k` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kid` bigint NULL DEFAULT NULL,
  `vid` bigint NULL DEFAULT NULL,
  `v` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 603 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_spec_attr
-- ----------------------------
INSERT INTO `erp_goods_spec_attr` VALUES (1, 1, 'color', '颜色', 1, 0, '250ml', 'http://img.huayikeji.com/wveyzkbvilkzaj3eu9084pmqb9405hag');
INSERT INTO `erp_goods_spec_attr` VALUES (2, 4, 'color', '颜色', 1, 0, '香辣味1瓶+麻辣味1瓶', 'http://img.huayikeji.com/kw5i7anb3tydpu8kz0f7o8jrszuczlw1');
INSERT INTO `erp_goods_spec_attr` VALUES (3, 4, 'color', '颜色', 1, 0, '麻辣味420g*2瓶中辣', 'http://img.huayikeji.com/8ltvsrs9huscohzi2qd20qj0daynz012');
INSERT INTO `erp_goods_spec_attr` VALUES (4, 4, 'color', '颜色', 1, 0, '香辣味420g*2瓶微辣', 'http://img.huayikeji.com/z01l0tjah6vwpwdp4yhppthum9l44our');
INSERT INTO `erp_goods_spec_attr` VALUES (5, 5, 'color', '颜色', 1, 0, '5A精品', 'http://img.huayikeji.com/kx3ikkjuand5huibpsh3s4o7jsuzilfa');
INSERT INTO `erp_goods_spec_attr` VALUES (6, 6, 'color', '颜色', 1, 0, '甜味型20袋', 'http://img.huayikeji.com/u4ga7xp1swww4t7y40eh3gvgs3kikf83');
INSERT INTO `erp_goods_spec_attr` VALUES (7, 7, 'color', '颜色', 1, 0, '深蓝色', 'http://img.huayikeji.com/0lzoyn7adrkv8iv7xjy8kcejl9yelkcg');
INSERT INTO `erp_goods_spec_attr` VALUES (8, 7, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/ahc832bn59qoxq7vlrnvue9lrsiqxsbd');
INSERT INTO `erp_goods_spec_attr` VALUES (9, 7, 'color', '颜色', 1, 0, '欧美白', 'http://img.huayikeji.com/df8eqd6e9t46vfjx3j7tk84z72yhc3uy');
INSERT INTO `erp_goods_spec_attr` VALUES (10, 7, 'size', '尺码', 2, 0, '5寸', '');
INSERT INTO `erp_goods_spec_attr` VALUES (11, 7, 'size', '尺码', 2, 0, '6寸', '');
INSERT INTO `erp_goods_spec_attr` VALUES (12, 7, 'size', '尺码', 2, 0, '8寸', '');
INSERT INTO `erp_goods_spec_attr` VALUES (13, 8, 'color', '颜色', 1, 0, '30g * 5包', 'http://img.huayikeji.com/0n40n4ctz61o2rtdlt9wldmxucsio789');
INSERT INTO `erp_goods_spec_attr` VALUES (14, 9, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (15, 9, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (16, 9, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01F1W2O12FOyB2UfQnX_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (17, 9, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (18, 9, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (19, 9, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (20, 9, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (21, 9, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (22, 9, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (23, 10, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (24, 10, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (25, 10, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (26, 10, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (27, 10, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (28, 10, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (29, 10, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (30, 10, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (31, 11, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN013LdA8s2FOyBfwOjXh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (32, 11, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01giGdo92FOyBjYLUBx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (33, 11, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN017OhDC42FOyBpOE5Xh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (34, 11, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN018SPmsV1Bs2ghEUUei_!!0-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (35, 11, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BMEINy2FOyBhvpaPZ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (36, 11, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (37, 11, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (38, 11, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (39, 11, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (40, 11, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (41, 12, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01UR16Tw2FOyJNPJHCZ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (42, 12, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (43, 12, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (44, 12, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (45, 12, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (46, 12, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (47, 13, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gJpwlK2FOyGoJJ3sH_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (48, 13, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01wZ3ye12FOyGhhUDOe_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (49, 13, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01453F082FOyGp5H3Gv_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (50, 13, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (51, 13, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (52, 13, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (53, 13, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (54, 13, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (55, 14, 'color', '颜色', 1, 331, '灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J0a5Ij2FOyGVsqune_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (56, 14, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01i45X3r2FOyGVsraSQ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (57, 14, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yx4kr52FOyGOtErWx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (58, 14, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (59, 14, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (60, 14, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (61, 14, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (62, 14, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (63, 15, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01rXl5A92FOyBlp8KB2_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (64, 15, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lW8xsq2FOyBboDwmS_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (65, 15, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eRnnro2FOyBl7HmaB_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (66, 15, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN010pmtuT2FOyGqBp6dx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (67, 15, 'color', '颜色', 1, 324, '粉色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jE2Cq12FOyGlWgGFO_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (68, 15, 'color', '颜色', 1, 359, '黄色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Fc0SiP2FOyGwQA0CS_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (69, 15, 'color', '颜色', 1, 0, '薄荷绿', 'https://cbu01.alicdn.com/img/ibank/O1CN010KmHBz2FOyGrTpnqo_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (70, 15, 'color', '颜色', 1, 335, '卡其色', 'https://cbu01.alicdn.com/img/ibank/O1CN01VRmnz72FOyGuOVemn_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (71, 15, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (72, 15, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (73, 15, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (74, 15, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (75, 15, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (76, 16, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21');
INSERT INTO `erp_goods_spec_attr` VALUES (77, 16, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (78, 16, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (79, 16, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (80, 16, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (81, 16, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (82, 17, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv');
INSERT INTO `erp_goods_spec_attr` VALUES (83, 17, 'color', '颜色', 1, 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m');
INSERT INTO `erp_goods_spec_attr` VALUES (84, 17, 'color', '颜色', 1, 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4');
INSERT INTO `erp_goods_spec_attr` VALUES (85, 17, 'color', '颜色', 1, 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484');
INSERT INTO `erp_goods_spec_attr` VALUES (86, 17, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (87, 17, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (88, 17, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (89, 17, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (90, 18, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic');
INSERT INTO `erp_goods_spec_attr` VALUES (91, 18, 'color', '颜色', 1, 0, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5');
INSERT INTO `erp_goods_spec_attr` VALUES (92, 18, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug');
INSERT INTO `erp_goods_spec_attr` VALUES (93, 18, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (94, 18, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (95, 18, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (96, 18, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (97, 18, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (98, 19, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs');
INSERT INTO `erp_goods_spec_attr` VALUES (99, 19, 'color', '颜色', 1, 0, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf');
INSERT INTO `erp_goods_spec_attr` VALUES (100, 19, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr');
INSERT INTO `erp_goods_spec_attr` VALUES (101, 19, 'color', '颜色', 1, 0, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2');
INSERT INTO `erp_goods_spec_attr` VALUES (102, 19, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (103, 19, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (104, 19, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (105, 19, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (106, 19, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (107, 19, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (108, 19, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (109, 19, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (110, 20, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38');
INSERT INTO `erp_goods_spec_attr` VALUES (111, 20, 'color', '颜色', 1, 0, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4');
INSERT INTO `erp_goods_spec_attr` VALUES (112, 20, 'color', '颜色', 1, 0, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4');
INSERT INTO `erp_goods_spec_attr` VALUES (113, 20, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (114, 20, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (115, 20, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (116, 20, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (117, 20, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (118, 20, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (119, 20, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (120, 20, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (121, 21, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol');
INSERT INTO `erp_goods_spec_attr` VALUES (122, 21, 'color', '颜色', 1, 0, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh');
INSERT INTO `erp_goods_spec_attr` VALUES (123, 21, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym');
INSERT INTO `erp_goods_spec_attr` VALUES (124, 21, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (125, 21, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (126, 21, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (127, 21, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (128, 21, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (129, 21, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (130, 22, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f');
INSERT INTO `erp_goods_spec_attr` VALUES (131, 22, 'color', '颜色', 1, 0, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z');
INSERT INTO `erp_goods_spec_attr` VALUES (132, 22, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8');
INSERT INTO `erp_goods_spec_attr` VALUES (133, 22, 'color', '颜色', 1, 0, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g');
INSERT INTO `erp_goods_spec_attr` VALUES (134, 22, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (135, 22, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (136, 22, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (137, 22, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (138, 22, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (139, 22, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (140, 22, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (141, 22, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (142, 23, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig');
INSERT INTO `erp_goods_spec_attr` VALUES (143, 23, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik');
INSERT INTO `erp_goods_spec_attr` VALUES (144, 23, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj');
INSERT INTO `erp_goods_spec_attr` VALUES (145, 23, 'color', '颜色', 1, 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr');
INSERT INTO `erp_goods_spec_attr` VALUES (146, 23, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (147, 23, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (148, 23, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (149, 23, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (150, 23, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (151, 23, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (152, 23, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (153, 23, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (154, 24, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9');
INSERT INTO `erp_goods_spec_attr` VALUES (155, 24, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (156, 24, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (157, 24, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (158, 24, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (159, 24, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (160, 25, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0');
INSERT INTO `erp_goods_spec_attr` VALUES (161, 25, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql');
INSERT INTO `erp_goods_spec_attr` VALUES (162, 25, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (163, 25, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (164, 25, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (165, 25, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (166, 25, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (167, 25, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (168, 25, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (169, 25, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (170, 26, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd');
INSERT INTO `erp_goods_spec_attr` VALUES (171, 26, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p');
INSERT INTO `erp_goods_spec_attr` VALUES (172, 26, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo');
INSERT INTO `erp_goods_spec_attr` VALUES (173, 26, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (174, 26, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (175, 26, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (176, 26, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (177, 26, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (178, 27, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1');
INSERT INTO `erp_goods_spec_attr` VALUES (179, 27, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw');
INSERT INTO `erp_goods_spec_attr` VALUES (180, 27, 'color', '颜色', 1, 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo');
INSERT INTO `erp_goods_spec_attr` VALUES (181, 27, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7');
INSERT INTO `erp_goods_spec_attr` VALUES (182, 27, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (183, 27, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (184, 27, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (185, 27, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (186, 27, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (187, 27, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (188, 27, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (189, 27, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (190, 9, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (191, 9, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (197, 28, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (198, 28, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (199, 28, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (200, 28, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (201, 28, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (202, 28, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (203, 28, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (204, 28, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (205, 29, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (206, 29, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (207, 29, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (208, 29, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (209, 29, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (210, 29, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (211, 29, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (212, 29, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (213, 30, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (214, 30, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (215, 30, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (216, 30, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (217, 30, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (218, 30, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (219, 31, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (220, 31, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (221, 31, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (222, 31, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (223, 31, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (224, 31, 'color', '颜色', 1, 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (225, 31, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (226, 31, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (227, 31, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (228, 31, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (229, 31, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (230, 32, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (231, 32, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (232, 32, 'color', '颜色', 1, 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (233, 32, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (234, 32, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (235, 32, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (236, 32, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (237, 32, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (238, 33, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (239, 33, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (240, 33, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (241, 33, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (242, 33, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (243, 33, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (244, 33, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (245, 33, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (246, 33, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (247, 34, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (248, 34, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (249, 34, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (250, 34, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (251, 34, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (252, 34, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (253, 34, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (254, 34, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (255, 34, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (256, 35, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (257, 35, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (258, 35, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (259, 35, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (260, 35, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (261, 35, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (262, 36, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (263, 36, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (264, 36, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (265, 36, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (266, 36, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (267, 36, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (268, 36, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (269, 37, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (270, 37, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (271, 37, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (272, 37, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (273, 37, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (274, 37, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (275, 37, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (276, 37, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (277, 38, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (278, 38, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (279, 38, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (280, 38, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (281, 38, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (282, 38, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (283, 38, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (284, 39, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (285, 39, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (286, 39, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (287, 39, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (288, 39, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (289, 39, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (290, 39, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (291, 39, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (292, 39, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (293, 40, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (294, 40, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (295, 40, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (296, 40, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (297, 40, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (298, 40, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (299, 40, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (300, 40, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (301, 41, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (302, 41, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (303, 41, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (304, 41, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (305, 41, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (306, 41, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (307, 41, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (308, 42, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (309, 42, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (310, 42, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (311, 42, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (312, 42, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (313, 42, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (314, 42, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (315, 42, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (316, 42, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (317, 43, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (318, 43, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (319, 43, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (320, 43, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (321, 43, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (322, 43, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (323, 43, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (324, 44, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (325, 44, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (326, 44, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (327, 44, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (328, 44, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (329, 44, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (330, 44, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (331, 44, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (332, 44, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (333, 45, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (334, 45, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (335, 45, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (336, 45, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (337, 45, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (338, 45, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (339, 45, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (340, 45, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (341, 45, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (342, 46, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (343, 46, 'color', '颜色', 1, 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (344, 46, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (345, 46, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (346, 46, 'color', '颜色', 1, 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (347, 46, 'color', '颜色', 1, 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (348, 46, 'color', '颜色', 1, 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (349, 46, 'color', '颜色', 1, 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (350, 46, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (351, 46, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (352, 46, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (353, 46, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (354, 46, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (355, 46, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (356, 46, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (357, 47, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (358, 47, 'color', '颜色', 1, 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (359, 47, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (360, 47, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (361, 47, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (362, 47, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (363, 47, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (364, 47, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (365, 33, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (366, 33, 'color', '颜色', 1, 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (367, 33, 'color', '颜色', 1, 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (368, 33, 'color', '颜色', 1, 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (369, 33, 'color', '颜色', 1, 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (370, 33, 'color', '颜色', 1, 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (371, 33, 'color', '颜色', 1, 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (372, 33, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (373, 33, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (374, 33, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (375, 33, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (376, 33, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (377, 22, 'color', '颜色', 1, 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (378, 22, 'color', '颜色', 1, 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (379, 22, 'color', '颜色', 1, 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (380, 22, 'color', '颜色', 1, 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (381, 22, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (382, 22, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (383, 22, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (384, 22, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (385, 22, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (386, 22, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (387, 22, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (388, 22, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (389, 48, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (390, 48, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (391, 48, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (392, 48, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (393, 48, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (394, 48, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (395, 49, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4');
INSERT INTO `erp_goods_spec_attr` VALUES (396, 49, 'color', '颜色', 1, 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp');
INSERT INTO `erp_goods_spec_attr` VALUES (397, 49, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2');
INSERT INTO `erp_goods_spec_attr` VALUES (398, 49, 'color', '颜色', 1, 412, '复古蓝加绒', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4');
INSERT INTO `erp_goods_spec_attr` VALUES (399, 49, 'color', '颜色', 1, 411, '蓝灰色加绒', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp');
INSERT INTO `erp_goods_spec_attr` VALUES (400, 49, 'color', '颜色', 1, 409, '黑色加绒', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2');
INSERT INTO `erp_goods_spec_attr` VALUES (401, 49, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (402, 49, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (403, 49, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (404, 49, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (405, 49, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (406, 49, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (407, 49, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (408, 49, 'color', '颜色', 1, 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4');
INSERT INTO `erp_goods_spec_attr` VALUES (409, 49, 'color', '颜色', 1, 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp');
INSERT INTO `erp_goods_spec_attr` VALUES (410, 49, 'color', '颜色', 1, 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2');
INSERT INTO `erp_goods_spec_attr` VALUES (411, 49, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (412, 49, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (413, 49, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (414, 49, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (415, 49, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (416, 49, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (417, 49, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (418, 53, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/2ekpro9obesysm6vf1h0ihhfx1z9bgqz');
INSERT INTO `erp_goods_spec_attr` VALUES (419, 53, 'color', '颜色', 1, 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80');
INSERT INTO `erp_goods_spec_attr` VALUES (420, 53, 'color', '颜色', 1, 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9');
INSERT INTO `erp_goods_spec_attr` VALUES (421, 53, 'color', '颜色', 1, 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6');
INSERT INTO `erp_goods_spec_attr` VALUES (422, 53, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (423, 53, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (424, 53, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (425, 53, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (426, 53, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (427, 53, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (428, 53, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (429, 53, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (430, 53, 'style', '款式', 3, 417, '九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (431, 53, 'style', '款式', 3, 418, '八分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (432, 53, 'style', '款式', 3, 419, '九分加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (433, 54, 'color', '颜色', 1, 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi');
INSERT INTO `erp_goods_spec_attr` VALUES (434, 54, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4');
INSERT INTO `erp_goods_spec_attr` VALUES (435, 54, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (436, 54, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (437, 54, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (438, 54, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (439, 54, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (440, 54, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (441, 55, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5');
INSERT INTO `erp_goods_spec_attr` VALUES (442, 55, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h');
INSERT INTO `erp_goods_spec_attr` VALUES (443, 55, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (444, 55, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (445, 55, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (446, 55, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (447, 55, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (448, 55, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (449, 56, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk');
INSERT INTO `erp_goods_spec_attr` VALUES (450, 56, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (451, 56, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (452, 56, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (453, 56, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (454, 56, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (455, 56, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (456, 56, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (457, 56, 'style', '款式', 3, 415, '加长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (458, 59, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k');
INSERT INTO `erp_goods_spec_attr` VALUES (459, 59, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (460, 59, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (461, 59, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (462, 59, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (463, 59, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (464, 59, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (465, 59, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (466, 59, 'style', '款式', 3, 415, '加长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (467, 60, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr');
INSERT INTO `erp_goods_spec_attr` VALUES (468, 60, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q');
INSERT INTO `erp_goods_spec_attr` VALUES (469, 60, 'color', '颜色', 1, 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi');
INSERT INTO `erp_goods_spec_attr` VALUES (470, 60, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (471, 60, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (472, 60, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (473, 60, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (474, 60, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (475, 60, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (476, 60, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (477, 60, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (478, 61, 'color', '颜色', 1, 351, '蓝色', 'http://img.huayiyungou.com/q3t7loa0mz6lokizz93fp52cltgxhuq2');
INSERT INTO `erp_goods_spec_attr` VALUES (479, 61, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayiyungou.com/qx67wj65nlvrs514g02bs7ocptl5b6ec');
INSERT INTO `erp_goods_spec_attr` VALUES (480, 61, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (481, 61, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (482, 61, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (483, 61, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (484, 61, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (485, 61, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (486, 62, 'color', '颜色', 1, 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (487, 62, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (488, 62, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (489, 62, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (490, 62, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (491, 62, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (492, 62, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (493, 62, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (494, 62, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (495, 62, 'style', '款式', 3, 417, '九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (496, 62, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (497, 63, 'color', '颜色', 1, 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (498, 63, 'color', '颜色', 1, 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (499, 63, 'color', '颜色', 1, 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (500, 63, 'color', '颜色', 1, 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (501, 63, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (502, 63, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (503, 63, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (504, 63, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (505, 63, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (506, 63, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (507, 63, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (508, 63, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (509, 63, 'style', '款式', 3, 420, '单裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (510, 63, 'style', '款式', 3, 421, '加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (511, 64, 'color', '颜色', 1, 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (512, 64, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (513, 64, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG');
INSERT INTO `erp_goods_spec_attr` VALUES (514, 64, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (515, 64, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (516, 64, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (517, 64, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (518, 64, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (519, 64, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (520, 64, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (521, 64, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (522, 64, 'style', '款式', 3, 417, '九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (523, 64, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (524, 65, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lfHUDo1p3HVme2o7Q_!!2214743335304-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (525, 65, 'color', '颜色', 1, 338, '咖啡色', 'https://cbu01.alicdn.com/img/ibank/O1CN01kneLsV1p3HVu8u1xi_!!2214743335304-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (526, 65, 'color', '颜色', 1, 377, '墨绿色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nPrwCh1p3HVouHmtq_!!2214743335304-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (527, 65, 'size', '尺码', 2, 340, '均码', '');
INSERT INTO `erp_goods_spec_attr` VALUES (528, 66, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (529, 66, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (530, 66, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (531, 66, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (532, 66, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (533, 66, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (534, 66, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (535, 66, 'style', '款式', 3, 420, '单裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (536, 66, 'style', '款式', 3, 421, '加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (537, 67, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (538, 67, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png');
INSERT INTO `erp_goods_spec_attr` VALUES (539, 67, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (540, 67, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (541, 67, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (542, 67, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (543, 67, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (544, 67, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (545, 67, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (546, 67, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (547, 67, 'style', '款式', 3, 416, '长裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (548, 67, 'style', '款式', 3, 422, '长裤加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (549, 67, 'style', '款式', 3, 415, '加长裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (550, 67, 'style', '款式', 3, 423, '加长裤加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (551, 62, 'color', '颜色', 1, 384, '深蓝长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (552, 62, 'color', '颜色', 1, 383, '深蓝九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (553, 62, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (554, 62, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (555, 62, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (556, 62, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (557, 62, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (558, 62, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (559, 68, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (560, 68, 'color', '颜色', 1, 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (561, 68, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (562, 68, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (563, 68, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (564, 68, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (565, 68, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (566, 69, 'color', '颜色', 1, 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (567, 69, 'color', '颜色', 1, 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (568, 69, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (569, 69, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (570, 69, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (571, 69, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (572, 69, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (573, 69, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (574, 69, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (575, 70, 'color', '颜色', 1, 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (576, 70, 'color', '颜色', 1, 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (577, 70, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (578, 70, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (579, 70, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (580, 70, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (581, 70, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (582, 70, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (583, 70, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (584, 71, 'color', '颜色', 114, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (585, 71, 'color', '颜色', 114, 412, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (586, 71, 'size', '尺码', 115, 406, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (587, 71, 'size', '尺码', 115, 405, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (588, 71, 'style', '款式', 116, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (589, 71, 'style', '款式', 116, 412, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (597, 74, 'color', '颜色', 114, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (598, 74, 'color', '颜色', 114, 412, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (599, 74, 'size', '尺码', 115, 408, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (600, 74, 'size', '尺码', 115, 407, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (601, 74, 'style', '款式', 116, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (602, 74, 'style', '款式', 116, 412, NULL, NULL);

-- ----------------------------
-- Table structure for erp_sale_after_info
-- ----------------------------
DROP TABLE IF EXISTS `erp_sale_after_info`;
CREATE TABLE `erp_sale_after_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '类型（10退货；20换货；80补发；99订单拦截；）',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `shop_type` int NULL DEFAULT NULL COMMENT '店铺类型',
  `after_sale_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后单号',
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `sub_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子订单号',
  `product_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品spuid',
  `sku_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品skuid',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `img` varchar(555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `sku_info` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku描述',
  `sku_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku编码',
  `erp_goods_id` int NULL DEFAULT NULL COMMENT 'ERP商品id',
  `erp_sku_id` int NULL DEFAULT NULL COMMENT 'ERP商品skuId',
  `return_info` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退回人信息json',
  `return_waybill_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退回快递单号',
  `return_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退回物流公司名称',
  `receiver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `receiver_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人联系电话',
  `receiver_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `receiver_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `receiver_town` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `receiver_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人详细地址',
  `ship_waybill_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货快递单号（补发、换货发货、拦截订单发货）',
  `ship_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货快递公司',
  `status` int NULL DEFAULT NULL COMMENT '状态:1已发出；2已完成(已收货);3已入库',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '售后处理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_sale_after_info
-- ----------------------------

-- ----------------------------
-- Table structure for erp_sale_after_refund
-- ----------------------------
DROP TABLE IF EXISTS `erp_sale_after_refund`;
CREATE TABLE `erp_sale_after_refund`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `refund_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退货单号',
  `refund_type` int NULL DEFAULT NULL COMMENT '类型(10-退货 20-换货 30-维修 40-大家电安装 50-大家电移机 60-大家电增值服务 70-上门维修 90-优鲜赔 80-补发商品 100-试用收回 11-仅退款)',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `shop_type` int NULL DEFAULT NULL COMMENT '店铺类型',
  `refund_fee` float NOT NULL COMMENT '退款金额',
  `refund_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `original_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原始订单号（来自于第三方平台）',
  `original_order_item_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原始子订单号（来自于第三方平台）',
  `original_sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始子订单skuId',
  `erp_goods_id` bigint NULL DEFAULT NULL COMMENT 'erp商品id',
  `erp_goods_sku_id` bigint NULL DEFAULT NULL COMMENT 'erp sku id',
  `spec_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku编码',
  `has_good_return` int NULL DEFAULT NULL COMMENT '买家是否需要退货。可选值:1(是),0(否)',
  `goods_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_sku` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品sku',
  `goods_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `quantity` bigint NULL DEFAULT NULL COMMENT '退货数量',
  `return_logistics_company` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货物流公司',
  `return_logistics_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货物流单号',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `contact_person` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '发货人',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '发货人手机号',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '发货地址',
  `status` int NOT NULL COMMENT '状态（10001待审核10002等待买家退货10005等待卖家收货14000拒绝退款10011退款关闭10010退款完成）',
  `create_time` datetime NOT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1800733684087050243 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '售后退款表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_sale_after_refund
-- ----------------------------
INSERT INTO `erp_sale_after_refund` VALUES (1786735505566502913, '154486920027549058', 11, 6, 4, 20, '与商家协商一致退款', '2088964452215545890', '2088964452216545890', '', 0, 0, 'ZH-SF-04-DS-F9-QM20A-NT3', 0, '曲美家居轻奢简约现代床头柜储物双抽床边柜皮质卧室置物储藏柜', '4902529397704|颜色分类:奶油白;安装方式:组装', NULL, 2, NULL, NULL, NULL, '', '', '', '', 10010, '2024-05-04 20:31:55', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1788119148154740738, '2000000476685963', 10, 2, 2, 99.9, '质量问题', '3719496358260248576', '0', '2231619925', 0, 0, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', '', '', 10001, '2024-05-08 16:10:01', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472078463746050, '279871093213751685', 11, 4, 4, 2362, '与商家协商一致退款', '3861577406012758516', '3861577406013758516', '', 0, 0, 'F6-23E-LAB-ZH1-M', 0, '曲美lab墩墩沙发现代简约模块布艺真皮沙发别墅客厅沙发门店同款', '5268494773128|适用人数:组合;颜色分类:【适用1-2人】头层牛皮-岩石灰', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:09', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472078799290369, '279868104304722964', 11, 4, 4, 346.67, '拍错/多拍/不喜欢', '3879460658822726429', '3879460658824726429', '5421207317912', 0, 0, '23E-219484', 0, '曲美家居现代简约岩板玻璃餐桌椅多功能可伸缩方行圆形餐桌潘多拉', '5421207317912|颜色分类:【预售】岩板+钢化玻璃可伸缩餐桌', NULL, 8, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:09', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472078950285313, '279868104303722964', 11, 4, 4, 563.33, '拍错/多拍/不喜欢', '3879460658822726429', '3879460658823726429', '5587595162215', 0, 0, 'QM24-B4', 0, '曲美家居意式真皮床卧室主卧拉点皮床头层牛皮软包双人床华夫格', '5587595162215|家具结构:框架结构;颜色分类:【预售】黑色;尺寸:1800mm*2000mm', NULL, 13, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:09', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079080308737, '161269683741425355', 11, 4, 4, 9970.91, '订单信息拍错（规格/尺码/颜色等）', '2187488283548425553', '2187488283549425553', '5015802656260', 0, 0, 'F1-23E-LAB-ZD1*3&F1-23E-LAB-FS1*5', 0, '【狂欢价】曲美lab墩墩沙发现代简约轻奢风自由模块组合布艺别墅客厅沙发', '5015802656260|适用人数:组合;颜色分类:【适用4人】灯芯绒-燕麦白', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:09', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079185166338, '279864144869722964', 11, 4, 4, 390, '拍错/多拍/不喜欢', '3879460658819726429', '3879460658820726429', '5590041835567', 0, 0, 'QM24-S5', 0, '曲美轻奢复古全真皮沙发客厅直排三人头层牛皮油蜡皮美拉德沙发', '5590041835567|颜色分类:【预售】栗壳棕;尺寸:286x91x104cm', NULL, 9, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:09', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079302606850, '279821197232722964', 11, 4, 4, 349.47, '拍错/多拍/不喜欢', '3879488414076726429', '3879488414078726429', '5590062491663', 0, 0, 'QM24-S4', 0, '曲美美式简约全真皮沙发客厅家用头层牛皮复古油蜡皮直排华夫格', '5590062491663|颜色分类:【预售】奶茶棕;尺寸:342x110x68cm', NULL, 8, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079403270145, '279821197231722964', 11, 4, 4, 480.53, '拍错/多拍/不喜欢', '3879488414076726429', '3879488414077726429', '5590074319522', 0, 0, 'QM24-B3', 0, '曲美家居意式复古真皮床轻奢现代主卧头层牛皮软包皮艺床大黑牛', '5590074319522|家具结构:框架结构;颜色分类:【预售】;尺寸:1800mm*2000mm', NULL, 11, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079516516354, '279878906135722964', 11, 4, 4, 263.08, '拍错/多拍/不喜欢', '3880414333492726429', '3880414333494726429', '5423494769324', 0, 0, 'QM24-M2', 0, '曲美家居防螨抑菌泰国乳胶床垫亲肤绒毛面料双面可用奶茶啵啵床垫', '5423494769324|尺寸:1800mm*2000mm;颜色分类:【预售】牛油果色', NULL, 6, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079608791042, '279878906134722964', 11, 4, 4, 306.92, '拍错/多拍/不喜欢', '3880414333492726429', '3880414333493726429', '5420509836595', 0, 0, 'QM24-M1', 0, '曲美家居可拆洗泰国乳胶席梦思黄麻独立弹簧双面可用多米诺床垫', '5420509836595|尺寸:1800mm*2000mm;颜色分类:【预售】款式B', NULL, 7, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', '2024-06-12 11:35:41', 'REFUND_MESSAGE');
INSERT INTO `erp_sale_after_refund` VALUES (1800472079717842946, '279783361592991009', 11, 4, 4, 240, '退运费', '3893206141510990910', '3893206141511990910', '5070181490182', 0, 0, 'QM19-B12-F', 0, '曲美家居头层真皮床轻奢现代简约方糖皮床主卧室多功能储物大床', '5070181490182|家具结构:箱框结构;颜色分类:奶油白【进口头层牛皮+升级10cm松木排骨条】;尺寸:1800mm*2000mm', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472079818506242, '161242107136097290', 11, 4, 4, 229, '与商家协商一致退款', '2164756011432099072', '2164756011433099072', '5149921492104', 0, 0, 'QM23-B12', 0, '【狂欢价】曲美家居简约实木框架大气现代进口头层牛皮床主卧室床原野床新品', '5149921492104|家具结构:框架结构;颜色分类:（白茶杏+茶咖色）-原野皮床;尺寸:1500mm*2000mm', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472079952723970, '279835886642212497', 11, 4, 4, 60, '与商家协商一致退款', '3821416742006219724', '3821416742007219724', '5435508414654', 0, 0, 'F1-23E-LAB-ZD1*4&F1-23E-LAB-FS1*5', 0, '曲美lab墩墩沙发现代简约轻奢风自由模块组合布艺别墅客厅沙发', '5435508414654|适用人数:组合;颜色分类:【4人贵妃躺】灯芯绒-燕麦白', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472080053387265, '279777709392212497', 11, 4, 4, 165.16, '与商家协商一致退款', '3821416742009219724', '3821416742010219724', '5268494773110', 0, 0, NULL, 0, '曲美lab墩墩沙发现代简约模块布艺真皮沙发别墅客厅沙发门店同款', '5268494773110|适用人数:组合;颜色分类:详询客服享优惠~', NULL, 3, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472080166633473, '279824004278902712', 11, 4, 4, 143, '与商家协商一致退款', '3832222068122901227', '3832222068123901227', '5195672626945', 0, 0, 'ZH-PTCD-DS-QM23-M1-12', 0, '【家装节价】曲美家居独袋弹簧天然乳胶床垫家用软硬厚床垫保护脊椎舒星床垫', '5195672626945|尺寸:1200mm*2000mm;颜色分类:【升级款】独袋弹簧乳胶床垫', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472080271491073, '161299417904619180', 11, 4, 4, 4158.04, '不想要了', '2160429269476618091', '2160429269479618091', '5126575889578', 0, 0, 'F1-GRQHT-23E-WQM-D3*2', 0, '曲美家居现代简约北欧风实木餐桌椅弯曲木工艺餐厅长方形流光餐桌', '5126575889578|颜色分类:流光餐椅戈尔浅胡桃奶油白*2', NULL, 2, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472080397320193, '161299957703619180', 11, 4, 4, 1399.07, '不想要了', '2160429269476618091', '2160429269477618091', '5126544969425', 0, 0, 'GRQHT-23E-WQM-DT1-1-M', 0, '曲美家居现代简约北欧风实木餐桌椅弯曲木工艺餐厅长方形流光餐桌', '5126544969425|颜色分类:流光戈尔浅胡桃色餐桌1.4米（140*85*75）', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800472080489594882, '279835239913753097', 11, 4, 4, 5190, '地址/电话信息填写错误', '3926640133734759730', '3926640133735759730', '5094700576945', 0, 0, 'QM23-B1', 0, '【狂欢价】曲美家居北欧简约真皮床轻奢高级温柔风主卧高脚左岸花园皮床新品', '5094700576945|家具结构:框架结构;颜色分类:储物款-浅咖色 进口真皮软床+黑骑士M2黄麻乳胶床垫;尺寸:1500mm*2000mm', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10011, '2024-06-11 18:16:10', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800733683831197697, '161294808264568656', 11, 4, 4, 1021.2, '没用/少用优惠', '2187649164932565686', '2187649164933565686', '', 0, 0, 'QM23-M1', 0, '【狂欢价】曲美家居独袋弹簧天然乳胶床垫家用软硬厚床垫保护脊椎舒星床垫', '5431176608029|尺寸:1800mm*2000mm;颜色分类:【升级款】独袋弹簧乳胶床垫', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-12 11:35:41', 'REFUND_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_after_refund` VALUES (1800733684087050242, '161294916243568656', 11, 4, 4, 1999, '没用/少用优惠', '2186979458733565686', '2186979458734565686', '5175363035184', 0, 0, 'QM23-B9', 0, '【现货速发】现代意式复古头层真皮床黑色欧包高级侘寂风主卧大床', '5175363035184|家具结构:框架结构;颜色分类:曜石黑-【进口全青皮+出口级海绵+全实木加密排骨架】;尺寸:1800mm*2000mm', NULL, 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-06-12 11:35:41', 'REFUND_MESSAGE', NULL, NULL);

-- ----------------------------
-- Table structure for erp_sale_order
-- ----------------------------
DROP TABLE IF EXISTS `erp_sale_order`;
CREATE TABLE `erp_sale_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单id，自增',
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号（来源订单）',
  `shop_type` int NULL DEFAULT NULL COMMENT '店铺类型',
  `shop_id` int NOT NULL COMMENT '店铺ID',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `buyer_memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家留言信息',
  `seller_memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '卖家留言',
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `refund_status` int NOT NULL COMMENT '售后状态 1：无售后或售后关闭，2：售后处理中，3：退款中，4： 退款成功 5：全部',
  `order_status` int NOT NULL COMMENT '订单状态1：待发货，2：已发货，3：已完成，11已取消；21待付款',
  `goods_amount` double NOT NULL COMMENT '商品金额',
  `seller_discount` double NOT NULL DEFAULT 0 COMMENT '商家优惠金额，单位：元',
  `platform_discount` double NOT NULL DEFAULT 0 COMMENT '平台优惠金额，单位：元',
  `postage` double NOT NULL COMMENT '运费',
  `order_amount` double NOT NULL COMMENT '订单金额（商家实际得到的金额），单位：元，支付金额=商品金额-折扣金额+邮费+平台优惠金额',
  `pay_amount` double NOT NULL COMMENT '支付金额',
  `receiver_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `receiver_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人地址',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家/地区',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `order_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `confirm_time` datetime NULL DEFAULT NULL COMMENT '订单确认时间',
  `ship_type` int NULL DEFAULT NULL COMMENT '发货类型（0仓库发货；1供应商代发）',
  `ship_status` int NOT NULL COMMENT '发货状态（0待备货1备货中2已出库3已发货）',
  `shipping_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `shipping_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `shipping_company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `shipping_man` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货人',
  `shipping_cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '发货费用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `length` float NULL DEFAULT 0 COMMENT '长',
  `width` float NULL DEFAULT 0 COMMENT '宽',
  `height` float NULL DEFAULT 0 COMMENT '高',
  `weight` float NULL DEFAULT NULL COMMENT '重量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_sn_index`(`order_num` ASC) USING BTREE,
  INDEX `shopid_index`(`shop_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1803324847759515651 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_sale_order
-- ----------------------------
INSERT INTO `erp_sale_order` VALUES (1801155304396091393, '2148265848729748675', 4, 4, NULL, '', NULL, NULL, 1, 1, 13999, 0, 0, 0, 8939, 0, '赵**', '*******0308', '长*街道长**路***号中海和平之门上东区**号**单元***', NULL, '辽宁省', '沈阳市', '和平区', '2024-05-11 14:52:32', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801155305008459777, '3898944039996721932', 4, 4, NULL, '', NULL, NULL, 1, 3, 23287, 0, 0, 0, 7248, 0, '杨**', '*******2132', '旅顺经济开发区**街**号***', NULL, '辽宁省', '大连市', '旅顺口区', '2024-05-21 21:10:49', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801155305331421186, '2180428356728976457', 4, 4, NULL, '', NULL, NULL, 1, 2, 17997, 0, 0, 0, 6168.6, 0, '杜**', '*******2223', '中*楼*道*城广场**号**单元***', NULL, '山西省', '吕梁市', '孝义市', '2024-06-04 23:02:25', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', '2024-06-13 15:35:25', 'ORDER_MESSAGE', 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170511356989442, '296317183235', 3, 3, NULL, '', '', NULL, 1, 2, 2899, 0, 0, 0, 1973.04, 0, '董平', '137****9181', '内蒙古呼伦贝尔市海拉尔区正阳街道河西 西四道街 绿祥宾馆对面 龙沙电器', NULL, '内蒙古', '呼伦贝尔市', NULL, '2024-05-31 22:51:49', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:31:29', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170891063136258, '297015031620', 3, 3, NULL, '', '购买衣柜隔板的支撑件配件25元【qm20231013 2024.06.13 15:15:21】', NULL, 1, 1, 25, 0, 0, 0, 25, 0, '王越', '158****9917', '辽宁锦州市凌河区凌安街道市场里99-14号', NULL, '辽宁', '锦州市', NULL, '2024-06-13 15:13:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170891293822978, '296682332802', 3, 3, NULL, '', '', NULL, 1, 2, 5349, 0, 0, 0, 3319, 0, '韦美珍', '139****8346', '湖北黄冈市武穴市石佛寺镇胡于四村下韦垸', NULL, '湖北', '黄冈市', NULL, '2024-06-06 20:42:37', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170891612590081, '296591424074', 3, 3, NULL, '', '', NULL, 1, 3, 5249, 0, 0, 0, 3699, 0, '徐耀林', '139****4588', '甘肃陇南市徽县江洛镇街市村五社', NULL, '甘肃', '陇南市', NULL, '2024-06-04 22:11:22', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170891818110977, '293199925174', 3, 3, NULL, '', '床垫包装费用40元我们承担【qm20231013 2024.06.13 13:54:37】', NULL, 1, 3, 1899, 0, 0, 0, 1379, 0, '王俊英', '181****4522', '河南郑州市管城回族区航海东路街道紫辰路华钻二期4号楼一单元10楼西户', NULL, '河南', '郑州市', NULL, '2024-05-24 13:57:44', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170891893608450, '294089995450', 3, 3, NULL, '', '', NULL, -1, -1, 0, 0, 0, 0, 0, 0, '古智锋', '184****7662', '浙江杭州市西湖区西溪街道文一路115号浙江省磁性材料研究院行政楼D幢1007', NULL, '浙江', '杭州市', NULL, '2024-06-13 13:13:27', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892019437569, '293620468088', 3, 3, NULL, '', '床和床垫一起发【曲美家居娜娜 2024.06.13 11:38:34】', NULL, 1, 1, 4099, 0, 0, 0, 3099, 0, '赵晓光', '133****9060', '河北唐山市玉田县玉田镇富春山居五栋一单元003', NULL, '河北', '唐山市', NULL, '2024-05-31 21:25:38', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892149460994, '296672707787', 3, 3, NULL, '订单296672123371床垫升级M2(一起发货)', '', NULL, 1, 2, 300, 0, 0, 0, 300, 0, '赵晖', '173****7375', '北京朝阳区奥运村街道大屯路科学园南里四区410号楼605', NULL, '北京', '朝阳区', NULL, '2024-06-06 14:06:13', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892279484418, '294102020274', 3, 3, NULL, '', '', NULL, -1, -1, 0, 0, 0, 0, 0, 0, '高明', '139****7285', '北京房山区向阳街道向阳路48号院北京蔻凯恒安咨询有限公司', NULL, '北京', '房山区', NULL, '2024-06-13 10:59:13', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892396924929, '296571137122', 3, 3, NULL, '', '', NULL, 1, 2, 940, 0, 0, 0, 659, 0, '张来希', '137****5081', '黑龙江齐齐哈尔市龙沙区江安街道恒大翡翠华庭3期11号楼二单元1601', NULL, '黑龙江', '齐齐哈尔市', NULL, '2024-06-01 18:38:54', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892472422402, '293987097272', 3, 3, NULL, '', '', NULL, 1, 2, 940, 0, 0, 0, 659, 0, '陈大伟', '180****1980', '辽宁盘锦市兴隆台区振兴街道蓝色康桥天玺城小区28－2－601', NULL, '辽宁', '盘锦市', NULL, '2024-06-10 09:03:50', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892560502786, '293361352378', 3, 3, NULL, '', '', NULL, 1, 3, 4748, 0, 0, 0, 2514.12, 0, '宁馨儿', '135****6323', '河北廊坊市三河市燕郊高新技术产业开发区爱民路隧道局中燕小区E1-901', NULL, '河北', '廊坊市', NULL, '2024-05-25 14:24:15', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892753440769, '296796624704', 3, 3, NULL, '', '', NULL, 1, 2, 5349, 0, 0, 0, 3419.66, 0, '王倩', '186****0736', '山东临沂市兰山区银雀山街道颐华苑小区3号楼4单元101室', NULL, '山东', '临沂市', NULL, '2024-05-24 18:53:55', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892833132545, '293212582674', 3, 3, NULL, '', '', NULL, 1, 2, 2849, 0, 0, 0, 2087.55, 0, '高明方', '138****9852', '河北承德市双桥区桥东街道世纪城德泽府3号楼1单元17A02', NULL, '河北', '承德市', NULL, '2024-05-20 21:25:57', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170892908630018, '296926573805', 3, 3, NULL, '', '', NULL, 1, 1, 1299, 0, 0, 0, 968, 0, '高明', '139****7285', '北京房山区向阳街道向阳路48号院北京蔻凯恒安咨询有限公司', NULL, '北京', '房山区', NULL, '2024-06-13 07:52:37', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170893143511042, '293758410092', 3, 3, NULL, '', '', NULL, 1, 1, 30000, 0, 0, 0, 4598, 0, '王作振', '139****9007', '河南新乡市长垣市蒲西街道蒲西区匡城路202号(食博园东区大门口）作振广告', NULL, '河南', '新乡市', NULL, '2024-05-14 18:07:59', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170893235785730, '295307184234', 3, 3, NULL, '', '', NULL, 1, 2, 5499, 0, 0, 0, 3999, 0, '杨力刚', '139****6588', '河北秦皇岛市海港区白塔岭街道秦皇西大街25号自然家园5-3-102', NULL, '河北', '秦皇岛市', NULL, '2024-05-25 14:13:35', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170893328060418, '295219868198', 3, 3, NULL, '', '', NULL, 1, 2, 5499, 0, 0, 0, 3724, 0, '黄卉', '186****9455', '湖北武汉市武汉经济技术开发区东方花园A区58栋402室', NULL, '湖北', '武汉市', NULL, '2024-05-22 21:23:57', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170893403557889, '296895169038', 3, 3, NULL, '', '发藏青色', NULL, 1, 1, 119.7, 0, 0, 0, 119.7, 0, '张生', '133****9199', '陕西西安市雁塔区长延堡街道健康西路129号', NULL, '陕西', '西安市', NULL, '2024-06-12 16:48:32', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170893546164226, '296332463842', 3, 3, NULL, '', '', NULL, 1, 2, 5489, 0, 0, 0, 3858, 0, '张老师', '198****7098', '山东滨州市滨城区杜店街道黄河十三路717号山钢碧桂园·翡翠城9号楼（东区）', NULL, '山东', '滨州市', NULL, '2024-06-01 01:04:54', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801170893642633217, '296672123371', 3, 3, NULL, '', '加急发货，补拍邮费(M1床垫换成M2床垫1.8米的，晴儿', NULL, 1, 2, 7999, 0, 0, 0, 4319, 0, '赵晖', '173****7375', '北京朝阳区奥运村街道大屯路科学园南里四区410号楼605', NULL, '北京', '朝阳区', NULL, '2024-06-06 13:53:32', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801197273742716929, '240520-047322284383318', 5, 5, NULL, '', '', NULL, 1, 3, 3699, 0, 0, 0, 3699, 0, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-13 18:17:49', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801586084440088578, '6929484595989779565', 6, 6, NULL, '', '', NULL, 1, 11, 5714, 0, 0, 0, 5714, 0, '杨', '1********66', NULL, NULL, NULL, NULL, NULL, '2024-05-05 21:07:29', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-14 20:02:49', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1801809140794216449, '3720293313330939136', 2, 2, NULL, '', '', NULL, 4, 11, 10, 0, 0, 0, 10, 10, '欧**', '188****4438', '****', NULL, '广东省', '广州市', '越秀区', '2024-06-03 16:22:04', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-15 10:49:09', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1803318850609438722, '6928278934683981125', 6, 6, NULL, '', '', NULL, 1, 11, 849.15, 0, 0, 0, 849.15, 849.15, '崔', '1********44', '解放*道***路******************号楼', NULL, NULL, NULL, NULL, '2024-03-28 10:17:32', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-19 14:48:13', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1803318851616071682, '6928311234249692300', 6, 6, NULL, '', '', NULL, 1, 11, 849.15, 0, 3, 0, 849.15, 846.15, '崔**', '1********44', '解放*道***路******************号楼', NULL, NULL, NULL, NULL, '2024-03-28 21:21:14', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-19 14:48:13', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1803318851993559042, '6928049112916498308', 6, 6, NULL, '', '', NULL, 1, 11, 1199.1, 0, 0, 300, 1199.1, 1199.1, '侯*', '1********65', '海甸****道*-*号******', NULL, NULL, NULL, NULL, '2024-03-21 14:54:09', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-19 14:48:13', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);
INSERT INTO `erp_sale_order` VALUES (1803324847759515650, '6930146130276587395', 6, 6, NULL, '', '加急发货', NULL, 1, 1, 3239.1, 0, 0, 0, 3239.1, 3239.1, '岳**', '1********55', '甘肃********', NULL, '甘肃省', '白银市', '平川区', '2024-05-24 21:26:21', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-19 15:12:02', 'ORDER_MESSAGE', NULL, NULL, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for erp_sale_order_item
-- ----------------------------
DROP TABLE IF EXISTS `erp_sale_order_item`;
CREATE TABLE `erp_sale_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id，自增',
  `order_id` bigint NOT NULL COMMENT '订单ID',
  `shop_id` int NOT NULL COMMENT '店铺id',
  `supplier_id` int NULL DEFAULT NULL COMMENT '供应商ID',
  `goods_id` bigint NULL DEFAULT 0 COMMENT 'erp系统商品id',
  `spec_id` bigint NULL DEFAULT 0 COMMENT 'erp系统商品规格id',
  `goods_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `goods_img` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `goods_num` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_spec` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `spec_num` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `goods_price` double NULL DEFAULT NULL COMMENT '商品单价',
  `item_amount` double NULL DEFAULT NULL COMMENT '子订单金额',
  `quantity` int NOT NULL COMMENT '商品数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `original_order_item_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '子订单编号(来源订单)',
  `original_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号（来源订单）',
  `original_sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始订单skuid',
  `is_gift` tinyint NOT NULL DEFAULT 0 COMMENT '是否赠品0否1是',
  `refund_count` int NULL DEFAULT 0 COMMENT '已退货数量',
  `refund_status` int NULL DEFAULT NULL COMMENT '售后状态 1：无售后或售后关闭，2：售后处理中，3：退款中，4： 退款成功 ',
  `order_status` int NULL DEFAULT NULL COMMENT '订单状态',
  `ship_type` int NULL DEFAULT NULL COMMENT '发货类型（0仓库发货；1供应商代发）',
  `ship_status` int NOT NULL COMMENT '发货状态（0待备货1备货中2已出库3已发货）',
  `ship_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `logistics_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `logistics_company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `ship_man` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goodId_index`(`goods_id` ASC) USING BTREE,
  INDEX `order_id`(`order_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1803324848011173890 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_sale_order_item
-- ----------------------------
INSERT INTO `erp_sale_order_item` VALUES (1801155304836493313, 1801155304396091393, 4, NULL, 0, 0, '曲美现代简约伸缩布艺沙发客厅直排可调节两用折叠泡芙电动沙发床', 'https://img.alicdn.com/bao/uploaded/i2/351855490/O1CN01MztMdl1qQTLvrCiRY_!!0-item_pic.jpg', NULL, '颜色分类:三电机位-橄榄绿【三座包】', 'F1-23E-WQM-S3G-ZH2-SKD', 13999, 8939, 1, NULL, '1801155290596892673', '2148265848729748675', '5423197092452', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801155305130094594, 1801155305008459777, 4, NULL, 0, 0, '【现货速发】现代简约轻奢布艺科技布沙发客厅小户型意式三人沙发', 'https://img.alicdn.com/bao/uploaded/i2/351855490/O1CN01vhonmK1qQTFCJI6SF_!!351855490.jpg', NULL, '颜色分类:3人位-浅灰色【3.1米】', 'ZH-S-01-DS-F1-QM22-S11-3ZP', 10288, 2848.75, 1, NULL, '1801155298482184194', '3898944039996721932', '5081083851934', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801155305159454722, 1801155305008459777, 4, NULL, 0, 0, '【狂欢价】曲美家居现代简约双人板式床舒适婚床卧室多功能储物床', 'https://img.alicdn.com/bao/uploaded/i3/351855490/O1CN01IQ4ezm1qQTLJhLWae_!!351855490.jpg', NULL, '颜色分类:胡桃色-箱体储物床【E0级环保板材+定制五金+人体工学设计床头】;尺寸:1800mm*2000mm', 'YW1-2017E-B2-180F', 12999, 4399.25, 1, NULL, '1801155298498961410', '3898944039996721932', '4988190157337', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801155305385947137, 1801155305331421186, 4, NULL, 0, 0, '【狂欢价】曲美家居北欧简约风岩板餐桌椅现代弯曲木工艺家用耐脏耐高温银河', 'https://img.alicdn.com/bao/uploaded/i3/351855490/O1CN017TTQMZ1qQTHtg5kzH_!!351855490.jpg', NULL, '颜色分类:银河戈尔浅胡桃岩板餐桌1.4米（140*85*75）', 'BSYB/GRQHT-23E-WQM-DT1-1', 5999, 2587.32, 1, NULL, '1801155298591236098', '2180428356728976457', '5125494417112', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801155305406918657, 1801155305331421186, 4, NULL, 0, 0, '【狂欢价】曲美家居北欧简约风岩板餐桌椅现代弯曲木工艺家用耐脏耐高温银河', 'https://img.alicdn.com/bao/uploaded/i1/351855490/O1CN01zkjkfA1qQTHw4pkvL_!!351855490.jpg', NULL, '颜色分类:银河戈尔浅胡桃+奶油白软包软包餐椅*2', 'F1-GRQHT-23E-WQM-D1*2', 5999, 3578.4, 2, NULL, '1801155298620596226', '2180428356728976457', '5297476963971', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 15:31:03', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170511654785026, 1801170511356989442, 3, NULL, 0, 0, '曲美家居双人床 皮床 卧室软床信封储物袋薄床头皮艺大床 框架款（白茶杏色） 1.8*2.0m', NULL, NULL, NULL, NULL, 2899, 2899, 1, NULL, '1800447518715248641', '296317183235', '10099578107090', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:31:29', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170891222519809, 1801170891063136258, 3, NULL, 0, 0, '曲美家居（QM） 运费链接勿拍', NULL, NULL, NULL, NULL, 1, 25, 25, NULL, '1801170890891141121', '297015031620', '10064215373526', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170891541286913, 1801170891293822978, 3, NULL, 0, 0, '曲美家居（QM）床 现代简约轻北欧风家具舒适储物婚床 卧室双人床架子床 胡桃色 架子床+床垫 1.8米', NULL, NULL, NULL, NULL, 5349, 5349, 1, NULL, '1801170891054718978', '296682332802', '10069522866318', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170891633561602, 1801170891612590081, 3, NULL, 0, 0, '曲美家居双人床 卧室婚床现代简约真皮床梦舟床 床+乳胶床垫 1.8*2.0m', NULL, NULL, NULL, NULL, 5249, 5249, 1, NULL, '1801170891159576578', '296591424074', '10091397251358', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170891847471106, 1801170891818110977, 3, NULL, 0, 0, '曲美家居（QM） 床垫 乳胶床垫 黄麻护脊床垫 单人双人软硬两用弹簧床垫 1800*2000mm 乳胶+弹簧+黄麻', NULL, NULL, NULL, NULL, 1899, 1899, 1, NULL, '1801170891268628481', '293199925174', '10075260528062', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170891960717314, 1801170891893608450, 3, NULL, 0, 0, '曲美家居床头柜北欧风 弯曲木实木石纹板柜子卧室储物柜 合观胡桃+白石纹板', NULL, NULL, NULL, NULL, 1899, 1899, 1, NULL, '1801170891352514561', '294089995450', '10086223215859', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892090740738, 1801170892019437569, 3, NULL, 0, 0, '曲美家居床垫 可拆卸可洗 分层乳胶独立袋弹簧黄麻可定制床垫 款式B（乳胶+黄麻+独袋弹簧） 1.8*2.0m', 'jfs/t1/232077/35/19678/292457/66679f31F350800b4/138871b793e1a2c6.jpg', NULL, '[{\"attrId\":\"1001061819\",\"attrValueAlias\":[\"款式B（乳胶+黄麻+独袋弹簧）\"],\"attrValues\":[\"14095056177\"],\"attrValuesSeqNo\":[2],\"index\":1},{\"attrId\":\"1001061820\",\"attrValueAlias\":[\"1.8*2.0m\"],\"attrValues\":[\"14095056176\"],\"attrValuesSeqNo\":[2],\"index\":2}]', 'ZH-PTCD-DS-F3-QM24-M1-18', 4099, 4099, 1, NULL, '1801170891478343682', '293620468088', '10102898640691', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892208181249, 1801170892149460994, 3, NULL, 0, 0, '曲美家居（QM） 运费链接勿拍', NULL, NULL, NULL, NULL, 10, 300, 30, NULL, '1801170891558035457', '296672707787', '10064215635212', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:32:59', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892334010369, 1801170892279484418, 3, NULL, 0, 0, '曲美家居（QM）床垫 乳胶床垫 独立袋弹簧席梦思床垫 1.5米*2米 乳胶独袋弹簧床垫', NULL, NULL, NULL, NULL, 1299, 2598, 2, NULL, '1801170891667087362', '294102020274', '10051383205245', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892417896449, 1801170892396924929, 3, NULL, 0, 0, '曲美家居弯曲木床头柜（直播） 床头柜 合观胡桃+白石纹板', NULL, NULL, NULL, NULL, 940, 940, 1, NULL, '1801170891763556354', '296571137122', '10093415819980', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892510171137, 1801170892472422402, 3, NULL, 0, 0, '曲美家居弯曲木床头柜（直播） 床头柜 合观胡桃+白石纹板', NULL, NULL, NULL, NULL, 940, 940, 1, NULL, '1801170891872608258', '293987097272', '10093415819980', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892656971778, 1801170892560502786, 3, NULL, 0, 0, '曲美家居 储物衣柜 轻北欧简易卧室衣帽柜多门衣柜储物收纳衣柜 双门 胡桃色', NULL, NULL, NULL, NULL, 2849, 2849, 1, NULL, '1800447517704421377', '293361352378', '58096326888', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892690526210, 1801170892560502786, 3, NULL, 0, 0, '曲美家居床头柜北欧风 弯曲木实木石纹板柜子卧室储物柜 合观胡桃+白石纹板', NULL, NULL, NULL, NULL, 1899, 1899, 1, NULL, '1800447517708615681', '293361352378', '10086223215859', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892795383809, 1801170892753440769, 3, NULL, 0, 0, '曲美家居（QM）床 现代简约轻北欧风家具舒适储物婚床 卧室双人床架子床 深橡色 架子床+床垫 1.8米', NULL, NULL, NULL, NULL, 5349, 5349, 1, NULL, '1801170892271067138', '296796624704', '10069522866316', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892866686977, 1801170892833132545, 3, NULL, 0, 0, '曲美家居 储物衣柜 轻北欧简易卧室衣帽柜多门衣柜储物收纳衣柜 双门 深橡木色', NULL, NULL, NULL, NULL, 2849, 2849, 1, NULL, '1801170892333981698', '293212582674', '58096326887', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170892979933186, 1801170892908630018, 3, NULL, 0, 0, '曲美家居（QM）床垫 乳胶床垫 独立袋弹簧席梦思床垫 1.5米*2米 乳胶独袋弹簧床垫', NULL, NULL, NULL, NULL, 1299, 1299, 1, NULL, '1801170892422062082', '296926573805', '10051383205245', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893193842690, 1801170893143511042, 3, NULL, 0, 0, '曲美家居弯曲木餐桌餐椅 北欧风餐厅实木家具流光餐桌椅 餐椅A*2-生态皮-奶油白 戈尔浅胡桃', NULL, NULL, NULL, NULL, 15000, 30000, 2, NULL, '1801170892753412098', '293758410092', '10088099242311', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893269340162, 1801170893235785730, 3, NULL, 0, 0, '曲美家居 储物衣柜 轻北欧简易卧室衣帽柜多门衣柜储物收纳衣柜 四门 木本色', NULL, NULL, NULL, NULL, 5499, 5499, 1, NULL, '1801170893114122241', '295307184234', '1644198662', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893357420545, 1801170893328060418, 3, NULL, 0, 0, '曲美家居 储物衣柜 轻北欧简易卧室衣帽柜多门衣柜储物收纳衣柜 四门 木本色', NULL, NULL, NULL, NULL, 5499, 5499, 1, NULL, '1801170893198008322', '295219868198', '1644198662', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893470666754, 1801170893403557889, 3, NULL, 0, 0, '曲美家居沙发抱枕科技布小靠枕40*40CM颜色随机 颜色随机 40*40cm', 'jfs/t1/110521/27/48379/81257/65e67eefF927d5a4e/ef5b5302cb36dfc1.jpg', NULL, '[{\"attrId\":\"1001062133\",\"attrValueAlias\":[\"颜色随机\"],\"attrValues\":[\"10280817699\"],\"attrValuesSeqNo\":[1],\"index\":1},{\"attrId\":\"1001062134\",\"attrValueAlias\":[\"40*40cm\"],\"attrValues\":[\"10280817698\"],\"attrValuesSeqNo\":[1],\"index\":2}]', '', 39.9, 119.69999999999999, 3, NULL, '1801170893281894402', '296895169038', '10097509027917', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893575524353, 1801170893546164226, 3, NULL, 0, 0, '曲美家居（QM）床 现代简约轻北欧风家具舒适储物婚床 卧室双人床架子床 本木色 架子床+床垫 1.5米', NULL, NULL, NULL, NULL, 4549, 4549, 1, NULL, '1801170893357391874', '296332463842', '10069522866315', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893592301570, 1801170893546164226, 3, NULL, 0, 0, '曲美家居弯曲木床头柜（直播） 床头柜 合观胡桃+白石纹板', NULL, NULL, NULL, NULL, 940, 940, 1, NULL, '1801170893365780482', '296332463842', '10093415819980', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801170893671993346, 1801170893642633217, 3, NULL, 0, 0, '曲美家居（QM）床 双人床 真皮床现代简约卧室软床 【箱体床】浅咖色+床垫 1.8*2.0m', NULL, NULL, NULL, NULL, 7999, 7999, 1, NULL, '1801170893432889346', '296672123371', '10085360699312', 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 16:33:00', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801197275089088514, 1801197273742716929, 5, NULL, 0, 0, NULL, 'https://img.pddpic.com/mms-material-img/2024-01-09/22ce0fb0-8e07-43d2-a2a2-1415d904edae.jpeg', NULL, '头层压纹牛皮框架床+独袋乳胶弹簧床垫,1800mm*2000mm,框架结构', NULL, 3699, 3699, 1, NULL, '1795400709887672322', '240520-047322284383318', '1547395102694', 0, 0, 1, 3, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-13 18:17:50', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801586084784021505, 1801586084440088578, 6, NULL, 0, 0, 'QM曲美家居lab墩墩84规格沙发现代简约灯芯绒布艺客厅别墅组合', 'https://p3-aio.ecombdimg.com/obj/ecom-shop-material/WPnATfLV_m_f3e18ff5028d08246dade28584bea914_sx_431489_www800-800', NULL, NULL, NULL, 5714, 5714, 1, NULL, '6929484595989779565', '6929484595989779565', '3397292888904962', 0, 0, 1, 11, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-14 20:02:49', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1801809144007053314, 1801809140794216449, 2, NULL, 0, 0, '无沙 桑葚  50克/袋', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/664f051f000ac91c17542e128e89bc1e000000a000004f50', NULL, '50克一袋 ; 热销十万件好评 ; ', NULL, 1, 1, 10, NULL, '1797557234727092226', '3720293313330939136', '2304555042', 0, 0, 4, 11, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-15 10:49:11', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1803318851326664705, 1803318850609438722, 6, NULL, 0, 0, 'QM曲美家居天然乳胶独立袋弹簧床垫软硬家用抑制螨虫厚垫卧室', 'https://p3-aio.ecombdimg.com/obj/ecom-shop-material/WPnATfLV_m_2342c1b92875c1554e5095af516c42bb_sx_211997_www800-800', NULL, '[{\"name\":\"尺寸\",\"value\":\"乳胶独袋弹簧乳胶床垫1800mm*2000mm\"}]', NULL, 849.15, 849.15, 1, NULL, '6928278934683981125', '6928278934683981125', '1765488747952163', 0, 0, 1, 11, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-19 14:48:13', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1803318851658014721, 1803318851616071682, 6, NULL, 0, 0, 'QM曲美家居天然乳胶独立袋弹簧床垫软硬家用抑制螨虫厚垫卧室', 'https://p3-aio.ecombdimg.com/obj/ecom-shop-material/WPnATfLV_m_2342c1b92875c1554e5095af516c42bb_sx_211997_www800-800', NULL, '[{\"name\":\"尺寸\",\"value\":\"乳胶独袋弹簧乳胶床垫1800mm*2000mm\"}]', NULL, 849.15, 849.15, 1, NULL, '6928311234249692300', '6928311234249692300', '1765488747952163', 0, 0, 1, 11, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-19 14:48:13', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1803318852043890690, 1803318851993559042, 6, NULL, 0, 0, 'QM曲美家居天然乳胶独立袋弹簧床垫软硬家用抑制螨虫厚垫卧室', 'https://p3-aio.ecombdimg.com/obj/ecom-shop-material/WPnATfLV_m_2342c1b92875c1554e5095af516c42bb_sx_211997_www800-800', NULL, '[{\"name\":\"尺寸\",\"value\":\"乳胶独袋弹簧乳胶床垫1800mm*2000mm\"}]', NULL, 899.1, 1199.1, 1, NULL, '6928049112916498308', '6928049112916498308', '1765488747952163', 0, 0, 1, 11, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-19 14:48:13', 'ORDER_MESSAGE', NULL, NULL);
INSERT INTO `erp_sale_order_item` VALUES (1803324848011173889, 1803324847759515650, 6, NULL, 0, 0, 'QM曲美家居现代简约原野实木真皮卧室大床1.51.8双人QM23-B12', 'https://p3-aio.ecombdimg.com/obj/ecom-shop-material/WPnATfLV_m_e80c23b620a4f49553adec05dd6cde40_sx_169973_www800-800', NULL, '[{\"name\":\"规格\",\"value\":\"1.8米-进口头层牛皮+进口松木框架\"}]', NULL, 3239.1, 3239.1, 1, NULL, '6930146130276587395', '6930146130276587395', '3383287638486530', 0, 0, 1, 1, NULL, 0, NULL, NULL, NULL, NULL, '2024-06-19 15:12:03', 'ORDER_MESSAGE', NULL, NULL);

-- ----------------------------
-- Table structure for erp_ship_logistics
-- ----------------------------
DROP TABLE IF EXISTS `erp_ship_logistics`;
CREATE TABLE `erp_ship_logistics`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递公司',
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递公司编码',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_ship_logistics
-- ----------------------------
INSERT INTO `erp_ship_logistics` VALUES (1, '中通快递', 'ZTO', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (2, '申通快递', 'STO', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (3, '圆通速递', 'YTO', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (4, '韵达速递', 'YD', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (5, '邮政快递包裹', 'YZPY', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (6, '顺丰速运', 'SF', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (7, '京东快递', 'JD', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (8, '德邦快递', 'DBL', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (9, '极兔速递', 'JTSD', NULL, 1);
INSERT INTO `erp_ship_logistics` VALUES (10, '菜鸟速递', 'CNSD', '0', 1);

-- ----------------------------
-- Table structure for erp_ship_order
-- ----------------------------
DROP TABLE IF EXISTS `erp_ship_order`;
CREATE TABLE `erp_ship_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `shop_id` int NOT NULL COMMENT '店铺ID',
  `shop_type` int NOT NULL COMMENT '店铺平台',
  `supplier_id` int NOT NULL COMMENT 'erp系统商品id',
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `erp_order_id` bigint NULL DEFAULT NULL COMMENT 'erp订单ID',
  `erp_order_item_id` bigint NOT NULL COMMENT 'erp子订单ID',
  `order_time` datetime NOT NULL COMMENT '订单日期',
  `goods_id` bigint NOT NULL DEFAULT 0 COMMENT 'erp系统商品id',
  `spec_id` bigint NOT NULL DEFAULT 0 COMMENT 'erp系统商品规格id',
  `spec_num` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `quantity` int NOT NULL COMMENT '商品数量',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `logistics_company` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `logistics_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `logistics_fee` decimal(6, 2) NULL DEFAULT NULL COMMENT '运费',
  `ship_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `ship_man` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货人',
  `out_operator` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库人',
  `out_position` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库仓位',
  `out_time` datetime NULL DEFAULT NULL COMMENT '出库时间',
  `ship_type` int NOT NULL COMMENT '发货类型（0仓库发货；1供应商代发）',
  `ship_status` int NOT NULL COMMENT '状态（1出库中2已出库3已发货）',
  `package_weight` float NULL DEFAULT NULL COMMENT '包裹重量',
  `package_length` float NULL DEFAULT NULL COMMENT '包裹长度',
  `package_width` float NULL DEFAULT NULL COMMENT '包裹宽度',
  `package_height` float NULL DEFAULT NULL COMMENT '包裹高度',
  `packsge_operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '打包操作人',
  `packsge_time` datetime NULL DEFAULT NULL COMMENT '打包时间',
  `packages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '包裹内容JSON',
  `receiver_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `receiver_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人地址',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家/地区',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1794205460750368771 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单发货表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_ship_order
-- ----------------------------
INSERT INTO `erp_ship_order` VALUES (1785676692335767553, 6, 4, 0, '2055782964491095876', 38, 442, '2024-02-01 11:39:21', 9, 23, '2720210080260001', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '胥**', '*******8279', '高*街道江苏省高邮市北**村**幢***室', '中国', '江苏省', '扬州市', '高邮市', '2024-05-01 22:24:34', '生成拣货单', NULL, NULL);
INSERT INTO `erp_ship_order` VALUES (1785852155209383937, 6, 4, 26, '3763030608986745044', 39, 443, '2024-01-31 10:42:58', 9, 23, '2720210080260001', 1, NULL, '菜鸟速递', '11111', 11.00, '2024-05-02 15:12:17', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '张**', '*******4678', '大*镇*城**路下段泰舂小吃', '中国', '云南省', '大理白族自治州', '大理市', '2024-05-02 10:01:48', '分配给供应商发货', '2024-05-02 15:12:36', '发货');
INSERT INTO `erp_ship_order` VALUES (1786204816567873538, 6, 4, 26, '2137984935735126281', 41, 1785584827112509446, '2024-05-02 12:47:02', 9, 32, '2720210080260105', 1, NULL, '京东快递', 'JD903989932', 5.00, '2024-05-03 11:32:15', NULL, 'admin', '20', '2024-05-03 10:56:43', 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '刘**', '*******6949', '东**街道湖南省社会**院**栋***', '中国', '湖南省', '长沙市', '开福区', '2024-05-03 09:23:09', '生成拣货单', '2024-05-03 11:38:48', '发货');
INSERT INTO `erp_ship_order` VALUES (1788393466931580930, 1, 99, 32, 'A13885020023320', 51, 1785584827112509452, '2024-05-09 10:19:20', 1228, 1228, 'GZYYZ72773100', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Q', '13582202330', 'AAAA', NULL, '河北省', '邯郸市', '复兴区', '2024-05-09 10:20:04', '生成拣货单', NULL, NULL);
INSERT INTO `erp_ship_order` VALUES (1794205460750368770, 1, 99, 0, 'AD3702565220', 49, 1785584827112509450, '2024-05-09 10:10:48', 1229, 1229, 'GZYYZ72776200', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Q', '13822033320', 'SAFADSFASDAFASDF', NULL, '天津市', '市辖区', '和平区', '2024-05-25 11:14:51', '生成拣货单', NULL, NULL);

-- ----------------------------
-- Table structure for erp_ship_order_agent_fee
-- ----------------------------
DROP TABLE IF EXISTS `erp_ship_order_agent_fee`;
CREATE TABLE `erp_ship_order_agent_fee`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `shop_id` int NOT NULL COMMENT '店铺id',
  `supplier_id` bigint NOT NULL COMMENT '供应商id',
  `supplier_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `date` date NOT NULL COMMENT '日期',
  `logistics_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流公司',
  `logistics_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流单号',
  `total_amount` decimal(10, 2) NOT NULL COMMENT '应付总金额',
  `ship_amount` decimal(5, 2) NOT NULL COMMENT '物流费用',
  `goods_amount` decimal(10, 2) NOT NULL COMMENT '商品金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态（0已生成1已结算)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1785930405289799682 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商代发账单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_ship_order_agent_fee
-- ----------------------------
INSERT INTO `erp_ship_order_agent_fee` VALUES (1785930405289799681, '3763030608986745044', 6, 26, NULL, '2024-05-02', '菜鸟速递', '11111', 30.00, 11.00, 19.00, NULL, 0, '2024-05-02 15:12:44', '发货生成账单', NULL, NULL);

-- ----------------------------
-- Table structure for erp_ship_order_fee
-- ----------------------------
DROP TABLE IF EXISTS `erp_ship_order_fee`;
CREATE TABLE `erp_ship_order_fee`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logistics_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流公司',
  `logistics_company_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司id',
  `logistics_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流单号',
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `amount` decimal(10, 2) NOT NULL COMMENT '应付金额',
  `date` date NOT NULL COMMENT '应付日期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态（0已生成1已结算)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `length` float NULL DEFAULT 0 COMMENT '长',
  `width` float NULL DEFAULT 0 COMMENT '宽',
  `height` float NULL DEFAULT 0 COMMENT '高',
  `weight` float NULL DEFAULT NULL COMMENT '重量',
  `receiver_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `receiver_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1786238985318604802 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单发货物流费用' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_ship_order_fee
-- ----------------------------
INSERT INTO `erp_ship_order_fee` VALUES (1786238985318604801, '京东快递', NULL, 'JD903989932', '2137984935735126281', 6, 5.00, '2024-05-03', NULL, 0, '2024-05-03 11:38:54', '发货', NULL, NULL, 0, 0, 0, NULL, '刘**', '*******6949', '湖南省', '长沙市', '开福区');

-- ----------------------------
-- Table structure for erp_ship_stock_up
-- ----------------------------
DROP TABLE IF EXISTS `erp_ship_stock_up`;
CREATE TABLE `erp_ship_stock_up`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shop_id` bigint NULL DEFAULT NULL COMMENT '店铺id',
  `sale_order_id` bigint NULL DEFAULT NULL COMMENT 'erp订单id',
  `sale_order_item_id` bigint NULL DEFAULT NULL COMMENT 'erp订单itemid',
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `original_sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始订单skuid',
  `goods_id` bigint NULL DEFAULT 0 COMMENT 'erp系统商品id',
  `spec_id` bigint NULL DEFAULT 0 COMMENT 'erp系统商品规格id',
  `goods_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `goods_img` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `goods_spec` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `goods_num` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `spec_num` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `quantity` int NOT NULL COMMENT '商品数量',
  `status` int NOT NULL COMMENT '状态0待备货1备货中2已出库3已发货',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '备货表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_ship_stock_up
-- ----------------------------
INSERT INTO `erp_ship_stock_up` VALUES (1, 4, 1801155304396091393, 1801155304836493313, '2148265848729748675', '5423197092452', 0, 0, '曲美现代简约伸缩布艺沙发客厅直排可调节两用折叠泡芙电动沙发床', 'https://img.alicdn.com/bao/uploaded/i2/351855490/O1CN01MztMdl1qQTLvrCiRY_!!0-item_pic.jpg', '颜色分类:三电机位-橄榄绿【三座包】', NULL, 'F1-23E-WQM-S3G-ZH2-SKD', 1, 0, '2024-06-18 15:54:02', '消息通知备货', NULL, NULL);
INSERT INTO `erp_ship_stock_up` VALUES (2, 3, 1801170893403557889, 1801170893470666754, '296895169038', '10097509027917', 0, 0, '曲美家居沙发抱枕科技布小靠枕40*40CM颜色随机 颜色随机 40*40cm', 'jfs/t1/110521/27/48379/81257/65e67eefF927d5a4e/ef5b5302cb36dfc1.jpg', '[{\"attrId\":\"1001062133\",\"attrValueAlias\":[\"颜色随机\"],\"attrValues\":[\"10280817699\"],\"attrValuesSeqNo\":[1],\"index\":1},{\"attrId\":\"1001062134\",\"attrValueAlias\":[\"40*40cm\"],\"attrValues\":[\"10280817698\"],\"attrValuesSeqNo\":[1],\"index\":2}]', NULL, '', 3, 0, '2024-06-18 19:37:19', '消息通知备货', NULL, NULL);

-- ----------------------------
-- Table structure for erp_ship_waybill
-- ----------------------------
DROP TABLE IF EXISTS `erp_ship_waybill`;
CREATE TABLE `erp_ship_waybill`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `shop_id` bigint NOT NULL COMMENT '店铺id',
  `shop_type` int NOT NULL COMMENT '店铺类型',
  `waybill_order_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子面单订单id(仅视频号)',
  `waybill_code` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '快递单号',
  `logistics_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递公司编码',
  `print_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '打印数据',
  `status` int NULL DEFAULT NULL COMMENT '状态（1已取号2已打印3已发货）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '发货电子面单记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_ship_waybill
-- ----------------------------
INSERT INTO `erp_ship_waybill` VALUES (1, '2148265848729748675', 4, 4, NULL, '700059703930', 'CP446881', '{\"data\":{\"_dataFrom\":\"waybill\",\"_page_config\":{\"REQUEST_LAYERED_IMAGE\":false},\"adsInfo\":{\"adId\":\"3\",\"advertisementType\":\"DEFAULT\",\"bannerUrl\":\"https://ad-cdn.cainiao.com/img/3/1672122736541.png\",\"miniBannerUrl\":\"https://ad-cdn.cainiao.com/img/3/1672122733813.png\",\"useCustomArea\":false},\"cpCode\":\"CP446881\",\"extraInfo\":{\"appKey\":\"12175777\",\"templateAdDisplayUp\":true,\"encryptWaybillCode\":\"baHz4yngh4vagLagXnA0CA%3D%3D\"},\"needEncrypt\":false,\"orderChannelLogo\":\"https://cdn-cloudprint.cainiao.com/waybill-print/templateImages/tao.png\",\"orderChannelsType\":\"TB\",\"packageInfo\":{\"items\":[{\"count\":1,\"name\":\"曲美现代简约伸缩布艺沙发客厅直排可调节两用折叠泡芙电动沙发床\"}],\"volume\":0,\"weight\":0},\"parent\":false,\"realCpCode\":\"CP446881\",\"recipient\":{\"address\":{\"city\":\"沈阳市\",\"detail\":\"AES:K0i39aoTryKkTWkw4xsHd9+gJgo5dj+bX2zCC7zZmx9/6TJns/XBSV3w7xzHx8YTKy041rETVSpSXVTeO0wVIPoGPs7M0/IWd8lMMBZyTTs=\",\"district\":\"和平区\",\"province\":\"辽宁省\",\"town\":\"长白街道\"},\"mobile\":\"13436748546-3875\",\"name\":\"赵*\",\"secretConsigneeMobile\":\"13436748546-3875\",\"tid\":\"2148265848729748675\"},\"routingExtraInfo\":{},\"routingInfo\":{\"consolidation\":{},\"omsSortingData\":{},\"origin\":{\"code\":\"660605\",\"name\":\"南海区站点\"},\"receiveBranch\":{},\"sortation\":{},\"startCenter\":{},\"terminalCenter\":{}},\"secretWaybillType\":\"recipientSecret\",\"sender\":{\"address\":{\"city\":\"佛山市\",\"detail\":\"九江镇九江大道珠银库房A1栋（京东仓）\",\"district\":\"南海区\",\"province\":\"广东省\"},\"mobile\":\"15818590000\",\"name\":\"启航\"},\"shippingOption\":{\"code\":\"STANDARD_EXPRESS\",\"title\":\"标准快递\"},\"waybillCode\":\"700059703930\"},\"signature\":\"MD:zSz5xAkkfVzjXBm3RFr7UQ==\",\"templateURL\":\"http://cloudprint.cainiao.com/template/standard/101\",\"ver\":\"waybill_print_secret_version_1\"}', 2, '2024-06-16 17:48:02', NULL, '2024-06-18 15:53:41', '打印面单');
INSERT INTO `erp_ship_waybill` VALUES (2, '240520-302288781751858', 5, 5, NULL, '9800329082266', 'YZXB', '{\"encryptedData\":\"nCGXTLX57Gy747SrsozPk1wdUSbam0r9rYxOE0zQn/6rMQyC1UB8pfGLaS/8283yJr1SfJnahKp2Lz8LEWMaPbp3tYWHtDY5EkVfNMjkftDw46ysVHlIEmjXotCdNd5fxIEypRSs3KomQGAJIz1yr+BHWXhoQpYGM1hfbk0GeuOy3QmBGatk/yY88p9SloAdwcOnm0OMXY5qC+r/Fshv7NuakvGA6qBLdlZ5XwkbXnv1fAU2gsFmVhZjVKgBL1VP2T+/Tue0SdsIjYVPKBUWZ28jUVn8d1SoTxHwio9WatijYLwO8DF9j+Dw5MspzXdaXT/g5YZJ0Sap/Gnr0pRS6ZdatPT/sh9NgARpb0L5xw+U5GsMSjK645Ildra/fCAqcjQW2b6jwvnoICBajP9TGv2+Adwl2xIOIA27m2Wg3B85d2jJOrH/maRz2e3SwMncApYLmDhscMftxhVfEDJl8IOYKeNY0Qe844Js/87JiZpbbvITwfgi9evo2RKecrrhEJbubkQhn4DHLjBi2YNErKf+bjzPax5VPnk/PFruzLSFbOwI+8ootVH5UgA3vWcmu8aNzWOKkcJnf7yLmIRtBLGzn42byXElEOTmtEQqlgp2BcR8MBqR6imV31lIbj827ckOAVL99XkgvTZPQCG7T67r/g26c87xnWunk9dMXskSbMf+XYSfPFWfCSHeJznBpJKPUZA8saY3Nxcss3t0UokbsW8oVGkp9APYV9EBy7rIeFcjBy2kvOzAmrEqP5FjzgoPaMsPHWhx3Ny9n+x5z15idqdcMH//ikpQtb81EmAitUkk85RY231uOUZVdSYM3foZy507fI2wBAKSi3/k924tAg0M7PqfYCIyjoVqsGodR5iUpYWuTpTIA9rb7EG0ey5CKwS822LzbYftHPdBQ8maMztCp17dFya2KjExn68vddYN8doptVktcBeXxQIYlF1aAwA8TD4YXxcic73Gnfwsdme6u92zrAB/uW+gmZ/hM7I4Xufp60nGxslbYZik94GGU9Y3EkZex9uuCcnsGNQBC6/v/bHbzcxEnzIU1zLQ4y5QkjbX7XwDsv/iVm53FPuQKMbzgKt9jyLa9szYDzSJajaclQR797sLs3eJD62QuANwPXSAiK7wXhbqgFPBcrUOjFQSfdFgG3nMyKWxSy2z+CXC1HbEKhLzsMScOCnevhxZQiOBKNwKwZh6zcedyD/B4UVrRuf1V0O0D4Wxftm3Bh9416EeQZ6WQ66ZZ/7z+QTpCvAJepeqf1DDbmTHdYaK3trxevBgiEA4fgxKHrL3rEjd2YOHwnTb/9eJL9e/dRdkZUsxgF5pl7pBN4zhNngH4Z9uyWnMkUbXmSdgSnsLvYAhPXsflvaJSWB9wOEDewj87inpi5zmsETpDWaPfB4VIEipuoCD+tG46UOC33ZFLblIt5xCaD5C7L3nagdELxxQjkGSL/P7D/H8TX1GxCVrj0/GUnYywAjsfzOVLbTrAZI8m6e5PXuGsSSxhhyZNPKadKbe1SqiA7fexg3/7GluEcII4odzRLoLHD0oZbN4NyUH4Qwfm0CxV29C20y+fUO7pK8TSB88+RrCM4NU4aUGol9TMfxuoSjtwERmBAf0/lHGdjK5VL6X2aLgHUPjb+mQsrJp50wMgAlwyhFCqBewZtVjDsyt5iyaJXPP0abG0aZH3ybH7TA3Y9I3l9bwAuK9xMbPz0qcpzLbz9CU0AujUR0xpcTp6tgGHzLI7DypOP/u2Xgcp7a7Jy0N2gVJOeffQs87HO5LoqiRUe3t/59nsz47NlPk47d7ULxqyWfDDbke4pZln7KGdpRmwGuvvn/muG346AHeILGE5EzDUgNx3zBsJgoKdPJoNbjczuZPOxQoLFzIgQ8KK8FdXzSWtkHvBf7BX/Kp939qzWM+?v=11&pv=1\",\"signature\":\"cnVyQEIiz+GRVbCaNAWlIYtApitoiy1xsdP56ISXUPu6ztxsU96gW8rPEPXzXSJZ5MvTTaSPl8MnLRU5gLzF4hcg12GlOiAhs4tUq0+zqZd7wEj3j8LigpgfwKv+A4Sqam4xbxTzCG4QxVS7FNWyEv8Xc/WMXDmjF2zCV1K5AMc=\",\"templateUrl\":\"https://file-link.pinduoduo.com/yunda_std\",\"ver\":\"11\"}', 3, '2024-06-17 18:10:11', NULL, '2024-06-19 13:59:24', '电子面单发货');
INSERT INTO `erp_ship_waybill` VALUES (3, '296895169038', 3, 4, NULL, '8517056312501', 'DSBK', 'M2nRUgVFQSScIaupiQmXIBhP7NfF3Zg+ki2yNr6SlPpes6nVbtdG4M/io3j12ihTRreFfh68Siul/02fEes5JsFP8d2o7AUIBFT8rajCa+tY/NaAnUvGteH6CERH0XNGn1N8U0KwYC9HzF/d2S80yIyRTQEt/DU17rwD8bo9gnfwW/xDVM2wx5FRmkaMv2ZWv2vi1/IE1YzoE0G4FH/3Qs4dC/uehpUvg6sNLR7d+/r+4VMns+Tq5+/51ErDGPKjpx1O1TDa+K4gqilNjRabt6nAXCPtqsmq5WDrmEZBriys7zISvPVZe3LuMWInWTqMbI+jWiouDWsGDifjoxICQJjncgeYgDX/zwEP+uE3xuZ5pCmJZbN84065GDTMt3uE0rjbqU9lFgex3dDPC0N3y3YnZoRZEe8uWw7RBx1eGkCZhVxmZ5aDFEyv/E9unbuoxaBrDlc1uQIvEEDzZ824NjS55l2u03ruUIL4uCRHGGypsyL+Kp4eKXFtRD3sHT+wB5phHYcVUnqFDor+HrhrL3ODX1m4MoBFU4d8JOVoZmfEDSXc7LibrJ5HbWNhnIl0Wrd+qrRPJb+32D785qn7495Fc10KrIfnQ3wYnkhAZ3H8aI0nYcFwfTciK/lpzFniIqweoeXzeN5+/WaPFkovMWgXVfZHwYBJvOP9SfyQJrsrNmtDUSibA0aGCEjNEDyuUeGvkUZ0fi9bg7nwCXuFhvj3f96pE99s2IUh8tWnXjiQtvqF/eVBUsd6PPSwyNM4uEPd1Hn/bJqDHdgkQX4G1AO/L9yCJrrCBvFSCrJSr8Uifw5NUJowcV+s83i+/DlPQOJdqeyQ9jLXheD44kHb56cnPJFYSyjHUaeFiH/hCV0mGBdaea/GsOTogIh2kCbusgYn45hVStqfI0AfEeLGWU1F+xd66FenbFL3797X5XniZKiuyjFTG9ve/KFLkGrLZ01OuVzBHbwOSoHxM30kOwY2QwPUxKTrlHGimVG0JUKlM5zXBNwOdPMNIqZaunwvmW4cBC9gNgBSQiUvDHfpfh1MhUsVa0ABxDm7xi+FO+VxjY3xNCQb0ZtnwETbwNGM0IYr3U+W5bbbh7Wb+/rE6Xme6M6WAkxJjoJHbfcnb4V5S7j+5USgHHS1ySLIbRB7OSlbevKUvJe5qftF6J2i9zxKKRQCYdaCt4HggSUxsg96PAaNlaB/7TOM0Uy/rgRf9t0XnmQo82KgcHrt2BGc79B0sbF3tkzRNKoK8Wzpk4fA3iSCfKNqN2u6c0NJiSx26CwGHmWrlxtH6jel7DcuQkwpoybq1MeyZ/zK/Ohfheac4xHx3scBK4UIskmci0XPak59SdFZY96zveUpegQhfKyHGj58LrCTMNmuJtGVENMIGtjSHm1Q5xtN6gck4bAx+CqZySif43NaKZzSNZypE0K4HAEbepJkwJQgbam3gT3mhISCGjwug6p5pNeBfMUch4bWGbUr8gOjl3d2J5ohacl4fML4U1BOv/n7+w28aXVX9vxTryjgPSupKpGD51vNkdJmd2e9jwx12f7DxnUeuKOVSWdqqPHSVPzXcxMUS42uDPy5lfxQFDeyV8MEdM9BzBDYvL+kG/JhUGwneXodh/8px3bjH0RjQxnVzJx+s3X/taJ5XpESiY6He0ROaOFISwwOu15K/LNF98lgrgKw6sJ+uDCKN+2hu/PJAdD77BvkoB49MM6UdItEN8a+YWY/Q9dF8oCzq8sN+Do6nOTaZ/o0pU6SQLmI/QODacxvpvM+w1T/xN9EvVRiz+H3CFZY6HqMci3SsCE7duqokJRgal+bVOOczP7IFwXU864jYOtJ8o7QBSO1cVr+ZLm7uEw3F+otzCR/fMPxjZDU7sFNtInO6PPT2UxuFmihfplkEsWTAZqsKyJWtjXNEcptXih4AnTM7VKQGBZ0alrRD7nxYQIUqh+QLWUs7ssHnfD/gzfoREJ8Z7wjGFTeNDXBEO97vTvUOq2ASIItt5kSWRDsdaXEKoI7nFjYWLn46owXndeX3Til+bDUB1UmBxtxEKQvXi2TUhkCU+uYK7SCxyPeLsKwh4KbJU0RG1tunB55HZmFSONHwFhW9oGMpyk8JYydFs81ZvCEF/dj6ZeDo9EroADkkQEIEgiTqMZrgqt43h4K5BqFUfs5mVKESSCZtJFNKVshbgoj4NffIgva2Uzb/IDwypAwmwQR5O2vQlc7/ltuLIpNwX5IPQudaxD5o6+RAWUGgR4D+2tNylaIcMnCjYDIrRy/5DHzsC1Jwhy6iBmQl1wkSbXAUj6miHMRvsfQNBM+pdR6nCwdnIR5EVyfCQUYooSiO/naG/Sh/nLeHr4fd8oAIBqvA4+vTYAPAtVvAj8R2XTimagc9zn+k9qMls5gqw6P1T48K3kjqdVWLSiNPcJ9YviUHDU2dxqKIsok', 2, '2024-06-18 19:36:29', NULL, '2024-06-18 19:57:49', '获取打印数据');
INSERT INTO `erp_ship_waybill` VALUES (4, '6930146130276587395', 6, 4, NULL, '9426145791765', 'youzhengguonei', 'gHDyo+Sr5TcTuj8rx7pRpDt5TXWbWlxXTZqAQfaUO+W23xx5T7vxuTu0Pb/aco6FJvKeiDkc7z5cyQC9bGH3Rzh9A1Q44I0FIFih/jEzZ5G5hRaQSsxJqkflgbEpUWVL0tc6fmTj+FsgpQ6iob8DLPiIjxgkeHUc3c68dWYU+jNQ2NsoigdPE9uPbzXzQKooMZ/vE83r2bBXmqX1yWpAEUi59kifP0761RS8BivZ+Wls50QEv2QWCGwaQcZS7qUGlzulQWS7MC8LrfIwRUC0GcZfVuUOqNLf0V7RYy9QBQYdpw4+NWIdPwrSQOyVaZuiP7Dd+cCy1rVJnFpNyk/6B8y8VFjyl3XLSs9Tz5njW6PTy/AdD6SH867HW2kX/nIEKT7EIxkFnrjiSacI1fODFpA7HG2tdG8c8t1UOEqWbhm8zzQGXULQCNyiM6GnBfx24vhjU/Y5x2hTqJvMn+PdePCmnJgukfn4AO7SjqmnI17UZiZb+9nIKNM6C5SMZu9U6fIz1fTP/TIh0j8yfP35QuW2fcWmou3XRqgYnonlfUb+rMn64GYy6mHl92AFvXt23+Y0Td+dIuZT5UY5yf3rykeOjxZ4WWntsC47ELlgOgkZkWjfGNjtDWX+LqYb/2YhD1O2DPAAJozi+wYq/anIw6wOhCGwIhp/gnPV2dVZlUpmuDF2yoRF4fhe+ofuiqlhG5SLuhH913fjHis40b7/jUWqnfnfYTzGxThSYh43FU6eigfXwuun+cW85rg7vE1hV6JzFHxZr8kXdl4pl2nV4AsF4SZI6blkcpQBSRjyYEClmwSZIO+KEMoAP2TEffuPi3cmr9yii7umSsV/PPzuPW+TvqwXaoll701HDJJ3X22omBt/NMsVzWqLeqhyuyndRltkTnPOhkeKyvYfDEoBiKIBNkYQdSSyQYly8lI5ghSfWpdpHv9nysLnngfNq1bwnrSciSDJZcByrECQBU0eiBAhwRCuttFAr9di6V1pX+HakTRTkxKyjFFF50qlh6B0Kz+OAk0npYmTzE/CDdpUNsuoBCDyCW4PmGnRusOspfeisVtGxK7HV95xmK/mlhyQHEO7qphW5LEOWnOpphQJg3VnXRyL7Sy4k01lB2M6WBXNMYE8Wi+8PB0ocSQQOrxC5elimGQ8IXtfMS7+MBlI/in2P+Ey6KOw5B/FRVxqwPcN9AMOhk3yfMEDQjvIr9y4WKGpv4ITDpHaZ7AXYxvJknXnes/RRh7BIImwyiyhw9Dt3pU1bD+jaFEg4Sgu4fJxUbIICuaUpa/Z3xD7MSocEHCRPChuXivkcY/7nNTMaxIQu+B5DU22pddkYd+Krs+lhKYJI93JYP1t3tbTO1bC2ba0yUIG0aVR/3NqGR+7mvG5Fa0/d2EILLmxaUzoQY2rdAg05D95lFRM/4WpuJ11VXrBpIm0vBK9bj3Qa5HsrP1/IK8/sAuS9/qmP8eglhquWNinJi0HSMYcvQTnrTYcJ7AfeJ7yUr2bf5yRmpSk/1bUsXNOFC6fviw5cBZeCYKUi0DmS3vnuIwN/vnb/9t3Ki7mdiaM6u+8gVxR9P63j+dFQldSSr+RoZadgWH994W45sxoBFjMWNyVOzFKWr49a8rVvzipnbBxOy3eY8V0+jlIsbQvxa0FfLHb1asd7sI0X41wTum0D/hExhco1Hv0X9aBjReEr//S49eXmEYpvwn39CBt/uT+Ii/hWf4FEMAzRfcwEVOpVDqQ7jGk4BAa6VR6mYx2h5YIkVO/Ox0IPTbOqzYWxwJxB1zJG2AwFnqS39F8Ejn/SMga20SJSOA0MnHXc6S8FhBX4L1I7OyZmXvddzOCJFgc+juBiswQcRJedwtZrCk5QzbGaDXyoAv1k6HZRiw7Bhuh5XjXFcnQTKYhOUUjuuo/1ck4JeLN5SFWd6TgfkZ3lx2/k1VkIcwoVDM843X6W0GQiIdbV/2OlK38kK42P+YZflk65d/yKw/HHbF3A0joVF7fkROUFt2HykXOtV93InYUMjti6RlIFmIwYX4QfHCFqfUU2FBF3pqGNvAtlWM8kwb0cYcSPW/h0aqmAqNgweUrGLJ4xVzb8Yipzv8E0rE2qApPXbw18hcMZLuRsgpuKCq7Bsv3ogE2BGZ5+3a+PcOGdLs0h/RkuUt7CQHPq29QYoXnVATjswSUhgWFm1KDIYBFdIG83FcPpKzx/m6FziUdgd7K8QCo2+4kY1w8I5X7sR4CrsGEiS+XkioS9+pi6gUwPIZEDTZzYJsYWEBwDc6b8HOCaM7FP40+qBgsN7/a8Bwp5freok6Vd7gucBnmVMLJATxUZtv0C6E18P83NrdBCayzQmPJDfe8Urw3ILXf9LLEy067OhoecEi7xm7zI50TIToZlHZV2YJFNm0LYp0FIIt0AQuJV+8BArVHmI9Okz9j1chqkLoRL2j7vh9y1IL3IM1G+axcgHmd1T46/0M6Csj0fm4fF+0lk0S5UrwGmO3ORHitP6XFNV2lR8bVg77RD78OK9OvmBZmWOULoTypcWdb6PoeInf+Ca4ADVlO+2pLrYeJgc46fjt7YIG5q/LUigx7apqU/TjZTXuJh3JaZfE8d8eLr10d9a6ysGPJ5Tszj/GcfKU0GFoeCKdP0qDK3F+AYGhKmmQhhNmLyldTNtr16D2JNzp/Qvzl+J54nMDAqUafEhpaw7bJhamHbZ6u6c0bFczFHNb+U+L3JL+pr5hjuLYD8qaCyGGHFeylymj2ZKV/DFY94XA+n4nmnV+nXJhITYuHD8bzDiJhKGwsPub+Z8EtVe/rYiT3x6/1QhbtDvjgOLdwFFvLB8QHzqCebh/Ry3xk+3Yt2gKGXNzjBziMBRZ24sT+Isfe1duCiI4RENKIg7Qq3ptrgbQk4e+mHCJw7vyDIhCP5qwrStloYo6cupwxr1ynoTJUyrbHbkUGQ7oYO/Nh2tQPZRbptCJ98griBEZn1sRYYX+YdIraInxa/pGf7nP5RjBwI8XHYutdDmozaBLYRXxQTKDhW+ht87S+K7jRwjUy5RNddHwMT/jD8nF2x6GUuF7L/2noXsZADWx0kcSduZELDHw1JftXMY/ZjKtfp48KONikORUotKz7ihDIgI0PYu5F+FyrKgcUNndbCvt+cxU2q1M2p3VV6tuOu8qYWjUOeqSDFYU0cEMQjpCBxOqvQt5vqJ827QCbHsLqgcpp8lvf6bEwhkmQSkaneU2x4WAI7EC9OrDhMygo6m0YsJeN59hxtgOi6Ue9efzOETGmreSgjgMihZrHCyoBvDo8It8a0aBX2kOmLepJBtGReKuc/uVXhuvagy6qQY/XYfNH', 1, '2024-06-19 16:08:54', NULL, '2024-06-19 16:13:37', '获取打印数据');
INSERT INTO `erp_ship_waybill` VALUES (6, '3720293415509954816', 2, 4, '3510794146153807873', '73611699835312', 'ZTO', 'JTdCJTIycHJpbnREYXRhJTIyJTNBJTdCJTIyd2F5YmlsbElkJTIyJTNBJTIyNzM2MTE2OTk4MzUzMTIlMjIlMkMlMjJwcmludFRpbWUlMjIlM0ElMjIyMDI0JTJGMDYlMkYyMCUyMDEwJTNBNTElMjIlMkMlMjJzZXJ2aWNlcyUyMiUzQSU1QiU1RCUyQyUyMnJlY2VpdmVyTmFtZSUyMiUzQSUyMiVFNSVBRSVBMyoqJTIyJTJDJTIycmVjZWl2ZXJQaG9uZSUyMiUzQSUyMjEzNyoqKiozODQwJTIyJTJDJTIycmVjZWl2ZXJBZGRyZXNzJTIyJTNBJTIyJUU0JUI4JThBJUU2JUI1JUI3JUU1JUI4JTgyJUU0JUI4JThBJUU2JUI1JUI3JUU1JUI4JTgyJUU2JUI1JUE2JUU0JUI4JTlDJUU2JTk2JUIwJUU1JThDJUJBJUU1JUJDJUEwJUU2JUIxJTlGJUU5JTk1JTg3JUU1JUFEJTk5JUU2JUExJUE1JUU4JUI3JUFGMjM4JUU1JUJDJTg0MzAlRTUlOEYlQjcyMDIlRTUlQUUlQTQlMjIlMkMlMjJzZW5kZXJOYW1lJTIyJTNBJTIyJUU1JTkwJUFGJUU4JTg4JUFBJTIyJTJDJTIyc2VuZGVyUGhvbmUlMjIlM0ElMjIxMzYzMDAwNTMzMyUyMiUyQyUyMnNlbmRlckFkZHJlc3MlMjIlM0ElMjIlRTUlQUUlODklRTUlQkUlQkQlRTclOUMlODElRTQlQkElQjMlRTUlQjclOUUlRTUlQjglODIlRTglQjAlQUYlRTUlOUYlOEUlRTUlOEMlQkElRTglOEElQjElRTYlODglOEYlRTYlQTUlQkMlRTglQTElOTclRTklODElOTMlRTclQTUlOUUlRTklQkUlOTklRTglQjAlQjclRTQlQkElQTQlRTYlOTglOTMlRTQlQjglQUQlRTUlQkYlODMlMjIlMkMlMjJzaXRlQ29kZSUyMiUzQSUyMjU1ODMwJTIyJTJDJTIyZXdheWJpbGxPcmRlcklkJTIyJTNBJTIyMzUxMDc5NDE0NjE1MzgwNzg3MyUyMiUyQyUyMmJhZ0FkZHIlMjIlM0ElMjIlRTYlQjIlQUElRTQlQjglOUMlMjIlMkMlMjJtYXJrJTIyJTNBJTIyMzEwLSUyMFA2JTIwMDMxJTIwJTVCQjMxJTVEJTIyJTJDJTIyc3RvcmVOYW1lJTIyJTNBJTIyJUU5JUFBJTg0JUU5JUI5JUJGJUU2JTlDJTlCJUU1JUIxJUIxJUU0JUI4JTkzJUU1JThEJTk2JUU1JUJBJTk3JTIyJTJDJTIyY3VzdG9tZXJOb3RlcyUyMiUzQSUyMiUyMiUyQyUyMm1lcmNoYW50Tm90ZXMlMjIlM0ElMjIlMjIlMkMlMjJvcmRlcklkJTIyJTNBJTIyMzcyMDI5MzQxNTUwOTk1NDgxNiUyMiU3RCUyQyUyMnRlbXBsYXRlJTIyJTNBJTdCJTIydGVtcGxhdGVJZCUyMiUzQSUyMnNpbmdsZSUyMiUyQyUyMnRlbXBsYXRlTmFtZSUyMiUzQSUyMiVFOSVCQiU5OCVFOCVBRSVBNCVFNyVBOSVCQSVFNiVBOCVBMSVFNiU5RCVCRiUyMiUyQyUyMnRlbXBsYXRlRGVzYyUyMiUzQSUyMiVFNCVCOCU4MCVFOCU4MSU5NCVFNSU4RCU5NSVFNiVBMCU4NyVFNSU4NyU4NiVFNiVBOCVBMSVFNiU5RCVCRiUyMiUyQyUyMnRlbXBsYXRlVHlwZSUyMiUzQSUyMnNpbmdsZSUyMiUyQyUyMm9wdGlvbkxpc3QlMjIlM0ElN0IlN0QlMkMlMjJvcHRpb25zJTIyJTNBJTVCJTVEJTJDJTIyY29kZSUyMiUzQTAlMkMlMjJkZWxpdmVyeUlkJTIyJTNBJTIyWlRPJTIyJTJDJTIydGVtcGxhdGVVcmwlMjIlM0ElMjJodHRwcyUzQSUyRiUyRm1tZWMtc2hvcC0xMjU4MzQ0NzA3LmNvcy5hcC1zaGFuZ2hhaS5teXFjbG91ZC5jb20lMkZzaG9wJTJGcHVibGljJTJGMjAyMy0xMC0yNSUyRjNlY2JiM2FhLTViY2YtNDA0ZC05NzJhLThhMDhhODE2MjIzYy5odG1sJTIyJTJDJTIyY3VzdG9tQ29uZmlnJTIyJTNBJTdCJTIyd2lkdGglMjIlM0E2NTYlMkMlMjJoZWlnaHQlMjIlM0EzMDAlMkMlMjJsZWZ0JTIyJTNBNjAlMkMlMjJ0b3AlMjIlM0E5MzAlN0QlMkMlMjJ3aWR0aCUyMiUzQTc2JTJDJTIyaGVpZ2h0JTIyJTNBMTMwJTdEJTdE', 2, '2024-06-20 10:36:50', NULL, '2024-06-20 10:48:00', '打印面单');

-- ----------------------------
-- Table structure for s_shop
-- ----------------------------
DROP TABLE IF EXISTS `s_shop`;
CREATE TABLE `s_shop`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺名',
  `nick_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺别名',
  `ename` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标识',
  `company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺主题',
  `platform` int NOT NULL COMMENT '对应第三方平台Id',
  `shop_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺url',
  `order_num` int NOT NULL DEFAULT 9 COMMENT '排序',
  `is_delete` int NOT NULL DEFAULT 0 COMMENT '是否删除0否1是',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `seller_shop_id` bigint NOT NULL DEFAULT 0 COMMENT '第三方平台店铺id',
  `app_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Appkey(微信视频号小店专用)',
  `app_sercet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Appsercet(微信视频号小店专用)',
  `access_token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方平台sessionKey（access_token）',
  `access_expires_in` bigint NULL DEFAULT NULL COMMENT 'accessToken到期（秒）',
  `access_token_begin` bigint NULL DEFAULT NULL COMMENT 'access_token开始时间',
  `refresh_token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '刷新token',
  `refresh_token_timeout` bigint NULL DEFAULT NULL COMMENT '刷新token过期时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '电商平台店铺表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_shop
-- ----------------------------
INSERT INTO `s_shop` VALUES (1, '其他渠道', 'aaa', NULL, NULL, 99, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, '2024-06-04 11:19:49', '2024-06-04 15:07:44');

-- ----------------------------
-- Table structure for s_shop_platform
-- ----------------------------
DROP TABLE IF EXISTS `s_shop_platform`;
CREATE TABLE `s_shop_platform`  (
  `id` int NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '平台名',
  `app_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'appKey',
  `app_secret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'appSecret',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `server_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务url',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回调url',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '电商平台配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_shop_platform
-- ----------------------------
INSERT INTO `s_shop_platform` VALUES (1, '亚马逊', '9380846', 'MJC3doohMxCG', '', '', 'http://qihangerp.cn', NULL, '2024-06-04 11:10:58');
INSERT INTO `s_shop_platform` VALUES (2, 'eBay', ' eBay', ' eBay', NULL, '', NULL, NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (3, 'Wish', 'Wish', 'Wish', NULL, NULL, 'http://qihangerp.cn', NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (4, 'AliExpress', 'AliExpress', 'AliExpress', '', 'AliExpress', NULL, NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (5, 'Shopee', 'Shopee', 'Shopee', '', 'Shopee', 'http://qihangerp.cn:8099/home', NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (6, 'Lazada', 'Lazada', 'Lazada', NULL, 'Lazada', NULL, NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (7, 'Temu', 'Temu', 'Temu', NULL, '', NULL, NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (8, '速卖通', '速卖通', '速卖通', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (9, 'TikTok', 'TikTok', 'TikTok', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_shop_platform` VALUES (99, 'ERP系统', '', '', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for s_shop_pull_lasttime
-- ----------------------------
DROP TABLE IF EXISTS `s_shop_pull_lasttime`;
CREATE TABLE `s_shop_pull_lasttime`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `pull_type` enum('ORDER','REFUND') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型（ORDER:订单，REFUND:退款）',
  `lasttime` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2128068612 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺更新最后时间记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_shop_pull_lasttime
-- ----------------------------
INSERT INTO `s_shop_pull_lasttime` VALUES (1, 1, 'ORDER', '2024-04-09 16:23:00', '2024-03-23 15:56:13', '2024-04-09 16:23:00');
INSERT INTO `s_shop_pull_lasttime` VALUES (2, 1, 'REFUND', '2024-04-09 17:43:00', '2024-03-24 13:03:54', '2024-04-09 17:43:00');
INSERT INTO `s_shop_pull_lasttime` VALUES (3, 2, 'ORDER', '2024-04-09 19:44:00', '2024-03-10 13:00:07', '2024-04-09 19:44:00');
INSERT INTO `s_shop_pull_lasttime` VALUES (4, 2, 'REFUND', '2024-04-10 23:35:56', '2024-03-24 13:50:24', '2024-04-11 11:35:58');
INSERT INTO `s_shop_pull_lasttime` VALUES (5, 4, 'ORDER', '2024-06-13 15:30:58', '2024-06-13 14:53:16', '2024-06-13 15:31:02');
INSERT INTO `s_shop_pull_lasttime` VALUES (6, 6, 'ORDER', '2024-05-25 15:27:38', '2024-05-10 10:23:23', '2024-06-19 15:12:01');
INSERT INTO `s_shop_pull_lasttime` VALUES (2128068611, 4, 'REFUND', '2024-06-20 08:56:07', '2024-06-20 08:56:45', NULL);

-- ----------------------------
-- Table structure for s_shop_pull_logs
-- ----------------------------
DROP TABLE IF EXISTS `s_shop_pull_logs`;
CREATE TABLE `s_shop_pull_logs`  (
  `id` bigint NOT NULL COMMENT '主键Id',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `shop_type` int NOT NULL COMMENT '平台id',
  `pull_type` enum('ORDER','REFUND','GOODS') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型（ORDER订单，GOODS商品，REFUND退款）',
  `pull_way` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拉取方式（主动拉取、定时任务）',
  `pull_params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拉取参数',
  `pull_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '拉取结果',
  `pull_time` datetime NULL DEFAULT NULL COMMENT '拉取时间',
  `duration` bigint NULL DEFAULT NULL COMMENT '耗时（毫秒）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺更新日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_shop_pull_logs
-- ----------------------------
INSERT INTO `s_shop_pull_logs` VALUES (1800363757492686849, 4, 4, 'GOODS', '主动拉取', '{PageNo:1,PageSize:100}', '{successTotal:67}', '2024-06-11 11:05:35', 8949);
INSERT INTO `s_shop_pull_logs` VALUES (1801145794080260098, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-12T14:51:59.107741300,endTime:2024-06-13T14:51:59.107741300}', '{insert:75,update:9,fail:0}', '2024-06-13 14:51:59', 76579);
INSERT INTO `s_shop_pull_logs` VALUES (1801147727423606786, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T13:51:59,endTime:2024-06-13T15:00:26.824042500}', '{insert:0,update:4,fail:0}', '2024-06-13 15:00:27', 29766);
INSERT INTO `s_shop_pull_logs` VALUES (1801148172342792194, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T14:00:27,endTime:2024-06-13T15:02:32.864323100}', '{insert:0,update:3,fail:0}', '2024-06-13 15:02:33', 9804);
INSERT INTO `s_shop_pull_logs` VALUES (1801148694571388930, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T14:02:33,endTime:2024-06-13T15:04:46.705654400}', '{insert:0,update:3,fail:0}', '2024-06-13 15:04:47', 468);
INSERT INTO `s_shop_pull_logs` VALUES (1801151495233998850, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T14:04:47,endTime:2024-06-13T15:15:54.368214700}', '{insert:0,update:3,fail:0}', '2024-06-13 15:15:54', 534);
INSERT INTO `s_shop_pull_logs` VALUES (1801152518874861570, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T14:15:54,endTime:2024-06-13T15:19:58.532769600}', '{insert:0,update:2,fail:0}', '2024-06-13 15:19:59', 431);
INSERT INTO `s_shop_pull_logs` VALUES (1801153650531635202, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T14:19:59,endTime:2024-06-13T15:24:28.077552900}', '{insert:3,update:0,fail:0}', '2024-06-13 15:24:28', 648);
INSERT INTO `s_shop_pull_logs` VALUES (1801155298842894337, 4, 4, 'ORDER', '主动拉取', '{startTime:2024-06-13T14:24:28,endTime:2024-06-13T15:30:57.981538400}', '{insert:3,update:0,fail:0}', '2024-06-13 15:30:58', 3836);
INSERT INTO `s_shop_pull_logs` VALUES (1803318846293458945, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-10 09:27:38,endTime:2024-05-11 09:27:38}', '{insert:0,update:3,fail:0}', '2024-06-19 14:48:08', 3572);
INSERT INTO `s_shop_pull_logs` VALUES (1803318931274252289, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-11 08:27:38,endTime:2024-05-12 08:27:38}', '{insert:0,update:3,fail:0}', '2024-06-19 14:48:31', 456);
INSERT INTO `s_shop_pull_logs` VALUES (1803318999888871426, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-12 07:27:38,endTime:2024-05-13 07:27:38}', '{insert:0,update:3,fail:0}', '2024-06-19 14:48:48', 474);
INSERT INTO `s_shop_pull_logs` VALUES (1803319288897388546, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-13 06:27:38,endTime:2024-05-14 06:27:38}', '{insert:0,update:3,fail:0}', '2024-06-19 14:49:13', 44010);
INSERT INTO `s_shop_pull_logs` VALUES (1803320761299406849, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-14 05:27:38,endTime:2024-05-15 05:27:38}', '无订单可以更新', '2024-06-19 14:55:19', 28366);
INSERT INTO `s_shop_pull_logs` VALUES (1803321110533935105, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-14 05:27:38,endTime:2024-05-15 05:27:38}', '无订单可以更新', '2024-06-19 14:56:14', 57810);
INSERT INTO `s_shop_pull_logs` VALUES (1803321780238442498, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-14 05:27:38,endTime:2024-05-15 05:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 14:59:31', 19413);
INSERT INTO `s_shop_pull_logs` VALUES (1803321908961632257, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-15 04:27:38,endTime:2024-05-16 04:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:00:22', 257);
INSERT INTO `s_shop_pull_logs` VALUES (1803321929354338305, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-16 03:27:38,endTime:2024-05-17 03:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:00:26', 264);
INSERT INTO `s_shop_pull_logs` VALUES (1803321947377262594, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-17 02:27:38,endTime:2024-05-18 02:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:00:31', 247);
INSERT INTO `s_shop_pull_logs` VALUES (1803321967539281921, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-18 01:27:38,endTime:2024-05-19 01:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:00:36', 258);
INSERT INTO `s_shop_pull_logs` VALUES (1803322452493176833, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-19 00:27:38,endTime:2024-05-20 00:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:02:30', 986);
INSERT INTO `s_shop_pull_logs` VALUES (1803322484067897346, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-19 23:27:38,endTime:2024-05-20 23:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:02:39', 261);
INSERT INTO `s_shop_pull_logs` VALUES (1803322519690121218, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-20 22:27:38,endTime:2024-05-21 22:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:02:47', 259);
INSERT INTO `s_shop_pull_logs` VALUES (1803322541861212161, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-21 21:27:38,endTime:2024-05-22 21:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:02:52', 285);
INSERT INTO `s_shop_pull_logs` VALUES (1803322565525475329, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-22 20:27:38,endTime:2024-05-23 20:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:02:58', 277);
INSERT INTO `s_shop_pull_logs` VALUES (1803322583531622401, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-23 19:27:38,endTime:2024-05-24 19:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:03:02', 333);
INSERT INTO `s_shop_pull_logs` VALUES (1803322601407746049, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-24 18:27:38,endTime:2024-05-25 18:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:03:07', 346);
INSERT INTO `s_shop_pull_logs` VALUES (1803323642283003906, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-24 17:27:38,endTime:2024-05-25 17:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:05:52', 82744);
INSERT INTO `s_shop_pull_logs` VALUES (1803324284355448834, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-24 16:27:38,endTime:2024-05-25 16:27:38}', '{insert:0,update:0,fail:0}', '2024-06-19 15:08:19', 88797);
INSERT INTO `s_shop_pull_logs` VALUES (1803324874317819905, 6, 6, 'ORDER', '主动拉取订单', '{startTime:2024-05-24 15:27:38,endTime:2024-05-25 15:27:38}', '{insert:1,update:0,fail:0}', '2024-06-19 15:10:48', 77677);
INSERT INTO `s_shop_pull_logs` VALUES (1803592792129568770, 4, 4, 'REFUND', '主动拉取', '{startTime:2024-06-19T08:56:07.415911500,endTime:2024-06-20T08:56:07.415911500}', '{insert:7,update:0,fail:0}', '2024-06-20 08:55:38', 66837);

-- ----------------------------
-- Table structure for s_shop_setting
-- ----------------------------
DROP TABLE IF EXISTS `s_shop_setting`;
CREATE TABLE `s_shop_setting`  (
  `id` int NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置名',
  `app_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'appKey',
  `app_secret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'appSecret',
  `access_token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '阿里access weiTokenResponse',
  `expires_in` bigint NULL DEFAULT NULL COMMENT '到期',
  `access_token_begin` bigint NULL DEFAULT NULL COMMENT 'access_token开始时间',
  `refresh_token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '刷新token',
  `refresh_token_timeout` bigint NULL DEFAULT NULL COMMENT '刷新token过期时间',
  `modify_on` bigint NOT NULL COMMENT '更新时间',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `request_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求url',
  `third_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第三方店铺id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方平台设置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_shop_setting
-- ----------------------------
INSERT INTO `s_shop_setting` VALUES (1, '1688', '9380846', 'MJC3doohMxCG', '', NULL, NULL, '', NULL, 1620181504, '1688开放平台', NULL, NULL);
INSERT INTO `s_shop_setting` VALUES (2, '视频号', ' ', ' ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `s_shop_setting` VALUES (3, '京东POP', 'FB4CC3688E6F9065D4FF510A53BB60FF', '40e8c8b2427f4e6db8f4a39af27d719e', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `s_shop_setting` VALUES (4, '淘宝天猫', '31014100', '7b0769269b0c0ca88949791c14eb3a5c', '', NULL, NULL, NULL, NULL, 1573610045, '淘宝开放平台', 'http://gw.api.taobao.com/router/rest', NULL);
INSERT INTO `s_shop_setting` VALUES (5, '拼多多', 'b92194d1af904c8a86a2c9eff6f9bfb0', '8da714f8dcbfb12d3972626ef8acfc0737aacecb', '', NULL, NULL, '', NULL, 1625123356, '拼多多开放平台', 'https://gw-api.pinduoduo.com/api/router', '');
INSERT INTO `s_shop_setting` VALUES (6, '抖音', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, 'https://openapi-fxg.jinritemai.com', NULL);
INSERT INTO `s_shop_setting` VALUES (7, '小红书', '621919dd99484598a69c', '1747d77da2ce58b97483932041c5503e', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://ark.xiaohongshu.com', NULL);
INSERT INTO `s_shop_setting` VALUES (8, '快手', '', '', '', NULL, NULL, '', NULL, 1593392516, NULL, NULL, NULL);
INSERT INTO `s_shop_setting` VALUES (99, 'ERP系统', '', '', NULL, NULL, NULL, NULL, NULL, 1573610045, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for scm_purchase_contract
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_contract`;
CREATE TABLE `scm_purchase_contract`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_id` bigint NULL DEFAULT NULL COMMENT '供应商id',
  `bill_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '单据编号',
  `contractNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `billDate` date NULL DEFAULT NULL COMMENT '单据日期',
  `userId` smallint NULL DEFAULT 0 COMMENT '制单人id',
  `userName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '制单人',
  `transType` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '交易类型:BUY购货 BUYR退货 SALE销售 SALER退销 OTHER其他入库',
  `transTypeName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易类型名称',
  `totalAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '购货总金额',
  `disRate` double NULL DEFAULT 0 COMMENT '整单折扣率',
  `disAmount` double NULL DEFAULT 0 COMMENT '整单折扣金额',
  `amount` double NULL DEFAULT 0 COMMENT '折扣后金额',
  `totalDiscount` double NULL DEFAULT 0 COMMENT '总折扣（计算商品折扣和整单折扣之和）',
  `totalQuantity` bigint NULL DEFAULT 0 COMMENT '总数量',
  `qualifiedQuantity` bigint NULL DEFAULT 0 COMMENT '合格数量',
  `inQuantity` bigint NULL DEFAULT 0 COMMENT '已入库数量(已出库数量)',
  `rpAmount` double NULL DEFAULT 0 COMMENT '本次付款',
  `arrears` double NULL DEFAULT 0 COMMENT '本次欠款',
  `freight` double NULL DEFAULT 0 COMMENT '运费',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `billType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'PO采购订单 OI其他入库 PUR采购入库 BAL初期余额',
  `billStatus` tinyint(1) NULL DEFAULT 0 COMMENT '订单状态 0待审核1正常2已作废3已入库 11已验货',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '1删除  0正常',
  `checkName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '采购单审核人',
  `checked` tinyint(1) NULL DEFAULT 0 COMMENT '采购单审核状态0待审核1已审核',
  `createTime` bigint NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` bigint NULL DEFAULT NULL COMMENT '更新时间',
  `salesId` smallint NULL DEFAULT NULL,
  `customerFree` double NULL DEFAULT 0 COMMENT '客户承担费用',
  `hxStateCode` tinyint NULL DEFAULT 0 COMMENT '核销状态 0未付款  1部分付款  2全部付款',
  `hxAmount` double NULL DEFAULT 0 COMMENT '本次核销金额',
  `payment` double NULL DEFAULT 0 COMMENT '本次预收款',
  `srcOrderNo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `srcOrderId` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单id',
  `logisticsNo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递物流单号（）',
  `logisticsCompany` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `logisticsCompanyCode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司代码',
  `logisticsNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `locationId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库id多个,分割',
  `inLocationId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '调入仓库ID多个,分割',
  `outLocationId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '调出仓库ID多个,分割',
  `serialno` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '序列号',
  `checkoutName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '检验人',
  `checkoutTime` bigint NULL DEFAULT 0 COMMENT '检验时间',
  `checkoutStatus` int NULL DEFAULT 0 COMMENT '0 未检验  1已检验',
  `qualifiedStatus` int NULL DEFAULT 0 COMMENT '0为合格数量为0,1为合格数量不为0',
  `stockInName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库人',
  `stockInTime` bigint NULL DEFAULT 0 COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_contract
-- ----------------------------

-- ----------------------------
-- Table structure for scm_purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order`;
CREATE TABLE `scm_purchase_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_id` bigint NOT NULL COMMENT '供应商id',
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_date` date NOT NULL COMMENT '订单日期',
  `order_time` bigint NOT NULL COMMENT '订单创建时间',
  `order_amount` decimal(10, 2) NOT NULL COMMENT '订单总金额',
  `ship_amount` decimal(6, 2) NOT NULL COMMENT '物流费用',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '订单状态 0待审核1已审核101供应商已确认102供应商已发货2已收货3已入库',
  `audit_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '采购单审核人',
  `audit_time` bigint NULL DEFAULT 0 COMMENT '审核时间',
  `supplier_confirm_time` datetime NULL DEFAULT NULL COMMENT '供应商确认时间',
  `supplier_delivery_time` datetime NULL DEFAULT NULL COMMENT '供应商发货时间',
  `received_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `stock_in_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 470 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order
-- ----------------------------
INSERT INTO `scm_purchase_order` VALUES (466, 33, 'PUR20240116144408', '2024-01-16', 1705387448, 190.00, 0.00, NULL, 3, '启航', 1705387461, '2024-01-16 14:44:30', '2024-01-16 14:49:49', '2024-01-16 00:00:00', '2024-01-16 14:50:58', 'admin', '2024-01-16 14:44:09', 'admin', '2024-01-16 14:50:58');
INSERT INTO `scm_purchase_order` VALUES (467, 33, 'PUR20240128113656', '2024-01-28', 1706413016, 42.00, 10.00, NULL, 102, '启航', 1706413030, '2024-01-28 11:42:19', '2024-01-28 12:07:32', NULL, NULL, 'admin', '2024-01-28 11:36:56', 'admin', '2024-01-28 12:07:32');
INSERT INTO `scm_purchase_order` VALUES (468, 31, 'PUR20240424162152', '2024-04-24', 1713946912, 420.00, 12.00, NULL, 3, 'qh', 1713946921, '2024-04-24 16:22:14', '2024-04-24 16:22:40', '2024-05-25 00:00:00', '2024-05-25 09:40:04', 'admin', '2024-04-24 16:21:52', 'admin', '2024-05-25 09:40:04');
INSERT INTO `scm_purchase_order` VALUES (469, 33, 'PUR20240525093505', '2024-05-25', 1716600905, 210.00, 0.00, NULL, 3, 'q', 1716600916, '2024-05-25 09:35:21', '2024-05-25 09:35:36', '2024-05-25 00:00:00', '2024-05-25 09:35:57', 'admin', '2024-05-25 09:35:06', 'admin', '2024-05-25 09:35:57');

-- ----------------------------
-- Table structure for scm_purchase_order_cost
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_cost`;
CREATE TABLE `scm_purchase_order_cost`  (
  `id` bigint NOT NULL COMMENT '采购单ID（主键）',
  `order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '采购单金额',
  `order_date` date NULL DEFAULT NULL COMMENT '采购订单日期',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `order_spec_unit` int NULL DEFAULT NULL COMMENT '采购订单商品规格数',
  `order_goods_unit` int NULL DEFAULT NULL COMMENT '采购订单商品数',
  `order_spec_unit_total` int NULL DEFAULT NULL COMMENT '采购订单总件数',
  `actual_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际金额',
  `freight` decimal(6, 2) NULL DEFAULT NULL COMMENT '运费',
  `confirm_user` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '确认人',
  `confirm_time` datetime NULL DEFAULT NULL COMMENT '确认时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `pay_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '已支付金额',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `pay_count` int NULL DEFAULT NULL COMMENT '支付次数',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `status` int NULL DEFAULT NULL COMMENT '状态（0未支付1已支付）',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单费用确认表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_cost
-- ----------------------------
INSERT INTO `scm_purchase_order_cost` VALUES (466, 190.00, '2024-01-16', 'PUR20240116144408', 1, 1, 10, 190.00, 0.00, '启航', '2024-01-16 00:00:00', 'admin', 190.00, NULL, 0, NULL, 0, 'admin', '2024-04-17 14:02:43');
INSERT INTO `scm_purchase_order_cost` VALUES (468, 420.00, '2024-04-24', 'PUR20240424162152', 1, 1, 10, 420.00, 0.00, 'q', '2024-04-24 00:00:00', 'admin', 12.00, '2024-04-24 00:00:00', 0, '12', 0, 'admin', '2024-04-24 16:23:47');
INSERT INTO `scm_purchase_order_cost` VALUES (469, 210.00, '2024-05-25', 'PUR20240525093505', 1, 1, 10, 210.00, 0.00, 'q', '2024-05-25 09:35:21', 'admin', 0.00, NULL, 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for scm_purchase_order_item
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_item`;
CREATE TABLE `scm_purchase_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NULL DEFAULT 0 COMMENT '订单id',
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `transType` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '150501采购 150502退货',
  `amount` double NULL DEFAULT 0 COMMENT '购货金额',
  `order_date` date NULL DEFAULT NULL COMMENT '订单日期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `goods_id` bigint NULL DEFAULT 0 COMMENT '商品ID',
  `goods_num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spec_id` bigint NULL DEFAULT 0 COMMENT '商品规格id',
  `spec_num` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `color_value` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `color_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `size_value` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '尺码',
  `style_value` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '款式',
  `price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '单价',
  `dis_amount` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '折扣额',
  `dis_rate` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '折扣率',
  `quantity` bigint NOT NULL DEFAULT 0 COMMENT '数量(采购单据)',
  `inQty` bigint NOT NULL DEFAULT 0 COMMENT '已入库数量',
  `locationId` int NULL DEFAULT NULL COMMENT '入库的仓库id',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '1删除 0正常',
  `status` int NULL DEFAULT 0 COMMENT '状态（同billStatus）0待审核1正常2已作废3已入库',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`transType` ASC) USING BTREE,
  INDEX `billdate`(`order_date` ASC) USING BTREE,
  INDEX `invId`(`goods_id` ASC) USING BTREE,
  INDEX `transType`(`transType` ASC) USING BTREE,
  INDEX `iid`(`order_id` ASC) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1966 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_item
-- ----------------------------
INSERT INTO `scm_purchase_order_item` VALUES (1962, 466, 'PUR20240116144408', 'Purchase', 190, '2024-01-16', '', 9, 'HN8026', 'HN8026牛仔短裤', 32, '2720210080260105', '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', '2XL', '', 19.00, 0.00, 0.00, 10, 0, NULL, 0, 0);
INSERT INTO `scm_purchase_order_item` VALUES (1963, 467, 'PUR20240128113656', 'Purchase', 42, '2024-01-28', '', 29, 'HNP182', 'HNP182弹力紧身贴标牛仔短裤女ins', 438, 'HNP1825004', '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 'XL', '', 21.00, 0.00, 0.00, 2, 0, NULL, 0, 0);
INSERT INTO `scm_purchase_order_item` VALUES (1964, 468, 'PUR20240424162152', 'Purchase', 420, '2024-04-24', '', 68, 'JKL3112', 'JKL3112松紧腰束脚哈伦裤', 1327, 'JKL31120705', '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', '2XL', '', 42.00, 0.00, 0.00, 10, 0, NULL, 0, 0);
INSERT INTO `scm_purchase_order_item` VALUES (1965, 469, 'PUR20240525093505', 'Purchase', 210, '2024-05-25', '', 29, 'HNP182', 'HNP182弹力紧身贴标牛仔短裤女ins', 439, 'HNP1825005', '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', '2XL', '', 21.00, 0.00, 0.00, 10, 0, NULL, 0, 0);

-- ----------------------------
-- Table structure for scm_purchase_order_payable
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_payable`;
CREATE TABLE `scm_purchase_order_payable`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL COMMENT '供应商id',
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '供应商名称',
  `amount` decimal(10, 2) NOT NULL COMMENT '应付金额',
  `date` date NOT NULL COMMENT '应付日期',
  `invoice_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票号码',
  `purchase_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购单号',
  `purchase_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购说明',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态（0已生成1已结算)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购单应付款' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_payable
-- ----------------------------
INSERT INTO `scm_purchase_order_payable` VALUES (1, 33, '中山裤豪', 52.00, '2024-01-28', NULL, 'PUR20240128113656', '{采购商品总数量:2,不同款式:1,不同SKU:1,商品总价:42.00,运费:10}', NULL, 0, '2024-01-28 12:07:32', 'admin', NULL, NULL);
INSERT INTO `scm_purchase_order_payable` VALUES (2, 31, '中山市金客隆服饰有限公司', 432.00, '2024-04-24', NULL, 'PUR20240424162152', '{采购商品总数量:10,不同款式:1,不同SKU:1,商品总价:420.00,运费:12}', '1', 0, '2024-04-24 16:22:40', 'admin', '2024-04-24 17:20:49', NULL);
INSERT INTO `scm_purchase_order_payable` VALUES (3, 33, '中山裤豪', 210.00, '2024-05-25', NULL, 'PUR20240525093505', '{采购商品总数量:10,不同款式:1,不同SKU:1,商品总价:210.00,运费:0}', NULL, 0, '2024-05-25 09:35:36', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for scm_purchase_order_ship
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_ship`;
CREATE TABLE `scm_purchase_order_ship`  (
  `id` bigint NOT NULL COMMENT '采购单ID（主键）',
  `ship_company` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `ship_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `freight` decimal(6, 0) NULL DEFAULT NULL COMMENT '运费',
  `ship_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `receipt_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` int NULL DEFAULT NULL COMMENT '状态（0未收货1已收货2已入库）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `back_count` int NULL DEFAULT NULL COMMENT '退回数量',
  `stock_in_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `stock_in_count` int NULL DEFAULT NULL COMMENT '入库数量',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `order_date` date NULL DEFAULT NULL COMMENT '采购订单日期',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `order_spec_unit` int NULL DEFAULT NULL COMMENT '采购订单商品规格数',
  `order_goods_unit` int NULL DEFAULT NULL COMMENT '采购订单商品数',
  `order_spec_unit_total` int NULL DEFAULT NULL COMMENT '采购订单总件数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单物流表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_ship
-- ----------------------------
INSERT INTO `scm_purchase_order_ship` VALUES (466, '菜鸟速递', 'CN223533300022', 0, '2024-01-16 00:00:00', '2024-01-16 00:00:00', 'admin', '2024-01-16 14:49:49', 2, NULL, 0, '2024-01-16 14:50:58', 0, 'admin', '2024-01-16 14:50:58', '2024-01-16', 'PUR20240116144408', 1, 1, 10);
INSERT INTO `scm_purchase_order_ship` VALUES (467, '菜鸟速递', 'CN345565767', 10, '2024-01-28 00:00:00', NULL, 'admin', '2024-01-28 12:07:32', 0, NULL, 0, NULL, 0, NULL, NULL, '2024-01-28', 'PUR20240128113656', 1, 1, 2);
INSERT INTO `scm_purchase_order_ship` VALUES (468, '菜鸟速递', 'SF232323', 12, '2024-04-24 00:00:00', '2024-05-25 00:00:00', 'admin', '2024-04-24 16:22:40', 2, '11111', 0, '2024-05-25 09:40:04', 0, 'admin', '2024-05-25 09:40:04', '2024-04-24', 'PUR20240424162152', 1, 1, 10);
INSERT INTO `scm_purchase_order_ship` VALUES (469, '菜鸟速递', 'qdd', 0, '2024-05-25 00:00:00', '2024-05-25 00:00:00', 'admin', '2024-05-25 09:35:36', 2, '2', 0, '2024-05-25 09:35:57', 0, 'admin', '2024-05-25 09:35:57', '2024-05-25', 'PUR20240525093505', 1, 1, 10);

-- ----------------------------
-- Table structure for scm_seller
-- ----------------------------
DROP TABLE IF EXISTS `scm_seller`;
CREATE TABLE `scm_seller`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '渠道名称',
  `number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '渠道编码',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '职位',
  `link_man` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系方式',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区县',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址详情',
  `pin_yin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0启用   1禁用',
  `manager_user_id` bigint NOT NULL COMMENT '管理员账号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '渠道终端表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_seller
-- ----------------------------
INSERT INTO `scm_seller` VALUES (1, '自营仓库', 'A0001', '', '', NULL, '15000000000', NULL, NULL, NULL, NULL, '', 0, 2, '2023-12-29 11:01:02');
INSERT INTO `scm_seller` VALUES (26, '韩牛服饰', 'HN', '', '', NULL, '13249570000', NULL, NULL, NULL, NULL, '', 0, 0, '2023-12-29 11:01:03');
INSERT INTO `scm_seller` VALUES (28, '广州衣菲妮服装厂', 'YIFEINI', '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 0, '2023-12-29 11:01:03');
INSERT INTO `scm_seller` VALUES (29, '中山欧熙妮服饰有限公司', 'ZSOXNFS', '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 0, 0, '2023-12-29 11:01:03');
INSERT INTO `scm_seller` VALUES (31, '中山市金客隆服饰有限公司', 'JKL', '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 0, 0, '2023-12-29 11:01:04');
INSERT INTO `scm_seller` VALUES (33, '中山裤豪', 'ZSKH', '', '', NULL, '', NULL, NULL, NULL, '中山市沙溪镇水牛城三区二楼35-38卡', '', 0, 0, '2023-12-29 11:01:04');

-- ----------------------------
-- Table structure for scm_seller_menu
-- ----------------------------
DROP TABLE IF EXISTS `scm_seller_menu`;
CREATE TABLE `scm_seller_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `system_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统id（oms用在oms系统）',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2089 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'scm销售终端菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_seller_menu
-- ----------------------------
INSERT INTO `scm_seller_menu` VALUES (2, '商品管理', '', 0, 1, '/goods', '', '', 1, 0, 'M', '0', '0', '', 'theme', 'admin', '2023-12-29 13:29:44', 'admin', '', '');
INSERT INTO `scm_seller_menu` VALUES (5, '销售管理', 'oms', 0, 2, '/sale', '', '', 1, 0, 'M', '0', '0', '', 'shopping', 'admin', '2023-12-29 16:53:03', 'admin', '2024-06-03 16:20:20', '');
INSERT INTO `scm_seller_menu` VALUES (6, '发货管理', 'oms', 0, 3, '/ship', '', '', 1, 0, 'M', '0', '0', '', 'excel', 'admin', '2024-01-01 14:08:04', 'admin', '2024-01-03 14:07:29', '');
INSERT INTO `scm_seller_menu` VALUES (7, '售后管理', 'oms', 0, 4, '/saleafter', NULL, NULL, 1, 0, 'M', '0', '1', '', 'clipboard', 'admin', '2024-01-03 14:23:55', 'admin', '2024-01-12 19:47:33', '');
INSERT INTO `scm_seller_menu` VALUES (8, '店铺管理', 'oms', 0, 7, '/shop', NULL, NULL, 1, 0, 'M', '0', '0', '', 'server', 'admin', '2024-04-12 16:46:19', 'admin', '2024-04-24 11:17:09', '');
INSERT INTO `scm_seller_menu` VALUES (9, '库存管理', '', 0, 5, 'wms', '', '', 1, 0, 'M', '0', '1', '', 'dict', 'admin', '2023-12-31 12:14:33', 'admin', '2024-04-23 15:43:32', '');
INSERT INTO `scm_seller_menu` VALUES (500, '操作日志', NULL, 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-12-27 15:00:27', '', '', '操作日志菜单');
INSERT INTO `scm_seller_menu` VALUES (501, '登录日志', NULL, 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-12-27 15:00:27', '', '', '登录日志菜单');
INSERT INTO `scm_seller_menu` VALUES (1000, '用户查询', NULL, 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1001, '用户新增', NULL, 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1002, '用户修改', NULL, 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1003, '用户删除', NULL, 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1004, '用户导出', NULL, 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1005, '用户导入', NULL, 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1006, '重置密码', NULL, 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1007, '角色查询', NULL, 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1008, '角色新增', NULL, 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1009, '角色修改', NULL, 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1010, '角色删除', NULL, 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1011, '角色导出', NULL, 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1012, '菜单查询', NULL, 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1013, '菜单新增', NULL, 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1014, '菜单修改', NULL, 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1015, '菜单删除', NULL, 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1016, '部门查询', NULL, 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1017, '部门新增', NULL, 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1018, '部门修改', NULL, 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1019, '部门删除', NULL, 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1020, '岗位查询', NULL, 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1021, '岗位新增', NULL, 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1022, '岗位修改', NULL, 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1023, '岗位删除', NULL, 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1024, '岗位导出', NULL, 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1025, '字典查询', NULL, 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1026, '字典新增', NULL, 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1027, '字典修改', NULL, 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1028, '字典删除', NULL, 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1029, '字典导出', NULL, 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1039, '操作查询', NULL, 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1040, '操作删除', NULL, 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1041, '日志导出', NULL, 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1042, '登录查询', NULL, 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1043, '登录删除', NULL, 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1044, '日志导出', NULL, 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (1045, '账户解锁', NULL, 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `scm_seller_menu` VALUES (2001, '电子面单', 'oms', 6, 1, 'ewaybill_print', 'shipping/ewaybillPrint/index', NULL, 1, 0, 'C', '0', '0', '', 'clipboard', '', NULL, 'admin', '2024-08-23 22:08:55', '');
INSERT INTO `scm_seller_menu` VALUES (2007, '商品库', NULL, 2, 1, 'goods_list', 'goods/index', '', 1, 0, 'C', '0', '0', 'goods:list', 'theme', 'admin', '2023-12-29 13:31:01', 'admin', '2023-12-29 15:02:40.869685', '');
INSERT INTO `scm_seller_menu` VALUES (2008, '商品价格', NULL, 2, 88, 'goods_category', 'goods/category/index', '', 1, 0, 'C', '0', '0', 'goods:category', 'tree-table', 'admin', '2023-12-29 13:32:41', 'admin', '2023-12-29 15:02:22.220534', '');
INSERT INTO `scm_seller_menu` VALUES (2015, '店铺管理', 'oms', 8, 1, 'shop_list', 'shop/shop_index', '', 1, 0, 'C', '0', '0', 'shop:list', 'example', 'admin', '2023-12-29 16:54:02', 'admin', '2024-04-25 11:15:07', '');
INSERT INTO `scm_seller_menu` VALUES (2017, '店铺订单统计', 'oms', 5, 8, 'data', 'shop/data', '', 1, 0, 'C', '1', '0', 'shop:data', 'chart', 'admin', '2023-12-29 17:04:08', 'admin', '2024-08-23 22:05:00', '');
INSERT INTO `scm_seller_menu` VALUES (2027, '入库管理', NULL, 9, 0, 'stock_in_entry/list', 'wms/stockInEntry', '', 1, 0, 'C', '0', '0', 'wms:stock_in_entry:list', 'stockin', 'admin', '2023-12-31 12:27:37', 'admin', '2024-01-14 15:12:48', '');
INSERT INTO `scm_seller_menu` VALUES (2029, '店铺售后管理', 'oms', 7, 2, 'shop_refund', 'shop/refund/index', '', 1, 0, 'C', '0', '0', '', 'clipboard', 'admin', '2023-12-31 17:29:03', 'admin', '2024-05-04 18:57:32', '');
INSERT INTO `scm_seller_menu` VALUES (2030, '手动创建订单', 'oms', 5, 1, 'order/create', 'sale/order/create', '', 1, 0, 'C', '1', '0', '', 'documentation', 'admin', '2023-12-31 20:01:22', 'admin', '2024-03-24 19:32:32', '');
INSERT INTO `scm_seller_menu` VALUES (2032, '订单拉取日志', 'oms', 5, 9, 'order/pull_log', 'shop/order_pull_log', '', 1, 0, 'C', '1', '0', '', 'upload', 'admin', '2023-12-31 20:04:12', 'admin', '2024-08-23 22:05:08', '');
INSERT INTO `scm_seller_menu` VALUES (2033, '订单管理', 'oms', 5, 1, 'order_list', 'sale/order/index', '', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2023-12-31 20:05:05', 'admin', '2024-08-23 22:04:30', '');
INSERT INTO `scm_seller_menu` VALUES (2036, '店铺订单管理', 'oms', 5, 2, 'shop_order', 'shop/order_index', '', 1, 0, 'C', '0', '0', '', 'excel', 'admin', '2024-01-01 14:14:42', 'admin', '2024-05-04 18:55:37', '');
INSERT INTO `scm_seller_menu` VALUES (2046, '出库管理', NULL, 9, 5, 'stockOut', 'wms/stockOutEntry', NULL, 1, 0, 'C', '0', '0', '', 'link', 'admin', '2024-01-03 11:00:53', 'admin', '2024-01-12 15:52:19', '');
INSERT INTO `scm_seller_menu` VALUES (2047, '库存查询', NULL, 9, 6, 'goodsInventory', 'goods/goodsInventory', NULL, 1, 0, 'C', '0', '0', '', 'monitor', 'admin', '2024-01-03 11:01:14', 'admin', '2024-01-09 17:55:33', '');
INSERT INTO `scm_seller_menu` VALUES (2048, '库存盘点', NULL, 9, 9, 'pan', NULL, NULL, 1, 0, 'C', '0', '1', '', 'bug', 'admin', '2024-01-03 11:01:43', 'admin', '2024-01-09 19:57:08', '');
INSERT INTO `scm_seller_menu` VALUES (2049, '打包发货', '', 6, 3, 'ship_order', 'shipping/shipOrder/index', NULL, 1, 0, 'C', '0', '0', '', 'guide', 'admin', '2024-01-03 14:09:18', 'admin', '2024-05-02 10:47:38', '');
INSERT INTO `scm_seller_menu` VALUES (2051, '物流跟踪', 'oms', 6, 4, 'ship_logistics', 'shipping/shipOrder/logistics', NULL, 1, 0, 'C', '0', '0', '', 'email', 'admin', '2024-01-03 14:13:12', 'admin', '2024-05-02 10:50:34', '');
INSERT INTO `scm_seller_menu` VALUES (2052, '物流公司管理', '', 6, 9, 'logistics_company', 'shipping/logistics/company', NULL, 1, 0, 'C', '0', '1', '', 'checkbox', 'admin', '2024-01-03 14:14:09', 'admin', '2024-08-23 22:07:25', '');
INSERT INTO `scm_seller_menu` VALUES (2054, '店铺售后管理', 'oms', 5, 9, 'refund_list', 'sale/refund', NULL, 1, 0, 'C', '0', '0', '', 'size', 'admin', '2024-01-03 14:24:36', 'admin', '2024-05-05 20:14:23', '');
INSERT INTO `scm_seller_menu` VALUES (2059, '备货清单', 'oms', 6, 2, 'stocking', 'shipping/stocking', '', 1, 0, 'C', '0', '0', '', 'component', 'admin', '2024-01-09 11:51:52', 'admin', '2024-08-23 22:06:56', '');
INSERT INTO `scm_seller_menu` VALUES (2060, '拣货出库', '', 6, 3, 'stockout', 'shipping/stockOut', NULL, 1, 0, 'C', '0', '0', '', 'bug', 'admin', '2024-01-09 13:39:00', 'admin', '2024-08-23 22:07:41', '');
INSERT INTO `scm_seller_menu` VALUES (2061, '库位管理', NULL, 9, 99, 'stock_location', 'wms/location', NULL, 1, 0, 'C', '0', '0', '', 'education', 'admin', '2024-01-09 13:54:30', 'admin', '2024-01-09 14:50:33', '');
INSERT INTO `scm_seller_menu` VALUES (2063, '发货费用', '', 6, 5, 'ship_fee', 'shipping/shipFee', NULL, 1, 0, 'C', '0', '1', '', 'money', 'admin', '2024-01-12 18:35:31', 'admin', '2024-08-23 22:06:40', '');
INSERT INTO `scm_seller_menu` VALUES (2080, '售后处理查询', 'oms', 7, 3, 'result_list', 'afterSale/index', NULL, 1, 0, 'C', '0', '0', '', 'time', 'admin', '2024-04-15 14:23:40', 'admin', '2024-05-05 20:27:37', '');
INSERT INTO `scm_seller_menu` VALUES (2084, '店铺商品管理', 'oms', 8, 9, 'goods_list', 'shop/goods/', NULL, 1, 0, 'C', '0', '0', '', 'shopping', 'admin', '2024-04-15 14:52:16', 'admin', '2024-04-15 14:52:27', '');
INSERT INTO `scm_seller_menu` VALUES (2088, '电子面单打印', NULL, 6, 0, 'print', NULL, NULL, 1, 0, 'C', '0', '0', NULL, 'bug', 'admin', '2024-08-23 22:09:43', '', NULL, '');

-- ----------------------------
-- Table structure for scm_supplier
-- ----------------------------
DROP TABLE IF EXISTS `scm_supplier`;
CREATE TABLE `scm_supplier`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `taxRate` double NULL DEFAULT 0 COMMENT '税率',
  `amount` double NULL DEFAULT 0 COMMENT '期初应付款',
  `periodMoney` double NULL DEFAULT 0 COMMENT '期初预付款',
  `difMoney` double NULL DEFAULT 0 COMMENT '初期往来余额',
  `beginDate` date NULL DEFAULT NULL COMMENT '余额日期',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '职位',
  `linkMan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系方式',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区县',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址详情',
  `pinYin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '0启用   1禁用',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '0正常 1删除',
  `purchaserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分管采购员',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_supplier
-- ----------------------------
INSERT INTO `scm_supplier` VALUES (1, '自营仓库', 'A0001', 0, 0, 0, 0, NULL, '', '', NULL, '15000000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:02');
INSERT INTO `scm_supplier` VALUES (26, '韩牛服饰', 'HN', 0, 0, 0, 0, NULL, '', '', NULL, '13249570000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (28, '广州衣菲妮服装厂', 'YIFEINI', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (29, '中山欧熙妮服饰有限公司', 'ZSOXNFS', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (31, '中山市金客隆服饰有限公司', 'JKL', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:04');
INSERT INTO `scm_supplier` VALUES (33, '中山裤豪', 'ZSKH', 0, 0, 0, 0, NULL, '', '', NULL, '', NULL, NULL, NULL, '中山市沙溪镇水牛城三区二楼35-38卡', '', 0, 0, NULL, '2023-12-29 11:01:04');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-08-07 19:31:38', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-08-07 19:31:38', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2023-08-07 19:31:38', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-08-07 19:31:38', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-08-07 19:31:38', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-08-07 19:31:38', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '启航技术', 0, '启航', '15888888888', '280645618@qq.com', '0', '0', 'admin', '2023-08-07 19:31:37', 'admin', '2024-04-14 18:28:55');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '研发部', 1, '启航', '15888888888', '280645618@qq.com', '0', '0', 'admin', '2023-08-07 19:31:37', 'admin', '2024-04-14 18:31:54');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '至简', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-08-07 19:31:37', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '1', '1', '1', 'admin', '2023-08-07 19:31:38', 'admin', '2024-01-28 13:30:18', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-08-07 19:31:38', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-08-07 19:31:38', '', NULL, '');
INSERT INTO `sys_job` VALUES (100, '库存存货日报生成', 'SYSTEM', 'inventoryReportTask.run()', '0/30 * * * * ?', '1', '1', '1', 'admin', '2024-01-28 13:44:43', '', '2024-01-28 13:47:13', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2024-01-28 13:30:00');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2024-01-28 13:30:10');
INSERT INTO `sys_job_log` VALUES (3, '库存存货日报生成', 'SYSTEM', 'inventoryReportTask.run()', '库存存货日报生成 总共耗时：2毫秒', '0', '', '2024-01-28 13:45:00');
INSERT INTO `sys_job_log` VALUES (4, '库存存货日报生成', 'SYSTEM', 'inventoryReportTask.run()', '库存存货日报生成 总共耗时：0毫秒', '0', '', '2024-01-28 13:45:30');
INSERT INTO `sys_job_log` VALUES (5, '库存存货日报生成', 'SYSTEM', 'inventoryReportTask.run()', '库存存货日报生成 总共耗时：2毫秒', '0', '', '2024-01-28 13:46:00');
INSERT INTO `sys_job_log` VALUES (6, '库存存货日报生成', 'SYSTEM', 'inventoryReportTask.run()', '库存存货日报生成 总共耗时：0毫秒', '0', '', '2024-01-28 13:46:30');
INSERT INTO `sys_job_log` VALUES (7, '库存存货日报生成', 'SYSTEM', 'inventoryReportTask.run()', '库存存货日报生成 总共耗时：0毫秒', '0', '', '2024-01-28 13:47:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 321 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-08 11:36:40');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-08 14:50:27');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-08 16:02:13');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-09 09:24:16');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-09 15:59:59');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', 'Unable to connect to Redis', '2024-05-11 09:15:16');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-11 09:15:43');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-11 15:35:31');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-15 11:14:47');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-15 11:22:50');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-15 11:23:07');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-25 09:34:34');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-25 11:09:17');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-28 09:01:31');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-28 10:20:40');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-28 17:24:44');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-28 18:18:18');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-28 19:47:40');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-29 08:47:41');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-30 14:39:39');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2024-05-30 14:39:39');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-30 14:39:45');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-30 15:50:24');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-31 11:09:07');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-31 19:28:45');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-05-31 20:14:36');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 18:18:26');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 18:20:46');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 18:23:11');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-03 16:18:56');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-04 10:20:02');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-04 11:10:27');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-04 11:58:01');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-04 13:53:33');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-11 11:15:43');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-11 13:33:03');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-11 16:29:17');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-11 17:55:49');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-11 18:39:37');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2024-06-11 18:39:37');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-11 18:39:49');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-11 20:17:42');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-12 10:02:45');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-12 11:33:33');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-12 11:50:17');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-12 13:35:39');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-12 14:36:04');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-13 09:31:56');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-13 10:37:45');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-17 08:47:37');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-06-19 17:45:25');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', 'Unable to connect to Redis', '2024-06-21 20:30:09');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-21 20:30:41');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-22 08:30:22');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', 'Unable to connect to Redis', '2024-07-14 14:06:32');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-14 14:06:48');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-20 11:18:11');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-27 20:43:50');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-27 20:48:28');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', 'Unable to connect to Redis', '2024-08-17 22:55:55');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-08-17 22:56:26');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', 'Unable to connect to Redis', '2024-08-23 21:58:50');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-08-23 22:00:13');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-24 08:59:07');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', 'Unable to connect to Redis', '2024-09-01 18:53:04');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-01 18:53:23');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-02 23:35:18');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `system_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统id（oms用在oms系统）',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2089 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统设置', 'oms', 0, 99, '/system', '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-12-27 15:00:27', 'admin', '2023-12-29 09:07:42.856856', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '商品管理', '', 0, 1, '/goods', '', '', 1, 0, 'M', '0', '0', '', 'theme', 'admin', '2023-12-29 13:29:44', 'admin', '', '');
INSERT INTO `sys_menu` VALUES (5, '销售管理', 'oms', 0, 2, '/sale', '', '', 1, 0, 'M', '0', '0', '', 'shopping', 'admin', '2023-12-29 16:53:03', 'admin', '2024-06-03 16:20:20', '');
INSERT INTO `sys_menu` VALUES (6, '发货管理', 'oms', 0, 3, '/ship', '', '', 1, 0, 'M', '0', '0', '', 'excel', 'admin', '2024-01-01 14:08:04', 'admin', '2024-01-03 14:07:29', '');
INSERT INTO `sys_menu` VALUES (7, '售后管理', 'oms', 0, 4, '/saleafter', NULL, NULL, 1, 0, 'M', '0', '1', '', 'clipboard', 'admin', '2024-01-03 14:23:55', 'admin', '2024-01-12 19:47:33', '');
INSERT INTO `sys_menu` VALUES (8, '渠道管理', 'oms', 0, 7, '/shop', NULL, NULL, 1, 0, 'M', '0', '0', '', 'server', 'admin', '2024-04-12 16:46:19', 'admin', '2024-04-24 11:17:09', '');
INSERT INTO `sys_menu` VALUES (9, '库存管理', '', 0, 5, 'wms', '', '', 1, 0, 'M', '0', '1', '', 'dict', 'admin', '2023-12-31 12:14:33', 'admin', '2024-04-23 15:43:32', '');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 'oms', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-12-27 15:00:27', '', '', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', '', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-12-27 15:00:27', '', '', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', '', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-12-27 15:00:27', '', '', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', '', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-12-27 15:00:27', '', '', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', '', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2023-12-27 15:00:27', 'admin', '2024-04-12 16:44:52', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', '', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-12-27 15:00:27', '', '', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', '', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-12-27 15:00:27', '', '', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', NULL, 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-12-27 15:00:27', '', '', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', NULL, 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-12-27 15:00:27', '', '', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', NULL, 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', NULL, 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', NULL, 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', NULL, 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', NULL, 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', NULL, 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', NULL, 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', NULL, 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', NULL, 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', NULL, 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', NULL, 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', NULL, 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', NULL, 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', NULL, 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', NULL, 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', NULL, 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', NULL, 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', NULL, 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', NULL, 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', NULL, 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', NULL, 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', NULL, 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', NULL, 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', NULL, 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', NULL, 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', NULL, 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', NULL, 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', NULL, 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', NULL, 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', NULL, 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', NULL, 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', NULL, 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', NULL, 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', NULL, 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', NULL, 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', NULL, 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', NULL, 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (2001, '电子面单', 'oms', 6, 1, 'ewaybill_print', 'shipping/ewaybillPrint/index', NULL, 1, 0, 'C', '0', '0', '', 'clipboard', '', NULL, 'admin', '2024-08-23 22:08:55', '');
INSERT INTO `sys_menu` VALUES (2005, '供应商管理', NULL, 2, 9, 'supplier/list', 'scm/supplier/index', '', 1, 0, 'C', '0', '0', 'scm:supplier', 'qq', 'admin', '2023-12-29 09:14:02', 'admin', '2023-12-29 09:17:27.514466', '');
INSERT INTO `sys_menu` VALUES (2007, '商品管理', NULL, 2, 1, 'goods_list', 'goods/index', '', 1, 0, 'C', '0', '0', 'goods:list', 'theme', 'admin', '2023-12-29 13:31:01', 'admin', '2023-12-29 15:02:40.869685', '');
INSERT INTO `sys_menu` VALUES (2008, '商品分类', NULL, 2, 88, 'goods_category', 'goods/category/index', '', 1, 0, 'C', '0', '0', 'goods:category', 'tree-table', 'admin', '2023-12-29 13:32:41', 'admin', '2023-12-29 15:02:22.220534', '');
INSERT INTO `sys_menu` VALUES (2009, '品牌管理', NULL, 2, 99, 'goods/brand', 'goods/brand/index', '', 1, 0, 'C', '0', '1', 'goods:brand', 'clipboard', 'admin', '2023-12-29 13:34:49', 'admin', '2024-04-14 18:51:23', '');
INSERT INTO `sys_menu` VALUES (2015, '渠道列表', 'oms', 8, 1, 'shop_list', 'shop/shop_index', '', 1, 0, 'C', '0', '0', 'shop:list', 'example', 'admin', '2023-12-29 16:54:02', 'admin', '2024-04-25 11:15:07', '');
INSERT INTO `sys_menu` VALUES (2017, '店铺订单统计', 'oms', 5, 8, 'data', 'shop/data', '', 1, 0, 'C', '1', '0', 'shop:data', 'chart', 'admin', '2023-12-29 17:04:08', 'admin', '2024-08-23 22:05:00', '');
INSERT INTO `sys_menu` VALUES (2027, '入库管理', NULL, 9, 0, 'stock_in_entry/list', 'wms/stockInEntry', '', 1, 0, 'C', '0', '0', 'wms:stock_in_entry:list', 'stockin', 'admin', '2023-12-31 12:27:37', 'admin', '2024-01-14 15:12:48', '');
INSERT INTO `sys_menu` VALUES (2029, '店铺售后管理', 'oms', 7, 2, 'shop_refund', 'shop/refund/index', '', 1, 0, 'C', '0', '0', '', 'clipboard', 'admin', '2023-12-31 17:29:03', 'admin', '2024-05-04 18:57:32', '');
INSERT INTO `sys_menu` VALUES (2030, '手动创建订单', 'oms', 5, 1, 'order/create', 'sale/order/create', '', 1, 0, 'C', '1', '0', '', 'documentation', 'admin', '2023-12-31 20:01:22', 'admin', '2024-03-24 19:32:32', '');
INSERT INTO `sys_menu` VALUES (2032, '订单拉取日志', 'oms', 5, 9, 'order/pull_log', 'shop/order_pull_log', '', 1, 0, 'C', '1', '0', '', 'upload', 'admin', '2023-12-31 20:04:12', 'admin', '2024-08-23 22:05:08', '');
INSERT INTO `sys_menu` VALUES (2033, '订单管理', 'oms', 5, 1, 'order_list', 'sale/order/index', '', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2023-12-31 20:05:05', 'admin', '2024-08-23 22:04:30', '');
INSERT INTO `sys_menu` VALUES (2036, '店铺订单管理', 'oms', 5, 2, 'shop_order', 'shop/order_index', '', 1, 0, 'C', '1', '0', '', 'excel', 'admin', '2024-01-01 14:14:42', 'admin', '2024-05-04 18:55:37', '');
INSERT INTO `sys_menu` VALUES (2046, '出库管理', NULL, 9, 5, 'stockOut', 'wms/stockOutEntry', NULL, 1, 0, 'C', '0', '0', '', 'link', 'admin', '2024-01-03 11:00:53', 'admin', '2024-01-12 15:52:19', '');
INSERT INTO `sys_menu` VALUES (2047, '库存查询', NULL, 9, 6, 'goodsInventory', 'goods/goodsInventory', NULL, 1, 0, 'C', '0', '0', '', 'monitor', 'admin', '2024-01-03 11:01:14', 'admin', '2024-01-09 17:55:33', '');
INSERT INTO `sys_menu` VALUES (2048, '库存盘点', NULL, 9, 9, 'pan', NULL, NULL, 1, 0, 'C', '0', '1', '', 'bug', 'admin', '2024-01-03 11:01:43', 'admin', '2024-01-09 19:57:08', '');
INSERT INTO `sys_menu` VALUES (2049, '打包发货', '', 6, 3, 'ship_order', 'shipping/shipOrder/index', NULL, 1, 0, 'C', '0', '0', '', 'guide', 'admin', '2024-01-03 14:09:18', 'admin', '2024-05-02 10:47:38', '');
INSERT INTO `sys_menu` VALUES (2051, '物流跟踪', 'oms', 6, 4, 'ship_logistics', 'shipping/shipOrder/logistics', NULL, 1, 0, 'C', '0', '0', '', 'email', 'admin', '2024-01-03 14:13:12', 'admin', '2024-05-02 10:50:34', '');
INSERT INTO `sys_menu` VALUES (2052, '物流公司管理', '', 6, 9, 'logistics_company', 'shipping/logistics/company', NULL, 1, 0, 'C', '0', '1', '', 'checkbox', 'admin', '2024-01-03 14:14:09', 'admin', '2024-08-23 22:07:25', '');
INSERT INTO `sys_menu` VALUES (2054, '售后管理', 'oms', 5, 9, 'refund_list', 'sale/refund', NULL, 1, 0, 'C', '0', '0', '', 'size', 'admin', '2024-01-03 14:24:36', 'admin', '2024-05-05 20:14:23', '');
INSERT INTO `sys_menu` VALUES (2059, '备货清单', 'oms', 6, 2, 'stocking', 'shipping/stocking', '', 1, 0, 'C', '0', '0', '', 'component', 'admin', '2024-01-09 11:51:52', 'admin', '2024-08-23 22:06:56', '');
INSERT INTO `sys_menu` VALUES (2060, '拣货出库', '', 6, 3, 'stockout', 'shipping/stockOut', NULL, 1, 0, 'C', '0', '0', '', 'bug', 'admin', '2024-01-09 13:39:00', 'admin', '2024-08-23 22:07:41', '');
INSERT INTO `sys_menu` VALUES (2061, '库位管理', NULL, 9, 99, 'stock_location', 'wms/location', NULL, 1, 0, 'C', '0', '0', '', 'education', 'admin', '2024-01-09 13:54:30', 'admin', '2024-01-09 14:50:33', '');
INSERT INTO `sys_menu` VALUES (2063, '发货费用', '', 6, 5, 'ship_fee', 'shipping/shipFee', NULL, 1, 0, 'C', '0', '1', '', 'money', 'admin', '2024-01-12 18:35:31', 'admin', '2024-08-23 22:06:40', '');
INSERT INTO `sys_menu` VALUES (2066, '添加商品', NULL, 2, 2, 'create', 'goods/create', NULL, 1, 0, 'C', '1', '0', '', 'component', 'admin', '2024-01-14 19:42:11', 'admin', '2024-04-14 18:50:36', '');
INSERT INTO `sys_menu` VALUES (2067, '商品SKU管理', '', 2, 3, 'spec_list', 'goods/spec', NULL, 1, 0, 'C', '0', '0', '', 'theme', 'admin', '2024-01-16 14:17:39', 'admin', '2024-04-14 18:51:13', '');
INSERT INTO `sys_menu` VALUES (2079, '电商平台设置', 'oms', 1, 0, 'platform', 'shop/platform', NULL, 1, 0, 'C', '1', '0', '', 'date-range', 'admin', '2024-04-12 16:58:07', 'admin', '2024-06-04 10:20:36', '');
INSERT INTO `sys_menu` VALUES (2080, '售后处理查询', 'oms', 7, 3, 'result_list', 'afterSale/index', NULL, 1, 0, 'C', '0', '0', '', 'time', 'admin', '2024-04-15 14:23:40', 'admin', '2024-05-05 20:27:37', '');
INSERT INTO `sys_menu` VALUES (2084, '渠道商品价格', 'oms', 8, 9, 'goods_list', 'shop/goods/', NULL, 1, 0, 'C', '0', '0', '', 'shopping', 'admin', '2024-04-15 14:52:16', 'admin', '2024-04-15 14:52:27', '');
INSERT INTO `sys_menu` VALUES (2086, '分类规格属性', NULL, 2, 0, 'goods_category/attribute', 'goods/category/categoryAttribute', NULL, 1, 0, 'C', '1', '0', '', 'build', 'admin', '2024-06-21 20:34:48', 'admin', '2024-06-21 21:25:39', '');
INSERT INTO `sys_menu` VALUES (2087, '规格属性值', NULL, 2, 0, 'goods_category/attribute_value', 'goods/category/categoryAttributeValue', NULL, 1, 0, 'C', '1', '0', '', 'clipboard', 'admin', '2024-06-21 21:14:34', 'admin', '2024-06-21 21:25:33', '');
INSERT INTO `sys_menu` VALUES (2088, '电子面单打印', NULL, 6, 0, 'print', NULL, NULL, 1, 0, 'C', '0', '0', NULL, 'bug', 'admin', '2024-08-23 22:09:43', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 至简新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-08-07 19:31:38', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 至简系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-08-07 19:31:38', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 485 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (415, '店铺订单', 5, 'cn.qihangerp.api.controller.ErpOrderController.export()', 'POST', 1, 'admin', NULL, '/api/order/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-05-08 14:50:58', 2385);
INSERT INTO `sys_oper_log` VALUES (416, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"福田路1903实际广场A栋89层8903房\",\"amount\":null,\"city\":\"深圳市\",\"createBy\":\"admin\",\"discountAmount\":0,\"goodsAmount\":null,\"itemList\":[{\"goodsImg\":\"\",\"goodsNum\":\"\",\"goodsPrice\":null,\"goodsSpec\":\"\",\"goodsTitle\":\"\",\"itemAmount\":null,\"remark\":\"\",\"specNum\":\"\"}],\"orderNum\":\"A451220036332\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382222220\",\"refundStatus\":1,\"shopId\":1,\"shopType\":99,\"town\":\"福田区\"}', NULL, 1, 'Cannot invoke \"java.lang.Double.doubleValue()\" because the return value of \"cn.qihangerp.domain.ErpOrder.getGoodsAmount()\" is null', '2024-05-09 09:25:50', 46);
INSERT INTO `sys_oper_log` VALUES (417, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"福田路1903实际广场A栋89层8903房\",\"amount\":null,\"city\":\"深圳市\",\"createBy\":\"admin\",\"discountAmount\":0,\"goodsAmount\":null,\"itemList\":[{\"goodsImg\":\"\",\"goodsNum\":\"\",\"goodsPrice\":null,\"goodsSpec\":\"\",\"goodsTitle\":\"\",\"itemAmount\":null,\"remark\":\"\",\"specNum\":\"\"}],\"orderNum\":\"A451220036332\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382222220\",\"refundStatus\":1,\"shopId\":1,\"shopType\":99,\"town\":\"福田区\"}', NULL, 1, 'Cannot invoke \"java.lang.Double.doubleValue()\" because the return value of \"cn.qihangerp.domain.ErpOrder.getGoodsAmount()\" is null', '2024-05-09 09:34:10', 451017);
INSERT INTO `sys_oper_log` VALUES (418, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"福田路1903实际广场A栋89层8903房\",\"amount\":null,\"city\":\"深圳市\",\"goodsAmount\":null,\"itemList\":[{\"goodsImg\":\"\",\"goodsNum\":\"\",\"goodsPrice\":null,\"goodsSpec\":\"\",\"goodsTitle\":\"\",\"itemAmount\":null,\"remark\":\"\",\"specNum\":\"\"}],\"orderNum\":\"A451220036332\",\"params\":{},\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382222220\",\"shopId\":1,\"town\":\"福田区\"}', '{\"msg\":\"请填写商品价格！\",\"code\":1503}', 0, NULL, '2024-05-09 09:34:40', 38);
INSERT INTO `sys_oper_log` VALUES (419, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"福田路1903实际广场A栋89层8903房\",\"amount\":21.0,\"city\":\"深圳市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:35:41\",\"discountAmount\":0,\"goodsAmount\":21.0,\"itemList\":[{\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"isGift\":0,\"itemAmount\":21.0,\"quantity\":1,\"remark\":\"\",\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"A451220036332\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382222220\",\"refundStatus\":1,\"shopId\":1,\"shopType\":99,\"town\":\"福田区\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ship_status\' doesn\'t have a default value\r\n### The error may exist in file [D:\\dev\\projects\\qihang.ecom.erp\\api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve cn.qihangerp.api.mapper.ErpOrderMapper.insertErpOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into erp_sale_order          ( order_num,             shop_type,             shop_id,                                                    refund_status,             order_status,             goods_amount,             discount_amount,             postage,             amount,             receiver_name,             receiver_phone,             address,                          province,             city,             town,                                                                                                                                  create_time,             create_by )           values ( ?,             ?,             ?,                                                    ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,                                                                                                                                  ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'ship_status\' doesn\'t have a default value\n; Field \'ship_status\' doesn\'t have a default value', '2024-05-09 09:35:49', 39515);
INSERT INTO `sys_oper_log` VALUES (420, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"福田路1903实际广场A栋89层8903房\",\"amount\":21.0,\"city\":\"深圳市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:37:14\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":43,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:37:15.161\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1788382692918120449\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":43,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"A451220036332\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382222220\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"福田区\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'shop_id\' cannot be null\r\n### The error may exist in file [D:\\dev\\projects\\qihang.ecom.erp\\api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into erp_sale_order_item(shop_id,order_id,supplier_id,ship_type,ship_status,order_num,order_item_num, goods_id, spec_id, goods_title, goods_img, goods_num, goods_spec, spec_num, goods_price, item_amount, quantity, remark, is_gift, refund_count, order_status,refund_status, create_time, create_by, update_time, update_by) values                  ( ?,?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'shop_id\' cannot be null\n; Column \'shop_id\' cannot be null', '2024-05-09 09:37:21', 21750);
INSERT INTO `sys_oper_log` VALUES (421, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"福田路1903实际广场A栋89层8903房\",\"amount\":21.0,\"city\":\"深圳市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:41:47\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":44,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:41:47.788\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1788383836272807937\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":44,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"A451220036332\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382222220\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"福田区\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'shop_id\' cannot be null\r\n### The error may exist in file [D:\\dev\\projects\\qihang.ecom.erp\\api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into erp_sale_order_item(shop_id,order_id,supplier_id,ship_type,ship_status,order_num,order_item_num, goods_id, spec_id, goods_title, goods_img, goods_num, goods_spec, spec_num, goods_price, item_amount, quantity, remark, is_gift, refund_count, order_status,refund_status, create_time, create_by, update_time, update_by) values                  ( ?,?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'shop_id\' cannot be null\n; Column \'shop_id\' cannot be null', '2024-05-09 09:41:47', 102728);
INSERT INTO `sys_oper_log` VALUES (422, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"实际广场23309\",\"amount\":null,\"city\":\"深圳市\",\"goodsAmount\":null,\"itemList\":[{\"goodsImg\":\"\",\"goodsNum\":\"\",\"goodsPrice\":null,\"goodsSpec\":\"\",\"goodsTitle\":\"\",\"itemAmount\":null,\"remark\":\"\",\"specNum\":\"\"}],\"orderNum\":\"AD580023566000\",\"params\":{},\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382023320\",\"shopId\":1,\"town\":\"南山区\"}', '{\"msg\":\"请填写商品价格！\",\"code\":1503}', 0, NULL, '2024-05-09 09:43:00', 34);
INSERT INTO `sys_oper_log` VALUES (423, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"实际广场23309\",\"amount\":21.0,\"city\":\"深圳市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:43:18\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":45,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:43:18.06\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1788384214921965569\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":45,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"shopId\":1,\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"AD580023566000\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382023320\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"南山区\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'ship_status\' cannot be null\r\n### The error may exist in file [D:\\dev\\projects\\qihang.ecom.erp\\api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into erp_sale_order_item(shop_id,order_id,supplier_id,ship_type,ship_status,order_num,order_item_num, goods_id, spec_id, goods_title, goods_img, goods_num, goods_spec, spec_num, goods_price, item_amount, quantity, remark, is_gift, refund_count, order_status,refund_status, create_time, create_by, update_time, update_by) values                  ( ?,?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'ship_status\' cannot be null\n; Column \'ship_status\' cannot be null', '2024-05-09 09:43:18', 9190);
INSERT INTO `sys_oper_log` VALUES (424, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"实际广场23309\",\"amount\":21.0,\"city\":\"深圳市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:44:15\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":46,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:44:16.002\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1788384457944158210\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":46,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"shipStatus\":0,\"shopId\":1,\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"AD580023566000\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382023320\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"南山区\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'order_num\' cannot be null\r\n### The error may exist in file [D:\\dev\\projects\\qihang.ecom.erp\\api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into erp_sale_order_item(shop_id,order_id,supplier_id,ship_type,ship_status,order_num,order_item_num, goods_id, spec_id, goods_title, goods_img, goods_num, goods_spec, spec_num, goods_price, item_amount, quantity, remark, is_gift, refund_count, order_status,refund_status, create_time, create_by, update_time, update_by) values                  ( ?,?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'order_num\' cannot be null\n; Column \'order_num\' cannot be null', '2024-05-09 09:44:16', 4471);
INSERT INTO `sys_oper_log` VALUES (425, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"实际广场23309\",\"amount\":21.0,\"city\":\"深圳市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:47:54\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":47,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 09:47:54.252\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1785584827112509448\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":47,\"orderItemNum\":\"AD580023566000\",\"orderNum\":\"AD580023566000\",\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"shipStatus\":0,\"shopId\":1,\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"AD580023566000\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"广东省\",\"receiverName\":\"启航\",\"receiverPhone\":\"1382023320\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"南山区\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-09 09:47:54', 4051);
INSERT INTO `sys_oper_log` VALUES (426, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"阿迪达斯打发打发\",\"amount\":21.0,\"city\":\"市辖区\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 10:04:50\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":48,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 10:04:50.233\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1785584827112509449\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":48,\"orderItemNum\":\"A135822662000012\",\"orderNum\":\"A135822662000012\",\"orderStatus\":1,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"shipStatus\":0,\"shopId\":1,\"specId\":439,\"specNum\":\"HNP1825005\"}],\"orderNum\":\"A135822662000012\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"上海市\",\"receiverName\":\"启航\",\"receiverPhone\":\"136982222\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"黄浦区\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-09 10:04:50', 178217);
INSERT INTO `sys_oper_log` VALUES (427, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"aaddfd\",\"amount\":21.0,\"city\":\"大同市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 10:12:21\",\"discountAmount\":0,\"goodsAmount\":21.0,\"id\":50,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 10:12:21.375\",\"goodsId\":439,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"HNP182\",\"goodsPrice\":21.0,\"goodsSpec\":\"浅蓝色 2XL \",\"goodsTitle\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"id\":\"1785584827112509451\",\"isGift\":0,\"itemAmount\":21.0,\"orderId\":50,\"orderItemNum\":\"SF137003620200\",\"orderNum\":\"SF137003620200\",\"orderStatus\":1,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"shipStatus\":0,\"shopId\":1,\"specId\":439,\"specNum\":\"HNP1825005\",\"supplierId\":26}],\"orderNum\":\"SF137003620200\",\"orderStatus\":1,\"params\":{},\"postage\":0,\"province\":\"山西省\",\"receiverName\":\"A\",\"receiverPhone\":\"136000000\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"平城区\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-09 10:12:21', 34870);
INSERT INTO `sys_oper_log` VALUES (428, '店铺订单', 1, 'cn.qihangerp.api.controller.ErpOrderController.add()', 'POST', 1, 'admin', NULL, '/api/order', '127.0.0.1', '内网IP', '{\"address\":\"AAAA\",\"amount\":66.0,\"city\":\"邯郸市\",\"createBy\":\"admin\",\"createTime\":\"2024-05-09 10:19:28\",\"discountAmount\":0,\"goodsAmount\":66.0,\"id\":51,\"itemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-05-09 10:19:28.933\",\"goodsId\":1228,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01kneLsV1p3HVu8u1xi_!!2214743335304-0-cib.jpg\",\"goodsNum\":\"GZYYZ7277\",\"goodsPrice\":54.0,\"goodsSpec\":\"咖啡色 均码 \",\"goodsTitle\":\"GZYYZ7277复古显瘦灯芯绒a字半身裙\",\"id\":\"1785584827112509452\",\"isGift\":0,\"itemAmount\":54.0,\"orderId\":51,\"orderItemNum\":\"A13885020023320\",\"orderNum\":\"A13885020023320\",\"orderStatus\":1,\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"remark\":\"\",\"shipStatus\":0,\"shopId\":1,\"specId\":1228,\"specNum\":\"GZYYZ72773100\",\"supplierId\":32}],\"orderNum\":\"A13885020023320\",\"orderStatus\":1,\"orderTime\":\"2024-05-09 10:19:20\",\"params\":{},\"postage\":0,\"province\":\"河北省\",\"receiverName\":\"Q\",\"receiverPhone\":\"13582202330\",\"refundStatus\":1,\"shipStatus\":0,\"shopId\":1,\"shopType\":99,\"town\":\"复兴区\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-09 10:19:29', 22863);
INSERT INTO `sys_oper_log` VALUES (429, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-29 16:53:03\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":5,\"menuName\":\"销售管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"sale\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-11 09:16:33', 26);
INSERT INTO `sys_oper_log` VALUES (430, '采购订单', 1, 'cn.qihangerp.api.controller.ScmPurchaseOrderController.add()', 'POST', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"contactId\":33,\"createBy\":\"admin\",\"goodsList\":[{\"amount\":210,\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"colorValue\":\"浅蓝色\",\"goodsId\":29,\"id\":439,\"name\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"number\":\"HNP182\",\"purPrice\":21,\"qty\":10,\"sizeValue\":\"2XL\",\"specNum\":\"HNP1825005\",\"styleValue\":\"\"}],\"orderAmount\":210,\"orderDate\":\"2024-05-25 00:00:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:35:06', 58);
INSERT INTO `sys_oper_log` VALUES (431, '采购订单', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"q\",\"id\":469,\"optionType\":\"audit\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:35:16', 15);
INSERT INTO `sys_oper_log` VALUES (432, '采购订单', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"q\",\"confirmUser\":\"q\",\"id\":469,\"optionType\":\"confirm\",\"totalAmount\":210,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:35:21', 31);
INSERT INTO `sys_oper_log` VALUES (433, '采购订单', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"q\",\"confirmUser\":\"q\",\"id\":469,\"optionType\":\"SupplierShip\",\"shipCompany\":\"菜鸟速递\",\"shipCost\":0,\"shipNo\":\"qdd\",\"supplierDeliveryTime\":\"2024-05-25 00:00:00\",\"totalAmount\":210,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:35:36', 43);
INSERT INTO `sys_oper_log` VALUES (434, '采购订单物流', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderShipController.confirmReceipt()', 'PUT', 1, 'admin', NULL, '/purchase/PurchaseOrderShip', '127.0.0.1', '内网IP', '{\"backCount\":0,\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:35:36\",\"freight\":0,\"id\":469,\"orderDate\":\"2024-05-25\",\"orderGoodsUnit\":1,\"orderNo\":\"PUR20240525093505\",\"orderSpecUnit\":1,\"orderSpecUnitTotal\":10,\"params\":{},\"receiptTime\":\"2024-05-25 00:00:00\",\"remark\":\"2\",\"shipCompany\":\"菜鸟速递\",\"shipNo\":\"qdd\",\"shipTime\":\"2024-05-25\",\"status\":0,\"stockInCount\":0,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:35:53', 14);
INSERT INTO `sys_oper_log` VALUES (435, '采购订单物流', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderShipController.createStockInEntry()', 'POST', 1, 'admin', NULL, '/purchase/PurchaseOrderShip/createStockInEntry', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:35:06\",\"goodsList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"colorValue\":\"浅蓝色\",\"goodsId\":29,\"goodsName\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"goodsNum\":\"HNP182\",\"id\":1965,\"inQty\":10,\"orderId\":469,\"params\":{},\"quantity\":10,\"remark\":\"\",\"sizeValue\":\"2XL\",\"specId\":439,\"specNum\":\"HNP1825005\",\"styleValue\":\"\"}],\"id\":469,\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 09:35:53\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:35:56', 44);
INSERT INTO `sys_oper_log` VALUES (436, '采购订单物流', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderShipController.confirmReceipt()', 'PUT', 1, 'admin', NULL, '/purchase/PurchaseOrderShip', '127.0.0.1', '内网IP', '{\"backCount\":0,\"createBy\":\"admin\",\"createTime\":\"2024-04-24 16:22:40\",\"freight\":12,\"id\":468,\"orderDate\":\"2024-04-24\",\"orderGoodsUnit\":1,\"orderNo\":\"PUR20240424162152\",\"orderSpecUnit\":1,\"orderSpecUnitTotal\":10,\"params\":{},\"receiptTime\":\"2024-05-25 00:00:00\",\"remark\":\"11111\",\"shipCompany\":\"菜鸟速递\",\"shipNo\":\"SF232323\",\"shipTime\":\"2024-04-24\",\"status\":0,\"stockInCount\":0,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:36:46', 10);
INSERT INTO `sys_oper_log` VALUES (437, '采购订单物流', 2, 'cn.qihangerp.api.controller.ScmPurchaseOrderShipController.createStockInEntry()', 'POST', 1, 'admin', NULL, '/purchase/PurchaseOrderShip/createStockInEntry', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-04-24 16:21:52\",\"goodsList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":1964,\"inQty\":10,\"orderId\":468,\"params\":{},\"quantity\":10,\"remark\":\"\",\"sizeValue\":\"2XL\",\"specId\":1327,\"specNum\":\"JKL31120705\",\"styleValue\":\"\"}],\"id\":468,\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 09:36:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 09:40:03', 30);
INSERT INTO `sys_oper_log` VALUES (438, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":0,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"11\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":1794181606552338400,\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":1,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 10:21:12', 27645);
INSERT INTO `sys_oper_log` VALUES (439, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":1,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"admin\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 10:20:56\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":1794181606552338400,\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":1,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"入库成功\",\"code\":200}', 0, NULL, '2024-05-25 10:22:35', 68);
INSERT INTO `sys_oper_log` VALUES (440, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":1,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"admin\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 10:22:35\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":1794181606552338400,\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":2,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"入库成功\",\"code\":200}', 0, NULL, '2024-05-25 10:26:14', 104435);
INSERT INTO `sys_oper_log` VALUES (441, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":1,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"admin\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 10:22:35\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":1794181606552338400,\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":2,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"入库成功\",\"code\":200}', 0, NULL, '2024-05-25 10:29:16', 69563);
INSERT INTO `sys_oper_log` VALUES (442, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":1,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"admin\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 10:22:35\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":1794181606552338400,\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":2,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"入库成功\",\"code\":200}', 0, NULL, '2024-05-25 10:33:47', 58368);
INSERT INTO `sys_oper_log` VALUES (443, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":1,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"admin\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 10:22:35\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":\"1794181606552338400\",\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":2,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"入库成功\",\"code\":200}', 0, NULL, '2024-05-25 10:35:52', 61);
INSERT INTO `sys_oper_log` VALUES (444, '入库单', 2, 'cn.qihangerp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"id\":\"1794181606514589698\",\"sourceGoodsUnit\":1,\"sourceId\":468,\"sourceNo\":\"PUR20240424162152\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":1,\"stockInNum\":\"20240525094003\",\"stockInOperator\":\"admin\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-05-25 10:19:41\",\"updateBy\":\"admin\",\"updateTime\":\"2024-05-25 10:35:52\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg\",\"colorValue\":\"烟灰色\",\"createBy\":\"admin\",\"createTime\":\"2024-05-25 09:40:04\",\"entryId\":\"1794181606514589698\",\"goodsId\":68,\"goodsName\":\"JKL3112松紧腰束脚哈伦裤\",\"goodsNum\":\"JKL3112\",\"id\":\"1794181606552338433\",\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"quantity\":1,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":468,\"sourceItemId\":1964,\"sourceType\":1,\"specId\":1327,\"specNum\":\"JKL31120705\",\"status\":0,\"styleValue\":\"\"}]}', '{\"msg\":\"入库成功\",\"code\":200}', 0, NULL, '2024-05-25 10:36:15', 34);
INSERT INTO `sys_oper_log` VALUES (445, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-29 16:53:03\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":5,\"menuName\":\"订单管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"/sale\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-03 16:20:20', 43);
INSERT INTO `sys_oper_log` VALUES (446, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/ewaybillPrint/index\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"面单打印\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":6,\"path\":\"ewaybill_print\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-03 16:21:14', 10);
INSERT INTO `sys_oper_log` VALUES (447, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sale/order/index\",\"createTime\":\"2023-12-31 20:05:05\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"订单处理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":5,\"path\":\"order_list\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-03 16:21:56', 10);
INSERT INTO `sys_oper_log` VALUES (448, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/platform\",\"createTime\":\"2024-04-12 16:58:07\",\"icon\":\"date-range\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2079,\"menuName\":\"电商平台设置\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":1,\"path\":\"platform\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-04 10:20:36', 28);
INSERT INTO `sys_oper_log` VALUES (449, '店铺', 2, 'cn.qihangerp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"company\":\"华衣云商\",\"createTime\":\"2024-06-04 11:20:13\",\"ename\":\"kuaishou\",\"id\":8,\"isDelete\":0,\"name\":\"梦小妮牛仔裤-快手\",\"nickName\":\"快手小店\",\"orderNum\":0,\"platform\":8,\"remark\":\"1\",\"sellerShopId\":12,\"updateTime\":\"2024-06-04 12:07:55.484\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-04 12:07:55', 211);
INSERT INTO `sys_oper_log` VALUES (450, '店铺', 2, 'cn.qihangerp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"accessToken\":\"81_YbU9QodS3Li-hdOwls3ytkVGG2f0OpSOLzSzgiEV66YVWMKU6xkzFJAOGlqOQYSEJcldFTQDW0R4JdOSt2-34obCuCsiddbpswOmlIrvFNhy5iPp3SaKpBbWfXASUYjAFAOQU\",\"appKey\":\"wx720ff3dc8618810700\",\"appSercet\":\"b2fd7647ebcd88860de8087eb3ac425400\",\"company\":\"煜梦服饰\",\"createTime\":\"2024-06-04 11:19:54\",\"ename\":\"wei\",\"id\":2,\"isDelete\":0,\"name\":\"视频号店铺-测试\",\"nickName\":\"视频号-梦小妮\",\"orderNum\":0,\"platform\":2,\"remark\":\"\",\"sellerShopId\":100061591,\"updateTime\":\"2024-06-04 12:32:52.048\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-04 12:32:52', 114);
INSERT INTO `sys_oper_log` VALUES (451, '店铺', 2, 'cn.qihangerp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"accessToken\":\"81_YbU9QodS3Li-hdOwls3ytkVGG2f0OpSOLzSzgiEV66YVWMKU6xkzFJAOGlqOQYSEJcldFTQDW0R4JdOSt2-34obCuCsiddbpswOmlIrvFNhy5iPp3SaKpBbWfXASUYjAFAOQU\",\"appKey\":\"wx720ff3dc86188107\",\"appSercet\":\"b2fd7647ebcd88860de8087eb3ac4254\",\"company\":\"煜梦服饰\",\"createTime\":\"2024-06-04 11:19:54\",\"ename\":\"wei\",\"id\":2,\"isDelete\":0,\"name\":\"视频号店铺-测试\",\"nickName\":\"视频号-梦小妮\",\"orderNum\":0,\"platform\":2,\"remark\":\"\",\"sellerShopId\":100061591,\"updateTime\":\"2024-06-04 12:32:59.81\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-04 12:32:59', 9);
INSERT INTO `sys_oper_log` VALUES (452, '店铺', 2, 'cn.qihangerp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"accessExpiresIn\":0,\"accessToken\":\"86f2571c06714f0eaf02ce3924e0698b064f03c0\",\"accessTokenBegin\":0,\"company\":\"煜梦服饰\",\"createTime\":\"2024-06-04 11:20:04\",\"ename\":\"pdd\",\"id\":5,\"isDelete\":0,\"name\":\"梦小妮-拼多多\",\"nickName\":\"拼多多-梦小妮\",\"orderNum\":0,\"platform\":5,\"refreshTokenTimeout\":0,\"remark\":\"\",\"sellerShopId\":100061591,\"updateTime\":\"2024-06-11 13:37:51.285\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-11 13:37:51', 81);
INSERT INTO `sys_oper_log` VALUES (453, '菜单管理', 1, 'cn.qihangerp.api.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"path\":\"goods/category/attr_add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 20:34:48', 15);
INSERT INTO `sys_oper_log` VALUES (454, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createTime\":\"2024-06-21 20:34:48\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"添加规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"path\":\"goods/goods_category/attr_add\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 20:35:28', 10);
INSERT INTO `sys_oper_log` VALUES (455, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createTime\":\"2024-06-21 20:34:48\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"添加规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"path\":\"attr_add\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 20:36:39', 9);
INSERT INTO `sys_oper_log` VALUES (456, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createTime\":\"2024-06-21 20:34:48\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"添加规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2,\"path\":\"attr_add\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 20:37:48', 8);
INSERT INTO `sys_oper_log` VALUES (457, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createTime\":\"2024-06-21 20:34:48\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"添加规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2,\"path\":\"goods_category/attr_add\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 20:45:34', 8);
INSERT INTO `sys_oper_log` VALUES (458, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createTime\":\"2024-06-21 20:34:48\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"分类规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2,\"path\":\"goods_category/attribute\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 20:48:00', 7);
INSERT INTO `sys_oper_log` VALUES (459, '商品分类属性', 1, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.add()', 'POST', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"code\":\"color\",\"params\":{},\"title\":\"aaa\",\"type\":0}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'category_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\projects\\qihang-erp\\api\\target\\classes\\mapper\\api\\ErpGoodsCategoryAttributeMapper.xml]\r\n### The error may involve cn.qihangerp.api.mapper.ErpGoodsCategoryAttributeMapper.insertErpGoodsCategoryAttribute-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into erp_goods_category_attribute          ( type,             title,             code )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'category_id\' doesn\'t have a default value\n; Field \'category_id\' doesn\'t have a default value', '2024-06-21 21:03:55', 66);
INSERT INTO `sys_oper_log` VALUES (460, '商品分类属性', 1, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.add()', 'POST', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"categoryId\":1,\"code\":\"color\",\"id\":117,\"params\":{},\"title\":\"222\",\"type\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:05:31', 9);
INSERT INTO `sys_oper_log` VALUES (461, '商品分类属性', 2, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.edit()', 'PUT', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"categoryId\":1,\"code\":\"color\",\"id\":114,\"params\":{},\"title\":\"颜色\",\"type\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:05:52', 5);
INSERT INTO `sys_oper_log` VALUES (462, '商品分类属性', 2, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.edit()', 'PUT', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"categoryId\":1,\"code\":\"color\",\"id\":114,\"params\":{},\"title\":\"颜色\",\"type\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:06:14', 4);
INSERT INTO `sys_oper_log` VALUES (463, '商品分类属性', 2, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.edit()', 'PUT', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"categoryId\":1,\"code\":\"color\",\"id\":114,\"params\":{},\"title\":\"颜色\",\"type\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:06:33', 8);
INSERT INTO `sys_oper_log` VALUES (464, '商品分类属性', 2, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.edit()', 'PUT', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"categoryId\":1,\"code\":\"color\",\"id\":117,\"params\":{},\"title\":\"222\",\"type\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:07:08', 7);
INSERT INTO `sys_oper_log` VALUES (465, '商品分类属性', 2, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.edit()', 'PUT', 1, 'admin', NULL, '/goods/categoryAttribute', '127.0.0.1', '内网IP', '{\"categoryId\":1,\"code\":\"color\",\"id\":117,\"params\":{},\"title\":\"222\",\"type\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:07:13', 7);
INSERT INTO `sys_oper_log` VALUES (466, '商品分类属性', 3, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeController.remove()', 'DELETE', 1, 'admin', NULL, '/goods/categoryAttribute/117', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:07:16', 7);
INSERT INTO `sys_oper_log` VALUES (467, '菜单管理', 1, 'cn.qihangerp.api.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttributeValue\",\"createBy\":\"admin\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"规格属性值\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2,\"path\":\"goods_category/attribute_value\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:14:34', 5);
INSERT INTO `sys_oper_log` VALUES (468, '商品分类属性值', 1, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeValueController.add()', 'POST', 1, 'admin', NULL, '/goods/categoryAttributeValue', '127.0.0.1', '内网IP', '{\"id\":424,\"isDelete\":0,\"params\":{},\"skuCode\":\"AA\",\"value\":\"AAAA\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:22:23', 7);
INSERT INTO `sys_oper_log` VALUES (469, '商品分类属性值', 1, 'cn.qihangerp.api.controller.ErpGoodsCategoryAttributeValueController.add()', 'POST', 1, 'admin', NULL, '/goods/categoryAttributeValue', '127.0.0.1', '内网IP', '{\"categoryAttributeId\":116,\"id\":425,\"isDelete\":0,\"params\":{},\"skuCode\":\"AA\",\"value\":\"AA\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:23:51', 8);
INSERT INTO `sys_oper_log` VALUES (470, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttributeValue\",\"createTime\":\"2024-06-21 21:14:34\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2087,\"menuName\":\"规格属性值\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2,\"path\":\"goods_category/attribute_value\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:25:33', 6);
INSERT INTO `sys_oper_log` VALUES (471, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/category/categoryAttribute\",\"createTime\":\"2024-06-21 20:34:48\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"分类规格属性\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2,\"path\":\"goods_category/attribute\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-21 21:25:39', 7);
INSERT INTO `sys_oper_log` VALUES (472, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sale/order/index\",\"createTime\":\"2023-12-31 20:05:05\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"所有订单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":5,\"path\":\"order_list\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:04:30', 14);
INSERT INTO `sys_oper_log` VALUES (473, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/order_pull_log\",\"createTime\":\"2023-12-31 20:04:12\",\"icon\":\"upload\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2032,\"menuName\":\"订单拉取日志\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":5,\"path\":\"order/pull_log\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:04:43', 5);
INSERT INTO `sys_oper_log` VALUES (474, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/data\",\"createTime\":\"2023-12-29 17:04:08\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"店铺订单统计\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":5,\"path\":\"data\",\"perms\":\"shop:data\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:05:00', 10);
INSERT INTO `sys_oper_log` VALUES (475, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/order_pull_log\",\"createTime\":\"2023-12-31 20:04:12\",\"icon\":\"upload\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2032,\"menuName\":\"订单拉取日志\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":5,\"path\":\"order/pull_log\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:05:08', 8);
INSERT INTO `sys_oper_log` VALUES (476, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/ewaybillPrint/index\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"电子面单打印\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":6,\"path\":\"ewaybill_print\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:06:12', 8);
INSERT INTO `sys_oper_log` VALUES (477, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/shipFee\",\"createTime\":\"2024-01-12 18:35:31\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2063,\"menuName\":\"发货费用\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":6,\"path\":\"ship_fee\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:06:40', 7);
INSERT INTO `sys_oper_log` VALUES (478, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/stocking\",\"createTime\":\"2024-01-09 11:51:52\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2059,\"menuName\":\"备货清单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":6,\"path\":\"stocking\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:06:57', 6);
INSERT INTO `sys_oper_log` VALUES (479, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/logistics/company\",\"createTime\":\"2024-01-03 14:14:09\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2052,\"menuName\":\"物流公司管理\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":6,\"path\":\"logistics_company\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:07:25', 9);
INSERT INTO `sys_oper_log` VALUES (480, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/stockOut\",\"createTime\":\"2024-01-09 13:39:00\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2060,\"menuName\":\"拣货出库\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":6,\"path\":\"stockout\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:07:41', 8);
INSERT INTO `sys_oper_log` VALUES (481, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/ewaybillPrint/index\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"电子面单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":6,\"path\":\"ewaybill_print\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:08:18', 7);
INSERT INTO `sys_oper_log` VALUES (482, '菜单管理', 2, 'cn.qihangerp.api.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shipping/ewaybillPrint/index\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"电子面单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":6,\"path\":\"ewaybill_print\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:08:55', 9);
INSERT INTO `sys_oper_log` VALUES (483, '菜单管理', 1, 'cn.qihangerp.api.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"电子面单打印\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":6,\"path\":\"print\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-23 22:09:43', 9);
INSERT INTO `sys_oper_log` VALUES (484, '店铺', 2, 'cn.qihangerp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"accessExpiresIn\":0,\"accessToken\":\"\",\"accessTokenBegin\":0,\"company\":\"煜梦服饰\",\"createTime\":\"2024-06-04 11:20:04\",\"ename\":\"pdd\",\"id\":5,\"isDelete\":0,\"name\":\"启航牛ERP系统\",\"nickName\":\"启航牛ERP系统-拼多多\",\"orderNum\":0,\"platform\":5,\"refreshTokenTimeout\":0,\"remark\":\"\",\"sellerShopId\":100061591,\"updateTime\":\"2024-09-01 19:02:17.459\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-01 19:02:17', 24);

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `oss_id` bigint NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '文件名',
  `original_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '原名',
  `file_suffix` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '文件后缀名',
  `url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'URL地址',
  `object_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '对象名',
  `bucket` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '桶名',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`oss_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-08-07 19:31:37', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-08-07 19:31:37', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-08-07 19:31:37', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-08-07 19:31:37', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-08-07 19:31:37', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-08-07 19:31:37', 'admin', '2024-04-15 10:29:55', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task`  (
  `id` int NOT NULL,
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES (1, '更新淘宝订单', '-', NULL, '定时更新淘宝订单', '2024-03-07 09:52:40');
INSERT INTO `sys_task` VALUES (2, '更新京东订单', '-', NULL, '定时更新京东订单', '2024-03-07 09:23:36');

-- ----------------------------
-- Table structure for sys_task_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_logs`;
CREATE TABLE `sys_task_logs`  (
  `id` bigint NOT NULL COMMENT '主键ID',
  `task_id` int NULL DEFAULT NULL COMMENT '任务ID',
  `result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结果',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始运行时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `status` int NULL DEFAULT NULL COMMENT '状态1运行中，2已结束',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_task_logs
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '启航', '00', '280645618@qq.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-23 09:46:15', 'admin', '2023-08-07 19:31:37', '', '2024-10-23 09:46:15', '管理员');
INSERT INTO `sys_user` VALUES (2, 101, 'qihang', 'qihang', '00', 'qihang@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-23 09:46:23', 'admin', '2023-08-07 19:31:37', 'admin', '2024-10-23 09:46:22', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'admin11', 'aa', '00', '', '', '1', '', '$2a$10$VD49q2rn1ATpQDZJJrmJjuG52b4EkOTTZ0MPbRRmcqEYLmB5mAMsG', '0', '2', '', NULL, 'admin', '2024-04-24 11:06:27', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (101, NULL, '233232', '22233', '00', '', '', '0', '', '$2a$10$.SY9em0q2OGh8kFEHLnW8u1pAWJc1WaOneCEL8XapLkTCbgD94Q/.', '0', '0', '', NULL, 'admin', '2024-08-18 12:15:56', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for wms_goods_bad_stock
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods_bad_stock`;
CREATE TABLE `wms_goods_bad_stock`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goodsId` int NOT NULL COMMENT '商品id',
  `specId` int NOT NULL COMMENT '商品规格id',
  `specNumber` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规格编码（唯一）',
  `sourceId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '来源ID（type==1时 order_send_return主键id）',
  `type` int NOT NULL COMMENT '类型（1退货报损3待退还供应商）',
  `locationId` int NOT NULL DEFAULT 0 COMMENT '仓位',
  `quantity` int NOT NULL DEFAULT 0 COMMENT '数量',
  `lossAmount` double NOT NULL DEFAULT 0 COMMENT '损失金额（最大成本）',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常  1删除',
  `result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理结果',
  `resultTime` datetime NULL DEFAULT NULL COMMENT '处理时间',
  `reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '理由',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '是否处理0未处理1已处理',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '不良品库存' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_goods_bad_stock
-- ----------------------------
INSERT INTO `wms_goods_bad_stock` VALUES (1, 13, 88, '28202206810101', '20', 1, 0, 1, 29, 0, '计入损失', '2022-10-03 17:39:32', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-10-03 17:39:32', '2022-10-03 17:39:32');
INSERT INTO `wms_goods_bad_stock` VALUES (2, 33, 497, 'HN08017503', '76', 1, 0, 1, 28, 0, '计入损失', '2022-10-16 18:00:00', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-10-16 18:00:00', '2022-10-16 18:00:00');
INSERT INTO `wms_goods_bad_stock` VALUES (3, 33, 502, 'HN08012903', '249', 1, 0, 1, 28, 0, '计入损失', '2022-11-07 09:42:33', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-11-07 09:42:33', '2022-11-07 09:42:33');
INSERT INTO `wms_goods_bad_stock` VALUES (4, 15, 119, '28202106610102', '174', 1, 0, 1, 29, 0, '计入损失', '2022-11-07 09:43:20', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-11-07 09:43:20', '2022-11-07 09:43:20');
INSERT INTO `wms_goods_bad_stock` VALUES (5, 37, 558, 'HN1062904', '327', 1, 0, 1, 31, 0, '计入损失', '2022-12-08 10:08:14', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-12-08 10:08:14', '2022-12-08 10:08:14');

-- ----------------------------
-- Table structure for wms_goods_bad_stock_log
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods_bad_stock_log`;
CREATE TABLE `wms_goods_bad_stock_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stockId` bigint NOT NULL COMMENT '商品id',
  `specId` int NOT NULL COMMENT '商品规格id',
  `locationId` int NOT NULL COMMENT '所在仓位',
  `type` int NOT NULL COMMENT '类型1入库2出库',
  `quantity` bigint NOT NULL DEFAULT 0 COMMENT '数量',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '不良品库存日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_goods_bad_stock_log
-- ----------------------------
INSERT INTO `wms_goods_bad_stock_log` VALUES (1, 1, 88, 0, 1, 1, '退货不良品入库SKU :28202206810101退货单号:BAD221003173932494', '2022-10-03 17:39:32');
INSERT INTO `wms_goods_bad_stock_log` VALUES (2, 2, 497, 0, 1, 1, '退货不良品入库SKU :HN08017503退货单号:BAD221016180000005', '2022-10-16 18:00:00');
INSERT INTO `wms_goods_bad_stock_log` VALUES (3, 3, 502, 0, 1, 1, '退货不良品入库SKU :HN08012903退货单号:BAD221107094233114', '2022-11-07 09:42:33');
INSERT INTO `wms_goods_bad_stock_log` VALUES (4, 4, 119, 0, 1, 1, '退货不良品入库SKU :28202106610102退货单号:BAD221107094320707', '2022-11-07 09:43:20');
INSERT INTO `wms_goods_bad_stock_log` VALUES (5, 5, 558, 0, 1, 1, '退货不良品入库SKU :HN1062904退货单号:BAD221208100814778', '2022-12-08 10:08:14');

-- ----------------------------
-- Table structure for wms_stock_in_entry
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_in_entry`;
CREATE TABLE `wms_stock_in_entry`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `stock_in_num` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '入库单据编号',
  `source_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源单号',
  `source_id` bigint NULL DEFAULT NULL COMMENT '来源单id',
  `source_type` int NOT NULL COMMENT '来源类型（1采购订单2退货订单）',
  `source_goods_unit` int NULL DEFAULT NULL COMMENT '采购订单商品数',
  `source_spec_unit_total` int NULL DEFAULT NULL COMMENT '采购订单总件数',
  `source_spec_unit` int NULL DEFAULT NULL COMMENT '采购订单商品规格数',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `stock_in_operator_id` int NULL DEFAULT NULL COMMENT '操作入库人id',
  `stock_in_operator` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作入库人',
  `stock_in_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `status` int NOT NULL DEFAULT 0 COMMENT '状态（0待入库1部分入库2全部入库）',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1794181606514589699 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_in_entry
-- ----------------------------
INSERT INTO `wms_stock_in_entry` VALUES (8, '20240116145057', 'PUR20240116144408', 466, 1, 1, 10, 1, NULL, 1, 'admin', '2024-01-16 00:00:00', 2, 'admin', '2024-01-16 14:50:58', 'admin', '2024-01-16 14:52:10');
INSERT INTO `wms_stock_in_entry` VALUES (1794180570081099778, '20240525093556', 'PUR20240525093505', 469, 1, 1, 10, 1, NULL, NULL, NULL, NULL, 0, 'admin', '2024-05-25 09:35:57', NULL, NULL);
INSERT INTO `wms_stock_in_entry` VALUES (1794181606514589698, '20240525094003', 'PUR20240424162152', 468, 1, 1, 10, 1, NULL, 1, 'admin', '2024-05-25 10:19:41', 1, 'admin', '2024-05-25 09:40:04', 'admin', '2024-05-25 10:36:15');

-- ----------------------------
-- Table structure for wms_stock_in_entry_item
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_in_entry_item`;
CREATE TABLE `wms_stock_in_entry_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_id` bigint NOT NULL COMMENT '入库单id',
  `source_type` int NULL DEFAULT NULL COMMENT '来源类型（1采购订单2退货订单）',
  `source_id` bigint NULL DEFAULT NULL COMMENT '来源单id',
  `source_item_id` bigint NOT NULL COMMENT '来源单itemId',
  `goods_id` bigint NOT NULL COMMENT '商品id',
  `goods_num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spec_id` bigint NOT NULL COMMENT '商品规格id',
  `spec_num` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `color_value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `color_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `size_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '尺码',
  `style_value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '款式',
  `original_quantity` bigint NULL DEFAULT NULL COMMENT '原始数量',
  `in_quantity` bigint NOT NULL COMMENT '入库数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `location_id` int NULL DEFAULT NULL COMMENT '入库仓位',
  `location_num` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库仓位编码',
  `status` int NULL DEFAULT 0 COMMENT '状态（0待入库1部分入库2全部入库）',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specIndex`(`spec_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1794181606552338434 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库单明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_in_entry_item
-- ----------------------------
INSERT INTO `wms_stock_in_entry_item` VALUES (4, 8, 1, 466, 1962, 9, 'HN8026', 'HN8026牛仔短裤', 32, '2720210080260105', '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', '2XL', '', 10, 10, '', NULL, NULL, 2, 'admin', '2024-01-16 14:50:58', 'admin', '2024-01-16 14:52:10');
INSERT INTO `wms_stock_in_entry_item` VALUES (1794180570152402946, 1794180570081099778, 1, 469, 1965, 29, 'HNP182', 'HNP182弹力紧身贴标牛仔短裤女ins', 439, 'HNP1825005', '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', '2XL', '', 10, 0, '', NULL, NULL, 0, 'admin', '2024-05-25 09:35:57', NULL, NULL);
INSERT INTO `wms_stock_in_entry_item` VALUES (1794181606552338433, 1794181606514589698, 1, 468, 1964, 68, 'JKL3112', 'JKL3112松紧腰束脚哈伦裤', 1327, 'JKL31120705', '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', '2XL', '', 10, 1, '', NULL, NULL, 1, 'admin', '2024-05-25 09:40:04', 'admin', '2024-05-25 10:36:15');

-- ----------------------------
-- Table structure for wms_stock_location
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_location`;
CREATE TABLE `wms_stock_location`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '货架编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '货架名称',
  `parent_id` int NOT NULL COMMENT '上级id',
  `depth` int NULL DEFAULT 1 COMMENT '层级深度1级2级3级',
  `parent_id1` int NOT NULL COMMENT '一级类目id',
  `parent_id2` int NOT NULL COMMENT '二级类目id',
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `isDelete` int NOT NULL DEFAULT 0 COMMENT '0正常  1删除',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '仓库货架表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_location
-- ----------------------------
INSERT INTO `wms_stock_location` VALUES (1, '001', '深圳虚拟仓库', 0, 1, 0, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:10', NULL, '2022-03-07 20:06:10');
INSERT INTO `wms_stock_location` VALUES (2, 'A', 'A区', 1, 2, 1, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:24', NULL, '2022-03-07 20:06:24');
INSERT INTO `wms_stock_location` VALUES (3, 'B', 'B区', 1, 2, 1, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:38', NULL, '2022-03-07 20:06:38');
INSERT INTO `wms_stock_location` VALUES (4, 'C', 'C区', 1, 2, 1, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:47', NULL, '2022-03-07 20:06:47');
INSERT INTO `wms_stock_location` VALUES (5, 'A01-1-01', 'A01-1-01', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (6, 'A01-1-02', 'A01-1-02', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (7, 'A01-1-03', 'A01-1-03', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (8, 'A01-1-04', 'A01-1-04', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (9, 'A01-1-05', 'A01-1-05', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (10, 'A01-1-06', 'A01-1-06', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (11, 'A01-1-07', 'A01-1-07', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (12, 'A01-1-08', 'A01-1-08', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (13, 'A01-1-09', 'A01-1-09', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (14, 'A01-1-10', 'A01-1-10', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (15, 'A01-1-11', 'A01-1-11', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (16, 'A01-1-12', 'A01-1-12', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (17, 'A01-1-13', 'A01-1-13', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (18, 'A01-1-14', 'A01-1-14', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (19, 'A01-1-15', 'A01-1-15', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (20, 'A01-1-16', 'A01-1-16', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');

-- ----------------------------
-- Table structure for wms_stock_out_entry
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out_entry`;
CREATE TABLE `wms_stock_out_entry`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stock_out_num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出库单编号',
  `source_num` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源单据号',
  `source_id` bigint NULL DEFAULT NULL COMMENT '来源单据Id',
  `stock_out_type` int NOT NULL DEFAULT 1 COMMENT '出库类型1订单拣货出库2采购退货出库3盘点出库4报损出库',
  `goods_unit` int NOT NULL COMMENT '商品数',
  `spec_unit` int NOT NULL COMMENT '商品规格数',
  `spec_unit_total` int NOT NULL COMMENT '总件数',
  `out_total` int NULL DEFAULT NULL COMMENT '已出库数量',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态：0待出库1部分出库2全部出库',
  `print_status` int NOT NULL COMMENT '打印状态：是否打印1已打印0未打印',
  `print_time` datetime NULL DEFAULT NULL COMMENT '打印时间',
  `out_time` datetime NULL DEFAULT NULL COMMENT '出库时间',
  `complete_time` datetime NULL DEFAULT NULL COMMENT '完成出库时间',
  `operator_id` int NULL DEFAULT 0 COMMENT '出库操作人userid',
  `operator_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库操作人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1794205460481933314 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_out_entry
-- ----------------------------
INSERT INTO `wms_stock_out_entry` VALUES (1785676644348735490, '202405012220056', NULL, NULL, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, '2024-05-01 22:24:23', '生成拣货单', '2024-05-01 22:24:22', NULL);
INSERT INTO `wms_stock_out_entry` VALUES (1786204816504958978, '202405030923075', NULL, NULL, 1, 1, 1, 1, 1, NULL, 2, 0, NULL, '2024-05-03 10:56:33', '2024-05-03 10:56:33', 1, 'admin', '2024-05-03 09:23:09', '生成拣货单', '2024-05-03 10:56:34', '出库');
INSERT INTO `wms_stock_out_entry` VALUES (1788393466709282818, '202405091020024', NULL, NULL, 1, 1, 1, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, '2024-05-09 10:20:04', '生成拣货单', '2024-05-09 10:20:03', NULL);
INSERT INTO `wms_stock_out_entry` VALUES (1794205460481933313, '202405251109432', NULL, NULL, 1, 1, 1, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, '2024-05-25 11:14:51', '生成拣货单', '2024-05-25 11:14:51', NULL);

-- ----------------------------
-- Table structure for wms_stock_out_entry_item
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out_entry_item`;
CREATE TABLE `wms_stock_out_entry_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `stock_out_type` int NOT NULL COMMENT '出库类型1订单拣货出库2采购退货出库3盘点出库4报损出库',
  `entry_id` bigint NOT NULL COMMENT '出库单id（外键）',
  `source_order_id` bigint NOT NULL COMMENT '来源订单id',
  `source_order_item_id` bigint NOT NULL COMMENT '来源订单itemId出库对应的itemId，如：order_item表id、invoice_info表id',
  `source_order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '来源订单号',
  `goods_id` int NOT NULL COMMENT '商品id',
  `spec_id` int NOT NULL COMMENT '商品规格id',
  `spec_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规格编码',
  `original_quantity` bigint NOT NULL COMMENT '总数量',
  `out_quantity` bigint NOT NULL DEFAULT 0 COMMENT '已出库数量',
  `complete_time` datetime NULL DEFAULT NULL COMMENT '完成出库时间',
  `picked_time` datetime NULL DEFAULT NULL COMMENT '完成拣货时间',
  `status` int NOT NULL DEFAULT 0 COMMENT '状态：0待出库1部分出库2全部出库',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specIndex`(`spec_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1794205460544847874 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_out_entry_item
-- ----------------------------
INSERT INTO `wms_stock_out_entry_item` VALUES (1785676644373901314, 1, 1785676644348735490, 38, 442, '2055782964491095876', 9, 23, '2720210080260001', 1, 0, NULL, NULL, 0, '2024-05-01 22:24:23', NULL);
INSERT INTO `wms_stock_out_entry_item` VALUES (1786204816504958979, 1, 1786204816504958978, 41, 1785584827112509446, '2137984935735126281', 9, 32, '2720210080260105', 1, 1, '2024-05-03 10:56:27', '2024-05-03 10:56:26', 2, '2024-05-03 09:23:09', NULL);
INSERT INTO `wms_stock_out_entry_item` VALUES (1788393466763808769, 1, 1788393466709282818, 51, 1785584827112509452, 'A13885020023320', 1228, 1228, 'GZYYZ72773100', 1, 0, NULL, NULL, 0, '2024-05-09 10:20:04', NULL);
INSERT INTO `wms_stock_out_entry_item` VALUES (1794205460544847873, 1, 1794205460481933313, 49, 1785584827112509450, 'AD3702565220', 1229, 1229, 'GZYYZ72776200', 1, 0, NULL, NULL, 0, '2024-05-25 11:14:51', NULL);

-- ----------------------------
-- Table structure for wms_stock_out_entry_item_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out_entry_item_detail`;
CREATE TABLE `wms_stock_out_entry_item_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `entry_id` bigint NOT NULL COMMENT '出库单ID',
  `entry_item_id` bigint NOT NULL DEFAULT 0 COMMENT '出库单ItemID',
  `goods_inventory_id` bigint NOT NULL DEFAULT 0 COMMENT '库存ID',
  `goods_inventory_detail_id` bigint NOT NULL DEFAULT 0 COMMENT '库存详情ID',
  `quantity` bigint NOT NULL DEFAULT 0 COMMENT '出库数量',
  `location_id` int NULL DEFAULT NULL COMMENT '出库仓位ID',
  `operator_id` int NULL DEFAULT 0 COMMENT '出库操作人userid',
  `operator_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库操作人',
  `out_time` datetime NULL DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_stock_info_item_id_index`(`goods_inventory_detail_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1786228283631636482 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库明细详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_out_entry_item_detail
-- ----------------------------
INSERT INTO `wms_stock_out_entry_item_detail` VALUES (1786220616376844290, 1786204816504958978, 1786204816504958979, 6, 7, 1, 20, 1, 'admin', '2024-05-03 10:25:55');
INSERT INTO `wms_stock_out_entry_item_detail` VALUES (1786228283631636481, 1786204816504958978, 1786204816504958979, 6, 7, 1, 20, 1, 'admin', '2024-05-03 10:56:24');

SET FOREIGN_KEY_CHECKS = 1;
