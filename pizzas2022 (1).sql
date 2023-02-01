-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 02 Février 2022 à 09:30
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `pizzas2022`
--

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE IF NOT EXISTS `composer` (
  `numPizza` int(5) NOT NULL DEFAULT '0',
  `numIngredient` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numPizza`,`numIngredient`),
  KEY `fk_numIngredient_dans_composer` (`numIngredient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `composer`
--

INSERT INTO `composer` (`numPizza`, `numIngredient`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(8, 1),
(9, 1),
(11, 1),
(12, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(27, 1),
(31, 1),
(32, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(47, 1),
(48, 1),
(50, 1),
(51, 1),
(52, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(54, 2),
(2, 3),
(5, 3),
(8, 3),
(31, 3),
(32, 3),
(36, 3),
(43, 3),
(2, 4),
(37, 4),
(3, 5),
(9, 5),
(15, 5),
(16, 5),
(33, 5),
(34, 5),
(40, 5),
(45, 5),
(3, 6),
(10, 6),
(14, 6),
(18, 6),
(22, 6),
(23, 6),
(24, 6),
(26, 6),
(34, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(44, 6),
(45, 6),
(49, 6),
(4, 7),
(5, 8),
(6, 8),
(16, 8),
(19, 8),
(25, 8),
(29, 8),
(31, 8),
(32, 8),
(34, 8),
(38, 8),
(46, 8),
(49, 8),
(6, 9),
(21, 9),
(33, 9),
(40, 9),
(7, 10),
(10, 10),
(13, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(22, 10),
(27, 10),
(28, 10),
(29, 10),
(30, 10),
(31, 10),
(34, 10),
(35, 10),
(41, 10),
(43, 10),
(44, 10),
(45, 10),
(46, 10),
(49, 10),
(7, 11),
(28, 11),
(38, 11),
(39, 11),
(43, 11),
(44, 11),
(7, 12),
(22, 12),
(25, 12),
(44, 12),
(8, 13),
(14, 13),
(9, 14),
(10, 15),
(11, 16),
(14, 16),
(18, 16),
(34, 16),
(42, 16),
(50, 16),
(11, 17),
(54, 17),
(11, 18),
(32, 18),
(12, 19),
(12, 20),
(23, 20),
(38, 20),
(12, 21),
(13, 22),
(20, 22),
(13, 23),
(13, 24),
(14, 25),
(15, 26),
(40, 26),
(15, 27),
(18, 27),
(15, 28),
(17, 29),
(26, 29),
(36, 29),
(4, 30),
(17, 30),
(19, 30),
(23, 30),
(24, 30),
(28, 30),
(33, 30),
(45, 30),
(19, 31),
(21, 31),
(24, 31),
(20, 32),
(20, 33),
(21, 34),
(24, 34),
(33, 34),
(40, 34),
(23, 35),
(35, 35),
(25, 36),
(30, 36),
(37, 36),
(43, 36),
(48, 36),
(26, 37),
(33, 37),
(27, 38),
(27, 39),
(29, 39),
(46, 39),
(28, 40),
(29, 40),
(35, 40),
(30, 41),
(30, 42),
(31, 43),
(54, 43),
(32, 44),
(36, 44),
(50, 44),
(35, 45),
(46, 45),
(36, 46),
(37, 47),
(37, 48),
(43, 48),
(39, 49),
(39, 50),
(47, 50),
(52, 50),
(39, 51),
(41, 52),
(41, 53),
(42, 54),
(42, 55),
(45, 55),
(47, 55),
(44, 56),
(46, 57),
(47, 58),
(48, 58),
(54, 58),
(48, 60),
(52, 60),
(54, 60),
(48, 61),
(49, 62),
(49, 63),
(50, 63),
(51, 63),
(52, 63),
(50, 64),
(51, 65),
(51, 66),
(53, 66),
(52, 67),
(53, 68),
(54, 68),
(53, 69),
(53, 70),
(54, 71),
(26, 72);

-- --------------------------------------------------------

--
-- Structure de la table `couter`
--

CREATE TABLE IF NOT EXISTS `couter` (
  `numTarif` tinyint(1) NOT NULL,
  `numTaille` tinyint(1) NOT NULL,
  `prix` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`numTarif`,`numTaille`),
  KEY `fk_numTaille_dans_couter` (`numTaille`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `couter`
--

INSERT INTO `couter` (`numTarif`, `numTaille`, `prix`) VALUES
(1, 1, '7.60'),
(1, 2, '10.00'),
(1, 3, '15.00'),
(1, 4, '24.50'),
(2, 1, '9.00'),
(2, 2, '13.00'),
(2, 3, '19.00'),
(2, 4, '27.50'),
(3, 1, '9.70'),
(3, 2, '14.50'),
(3, 3, '21.00'),
(3, 4, '27.50'),
(4, 1, '10.40'),
(4, 2, '16.00'),
(4, 3, '23.00'),
(4, 4, '27.50');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `numGenre` int(2) NOT NULL AUTO_INCREMENT,
  `nomGenre` varchar(50) NOT NULL,
  PRIMARY KEY (`numGenre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`numGenre`, `nomGenre`) VALUES
(1, 'Classique'),
(2, 'Italienne'),
(3, 'Spéciale');

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `numIngredient` int(5) NOT NULL AUTO_INCREMENT,
  `nomIngredient` varchar(50) NOT NULL,
  PRIMARY KEY (`numIngredient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Contenu de la table `ingredients`
--

INSERT INTO `ingredients` (`numIngredient`, `nomIngredient`) VALUES
(1, 'tomate'),
(2, 'fromage'),
(3, 'jambon'),
(4, 'emmental'),
(5, 'boeuf'),
(6, 'oignons'),
(7, 'jambon ou thon ou poulet rôti maison'),
(8, 'champignons'),
(9, 'pepperoni'),
(10, 'crème fraîche'),
(11, 'pommes de terre'),
(12, 'lardons'),
(13, 'gros chorizo'),
(14, 'cheddar'),
(15, 'kebab'),
(16, 'tomates fraîches'),
(17, 'féta'),
(18, 'aubergines grillées'),
(19, 'câpres'),
(20, 'olives'),
(21, 'anchois'),
(22, 'Jambon ou poulet rôti maison'),
(23, 'jeunes pousses d''épinard'),
(24, 'boursin'),
(25, 'base moutarde'),
(26, 'épices mexicaines'),
(27, 'poulet tikka'),
(28, 'sauce pimentée maison'),
(29, 'bacon'),
(30, 'oeux'),
(31, 'merguez'),
(32, 'ananas'),
(33, 'maïs'),
(34, 'poivrons'),
(35, 'thon'),
(36, 'chèvre'),
(37, 'sauce barbecue'),
(38, 'cocktail de fruits de mer'),
(39, 'persillade maison'),
(40, 'saumon'),
(41, 'poulet rôti maison ou lardons'),
(42, 'miel'),
(43, 'jaune d''oeuf'),
(44, 'asperges'),
(45, 'citron'),
(46, 'artichauts à la romaine'),
(47, 'double fromage'),
(48, 'bleu'),
(49, 'fromage à raclette'),
(50, 'jambon de pays'),
(51, 'cornichons'),
(52, 'curry'),
(53, 'poulet rôti maison'),
(54, 'tapenade'),
(55, 'parmesan'),
(56, 'reblochon'),
(57, 'St-Jacques'),
(58, 'roquette'),
(59, 'chicorée'),
(60, 'tomates confites'),
(61, 'crème de balsamique'),
(62, 'saucisse spianata piccante'),
(63, 'pesto'),
(64, 'aubergines grillées marinées'),
(65, 'ricotta'),
(66, 'aubergines grillées maison'),
(67, 'gorgonzola'),
(68, 'base légumes maison'),
(69, 'après cuisson : parmesan'),
(70, 'Après cuisson : crème de balsamique'),
(71, 'graines de sésame'),
(72, 'poulet');

-- --------------------------------------------------------

--
-- Structure de la table `pizzas`
--

CREATE TABLE IF NOT EXISTS `pizzas` (
  `numPizza` int(5) NOT NULL AUTO_INCREMENT,
  `nomPizza` varchar(50) NOT NULL,
  `vegetarienne` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `numTarif` tinyint(1) NOT NULL,
  `numGenre` int(2) NOT NULL DEFAULT '0',
  `indeximage` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`numPizza`),
  KEY `fk_numTarif_dans_pizzas` (`numTarif`),
  KEY `fk_numGenre_dans_pizzas` (`numGenre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Contenu de la table `pizzas`
--

INSERT INTO `pizzas` (`numPizza`, `nomPizza`, `vegetarienne`, `new`, `numTarif`, `numGenre`, `indeximage`) VALUES
(1, 'GOURMET(Margarita)', 1, 0, 1, 1, 1),
(2, 'BOSTON', 0, 0, 2, 1, 2),
(3, 'NEW YORK STYLE', 0, 0, 2, 1, 3),
(4, 'CALZONE (soufflée ou non)', 0, 0, 2, 1, 4),
(5, 'TEXAS', 0, 0, 2, 1, 5),
(6, 'MIAMI', 0, 0, 2, 1, 6),
(7, 'FERMIÈRE', 0, 0, 2, 1, 0),
(8, 'IBIZA', 0, 0, 2, 1, 0),
(9, 'VEGAS', 0, 0, 2, 3, 0),
(10, 'KEBAB', 0, 1, 2, 1, 0),
(11, 'ITALIENNE', 1, 0, 3, 1, 0),
(12, 'NAPOLITAINE', 0, 0, 3, 1, 0),
(13, 'WASHINGTON', 0, 0, 3, 1, 0),
(14, 'DIJONNAISE', 0, 0, 3, 1, 0),
(15, 'CALIENTE', 0, 0, 3, 1, 0),
(16, 'DALLAS', 0, 0, 3, 1, 0),
(17, 'AUSTRALIENNE', 0, 0, 3, 3, 0),
(18, 'ASIATIQUE', 0, 0, 3, 1, 0),
(19, 'EUROPÉENNE', 0, 0, 3, 1, 0),
(20, 'HAWAÏENNE', 0, 0, 3, 1, 0),
(21, 'LÉSIGNY', 0, 0, 3, 1, 0),
(22, 'PAYSANNE', 0, 0, 3, 1, 0),
(23, 'OCÉANE', 0, 0, 3, 1, 0),
(24, 'ORIENTALE', 0, 0, 3, 1, 0),
(25, 'FORESTIÈRE', 0, 0, 3, 1, 0),
(26, 'BUFFALO', 0, 1, 3, 1, 0),
(27, 'MÉDITERRANÉE', 0, 0, 3, 1, 0),
(28, 'NORVÉGIENNE', 0, 0, 3, 1, 0),
(29, 'SUÉDOISE', 0, 0, 3, 1, 0),
(30, 'CANADIENNE', 0, 0, 3, 1, 0),
(31, 'CALZONE DU CHEF', 0, 0, 4, 1, 0),
(32, '4 SAISONS', 0, 0, 4, 1, 0),
(33, 'AMÉRICAINE', 0, 0, 4, 1, 0),
(34, 'BOLOGNAISE', 0, 0, 4, 1, 0),
(35, 'MONTANA', 0, 0, 4, 1, 0),
(36, 'FRANÇAISE', 0, 0, 4, 1, 0),
(37, '4 FROMAGES', 1, 0, 4, 1, 0),
(38, 'VÉGÉTARIENNE', 1, 0, 4, 1, 0),
(39, 'RACLETTE', 0, 0, 4, 1, 0),
(40, 'MEXICAINE', 0, 0, 4, 1, 0),
(41, 'INDIENNE', 0, 0, 4, 1, 0),
(42, 'CHICAGO', 1, 0, 4, 3, 0),
(43, 'GOURMANDE', 0, 0, 4, 1, 0),
(44, 'TARTIFLETTE', 0, 0, 4, 1, 0),
(45, 'CAMPIONE', 0, 0, 4, 1, 0),
(46, 'COMPOSTELLE', 0, 0, 4, 1, 0),
(47, 'SANTENOISE', 0, 0, 4, 2, 0),
(48, 'OZOIRIENNE', 1, 0, 4, 2, 0),
(49, 'SPIANATA', 0, 0, 4, 2, 0),
(50, 'TUTTA VÉGÉTALE', 1, 0, 4, 2, 0),
(51, 'RICOTTA', 1, 0, 4, 2, 0),
(52, 'GORGONZOLA', 0, 0, 4, 2, 0),
(53, 'JACQUES', 1, 1, 4, 3, 0),
(54, 'CALZONNETA(Soufflée)', 1, 1, 4, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tailles`
--

CREATE TABLE IF NOT EXISTS `tailles` (
  `numTaille` tinyint(1) NOT NULL AUTO_INCREMENT,
  `nomTaille` varchar(50) NOT NULL,
  `nbPersonnes` tinyint(1) NOT NULL,
  `prixIngredientSupp` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`numTaille`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `tailles`
--

INSERT INTO `tailles` (`numTaille`, `nomTaille`, `nbPersonnes`, `prixIngredientSupp`) VALUES
(1, 'SMALL', 1, '1.00'),
(2, 'MEDIUM', 2, '1.70'),
(3, 'LARGE', 4, '3.00'),
(4, 'XL', 6, '4.00');

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

CREATE TABLE IF NOT EXISTS `tarifs` (
  `numTarif` tinyint(1) NOT NULL AUTO_INCREMENT,
  `nomTarif` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`numTarif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `tarifs`
--

INSERT INTO `tarifs` (`numTarif`, `nomTarif`) VALUES
(1, 'Tarif 1'),
(2, 'Tarif 2'),
(3, 'Tarif 3'),
(4, 'Tarif 4');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_ingredpizza`
--
CREATE TABLE IF NOT EXISTS `v_ingredpizza` (
`numPizza` int(5)
,`nomIngredient` varchar(50)
);
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_pizzas`
--
CREATE TABLE IF NOT EXISTS `v_pizzas` (
`numPizza` int(5)
,`nomPizza` varchar(50)
,`vegetarienne` tinyint(1)
,`new` tinyint(1)
,`numTarif` tinyint(1)
,`numGenre` int(2)
,`indeximage` int(5)
);
-- --------------------------------------------------------

--
-- Structure de la vue `v_ingredpizza`
--
DROP TABLE IF EXISTS `v_ingredpizza`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ingredpizza` AS select `composer`.`numPizza` AS `numPizza`,`ingredients`.`nomIngredient` AS `nomIngredient` from (`composer` join `ingredients` on((`composer`.`numIngredient` = `ingredients`.`numIngredient`)));

-- --------------------------------------------------------

--
-- Structure de la vue `v_pizzas`
--
DROP TABLE IF EXISTS `v_pizzas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pizzas` AS select `pizzas`.`numPizza` AS `numPizza`,`pizzas`.`nomPizza` AS `nomPizza`,`pizzas`.`vegetarienne` AS `vegetarienne`,`pizzas`.`new` AS `new`,`pizzas`.`numTarif` AS `numTarif`,`pizzas`.`numGenre` AS `numGenre`,`pizzas`.`indeximage` AS `indeximage` from `pizzas` order by `pizzas`.`nomPizza`;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `composer_ibfk_1` FOREIGN KEY (`numPizza`) REFERENCES `pizzas` (`numPizza`),
  ADD CONSTRAINT `composer_ibfk_2` FOREIGN KEY (`numIngredient`) REFERENCES `ingredients` (`numIngredient`);

--
-- Contraintes pour la table `couter`
--
ALTER TABLE `couter`
  ADD CONSTRAINT `couter_ibfk_1` FOREIGN KEY (`numTarif`) REFERENCES `tarifs` (`numTarif`),
  ADD CONSTRAINT `couter_ibfk_2` FOREIGN KEY (`numTaille`) REFERENCES `tailles` (`numTaille`);

--
-- Contraintes pour la table `pizzas`
--
ALTER TABLE `pizzas`
  ADD CONSTRAINT `pizzas_ibfk_1` FOREIGN KEY (`numTarif`) REFERENCES `tarifs` (`numTarif`),
  ADD CONSTRAINT `pizzas_ibfk_2` FOREIGN KEY (`numGenre`) REFERENCES `genres` (`numGenre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
