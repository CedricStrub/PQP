-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.32 - MySQL Community Server - GPL
-- SE du serveur:                Linux
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour pqp
CREATE DATABASE IF NOT EXISTS `pqp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pqp`;

-- Listage de la structure de table pqp. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table pqp.failed_jobs : ~0 rows (environ)

-- Listage de la structure de table pqp. films
CREATE TABLE IF NOT EXISTS `films` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `runtime` int DEFAULT '0',
  `release_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `overview` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `poster_path` varchar(250) DEFAULT NULL,
  `o_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table pqp.films : ~20 rows (environ)
INSERT INTO `films` (`id`, `title`, `runtime`, `release_date`, `overview`, `updated_at`, `created_at`, `poster_path`, `o_id`) VALUES
	(310, 'We Have a Ghost', 0, NULL, 'After Kevin finds a ghost named Ernest haunting his new home, he becomes an overnight social media sensation. But when Kevin and Ernest go rogue to investigate the mystery of the latter\'s past, they become targets of the CIA.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/xo0fgAUoEeVQ7KsKeMWypyglvnf.jpg', 852096),
	(311, 'Die Hart', 0, NULL, 'Follows a fictionalized version of Kevin Hart, as he tries to become an action movie star. He attends a school run by Ron Wilcox, where he attempts to learn the ropes on how to become one of the industry\'s most coveted action stars.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/1EnBjTJ5utgT1OXYBZ8YwByRCzP.jpg', 1077280),
	(312, 'Knock at the Cabin', 0, NULL, 'While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg', 631842),
	(313, 'The Whale', 0, NULL, 'A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg', 785084),
	(314, 'Ant-Man and the Wasp: Quantumania', 0, NULL, 'Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope\'s parents Janet van Dyne and Hank Pym, and Scott\'s daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg', 640146),
	(315, 'Bruiser', 0, NULL, 'During summer break, 14-year-old Darious explores the boundaries of his manhood through tumultuous interactions with Malcolm his strict father and a burgeoning mentorship with mysterious drifter Porter.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/mvOPGMrLhv4ZebTFPeqLXT0IOLm.jpg', 1014566),
	(316, 'The Strays', 0, NULL, 'A Black woman\'s meticulously crafted life of privilege starts to unravel when two strangers show up in her quaint suburban town.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/3OKBFYRVSKkBVJ7WpKogTVQfUqC.jpg', 1063422),
	(317, 'Puss in Boots: The Last Wish', 0, NULL, 'Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', 315162),
	(318, 'Plane', 0, NULL, 'After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg', 646389),
	(319, 'Black Panther: Wakanda Forever', 0, NULL, 'Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/sv1xJUazXeYqALzczSZ3O6nkH75.jpg', 505642),
	(320, 'M3GAN', 0, NULL, 'A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll\'s programming works too well, she becomes overprotective of her new friend with terrifying results.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg', 536554),
	(321, 'Sharper', 0, NULL, 'A small, wealthy family in New York City gets progressively torn apart by secrets, lies, and the theft that orchestrates all of it.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/tq8x5F17q95T1j0up5rpzXFAylN.jpg', 717980),
	(322, 'Call Me Chihiro', 0, NULL, 'An unapologetic former sex worker starts working at a bento stand in a small seaside town, bringing comfort to the lonely souls who come her way.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/bFryUqUKAJIgzIC8OeTzqm8td2.jpg', 1024621),
	(323, 'Women Talking', 0, NULL, 'A group of women in an isolated religious colony struggle to reconcile their faith with a series of sexual assaults committed by the colony\'s men.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/xbBqiLakuMl1NS4Y1GZTGvk1xOR.jpg', 777245),
	(324, 'Cocaine Bear', 0, NULL, 'An oddball group of cops, criminals, tourists and teens converge in a Georgia forest where a 500-pound black bear goes on a murderous rampage after unintentionally ingesting cocaine.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg', 804150),
	(325, 'Babylon', 0, NULL, 'A tale of outsized ambition and outrageous excess, tracing the rise and fall of multiple characters in an era of unbridled decadence and depravity during Hollywood\'s transition from silent films and to sound films in the late 1920s.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/wjOHjWCUE0YzDiEzKv8AfqHj3ir.jpg', 615777),
	(326, 'Avatar: The Way of Water', 0, NULL, 'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 76600),
	(327, 'Everything Everywhere All at Once', 0, NULL, 'An aging Chinese immigrant is swept up in an insane adventure, where she alone can save what\'s important to her by connecting with the lives she could have led in other universes.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/w3LxiVYdWWRvEVdn5RYq6jIqkb1.jpg', 545611),
	(328, 'Unlocked', 0, NULL, 'A woman’s life is turned upside-down when a dangerous man gets a hold of her lost cell phone and uses it to track her every move.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/s9DOGlKfXWlnxAdOJHQzP3aRqt0.jpg', 740441),
	(329, 'Top Gun: Maverick', 0, NULL, 'After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.', '2023-02-27 01:49:04', '2023-02-27 01:49:04', '/62HCnUTziyWcpDaBO2i1DX17ljH.jpg', 361743);

-- Listage de la structure de table pqp. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table pqp.migrations : ~6 rows (environ)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2023_02_25_165134_create_sessions_table', 1);

-- Listage de la structure de table pqp. password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table pqp.password_reset_tokens : ~0 rows (environ)

-- Listage de la structure de table pqp. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table pqp.personal_access_tokens : ~0 rows (environ)

-- Listage de la structure de table pqp. sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table pqp.sessions : ~2 rows (environ)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('5152tkwKvB1mNHp1DQV6I2AJ6dfYnzuJ80Jcz6tA', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlc5R043T3luMUo3MDdhTGt4T2tiWUpwQUU2R0xYNlZvZml2TEZnTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1677459507),
	('GWauVSl9HYoPD7bo8Oi6scgo0vJLwxWvajpXSTE5', 1, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibjFHTEpqMDdLYVNWREtTYzdYT0d5MG92Umd3MlRoZVFFZ0NYZlFzZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHZLZVFlZVk1czlPb0JhWjZGSVlVLmVrcThoWjBGMkxjelEuYnV4M0xUODNNamRZdVQ5SFdLIjt9', 1677462551);

-- Listage de la structure de table pqp. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table pqp.users : ~1 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Cedric', 'cedric@mail.fr', NULL, '$2y$10$vKeQeeY5s9OoBaZ6FIYU.ekq8hZ0F2LczQ.bux3LT83MjdYuT9HWK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-25 21:25:36', '2023-02-25 21:25:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
