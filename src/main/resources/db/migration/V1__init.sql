-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 17 mars 2020 à 17:25
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `compta_transparency_facturation`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `ice` varchar(255) DEFAULT NULL,
  `identifiant_fiscale` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `rc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etat_facture`
--

CREATE TABLE `etat_facture` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etat_paiment`
--

CREATE TABLE `etat_paiment` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` bigint(20) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `date_facture` date DEFAULT NULL,
  `date_saisie` date DEFAULT NULL,
  `mois` int(11) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `reference_societe` varchar(255) DEFAULT NULL,
  `total_ht` decimal(16,4) DEFAULT NULL,
  `total_payer_ht` decimal(16,4) DEFAULT NULL,
  `total_restant_ht` decimal(16,4) DEFAULT NULL,
  `total_ttc` decimal(16,4) DEFAULT NULL,
  `trimester` int(11) DEFAULT NULL,
  `tva` decimal(16,4) DEFAULT NULL,
  `etat_facture` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture_client`
--

CREATE TABLE `facture_client` (
  `id` bigint(20) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `date_facture` date DEFAULT NULL,
  `date_saisie` date DEFAULT NULL,
  `mois` int(11) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `reference_societe` varchar(255) DEFAULT NULL,
  `total_ht` decimal(16,4) DEFAULT NULL,
  `total_payer_ht` decimal(16,4) DEFAULT NULL,
  `total_restant_ht` decimal(16,4) DEFAULT NULL,
  `total_ttc` decimal(16,4) DEFAULT NULL,
  `trimester` int(11) DEFAULT NULL,
  `tva` decimal(16,4) DEFAULT NULL,
  `etat_facture` bigint(20) DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture_fournisseur`
--

CREATE TABLE `facture_fournisseur` (
  `id` bigint(20) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `date_facture` date DEFAULT NULL,
  `date_saisie` date DEFAULT NULL,
  `mois` int(11) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `reference_societe` varchar(255) DEFAULT NULL,
  `total_ht` decimal(16,4) DEFAULT NULL,
  `total_payer_ht` decimal(16,4) DEFAULT NULL,
  `total_restant_ht` decimal(16,4) DEFAULT NULL,
  `total_ttc` decimal(16,4) DEFAULT NULL,
  `trimester` int(11) DEFAULT NULL,
  `tva` decimal(16,4) DEFAULT NULL,
  `etat_facture` bigint(20) DEFAULT NULL,
  `fourniseur` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fourniseur`
--

CREATE TABLE `fourniseur` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `ice` varchar(255) DEFAULT NULL,
  `identifiant_fiscale` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `rc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `journale`
--

CREATE TABLE `journale` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `paiment_facture`
--

CREATE TABLE `paiment_facture` (
  `id` bigint(20) NOT NULL,
  `date_paiment` date DEFAULT NULL,
  `date_saisie` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `montant` decimal(16,4) DEFAULT NULL,
  `scan` varchar(255) DEFAULT NULL,
  `etat_paiment` bigint(20) DEFAULT NULL,
  `facture` bigint(20) DEFAULT NULL,
  `type_paiment` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `type_paiment`
--

CREATE TABLE `type_paiment` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat_facture`
--
ALTER TABLE `etat_facture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat_paiment`
--
ALTER TABLE `etat_paiment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkr3ksts74gennv8v3sftugtj8` (`etat_facture`);

--
-- Index pour la table `facture_client`
--
ALTER TABLE `facture_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK36tkxh2lf6npu23onmjudndf4` (`client`),
  ADD KEY `FK_r5ih2egwqamtbus5f9j0ois9n` (`etat_facture`);

--
-- Index pour la table `facture_fournisseur`
--
ALTER TABLE `facture_fournisseur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKruk169sjk6d2x6kqbq1h2slly` (`fourniseur`),
  ADD KEY `FK_joh92jjpu3aowya8kg57gluk8` (`etat_facture`);

--
-- Index pour la table `fourniseur`
--
ALTER TABLE `fourniseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `journale`
--
ALTER TABLE `journale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiment_facture`
--
ALTER TABLE `paiment_facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1bc5xe2hpylujldy9k62cyd2w` (`etat_paiment`),
  ADD KEY `FKhhuravtevq9x75a7tpqtynv3s` (`type_paiment`);

--
-- Index pour la table `type_paiment`
--
ALTER TABLE `type_paiment`
  ADD PRIMARY KEY (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
