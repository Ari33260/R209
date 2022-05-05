-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 05 mai 2022 à 11:52
-- Version du serveur :  5.7.17
-- Version de PHP :  7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `grc`
--
CREATE DATABASE IF NOT EXISTS `grc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grc`;

-- --------------------------------------------------------

--
-- Structure de la table `but`
--

CREATE TABLE `but` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE `diplome` (
  `id` int(11) NOT NULL,
  `ville_id` int(11) NOT NULL,
  `intitule_id` int(11) NOT NULL,
  `univ_id` int(11) NOT NULL,
  `but_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220407075020', '2022-04-07 07:50:35', 42),
('DoctrineMigrations\\Version20220414101052', '2022-04-14 10:11:21', 35),
('DoctrineMigrations\\Version20220505072305', '2022-05-05 07:23:15', 45),
('DoctrineMigrations\\Version20220505073052', '2022-05-05 07:31:02', 48),
('DoctrineMigrations\\Version20220505073207', '2022-05-05 07:32:15', 41),
('DoctrineMigrations\\Version20220505073300', '2022-05-05 07:33:11', 41),
('DoctrineMigrations\\Version20220505073958', '2022-05-05 07:40:10', 197);

-- --------------------------------------------------------

--
-- Structure de la table `etat_projet`
--

CREATE TABLE `etat_projet` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intitule`
--

CREATE TABLE `intitule` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `intitule`
--

INSERT INTO `intitule` (`id`, `nom`) VALUES
(1, 'Réseaux et Télécommunications'),
(2, 'Génie Industriel et Maintenance'),
(3, 'Qualité Logistique Industrielle et Organisation'),
(4, 'Gestion des Entreprises et des Administrations'),
(5, 'Technique de Commercialisation'),
(6, 'Gestion Administrative et Commerciale des Organisations'),
(7, 'Génie Biologique, Sciences de l\'Environnement et Ecotechnologie'),
(8, 'Génie Electrique et Informatique Industrielle'),
(9, 'Génie Mécanique et Productique'),
(10, 'Mesures Physiques'),
(11, 'Carrières Juridiques, Métiers de Droit et de l\'Entreprise'),
(12, 'Information Communication'),
(13, 'Hygiène, Sécurité et Environnement'),
(14, 'Statistique et Informatique Décisionnelle'),
(15, 'Management de la Logistique et des Transports'),
(16, 'Chimie'),
(17, 'Informatique'),
(18, 'Génie Thermique et Energie'),
(19, 'Génie Biologique\r\n'),
(20, 'Génie Industriel et Maintenance'),
(21, 'Génie Chimique, Génie des procédés'),
(22, 'Génie Civil, Construction Durable'),
(23, 'Techniques de commercialisation Orientation Systèmes Industriels');

-- --------------------------------------------------------

--
-- Structure de la table `univ`
--

CREATE TABLE `univ` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `univ`
--

INSERT INTO `univ` (`id`, `nom`) VALUES
(1, 'Universite de Sint-Etienne'),
(2, 'Universite de Lyon');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'jeanlassalle@assemblee-nationale.fr', '[]', '$2y$13$yR7LYSlgHJ5sm4h5cei.0eVmA0zO1c/X39iBxBK3A4bpJDpcvixle'),
(2, 'test@test.fr', '[\"ROLE_ADMIN\"]', '$2y$13$medFddjKvxxL3UowcL51HO4TbxeoeTk3Lr1eEm5/hPigPtHUnIA5m');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nom`) VALUES
(1, 'Roanne'),
(3, 'Lyon');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `but`
--
ALTER TABLE `but`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EB4C4D4EA73F0036` (`ville_id`),
  ADD KEY `IDX_EB4C4D4E6729EDCE` (`intitule_id`),
  ADD KEY `IDX_EB4C4D4E52B4B886` (`univ_id`),
  ADD KEY `IDX_EB4C4D4EB8914BA4` (`but_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `etat_projet`
--
ALTER TABLE `etat_projet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `intitule`
--
ALTER TABLE `intitule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `univ`
--
ALTER TABLE `univ`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `but`
--
ALTER TABLE `but`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etat_projet`
--
ALTER TABLE `etat_projet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `intitule`
--
ALTER TABLE `intitule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `univ`
--
ALTER TABLE `univ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `diplome`
--
ALTER TABLE `diplome`
  ADD CONSTRAINT `FK_EB4C4D4E52B4B886` FOREIGN KEY (`univ_id`) REFERENCES `univ` (`id`),
  ADD CONSTRAINT `FK_EB4C4D4E6729EDCE` FOREIGN KEY (`intitule_id`) REFERENCES `intitule` (`id`),
  ADD CONSTRAINT `FK_EB4C4D4EA73F0036` FOREIGN KEY (`ville_id`) REFERENCES `ville` (`id`),
  ADD CONSTRAINT `FK_EB4C4D4EB8914BA4` FOREIGN KEY (`but_id`) REFERENCES `but` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
