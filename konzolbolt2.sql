-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 28. 13:43
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konzolbolt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatekok`
--

CREATE TABLE `jatekok` (
  `Vonalkod_ID` int(11) NOT NULL,
  `Nev` varchar(255) NOT NULL,
  `Ar` int(11) NOT NULL,
  `Kiado` varchar(255) NOT NULL,
  `Kategoria` varchar(255) NOT NULL,
  `Platform` varchar(255) NOT NULL,
  `Eletkor` int(11) NOT NULL,
  `Elerhetoseg` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `jatekok`
--

INSERT INTO `jatekok` (`Vonalkod_ID`, `Nev`, `Ar`, `Kiado`, `Kategoria`, `Platform`, `Eletkor`, `Elerhetoseg`) VALUES
(1, 'Dead Space', 11550, 'Motive Studio', 'horror', 'PS/WIN/X', 18, 1),
(2, 'Diablo 4', 25400, 'Blizzard Entertainment', 'ARPG', 'PS/WIN/X', 16, 1),
(3, 'Resident Evil 4 Remake', 16540, 'Capcom', 'horror', 'PS/WIN/X', 18, 1),
(4, 'Final Fantasy XVI', 20100, 'Square Enix', 'RPG', 'PS', 16, 1),
(5, 'Alan Wake 2', 16780, 'Epic Games', 'horror', 'PS/WIN/X', 18, 1),
(6, 'Metroid Prime Remastered', 15699, 'Retro Studios', 'action', 'Switch', 12, 1),
(7, 'Starfield', 24590, 'Bethesda Game Studios', 'sci-fi', 'WIN/X', 16, 1),
(8, 'Street Fighter', 21890, 'Capcom', 'fighting', 'PS/WIN/X', 16, 1),
(9, 'Forspoken', 22890, 'Luminous Productions', 'RPG', 'PS/WIN', 16, 1),
(10, 'Hogwarts Legacy', 18990, 'Avalanche Software', 'RPG', 'PS/WIN/X', 16, 1),
(11, 'Factorio', 10000, 'Wube', 'action', 'WIN', 13, 1),
(12, 'Satisfactory', 12000, 'Coffee Stain Studios', 'simulator', 'WIN', 5, 1),
(13, 'Call of Duty', 27000, 'Activision', 'action', 'WIN/PS/XBOX', 18, 1),
(14, 'Factorio', 22, 'dsa', 'dsada', 'dsaa', 222, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kikolcsonzott_jatekok`
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
-- A tábla adatainak kiíratása `kikolcsonzott_jatekok`
--

INSERT INTO `kikolcsonzott_jatekok` (`Kolcsonzes_ID`, `Felhasznalo_ID`, `Jatek_ID`, `Kolcsonzes_datuma`, `Kolcsonzott_napok`, `Lejart`, `Visszahozas_datuma`) VALUES
(1, 3, 10, '2023-10-30', 60, 0, NULL),
(2, 2, 2, '2023-08-10', 14, 1, NULL),
(3, 4, 7, '2023-09-30', 30, 0, '2023-11-12'),
(4, 4, 9, '2023-10-30', 90, 0, '2023-11-12'),
(5, 8, 10, '2023-09-10', 23, 1, NULL),
(6, 1, 5, '2023-10-10', 20, 1, NULL),
(7, 1, 10, '2023-09-20', 90, 0, NULL),
(8, 9, 1, '2023-09-23', 7, 0, '2023-11-15'),
(9, 9, 4, '2023-09-30', 120, 0, NULL),
(10, 3, 3, '2023-08-13', 30, 1, NULL),
(13, 12, 8, '2023-10-12', 60, 0, '2023-11-12'),
(14, 11, 11, '2023-11-12', 10, 0, '2023-11-15'),
(15, 4, 8, '2023-11-12', 30, 0, '2023-11-12'),
(16, 11, 10, '2023-11-12', 20, 0, '2023-11-15'),
(17, 12, 5, '2023-11-12', 30, 0, NULL),
(18, 4, 7, '2023-11-12', 10, 0, '2023-11-12'),
(19, 4, 6, '2023-11-12', 22, 0, NULL),
(20, 11, 11, '2023-11-12', 60, 0, '2023-11-15'),
(21, 4, 11, '2023-11-12', 10, 1, NULL),
(22, 11, 9, '2023-11-12', 10, 1, NULL),
(23, 4, 9, '2023-11-12', 10, 1, NULL),
(24, 4, 3, '2023-11-15', 60, 0, '2023-11-15'),
(25, 6, 11, '2023-11-15', 10, 0, '2023-11-15'),
(26, 9, 10, '2023-11-15', 5, 1, NULL),
(27, 6, 3, '2023-11-15', 20, 0, NULL),
(28, 9, 3, '2023-11-17', 10, 0, '2023-11-17'),
(29, 6, 2, '2023-11-17', 2, 1, NULL),
(30, 15, 4, '2023-11-27', 10, 0, NULL),
(31, 16, 12, '2023-11-27', 60, 0, '2023-11-27');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevok`
--

CREATE TABLE `vevok` (
  `Vevo_ID` int(11) NOT NULL,
  `Nev` varchar(255) NOT NULL,
  `Szuletes_datum` date NOT NULL,
  `Email_cim` varchar(255) NOT NULL,
  `Tartozas` tinyint(1) NOT NULL,
  `Aktiv` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vevok`
--

INSERT INTO `vevok` (`Vevo_ID`, `Nev`, `Szuletes_datum`, `Email_cim`, `Tartozas`, `Aktiv`) VALUES
(1, 'Vas László', '1990-10-12', 'vlaci@gmail.com', 1, 1),
(2, 'Kerekes Dávid', '2000-11-06', 'davidkerekes@gmail.com', 1, 1),
(3, 'Kotricz Dániel', '1997-02-15', 'kotriczdaniel@gmail.com', 1, 1),
(4, 'Ir Tamás', '1999-08-30', 'irtamas@gmail.com', 1, 1),
(5, 'Lakatos Ferenc', '2009-10-20', 'lakatosf@gmail.com', 1, 1),
(6, 'Nagy Géza', '2001-05-14', 'ngeza@gmail.com', 1, 1),
(7, 'Kiss Ádám', '1996-12-31', 'kadam@freemail.hu', 1, 1),
(8, 'Ferenc Péter', '2006-12-01', 'fpeter@freemail.hu', 1, 1),
(9, 'Zöld Imre', '2010-11-24', 'zimre@hotmail.com', 1, 1),
(10, 'Gipsz Jakab', '1995-01-01', 'gjakab@gmail.com', 0, 1),
(11, 'Test Elek', '2000-09-16', 'test.elek@test.hu', 1, 1),
(12, 'Test Ilka', '1991-04-07', 'test.ilka@test.hu', 0, 1),
(15, 'Test Józsi', '1996-11-08', 'jozsi.test@test.hu', 0, 1),
(16, 'Test István', '2012-10-11', 'pistike@test.hu', 0, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `jatekok`
--
ALTER TABLE `jatekok`
  ADD PRIMARY KEY (`Vonalkod_ID`);

--
-- A tábla indexei `kikolcsonzott_jatekok`
--
ALTER TABLE `kikolcsonzott_jatekok`
  ADD PRIMARY KEY (`Kolcsonzes_ID`),
  ADD KEY `kikolcsonzott_jatekok_ibfk_1` (`Jatek_ID`),
  ADD KEY `kikolcsonzott_jatekok_ibfk_2` (`Felhasznalo_ID`);

--
-- A tábla indexei `vevok`
--
ALTER TABLE `vevok`
  ADD PRIMARY KEY (`Vevo_ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `jatekok`
--
ALTER TABLE `jatekok`
  MODIFY `Vonalkod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `kikolcsonzott_jatekok`
--
ALTER TABLE `kikolcsonzott_jatekok`
  MODIFY `Kolcsonzes_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT a táblához `vevok`
--
ALTER TABLE `vevok`
  MODIFY `Vevo_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kikolcsonzott_jatekok`
--
ALTER TABLE `kikolcsonzott_jatekok`
  ADD CONSTRAINT `kikolcsonzott_jatekok_ibfk_1` FOREIGN KEY (`Jatek_ID`) REFERENCES `jatekok` (`Vonalkod_ID`),
  ADD CONSTRAINT `kikolcsonzott_jatekok_ibfk_2` FOREIGN KEY (`Felhasznalo_ID`) REFERENCES `vevok` (`Vevo_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
