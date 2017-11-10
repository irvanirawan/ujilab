/*
Navicat MySQL Data Transfer

Source Server         : ujilab
Source Server Version : 50637
Source Host           : tangkota.com:3306
Source Database       : jamhari_ujilabdb

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-11-10 09:54:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `users_id` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `alamat` text,
  `npwp` varchar(30) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('13', 'PT maju pesat', 'jalan prabu kiansantang', '123456789', '0215544332211', '2017-11-01 02:31:53', '2017-11-03 16:01:31');
INSERT INTO `customer` VALUES ('14', 'dfdfd', 'dfdf', '2323232', '23232323', '2017-11-01 09:04:50', '2017-11-01 09:04:50');
INSERT INTO `customer` VALUES ('15', 'JAMHARI', 'JAMHARI', '984938', '3849384', '2017-11-01 13:45:10', '2017-11-01 13:45:10');
INSERT INTO `customer` VALUES ('16', 'tes', 'tes', '123', '123', '2017-11-04 08:12:22', '2017-11-04 08:12:22');
INSERT INTO `customer` VALUES ('17', 'cvrgrgrjymhn', 'jjoudoyfdioifiugfhjcsjcoisofsdgjoisjfoishgiydhfvhiuhesdhloihhdljfhfldgdhglreh;osijoifhgbfhf', '4554657763298928', '0812345763864', '2017-11-04 14:33:54', '2017-11-04 14:33:54');
INSERT INTO `customer` VALUES ('18', 'pt.dea', 'deasy', '168491673', '3089164938', '2017-11-04 15:48:48', '2017-11-04 15:48:48');
INSERT INTO `customer` VALUES ('19', 'puguh', 'PT Trimitra', '87998797', '099897', '2017-11-04 15:52:27', '2017-11-04 15:52:27');
INSERT INTO `customer` VALUES ('20', 'PT. Cahaya silau', 'jl. kali biru belok kanan', '123456789999999', '085678543245', '2017-11-04 15:59:54', '2017-11-04 17:32:18');
INSERT INTO `customer` VALUES ('21', 'Hsjsh', 'Hshshs', '64646', '64646', '2017-11-04 17:06:26', '2017-11-04 17:06:26');
INSERT INTO `customer` VALUES ('22', 'sekarang', 'sekarang', '98765', '987654', '2017-11-06 07:17:20', '2017-11-06 07:17:20');
INSERT INTO `customer` VALUES ('23', 'hope world', 'hope on the street', '0019918273554', '08500963726', '2017-11-06 15:21:11', '2017-11-06 15:21:11');
INSERT INTO `customer` VALUES ('24', 'pt pt', 'eglsdjgfkldsj', '1287182', '9876876', '2017-11-08 17:31:51', '2017-11-08 17:31:51');
INSERT INTO `customer` VALUES ('25', 'Pt gogo', 'Sangiang', '123654', '083872990822', '2017-11-09 06:30:02', '2017-11-09 06:30:02');

-- ----------------------------
-- Table structure for fileupload
-- ----------------------------
DROP TABLE IF EXISTS `fileupload`;
CREATE TABLE `fileupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fileupload
-- ----------------------------
INSERT INTO `fileupload` VALUES ('1', 'tes.pdf', 'k001', '3', '2017-11-08', '2017-11-08');
INSERT INTO `fileupload` VALUES ('2', 'Desert.jpg', 'hju', '3', '2017-11-08', '2017-11-08');
INSERT INTO `fileupload` VALUES ('3', 'Hydrangeas.jpg', 'hgf', '3', '2017-11-08', '2017-11-08');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nama_kategori` (`nama_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('1', 'Air', null, '2017-11-07');
INSERT INTO `kategori` VALUES ('2', 'Udara', null, null);
INSERT INTO `kategori` VALUES ('3', 'Padatan', null, null);

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS `komentar`;
CREATE TABLE `komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `own` int(11) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of komentar
-- ----------------------------
INSERT INTO `komentar` VALUES ('6', '17', 'saya', '9', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('7', '17', 'saya', '9', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('8', '17', 'kamu', '9', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('9', '16', 'tes', '6', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('10', '20', 'ok', '6', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('11', '19', 'hoy', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('12', '19', 'nob', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('13', '99', 'iyaa', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('14', '19', 'puguh', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('15', '16', 'lagi', '6', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('16', '16', 'lagi', '6', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('17', '20', 'halo', '12', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('18', '16', 'vfnbgf', '6', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('19', '19', 'hghfhgfhgfhgfhgfhfhgfhfhf jhghgfjhgjgjgj jhfjhfgjhgjhgjhg', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('20', '19', 'fhggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg hyfffffffffffffffffffffff', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('21', '19', 'jhgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggghghgjjgh', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('22', '19', 'gsdf', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('23', '19', 'aaaaaaaaaaaa bbbbbbbbbbbbbbbbbbbb cccccccccc', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('24', '19', 'Puguh DWi SAmdik', '11', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('25', '20', 'annyeong', '13', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('26', '21', 'Hahah', '14', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('27', '21', 'Hshshs', '14', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('28', '20', 'hoseok', '15', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('29', '99', 'ok', '15', '2017-11-04', '2017-11-04');
INSERT INTO `komentar` VALUES ('30', '16', 'tes', '3', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('31', '16', 'kjuhuj', '3', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('32', '19', 'jshdf', '11', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('33', '19', 'dkahskjdajsgdjasdajsdghjas', '11', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('34', '19', 'nhgjhv', '18', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('35', '16', 'yang bener', '18', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('36', '16', 'Ok', '18', '2017-11-08', '2017-11-08');
INSERT INTO `komentar` VALUES ('37', '25', 'Haloo', '20', '2017-11-09', '2017-11-09');
INSERT INTO `komentar` VALUES ('38', '24', 'drghdfg', '19', '2017-11-09', '2017-11-09');
INSERT INTO `komentar` VALUES ('39', '24', 'jygygy', '19', '2017-11-09', '2017-11-09');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `status` int(5) DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '2017-11-03 07:01:14', '13', '0', '0', '2017-11-03', '2017-11-03');
INSERT INTO `order` VALUES ('2', '2017-11-03 07:17:40', '13', '0', '0', '2017-11-03', '2017-11-03');
INSERT INTO `order` VALUES ('3', '2017-11-03 07:18:46', '13', '1', '0', '2017-11-03', '2017-11-03');
INSERT INTO `order` VALUES ('4', '2017-11-03 07:20:32', '13', '1', '0', '2017-11-03', '2017-11-03');
INSERT INTO `order` VALUES ('5', '2017-11-03 07:27:45', '13', '1', '0', '2017-11-03', '2017-11-03');
INSERT INTO `order` VALUES ('6', '2017-11-04 08:12:36', '16', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('7', '2017-11-04 08:12:51', '16', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('8', '2017-11-04 14:34:39', '17', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('9', '2017-11-04 14:45:50', '17', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('10', '2017-11-04 15:49:55', '18', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('11', '2017-11-04 15:52:47', '19', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('12', '2017-11-04 16:00:09', '20', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('13', '2017-11-04 16:26:07', '20', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('14', '2017-11-04 17:06:35', '21', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('15', '2017-11-04 17:10:17', '20', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('16', '2017-11-04 17:34:49', '20', '1', '0', '2017-11-04', '2017-11-04');
INSERT INTO `order` VALUES ('17', '2017-11-06 15:23:48', '23', '1', '0', '2017-11-06', '2017-11-06');
INSERT INTO `order` VALUES ('18', '2017-11-08 17:09:08', '19', '0', '0', '2017-11-08', '2017-11-08');
INSERT INTO `order` VALUES ('19', '2017-11-08 17:32:17', '24', '0', '0', '2017-11-08', '2017-11-08');
INSERT INTO `order` VALUES ('20', '2017-11-09 06:31:21', '25', '0', '0', '2017-11-09', '2017-11-09');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `id_sub_kategori` int(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1', '1', '2', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('2', '1', '9', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('3', '1', '6', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('4', '1', '7', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('5', '2', '2', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('6', '2', '9', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('7', '2', '6', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('8', '2', '7', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('9', '3', '2', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('10', '3', '9', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('11', '3', '6', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('12', '3', '7', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('13', '4', '1', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('14', '5', '4', '2017-11-03', '2017-11-03');
INSERT INTO `order_detail` VALUES ('15', '6', '2', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('16', '6', '5', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('17', '6', '6', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('18', '6', '7', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('19', '6', '8', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('20', '7', '1', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('21', '7', '2', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('22', '7', '4', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('23', '7', '9', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('24', '8', '1', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('25', '9', '1', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('26', '10', '8', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('27', '11', '1', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('28', '11', '4', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('29', '11', '5', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('30', '11', '8', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('31', '12', '4', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('32', '13', '9', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('33', '14', '5', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('34', '14', '7', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('35', '15', '4', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('36', '16', '1', '2017-11-04', '2017-11-04');
INSERT INTO `order_detail` VALUES ('37', '17', '1', '2017-11-06', '2017-11-06');
INSERT INTO `order_detail` VALUES ('38', '18', '2', '2017-11-08', '2017-11-08');
INSERT INTO `order_detail` VALUES ('39', '18', '7', '2017-11-08', '2017-11-08');
INSERT INTO `order_detail` VALUES ('40', '18', '11', '2017-11-08', '2017-11-08');
INSERT INTO `order_detail` VALUES ('41', '19', '4', '2017-11-08', '2017-11-08');
INSERT INTO `order_detail` VALUES ('42', '19', '8', '2017-11-08', '2017-11-08');
INSERT INTO `order_detail` VALUES ('43', '20', '4', '2017-11-09', '2017-11-09');
INSERT INTO `order_detail` VALUES ('44', '20', '8', '2017-11-09', '2017-11-09');
INSERT INTO `order_detail` VALUES ('45', '20', '9', '2017-11-09', '2017-11-09');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telpon` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('1', 'irvan', 'paling atas', 'irvanirawan@gmail.com', '083872990822', null, '2017-10-25 19:23:50', '2017-10-25 19:23:57');
INSERT INTO `sales` VALUES ('2', 'irawan', 'tengah lah', 'irvan.irn@gmail.com', '083872990822', null, '2017-10-28 10:59:40', '2017-10-28 10:59:48');
INSERT INTO `sales` VALUES ('3', 'tes tes tes 3x', 'tes lagi', 'tes@tes.com', '123456789', 'Koala.jpg', '2017-11-08 16:15:22', '2017-11-08 17:05:51');
INSERT INTO `sales` VALUES ('4', 'tes', 'tes', 'tes@tes.com', '02122222', 'Desert.jpg', '2017-11-09 16:46:26', '2017-11-09 16:46:26');

-- ----------------------------
-- Table structure for sub_kategori
-- ----------------------------
DROP TABLE IF EXISTS `sub_kategori`;
CREATE TABLE `sub_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `a` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sub_kategori
-- ----------------------------
INSERT INTO `sub_kategori` VALUES ('1', 'Air Bersih', '1', null, '2017-11-07');
INSERT INTO `sub_kategori` VALUES ('2', 'Limbah', '1', null, null);
INSERT INTO `sub_kategori` VALUES ('4', 'Sungai', '1', null, null);
INSERT INTO `sub_kategori` VALUES ('5', 'Ambient ', '2', null, null);
INSERT INTO `sub_kategori` VALUES ('6', 'Emisi Sumber Tidak Bergerak / Sumber Bergerak', '2', null, null);
INSERT INTO `sub_kategori` VALUES ('7', 'Kebisingan ', '2', null, null);
INSERT INTO `sub_kategori` VALUES ('8', 'Cahaya ', '2', null, null);
INSERT INTO `sub_kategori` VALUES ('9', 'Padatan Kimia', '3', null, '2017-11-08');
INSERT INTO `sub_kategori` VALUES ('11', 'padat', '3', '2017-11-08', '2017-11-08');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` smallint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('13', 'Irvan', 'irvan.irn@gmail.com', '$2y$10$BL/XXqoNAuVH6pnys./BneUi9KvEXkq3KSJLvHxDDnpFMWawhg5Ci', '2', '6SLMirpbSOXlDAAk7kf1tIt2Mnztez34NPfOkcJaVDbGt1SR3EZF65pZpesM', '2017-11-01 02:31:53', '2017-11-09 06:30:26');
INSERT INTO `users` VALUES ('14', 'dfdfd', 'wewewe@sajdsajd.com', '$2y$10$4fDv03jNALmOFapbTKnNlubRpTdmzvA8jHMod2/zRzVq.JPUyAhWW', '2', 'pHiIIqRIAVj5NGpwp6mmYExbnAUXi4ZcI6trVtM63gJnzGY5ygtJAFksnOxB', '2017-11-01 09:04:51', '2017-11-01 09:04:51');
INSERT INTO `users` VALUES ('15', 'JAMHARI', 'jamhari90@gmail.com', '$2y$10$Z8RTTo8tNqXdvhWwlogAxefFMz45vDPLO.A/WGTjEwck2/L1qkpZO', '2', 'oXpd42f17VkHAOLDH4EavJzUetljErzyGtPLyM3r93x1pl7QMWZHQaOuwcc4', '2017-11-01 13:45:10', '2017-11-01 13:45:10');
INSERT INTO `users` VALUES ('16', 'irvan', 'qw@qw.com', '$2y$10$qr4frQUXHzTqNwV1CIV91etgu66V0n3WFJx0LWsOwEUMK8xTNpb1u', '1', 'As8fBHpS36isOf287wcdSaPbWHHdLzqwPNwmXIxCVPqGaxbGiCYCUtzydJQk', '2017-11-04 08:12:22', '2017-11-04 08:12:22');
INSERT INTO `users` VALUES ('17', 'djfk', 'reikha@gmail.com', '$2y$10$N19WDmfrPG1qzNGaiK5xLOFuLCff1MkliIY3BbxkuqIy799hgtdA6', '2', 'kc64oPEp85BF4YUNsS3dVlWYEmEayDBRrkdQ8M8r9aRzrM7zbNGDYNDuyet5', '2017-11-04 14:33:54', '2017-11-04 14:33:54');
INSERT INTO `users` VALUES ('18', 'dea', 'DEASY@Gmail.com', '$2y$10$0rhI2GDHRD90eYQAuV2NJ.NIUKo2dzCA8jotAvHSqk/7uRdJKciZe', '2', '6491wdvb2J7JdH3TjzYYlYpThBetm29n95s94xi1LOdFVJ0luyV92GfkAKBk', '2017-11-04 15:48:48', '2017-11-04 15:48:48');
INSERT INTO `users` VALUES ('19', 'puguh', 'dwisamdik@gmail.com', '$2y$10$PmUG3TQKBgGCRW48OU1FReVz3fJi0AQZv0izKbpnnQvsZ49WPNU0a', '2', null, '2017-11-04 15:52:27', '2017-11-04 15:52:27');
INSERT INTO `users` VALUES ('20', 'deasy', 'deasyj@gmail.com', '$2y$10$nYy70trIx7ae0LRbqjHkvuzZpWeLGmj1WJL9hBmMT8bXNN1psraRq', '2', 'VAHTlizKb8mTV7KLYV5S42HJyMIdQyX3bFoMQOZls6GLIqVi7Or0GGdbuCLp', '2017-11-04 15:59:54', '2017-11-04 15:59:54');
INSERT INTO `users` VALUES ('21', 'Puguh', 'dwisamdik1@gmail.com', '$2y$10$tDHVo8tjPguW3tcgeGa2eeK9CWDnPdgORmhS2lSsBXJd2BT8iXjWe', '2', 'gQ8v21DtvZT7zNJ9p0Wm5ufEbqRYVl77CjzTaLIjklhoS1ohGDss3BCqfdpC', '2017-11-04 17:06:26', '2017-11-04 17:06:26');
INSERT INTO `users` VALUES ('22', 'sekarang', 'sekarang@sekarang.com', '$2y$10$SVt.16mFOAWjmdY2dmrjOOmpw34qOSEA1Vq/wvGnFaDDfp3Yvuq/W', '2', 'evQ6jjuQ0aqqBfqDvgzTonZzOq4VWGIwmiQ50RG4upxdZOi9rSkdz7B8nCM4', '2017-11-06 07:17:20', '2017-11-06 07:17:20');
INSERT INTO `users` VALUES ('23', 'jhope', 'jhope@gmail.com', '$2y$10$Steyb./PuYpgVpPk5FjUzOGoAiCklTny0mTJ9o2wOLUgZ/kAiFpAe', '2', null, '2017-11-06 15:21:11', '2017-11-06 15:21:11');
INSERT INTO `users` VALUES ('24', 'ir', 'KJK@ojio.com', '$2y$10$IviAD.nSyXVGiHRQqdS3R.Ag83fhnIfJZMWPl3Lep3gyppNGejngy', '2', 'Irgn2AQi7iBxu1HxSIzKO6urty0sdEJ2mVO2LtFhodgNdaRKjs2I6etNQfaS', '2017-11-08 17:31:51', '2017-11-08 17:31:51');
INSERT INTO `users` VALUES ('25', 'Irvan', 'aaa@aaa.com', '$2y$10$MQlgbaiuzSuQe64BOoB06.ki4UCk1akNxZCIsCK6ULBODmt9U6exW', '2', null, '2017-11-09 06:30:02', '2017-11-09 06:30:02');

-- ----------------------------
-- Table structure for userst
-- ----------------------------
DROP TABLE IF EXISTS `userst`;
CREATE TABLE `userst` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userst
-- ----------------------------
INSERT INTO `userst` VALUES ('1', 'irvan', 'admin', '', '1', '0000-00-00', '0000-00-00');
INSERT INTO `userst` VALUES ('2', 'irawan', 'user', '', '2', '0000-00-00', '0000-00-00');
