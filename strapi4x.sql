-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB-1:10.4.28+maria~ubu2004 - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for strapi4
CREATE DATABASE IF NOT EXISTS `strapi4` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `strapi4`;

-- Dumping structure for table strapi4.admin_permissions
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.admin_permissions: ~98 rows (approximately)
REPLACE INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-06-17 06:53:16.923000', '2023-06-17 06:53:16.923000', NULL, NULL),
	(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-17 06:53:16.930000', '2023-06-17 06:53:16.930000', NULL, NULL),
	(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-17 06:53:16.944000', '2023-06-17 06:53:16.944000', NULL, NULL),
	(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-06-17 06:53:16.952000', '2023-06-17 06:53:16.952000', NULL, NULL),
	(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-17 06:53:16.958000', '2023-06-17 06:53:16.958000', NULL, NULL),
	(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-17 06:53:16.965000', '2023-06-17 06:53:16.965000', NULL, NULL),
	(7, 'plugin::upload.read', NULL, '{}', '["admin::is-creator"]', '2023-06-17 06:53:16.973000', '2023-06-17 06:53:16.973000', NULL, NULL),
	(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-17 06:53:16.981000', '2023-06-17 06:53:16.981000', NULL, NULL),
	(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-17 06:53:16.988000', '2023-06-17 06:53:16.988000', NULL, NULL),
	(10, 'plugin::upload.assets.update', NULL, '{}', '["admin::is-creator"]', '2023-06-17 06:53:16.993000', '2023-06-17 06:53:16.993000', NULL, NULL),
	(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-17 06:53:17.000000', '2023-06-17 06:53:17.000000', NULL, NULL),
	(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-17 06:53:17.006000', '2023-06-17 06:53:17.006000', NULL, NULL),
	(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-06-17 06:53:17.044000', '2023-06-17 06:53:17.044000', NULL, NULL),
	(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-06-17 06:53:17.052000', '2023-06-17 06:53:17.052000', NULL, NULL),
	(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-06-17 06:53:17.058000', '2023-06-17 06:53:17.058000', NULL, NULL),
	(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-06-17 06:53:17.063000', '2023-06-17 06:53:17.063000', NULL, NULL),
	(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-06-17 06:53:17.069000', '2023-06-17 06:53:17.069000', NULL, NULL),
	(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-06-17 06:53:17.075000', '2023-06-17 06:53:17.075000', NULL, NULL),
	(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-06-17 06:53:17.088000', '2023-06-17 06:53:17.088000', NULL, NULL),
	(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-17 06:53:17.096000', '2023-06-17 06:53:17.096000', NULL, NULL),
	(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-06-17 06:53:17.102000', '2023-06-17 06:53:17.102000', NULL, NULL),
	(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-17 06:53:17.109000', '2023-06-17 06:53:17.109000', NULL, NULL),
	(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-17 06:53:17.115000', '2023-06-17 06:53:17.115000', NULL, NULL),
	(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-17 06:53:17.121000', '2023-06-17 06:53:17.121000', NULL, NULL),
	(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-06-17 06:53:17.126000', '2023-06-17 06:53:17.126000', NULL, NULL),
	(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-06-17 06:53:17.132000', '2023-06-17 06:53:17.132000', NULL, NULL),
	(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-06-17 06:53:17.138000', '2023-06-17 06:53:17.138000', NULL, NULL),
	(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-06-17 06:53:17.145000', '2023-06-17 06:53:17.145000', NULL, NULL),
	(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.151000', '2023-06-17 06:53:17.151000', NULL, NULL),
	(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-06-17 06:53:17.157000', '2023-06-17 06:53:17.157000', NULL, NULL),
	(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-06-17 06:53:17.164000', '2023-06-17 06:53:17.164000', NULL, NULL),
	(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-06-17 06:53:17.170000', '2023-06-17 06:53:17.170000', NULL, NULL),
	(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-06-17 06:53:17.176000', '2023-06-17 06:53:17.176000', NULL, NULL),
	(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-06-17 06:53:17.182000', '2023-06-17 06:53:17.182000', NULL, NULL),
	(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-06-17 06:53:17.188000', '2023-06-17 06:53:17.188000', NULL, NULL),
	(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-06-17 06:53:17.193000', '2023-06-17 06:53:17.193000', NULL, NULL),
	(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-06-17 06:53:17.200000', '2023-06-17 06:53:17.200000', NULL, NULL),
	(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-06-17 06:53:17.205000', '2023-06-17 06:53:17.205000', NULL, NULL),
	(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.211000', '2023-06-17 06:53:17.211000', NULL, NULL),
	(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-06-17 06:53:17.218000', '2023-06-17 06:53:17.218000', NULL, NULL),
	(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-06-17 06:53:17.222000', '2023-06-17 06:53:17.222000', NULL, NULL),
	(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-06-17 06:53:17.230000', '2023-06-17 06:53:17.230000', NULL, NULL),
	(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-06-17 06:53:17.236000', '2023-06-17 06:53:17.236000', NULL, NULL),
	(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.243000', '2023-06-17 06:53:17.243000', NULL, NULL),
	(48, 'admin::users.create', NULL, '{}', '[]', '2023-06-17 06:53:17.250000', '2023-06-17 06:53:17.250000', NULL, NULL),
	(49, 'admin::users.read', NULL, '{}', '[]', '2023-06-17 06:53:17.255000', '2023-06-17 06:53:17.255000', NULL, NULL),
	(50, 'admin::users.update', NULL, '{}', '[]', '2023-06-17 06:53:17.262000', '2023-06-17 06:53:17.262000', NULL, NULL),
	(51, 'admin::users.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.269000', '2023-06-17 06:53:17.269000', NULL, NULL),
	(52, 'admin::roles.create', NULL, '{}', '[]', '2023-06-17 06:53:17.276000', '2023-06-17 06:53:17.276000', NULL, NULL),
	(53, 'admin::roles.read', NULL, '{}', '[]', '2023-06-17 06:53:17.282000', '2023-06-17 06:53:17.282000', NULL, NULL),
	(54, 'admin::roles.update', NULL, '{}', '[]', '2023-06-17 06:53:17.288000', '2023-06-17 06:53:17.288000', NULL, NULL),
	(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.294000', '2023-06-17 06:53:17.294000', NULL, NULL),
	(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-06-17 06:53:17.300000', '2023-06-17 06:53:17.300000', NULL, NULL),
	(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-06-17 06:53:17.304000', '2023-06-17 06:53:17.304000', NULL, NULL),
	(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-06-17 06:53:17.310000', '2023-06-17 06:53:17.310000', NULL, NULL),
	(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-06-17 06:53:17.316000', '2023-06-17 06:53:17.316000', NULL, NULL),
	(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-06-17 06:53:17.322000', '2023-06-17 06:53:17.322000', NULL, NULL),
	(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.328000', '2023-06-17 06:53:17.328000', NULL, NULL),
	(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-06-17 06:53:17.333000', '2023-06-17 06:53:17.333000', NULL, NULL),
	(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-06-17 06:53:17.343000', '2023-06-17 06:53:17.343000', NULL, NULL),
	(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-06-17 06:53:17.349000', '2023-06-17 06:53:17.349000', NULL, NULL),
	(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-06-17 06:53:17.354000', '2023-06-17 06:53:17.354000', NULL, NULL),
	(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-06-17 06:53:17.360000', '2023-06-17 06:53:17.360000', NULL, NULL),
	(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-06-17 06:53:17.365000', '2023-06-17 06:53:17.365000', NULL, NULL),
	(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-06-17 06:53:17.371000', '2023-06-17 06:53:17.371000', NULL, NULL),
	(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-06-17 06:53:17.376000', '2023-06-17 06:53:17.376000', NULL, NULL),
	(75, 'plugin::content-manager.explorer.create', 'api::app-version.app-version', '{"fields":["bundleId","version","active"]}', '[]', '2023-06-17 07:06:12.814000', '2023-06-17 07:06:12.814000', NULL, NULL),
	(76, 'plugin::content-manager.explorer.read', 'api::app-version.app-version', '{"fields":["bundleId","version","active"]}', '[]', '2023-06-17 07:06:12.823000', '2023-06-17 07:06:12.823000', NULL, NULL),
	(77, 'plugin::content-manager.explorer.update', 'api::app-version.app-version', '{"fields":["bundleId","version","active"]}', '[]', '2023-06-17 07:06:12.829000', '2023-06-17 07:06:12.829000', NULL, NULL),
	(78, 'plugin::content-manager.explorer.delete', 'api::app-version.app-version', '{}', '[]', '2023-06-17 07:06:12.835000', '2023-06-17 07:06:12.835000', NULL, NULL),
	(80, 'plugin::content-manager.explorer.create', 'api::banner.banner', '{"fields":["caption","url","status"]}', '[]', '2023-06-17 16:58:14.124000', '2023-06-17 16:58:14.124000', NULL, NULL),
	(81, 'plugin::content-manager.explorer.read', 'api::banner.banner', '{"fields":["caption","url","status"]}', '[]', '2023-06-17 16:58:14.142000', '2023-06-17 16:58:14.142000', NULL, NULL),
	(82, 'plugin::content-manager.explorer.update', 'api::banner.banner', '{"fields":["caption","url","status"]}', '[]', '2023-06-17 16:58:14.154000', '2023-06-17 16:58:14.154000', NULL, NULL),
	(83, 'plugin::content-manager.explorer.delete', 'api::banner.banner', '{}', '[]', '2023-06-17 16:58:14.168000', '2023-06-17 16:58:14.168000', NULL, NULL),
	(88, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2023-06-17 17:09:11.379000', '2023-06-17 17:09:11.379000', NULL, NULL),
	(89, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2023-06-17 17:09:11.395000', '2023-06-17 17:09:11.395000', NULL, NULL),
	(99, 'plugin::content-manager.explorer.delete', 'api::price-qty-range.price-qty-range', '{}', '[]', '2023-06-18 04:28:28.563000', '2023-06-18 04:28:28.563000', NULL, NULL),
	(107, 'plugin::content-manager.explorer.delete', 'api::product-price-rule.product-price-rule', '{}', '[]', '2023-06-18 04:31:08.779000', '2023-06-18 04:31:08.779000', NULL, NULL),
	(118, 'plugin::content-manager.explorer.create', 'api::product-price-rule.product-price-rule', '{"fields":["name","qtyRanges","product"]}', '[]', '2023-06-18 04:53:39.415000', '2023-06-18 04:53:39.415000', NULL, NULL),
	(119, 'plugin::content-manager.explorer.read', 'api::product-price-rule.product-price-rule', '{"fields":["name","qtyRanges","product"]}', '[]', '2023-06-18 04:53:39.423000', '2023-06-18 04:53:39.423000', NULL, NULL),
	(120, 'plugin::content-manager.explorer.update', 'api::product-price-rule.product-price-rule', '{"fields":["name","qtyRanges","product"]}', '[]', '2023-06-18 04:53:39.435000', '2023-06-18 04:53:39.435000', NULL, NULL),
	(121, 'plugin::content-manager.explorer.create', 'api::product.product', '{"fields":["name","imageUrl","category","priceRule","favorite"]}', '[]', '2023-06-18 05:46:22.118000', '2023-06-18 05:46:22.118000', NULL, NULL),
	(122, 'plugin::content-manager.explorer.read', 'api::product.product', '{"fields":["name","imageUrl","category","priceRule","favorite"]}', '[]', '2023-06-18 05:46:22.125000', '2023-06-18 05:46:22.125000', NULL, NULL),
	(123, 'plugin::content-manager.explorer.update', 'api::product.product', '{"fields":["name","imageUrl","category","priceRule","favorite"]}', '[]', '2023-06-18 05:46:22.131000', '2023-06-18 05:46:22.131000', NULL, NULL),
	(124, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","fullName","address","avatarUrl"]}', '[]', '2023-06-19 06:21:58.393000', '2023-06-19 06:21:58.393000', NULL, NULL),
	(125, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","fullName","address","avatarUrl"]}', '[]', '2023-06-19 06:21:58.405000', '2023-06-19 06:21:58.405000', NULL, NULL),
	(126, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","fullName","address","avatarUrl"]}', '[]', '2023-06-19 06:21:58.416000', '2023-06-19 06:21:58.416000', NULL, NULL),
	(130, 'plugin::content-manager.explorer.delete', 'api::order.order', '{}', '[]', '2023-06-19 12:29:13.337000', '2023-06-19 12:29:13.337000', NULL, NULL),
	(142, 'plugin::content-manager.explorer.create', 'api::order.order', '{"fields":["product","qty","unitPrice","invoice"]}', '[]', '2023-06-19 13:04:08.522000', '2023-06-19 13:04:08.522000', NULL, NULL),
	(144, 'plugin::content-manager.explorer.read', 'api::order.order', '{"fields":["product","qty","unitPrice","invoice"]}', '[]', '2023-06-19 13:04:08.535000', '2023-06-19 13:04:08.535000', NULL, NULL),
	(146, 'plugin::content-manager.explorer.update', 'api::order.order', '{"fields":["product","qty","unitPrice","invoice"]}', '[]', '2023-06-19 13:04:08.546000', '2023-06-19 13:04:08.546000', NULL, NULL),
	(147, 'plugin::content-manager.explorer.delete', 'api::invoice.invoice', '{}', '[]', '2023-06-19 13:04:08.553000', '2023-06-19 13:04:08.553000', NULL, NULL),
	(149, 'plugin::content-manager.explorer.create', 'api::invoice.invoice', '{"fields":["dueDate","users_permissions_user","orders","total"]}', '[]', '2023-06-19 17:19:52.217000', '2023-06-19 17:19:52.217000', NULL, NULL),
	(150, 'plugin::content-manager.explorer.read', 'api::invoice.invoice', '{"fields":["dueDate","users_permissions_user","orders","total"]}', '[]', '2023-06-19 17:19:52.224000', '2023-06-19 17:19:52.224000', NULL, NULL),
	(151, 'plugin::content-manager.explorer.update', 'api::invoice.invoice', '{"fields":["dueDate","users_permissions_user","orders","total"]}', '[]', '2023-06-19 17:19:52.231000', '2023-06-19 17:19:52.231000', NULL, NULL),
	(152, 'plugin::content-manager.explorer.create', 'api::price-qty-range.price-qty-range', '{"fields":["qtyStart","qtyEnd","price","product_price_rule"]}', '[]', '2023-06-20 05:54:15.872000', '2023-06-20 05:54:15.872000', NULL, NULL),
	(153, 'plugin::content-manager.explorer.read', 'api::price-qty-range.price-qty-range', '{"fields":["qtyStart","qtyEnd","price","product_price_rule"]}', '[]', '2023-06-20 05:54:15.888000', '2023-06-20 05:54:15.888000', NULL, NULL),
	(154, 'plugin::content-manager.explorer.update', 'api::price-qty-range.price-qty-range', '{"fields":["qtyStart","qtyEnd","price","product_price_rule"]}', '[]', '2023-06-20 05:54:15.899000', '2023-06-20 05:54:15.899000', NULL, NULL);

-- Dumping structure for table strapi4.admin_permissions_role_links
CREATE TABLE IF NOT EXISTS `admin_permissions_role_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.admin_permissions_role_links: ~98 rows (approximately)
REPLACE INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
	(1, 1, 2, 1),
	(2, 2, 2, 2),
	(3, 3, 2, 3),
	(4, 4, 2, 4),
	(5, 5, 2, 5),
	(6, 6, 2, 6),
	(7, 7, 3, 1),
	(8, 8, 3, 2),
	(9, 9, 3, 3),
	(10, 10, 3, 4),
	(11, 11, 3, 5),
	(12, 12, 3, 6),
	(16, 16, 1, 4),
	(17, 17, 1, 5),
	(18, 18, 1, 6),
	(19, 19, 1, 7),
	(20, 20, 1, 8),
	(21, 21, 1, 9),
	(22, 22, 1, 10),
	(23, 23, 1, 11),
	(24, 24, 1, 12),
	(25, 25, 1, 13),
	(26, 26, 1, 14),
	(27, 27, 1, 15),
	(28, 28, 1, 16),
	(29, 29, 1, 17),
	(30, 30, 1, 18),
	(31, 31, 1, 19),
	(32, 32, 1, 20),
	(33, 33, 1, 21),
	(34, 34, 1, 22),
	(35, 35, 1, 23),
	(36, 36, 1, 24),
	(37, 37, 1, 25),
	(38, 38, 1, 26),
	(39, 39, 1, 27),
	(40, 40, 1, 28),
	(41, 41, 1, 29),
	(42, 42, 1, 30),
	(43, 43, 1, 31),
	(44, 44, 1, 32),
	(45, 45, 1, 33),
	(46, 46, 1, 34),
	(47, 47, 1, 35),
	(48, 48, 1, 36),
	(49, 49, 1, 37),
	(50, 50, 1, 38),
	(51, 51, 1, 39),
	(52, 52, 1, 40),
	(53, 53, 1, 41),
	(54, 54, 1, 42),
	(55, 55, 1, 43),
	(56, 56, 1, 44),
	(57, 57, 1, 45),
	(58, 58, 1, 46),
	(59, 59, 1, 47),
	(60, 60, 1, 48),
	(61, 61, 1, 49),
	(62, 62, 1, 50),
	(63, 63, 1, 51),
	(64, 64, 1, 52),
	(65, 65, 1, 53),
	(66, 66, 1, 54),
	(67, 67, 1, 55),
	(68, 68, 1, 56),
	(69, 69, 1, 57),
	(75, 75, 1, 63),
	(76, 76, 1, 64),
	(77, 77, 1, 65),
	(78, 78, 1, 66),
	(80, 80, 1, 68),
	(81, 81, 1, 69),
	(82, 82, 1, 70),
	(83, 83, 1, 71),
	(88, 88, 1, 76),
	(89, 89, 1, 77),
	(99, 99, 1, 84),
	(107, 107, 1, 92),
	(118, 118, 1, 103),
	(119, 119, 1, 104),
	(120, 120, 1, 105),
	(121, 121, 1, 106),
	(122, 122, 1, 107),
	(123, 123, 1, 108),
	(124, 124, 1, 109),
	(125, 125, 1, 110),
	(126, 126, 1, 111),
	(130, 130, 1, 115),
	(142, 142, 1, 117),
	(144, 144, 1, 119),
	(146, 146, 1, 121),
	(147, 147, 1, 122),
	(149, 149, 1, 123),
	(150, 150, 1, 124),
	(151, 151, 1, 125),
	(152, 152, 1, 126),
	(153, 153, 1, 127),
	(154, 154, 1, 128);

-- Dumping structure for table strapi4.admin_roles
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.admin_roles: ~2 rows (approximately)
REPLACE INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-06-17 06:53:16.900000', '2023-06-17 06:53:16.900000', NULL, NULL),
	(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-06-17 06:53:16.909000', '2023-06-17 06:53:16.909000', NULL, NULL),
	(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-06-17 06:53:16.918000', '2023-06-17 06:53:16.918000', NULL, NULL);

-- Dumping structure for table strapi4.admin_users
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.admin_users: ~0 rows (approximately)
REPLACE INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Iqbal', 'Rizky', NULL, 'ntaloventi@gmail.com', '$2a$10$SLBv/RqWR6YpWBauvJxdTePKKj3q2rwjz2uqOsdhA4i.v.QlKJuCC', NULL, NULL, 1, 0, NULL, '2023-06-17 06:53:48.881000', '2023-06-17 06:53:48.881000', NULL, NULL);

-- Dumping structure for table strapi4.admin_users_roles_links
CREATE TABLE IF NOT EXISTS `admin_users_roles_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `role_order` double unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.admin_users_roles_links: ~0 rows (approximately)
REPLACE INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
	(1, 1, 1, 1, 1);

-- Dumping structure for table strapi4.app_versions
CREATE TABLE IF NOT EXISTS `app_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bundle_id` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_versions_created_by_id_fk` (`created_by_id`),
  KEY `app_versions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `app_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `app_versions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.app_versions: ~3 rows (approximately)
REPLACE INTO `app_versions` (`id`, `bundle_id`, `version`, `active`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'com.tpb.tpbretail', '1.0.0', 1, '2023-06-17 07:08:01.576000', '2023-06-17 14:46:28.979000', 1, 1),
	(2, 'com.tpb.tkpretail', '1.0.0', 0, '2023-06-17 14:47:20.228000', '2023-06-17 14:48:12.725000', 1, 1),
	(3, 'com.tpb.tpbretail.debug', '1.0.0', 1, '2023-06-17 14:50:04.311000', '2023-06-17 14:58:13.084000', 1, 1);

-- Dumping structure for table strapi4.banners
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_created_by_id_fk` (`created_by_id`),
  KEY `banners_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `banners_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `banners_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.banners: ~0 rows (approximately)

-- Dumping structure for table strapi4.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `upload_files_created_at_index` (`created_at`),
  KEY `upload_files_updated_at_index` (`updated_at`),
  KEY `upload_files_name_index` (`name`),
  KEY `upload_files_size_index` (`size`),
  KEY `upload_files_ext_index` (`ext`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.files: ~0 rows (approximately)
REPLACE INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, '2023-05-25 (1).png', NULL, NULL, 1920, 1080, '{"thumbnail":{"name":"thumbnail_2023-05-25 (1).png","hash":"thumbnail_2023_05_25_1_f4d75e8bf1","ext":".png","mime":"image/png","path":null,"width":245,"height":138,"size":23.04,"url":"/uploads/thumbnail_2023_05_25_1_f4d75e8bf1.png"},"large":{"name":"large_2023-05-25 (1).png","hash":"large_2023_05_25_1_f4d75e8bf1","ext":".png","mime":"image/png","path":null,"width":1000,"height":563,"size":217.54,"url":"/uploads/large_2023_05_25_1_f4d75e8bf1.png"},"small":{"name":"small_2023-05-25 (1).png","hash":"small_2023_05_25_1_f4d75e8bf1","ext":".png","mime":"image/png","path":null,"width":500,"height":281,"size":69.77,"url":"/uploads/small_2023_05_25_1_f4d75e8bf1.png"},"medium":{"name":"medium_2023-05-25 (1).png","hash":"medium_2023_05_25_1_f4d75e8bf1","ext":".png","mime":"image/png","path":null,"width":750,"height":422,"size":138.09,"url":"/uploads/medium_2023_05_25_1_f4d75e8bf1.png"}}', '2023_05_25_1_f4d75e8bf1', '.png', 'image/png', 84.66, '/uploads/2023_05_25_1_f4d75e8bf1.png', NULL, 'local', NULL, '/', '2023-06-17 06:56:36.320000', '2023-06-17 06:56:36.320000', 1, 1);

-- Dumping structure for table strapi4.files_folder_links
CREATE TABLE IF NOT EXISTS `files_folder_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned DEFAULT NULL,
  `folder_id` int(10) unsigned DEFAULT NULL,
  `file_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.files_folder_links: ~0 rows (approximately)

-- Dumping structure for table strapi4.files_related_morphs
CREATE TABLE IF NOT EXISTS `files_related_morphs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned DEFAULT NULL,
  `related_id` int(10) unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  KEY `files_related_morphs_order_index` (`order`),
  KEY `files_related_morphs_id_column_index` (`related_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.files_related_morphs: ~0 rows (approximately)

-- Dumping structure for table strapi4.i18n_locale
CREATE TABLE IF NOT EXISTS `i18n_locale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.i18n_locale: ~0 rows (approximately)
REPLACE INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'English (en)', 'en', '2023-06-17 06:53:16.869000', '2023-06-17 06:53:16.869000', NULL, NULL);

-- Dumping structure for table strapi4.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `due_date` datetime(6) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_created_by_id_fk` (`created_by_id`),
  KEY `invoices_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `invoices_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invoices_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.invoices: ~0 rows (approximately)

-- Dumping structure for table strapi4.invoices_users_permissions_user_links
CREATE TABLE IF NOT EXISTS `invoices_users_permissions_user_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoices_users_permissions_user_links_unique` (`invoice_id`,`user_id`),
  KEY `invoices_users_permissions_user_links_fk` (`invoice_id`),
  KEY `invoices_users_permissions_user_links_inv_fk` (`user_id`),
  CONSTRAINT `invoices_users_permissions_user_links_fk` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invoices_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.invoices_users_permissions_user_links: ~0 rows (approximately)

-- Dumping structure for table strapi4.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_created_by_id_fk` (`created_by_id`),
  KEY `orders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.orders: ~3 rows (approximately)
REPLACE INTO `orders` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `qty`, `unit_price`) VALUES
	(46, '2023-06-20 07:25:01.013000', '2023-06-20 07:25:01.013000', NULL, NULL, 1, 9000.00),
	(47, '2023-06-20 07:25:01.108000', '2023-06-20 07:25:01.108000', NULL, NULL, 2, 9000.00),
	(48, '2023-06-20 07:25:01.228000', '2023-06-20 07:25:01.228000', NULL, NULL, 3, 9000.00);

-- Dumping structure for table strapi4.orders_invoice_links
CREATE TABLE IF NOT EXISTS `orders_invoice_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `order_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_invoice_links_unique` (`order_id`,`invoice_id`),
  KEY `orders_invoice_links_fk` (`order_id`),
  KEY `orders_invoice_links_inv_fk` (`invoice_id`),
  KEY `orders_invoice_links_order_inv_fk` (`order_order`),
  CONSTRAINT `orders_invoice_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_invoice_links_inv_fk` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.orders_invoice_links: ~0 rows (approximately)

-- Dumping structure for table strapi4.orders_product_links
CREATE TABLE IF NOT EXISTS `orders_product_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_product_links_unique` (`order_id`,`product_id`),
  KEY `orders_product_links_fk` (`order_id`),
  KEY `orders_product_links_inv_fk` (`product_id`),
  CONSTRAINT `orders_product_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_product_links_inv_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.orders_product_links: ~3 rows (approximately)
REPLACE INTO `orders_product_links` (`id`, `order_id`, `product_id`) VALUES
	(46, 46, 3),
	(47, 47, 1),
	(48, 48, 2);

-- Dumping structure for table strapi4.price_qty_ranges
CREATE TABLE IF NOT EXISTS `price_qty_ranges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qty_end` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `qty_start` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_qty_ranges_created_by_id_fk` (`created_by_id`),
  KEY `price_qty_ranges_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `price_qty_ranges_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `price_qty_ranges_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.price_qty_ranges: ~4 rows (approximately)
REPLACE INTO `price_qty_ranges` (`id`, `qty_end`, `price`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `qty_start`) VALUES
	(1, 10, 10000.00, '2023-06-18 04:33:30.896000', '2023-06-20 05:54:40.238000', 1, 1, 1),
	(2, 25, 9500.00, '2023-06-18 04:33:51.060000', '2023-06-20 05:54:51.831000', 1, 1, 11),
	(3, 10, 11000.00, '2023-06-18 04:38:32.439000', '2023-06-20 05:55:05.647000', 1, 1, 1),
	(4, 10, 11500.00, '2023-06-18 04:39:06.314000', '2023-06-20 05:55:13.653000', 1, 1, 1);

-- Dumping structure for table strapi4.price_qty_ranges_product_price_rule_links
CREATE TABLE IF NOT EXISTS `price_qty_ranges_product_price_rule_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price_qty_range_id` int(10) unsigned DEFAULT NULL,
  `product_price_rule_id` int(10) unsigned DEFAULT NULL,
  `price_qty_range_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `price_qty_ranges_product_price_rule_links_unique` (`price_qty_range_id`,`product_price_rule_id`),
  KEY `price_qty_ranges_product_price_rule_links_fk` (`price_qty_range_id`),
  KEY `price_qty_ranges_product_price_rule_links_inv_fk` (`product_price_rule_id`),
  KEY `price_qty_ranges_product_price_rule_links_order_inv_fk` (`price_qty_range_order`),
  CONSTRAINT `price_qty_ranges_product_price_rule_links_fk` FOREIGN KEY (`price_qty_range_id`) REFERENCES `price_qty_ranges` (`id`) ON DELETE CASCADE,
  CONSTRAINT `price_qty_ranges_product_price_rule_links_inv_fk` FOREIGN KEY (`product_price_rule_id`) REFERENCES `product_price_rules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.price_qty_ranges_product_price_rule_links: ~4 rows (approximately)
REPLACE INTO `price_qty_ranges_product_price_rule_links` (`id`, `price_qty_range_id`, `product_price_rule_id`, `price_qty_range_order`) VALUES
	(1, 2, 1, 2),
	(6, 1, 1, 1),
	(7, 3, 2, 1),
	(8, 4, 3, 1);

-- Dumping structure for table strapi4.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_created_by_id_fk` (`created_by_id`),
  KEY `products_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.products: ~3 rows (approximately)
REPLACE INTO `products` (`id`, `name`, `image_url`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `category`, `favorite`) VALUES
	(1, 'Minyak Goreng AAA', 'https://img1.exportersindia.com/product_images/bc-small/dir_173/5171321/vegetable-oil-1504002028-3257697.jpeg', '2023-06-17 17:09:52.224000', '2023-06-18 05:46:36.679000', '2023-06-17 17:09:54.463000', 1, 1, 'minyak_goreng', 1),
	(2, 'Minyak Goreng BBB', 'https://karmelle.com/wp-content/uploads/2013/08/edible-oils-food-and-drink-market-sectors-630x530.jpg', '2023-06-17 17:10:13.613000', '2023-06-18 04:51:24.100000', '2023-06-17 17:10:14.994000', 1, 1, 'minyak_goreng', NULL),
	(3, 'Minyak Goreng 111', 'https://th.bing.com/th/id/OIP.tQq7FR3fclAgDWbKkCwZLAHaE8?pid=ImgDet&rs=1', '2023-06-17 17:10:30.726000', '2023-06-18 04:50:41.160000', '2023-06-17 17:10:31.998000', 1, 1, 'minyak_goreng', NULL);

-- Dumping structure for table strapi4.products_price_rule_links
CREATE TABLE IF NOT EXISTS `products_price_rule_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_price_rule_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_price_rule_links_unique` (`product_id`,`product_price_rule_id`),
  KEY `products_price_rule_links_fk` (`product_id`),
  KEY `products_price_rule_links_inv_fk` (`product_price_rule_id`),
  CONSTRAINT `products_price_rule_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_price_rule_links_inv_fk` FOREIGN KEY (`product_price_rule_id`) REFERENCES `product_price_rules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.products_price_rule_links: ~2 rows (approximately)
REPLACE INTO `products_price_rule_links` (`id`, `product_id`, `product_price_rule_id`) VALUES
	(2, 1, 2),
	(3, 2, 3),
	(1, 3, 1);

-- Dumping structure for table strapi4.product_price_rules
CREATE TABLE IF NOT EXISTS `product_price_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_price_rules_created_by_id_fk` (`created_by_id`),
  KEY `product_price_rules_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `product_price_rules_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `product_price_rules_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.product_price_rules: ~3 rows (approximately)
REPLACE INTO `product_price_rules` (`id`, `name`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'mg_111', '2023-06-18 04:34:43.476000', '2023-06-18 05:32:51.471000', 1, 1),
	(2, 'mg_aaa', '2023-06-18 04:35:58.547000', '2023-06-18 04:37:23.746000', 1, 1),
	(3, 'mg_bbb', '2023-06-18 04:36:48.590000', '2023-06-18 04:37:13.693000', 1, 1);

-- Dumping structure for table strapi4.strapi_api_tokens
CREATE TABLE IF NOT EXISTS `strapi_api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_api_tokens: ~0 rows (approximately)
REPLACE INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Postman', 'Postman Api', 'full-access', '3eda184c52dc9870bb3cd61bf2e625cbd99866a960f882aa5b6525d608ef656424c5e928be08d741762ca5cebc8b6f03603c9935e71e692b3d2b2ea23bc97fe4', '2023-06-19 18:29:25.125000', '2023-06-24 06:54:33.017000', 604800000, '2023-06-17 06:54:33.017000', '2023-06-19 18:29:25.125000', NULL, NULL);

-- Dumping structure for table strapi4.strapi_api_token_permissions
CREATE TABLE IF NOT EXISTS `strapi_api_token_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_api_token_permissions: ~0 rows (approximately)

-- Dumping structure for table strapi4.strapi_api_token_permissions_token_links
CREATE TABLE IF NOT EXISTS `strapi_api_token_permissions_token_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int(10) unsigned DEFAULT NULL,
  `api_token_id` int(10) unsigned DEFAULT NULL,
  `api_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_api_token_permissions_token_links: ~0 rows (approximately)

-- Dumping structure for table strapi4.strapi_core_store_settings
CREATE TABLE IF NOT EXISTS `strapi_core_store_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_core_store_settings: ~29 rows (approximately)
REPLACE INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
	(1, 'strapi_content_types_schema', '{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"fullName":{"type":"string"},"address":{"type":"text"},"avatarUrl":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"fullName":{"type":"string"},"address":{"type":"text"},"avatarUrl":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"api::app-version.app-version":{"kind":"collectionType","collectionName":"app_versions","info":{"singularName":"app-version","pluralName":"app-versions","displayName":"App Version","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"bundleId":{"type":"string"},"version":{"type":"string"},"active":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"app_versions","info":{"singularName":"app-version","pluralName":"app-versions","displayName":"App Version","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"bundleId":{"type":"string"},"version":{"type":"string"},"active":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"app-version","connection":"default","uid":"api::app-version.app-version","apiName":"app-version","globalId":"AppVersion","actions":{},"lifecycles":{}},"api::banner.banner":{"kind":"collectionType","collectionName":"banners","info":{"singularName":"banner","pluralName":"banners","displayName":"Banner","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"caption":{"type":"string"},"url":{"type":"string"},"status":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"banners","info":{"singularName":"banner","pluralName":"banners","displayName":"Banner","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"caption":{"type":"string"},"url":{"type":"string"},"status":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"banner","connection":"default","uid":"api::banner.banner","apiName":"banner","globalId":"Banner","actions":{},"lifecycles":{}},"api::invoice.invoice":{"kind":"collectionType","collectionName":"invoices","info":{"singularName":"invoice","pluralName":"invoices","displayName":"Invoice","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"dueDate":{"type":"datetime","required":true},"users_permissions_user":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"orders":{"type":"relation","relation":"oneToMany","target":"api::order.order","mappedBy":"invoice"},"total":{"type":"decimal","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"invoices","info":{"singularName":"invoice","pluralName":"invoices","displayName":"Invoice","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"dueDate":{"type":"datetime","required":true},"users_permissions_user":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"orders":{"type":"relation","relation":"oneToMany","target":"api::order.order","mappedBy":"invoice"},"total":{"type":"decimal","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"invoice","connection":"default","uid":"api::invoice.invoice","apiName":"invoice","globalId":"Invoice","actions":{},"lifecycles":{}},"api::order.order":{"kind":"collectionType","collectionName":"orders","info":{"singularName":"order","pluralName":"orders","displayName":"Order","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"product":{"type":"relation","relation":"oneToOne","target":"api::product.product"},"qty":{"type":"integer"},"unitPrice":{"type":"decimal"},"invoice":{"type":"relation","relation":"manyToOne","target":"api::invoice.invoice","inversedBy":"orders"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"orders","info":{"singularName":"order","pluralName":"orders","displayName":"Order","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"product":{"type":"relation","relation":"oneToOne","target":"api::product.product"},"qty":{"type":"integer"},"unitPrice":{"type":"decimal"},"invoice":{"type":"relation","relation":"manyToOne","target":"api::invoice.invoice","inversedBy":"orders"}},"kind":"collectionType"},"modelType":"contentType","modelName":"order","connection":"default","uid":"api::order.order","apiName":"order","globalId":"Order","actions":{},"lifecycles":{}},"api::price-qty-range.price-qty-range":{"kind":"collectionType","collectionName":"price_qty_ranges","info":{"singularName":"price-qty-range","pluralName":"price-qty-ranges","displayName":"Price Qty Range","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"qtyStart":{"type":"integer"},"qtyEnd":{"type":"integer"},"price":{"type":"decimal"},"product_price_rule":{"type":"relation","relation":"manyToOne","target":"api::product-price-rule.product-price-rule","inversedBy":"qtyRanges"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"price_qty_ranges","info":{"singularName":"price-qty-range","pluralName":"price-qty-ranges","displayName":"Price Qty Range","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"qtyStart":{"type":"integer"},"qtyEnd":{"type":"integer"},"price":{"type":"decimal"},"product_price_rule":{"type":"relation","relation":"manyToOne","target":"api::product-price-rule.product-price-rule","inversedBy":"qtyRanges"}},"kind":"collectionType"},"modelType":"contentType","modelName":"price-qty-range","connection":"default","uid":"api::price-qty-range.price-qty-range","apiName":"price-qty-range","globalId":"PriceQtyRange","actions":{},"lifecycles":{}},"api::product.product":{"kind":"collectionType","collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"Product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"imageUrl":{"type":"string"},"category":{"type":"enumeration","enum":["minyak_goreng","kedelai","daging_sapi_kerbau","beras","jagung","daging_ayam","telur","gula","kopi","bumbu_dapur"]},"priceRule":{"type":"relation","relation":"oneToOne","target":"api::product-price-rule.product-price-rule","inversedBy":"product"},"favorite":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"Product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"imageUrl":{"type":"string"},"category":{"type":"enumeration","enum":["minyak_goreng","kedelai","daging_sapi_kerbau","beras","jagung","daging_ayam","telur","gula","kopi","bumbu_dapur"]},"priceRule":{"type":"relation","relation":"oneToOne","target":"api::product-price-rule.product-price-rule","inversedBy":"product"},"favorite":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"product","connection":"default","uid":"api::product.product","apiName":"product","globalId":"Product","actions":{},"lifecycles":{}},"api::product-price-rule.product-price-rule":{"kind":"collectionType","collectionName":"product_price_rules","info":{"singularName":"product-price-rule","pluralName":"product-price-rules","displayName":"Product Price Rule","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"qtyRanges":{"type":"relation","relation":"oneToMany","target":"api::price-qty-range.price-qty-range","mappedBy":"product_price_rule"},"product":{"type":"relation","relation":"oneToOne","target":"api::product.product","mappedBy":"priceRule"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"product_price_rules","info":{"singularName":"product-price-rule","pluralName":"product-price-rules","displayName":"Product Price Rule","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"qtyRanges":{"type":"relation","relation":"oneToMany","target":"api::price-qty-range.price-qty-range","mappedBy":"product_price_rule"},"product":{"type":"relation","relation":"oneToOne","target":"api::product.product","mappedBy":"priceRule"}},"kind":"collectionType"},"modelType":"contentType","modelName":"product-price-rule","connection":"default","uid":"api::product-price-rule.product-price-rule","apiName":"product-price-rule","globalId":"ProductPriceRule","actions":{},"lifecycles":{}}}', 'object', NULL, NULL),
	(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}', 'object', NULL, NULL),
	(3, 'plugin_content_manager_configuration_content_types::admin::user', '{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}', 'object', NULL, NULL),
	(4, 'plugin_content_manager_configuration_content_types::admin::role', '{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}', 'object', NULL, NULL),
	(5, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}', 'object', NULL, NULL),
	(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}', 'object', NULL, NULL),
	(7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"fullName":{"edit":{"label":"fullName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fullName","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"avatarUrl":{"edit":{"label":"avatarUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatarUrl","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"fullName","size":6},{"name":"address","size":6}],[{"name":"avatarUrl","size":6}]]}}', 'object', NULL, NULL),
	(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}', 'object', NULL, NULL),
	(9, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}', 'object', NULL, NULL),
	(10, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}', 'object', NULL, NULL),
	(11, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', NULL, NULL),
	(12, 'plugin_content_manager_configuration_content_types::admin::api-token', '{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}', 'object', NULL, NULL),
	(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}', 'object', NULL, NULL),
	(14, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}', 'object', NULL, NULL),
	(15, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}', 'object', NULL, NULL),
	(16, 'plugin_upload_view_configuration', '{"pageSize":10,"sort":"createdAt:DESC"}', 'object', NULL, NULL),
	(17, 'plugin_upload_metrics', '{"weeklySchedule":"51 0 7 * * 6","lastWeeklyUpdate":1686985251023}', 'object', NULL, NULL),
	(18, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}', 'object', NULL, NULL),
	(19, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"tkp-admin@iq.com"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@iq.com"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', NULL, NULL),
	(20, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', NULL, NULL),
	(21, 'plugin_i18n_default_locale', '"en"', 'string', NULL, NULL),
	(22, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}', 'object', NULL, NULL),
	(24, 'plugin_content_manager_configuration_content_types::api::app-version.app-version', '{"uid":"api::app-version.app-version","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"bundleId","defaultSortBy":"bundleId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"bundleId":{"edit":{"label":"bundleId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bundleId","searchable":true,"sortable":true}},"version":{"edit":{"label":"version","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"version","searchable":true,"sortable":true}},"active":{"edit":{"label":"active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"active","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","bundleId","version","active"],"edit":[[{"name":"bundleId","size":6},{"name":"version","size":6}],[{"name":"active","size":4}]]}}', 'object', NULL, NULL),
	(25, 'plugin_content_manager_configuration_content_types::api::banner.banner', '{"uid":"api::banner.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"caption","defaultSortBy":"caption","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","caption","url","status"],"edit":[[{"name":"caption","size":6},{"name":"url","size":6}],[{"name":"status","size":4}]]}}', 'object', NULL, NULL),
	(26, 'plugin_content_manager_configuration_content_types::api::product.product', '{"uid":"api::product.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"imageUrl":{"edit":{"label":"imageUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"imageUrl","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"category","searchable":true,"sortable":true}},"priceRule":{"edit":{"label":"priceRule","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"priceRule","searchable":true,"sortable":true}},"favorite":{"edit":{"label":"favorite","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favorite","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","imageUrl","priceRule"],"edit":[[{"name":"name","size":6},{"name":"imageUrl","size":6}],[{"name":"category","size":6},{"name":"priceRule","size":6}],[{"name":"favorite","size":4}]]}}', 'object', NULL, NULL),
	(27, 'plugin_content_manager_configuration_content_types::api::price-qty-range.price-qty-range', '{"uid":"api::price-qty-range.price-qty-range","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"qtyStart":{"edit":{"label":"qtyStart","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"qtyStart","searchable":true,"sortable":true}},"qtyEnd":{"edit":{"label":"qtyEnd","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"qtyEnd","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"product_price_rule":{"edit":{"label":"product_price_rule","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"product_price_rule","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","qtyEnd","price","qtyStart"],"edit":[[{"name":"qtyEnd","size":4},{"name":"price","size":4}],[{"name":"product_price_rule","size":6},{"name":"qtyStart","size":4}]]}}', 'object', NULL, NULL),
	(28, 'plugin_content_manager_configuration_content_types::api::product-price-rule.product-price-rule', '{"uid":"api::product-price-rule.product-price-rule","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"qtyRanges":{"edit":{"label":"qtyRanges","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"qtyRanges","searchable":false,"sortable":false}},"product":{"edit":{"label":"product","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"product","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","qtyRanges"],"edit":[[{"name":"name","size":6}],[{"name":"product","size":6},{"name":"qtyRanges","size":6}]]}}', 'object', NULL, NULL),
	(29, 'plugin_content_manager_configuration_content_types::api::order.order', '{"uid":"api::order.order","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"product":{"edit":{"label":"product","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"product","searchable":true,"sortable":true}},"qty":{"edit":{"label":"qty","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"qty","searchable":true,"sortable":true}},"unitPrice":{"edit":{"label":"unitPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"unitPrice","searchable":true,"sortable":true}},"invoice":{"edit":{"label":"invoice","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"invoice","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","product","qty","unitPrice"],"edit":[[{"name":"product","size":6},{"name":"qty","size":4}],[{"name":"unitPrice","size":4},{"name":"invoice","size":6}]]}}', 'object', NULL, NULL),
	(30, 'plugin_content_manager_configuration_content_types::api::invoice.invoice', '{"uid":"api::invoice.invoice","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dueDate":{"edit":{"label":"dueDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dueDate","searchable":true,"sortable":true}},"users_permissions_user":{"edit":{"label":"users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users_permissions_user","searchable":true,"sortable":true}},"orders":{"edit":{"label":"orders","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"orders","searchable":false,"sortable":false}},"total":{"edit":{"label":"total","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"dueDate","size":6}],[{"name":"users_permissions_user","size":6},{"name":"orders","size":6}],[{"name":"total","size":4}]],"list":["id","dueDate","users_permissions_user","total"]}}', 'object', NULL, NULL);

-- Dumping structure for table strapi4.strapi_database_schema
CREATE TABLE IF NOT EXISTS `strapi_database_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_database_schema: ~1 rows (approximately)
REPLACE INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
	(28, '{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"full_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"avatar_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"app_versions","indexes":[{"name":"app_versions_created_by_id_fk","columns":["created_by_id"]},{"name":"app_versions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"app_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"app_versions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bundle_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"version","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"banners","indexes":[{"name":"banners_created_by_id_fk","columns":["created_by_id"]},{"name":"banners_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"banners_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"banners_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"invoices","indexes":[{"name":"invoices_created_by_id_fk","columns":["created_by_id"]},{"name":"invoices_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"invoices_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"invoices_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"due_date","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"orders","indexes":[{"name":"orders_created_by_id_fk","columns":["created_by_id"]},{"name":"orders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"orders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"orders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"qty","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"unit_price","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"price_qty_ranges","indexes":[{"name":"price_qty_ranges_created_by_id_fk","columns":["created_by_id"]},{"name":"price_qty_ranges_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"price_qty_ranges_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"price_qty_ranges_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"qty_start","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"qty_end","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"products","indexes":[{"name":"products_created_by_id_fk","columns":["created_by_id"]},{"name":"products_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"products_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"products_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"image_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"category","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"favorite","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"product_price_rules","indexes":[{"name":"product_price_rules_created_by_id_fk","columns":["created_by_id"]},{"name":"product_price_rules_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"product_price_rules_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"product_price_rules_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"],"type":null},{"name":"files_related_morphs_id_column_index","columns":["related_id"],"type":null}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"invoices_users_permissions_user_links","indexes":[{"name":"invoices_users_permissions_user_links_fk","columns":["invoice_id"]},{"name":"invoices_users_permissions_user_links_inv_fk","columns":["user_id"]},{"name":"invoices_users_permissions_user_links_unique","columns":["invoice_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"invoices_users_permissions_user_links_fk","columns":["invoice_id"],"referencedColumns":["id"],"referencedTable":"invoices","onDelete":"CASCADE"},{"name":"invoices_users_permissions_user_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"invoice_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"orders_product_links","indexes":[{"name":"orders_product_links_fk","columns":["order_id"]},{"name":"orders_product_links_inv_fk","columns":["product_id"]},{"name":"orders_product_links_unique","columns":["order_id","product_id"],"type":"unique"}],"foreignKeys":[{"name":"orders_product_links_fk","columns":["order_id"],"referencedColumns":["id"],"referencedTable":"orders","onDelete":"CASCADE"},{"name":"orders_product_links_inv_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"products","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"order_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"orders_invoice_links","indexes":[{"name":"orders_invoice_links_fk","columns":["order_id"]},{"name":"orders_invoice_links_inv_fk","columns":["invoice_id"]},{"name":"orders_invoice_links_unique","columns":["order_id","invoice_id"],"type":"unique"},{"name":"orders_invoice_links_order_inv_fk","columns":["order_order"]}],"foreignKeys":[{"name":"orders_invoice_links_fk","columns":["order_id"],"referencedColumns":["id"],"referencedTable":"orders","onDelete":"CASCADE"},{"name":"orders_invoice_links_inv_fk","columns":["invoice_id"],"referencedColumns":["id"],"referencedTable":"invoices","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"order_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"invoice_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"order_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"price_qty_ranges_product_price_rule_links","indexes":[{"name":"price_qty_ranges_product_price_rule_links_fk","columns":["price_qty_range_id"]},{"name":"price_qty_ranges_product_price_rule_links_inv_fk","columns":["product_price_rule_id"]},{"name":"price_qty_ranges_product_price_rule_links_unique","columns":["price_qty_range_id","product_price_rule_id"],"type":"unique"},{"name":"price_qty_ranges_product_price_rule_links_order_inv_fk","columns":["price_qty_range_order"]}],"foreignKeys":[{"name":"price_qty_ranges_product_price_rule_links_fk","columns":["price_qty_range_id"],"referencedColumns":["id"],"referencedTable":"price_qty_ranges","onDelete":"CASCADE"},{"name":"price_qty_ranges_product_price_rule_links_inv_fk","columns":["product_price_rule_id"],"referencedColumns":["id"],"referencedTable":"product_price_rules","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"price_qty_range_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_price_rule_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"price_qty_range_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"products_price_rule_links","indexes":[{"name":"products_price_rule_links_fk","columns":["product_id"]},{"name":"products_price_rule_links_inv_fk","columns":["product_price_rule_id"]},{"name":"products_price_rule_links_unique","columns":["product_id","product_price_rule_id"],"type":"unique"}],"foreignKeys":[{"name":"products_price_rule_links_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"products","onDelete":"CASCADE"},{"name":"products_price_rule_links_inv_fk","columns":["product_price_rule_id"],"referencedColumns":["id"],"referencedTable":"product_price_rules","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_price_rule_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}', '2023-06-20 05:54:15', '7258b95036601742733d60810adbbe3d');

-- Dumping structure for table strapi4.strapi_migrations
CREATE TABLE IF NOT EXISTS `strapi_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_migrations: ~0 rows (approximately)

-- Dumping structure for table strapi4.strapi_transfer_tokens
CREATE TABLE IF NOT EXISTS `strapi_transfer_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_transfer_tokens: ~0 rows (approximately)

-- Dumping structure for table strapi4.strapi_transfer_token_permissions
CREATE TABLE IF NOT EXISTS `strapi_transfer_token_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_transfer_token_permissions: ~0 rows (approximately)

-- Dumping structure for table strapi4.strapi_transfer_token_permissions_token_links
CREATE TABLE IF NOT EXISTS `strapi_transfer_token_permissions_token_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_token_permission_id` int(10) unsigned DEFAULT NULL,
  `transfer_token_id` int(10) unsigned DEFAULT NULL,
  `transfer_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`),
  CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_transfer_token_permissions_token_links: ~0 rows (approximately)

-- Dumping structure for table strapi4.strapi_webhooks
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.strapi_webhooks: ~0 rows (approximately)

-- Dumping structure for table strapi4.upload_folders
CREATE TABLE IF NOT EXISTS `upload_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.upload_folders: ~0 rows (approximately)

-- Dumping structure for table strapi4.upload_folders_parent_links
CREATE TABLE IF NOT EXISTS `upload_folders_parent_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int(10) unsigned DEFAULT NULL,
  `inv_folder_id` int(10) unsigned DEFAULT NULL,
  `folder_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.upload_folders_parent_links: ~0 rows (approximately)

-- Dumping structure for table strapi4.up_permissions
CREATE TABLE IF NOT EXISTS `up_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.up_permissions: ~46 rows (approximately)
REPLACE INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'plugin::users-permissions.user.me', '2023-06-17 06:48:50.923000', '2023-06-17 06:48:50.923000', NULL, NULL),
	(2, 'plugin::users-permissions.auth.changePassword', '2023-06-17 06:48:50.923000', '2023-06-17 06:48:50.923000', NULL, NULL),
	(3, 'plugin::users-permissions.auth.callback', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(4, 'plugin::users-permissions.auth.connect', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(5, 'plugin::users-permissions.auth.forgotPassword', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(6, 'plugin::users-permissions.auth.resetPassword', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(7, 'plugin::users-permissions.auth.register', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-06-17 06:48:50.959000', '2023-06-17 06:48:50.959000', NULL, NULL),
	(10, 'api::app-version.app-version.find', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(11, 'api::app-version.app-version.findOne', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(12, 'api::app-version.app-version.create', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(13, 'api::banner.banner.update', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(14, 'api::banner.banner.find', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(15, 'api::banner.banner.delete', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(16, 'api::price-qty-range.price-qty-range.find', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(17, 'api::price-qty-range.price-qty-range.findOne', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(18, 'api::banner.banner.create', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(19, 'api::banner.banner.findOne', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(20, 'api::app-version.app-version.update', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(21, 'api::app-version.app-version.delete', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(22, 'api::price-qty-range.price-qty-range.create', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(23, 'api::price-qty-range.price-qty-range.update', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(24, 'api::price-qty-range.price-qty-range.delete', '2023-06-19 05:12:38.919000', '2023-06-19 05:12:38.919000', NULL, NULL),
	(25, 'api::product.product.find', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(26, 'api::product.product.findOne', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(27, 'api::product.product.create', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(28, 'api::product.product.update', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(29, 'api::product.product.delete', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(30, 'api::product-price-rule.product-price-rule.find', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(31, 'api::product-price-rule.product-price-rule.findOne', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(32, 'api::product-price-rule.product-price-rule.create', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(33, 'api::product-price-rule.product-price-rule.update', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(34, 'api::product-price-rule.product-price-rule.delete', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(35, 'plugin::upload.content-api.find', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(36, 'plugin::upload.content-api.findOne', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(37, 'plugin::upload.content-api.destroy', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(38, 'plugin::upload.content-api.upload', '2023-06-19 05:12:38.920000', '2023-06-19 05:12:38.920000', NULL, NULL),
	(39, 'api::order.order.create', '2023-06-19 13:53:47.908000', '2023-06-19 13:53:47.908000', NULL, NULL),
	(40, 'api::invoice.invoice.create', '2023-06-19 14:18:02.694000', '2023-06-19 14:18:02.694000', NULL, NULL),
	(42, 'api::order.order.findOne', '2023-06-19 14:31:02.878000', '2023-06-19 14:31:02.878000', NULL, NULL),
	(44, 'api::order.order.find', '2023-06-19 14:31:54.683000', '2023-06-19 14:31:54.683000', NULL, NULL),
	(45, 'api::invoice.invoice.find', '2023-06-19 15:59:08.058000', '2023-06-19 15:59:08.058000', NULL, NULL),
	(46, 'api::invoice.invoice.findOne', '2023-06-19 15:59:08.058000', '2023-06-19 15:59:08.058000', NULL, NULL),
	(47, 'plugin::users-permissions.user.findOne', '2023-06-19 16:02:32.642000', '2023-06-19 16:02:32.642000', NULL, NULL),
	(48, 'plugin::users-permissions.user.find', '2023-06-19 16:03:14.642000', '2023-06-19 16:03:14.642000', NULL, NULL);

-- Dumping structure for table strapi4.up_permissions_role_links
CREATE TABLE IF NOT EXISTS `up_permissions_role_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.up_permissions_role_links: ~46 rows (approximately)
REPLACE INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
	(1, 2, 1, 1),
	(2, 1, 1, 1),
	(3, 3, 2, 1),
	(4, 5, 2, 2),
	(5, 7, 2, 2),
	(6, 8, 2, 3),
	(7, 6, 2, 3),
	(8, 9, 2, 3),
	(9, 4, 2, 3),
	(10, 10, 1, 2),
	(11, 12, 1, 2),
	(12, 11, 1, 2),
	(13, 13, 1, 2),
	(14, 15, 1, 2),
	(15, 16, 1, 2),
	(16, 18, 1, 2),
	(17, 14, 1, 2),
	(18, 19, 1, 3),
	(19, 20, 1, 3),
	(20, 21, 1, 4),
	(21, 22, 1, 4),
	(22, 17, 1, 4),
	(23, 23, 1, 4),
	(24, 25, 1, 4),
	(25, 26, 1, 4),
	(26, 24, 1, 5),
	(27, 27, 1, 5),
	(28, 29, 1, 5),
	(29, 28, 1, 5),
	(30, 32, 1, 6),
	(31, 31, 1, 6),
	(32, 30, 1, 6),
	(33, 35, 1, 6),
	(34, 33, 1, 6),
	(35, 34, 1, 6),
	(36, 37, 1, 7),
	(37, 38, 1, 7),
	(38, 36, 1, 7),
	(39, 39, 1, 8),
	(40, 40, 1, 9),
	(42, 42, 1, 11),
	(44, 44, 1, 12),
	(45, 45, 1, 13),
	(46, 46, 1, 13),
	(47, 47, 1, 14),
	(48, 48, 1, 15);

-- Dumping structure for table strapi4.up_roles
CREATE TABLE IF NOT EXISTS `up_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.up_roles: ~2 rows (approximately)
REPLACE INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-06-17 06:48:50.912000', '2023-06-19 16:03:14.633000', NULL, NULL),
	(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-06-17 06:48:50.917000', '2023-06-17 06:48:50.917000', NULL, NULL);

-- Dumping structure for table strapi4.up_users
CREATE TABLE IF NOT EXISTS `up_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.up_users: ~1 rows (approximately)
REPLACE INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `full_name`, `address`, `avatar_url`) VALUES
	(1, 'demouser', 'demo-user@iq.com', 'local', '$2a$10$akipOMZxRI4HxfJEwVwi3OkmYqflDkDuf/oOMb15LUSFV1H5i.9hK', NULL, NULL, 1, 0, '2023-06-17 06:58:16.186000', '2023-06-19 05:13:40.028000', 1, 1, NULL, NULL, NULL),
	(4, 'nta', 'nta@gmail.com', 'local', '$2a$10$aGObCQNvXjZYCO1TMRO9buhpuv3epNTuM3OUAYM2PcsG.M01cex2i', '076d77e6a12b9772305aa06ef613b90bcd1e6547f50719f9d3a119902b67928d59a7f0a0737b7fcac657fcd24c84591583b256176ab298a4c74e8472d8990026', NULL, 1, 0, '2023-06-19 06:02:47.098000', '2023-06-19 06:11:10.907000', NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table strapi4.up_users_role_links
CREATE TABLE IF NOT EXISTS `up_users_role_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table strapi4.up_users_role_links: ~2 rows (approximately)
REPLACE INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
	(3, 1, 1, 2),
	(5, 4, 1, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
