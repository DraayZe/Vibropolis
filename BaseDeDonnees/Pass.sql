-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 22 mai 2025 à 09:19
-- Version du serveur : 11.5.2-MariaDB-ubu2404
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vibropolis`
--

-- --------------------------------------------------------

--
-- Structure de la table `Pass`
--

CREATE TABLE `Pass` (
  `id` int(11) NOT NULL,
  `nom` varchar(191) NOT NULL,
  `prix` double NOT NULL,
  `duree` int(11) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `dates` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Pass`
--

INSERT INTO `Pass` (`id`, `nom`, `prix`, `duree`, `photo`, `dates`) VALUES
(1, 'Pass 1 jour', 39, 1, '/uploads/1746379574187-pass 1 jour ven. 13.png', '13/06/25'),
(2, 'Pass 1 jour', 39, 1, '/uploads/1746379736625-pass 1 jour sam. 14.png', '14/06/25'),
(3, 'Pass 1 jour', 39, 1, '/uploads/1746379806768-pass 1 jour dim. 15.png', '15/06/25'),
(4, 'Pass 2 jours', 75, 2, '/uploads/1746379828985-pass 2 jour ven. 13 et sam. 14.png', '13/06/25,14/06/25'),
(5, 'Pass 2 jours', 75, 2, '/uploads/1746379843033-pass 2 jour sam. 14 et dim. 15.png', '14/06/25,15/06/25'),
(6, 'Pass 3 jours', 99, 3, '/uploads/1746379858569-pass 3 jour.png', '13/06/25,14/06/25,15/06/25');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Pass`
--
ALTER TABLE `Pass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Pass`
--
ALTER TABLE `Pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
