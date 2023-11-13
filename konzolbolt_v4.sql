-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 05:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konzolbolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `jatekok`
--

CREATE TABLE `jatekok` (
  `Vonalkod_ID` int(11) NOT NULL,
  `Nev` varchar(255) NOT NULL,
  `Ar` int(11) NOT NULL,
  `Kiado` varchar(255) NOT NULL,
  `Kategoria` varchar(255) NOT NULL,
  `Platform` varchar(255) NOT NULL,
  `Elerhetoseg` int(11) NOT NULL,
  `Eletkor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `jatekok`
--

INSERT INTO `jatekok` (`Vonalkod_ID`, `Nev`, `Ar`, `Kiado`, `Kategoria`, `Platform`, `Elerhetoseg`, `Eletkor`) VALUES
(1, 'Dead Space', 11550, 'Motive Studio', 'horror', 'PS/WIN/X', 1, 18),
(2, 'Diablo 4\r\n', 25400, 'Blizzard Entertainment\r\n', 'ARPG\r\n', 'PS/WIN/X\r\n', 1, 16),
(3, 'Resident Evil 4 Remake\r\n', 16540, 'Capcom\r\n', 'horror\r\n', 'PS/WIN/X\r\n', 1, 18),
(4, 'Final Fantasy XVI\r\n', 20100, 'Square Enix\r\n', 'RPG\r\n', 'PS\r\n', 1, 16),
(5, 'Alan Wake 2\r\n', 16780, 'Epic Games\r\n', 'horror\r\n', 'PS/WIN/X\r\n', 1, 18),
(6, 'Metroid Prime Remastered\r\n', 15699, 'Retro Studios\r\n', 'action\r\n', 'Switch\r\n', 1, 12),
(7, 'Starfield\r\n', 24590, 'Bethesda Game Studios\r\n', 'sci-fi\r\n', 'WIN/X\r\n', 1, 16),
(8, 'Street Fighter\r\n', 21890, 'Capcom\r\n', 'fighting\r\n', 'PS/WIN/X\r\n', 1, 16),
(9, 'Forspoken\r\n', 22890, 'Luminous Productions\r\n', 'RPG\r\n', 'PS/WIN\r\n', 1, 16),
(10, 'Hogwarts Legacy\r\n', 18990, 'Avalanche Software\r\n', 'RPG\r\n', 'PS/WIN/X\r\n', 1, 16),
(11, 'Factorio', 10000, 'Webu', 'action', 'WIN', 1, 13),
(12, 'fcd', 1565, 'dsa', 'sd', 'fds', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kikolcsonzott_jatekok`
--

CREATE TABLE `kikolcsonzott_jatekok` (
  `Kolcsonzes_ID` int(11) NOT NULL,
  `Felhasznalo_ID` int(11) NOT NULL,
  `Jatek_ID` int(11) NOT NULL,
  `Kolcsonzes_datuma` date NOT NULL,
  `Kolcsonzott_napok` int(11) NOT NULL,
  `Lejart` tinyint(1) NOT NULL,
  `Visszahozas_datuma` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `kikolcsonzott_jatekok`
--

INSERT INTO `kikolcsonzott_jatekok` (`Kolcsonzes_ID`, `Felhasznalo_ID`, `Jatek_ID`, `Kolcsonzes_datuma`, `Kolcsonzott_napok`, `Lejart`, `Visszahozas_datuma`) VALUES
(1, 3, 10, '2023-10-30', 60, 0, '2023-11-13'),
(2, 2, 2, '2023-08-10', 14, 0, '2023-11-13'),
(3, 4, 7, '2023-09-30', 30, 0, '2023-11-13'),
(4, 4, 9, '2023-10-30', 90, 0, NULL),
(5, 8, 10, '2023-09-10', 23, 0, '2023-11-13'),
(6, 1, 5, '2023-10-10', 20, 0, '2023-11-13'),
(7, 1, 10, '2023-09-20', 90, 0, NULL),
(8, 9, 1, '2023-09-23', 7, 0, '2023-11-13'),
(9, 9, 4, '2023-09-30', 120, 0, '2023-11-13'),
(10, 3, 3, '2023-08-13', 30, 0, '2023-11-13'),
(11, 11, 6, '2023-11-13', 10, 0, '2023-11-13'),
(12, 4, 5, '2023-11-13', 10, 0, '2023-11-13'),
(13, 4, 3, '2023-11-13', 11, 0, '2023-11-13'),
(14, 8, 6, '2023-11-13', 10, 0, '2023-11-13'),
(15, 11, 11, '2023-11-13', 60, 0, '2023-11-13'),
(16, 11, 4, '2023-11-13', 40, 0, '2023-11-13'),
(17, 11, 6, '2023-11-13', 2, 0, '2023-11-13'),
(18, 4, 11, '2023-11-13', 2, 0, '2023-11-13'),
(19, 6, 8, '2023-11-13', 5, 0, '2023-11-13'),
(20, 11, 9, '2023-11-13', 5, 0, '2023-11-13'),
(21, 6, 10, '2023-11-13', 10, 0, NULL),
(22, 3, 9, '2023-11-13', 5, 0, '2023-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `vevok`
--

CREATE TABLE `vevok` (
  `Vevo_ID` int(11) NOT NULL,
  `Nev` varchar(255) NOT NULL,
  `Eletkor` int(11) NOT NULL,
  `Email_cim` varchar(255) NOT NULL,
  `Tartozas` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `vevok`
--

INSERT INTO `vevok` (`Vevo_ID`, `Nev`, `Eletkor`, `Email_cim`, `Tartozas`) VALUES
(1, 'Vas László', 18, 'vlaci@gmail.com', 0),
(2, 'Kerekes Dávid', 26, 'davidkerekes@gmail.com', 0),
(3, 'Kotricz Dániel', 27, 'kotriczdaniel@gmail.com', 0),
(4, 'Ir Tamás', 32, 'irtamas@gmail.com', 0),
(5, 'Lakatos Ferenc', 14, 'lakatosf@gmail.com', 1),
(6, 'Nagy Géza', 18, 'ngeza@gmail.com', 0),
(7, 'Kiss Ádám', 16, 'kadam@freemail.hu', 1),
(8, 'Ferenc Péter', 21, 'fpeter@freemail.hu', 0),
(9, 'Zöld Imre', 22, 'zimre@hotmail.com', 0),
(10, 'Gipsz Jakab', 12, 'gjakab@gmail.com', 0),
(11, 'Test Elek', 22, 'test.elek@test.hu', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jatekok`
--
ALTER TABLE `jatekok`
  ADD PRIMARY KEY (`Vonalkod_ID`);

--
-- Indexes for table `kikolcsonzott_jatekok`
--
ALTER TABLE `kikolcsonzott_jatekok`
  ADD PRIMARY KEY (`Kolcsonzes_ID`);

--
-- Indexes for table `vevok`
--
ALTER TABLE `vevok`
  ADD PRIMARY KEY (`Vevo_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jatekok`
--
ALTER TABLE `jatekok`
  MODIFY `Vonalkod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kikolcsonzott_jatekok`
--
ALTER TABLE `kikolcsonzott_jatekok`
  MODIFY `Kolcsonzes_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vevok`
--
ALTER TABLE `vevok`
  MODIFY `Vevo_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
