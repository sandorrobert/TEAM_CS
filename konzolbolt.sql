-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Okt 30. 19:14
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
  `Elérhetőség` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

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
  MODIFY `Vonalkód_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kikölcsönzött játékok`
--
ALTER TABLE `kikölcsönzött játékok`
  MODIFY `Kölcsönzés ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `vevők`
--
ALTER TABLE `vevők`
  MODIFY `Vevő ID` int(11) NOT NULL AUTO_INCREMENT;

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
