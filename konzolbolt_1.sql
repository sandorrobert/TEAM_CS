-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Okt 30. 19:42
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

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
-- Tábla szerkezet ehhez a táblához `játékok`
--

CREATE TABLE `játékok` (
  `Vonalkód_ID` int(11) NOT NULL,
  `Név` varchar(255) NOT NULL,
  `Ár` int(11) NOT NULL,
  `Kiadó` varchar(255) NOT NULL,
  `Kategória` varchar(255) NOT NULL,
  `Platform` varchar(255) NOT NULL,
  `Életkor` int(11) NOT NULL,
  `Elérhetőség` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `játékok`
--

INSERT INTO `játékok` (`Vonalkód_ID`, `Név`, `Ár`, `Kiadó`, `Kategória`, `Platform`, `Életkor`, `Elérhetőség`) VALUES
(1, 'Dead Space', 11550, 'Motive Studio', 'horror', 'PS/WIN/X', 18, 1),
(2, 'Diablo 4\r\n', 25400, 'Blizzard Entertainment\r\n', 'ARPG\r\n', 'PS/WIN/X\r\n', 16, 1),
(3, 'Resident Evil 4 Remake\r\n', 16540, 'Capcom\r\n', 'horror\r\n', 'PS/WIN/X\r\n', 18, 1),
(4, 'Final Fantasy XVI\r\n', 20100, 'Square Enix\r\n', 'RPG\r\n', 'PS\r\n', 16, 1),
(5, 'Alan Wake 2\r\n', 16780, 'Epic Games\r\n', 'horror\r\n', 'PS/WIN/X\r\n', 18, 1),
(6, 'Metroid Prime Remastered\r\n', 15699, 'Retro Studios\r\n', 'action\r\n', 'Switch\r\n', 12, 1),
(7, 'Starfield\r\n', 24590, 'Bethesda Game Studios\r\n', 'sci-fi\r\n', 'WIN/X\r\n', 16, 1),
(8, 'Street Fighter\r\n', 21890, 'Capcom\r\n', 'fighting\r\n', 'PS/WIN/X\r\n', 16, 1),
(9, 'Forspoken\r\n', 22890, 'Luminous Productions\r\n', 'RPG\r\n', 'PS/WIN\r\n', 16, 1),
(10, 'Hogwarts Legacy\r\n', 18990, 'Avalanche Software\r\n', 'RPG\r\n', 'PS/WIN/X\r\n', 16, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kikölcsönzött játékok`
--

CREATE TABLE `kikölcsönzött játékok` (
  `Kölcsönzés ID` int(11) NOT NULL,
  `Felhasználó` int(11) NOT NULL,
  `Játék` int(11) NOT NULL,
  `Kölcsönzés dátuma` date NOT NULL,
  `Kölcsönzött napok` int(11) NOT NULL,
  `Lejárte` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kikölcsönzött játékok`
--

INSERT INTO `kikölcsönzött játékok` (`Kölcsönzés ID`, `Felhasználó`, `Játék`, `Kölcsönzés dátuma`, `Kölcsönzött napok`, `Lejárte`) VALUES
(1, 3, 10, '2023-10-30', 60, 0),
(2, 2, 2, '2023-08-10', 14, 1),
(3, 4, 7, '2023-09-30', 30, 1),
(4, 4, 9, '2023-10-30', 90, 0),
(5, 8, 10, '2023-09-10', 23, 1),
(6, 1, 5, '2023-10-10', 20, 1),
(7, 1, 10, '2023-09-20', 90, 0),
(8, 9, 1, '2023-09-23', 7, 1),
(9, 9, 4, '2023-09-30', 120, 0),
(10, 3, 3, '2023-08-13', 30, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevők`
--

CREATE TABLE `vevők` (
  `Vevő ID` int(11) NOT NULL,
  `Név` varchar(255) NOT NULL,
  `Életkor` int(11) NOT NULL,
  `E-mail cím` varchar(255) NOT NULL,
  `Tartozás` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vevők`
--

INSERT INTO `vevők` (`Vevő ID`, `Név`, `Életkor`, `E-mail cím`, `Tartozás`) VALUES
(1, 'Vas László\r\n', 18, 'vlaci@gmail.com\r\n', 1),
(2, 'Kerekes Dávid\r\n', 26, 'davidkerekes@gmail.com\r\n', 0),
(3, 'Kotricz Dániel\r\n', 27, 'kotriczdaniel@gmail.com\r\n', 1),
(4, 'Ir Tamás\r\n', 32, 'irtamas@gmail.com\r\n', 0),
(5, 'Lakatos Ferenc\r\n', 14, 'lakatosf@gmail.com\r\n', 1),
(6, 'Nagy Géza\r\n', 18, 'ngeza@gmail.com\r\n', 0),
(7, 'Kiss Ádám\r\n', 16, 'kadam@freemail.hu\r\n', 1),
(8, 'Ferenc Péter\r\n', 21, 'fpeter@freemail.hu\r\n', 0),
(9, 'Zöld Imre\r\n', 22, 'zimre@hotmail.com\r\n', 1),
(10, 'Gipsz Jakab\r\n', 12, 'gjakab@gmail.com\r\n', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `játékok`
--
ALTER TABLE `játékok`
  ADD PRIMARY KEY (`Vonalkód_ID`);

--
-- A tábla indexei `kikölcsönzött játékok`
--
ALTER TABLE `kikölcsönzött játékok`
  ADD PRIMARY KEY (`Kölcsönzés ID`),
  ADD KEY `Játék` (`Játék`),
  ADD KEY `Felhasználó` (`Felhasználó`);

--
-- A tábla indexei `vevők`
--
ALTER TABLE `vevők`
  ADD PRIMARY KEY (`Vevő ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `játékok`
--
ALTER TABLE `játékok`
  MODIFY `Vonalkód_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `kikölcsönzött játékok`
--
ALTER TABLE `kikölcsönzött játékok`
  MODIFY `Kölcsönzés ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `vevők`
--
ALTER TABLE `vevők`
  MODIFY `Vevő ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kikölcsönzött játékok`
--
ALTER TABLE `kikölcsönzött játékok`
  ADD CONSTRAINT `kikölcsönzött játékok_ibfk_1` FOREIGN KEY (`Játék`) REFERENCES `játékok` (`Vonalkód_ID`),
  ADD CONSTRAINT `kikölcsönzött játékok_ibfk_2` FOREIGN KEY (`Felhasználó`) REFERENCES `vevők` (`Vevő ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
