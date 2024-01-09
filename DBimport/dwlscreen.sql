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
  `ID` int NOT NULL,
  `Vorname` varchar(25) NOT NULL,
  `Nachname` varchar(25) NOT NULL,
  `Anstelldatum` date NOT NULL,
  `Geburtstag` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `mitarbeiter`
--

INSERT INTO `mitarbeiter` (`ID`, `Vorname`, `Nachname`, `Anstelldatum`, `Geburtstag`) VALUES
(1, 'Alexander', 'Korsch', '2020-02-02', '1941-02-22'),
(2, 'Alexandra', '', '2024-04-02', '1988-12-28'),
(3, 'Amelie', 'Stegemann', '2023-04-19', '1998-04-30'),
(4, 'Andrea', 'Kamphus', '1989-08-02', '1970-06-13'),
(5, 'Andy', 'Poppink', '2021-09-20', '1995-07-14'),
(6, 'Anja', '', '1994-12-02', '1976-03-07'),
(7, 'Anke', 'Greiwe', '1994-06-02', '1971-07-20'),
(8, 'Anna', 'Trost', '2022-12-02', '1988-12-10'),
(9, 'Annika', 'Rogge', '2009-07-02', '1988-03-16'),
(10, 'Antonius', 'Dr. Bopp', '2022-04-02', '2022-04-12'),
(11, 'Beatrix', '', '1989-04-02', '1976-06-20'),
(12, 'Bernward', 'Wigger', '1985-02-02', '1945-08-19'),
(13, 'Berthold', 'Fiefhaus', '1986-03-02', '1942-04-12'),
(14, 'Bianca', 'Rosetti', '2007-06-02', '1943-03-31'),
(15, 'Carlo', 'Teichmann', '2021-04-02', '1972-02-01'),
(16, 'Carmen', 'Remberg', '1991-10-02', '1966-10-02'),
(17, '', 'Safar', '2022-08-09', '2004-01-30'),
(18, 'David', 'Theers', '2022-07-02', '1988-01-21'),
(19, 'Dennis', 'Afting', '2026-01-02', '1986-03-20'),
(20, 'Elke', 'Stroot', '2024-02-02', '1988-12-07'),
(21, 'Ernst-August', '', '1993-04-02', '1949-07-03'),
(22, 'Eva', 'Ostkamp', '2022-07-02', '1974-07-17'),
(23, 'Eva', '', '2023-04-22', '2001-01-01'),
(24, 'Gabi', 'Elfers', '1993-02-02', '1962-07-31'),
(25, 'Hannah', 'Schwakenberg', '2029-03-02', '1997-07-15'),
(26, 'Ilona', '', '2002-08-02', '1981-12-04'),
(27, 'Iunia', 'Eickhoff', '2021-02-02', '2000-03-30'),
(28, 'Jan', 'Sudke', '2020-12-02', '1921-12-18'),
(29, 'Jan-Hendrik', '', '2023-03-28', '2020-07-30'),
(30, 'Jennifer', 'Schulz', '2023-04-02', '1988-07-31'),
(31, 'Julia', 'Lauhoff', '2029-06-15', '1997-06-28'),
(32, 'Julia', 'Rattelsdorfer', '2022-02-02', '1981-10-30'),
(33, '', 'Zasche', '2002-03-02', '1968-07-14'),
(34, 'Katharina', 'Rick', '2027-07-02', '1992-07-06'),
(35, 'Kevin', 'Uzun', '2020-03-02', '1997-02-04'),
(36, 'Kristin', 'Brinker', '2022-06-02', '1988-03-29'),
(37, 'Lea Maria', 'Vortkamp-Zacchino', '2023-08-02', '2002-06-26'),
(38, 'Linda', '', '2023-12-02', '1995-02-28'),
(39, 'Manal', 'Kekheya', '2024-02-02', '1980-04-17'),
(40, 'Maria', '', '1978-08-02', '1962-02-23'),
(41, 'Maria', 'Heufert', '2002-12-15', '1981-02-06'),
(42, 'Maria Adelina', 'Martins Barbosa', '2029-10-12', '1959-12-28'),
(43, 'Maria Manuela', 'Ribeiro Barbosa', '2023-02-28', '2001-01-01'),
(44, 'Maria do Carmo', 'Carmo Barbosa', '2029-09-23', '1968-12-26'),
(45, 'Marianne', 'Rocker', '2003-06-16', '1961-07-26'),
(46, 'Marijke', 'Koelmann', '2023-04-16', '1996-03-31'),
(47, 'Marion', '', '1999-03-02', '1973-09-26'),
(48, 'Marion', 'Rotert', '2029-09-23', '2019-03-20'),
(49, 'Martin', 'Robbe', '2028-08-02', '2000-07-18'),
(50, 'Marvin', 'Ferrari', '2029-08-02', '1999-07-12'),
(51, 'Mattes', 'Suntken', '2020-06-15', '1991-12-06'),
(52, 'Matthis', 'Helmer', '2024-08-02', '2004-07-30'),
(53, 'Maximilian', 'Elkemann', '2022-04-02', '1998-04-14'),
(54, 'Michelle', 'Berghaus', '2021-07-26', '1998-09-14'),
(55, 'Monika', '', '2000-07-18', '1988-12-23'),
(56, 'Monika', 'Wichmann', '2009-07-02', '1966-02-22'),
(57, 'Nadine', 'Matheja', '2023-03-15', '1984-11-12'),
(58, 'Nadine', 'Stippel', '2023-08-10', '1983-03-26'),
(59, 'Nadja', 'Merkel', '2020-08-02', '1988-02-17'),
(60, 'Ute', 'Schmidt', '1991-08-02', '1972-02-16'),
(61, 'Verena', 'Roling', '2028-07-02', '1985-03-22');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
