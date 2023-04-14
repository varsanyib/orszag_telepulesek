-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2023. Ápr 14. 12:28
-- Kiszolgáló verziója: 8.0.32-0ubuntu0.20.04.2
-- PHP verzió: 8.1.17

-- Készítette: varso


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `data2023`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `varmegyek`
--

CREATE TABLE `varmegyek` (
  `id` varchar(2) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `varmegyek`
--

INSERT INTO `varmegyek` (`id`, `nev`) VALUES
('BA', 'Baranya'),
('BE', 'Békés'),
('BK', 'Bács-Kiskun'),
('BP', 'Budapest'),
('BZ', 'Borsod-Abaúj-Zemplén'),
('CS', 'Csongrád-Csanád'),
('FE', 'Fejér'),
('GS', 'Győr-Moson-Sopron'),
('HB', 'Hajdú-Bihar'),
('HE', 'Heves'),
('JN', 'Jász-Nagykun-Szolnok'),
('KE', 'Komárom-Esztergom'),
('NO', 'Nógrád'),
('PE', 'Pest'),
('SO', 'Somogy'),
('SZ', 'Szabolcs-Szatmár-Bereg'),
('TO', 'Tolna'),
('VA', 'Vas'),
('VE', 'Veszprém'),
('ZA', 'Zala');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `varmegyek`
--
ALTER TABLE `varmegyek`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
