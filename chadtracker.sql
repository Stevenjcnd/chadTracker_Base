-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 23 fév. 2022 à 09:47
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chadtracker`
--

-- --------------------------------------------------------

--
-- Structure de la table `exercice`
--

DROP TABLE IF EXISTS `exercice`;
CREATE TABLE IF NOT EXISTS `exercice` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `repetition` bigint(20) DEFAULT NULL,
  `repos (s)` bigint(20) DEFAULT NULL,
  `muscle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `exercice`
--

INSERT INTO `exercice` (`id`, `name`, `description`, `difficulty`, `repetition`, `repos (s)`, `muscle_id`) VALUES
(2, 'Balancement des coudes et des genoux', NULL, NULL, 0, 60, 1),
(1, 'Abdominaux croisés assis', NULL, NULL, 0, 45, 1),
(3, 'Abdominaux avec jambes verticales', NULL, NULL, 0, 60, 1),
(4, 'Abdominaux inversés', NULL, NULL, 0, 45, 1),
(5, 'Arc-en-ciel en planche sur la gauche', NULL, NULL, 0, 30, 1),
(6, 'Arc-en-ciel en planche sur la droite', NULL, NULL, 0, 30, 1),
(7, 'Squats pop', NULL, NULL, 0, 60, 1),
(8, 'Planche sur coude', NULL, NULL, 0, 45, 1),
(9, 'Abdominaux bicyclette', NULL, NULL, 0, 30, 1),
(10, 'Rames avec haltères', NULL, NULL, 0, 30, 1),
(11, 'Maintenir une position assise en V', NULL, NULL, 0, 30, 1),
(12, 'Développé avec banc et haltère', NULL, NULL, 15, NULL, 1),
(13, 'Levées de bras droit à genou', NULL, NULL, 8, NULL, 1),
(14, 'Levées de bras gauche à genou', NULL, NULL, 8, NULL, 1),
(15, 'Flexions marteau', NULL, NULL, 15, NULL, 1),
(16, 'Extensions de triceps avec haltères allongé', NULL, NULL, 15, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `exercice$muscle`
--

DROP TABLE IF EXISTS `exercice$muscle`;
CREATE TABLE IF NOT EXISTS `exercice$muscle` (
  `id` bigint(20) NOT NULL,
  `body_part` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `exercice_muscle`
--

DROP TABLE IF EXISTS `exercice_muscle`;
CREATE TABLE IF NOT EXISTS `exercice_muscle` (
  `exercice_id` bigint(20) NOT NULL,
  `muscle_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_3pac1665v24yd3g5h9a7ng2jt` (`muscle_id`),
  KEY `FK7uk0fp7wlycfeqma80m038ags` (`exercice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `initial_exp_id` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `lvl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `premium` bit(1) DEFAULT NULL,
  `taille` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `age`, `email`, `gender`, `initial_exp_id`, `lastname`, `lvl`, `name`, `password`, `premium`, `taille`, `user_code`) VALUES
(1, '22', 'camil.hirane@ynov.com', b'0', '99%', 'Hirane', '29', 'Camil', 'Issou', b'1', '196', '727626627928773777373737373773737');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
