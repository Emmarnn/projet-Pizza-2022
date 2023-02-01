-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 31 Janvier 2022 à 11:40
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
-- Structure de la table `comprendre`
--

CREATE TABLE IF NOT EXISTS `comprendre` (
  `numCommande` int(5) NOT NULL,
  `numPizza` int(2) NOT NULL,
  `numTaille` tinyint(1) NOT NULL,
  `quantité` int(5) DEFAULT '1',
  PRIMARY KEY (`numCommande`,`numPizza`,`numTaille`),
  KEY `numTaille` (`numTaille`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comprendre`
--

INSERT INTO `comprendre` (`numCommande`, `numPizza`, `numTaille`, `quantité`) VALUES
(1, 7, 2, 2),
(1, 7, 3, 1),
(2, 7, 2, 2),
(2, 40, 1, 2),
(2, 43, 1, 1),
(3, 7, 2, 1),
(3, 28, 4, 1),
(4, 5, 4, 1),
(4, 50, 2, 1),
(5, 7, 1, 2),
(6, 5, 2, 1),
(6, 7, 2, 1),
(6, 50, 3, 1),
(7, 31, 2, 2),
(8, 7, 1, 1),
(8, 8, 2, 1),
(9, 2, 4, 2),
(10, 50, 1, 2),
(11, 7, 2, 1),
(11, 31, 4, 1),
(12, 8, 3, 1),
(12, 31, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
