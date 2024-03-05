-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Erstellungszeit: 12. Dez 2023 um 15:32
-- Server-Version: 8.2.0
-- PHP-Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `dwlscreen`
--
CREATE DATABASE IF NOT EXISTS `dwlscreen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dwlscreen`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter`
--

CREATE TABLE `mitarbeiter` (
  `Vorname` varchar(25) NOT NULL,
  `Nachname` varchar(25) NOT NULL,
  `Anstelldatum` date NOT NULL,
  `Geburtstag` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `mitarbeiter`
--

INSERT INTO `mitarbeiter` (`Vorname`, `Nachname`, `Anstelldatum`, `Geburtstag`) VALUES
('Alexander', 'Korsch', '2020-02-02', '1941-02-22'),
('Alexandra', 'Test', '2024-04-02', '1988-12-28'),
('Zephyr', 'Schreiber', '2028-01-23', '1990-01-23'),
('Marten', 'Othmann', '2021-02-06', '1990-04-14'),
('Ron', 'Schottmeier', '2021-01-24', '1990-03-05'),
('Malte', 'Roevemeier', '2012-02-27', '1990-03-05'),
('Felix', 'Hilbers', '1991-03-05', '1990-01-24'),
('Frido', 'Stegemann', '2020-03-05', '1990-01-24');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mitarbeiter`
--
-- Die Zeile mit der Primärschlüsseldefinition wurde entfernt.

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
