-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 12 juin 2025 à 11:44
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
-- Structure de la table `AchatPass`
--

CREATE TABLE `AchatPass` (
  `id` int(11) NOT NULL,
  `utilisateurId` int(11) NOT NULL,
  `passId` int(11) NOT NULL,
  `dateAchat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(48, 'RIYAD SADIO', '2022-03-04 00:00:00.000', 1, '/uploads/1746266364020-RIYAD SADIO.jpg'),
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
(95, 'NQNT', '2014-01-01 00:00:00.000', 19, '/uploads/1746272321022-NQNT.jpg'),
(96, 'Z.E.R.O', '2025-01-11 00:00:00.000', 2, '/uploads/1746299015492-Z.E.R.O.jpg'),
(97, 'PANDEMONIUM', '2025-03-28 00:00:00.000', 19, '/uploads/1746299074474-PANDEMONIUM.jpg'),
(98, 'V', '2022-02-04 00:00:00.000', 19, '/uploads/1746299113598-V.jpg'),
(99, 'Horizon vertical', '2020-12-18 00:00:00.000', 19, '/uploads/1746299165991-Horizon vertical.jpg'),
(100, 'Echelon, Vol. 2', '2021-04-23 00:00:00.000', 19, '/uploads/1746299233622-Echelon, Vol. 2.jpg'),
(101, 'Echelon, Vol. 1', '2020-11-27 00:00:00.000', 19, '/uploads/1746299269318-Echelon, Vol. 1.jpg'),
(104, '2.7.0 : Château Noir', '2021-03-25 00:00:00.000', 2, '/uploads/1746390179278-2.7.0 Château Noir.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Artiste`
--

CREATE TABLE `Artiste` (
  `id` int(11) NOT NULL,
  `nom` varchar(191) NOT NULL,
  `description` varchar(900) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `datePerformance` datetime(3) NOT NULL,
  `couleur` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `spotify` varchar(191) DEFAULT NULL,
  `tiktok` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Artiste`
--

INSERT INTO `Artiste` (`id`, `nom`, `description`, `photo`, `datePerformance`, `couleur`, `instagram`, `spotify`, `tiktok`, `youtube`) VALUES
(1, 'Freeze Corleone', 'Freeze Corleone, de son vrai nom Issa Lorenzo Diakhaté, est un rappeur français originaire de Seine-Saint-Denis. Membre fondateur du collectif 667, il se distingue par un style sombre et technique, avec des textes riches en références culturelles, historiques et géopolitiques. Son flow froid et précis, combiné à des sonorités trap, lui a permis de se forger une identité unique dans le rap français.\n\nPeu médiatisé, Freeze cultive le mystère et laisse ses morceaux parler pour lui. Son album \"LMF\" (La Menace Fantôme), sorti en 2020, l’a propulsé sur le devant de la scène tout en déclenchant plusieurs polémiques. Aujourd’hui, il est reconnu pour son univers cohérent, son écriture dense et son indépendance artistique.', '/uploads/1746260154283-carte freeze.png', '2025-06-13 00:00:00.000', 'b056d6', 'https://www.instagram.com/bigfreezecorleone667/', 'https://open.spotify.com/intl-fr/artist/76Pl0epAMXVXJspaSuz8im?si=UI-tN2d7QCu1ZNEuiQlqEQ', NULL, 'https://www.youtube.com/@freezecorleone7615'),
(2, 'Kaaris', 'Kaaris, de son vrai nom Okou Gnakouri, est un rappeur français originaire de Sevran, en Seine-Saint-Denis. Il s’est imposé comme une figure incontournable du rap français grâce à son style agressif, sa voix rauque caractéristique et un flow percutant. Révélé au grand public avec son album \"Or Noir\" en 2013, produit en collaboration avec Booba, Kaaris a marqué les esprits par ses textes bruts et violents, portés par des instrumentales puissantes.\r\n\r\nConsidéré comme un pilier du rap hardcore français, il a largement contribué à populariser la trap en France. Malgré des polémiques médiatiques, il reste un artiste influent, connu pour son charisme, ses punchlines mémorables et son impact durable sur la scène rap.', '/uploads/1746260395274-carte  kaaris.png', '2025-06-13 00:00:00.000', '4a3726', 'https://www.instagram.com/kaarisofficiel1/', 'https://open.spotify.com/intl-fr/artist/1ntQKIMIgESKpKoNXVBvQg?si=1y_q72hMRLm_bzPO40cv9w', 'https://www.tiktok.com/@kaarisofficiel1', 'https://www.youtube.com/channel/UCelI_bl2bVS1AFKaZEx44Vw'),
(3, 'Alpha Wann', 'Alpha Wann, aussi appelé Philly Flingo, est un rappeur français originaire de Paris, membre fondateur du collectif 1995. Il est reconnu pour sa technique irréprochable, sa maîtrise des rimes multisyllabiques et son écriture particulièrement ciselée. Son style repose sur un rap pur, sans concession, où chaque mot est soigneusement choisi, ce qui lui vaut une grande reconnaissance dans le milieu.\n\nAprès plusieurs projets en solo, il confirme son statut avec l’album \"Une main lave l\'autre\" (UMLA), salué pour sa qualité artistique. Alpha Wann cultive une indépendance forte, aussi bien dans ses choix musicaux que dans sa communication, ce qui renforce son image de figure respectée et authentique du rap français.', '/uploads/1746260458731-carte alpha wann.png', '2025-06-15 00:00:00.000', '82afb2', 'https://www.instagram.com/alphawann/', 'https://open.spotify.com/intl-fr/artist/7yeFMUrYTY5cAZx0GKXnti?si=OwSOpFZkQ6qEYYQjM755vw', NULL, 'https://www.youtube.com/channel/UCczJMmccv1lIhMVkZ1FBCSQ'),
(4, 'Damso', 'Damso, de son vrai nom William Kalubi Mwamba, est un rappeur belge d’origine congolaise, devenu l’une des figures majeures du rap francophone. Il est reconnu pour sa plume poétique, introspective et souvent provocante, ainsi que pour ses instrumentales planantes et soigneusement travaillées. Révélé au grand public avec l’album \"Batterie Faible\" et son passage au sein du label 92i de Booba, Damso s’est rapidement démarqué par la richesse de son écriture et sa capacité à mêler émotion, noirceur et esthétisme.\n\nSes albums, comme \"Ipséité\" ou \"QALF\", sont salués pour leur cohérence artistique et leur profondeur. À la fois populaire et respecté, Damso s’impose comme un artiste complet, capable d’explorer de nombreux styles tout en gardant une identité forte.', '/uploads/1746260631296-carte damso.png', '2025-06-14 00:00:00.000', 'a19e6d', 'https://www.instagram.com/thedamso/', 'https://open.spotify.com/intl-fr/artist/2UwqpfQtNuhBwviIC0f2ie?si=zesdAF_rRX-f2GOrvX8YFw', NULL, 'https://www.youtube.com/channel/UCxsYR3_7CKZeRfdJpqGxmdw'),
(5, 'Favé', 'Favé est un jeune rappeur français originaire de Villeneuve-Saint-Georges, qui s’est rapidement fait remarquer sur la scène rap grâce à son énergie débordante et son originalité. Révélé par des morceaux comme “URUS”, il mêle des mélodies accrocheuses, des flows variés et des textes sincères, reflétant son quotidien avec fraîcheur et spontanéité.\n\nSon style navigue entre rap mélodique et trap, avec une touche personnelle qui séduit un public de plus en plus large. En peu de temps, Favé s’est imposé comme l’un des talents prometteurs de la nouvelle génération du rap français, porté par une vibe moderne et authentique.', '/uploads/1746260870078-carte fave.png', '2025-06-14 00:00:00.000', 'c24d13', 'https://www.instagram.com/fave.db/', 'https://open.spotify.com/intl-fr/artist/20JMfmzDb5cjHxEoMXXMyY?si=D2NGMFAyQ469NgNDh9ijag', 'https://www.tiktok.com/@fave.db', 'https://www.youtube.com/channel/UC6yKbnMj2JpyaigY16AYQ9Q'),
(6, 'Jeune Lion', 'Jeune Lion est un rappeur franco-ivoirien qui se distingue par un style hybride et audacieux, mêlant rap, reggae, influences afro et sonorités venues du rap américain. Grâce à cette fusion musicale, il crée un univers original, à la fois énergique et mélodique, où les rythmes dansants côtoient des textes ancrés dans son vécu.\n\nSa capacité à mélanger les genres avec authenticité lui permet de se démarquer sur la scène francophone. Porté par une identité forte et une sensibilité musicale assumée, Jeune Lion représente une voix nouvelle et prometteuse du rap afro-français.', '/uploads/1746260926599-carte jeune lion.png', '2025-06-13 00:00:00.000', '740b1d', 'https://www.instagram.com/jeunelion13/', 'https://open.spotify.com/intl-fr/artist/4tTvRdLVGAsJyk9lEEx3Xb?si=rQUZs_hZQR2XCZ5ruJn-oA', NULL, 'https://www.youtube.com/@jeunelion13'),
(7, 'Django', 'Django est un rappeur français reconnu pour ses textes denses, travaillés et riches en références culturelles allant de la littérature au cinéma. Il mêle avec finesse introspection personnelle et critiques sociales, dans un style sombre et percutant. Il s’est fait connaître en 2016 avec le titre “Fichu”, qui a marqué les esprits par son clip cinématographique et son écriture soignée.\n\nPeu médiatisé, Django cultive une image mystérieuse, préférant laisser sa musique parler d’elle-même. Grâce à son univers singulier, il s’est imposé comme une plume à part dans le paysage du rap français.', '/uploads/1746260997148-carte django.png', '2025-06-15 00:00:00.000', '706a99', 'https://www.instagram.com/django_dkz/', 'https://open.spotify.com/intl-fr/artist/5gU8eqolA1bziWv6e3Wjp3?si=u4UoprblTFW_pRkn7xw3EQ', NULL, 'https://www.youtube.com/@djangodkz'),
(8, 'BU$HI', 'Bu$hi est un rappeur français originaire de Lyon, révélé au sein du collectif Lyonzon et du duo Saturn Citizen. Il s’est ensuite lancé dans une carrière solo, affirmant progressivement son style unique et polyvalent. Capable de passer d’une trap sombre à des ballades mélodiques ou des influences 2-step, Bu$hi explore des ambiances variées tout en gardant une identité musicale cohérente.\n\nSon univers, souvent futuriste et planant, séduit une audience à la recherche de sonorités innovantes et de textes à la fois personnels et stylisés. Aujourd’hui, Bu$hi s’impose comme l’un des artistes les plus créatifs de la nouvelle scène rap française.', '/uploads/1746261031811-carte bushi.png', '2025-06-14 00:00:00.000', '415b03', 'https://www.instagram.com/bushi_st/', 'https://open.spotify.com/intl-fr/artist/2GIoAorOnT0Yp1jKyTzW7K?si=CPvH6bO1RBaSqb_DTHgRhA', 'https://www.tiktok.com/@saturnctzn', 'https://www.youtube.com/@SaturnCitizen/'),
(9, 'Jolagreen23', 'Jolagreen23 est un rappeur français récent qui se fait remarquer par son originalité et son approche novatrice du rap. Son style, mélangeant trap et des sonorités modernes, lui permet de se démarquer dans un genre en constante évolution. Ses morceaux sont à la fois percutants et introspectifs, alliant des textes sincères à un flow unique qui capte l’attention dès les premières secondes.\n\nAvec des productions fraîches et un univers personnel, Jolagreen23 s’impose progressivement comme un artiste à suivre, portant une nouvelle énergie dans le rap français.', '/uploads/1746261122746-jolagreen23.png', '2025-06-13 00:00:00.000', '1eb838', 'https://www.instagram.com/jolagreen23/', 'https://open.spotify.com/intl-fr/artist/2jZ78PLlC1PuYKQ2bVwRvz?si=a-l5WFLCRjWEjxMQ3h9o6Q', 'https://www.tiktok.com/@jolagreen23', 'https://www.youtube.com/channel/UC0xgqiZ-jLED1ksuGT_Xx8A'),
(10, 'La Fève', 'La Fève est un rappeur français qui incarne le symbole de la New Wave dans le rap français. Avec son style innovant et son approche avant-gardiste, il s’est imposé comme l\'une des références de cette nouvelle ère musicale. Son univers, où se mêlent des influences modernes et une écriture percutante, reflète une génération en quête de renouveau dans le rap.\n\nEn mélangeant mélodies accrocheuses, beats expérimentaux et une écriture singulière, La Fève a su créer un son unique, porté par une énergie nouvelle. Aujourd’hui, il est considéré comme l’un des pionniers de cette vague musicale, marquant durablement la scène rap française.', '/uploads/1746261161395-carte la feve.png', '2025-06-15 00:00:00.000', 'c1af3a', 'https://www.instagram.com/lafeve7/', 'https://open.spotify.com/intl-fr/artist/2sBKOwN0fSjx39VtL2WpjJ?si=H1MUPFNyRxarl6s7VWv7kQ', NULL, 'https://www.youtube.com/@Blackmen3781'),
(11, 'La Mano 1.9', 'La Mano 1.9 est un rappeur français qui a fait une entrée fracassante sur la scène rap avec un style brut et une énergie incontournable. Mêlant des influences drill et rap de rue, il s’impose par ses textes authentiques, qui racontent sans détour son quotidien et ses réflexions. Sa musique, marquée par des beats percutants et des flows puissants, parle à une génération à la recherche de rap réaliste et sans fard.\n\nBien que relativement récent, La Mano 1.9 séduit par sa capacité à s’impliquer pleinement dans ses morceaux, offrant une véritable immersion dans son univers.', '/uploads/1746261195009-carte la mano.png', '2025-06-14 00:00:00.000', 'c22525', 'https://www.instagram.com/lamano1.9/', 'https://open.spotify.com/intl-fr/artist/78iJ2FMbYAFY3djO4PbWZi?si=o-ZKWX1-TVOpjojPrBcMPw', 'https://www.tiktok.com/@lamanoonenine19', 'https://www.youtube.com/@lamano1.9-officiel'),
(12, 'Laylow', 'Laylow est un rappeur français reconnu pour son univers cybernétique et son style unique, qui fusionne rap, électronique et sonorités futuristes. Avec des albums conceptuels comme \"Trinity\", il a su se démarquer en mêlant innovations musicales et concepts visuels forts, créant ainsi une expérience immersive qui va au-delà de la musique. Son approche artistique se distingue par une recherche constante de nouveaux horizons, où chaque morceau raconte une histoire en lien avec des thèmes technologiques et contemporains.\n\nLaylow est désormais vu comme l’un des artistes les plus avant-gardistes du rap français, porté par une vision originale et un engagement créatif sans compromis.', '/uploads/1746261237795-carte laylow.png', '2025-06-13 00:00:00.000', '71215a', 'https://www.instagram.com/jey.laylow/', 'https://open.spotify.com/intl-fr/artist/0LnhY2fzptb0QEs5Q5gM7S?si=mqNU_AEmSxKM0cxS5pg3hg', NULL, 'https://www.youtube.com/@laylowxsirkloTV'),
(13, 'Luther', 'Luther est un rappeur français au style sombre et introspectif, connu pour sa capacité à mêler mélodies mélancoliques et textes percutants. Il s’est fait remarquer par son écriture mature, où se côtoient réflexions profondes et émotions brutes, dans un univers musical marqué par des influences new wave.\n\nAvec des morceaux où se croisent des sonorités modernes et une poésie sombre, Luther incarne une nouvelle vague du rap français, portée par une authenticité qui touche un public en quête de profondeur et de sincérité.', '/uploads/1746261307572-carte luther.png', '2025-06-15 00:00:00.000', 'f25bd7', 'https://www.instagram.com/lutherantz/', 'https://open.spotify.com/intl-fr/artist/712cOCN3mpraX2UOgUvdHW?si=vAfcFeKFQC-Gz4sGGL5h-Q', NULL, 'https://www.youtube.com/@luther3971'),
(14, 'Nekfeu', 'Nekfeu, de son vrai nom Ken Samaras, est un rappeur français reconnu pour sa plume affûtée et son talent d’écriture exceptionnel. Membre du collectif S-Crew et du groupe 1995, il a su s’imposer comme une figure incontournable du rap français, grâce à des albums acclamés comme \"Feu\" et \"Cyborg\".\n\nNekfeu se distingue par sa capacité à allier sensibilité artistique, technique irréprochable et engagement personnel, abordant des sujets variés allant de l\'introspection aux problématiques sociales. Son approche artistique, à la fois profonde et accessible, en fait l\'un des rappeurs les plus respectés de sa génération.', '/uploads/1746261358075-carte nekfeu.png', '2025-06-14 00:00:00.000', '3ea062', NULL, 'https://open.spotify.com/intl-fr/artist/4LXBc13z5EWsc5N32bLxfH?si=Vw7fYjWTQRaH3xuI-GD5Gg', NULL, 'https://www.youtube.com/@nekfeu4711'),
(15, 'Ninho', 'Ninho est un rappeur français qui s\'est imposé comme l\'une des figures majeures du rap français moderne. Capable de mêler rap pur et mélodies accrocheuses, il séduit un large public grâce à ses morceaux percutants et ses refrains mémorables. Avec des albums à succès comme \"Comme prévu\" et \"Destin\", ainsi que de nombreux disques de platine, il a rapidement consolidé son statut de leader de la scène rap française.\n\nSon flow unique et ses textes réalistes, souvent introspectifs et ancrés dans le quotidien, lui ont permis de toucher une audience variée, faisant de lui l\'un des artistes les plus influents de sa génération.', '/uploads/1746261389292-carte ninho.png', '2025-06-13 00:00:00.000', '5bb7f2', 'https://www.instagram.com/ninhosdt/', 'https://open.spotify.com/intl-fr/artist/6Te49r3A6f5BiIgBRxH7FH?si=KZpWpiQ9SWiCQTA1rv9IBQ', 'https://www.tiktok.com/@ninhosdt', 'https://www.youtube.com/@ninho'),
(16, 'Osirus Jack', 'Osirus Jack est un rappeur français, membre du collectif 667, qui s’est rapidement imposé par son style percutant et sombre. Il se distingue par son originalité, ses punchlines aiguisées et un univers musical où les références culturelles sont omniprésentes. Avec des morceaux intenses et des textes ciselés, il se fait remarquer par sa capacité à manier les mots avec précision, tout en gardant une touche personnelle qui lui est propre.\n\nSa musique, parfois cryptique, plonge l\'auditeur dans un monde dense et complexe, où la réflexion et l’authenticité se mêlent parfaitement, faisant d\'Osirus Jack une voix incontournable du rap français actuel.', '/uploads/1746261418594-carte osirus jack.png', '2025-06-13 00:00:00.000', '7e4b0f', 'https://www.instagram.com/osirusjack667/', 'https://open.spotify.com/intl-fr/artist/3p6dh3Zn4fVXJatMy3Xqzq?si=XZyCUAa8Sz28XnuaaLg0fQ', NULL, 'https://www.youtube.com/@MangemortSquad'),
(17, 'PNL', 'PNL est un duo de rappeurs français composé des frères Ademo et N.O.S.. Ces deux artistes ont révolutionné le rap français en imposant une esthétique unique et un storytelling introspectif qui les distingue des autres. Leur univers, mêlant mélodies envoûtantes et textes profonds, est marqué par une forte dimension émotionnelle et une exploration des thèmes de la solitude, de la famille et des difficultés sociales.\n\nAvec des albums comme \"Dans la légende\" et \"Que la famille\", PNL a créé un phénomène culturel, captivant un large public grâce à des productions innovantes et une approche artistique très personnelle. Leur impact sur la scène rap française est immense, et leur influence va bien au-delà de la musique.', '/uploads/1746261448401-carte pnl.png', '2025-06-14 00:00:00.000', 'ffffff', 'https://www.instagram.com/pnlmusic/', 'https://open.spotify.com/intl-fr/artist/3NH8t45zOTqzlZgBvZRjvB?si=nIuMsDukRZeexZX7HSLPMA', NULL, 'https://www.youtube.com/@pnl'),
(18, 'SCH', 'SCH est un rappeur français qui s’est imposé comme une figure majeure du rap français. Connu pour son style unique mêlant mélancolie, storytelling et une touche d\'esthétisme mafieux, il séduit un large public avec sa voix grave et ses textes intenses, où se mêlent des récits personnels et des réflexions profondes.\n\nAvec des albums à succès comme \"Deo Favente\" et \"JVLIVS\", SCH a su créer un univers singulier, où l’élégance du crime se mêle à une dimension introspective, marquant durablement la scène rap. Son flow maîtrisé et ses productions soignées en font l’un des artistes les plus respectés de sa génération.', '/uploads/1746261478013-carte sch.png', '2025-06-14 00:00:00.000', '7a6c6c', 'https://www.instagram.com/sch/', 'https://open.spotify.com/intl-fr/artist/2kXKa3aAFngGz2P4GjG5w2?si=NlNblB6fSLSLM6mWVkBIsw', 'https://www.tiktok.com/@sch', 'https://www.youtube.com/@sch'),
(19, 'Vald', 'Vald est un rappeur français au style décalé et provocateur, reconnu pour sa capacité à mêler second degré, introspection et absurdité dans ses morceaux. Il a su se faire une place de choix dans le rap français grâce à un univers unique, où les blagues sombres et les réflexions profondes cohabitent.\n\nAvec des albums comme \"Agartha\" et \"XEU\", Vald s’est imposé comme une figure majeure du rap français, attirant à la fois les fans de rap technique et ceux appréciant son côté décalé. Son style particulier, à la fois provocateur et réfléchi, en fait l’un des artistes les plus intéressants et influents de sa génération.', '/uploads/1746261523534-carte vald.png', '2025-06-15 00:00:00.000', '0219c9', 'https://www.instagram.com/valdsullyvan/', 'https://open.spotify.com/intl-fr/artist/3CnCGFxXbOA8bAK54jR8js?si=FUowpSKzT6aHMLVDuxX7Rg', 'https://www.tiktok.com/@valdsullyvan', 'https://www.youtube.com/@ValdSullyvan'),
(20, 'Ziak', 'Ziak est un rappeur français qui s’est imposé avec une entrée fracassante dans le rap, notamment en représentant la drill française. Il est connu pour son univers sombre, ses textes percutants et son identité masquée, qui ajoutent une dimension mystique à son personnage. Avec des morceaux qui plongent l\'auditeur dans un monde urbain intense et sans filtre, Ziak séduit par sa puissance vocale et son flow incisif.\n\nSon style, marqué par des beats lourds et une écriture brutale, lui permet de se démarquer dans la scène drill tout en captivant une large audience avec des sonorités uniques.', '/uploads/1746261553900-carte ziak v2.png', '2025-06-15 00:00:00.000', '4f4d4d', 'https://www.instagram.com/ziakimbo/', 'https://open.spotify.com/intl-fr/artist/2ubn2zwyYaLdHOCKnTouU2?si=JhUqA001Q4KTZ8xa-ww-EQ', NULL, 'https://www.youtube.com/@ZiakCC');

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

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(191) NOT NULL,
  `prenom` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `motDePasse` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `createdAt`, `isAdmin`) VALUES
(1, 'Fernet', 'Fernet', 'lenny.fernet7@gmail.com', '$2b$10$ftxGMankLqKh21UUNWCPU.H/vz.KtnX4kRHP9zja.I0M3HNBE9vOK', '2025-05-26 21:43:01.929', 0);

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('2112d6bd-a6d9-4e20-ad0d-ab54a2a0f45f', '957a3ec83627c6f9aeb63d594fc02f7c49f45a5fdf4ac1d0466775ccb5982885', '2025-05-26 21:41:16.712', '20250418122325_changement_bdd_pass', NULL, NULL, '2025-05-26 21:41:16.693', 1),
('2648e635-6bee-499e-b62c-eb432d0dbe28', '9639cd68c15bef11d76d6f663a5f0ab835f2a91348cdd3ed627ad0faf33e6a03', '2025-05-26 21:41:16.815', '20250503155448_add_social_links_to_artiste', NULL, NULL, '2025-05-26 21:41:16.797', 1),
('2ea08b7c-8625-4804-bb36-dc13b4df65bb', '8d1cce47586948056831921f04fe0090479bdd90a3ae61f8585e852a5b404a4a', '2025-05-26 21:41:16.634', '20250415103451_ajout_champ_photo_dans_album', NULL, NULL, '2025-05-26 21:41:16.618', 1),
('317f11e3-ed43-419d-950d-865cab1a9078', 'fd5c762b5830bf69015e9c44a39dc9788de5e212a1130dce27e35b27ba7c908d', '2025-05-26 21:41:16.616', '20250414162447_ajout_albums_et_relations', NULL, NULL, '2025-05-26 21:41:16.567', 1),
('4fd7115b-5136-407b-9f98-95ac7026188c', 'b0bbac9d9ccf85bfd5407ae8bdf674448f6c3b1c857c626288e779ad9dc9ef09', '2025-05-26 21:41:16.831', '20250503185231_update_artiste_description_varchar', NULL, NULL, '2025-05-26 21:41:16.817', 1),
('4ffb1693-fd29-41a2-8202-2b9256cff6d2', '8cf7a5259b9931aa02b57cd0eccf7cd4c378ce3af930e5376050b23b95aedf5b', '2025-05-26 21:41:16.548', '20250407090708_init2', NULL, NULL, '2025-05-26 21:41:16.463', 1),
('61defb1a-75cd-4d31-9251-930de48b2f14', '49ff5d0cdd101677a8ca171494deaacc85b214f9485ef7586b35baf07491813e', '2025-05-26 21:41:16.796', '20250418144510_ajout_colonne_dates', NULL, NULL, '2025-05-26 21:41:16.759', 1),
('646d464c-29a0-4ab0-af4a-b682f051cb68', 'c4ba13d1867418ff297ed607cf5b588384d696cab23417ba59cd8507f3dab4b4', '2025-05-26 21:41:16.873', '20250522134603_add_role_to_utilisateur', NULL, NULL, '2025-05-26 21:41:16.849', 1),
('681f196d-3e14-4330-a7af-a14660191ceb', '2043e77a75de3c2046a765bc941673f1d262956b30f5cdc8383ef681e7ddf081', '2025-05-26 21:41:16.565', '20250414135309_date_performance', NULL, NULL, '2025-05-26 21:41:16.549', 1),
('6b3312d8-981e-4cd1-b989-49cc6b6f4833', '2232aa464ea8a4eb28254dc7011844d8650644ce6b3e1788efe5e870be7f72dd', '2025-05-26 21:41:16.672', '20250416142253_ajout_champ_couleur_artiste', NULL, NULL, '2025-05-26 21:41:16.655', 1),
('87cd6727-cea1-40f5-ba11-1c814e593b1f', '86aeabdf2a0e68ad05bf0f06865cb3f9215821bee8df74f4a4ba4d9ec46599f3', '2025-05-26 21:41:16.891', '20250522142856_add_is_admin_field', NULL, NULL, '2025-05-26 21:41:16.874', 1),
('8ab8dcb6-e5ba-4f70-af3d-27404a9f4250', '5eb196ec583f1e47782cc31ee828c1e72fd3ef7f554d80dfe73ced5de65389f2', '2025-05-26 21:41:16.654', '20250415103540_delete_champ_genre_musical', NULL, NULL, '2025-05-26 21:41:16.636', 1),
('9623bad4-229c-4ad2-ba66-6ef1cebf2272', '637f1bfd3e3dc7b0e89d57714bd535f73685b17ff9639e02114ce45c1f5f1238', '2025-05-26 21:41:16.461', '20250406214543_init', NULL, NULL, '2025-05-26 21:41:16.448', 1),
('ab298782-4b8a-4977-8793-cf0438a7c347', 'b7df9bc0b9fb2696bca5eccb4daa6dfed270a3bbf797e73e8d584aa6cd18d624', '2025-05-26 21:41:16.691', '20250418121800_changement_bdd', NULL, NULL, '2025-05-26 21:41:16.674', 1),
('ca1a53f9-9bb2-4193-84ba-7a737f1f38a6', '8b8d2f988663288033425d9ef938b517e9b024b22a7a9928a1d59e1262cbad9f', '2025-05-26 21:41:16.757', '20250418124613_ajout_dates_pass', NULL, NULL, '2025-05-26 21:41:16.713', 1),
('fb5e0ead-45b1-487d-a7f0-1af39c438a4f', '5ffdca7c907ec6db7b615e4a04c1a19e2757a1765c2fdad5abf08935f671c491', '2025-05-26 21:41:16.848', '20250521125500_add_role_to_user', NULL, NULL, '2025-05-26 21:41:16.834', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `AchatPass`
--
ALTER TABLE `AchatPass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AchatPass_utilisateurId_fkey` (`utilisateurId`),
  ADD KEY `AchatPass_passId_fkey` (`passId`);

--
-- Index pour la table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Album_artisteId_fkey` (`artisteId`);

--
-- Index pour la table `Artiste`
--
ALTER TABLE `Artiste`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Pass`
--
ALTER TABLE `Pass`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Utilisateur_email_key` (`email`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `AchatPass`
--
ALTER TABLE `AchatPass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Album`
--
ALTER TABLE `Album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `Artiste`
--
ALTER TABLE `Artiste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `Pass`
--
ALTER TABLE `Pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `AchatPass`
--
ALTER TABLE `AchatPass`
  ADD CONSTRAINT `AchatPass_passId_fkey` FOREIGN KEY (`passId`) REFERENCES `Pass` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `AchatPass_utilisateurId_fkey` FOREIGN KEY (`utilisateurId`) REFERENCES `Utilisateur` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `Album_artisteId_fkey` FOREIGN KEY (`artisteId`) REFERENCES `Artiste` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
