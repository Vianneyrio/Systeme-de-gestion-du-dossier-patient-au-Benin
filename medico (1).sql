-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 05 juin 2026 à 17:14
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `medico`
--

-- --------------------------------------------------------

--
-- Structure de la table `analyses`
--

CREATE TABLE `analyses` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `nom_examen` varchar(255) NOT NULL,
  `resultat` text DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `constantes`
--

CREATE TABLE `constantes` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `tension` varchar(20) DEFAULT NULL,
  `frequence_cardiaque` decimal(5,2) DEFAULT NULL,
  `frequence_respiratoire` decimal(5,2) DEFAULT NULL,
  `saturation` decimal(5,2) DEFAULT NULL,
  `temperature` decimal(4,1) DEFAULT NULL,
  `poids` decimal(5,2) DEFAULT NULL,
  `taille` decimal(5,2) DEFAULT NULL,
  `douleur` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `constantes`
--

INSERT INTO `constantes` (`id`, `dossier_id`, `tension`, `frequence_cardiaque`, `frequence_respiratoire`, `saturation`, `temperature`, `poids`, `taille`, `douleur`, `created_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2026-05-31 19:23:28'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2026-06-01 03:55:45'),
(3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2026-06-01 03:56:33'),
(4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2026-06-03 01:05:48'),
(5, 5, '123', 34.00, 18.00, 34.00, 36.0, 79.00, 199.00, 6, '2026-06-05 15:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `consultations`
--

CREATE TABLE `consultations` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `symptomes` text DEFAULT NULL,
  `interrogatoire` text DEFAULT NULL,
  `medicaments_pris` text DEFAULT NULL,
  `histoire_maladie` text DEFAULT NULL,
  `antecedents` text DEFAULT NULL,
  `etat_general` varchar(255) DEFAULT NULL,
  `examen_neurologique` varchar(255) DEFAULT NULL,
  `examen_thorax` varchar(255) DEFAULT NULL,
  `examen_abdomen` varchar(255) DEFAULT NULL,
  `examen_locomoteur` varchar(255) DEFAULT NULL,
  `examen_urologique` varchar(255) DEFAULT NULL,
  `resume_syndromique` text DEFAULT NULL,
  `hypotheses_diagnostiques` text DEFAULT NULL,
  `diagnostic_retenu` varchar(255) DEFAULT NULL,
  `plan_therapeutique` text DEFAULT NULL,
  `surveillance` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `consultations`
--

INSERT INTO `consultations` (`id`, `dossier_id`, `symptomes`, `interrogatoire`, `medicaments_pris`, `histoire_maladie`, `antecedents`, `etat_general`, `examen_neurologique`, `examen_thorax`, `examen_abdomen`, `examen_locomoteur`, `examen_urologique`, `resume_syndromique`, `hypotheses_diagnostiques`, `diagnostic_retenu`, `plan_therapeutique`, `surveillance`, `conclusion`, `created_at`) VALUES
(1, 1, 'HHH', 'FFF', 'GGG', 'AZZEE', 'JJJJ', 'NNN', NULL, 'BB', NULL, NULL, NULL, NULL, 'HHH', 'Hypertension artérielle', 'HHH', 'H', 'TT', '2026-05-31 19:24:35'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gastro-entérite aiguë', NULL, NULL, NULL, '2026-06-01 21:43:49'),
(3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Infection respiratoire basse', NULL, NULL, NULL, '2026-06-02 02:52:01'),
(4, 4, 'fffff', 'rrrr', 'hhhh', 'nnn', 'nnn', 'fff', 'ttt', 'tttt', 'yyyy', 'hhhh', NULL, NULL, 'hhhh', 'Infection respiratoire basse', 'hhhh', 'ggg', 'hhh', '2026-06-04 06:54:23'),
(5, 4, 'fffff', 'rrrr', 'hhhh', 'nnn', 'nnn', 'fff', 'ttt', 'tttt', 'yyyy', 'hhhh', NULL, NULL, 'hhhh', 'Infection respiratoire basse', 'hhhh', 'ggg', 'hhh', '2026-06-04 06:54:25'),
(6, 4, 'fffff', 'rrrr', 'hhhh', 'nnn', 'nnn', 'fff', 'ttt', 'tttt', 'yyyy', 'hhhh', NULL, NULL, 'hhhh', 'Infection respiratoire basse', 'hhhh', 'ggg', 'hhh', '2026-06-04 06:54:25'),
(7, 4, 'fffff', 'rrrr', 'hhhh', 'nnn', 'nnn', 'fff', 'ttt', 'tttt', 'yyyy', 'hhhh', NULL, NULL, 'hhhh', 'Infection respiratoire basse', 'hhhh', 'ggg', 'hhh', '2026-06-04 06:54:25'),
(8, 4, 'fffff', 'rrrr', 'hhhh', 'nnn', 'nnn', 'fff', 'ttt', 'tttt', 'yyyy', 'hhhh', NULL, NULL, 'hhhh', 'Infection respiratoire basse', 'hhhh', 'ggg', 'hhh', '2026-06-04 06:54:26'),
(9, 5, 'HKJHEZJEK.Q', 'LKAAEQIL', 'KJEHQF', 'KLRF', 'JHZEZQ', 'JZFFKJBBE', 'N E J', 'JE', 'KZD', 'FSD', 'JEZ', 'J.SDJW', 'KKFZJL', 'Diabète de type 2', 'QEJQ', 'ZE?QF', 'KFZLR', '2026-06-05 15:48:31');

-- --------------------------------------------------------

--
-- Structure de la table `demandes_technicien`
--

CREATE TABLE `demandes_technicien` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `technicien_id` int(11) DEFAULT NULL,
  `facture_id` int(11) DEFAULT NULL,
  `tarif_id` int(11) DEFAULT NULL,
  `nom_examen` varchar(255) NOT NULL,
  `type_demande` enum('analyse','imagerie') NOT NULL,
  `statut` enum('en_attente','traite') DEFAULT 'en_attente',
  `resultat` text DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `demandes_technicien`
--

INSERT INTO `demandes_technicien` (`id`, `dossier_id`, `patient_id`, `technicien_id`, `facture_id`, `tarif_id`, `nom_examen`, `type_demande`, `statut`, `resultat`, `observations`, `fichier`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 1, 6, 'Bilan hépatique', 'analyse', 'traite', 'fff', 'fff', NULL, '2026-05-31 22:39:55', '2026-05-31 23:12:40'),
(2, 1, 1, NULL, 1, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-05-31 22:39:55', NULL),
(3, 1, 1, NULL, 1, 10, 'Mammographie', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-05-31 22:39:55', NULL),
(4, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'traite', 'gggg', 'hhh', NULL, '2026-06-01 03:57:13', '2026-06-01 03:57:36'),
(5, 2, 2, NULL, 2, 4, 'Glycémie', 'analyse', 'traite', 'Glycémie à jeun: 12 g/L [ÉLEVÉ ↑]\nGlycémie post-prandiale: 1 g/L [NORMAL ✓]\nGlycémie à jeun: 12 g/L [ÉLEVÉ ↑]\nGlycémie post-prandiale: 1 g/L [NORMAL ✓]', NULL, NULL, '2026-06-01 03:57:13', '2026-06-01 05:00:20'),
(6, 2, 2, NULL, 2, 10, 'Mammographie', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 03:57:13', NULL),
(7, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'traite', 'Leucocytes urinaires: 23 /mm³ [ÉLEVÉ ↑]\nHématies urinaires: 5 /mm³ [NORMAL ✓]\nBactéries: -2 /champ [BAS ↓]\nLeucocytes urinaires: 23 /mm³ [ÉLEVÉ ↑]\nHématies urinaires: 5 /mm³ [NORMAL ✓]', NULL, NULL, '2026-06-01 09:24:36', '2026-06-01 10:17:40'),
(8, 2, 2, NULL, 2, 4, 'Glycémie', 'analyse', 'traite', 'Glycémie à jeun: -2 g/L [BAS ↓]\nGlycémie post-prandiale: 2 g/L [ÉLEVÉ ↑]\nGlycémie à jeun: -2 g/L [BAS ↓]\nGlycémie post-prandiale: 2 g/L [ÉLEVÉ ↑]\nGlycémie à jeun: -2 g/L [BAS ↓]\nGlycémie post-prandiale: 2 g/L [ÉLEVÉ ↑]', NULL, NULL, '2026-06-01 09:24:36', '2026-06-03 15:08:07'),
(9, 2, 2, NULL, 2, 10, 'Mammographie', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 09:24:36', NULL),
(10, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-01 10:18:35', NULL),
(11, 2, 2, NULL, 2, 4, 'Glycémie', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-01 10:18:35', NULL),
(12, 2, 2, NULL, 2, 10, 'Mammographie', 'imagerie', 'traite', 'hhhh', NULL, 'resultat_1780346476297.jpg', '2026-06-01 10:18:35', '2026-06-01 21:41:16'),
(13, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-01 11:05:34', NULL),
(14, 2, 2, NULL, 2, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 11:05:34', NULL),
(15, 2, 2, NULL, 2, 9, 'Scanner abdominal', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 11:05:34', NULL),
(16, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-01 20:15:29', NULL),
(17, 2, 2, NULL, 2, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 20:15:29', NULL),
(18, 2, 2, NULL, 2, 9, 'Scanner abdominal', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 20:15:29', NULL),
(19, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-01 20:15:47', NULL),
(20, 2, 2, NULL, 2, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 20:15:47', NULL),
(21, 2, 2, NULL, 2, 9, 'Scanner abdominal', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 20:15:47', NULL),
(22, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-01 21:19:25', NULL),
(23, 2, 2, NULL, 2, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 21:19:25', NULL),
(24, 2, 2, NULL, 2, 9, 'Scanner abdominal', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-01 21:19:25', NULL),
(25, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'traite', 'Leucocytes urinaires: 3 /mm³ [NORMAL ✓]\nHématies urinaires: 44 /mm³ [ÉLEVÉ ↑]\nBactéries: 2 /champ [ÉLEVÉ ↑]\nLeucocytes urinaires: 3 /mm³ [NORMAL ✓]\nHématies urinaires: 44 /mm³ [ÉLEVÉ ↑]', NULL, NULL, '2026-06-02 03:11:46', '2026-06-02 03:20:00'),
(26, 2, 2, NULL, 2, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:11:46', NULL),
(27, 2, 2, NULL, 2, 9, 'Scanner abdominal', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:11:46', NULL),
(28, 2, 2, NULL, 2, 24, 'Acide urique', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(29, 2, 2, NULL, 2, 35, 'Bilan lipidique complet', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(30, 2, 2, NULL, 2, 5, 'ECBU', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(31, 2, 2, NULL, 2, 19, 'Glycémie', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(32, 2, 2, NULL, 2, 34, 'Hémoculture', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(33, 2, 2, NULL, 2, 8, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(34, 2, 2, NULL, 2, 40, 'Échographie abdominale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(35, 2, 2, NULL, 2, 10, 'Mammographie', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(36, 2, 2, NULL, 2, 38, 'Radiographie thorax', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(37, 2, 2, NULL, 2, 9, 'Scanner abdominal', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-02 03:18:00', NULL),
(38, 3, 3, NULL, 3, 24, 'Acide urique', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-03 15:06:40', NULL),
(39, 3, 3, NULL, 3, 3, 'NFS (Numération Formule Sanguine)', 'analyse', 'traite', 'Hémoglobine (Homme): 2 g/dL [BAS ↓]\nHémoglobine (Femme): 4 g/dL [BAS ↓]\nLeucocytes: —\nPlaquettes: —\nHématocrite (Homme): 5 % [BAS ↓]\nHématocrite (Femme): 23 % [BAS ↓]\nVGM: —\nHémoglobine Homme: 10 g/dL [BAS ↓]\nHémoglobine Femme: 14 g/dL [NORMAL ✓]\nLeucocytes: —\nPlaquettes: —\nHématocrite Homme: —\nHématocrite Femme: —\nVGM: —\nHémoglobine: —\nGlobules rouges: —\nGlobules blancs: —\nPlaquettes: —\nHématocrite: —\nVGM: —\nTCMH: —', NULL, NULL, '2026-06-03 15:06:40', '2026-06-03 15:09:06'),
(40, 3, 3, NULL, 3, 41, 'Échographie pelvienne', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-03 15:06:40', NULL),
(41, 3, 3, NULL, 3, 7, 'Radiographie thorax', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-03 15:06:40', NULL),
(42, 5, 4, NULL, 4, 35, 'Bilan lipidique complet', 'analyse', 'traite', 'Cholestérol total: 1 g/L [NORMAL ✓]\nHDL: 34 g/L [ÉLEVÉ ↑]\nLDL: 42 g/L [ÉLEVÉ ↑]\nTriglycérides: 1 g/L [NORMAL ✓]\nCholestérol non-HDL: 3 g/L [ÉLEVÉ ↑]', 'ERR', NULL, '2026-06-05 15:49:34', '2026-06-05 15:50:54'),
(43, 5, 4, NULL, 4, 19, 'Glycémie', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(44, 5, 4, NULL, 4, 34, 'Hémoculture', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(45, 5, 4, NULL, 4, 29, 'Sérologie VIH', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(46, 5, 4, NULL, 4, 21, 'Transaminases (ALAT/ASAT)', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(47, 5, 4, NULL, 4, 36, 'TSH (Thyroïde)', 'analyse', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(48, 5, 4, NULL, 4, 42, 'Échographie obstétricale', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(49, 5, 4, NULL, 4, 10, 'Mammographie', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(50, 5, 4, NULL, 4, 38, 'Radiographie thorax', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL),
(51, 5, 4, NULL, 4, 44, 'Scanner cérébral', 'imagerie', 'en_attente', NULL, NULL, NULL, '2026-06-05 15:49:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE `dossiers` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `motif_consultation` text DEFAULT NULL,
  `type_dossier` enum('consultation','urgence','reference') DEFAULT 'consultation',
  `statut` enum('en_attente','en_consultation','hospitalise','cloture') DEFAULT 'en_attente',
  `date_ouverture` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dossiers`
--

INSERT INTO `dossiers` (`id`, `patient_id`, `motif_consultation`, `type_dossier`, `statut`, `date_ouverture`) VALUES
(1, 1, NULL, 'consultation', 'en_attente', '2026-05-31 19:23:28'),
(2, 2, 'ttt', 'consultation', 'en_attente', '2026-06-02 02:45:54'),
(3, 3, NULL, 'consultation', 'cloture', '2026-06-03 01:05:48'),
(4, 3, 'ddddd', 'consultation', 'en_attente', '2026-06-04 06:52:46'),
(5, 4, NULL, 'consultation', 'en_attente', '2026-06-05 15:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `enquetes`
--

CREATE TABLE `enquetes` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `tabagisme_type` varchar(50) DEFAULT NULL,
  `tabagisme_quantite` decimal(4,1) DEFAULT NULL,
  `alcool` decimal(4,1) DEFAULT NULL,
  `antecedents` text DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `enquetes`
--

INSERT INTO `enquetes` (`id`, `dossier_id`, `tabagisme_type`, `tabagisme_quantite`, `alcool`, `antecedents`, `allergies`, `created_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, '2026-05-31 19:23:28'),
(2, 1, NULL, NULL, NULL, NULL, NULL, '2026-06-01 03:55:45'),
(3, 2, NULL, NULL, NULL, NULL, NULL, '2026-06-01 03:56:33'),
(4, 3, NULL, NULL, NULL, NULL, NULL, '2026-06-03 01:05:48'),
(5, 5, 'Tabac a chiquer', 7.0, 7.0, 'FFFF', 'JJJJ', '2026-06-05 15:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `statut` enum('en_attente','payee','annulee') DEFAULT 'en_attente',
  `payee_le` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `factures`
--

INSERT INTO `factures` (`id`, `dossier_id`, `patient_id`, `total`, `statut`, `payee_le`, `created_at`) VALUES
(1, 1, 1, 38500.00, 'payee', '2026-05-31 22:40:25', '2026-05-31 22:39:51'),
(2, 2, 2, 119000.00, 'payee', '2026-06-02 18:50:08', '2026-06-01 03:57:11'),
(3, 3, 3, 33000.00, 'en_attente', NULL, '2026-06-03 15:06:40'),
(4, 5, 4, 129500.00, 'payee', '2026-06-05 15:49:50', '2026-06-05 15:49:34');

-- --------------------------------------------------------

--
-- Structure de la table `facture_lignes`
--

CREATE TABLE `facture_lignes` (
  `id` int(11) NOT NULL,
  `facture_id` int(11) NOT NULL,
  `tarif_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `facture_lignes`
--

INSERT INTO `facture_lignes` (`id`, `facture_id`, `tarif_id`) VALUES
(6, 1, 6),
(7, 1, 1),
(8, 1, 8),
(9, 1, 10),
(10, 1, 11),
(51, 2, 11),
(52, 2, 12),
(53, 2, 9),
(54, 2, 8),
(55, 2, 5),
(56, 2, 2),
(57, 2, 54),
(58, 2, 34),
(59, 2, 19),
(60, 2, 40),
(61, 2, 38),
(62, 2, 51),
(63, 2, 62),
(64, 2, 10),
(65, 2, 24),
(66, 2, 35),
(67, 3, 16),
(68, 3, 24),
(69, 3, 3),
(70, 3, 41),
(71, 3, 7),
(72, 3, 50),
(73, 3, 63),
(74, 4, 14),
(75, 4, 35),
(76, 4, 34),
(77, 4, 19),
(78, 4, 29),
(79, 4, 21),
(80, 4, 36),
(81, 4, 10),
(82, 4, 42),
(83, 4, 38),
(84, 4, 44),
(85, 4, 54),
(86, 4, 50),
(87, 4, 13),
(88, 4, 59);

-- --------------------------------------------------------

--
-- Structure de la table `imageries`
--

CREATE TABLE `imageries` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `nom_examen` varchar(255) NOT NULL,
  `compte_rendu` text DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `code_patient` varchar(50) NOT NULL,
  `type_piece` varchar(20) NOT NULL,
  `numero_piece` varchar(50) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(100) DEFAULT NULL,
  `sexe` enum('M','F') NOT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `situation_matrimoniale` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `contact_urgence` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `code_patient`, `type_piece`, `numero_piece`, `nom`, `prenom`, `date_naissance`, `lieu_naissance`, `sexe`, `profession`, `situation_matrimoniale`, `religion`, `adresse`, `telephone`, `contact_urgence`, `created_at`) VALUES
(1, '1234', 'CNI', '1234', 'KIDONNIN', 'Oscar', '2026-05-28', 'AZ', 'M', NULL, 'Celibataire', NULL, 'Cotonou', NULL, NULL, '2026-05-31 19:16:44'),
(2, '12345', 'CNI', '12345', 'Sossou', 'Sisse', NULL, NULL, 'M', NULL, 'Celibataire', NULL, NULL, NULL, NULL, '2026-06-01 03:56:33'),
(3, '5555', 'CNI', '5555', 'TISSA', 'Soda', NULL, NULL, 'M', NULL, 'Celibataire', NULL, NULL, NULL, NULL, '2026-06-03 01:05:48'),
(4, '1234567890', 'CNI', '1234567890', 'VINCENT DE PAUL', 'HHH', '2026-06-22', 'Cotonou', 'M', 'hhh', 'Celibataire', 'jjj', 'uuu', '0169662964', '555', '2026-06-05 15:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `medicament` varchar(255) NOT NULL,
  `posologie` varchar(255) DEFAULT NULL,
  `duree` varchar(100) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `effectue` tinyint(1) DEFAULT 0,
  `effectue_par` varchar(150) DEFAULT NULL,
  `effectue_le` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `dossier_id`, `medicament`, `posologie`, `duree`, `instructions`, `effectue`, `effectue_par`, `effectue_le`, `created_at`) VALUES
(1, 2, 'ggg', 'hh', 'fff', 'jjj', 0, NULL, NULL, '2026-06-01 21:42:49'),
(2, 2, 'hhhh', 'ggg', '', '', 0, NULL, NULL, '2026-06-02 02:52:19'),
(3, 5, 'KJQJEF', 'NQCBN', 'JDSSJ', 'NDSD', 0, NULL, NULL, '2026-06-05 15:48:52');

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

CREATE TABLE `resultats` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `technicien_id` int(11) DEFAULT NULL,
  `type` enum('analyse','imagerie') NOT NULL,
  `nom_examen` varchar(255) NOT NULL,
  `resultat` text DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `statut` enum('en_attente','lu') DEFAULT 'en_attente',
  `lu_le` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `resultats`
--

INSERT INTO `resultats` (`id`, `dossier_id`, `patient_id`, `technicien_id`, `type`, `nom_examen`, `resultat`, `observations`, `fichier`, `statut`, `lu_le`, `created_at`) VALUES
(1, 1, 1, 6, 'analyse', 'Bilan hépatique', 'fff', 'fff', NULL, 'lu', '2026-05-31 23:12:58', '2026-05-31 23:12:40'),
(2, 2, 2, 6, 'analyse', 'ECBU', 'gggg', 'hhh', NULL, 'lu', '2026-06-01 03:57:57', '2026-06-01 03:57:36'),
(3, 2, 2, 6, 'analyse', 'Glycémie', 'Glycémie à jeun: 12 g/L [ÉLEVÉ ↑]\nGlycémie post-prandiale: 1 g/L [NORMAL ✓]\nGlycémie à jeun: 12 g/L [ÉLEVÉ ↑]\nGlycémie post-prandiale: 1 g/L [NORMAL ✓]', NULL, NULL, 'lu', '2026-06-01 05:00:38', '2026-06-01 05:00:20'),
(4, 2, 2, 6, 'analyse', 'ECBU', 'Leucocytes urinaires: 23 /mm³ [ÉLEVÉ ↑]\nHématies urinaires: 5 /mm³ [NORMAL ✓]\nBactéries: -2 /champ [BAS ↓]\nLeucocytes urinaires: 23 /mm³ [ÉLEVÉ ↑]\nHématies urinaires: 5 /mm³ [NORMAL ✓]', NULL, NULL, 'lu', '2026-06-01 10:18:10', '2026-06-01 10:17:41'),
(5, 2, 2, 7, 'imagerie', 'Mammographie', 'hhhh', NULL, 'resultat_1780346476297.jpg', 'lu', '2026-06-01 21:41:31', '2026-06-01 21:41:16'),
(6, 2, 2, 6, 'analyse', 'ECBU', 'Leucocytes urinaires: 3 /mm³ [NORMAL ✓]\nHématies urinaires: 44 /mm³ [ÉLEVÉ ↑]\nBactéries: 2 /champ [ÉLEVÉ ↑]\nLeucocytes urinaires: 3 /mm³ [NORMAL ✓]\nHématies urinaires: 44 /mm³ [ÉLEVÉ ↑]', NULL, NULL, 'lu', '2026-06-02 18:44:11', '2026-06-02 03:20:00'),
(7, 2, 2, 6, 'analyse', 'Glycémie', 'Glycémie à jeun: -2 g/L [BAS ↓]\nGlycémie post-prandiale: 2 g/L [ÉLEVÉ ↑]\nGlycémie à jeun: -2 g/L [BAS ↓]\nGlycémie post-prandiale: 2 g/L [ÉLEVÉ ↑]\nGlycémie à jeun: -2 g/L [BAS ↓]\nGlycémie post-prandiale: 2 g/L [ÉLEVÉ ↑]', NULL, NULL, 'en_attente', NULL, '2026-06-03 15:08:07'),
(8, 3, 3, 6, 'analyse', 'NFS (Numération Formule Sanguine)', 'Hémoglobine (Homme): 2 g/dL [BAS ↓]\nHémoglobine (Femme): 4 g/dL [BAS ↓]\nLeucocytes: —\nPlaquettes: —\nHématocrite (Homme): 5 % [BAS ↓]\nHématocrite (Femme): 23 % [BAS ↓]\nVGM: —\nHémoglobine Homme: 10 g/dL [BAS ↓]\nHémoglobine Femme: 14 g/dL [NORMAL ✓]\nLeucocytes: —\nPlaquettes: —\nHématocrite Homme: —\nHématocrite Femme: —\nVGM: —\nHémoglobine: —\nGlobules rouges: —\nGlobules blancs: —\nPlaquettes: —\nHématocrite: —\nVGM: —\nTCMH: —', NULL, NULL, 'lu', '2026-06-03 15:09:24', '2026-06-03 15:09:06'),
(9, 5, 4, 6, 'analyse', 'Bilan lipidique complet', 'Cholestérol total: 1 g/L [NORMAL ✓]\nHDL: 34 g/L [ÉLEVÉ ↑]\nLDL: 42 g/L [ÉLEVÉ ↑]\nTriglycérides: 1 g/L [NORMAL ✓]\nCholestérol non-HDL: 3 g/L [ÉLEVÉ ↑]', 'ERR', NULL, 'lu', '2026-06-05 15:51:35', '2026-06-05 15:50:54');

-- --------------------------------------------------------

--
-- Structure de la table `soins`
--

CREATE TABLE `soins` (
  `id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `observations` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `soins`
--

INSERT INTO `soins` (`id`, `dossier_id`, `description`, `observations`, `created_at`) VALUES
(1, 2, 'Pansement simple, Perfusion', 'Prescrit par Dr. Salomon', '2026-06-01 21:19:25'),
(2, 2, 'Pansement simple, Perfusion', 'ggggg', '2026-06-02 02:54:28'),
(3, 2, 'Pansement simple, Perfusion', 'Prescrit par Dr. Salomon', '2026-06-02 03:11:46'),
(4, 2, 'Glycémie capillaire, Injection intraveineuse, Pansement simple, Pansement simple, Perfusion', 'Prescrit par Dr. Salomon', '2026-06-02 03:18:00'),
(5, 3, 'Injection intramusculaire, Tension artérielle + surveillance', 'Prescrit par Dr. Salomon', '2026-06-03 15:06:40'),
(6, 5, 'Injection IM, Injection intramusculaire, Oxygénothérapie, Pansement simple', 'Prescrit par Dr. Salomon', '2026-06-05 15:49:34'),
(7, 5, 'Injection IM, Injection intramusculaire, Oxygénothérapie, Pansement simple', 'UIYY', '2026-06-05 15:52:35');

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

CREATE TABLE `tarifs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `categorie` enum('consultation','analyse','imagerie','traitement') NOT NULL,
  `prix` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tarifs`
--

INSERT INTO `tarifs` (`id`, `nom`, `categorie`, `prix`) VALUES
(1, 'Consultation générale', 'consultation', 3000.00),
(2, 'Consultation spécialisée', 'consultation', 5000.00),
(3, 'NFS (Numération Formule Sanguine)', 'analyse', 4000.00),
(4, 'Glycémie', 'analyse', 2000.00),
(5, 'ECBU', 'analyse', 3500.00),
(6, 'Bilan hépatique', 'analyse', 6000.00),
(7, 'Radiographie thorax', 'imagerie', 8000.00),
(8, 'Échographie abdominale', 'imagerie', 12000.00),
(9, 'Scanner abdominal', 'imagerie', 35000.00),
(10, 'Mammographie', 'imagerie', 15000.00),
(11, 'Perfusion', 'traitement', 2500.00),
(12, 'Pansement simple', 'traitement', 1500.00),
(13, 'Injection IM', 'traitement', 1000.00),
(14, 'Consultation générale', 'consultation', 3000.00),
(15, 'Consultation spécialisée', 'consultation', 5000.00),
(16, 'Consultation de suivi', 'consultation', 2000.00),
(17, 'Consultation urgence', 'consultation', 7000.00),
(18, 'NFS (Numération Formule Sanguine)', 'analyse', 5000.00),
(19, 'Glycémie', 'analyse', 2000.00),
(20, 'Créatinine', 'analyse', 3000.00),
(21, 'Transaminases (ALAT/ASAT)', 'analyse', 4000.00),
(22, 'CRP (Protéine C-Réactive)', 'analyse', 3500.00),
(23, 'Urée sanguine', 'analyse', 2500.00),
(24, 'Acide urique', 'analyse', 2500.00),
(25, 'Cholestérol total', 'analyse', 3000.00),
(26, 'Triglycérides', 'analyse', 3000.00),
(27, 'Ionogramme sanguin', 'analyse', 6000.00),
(28, 'Groupe sanguin / Rhésus', 'analyse', 2000.00),
(29, 'Sérologie VIH', 'analyse', 5000.00),
(30, 'Sérologie Hépatite B', 'analyse', 5000.00),
(31, 'Sérologie Hépatite C', 'analyse', 5000.00),
(32, 'Goutte épaisse / Frottis', 'analyse', 3000.00),
(33, 'ECBU (Examen Cyto-Bactériologique)', 'analyse', 4000.00),
(34, 'Hémoculture', 'analyse', 6000.00),
(35, 'Bilan lipidique complet', 'analyse', 7000.00),
(36, 'TSH (Thyroïde)', 'analyse', 6000.00),
(37, 'PSA (Prostate)', 'analyse', 6000.00),
(38, 'Radiographie thorax', 'imagerie', 8000.00),
(39, 'Radiographie abdomen', 'imagerie', 8000.00),
(40, 'Échographie abdominale', 'imagerie', 15000.00),
(41, 'Échographie pelvienne', 'imagerie', 15000.00),
(42, 'Échographie obstétricale', 'imagerie', 15000.00),
(43, 'Échographie cardiaque', 'imagerie', 20000.00),
(44, 'Scanner cérébral', 'imagerie', 50000.00),
(45, 'Scanner thoracique', 'imagerie', 50000.00),
(46, 'Scanner abdomino-pelvien', 'imagerie', 55000.00),
(47, 'IRM cérébrale', 'imagerie', 80000.00),
(48, 'Mammographie', 'imagerie', 20000.00),
(49, 'Ostéodensitométrie', 'imagerie', 25000.00),
(50, 'Injection intramusculaire', 'traitement', 1000.00),
(51, 'Injection intraveineuse', 'traitement', 1500.00),
(52, 'Perfusion simple', 'traitement', 3000.00),
(53, 'Perfusion avec médicaments', 'traitement', 5000.00),
(54, 'Pansement simple', 'traitement', 1500.00),
(55, 'Pansement complexe', 'traitement', 3000.00),
(56, 'Suture plaie', 'traitement', 5000.00),
(57, 'Ablation de sutures', 'traitement', 2000.00),
(58, 'Sondage urinaire', 'traitement', 4000.00),
(59, 'Oxygénothérapie', 'traitement', 5000.00),
(60, 'Nébulisation', 'traitement', 2500.00),
(61, 'ECG (Électrocardiogramme)', 'traitement', 5000.00),
(62, 'Glycémie capillaire', 'traitement', 1000.00),
(63, 'Tension artérielle + surveillance', 'traitement', 500.00);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` enum('accueil','infirmier','medecin','admin','caissier','technicien_labo','technicien_imagerie','patient') NOT NULL,
  `structure` varchar(150) DEFAULT NULL,
  `statut` enum('actif','desactive') DEFAULT 'actif',
  `created_at` datetime DEFAULT current_timestamp(),
  `patient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `mot_de_passe`, `role`, `structure`, `statut`, `created_at`, `patient_id`) VALUES
(1, 'Admin', 'SGDP', 'admin@sgdp.com', '$2b$10$lztUj1Zd2GMIFQdgAAnahuldqDdRY1yDVGMgoMcajc7PILTeKsVgW', 'admin', NULL, 'actif', '2026-05-31 19:09:10', NULL),
(2, 'Salomon', 'Toure', 'medecin@sgdp.bj', '$2b$10$26AEVTUTaEiNeltxLuAtqeLTsZsHAMRehqdK40Z4JtfwtMQRXRc4q', 'medecin', '', 'actif', '2026-05-31 19:12:57', NULL),
(3, 'Soure', 'TOURE', 'acceuil@sgdp.bj', '$2b$10$IGMpBH5/z29AAtOzoGddkussZGnAvBuoSq89GtlmIk0i8cwEmWSuK', 'accueil', '', 'actif', '2026-05-31 19:13:34', NULL),
(4, 'TOJA', 'Tigro', 'caissier2@sgdp.bj', '$2b$10$zIKsln8QShNB4riNXW/Hh.4RQNBCZwkM70EeIKYp7RSBWV1KFm.hK', 'caissier', '', 'actif', '2026-05-31 19:14:30', NULL),
(5, 'TAGODU', 'Fiacre', 'infirmier@sgdp.bj', '$2b$10$GrDgumxuU5Vo6/r9O/saueRAEZo.ETT3fHJMZ783YkB6.NGstbeUC', 'infirmier', '', 'actif', '2026-05-31 19:15:06', NULL),
(6, 'SOSSOU', 'SAID', 'technicienlabo@sgdp.bj', '$2b$10$3zfAwNHog01eOlbZGGdKNO.MUcygO8vpbHvi4LhwLDTlIFGf5Dl02', 'technicien_labo', '', 'actif', '2026-05-31 22:41:38', NULL),
(7, 'IMASSE', 'Saer', 'technicienImagerie@sgdp.bj', '$2b$10$hrb33H.ie.8DY/hYTxwOJ.m5pipSaEuNyYxolPMOdZ6X0uXmFjsaa', 'technicien_imagerie', '', 'actif', '2026-05-31 22:44:45', NULL),
(8, 'TISSA', 'Soda', 'Patient@gmail.com', '$2b$10$biXnH41z7lmeOzBBgc18MO/fdclOaz6v3qLrk8YPznwxdLTutZpy2', 'patient', NULL, 'actif', '2026-06-03 01:06:56', 3),
(9, 'TISSA', 'Soda', 'Patient2@gmail.com', '$2b$10$lLF3gcNSTc7.nLJsGOBvt.eO74y1dqnYGdY3T1phy0w9kCW4pgWJm', 'patient', NULL, 'actif', '2026-06-03 07:03:25', 3),
(10, 'VINCENT DE PAUL', 'HHH', 'AAAA@gmail.com', '$2b$10$ekFNZpDma7wnW0eSN8VYMOSYH4uWomKNyQUN5fyQK4XTswa6ry/LW', 'patient', NULL, 'actif', '2026-06-05 15:54:26', 4);

-- --------------------------------------------------------

--
-- Structure de la table `valeurs_normales`
--

CREATE TABLE `valeurs_normales` (
  `id` int(11) NOT NULL,
  `nom_examen` varchar(255) NOT NULL,
  `parametre` varchar(255) NOT NULL,
  `valeur_min` decimal(10,3) DEFAULT NULL,
  `valeur_max` decimal(10,3) DEFAULT NULL,
  `unite` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `valeurs_normales`
--

INSERT INTO `valeurs_normales` (`id`, `nom_examen`, `parametre`, `valeur_min`, `valeur_max`, `unite`, `description`) VALUES
(1, 'NFS (Numération Formule Sanguine)', 'Hémoglobine (Homme)', 13.000, 18.000, 'g/dL', NULL),
(2, 'NFS (Numération Formule Sanguine)', 'Hémoglobine (Femme)', 12.000, 16.000, 'g/dL', NULL),
(3, 'NFS (Numération Formule Sanguine)', 'Leucocytes', 4000.000, 10000.000, '/mm³', NULL),
(4, 'NFS (Numération Formule Sanguine)', 'Plaquettes', 150000.000, 400000.000, '/mm³', NULL),
(5, 'NFS (Numération Formule Sanguine)', 'Hématocrite (Homme)', 40.000, 54.000, '%', NULL),
(6, 'NFS (Numération Formule Sanguine)', 'Hématocrite (Femme)', 36.000, 47.000, '%', NULL),
(7, 'NFS (Numération Formule Sanguine)', 'VGM', 80.000, 100.000, 'fL', NULL),
(8, 'Glycémie', 'Glycémie à jeun', 0.700, 1.100, 'g/L', NULL),
(9, 'Glycémie', 'Glycémie post-prandiale', 0.700, 1.400, 'g/L', NULL),
(10, 'ECBU', 'Leucocytes urinaires', 0.000, 10.000, '/mm³', NULL),
(11, 'ECBU', 'Hématies urinaires', 0.000, 5.000, '/mm³', NULL),
(12, 'ECBU', 'Bactéries', 0.000, 0.000, '/champ', 'Absence souhaitée'),
(13, 'Bilan hépatique', 'ASAT (TGO)', 10.000, 40.000, 'UI/L', NULL),
(14, 'Bilan hépatique', 'ALAT (TGP)', 10.000, 40.000, 'UI/L', NULL),
(15, 'Bilan hépatique', 'Bilirubine totale', 5.000, 17.000, 'µmol/L', NULL),
(16, 'Bilan hépatique', 'Bilirubine directe', 0.000, 5.000, 'µmol/L', NULL),
(17, 'Bilan hépatique', 'Gamma GT', 10.000, 50.000, 'UI/L', NULL),
(18, 'Bilan rénal', 'Créatinine (Homme)', 7.000, 13.000, 'mg/L', NULL),
(19, 'Bilan rénal', 'Créatinine (Femme)', 6.000, 10.000, 'mg/L', NULL),
(20, 'Bilan rénal', 'Urée', 0.150, 0.450, 'g/L', NULL),
(21, 'Bilan rénal', 'Acide urique (Homme)', 35.000, 70.000, 'mg/L', NULL),
(22, 'Bilan rénal', 'Acide urique (Femme)', 25.000, 60.000, 'mg/L', NULL),
(23, 'Ionogramme', 'Sodium (Na+)', 135.000, 145.000, 'mEq/L', NULL),
(24, 'Ionogramme', 'Potassium (K+)', 3.500, 5.000, 'mEq/L', NULL),
(25, 'Ionogramme', 'Chlore (Cl-)', 96.000, 106.000, 'mEq/L', NULL),
(26, 'Bilan lipidique', 'Cholestérol total', 1.500, 2.000, 'g/L', NULL),
(27, 'Bilan lipidique', 'HDL Cholestérol', 0.400, 0.600, 'g/L', NULL),
(28, 'Bilan lipidique', 'LDL Cholestérol', 0.000, 1.300, 'g/L', NULL),
(29, 'Bilan lipidique', 'Triglycérides', 0.500, 1.500, 'g/L', NULL),
(30, 'NFS (Numération Formule Sanguine)', 'Hémoglobine Homme', 13.000, 18.000, 'g/dL', NULL),
(31, 'NFS (Numération Formule Sanguine)', 'Hémoglobine Femme', 12.000, 16.000, 'g/dL', NULL),
(32, 'NFS (Numération Formule Sanguine)', 'Leucocytes', 4000.000, 10000.000, '/mm³', NULL),
(33, 'NFS (Numération Formule Sanguine)', 'Plaquettes', 150000.000, 400000.000, '/mm³', NULL),
(34, 'NFS (Numération Formule Sanguine)', 'Hématocrite Homme', 40.000, 54.000, '%', NULL),
(35, 'NFS (Numération Formule Sanguine)', 'Hématocrite Femme', 36.000, 47.000, '%', NULL),
(36, 'NFS (Numération Formule Sanguine)', 'VGM', 80.000, 100.000, 'fL', NULL),
(37, 'Glycémie', 'Glycémie à jeun', 0.700, 1.100, 'g/L', NULL),
(38, 'Glycémie', 'Glycémie post-prandiale', 0.700, 1.400, 'g/L', NULL),
(39, 'ECBU', 'Leucocytes urinaires', 0.000, 10.000, '/mm³', NULL),
(40, 'ECBU', 'Hématies urinaires', 0.000, 5.000, '/mm³', NULL),
(41, 'Bilan hépatique', 'ASAT', 10.000, 40.000, 'UI/L', NULL),
(42, 'Bilan hépatique', 'ALAT', 10.000, 40.000, 'UI/L', NULL),
(43, 'Bilan hépatique', 'Bilirubine totale', 5.000, 17.000, 'µmol/L', NULL),
(44, 'Bilan hépatique', 'Bilirubine directe', 0.000, 5.000, 'µmol/L', NULL),
(45, 'Bilan hépatique', 'Gamma GT', 10.000, 50.000, 'UI/L', NULL),
(46, 'Bilan rénal', 'Créatinine Homme', 7.000, 13.000, 'mg/L', NULL),
(47, 'Bilan rénal', 'Créatinine Femme', 6.000, 10.000, 'mg/L', NULL),
(48, 'Bilan rénal', 'Urée', 0.150, 0.450, 'g/L', NULL),
(49, 'Bilan rénal', 'Acide urique Homme', 35.000, 70.000, 'mg/L', NULL),
(50, 'Bilan rénal', 'Acide urique Femme', 25.000, 60.000, 'mg/L', NULL),
(51, 'Ionogramme', 'Sodium Na+', 135.000, 145.000, 'mEq/L', NULL),
(52, 'Ionogramme', 'Potassium K+', 3.500, 5.000, 'mEq/L', NULL),
(53, 'Ionogramme', 'Chlore Cl-', 96.000, 106.000, 'mEq/L', NULL),
(54, 'Bilan lipidique', 'Cholestérol total', 1.500, 2.000, 'g/L', NULL),
(55, 'Bilan lipidique', 'HDL Cholestérol', 0.400, 0.600, 'g/L', NULL),
(56, 'Bilan lipidique', 'LDL Cholestérol', 0.000, 1.300, 'g/L', NULL),
(57, 'Bilan lipidique', 'Triglycérides', 0.500, 1.500, 'g/L', NULL),
(58, 'Bilan hépatique', 'ALAT (GPT)', 0.000, 40.000, 'UI/L', NULL),
(59, 'Bilan hépatique', 'ASAT (GOT)', 0.000, 40.000, 'UI/L', NULL),
(60, 'Bilan hépatique', 'Bilirubine totale', 0.000, 12.000, 'mg/L', NULL),
(61, 'Bilan hépatique', 'Bilirubine directe', 0.000, 4.000, 'mg/L', NULL),
(62, 'Bilan hépatique', 'GGT', 0.000, 50.000, 'UI/L', NULL),
(63, 'Bilan hépatique', 'Phosphatases alcalines', 40.000, 130.000, 'UI/L', NULL),
(64, 'NFS (Numération Formule Sanguine)', 'Hémoglobine', 12.000, 17.000, 'g/dL', NULL),
(65, 'NFS (Numération Formule Sanguine)', 'Globules rouges', 4.200, 5.900, 'M/mm³', NULL),
(66, 'NFS (Numération Formule Sanguine)', 'Globules blancs', 4000.000, 10000.000, '/mm³', NULL),
(67, 'NFS (Numération Formule Sanguine)', 'Plaquettes', 150000.000, 400000.000, '/mm³', NULL),
(68, 'NFS (Numération Formule Sanguine)', 'Hématocrite', 36.000, 52.000, '%', NULL),
(69, 'NFS (Numération Formule Sanguine)', 'VGM', 80.000, 100.000, 'fL', NULL),
(70, 'NFS (Numération Formule Sanguine)', 'TCMH', 27.000, 32.000, 'pg', NULL),
(71, 'Glycémie', 'Glycémie à jeun', 0.700, 1.100, 'g/L', NULL),
(72, 'Glycémie', 'Glycémie post-prandiale', 0.700, 1.400, 'g/L', NULL),
(73, 'Créatinine', 'Créatinine', 6.000, 12.000, 'mg/L', NULL),
(74, 'Créatinine', 'DFG estimé', 90.000, 130.000, 'mL/min/1.73m²', NULL),
(75, 'Transaminases (ALAT/ASAT)', 'ALAT (GPT)', 0.000, 40.000, 'UI/L', NULL),
(76, 'Transaminases (ALAT/ASAT)', 'ASAT (GOT)', 0.000, 40.000, 'UI/L', NULL),
(77, 'CRP (Protéine C-Réactive)', 'CRP', 0.000, 6.000, 'mg/L', NULL),
(78, 'Urée sanguine', 'Urée', 0.150, 0.450, 'g/L', NULL),
(79, 'Acide urique', 'Acide urique', 20.000, 55.000, 'mg/L', NULL),
(80, 'Cholestérol total', 'Cholestérol total', 0.000, 2.000, 'g/L', NULL),
(81, 'Cholestérol total', 'HDL', 0.400, 0.600, 'g/L', NULL),
(82, 'Cholestérol total', 'LDL', 0.000, 1.600, 'g/L', NULL),
(83, 'Triglycérides', 'Triglycérides', 0.000, 1.500, 'g/L', NULL),
(84, 'Ionogramme sanguin', 'Sodium (Na+)', 135.000, 145.000, 'mEq/L', NULL),
(85, 'Ionogramme sanguin', 'Potassium (K+)', 3.500, 5.000, 'mEq/L', NULL),
(86, 'Ionogramme sanguin', 'Chlore (Cl-)', 95.000, 105.000, 'mEq/L', NULL),
(87, 'Ionogramme sanguin', 'Bicarbonates', 22.000, 28.000, 'mEq/L', NULL),
(88, 'Ionogramme sanguin', 'Calcium (Ca++)', 85.000, 105.000, 'mg/L', NULL),
(89, 'Ionogramme sanguin', 'Phosphore', 25.000, 45.000, 'mg/L', NULL),
(90, 'Groupe sanguin / Rhésus', 'Groupe ABO', 0.000, 0.000, 'A · B · AB · O', NULL),
(91, 'Groupe sanguin / Rhésus', 'Rhésus', 0.000, 0.000, 'Positif (+) ou Négatif (−)', NULL),
(92, 'Sérologie VIH', 'Anticorps VIH 1/2', 0.000, 0.000, 'Négatif', NULL),
(93, 'Sérologie Hépatite B', 'AgHBs', 0.000, 0.000, 'Négatif', NULL),
(94, 'Sérologie Hépatite B', 'Ac HBs', 0.000, 0.000, 'Positif si vacciné', NULL),
(95, 'Sérologie Hépatite B', 'Ac HBc', 0.000, 0.000, 'Négatif', NULL),
(96, 'Sérologie Hépatite C', 'Ac VHC', 0.000, 0.000, 'Négatif', NULL),
(97, 'Goutte épaisse / Frottis', 'Plasmodium', 0.000, 0.000, 'Négatif (absence de parasites)', NULL),
(98, 'ECBU (Examen Cyto-Bactériologique)', 'Leucocytes', 0.000, 10000.000, '/mL', NULL),
(99, 'ECBU (Examen Cyto-Bactériologique)', 'Hématies', 0.000, 5000.000, '/mL', NULL),
(100, 'ECBU (Examen Cyto-Bactériologique)', 'Bactéries', 0.000, 100000.000, 'UFC/mL', NULL),
(101, 'Hémoculture', 'Croissance bactérienne', 0.000, 0.000, 'Négative', NULL),
(102, 'Bilan lipidique complet', 'Cholestérol total', 0.000, 2.000, 'g/L', NULL),
(103, 'Bilan lipidique complet', 'HDL', 0.400, 0.600, 'g/L', NULL),
(104, 'Bilan lipidique complet', 'LDL', 0.000, 1.600, 'g/L', NULL),
(105, 'Bilan lipidique complet', 'Triglycérides', 0.000, 1.500, 'g/L', NULL),
(106, 'Bilan lipidique complet', 'Cholestérol non-HDL', 0.000, 1.600, 'g/L', NULL),
(107, 'TSH (Thyroïde)', 'TSH', 0.400, 4.000, 'mUI/L', NULL),
(108, 'TSH (Thyroïde)', 'T3 libre', 2.300, 4.200, 'pg/mL', NULL),
(109, 'TSH (Thyroïde)', 'T4 libre', 0.890, 1.760, 'ng/dL', NULL),
(110, 'PSA (Prostate)', 'PSA total', 0.000, 4.000, 'ng/mL', NULL),
(111, 'PSA (Prostate)', 'PSA libre', 0.000, 0.000, '> 25% du PSA total', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `analyses`
--
ALTER TABLE `analyses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `constantes`
--
ALTER TABLE `constantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `demandes_technicien`
--
ALTER TABLE `demandes_technicien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `technicien_id` (`technicien_id`);

--
-- Index pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Index pour la table `enquetes`
--
ALTER TABLE `enquetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Index pour la table `facture_lignes`
--
ALTER TABLE `facture_lignes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facture_id` (`facture_id`),
  ADD KEY `tarif_id` (`tarif_id`);

--
-- Index pour la table `imageries`
--
ALTER TABLE `imageries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_patient` (`code_patient`),
  ADD UNIQUE KEY `numero_piece` (`numero_piece`);

--
-- Index pour la table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `resultats`
--
ALTER TABLE `resultats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `technicien_id` (`technicien_id`);

--
-- Index pour la table `soins`
--
ALTER TABLE `soins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_patient_id` (`patient_id`);

--
-- Index pour la table `valeurs_normales`
--
ALTER TABLE `valeurs_normales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `analyses`
--
ALTER TABLE `analyses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `constantes`
--
ALTER TABLE `constantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `demandes_technicien`
--
ALTER TABLE `demandes_technicien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `dossiers`
--
ALTER TABLE `dossiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `enquetes`
--
ALTER TABLE `enquetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `facture_lignes`
--
ALTER TABLE `facture_lignes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `imageries`
--
ALTER TABLE `imageries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `resultats`
--
ALTER TABLE `resultats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `soins`
--
ALTER TABLE `soins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `valeurs_normales`
--
ALTER TABLE `valeurs_normales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `analyses`
--
ALTER TABLE `analyses`
  ADD CONSTRAINT `analyses_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `constantes`
--
ALTER TABLE `constantes`
  ADD CONSTRAINT `constantes_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `consultations_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `demandes_technicien`
--
ALTER TABLE `demandes_technicien`
  ADD CONSTRAINT `demandes_technicien_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`),
  ADD CONSTRAINT `demandes_technicien_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `demandes_technicien_ibfk_3` FOREIGN KEY (`technicien_id`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD CONSTRAINT `dossiers_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `enquetes`
--
ALTER TABLE `enquetes`
  ADD CONSTRAINT `enquetes_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `factures`
--
ALTER TABLE `factures`
  ADD CONSTRAINT `factures_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`),
  ADD CONSTRAINT `factures_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `facture_lignes`
--
ALTER TABLE `facture_lignes`
  ADD CONSTRAINT `facture_lignes_ibfk_1` FOREIGN KEY (`facture_id`) REFERENCES `factures` (`id`),
  ADD CONSTRAINT `facture_lignes_ibfk_2` FOREIGN KEY (`tarif_id`) REFERENCES `tarifs` (`id`);

--
-- Contraintes pour la table `imageries`
--
ALTER TABLE `imageries`
  ADD CONSTRAINT `imageries_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `resultats`
--
ALTER TABLE `resultats`
  ADD CONSTRAINT `resultats_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`),
  ADD CONSTRAINT `resultats_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `resultats_ibfk_3` FOREIGN KEY (`technicien_id`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `soins`
--
ALTER TABLE `soins`
  ADD CONSTRAINT `soins_ibfk_1` FOREIGN KEY (`dossier_id`) REFERENCES `dossiers` (`id`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
