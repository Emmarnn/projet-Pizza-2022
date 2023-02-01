-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 31 Janvier 2022 à 11:43
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `pizzas2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `numCommande` int(5) NOT NULL AUTO_INCREMENT,
  `numClient` int(5) NOT NULL,
  `dateHeureLivraison` datetime NOT NULL,
  `àLivrer` tinyint(1) DEFAULT '0',
  `fini` tinyint(1) DEFAULT '0',
  `montant` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`numCommande`),
  KEY `numClient` (`numClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`numCommande`, `numClient`, `dateHeureLivraison`, `àLivrer`, `fini`, `montant`) VALUES
(1, 2, '2020-10-06 19:30:00', 0, 0, NULL),
(2, 1, '2020-10-06 19:20:00', 1, 0, NULL),
(3, 2, '2020-10-07 19:30:00', 0, 0, NULL),
(4, 1, '2020-10-07 20:30:00', 0, 0, NULL),
(5, 6, '2020-10-07 19:00:00', 1, 0, NULL),
(6, 3, '2020-10-07 19:30:00', 1, 0, NULL),
(7, 5, '2020-10-08 18:30:00', 1, 0, NULL),
(8, 2, '2020-10-08 19:00:00', 0, 0, NULL),
(9, 6, '2020-10-08 20:30:00', 1, 0, NULL),
(10, 2, '2020-10-08 21:00:00', 0, 0, NULL),
(11, 6, '2020-10-09 19:30:00', 1, 0, NULL),
(12, 1, '2020-10-09 19:30:00', 1, 0, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
