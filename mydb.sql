-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 25 nov. 2018 à 15:59
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `ArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `Designation` varchar(255) DEFAULT NULL,
  `Texte` text,
  `Enseigne_EnseigneId` int(11) NOT NULL,
  `Prix` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`ArticleId`,`Enseigne_EnseigneId`),
  KEY `fk_Article_Enseigne_idx` (`Enseigne_EnseigneId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`ArticleId`, `Designation`, `Texte`, `Enseigne_EnseigneId`, `Prix`) VALUES
(1, 'Porte clé connecté - Tracker', 'Le Porte-clé rose aha! est une petite médaille au design sobre et élégant, que vous pouvez accrocher sur toutes vos affaires. Discret et léger, vous pouvez également le suspendre au collier de votre animal de compagnie pour pouvoir le retrouver très facilement s\'il se perd.', 2, NULL),
(2, 'Montre connectée SAMSUNG Gear SPORT GRIS ACIER', 'Vous allez adorer la montre SAMSUNG Gear sport Gris acier qui vous offre de nombreuses fonctionnalités. Gestion de vos appels, SMS, e-mails, notifications pour les réseaux sociaux, mais aussi des applications à découvrir comme Spotify, Uber, Twitter... Et pour ceux qui aiment la musique, elle peut gérer jusqu\'à 500 morceaux !', 1, NULL),
(3, 'SAMSUNG Galaxy S9', 'Obtenez des données détaillées sur toutes vos séances de sport (course à pied, cyclisme ou entraînement fractionné par exemple). Enregistrez et partagez votre activité quotidienne. Trouvez la motivation nécessaire pour atteindre vos objectifs. Gérez mieux votre stress au quotidien et surveillez votre rythme cardiaque plus précisément. ', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `enseigne`
--

DROP TABLE IF EXISTS `enseigne`;
CREATE TABLE IF NOT EXISTS `enseigne` (
  `EnseigneId` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Horaires` varchar(50) NOT NULL,
  PRIMARY KEY (`EnseigneId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseigne`
--

INSERT INTO `enseigne` (`EnseigneId`, `Nom`, `Adresse`, `Horaires`) VALUES
(1, 'SAMSUNG', '10 avenue Général de Gaule', 'Ouvert de 9h00 à 17h00'),
(2, 'Tracker', '198 rue des Champs Elysées', 'Ouvert de 8h30 à 16h30'),
(3, 'Bandai', '65 rue des Fleurs', 'Ouvert de 7h00 à 16h00'),
(4, 'CACF', '30 rue de la Jungle', 'Ouvert de 7h00 à 16h00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
