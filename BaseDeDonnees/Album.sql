-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : sam. 03 mai 2025 à 15:49
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
-- Structure de la table `Album`
--

CREATE TABLE `Album` (
  `id` int(11) NOT NULL,
  `titre` varchar(191) NOT NULL,
  `dateSortie` datetime(3) NOT NULL,
  `artisteId` int(11) NOT NULL,
  `photo` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Album`
--

INSERT INTO `Album` (`id`, `titre`, `dateSortie`, `artisteId`, `photo`) VALUES
(1, 'LMF', '2020-09-11 00:00:00.000', 1, '/uploads/1746263252312-LMF.jpg'),
(2, 'ADC', '2023-09-11 00:00:00.000', 1, '/uploads/1746263295232-ADC.jpg'),
(3, 'Projet Blue Beam', '2018-11-13 00:00:00.000', 1, '/uploads/1746263424496-Projet Blue Beam.jpg'),
(4, 'F.D.T', '2016-09-11 00:00:00.000', 1, '/uploads/1746263538483-FDT.jpg'),
(5, 'ATHANOR', '2021-10-21 00:00:00.000', 7, '/uploads/1746263650430-ATHANOR.jpg'),
(6, 'S/O le Flem', '2020-11-07 00:00:00.000', 7, '/uploads/1746263707666-SO le FLem.jpg'),
(7, 'Troisième Terme', '2023-05-18 00:00:00.000', 7, '/uploads/1746263746878-Troisième Terme.jpg'),
(8, 'paris, 31 août', '2024-10-17 00:00:00.000', 7, '/uploads/1746263801343-paris, 31 août.jpg'),
(9, 'JVLIVS III : Ad Finem', '2024-12-06 00:00:00.000', 18, '/uploads/1746263935537-JVLIVS III Ad Finem.jpg'),
(10, 'JVLIVS', '2018-10-19 00:00:00.000', 18, '/uploads/1746263975915-JVLIVS.jpg'),
(11, 'Anarchie', '2016-05-20 00:00:00.000', 18, '/uploads/1746264034807-Anarchie.jpg'),
(12, 'A7', '2015-11-13 00:00:00.000', 18, '/uploads/1746264094550-A7.jpg'),
(13, 'Deo Favente', '2017-05-05 00:00:00.000', 18, '/uploads/1746264200831-Deo Favente.jpg'),
(14, 'JVLIVS Prequel : Giulio', '2024-05-31 00:00:00.000', 18, '/uploads/1746264306011-JVLIVS Prequel Giulio.jpg'),
(15, 'Autobahn', '2023-05-24 00:00:00.000', 18, '/uploads/1746264437295-Autobahn.jpg'),
(16, 'JVLIVS II', '2021-03-19 00:00:00.000', 18, '/uploads/1746264486633-JVLIVS II.jpg'),
(17, 'Rooftop', '2019-11-29 00:00:00.000', 18, '/uploads/1746264537325-Rooftop.jpg'),
(18, 'don dada mixtape vol 1', '2020-12-18 00:00:00.000', 3, '/uploads/1746264689268-don dada mixtape vol 1.jpg'),
(19, 'UNE MAIN LAVE L\'AUTRE', '2018-09-21 00:00:00.000', 3, '/uploads/1746264864301-UNE MAIN LAVE LAUTRE.jpg'),
(20, 'Alph Lauren 3', '2018-04-06 00:00:00.000', 3, '/uploads/1746264928078-Alph Lauren 3.jpg'),
(21, 'Alph Lauren 2', '2016-01-15 00:00:00.000', 3, '/uploads/1746265000190-Alph Lauren 2.jpg'),
(22, 'Alph Lauren ', '2014-01-20 00:00:00.000', 3, '/uploads/1746265043108-Alph Lauren.jpg'),
(23, 'NI', '2023-06-30 00:00:00.000', 15, '/uploads/1746265118445-NI.jpg'),
(24, 'Jefe', '2021-12-03 00:00:00.000', 15, '/uploads/1746265163526-Jefe.jpg'),
(25, 'M.I.L.S 3', '2020-03-07 00:00:00.000', 15, '/uploads/1746265211986-M.I.L.S 3.jpg'),
(26, 'Destin', '2019-03-22 00:00:00.000', 15, '/uploads/1746265245414-Destin.jpg'),
(27, 'M.I.L.S 2', '2018-03-30 00:00:00.000', 15, '/uploads/1746265277292-M.I.L.S 2.jpg'),
(28, 'M.I.L.S ', '2016-10-21 00:00:00.000', 15, '/uploads/1746265341730-MILS.jpg'),
(29, 'Comme prévu', '2017-09-08 00:00:00.000', 15, '/uploads/1746265387500-Comme prévu.jpg'),
(30, 'KOLAF', '2020-09-25 00:00:00.000', 10, '/uploads/1746265466925-KOLAF.jpg'),
(31, 'BIGLAF', '2024-09-06 00:00:00.000', 10, '/uploads/1746265508672-BIGLAF.jpg'),
(32, 'ERRR', '2021-12-17 00:00:00.000', 10, '/uploads/1746265538756-ERRR.jpg'),
(33, '24', '2023-12-21 00:00:00.000', 10, '/uploads/1746265571087-24.jpg'),
(34, 'Akimbo', '2021-11-12 00:00:00.000', 20, '/uploads/1746265684558-Akimbo.jpg'),
(35, 'Chrome', '2023-05-24 00:00:00.000', 20, '/uploads/1746265737500-Chrome.jpg'),
(36, 'Essone History X', '2025-01-09 00:00:00.000', 20, '/uploads/1746265781472-Essone History X.jpg'),
(37, 'Or Noir', '2013-01-01 00:00:00.000', 2, '/uploads/1746265886322-Or Noir.jpg'),
(38, 'Or Noir Part 2', '2014-01-01 00:00:00.000', 2, '/uploads/1746265923880-Or Noir Part 2.jpg'),
(39, 'Day One', '2023-12-14 00:00:00.000', 2, '/uploads/1746265959670-Day One.jpg'),
(40, 'SVR', '2022-01-28 00:00:00.000', 2, '/uploads/1746266009492-SVR.jpg'),
(41, '2.7.0', '2020-09-03 00:00:00.000', 2, '/uploads/1746266077388-2.7.0.jpg'),
(42, 'Le bruit de mon âme', '2015-03-30 00:00:00.000', 2, '/uploads/1746266129838-Le bruit de mon âme.jpg'),
(43, 'Double Fuck', '2015-10-16 00:00:00.000', 2, '/uploads/1746266163697-Double Fuck.jpg'),
(44, 'Okou Gnakouri', '2016-11-11 00:00:00.000', 2, '/uploads/1746266197994-Okou Gnakouri.jpg'),
(45, 'Dozo', '2017-11-03 00:00:00.000', 2, '/uploads/1746266228040-Dozo.jpg'),
(46, 'Or Noir Part 3', '2019-01-25 00:00:00.000', 2, '/uploads/1746266266379-Or Noir Part 3.jpg'),
(47, '2.7.0 : Château Noir', '2021-03-25 00:00:00.000', 2, '/uploads/1746266327611-2.7.0 Château Noir.jpg'),
(48, 'RIYAD SADO', '2022-03-04 00:00:00.000', 1, '/uploads/1746266364020-RIYAD SADIO.jpg'),
(49, 'TSAR NOIR', '2024-05-24 00:00:00.000', 16, '/uploads/1746269723239-TSAR NOIR.jpg'),
(50, 'Nouvelle Ère', '2022-02-22 00:00:00.000', 16, '/uploads/1746269761699-Nouvelle Ère.jpg'),
(51, 'Nibiru', '2019-05-03 00:00:00.000', 16, '/uploads/1746269826773-Nibiru.jpg'),
(52, '+99XP', '2024-11-08 00:00:00.000', 9, '/uploads/1746269899707-+99XP.jpg'),
(53, 'RECHERCHE&DESTRUCTION', '2023-12-15 00:00:00.000', 9, '/uploads/1746269944699-RECHERCHE&DESTRUCTION.jpg'),
(54, 'GOTY EDITION', '2025-04-25 00:00:00.000', 9, '/uploads/1746269990088-GOTY EDITION.jpg'),
(55, 'Digitalova', '2017-07-05 00:00:00.000', 12, '/uploads/1746270088375-Digitalova.jpg'),
(56, 'Mercy', '2016-12-09 00:00:00.000', 12, '/uploads/1746270125670-mercy.jpg'),
(57, 'TRINITY', '2020-02-28 00:00:00.000', 12, '/uploads/1746270155642-TRINITY.jpg'),
(58, 'L\'Étrange Histoire de Mr.Anderson', '2021-07-16 00:00:00.000', 12, '/uploads/1746270297182-L\'Étrange Histoire de Mr.Anderson.jpg'),
(59, '.RAW-Z', '2018-12-07 00:00:00.000', 12, '/uploads/1746270331811-.RAW-Z.jpg'),
(60, '.RAW', '2018-06-19 00:00:00.000', 12, '/uploads/1746270370167-.RAW'),
(61, 'Bushi', '2020-03-28 00:00:00.000', 8, '/uploads/1746270421883-Bushi.jpg'),
(62, 'Bushi Tape 3', '2024-03-29 00:00:00.000', 8, '/uploads/1746270565813-Bushi Tape 3.jpg'),
(63, 'Bushi Tape 2', '2022-02-25 00:00:00.000', 8, '/uploads/1746270599362-Bushi Tape 2.jpg'),
(64, 'Interlude', '2022-12-16 00:00:00.000', 8, '/uploads/1746270644817-Interlude.jpg'),
(65, 'Bushi 1.5', '2020-04-21 00:00:00.000', 8, '/uploads/1746270684926-Bushi 1.5.jpg'),
(66, 'BEFORE BABYLONE BURNT', '2022-07-13 00:00:00.000', 6, '/uploads/1746270833544-BEFORE BABYLONE BURNT.jpg'),
(67, 'HIGHLY SPIRITUAL', '2023-05-13 00:00:00.000', 6, '/uploads/1746270879393-HIGHLY SPIRITUAL.jpg'),
(68, 'S/O DIEU', '2024-03-14 00:00:00.000', 6, '/uploads/1746270929003-SO DIEU.jpg'),
(69, 'RULE MI HEART', '2024-11-21 00:00:00.000', 6, '/uploads/1746270965500-RULE MI HEART.jpg'),
(70, 'EXIT', '2024-03-01 00:00:00.000', 13, '/uploads/1746271042795-EXIT.jpg'),
(71, 'GARÇON', '2022-06-03 00:00:00.000', 13, '/uploads/1746271132575-GARÇON.jpg'),
(72, 'GARÇON + AMI', '2023-03-30 00:00:00.000', 13, '/uploads/1746271162635-GARÇON + AMI.jpg'),
(73, 'Trame', '2020-06-23 00:00:00.000', 13, '/uploads/1746271199736-Trame.jpg'),
(74, 'Lithopédion', '2018-06-15 00:00:00.000', 4, '/uploads/1746271312364-Lithopédion.jpg'),
(75, 'Batterie faible', '2016-07-08 00:00:00.000', 4, '/uploads/1746271349420-Batterie faible.jpg'),
(76, 'J\'AI MENTI.', '2024-11-15 00:00:00.000', 4, '/uploads/1746271387191-J\'AI MENTI..jpg'),
(77, 'VIEUX SONS', '2024-08-29 00:00:00.000', 4, '/uploads/1746271433040-VIEUX SONS.jpg'),
(78, 'QALF infinity', '2023-11-06 00:00:00.000', 4, '/uploads/1746271476964-QALF infinity.jpg'),
(79, 'Ipséité', '2017-04-28 00:00:00.000', 4, '/uploads/1746271526188-Ipséité.jpg'),
(80, 'IL LE FALLAIT', '2024-05-31 00:00:00.000', 5, '/uploads/1746271595742-IL LE FALLAIT.jpg'),
(81, 'Feu', '2015-06-08 00:00:00.000', 14, '/uploads/1746271668589-Feu.jpg'),
(82, 'Cyborg', '2016-12-02 00:00:00.000', 14, '/uploads/1746271699221-Cyborg.jpg'),
(83, 'Les étoiles vagabondes : expansion', '2019-06-21 00:00:00.000', 14, '/uploads/1746271748113-Les étoiles vagabondes expansion.jpg'),
(84, 'Que la famille', '2015-03-02 00:00:00.000', 17, '/uploads/1746271809160-Que la famille.jpg'),
(85, 'Dans la légende', '2016-09-16 00:00:00.000', 17, '/uploads/1746271844559-Dans la légende.jpg'),
(86, 'Deux frères', '2019-10-25 00:00:00.000', 17, '/uploads/1746271889635-Deux frères.jpg'),
(87, 'Le monde Chico', '2015-10-30 00:00:00.000', 17, '/uploads/1746271915970-Le monde Chico.jpg'),
(88, 'Agartha', '2017-01-20 00:00:00.000', 19, '/uploads/1746272029253-Agartha.jpg'),
(89, 'VV5', '2022-12-16 00:00:00.000', 19, '/uploads/1746272090231-VV5.jpg'),
(90, 'Ce monde est cruel', '2019-10-10 00:00:00.000', 19, '/uploads/1746272151520-Ce monde est cruel.jpg'),
(91, 'NQNT33', '2018-09-13 00:00:00.000', 19, '/uploads/1746272186886-NQNT33.jpg'),
(92, 'XEU', '2018-02-02 00:00:00.000', 19, '/uploads/1746272211950-XEU.jpg'),
(93, 'NQNTMQMQMB', '2016-08-05 00:00:00.000', 19, '/uploads/1746272258945-NQNTMQMQMB.jpg'),
(94, 'NQNT 2', '2015-06-29 00:00:00.000', 19, '/uploads/1746272293263-NQNT 2.jpg'),
(95, 'NQNT', '2014-01-01 00:00:00.000', 19, '/uploads/1746272321022-NQNT.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Album_artisteId_fkey` (`artisteId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Album`
--
ALTER TABLE `Album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `Album_artisteId_fkey` FOREIGN KEY (`artisteId`) REFERENCES `Artiste` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
