/*
 Navicat MySQL Data Transfer

 Source Server         : penghanyuan
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : adminSys

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 05/03/2018 08:35:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_sector` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availiablity` date NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (21, 'Trey', 'Ziemann', 'walter.kamren@example.com', '660843006', 'Laboriosam corrupti magnam sit autem qui impedit.', '1970-11-09', '123456', 1, 'of3SFcCyrp', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (22, 'Fannie', 'Zemlak', 'klocko.khalid@example.com', '645279566', 'Perferendis dolor voluptas aliquam porro aut.', '2017-08-11', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'f4dOus8x7x', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (23, 'Korey', 'Lesch', 'noble98@example.net', '293452912', 'Ipsa et repellat assumenda asperiores labore.', '2003-07-14', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 2, '3ofua7ptIm', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (24, 'Russ', 'Kertzmann', 'farrell.perry@example.org', '649326921', 'Iste dolor iusto voluptatum culpa voluptatibus aspernatur ullam.', '1988-08-22', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 2, 'ui1UxaCfiw', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (25, 'Dee', 'Ernser', 'newton.rempel@example.net', '874773886', 'Dolore est est adipisci.', '1990-03-14', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'ohDCAU5Wki', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (26, 'Kieran', 'Streich', 'sauer.donavon@example.net', '488458693', 'Eligendi provident quis inventore tempora velit rerum magni.', '2005-02-19', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 3, 'hTrGFXJ88n', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (27, 'Astrid', 'Hickle', 'daphnee20@example.org', '145148196', 'Est sit molestiae id esse dolorem est aut ex.', '1973-04-04', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'tzuPOGNa8n', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (28, 'Marjory', 'Lynch', 'camden11@example.org', '687042661', 'Explicabo qui magni inventore est.', '1974-05-19', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 2, 'dPUUuZkP8P', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (29, 'Marshall', 'Trantow', 'dschoen@example.org', '408493013', 'Labore unde neque aut.', '1993-09-25', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 3, 'oQzDZKpZFh', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (30, 'Laurine', 'Conn', 'orpha.sanford@example.com', '147793871', 'Minima saepe magni fuga dolor nam at numquam.', '2016-03-25', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 2, '3bxhIZDXPJ', '2018-03-04 12:29:41', '2018-03-04 12:29:41');
INSERT INTO `users` VALUES (31, 'Test', 'last', 'test@mail.com', '232342312', 'Laboriosam corrupti magnam sit autem qui impedit.', '1970-11-09', '$2y$10$ThavGhbLlBVQJTbHBvwr1eBYN2QuIMIpTs38AZtExnzUNgav6SqU6', 1, NULL, '2018-03-04 19:24:42', '2018-03-04 19:24:42');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
