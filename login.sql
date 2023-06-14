-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 25 mai 2023 à 23:36
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `login`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

DROP TABLE IF EXISTS `avoir`;
CREATE TABLE IF NOT EXISTS `avoir` (
  `code_bureau` varchar(7) NOT NULL,
  `code_cara` int NOT NULL,
  `quantité` int NOT NULL,
  PRIMARY KEY (`code_bureau`,`code_cara`),
  KEY `code_bureau` (`code_bureau`,`code_cara`),
  KEY `code_cara` (`code_cara`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique`
--

DROP TABLE IF EXISTS `caracteristique`;
CREATE TABLE IF NOT EXISTS `caracteristique` (
  `code_cara` int NOT NULL,
  `libelle` varchar(20) NOT NULL,
  `unite` int NOT NULL,
  PRIMARY KEY (`code_cara`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `code_bureau` varchar(6) NOT NULL,
  `statut` varchar(30) NOT NULL,
  `composante` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nom` (`nom`),
  KEY `code_bureau` (`code_bureau`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `nom`, `prenom`, `email`, `code_bureau`, `statut`, `composante`) VALUES
(1, 'Montagne', 'Christophe', 'christophe.montagne@univ-evry.fr', 'Ax106', 'MCF', 'IBISC'),
(7, 'Mammar', 'Said', 'said.mammar@univ-evry.fr', 'A113', 'PR', 'IBISC');

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

DROP TABLE IF EXISTS `salles`;
CREATE TABLE IF NOT EXISTS `salles` (
  `ref` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(25) NOT NULL,
  `hall` text NOT NULL,
  `etage` int NOT NULL,
  PRIMARY KEY (`ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`ref`, `type`, `hall`, `etage`) VALUES
('', '', '', 0),
('A02', 'Bureau', 'A', 0),
('A03', 'Bureau', 'A', 0),
('A09', 'Salle d\'examen/Amphithéat', 'A', 0),
('A10/11', 'Salle d\'examen/Amphithéat', 'A', 0),
('A101', 'Salle de reunion', 'A', 1),
('A103', 'Bureau', 'A', 1),
('A104', 'Bureau', 'A', 1),
('A105', 'Bureau', 'A', 1),
('A107', 'Direction adjointe', 'A', 1),
('A108', 'Resp. Département GM', 'A', 1),
('A109', 'Resp. Département GE', 'A', 1),
('A110', 'Resp. Département GI', 'A', 1),
('A111', 'Resp. FA', 'A', 1),
('A112', 'Secrétariat direction', 'A', 1),
('A113', 'Direction', 'A', 1),
('A114', 'RAF', 'A', 1),
('A115', 'Direction', 'A', 1),
('A116', 'Bureau', 'A', 1),
('A117', 'Secrétariat laboratoires', 'A', 1),
('A118', 'Stockage', 'A', 1),
('A119', 'Bureau', 'A', 1),
('A12/13', 'Salle d\'examen/Amphithéat', 'A', 0),
('A120', 'Bureau', 'A', 1),
('A120b', 'Salle de reunion', 'A', 1),
('A121', 'Salle de reunion', 'A', 1),
('A122', 'DSI', 'A', 1),
('A123', 'SAlle', 'A', 1),
('A124', 'Salle', 'A', 1),
('A125', 'Bureau', 'A', 1),
('A126', 'Salle de repos', 'A', 1),
('A127', 'Bureau', 'A', 1),
('A128', 'Bureau', 'A', 1),
('A129', 'Bureau', 'A', 1),
('A130', 'Bureau', 'A', 1),
('A131', 'Bureau', 'A', 1),
('A132', 'Bureau', 'A', 1),
('A134', 'Bureau', 'A', 1),
('A135', 'Bureau', 'A', 1),
('A136', 'Bureau', 'A', 1),
('A137', 'Bureau', 'A', 1),
('A138', 'Bureau', 'A', 1),
('A139', 'Bureau', 'A', 1),
('A14', 'Bureau doctorants / stagi', 'A', 0),
('A141', 'Local technique', 'A', 1),
('A15', 'Bureau doctorants / stagi', 'A', 0),
('A23', 'Bureau doctorants / stagi', 'A', 0),
('A24', 'Bureau doctorants / stagi', 'A', 0),
('A25', 'Bureau doctorants / stagi', 'A', 0),
('A26', 'Bureau doctorants / stagi', 'A', 0),
('A27', 'Bureau doctorants / stagi', 'A', 0),
('A28', 'Bureau doctorants / stagi', 'A', 0),
('A29', 'Bureau doctorants / stagi', 'A', 0),
('A6/7', 'ST LAB', 'A', 0),
('Ax106', 'Bureau', 'A', 0),
('Ax140', 'Bureau', 'A', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Nom` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`Nom`, `username`, `password`) VALUES
('Faycal', ' faycalouarab@gmail.com', '$2y$10$uF6MLx8GGrzNqUo/XL4ssu.MOxYKZiaMYbRyl8oWj6QTCJlEh2wf2'),
('ilyes', ' ilyes@gmail.com', '$2y$10$aF/BfWC30xJGLXsbwCAlQOe/PbjEJamc5VbA07GA.ol8zjayi9JAG'),
('ilyes', ' mer.alisofiane@gmail.com', '$2y$10$f1SyQaD2HmL0SPG86iWfhueImIGjSjBhzJ/jGAVg52LSFgUFtk04a'),
('ilyes', ' merradilyes@gmail.com', '$2y$10$uy98Pf3opu5fA56seAQ.e./KFMcEB5B0E4r8HZJuuPRwseSB0erMm'),
('ilyes', ' merradilyes@yahoo.com', '$2y$10$UgQvE.LsdZHc2g7oDOShwu6GZTiagVZ2Yp1qoqvC03iFRUYHVZ1Gm'),
('zaki', ' zakimerrad@gmail.com', '$2y$10$x3l4vuR/vGD2m4NIqhi8Eej1ACzr7QQioGZ0zHLdRCPGMq9Ma8I2S'),
('Faycal', 'faycalouarab0@gmail.com', '123456789'),
('Ilyes', 'ilyesmerr@gmail.com', '123456789'),
('ilyes', 'oussamaaddad@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` text NOT NULL,
  `mdp` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `mdp`, `Email`) VALUES
(1, 'Ilyes', '123456789', 'merradilyes@gmail.com');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD CONSTRAINT `avoir_ibfk_1` FOREIGN KEY (`code_bureau`) REFERENCES `salles` (`ref`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `avoir_ibfk_2` FOREIGN KEY (`code_cara`) REFERENCES `caracteristique` (`code_cara`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_2` FOREIGN KEY (`code_bureau`) REFERENCES `salles` (`ref`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
