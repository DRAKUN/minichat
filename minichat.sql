-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 27 Mai 2015 à 18:51
-- Version du serveur :  5.6.24-0ubuntu2
-- Version de PHP :  5.6.4-4ubuntu6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `minichat`
--
CREATE DATABASE IF NOT EXISTS `minichat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `minichat`;

-- --------------------------------------------------------

--
-- Structure de la table `lechat`
--

DROP TABLE IF EXISTS `lechat`;
CREATE TABLE IF NOT EXISTS `lechat` (
`id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `ladate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lechat`
--

INSERT INTO `lechat` (`id`, `pseudo`, `message`, `ladate`) VALUES
(1, 'Drakun', 'Slt mister cava', '0000-00-00 00:00:00'),
(2, 'drak', 'CAVA bien !', '0000-00-00 00:00:00'),
(3, 'Ouleye', 'cava bien moi aussi', '0000-00-00 00:00:00'),
(4, 'Drakun', 'Ben tout le monde est Ok', '0000-00-00 00:00:00'),
(5, '<h1>DRAKIE</h1>', '<sql>Tout va pour le mieux</', '0000-00-00 00:00:00'),
(6, 'jsf', 'sjkkdgf*', '0000-00-00 00:00:00'),
(7, '', '', '0000-00-00 00:00:00'),
(8, 'osf', '', '0000-00-00 00:00:00'),
(9, 'sdfsdf', 'sdfsdf', '0000-00-00 00:00:00'),
(10, 'sdfsdf', 'sdfsdf', '0000-00-00 00:00:00'),
(11, 'sdfsdfsd', '', '0000-00-00 00:00:00'),
(12, 'sdfsdf', '', '0000-00-00 00:00:00'),
(13, 'Ouleye', 'de quoi parle tu', '0000-00-00 00:00:00'),
(14, 'xdv', 'sdfsdf', '0000-00-00 00:00:00'),
(15, 'dddddd', 'gfgggggggggggggg', '0000-00-00 00:00:00'),
(16, 'eee', 'aaa', '2015-05-27 17:59:16'),
(17, 'OD', 'DRAKUN CORp', '2015-05-27 18:09:12'),
(18, 'guest', 'DRAKUN CORp', '2015-05-27 18:45:04'),
(19, 'Pisco', 'cava bien toi aussi', '2015-05-27 18:45:13'),
(20, 'Pisco', '', '2015-05-27 18:45:16'),
(21, 'Pisco', '', '2015-05-27 18:45:17'),
(22, 'drakie', 'jsfhsdf', '2015-05-27 18:46:01');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `lechat`
--
ALTER TABLE `lechat`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `lechat`
--
ALTER TABLE `lechat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
