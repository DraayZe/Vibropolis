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
-- Structure de la table `Artiste`
--

CREATE TABLE `Artiste` (
  `id` int(11) NOT NULL,
  `nom` varchar(191) NOT NULL,
  `description` varchar(300) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `datePerformance` datetime(3) NOT NULL,
  `couleur` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Artiste`
--

INSERT INTO `Artiste` (`id`, `nom`, `description`, `photo`, `datePerformance`, `couleur`) VALUES
(1, 'Freeze Corleone', 'Freeze Corleone est un rappeur français au style sombre et technique, membre du collectif 667, connu pour ses textes denses et un flow maîtrisé, mêlant trap et références culturelles.', '/uploads/1746260154283-carte freeze.png', '2025-06-13 00:00:00.000', 'b056d6'),
(2, 'Kaaris', 'Kaaris est un rappeur français connu pour son style agressif et sa voix rauque. Son flow percutant et ses textes bruts lui ont permis de s\'imposer comme une figure \r\nincontournable du rap. ', '/uploads/1746260395274-carte  kaaris.png', '2025-06-13 00:00:00.000', '4a3726'),
(3, 'Alpha Wann', 'Alpha Wann est un rappeur français reconnu pour sa technique impeccable et sa maîtrise des rimes complexes. Son écriture ciselée et son indépendance en font une référence du rap français.', '/uploads/1746260458731-carte alpha wann.png', '2025-06-15 00:00:00.000', '82afb2'),
(4, 'Damso', 'Rappeur belge, damso est reconnu pour sa plume poétique et ses instrumentales. Son écriture et sa musicalité en font l’un des artistes les plus influents du rap francophone.', '/uploads/1746260631296-carte damso.png', '2025-06-14 00:00:00.000', 'a19e6d'),
(5, 'Favé', 'Favé est un jeune rappeur français récemment arrivé sur la scène, connu pour son originalité et son énergie. Avec des morceaux percutants mêlant mélodies accrocheuses et textes authentiques.', '/uploads/1746260870078-carte fave.png', '2025-06-14 00:00:00.000', 'c24d13'),
(6, 'Jeune Lion', 'Jeune Lion est un rappeur franco-ivoirien qui se distingue par son style unique qui fusionne des influences variées, notamment le reggae, le rap américain et des sonorités afro, créant ainsi un univers musical riche. ', '/uploads/1746260926599-carte jeune lion.png', '2025-06-13 00:00:00.000', '740b1d'),
(7, 'Django', 'Django est un rappeur français qui se caractérise par des textes denses et des références culturelles variées, mêlant introspection et critiques sociales. IL s’est fait connaître avec le titre ‘Fichu’.', '/uploads/1746260997148-carte django.png', '2025-06-15 00:00:00.000', '706a99'),
(8, 'BU$HI', 'Bu$hi est un rappeur français S’étant fait connaître au sein du collectif Lyonzon et du duo Saturn Citizen, avant de poursuivre une carrière solo. Son style polyvalent mêle trap, 2-step et ballades mélodiques.', '/uploads/1746261031811-carte bushi.png', '2025-06-14 00:00:00.000', '415b03'),
(9, 'Jolagreen23', 'Jolagreen23 est un rappeur français récent qui se distingue par son originalité. Avec un style mêlant trap et sonorités novatrices. \r\nil propose des textes sincères et un flow unique.', '/uploads/1746261122746-jolagreen23.png', '2025-06-13 00:00:00.000', '1eb838'),
(10, 'La Fève', 'La Fève est un rappeur français qui incarne le symbole de la New Wave dans le rap français. Il s\'est imposé par son style innovant devenant une référence de cette nouvelle ère musicale.', '/uploads/1746261161395-carte la feve.png', '2025-06-15 00:00:00.000', 'c1af3a'),
(11, 'La Mano 1.9', 'La Mano 1.9 est un rappeur français récemment arrivé sur la scène, mais avec une entrée fracassante. Mêlant drill et rap de rue, il séduit par ses textes bruts et authentiques.', '/uploads/1746261195009-carte la mano.png', '2025-06-14 00:00:00.000', 'c22525'),
(12, 'Laylow', 'Laylow est un rappeur français connu pour son univers cybernétique et son style unique mêlant rap, électronique et \r\nsonorités futuristes. il a su se démarquer par ses concepts visuels et musicaux.', '/uploads/1746261237795-carte laylow.png', '2025-06-13 00:00:00.000', '71215a'),
(13, 'Luther', 'Luther est un rappeur français au style sombre et introspectif, mêlant mélodies mélancoliques et textes percutants. Il s\'est fait remarquer par son style d’écriture mature et son style new wave.', '/uploads/1746261307572-carte luther.png', '2025-06-15 00:00:00.000', 'f25bd7'),
(14, 'Nekfeu', 'Nekfeu est un rappeur français reconnu pour sa plume affûtée. Son talent d’écriture et sa sensibilité artistique en font une figure incontournable du rap français.', '/uploads/1746261358075-carte nekfeu.png', '2025-06-14 00:00:00.000', '3ea062'),
(15, 'Ninho', 'Ninho est un rappeur français capable de mêler rap pur et mélodies accrocheuses. Avec des albums à succès et de nombreux disques de platine, il est l’un des artistes les plus influents du rap français.', '/uploads/1746261389292-carte ninho.png', '2025-06-13 00:00:00.000', '5bb7f2'),
(16, 'Osirus Jack', 'Osirus Jack est un rappeur français, membre du collectif 667. il s\'est imposé par son style percutant et sombre. Il se distingue par son originalité, ses punchlines aiguisées et son univers riche en références.', '/uploads/1746261418594-carte osirus jack.png', '2025-06-13 00:00:00.000', '7e4b0f'),
(17, 'PNL', 'PNL est un duo de rappeurs français composé des frères Ademo et N.O.S. ils ont révolutionné le rap français grâce à leur esthétique unique et leur storytelling introspectif. ', '/uploads/1746261448401-carte pnl.png', '2025-06-14 00:00:00.000', 'ffffff'),
(18, 'SCH', 'SCH est un rappeur français qui s\'est imposé comme une figure majeure du rap. Connu pour son style unique mêlant mélancolie, storytelling et esthétisme mafieux, il séduit par sa voix grave et ses textes.', '/uploads/1746261478013-carte sch.png', '2025-06-14 00:00:00.000', '7a6c6c'),
(19, 'Vald', 'Vald est un rappeur français au style décalé et provocateur, mêlant second degré, introspection et absurdité. Il s’est imposé comme une figure majeure du rap français avec son univers.', '/uploads/1746261523534-carte vald.png', '2025-06-15 00:00:00.000', '0219c9'),
(20, 'Ziak', 'Ziak est un rappeur français qui s’est imposé avec une entrée fracassante dans le rap. Représentant la drill française, il est connu pour son univers sombre, ses textes percutants et son identité masquée.', '/uploads/1746261553900-carte ziak v2.png', '2025-06-15 00:00:00.000', '4f4d4d');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Artiste`
--
ALTER TABLE `Artiste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Artiste`
--
ALTER TABLE `Artiste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
