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
-- Tábla szerkezet ehhez a táblához `orszagok`
--

CREATE TABLE `orszagok` (
  `id` int NOT NULL,
  `nev` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `nev_hosszu` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `kod` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `fovaros` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `melleknevei` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `penznem` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `penznem_iso` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `valtopenz` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `nev_angol` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `orszagok`
--

INSERT INTO `orszagok` (`id`, `nev`, `nev_hosszu`, `kod`, `fovaros`, `melleknevei`, `penznem`, `penznem_iso`, `valtopenz`, `nev_angol`) VALUES
(1, 'Afganisztán', 'Afgán Iszlám Köztársaság (hivatalos), Afganisztáni Iszlám Köztársaság (elfogadott)', 'AF', 'Kabul', 'afgán, afganisztáni, afgán iszlám köztársasági, afganisztáni iszlám köztársasági', 'afgáni', 'AFN', 'puli', 'Afghanistan'),
(2, 'Aland-szigetek ', 'Åland-szigetek', 'AX', 'Mariehamn', 'ålandi, Åland-szigeteki', 'euró', 'EUR', 'cent', 'Åland'),
(3, 'Albánia', 'Albán Köztársaság', 'AL', 'Tirana', 'albán, albániai, albán köztársasági', 'lek', 'ALL', 'qindar', 'Albania'),
(4, 'Algéria', 'Algériai Demokratikus és Népi Köztársaság', 'DZ', 'Algír', 'algériai, algériai demokratikus és népi köztársasági', 'algériai dinár', 'DZD', 'centime', 'Algeria'),
(5, 'Amerikai Szamoa ', 'Amerikai Szamoa', 'AS', 'Pago Pago', 'szamoai, amerikai szamoai', 'USA-dollár', 'USD', 'cent', 'American Samoa'),
(6, 'Amerikai Virgin-szigetek ', 'Amerikai Virgin-szigetek', 'VI', 'Charlotte Amalie', 'amerikai Virgin-szigeteki', 'USA-dollár', 'USD', 'cent', 'Virgin Islands, U.s.'),
(7, 'Andorra', 'Andorrai Hercegség (hivatalos), Andorrai Fejedelemség (elfogadott)', 'AD', 'Andorra la Vella', 'andorrai, andorrai hercegségi, andorrai fejedelemségi', 'euró', 'EUR', 'cent', 'Andorra'),
(8, 'Angola', 'Angolai Köztársaság', 'AO', 'Luanda', 'angolai, angolai köztársasági', 'kwanza', 'AOA', 'cêntimo', 'Angola'),
(9, 'Anguilla ', 'Anguilla', 'AI', 'The Valley', 'anguillai', 'kelet-karibi dollár', 'XCD', 'cent', 'Anguilla'),
(10, 'Antarktisz', 'Antarktisz', 'AQ', NULL, 'antarktiszi', NULL, NULL, NULL, 'Antarctica'),
(11, 'Antigua és Barbuda', 'Antigua és Barbuda', 'AG', 'Saint John’s', 'Antigua és Barbuda-i', 'kelet-karibi dollár', 'XCD', 'cent', 'Antigua and Barbuda'),
(12, 'Apostoli Szentszék', 'Apostoli Szentszék (Vatikánvárosi Állam)', 'VA', 'Vatikánváros', 'apostoli szentszéki, vatikáni, vatikánvárosi, vatikánvárosi állami', 'euró', 'EUR', 'cent', 'Holy See (Vatican City State)'),
(13, 'Argentína', 'Argentin Köztársaság', 'AR', 'Buenos Aires', 'argentin, argentínai, argentin köztársasági', 'argentin peso', 'ARS', 'centavo', 'Argentina'),
(14, 'Aruba ', 'Aruba', 'AW', 'Oranjestad', 'arubai', 'arubai gulden (arubai forint)', 'AWG', 'cent', 'Aruba'),
(15, 'Ausztrália', 'Ausztrál Államszövetség', 'AU', 'Canberra', 'ausztrál, ausztráliai, ausztrál államszövetségi', 'ausztrál dollár', 'AUD', 'cent', 'Australia'),
(16, 'Ausztria', 'Osztrák Köztársaság', 'AT', 'Bécs', 'osztrák, ausztriai, osztrák köztársasági', 'euró', 'EUR', 'cent', 'Austria'),
(17, 'Az Amerikai Egyesült Államok Külső Szigetei', 'Az Amerikai Egyesült Államok Külső Szigetei', 'UM', NULL, NULL, 'USA-dollár', 'USD', 'cent', 'United States Minor Outlying Islands'),
(18, 'Azerbajdzsán', 'Azerbajdzsán Köztársaság (hivatalos), Azeri Köztársaság (elfogadott)', 'AZ', 'Baku', 'azeri, azerbajdzsáni, Azerbajdzsán köztársasági, azeri köztársasági', 'azerbajdzsáni manát', 'AZN', 'kopek', 'Azerbaijan'),
(19, 'Bahama-szigetek', 'Bahamai Közösség', 'BS', 'Nassau', 'bahamai, Bahama-szigeteki, bahamai közösségi', 'bahamai dollár', 'BSD', 'cent', 'Bahamas'),
(20, 'Bahrein', 'Bahreini Királyság', 'BH', 'Manáma', 'bahreini, bahreini királysági', 'bahreini dinár', 'BHD', 'fil', 'Bahrain'),
(21, 'Banglades', 'Bangladesi Népi Köztársaság', 'BD', 'Dakka', 'bangladesi, bangladesi népi köztársasági', 'taka', 'BDT', 'paisa', 'Bangladesh'),
(22, 'Barbados', 'Barbados', 'BB', 'Bridgetown', 'barbadosi', 'barbadosi dollár', 'BBD', 'cent', 'Barbados'),
(23, 'Belarusz / Fehéroroszország', 'Belarusz Köztársaság / Fehérorosz Köztársaság', 'BY', 'Minszk', 'belorusz, fehérorosz, fehéroroszországi, belarusz köztársasági, fehérorosz köztársasági', 'belorusz rubel', 'BYR', 'kopejka', 'Belarus'),
(24, 'Belgium', 'Belga Királyság', 'BE', 'Brüsszel', 'belga, belgiumi, belga királysági', 'euró', 'EUR', 'cent', 'Belgium'),
(25, 'Belize', 'Belize', 'BZ', 'Belmopan', 'belize-i', 'belize-i dollár', 'BZD', 'cent', 'Belize'),
(26, 'Benin', 'Benini Köztársaság', 'BJ', 'Porto Novo', 'benini, benini köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Benin'),
(27, 'Bermuda ', 'Bermuda', 'BM', 'Hamilton', 'bermudai', 'bermudai dollár', 'BMD', 'cent', 'Bermuda'),
(28, 'Bhután', 'Bhutáni Királyság', 'BT', 'Timpu', 'bhutáni, bhutáni királysági', 'ngultrum', 'BTN', 'chetrum', 'Bhutan'),
(29, 'Bissau-Guinea', 'Bissau-guineai Köztársaság', 'GW', 'Bissau', 'Bissau-guineai, Bissau-guineai köztársasági', 'CFA-frank (BCEAO)', 'XOF', 'centime', 'Guinea-Bissau'),
(30, 'Bolívia', 'Többnemzetiségű Bolíviai Állam', 'BO', 'Sucre', 'bolíviai, bolíviai köztársasági', 'boliviano', 'BOB', 'centavo', 'Bolivia'),
(31, 'Bosznia-Hercegovina', 'Bosznia-hercegovinai Köztársaság (hivatalos), Bosznia és Hercegovina Köztársaság (elfogadott)', 'BA', 'Szarajevó', 'bosnyák, boszniai, bosznia-hercegovinai, Bosznia és Hercegovina-i, bosznia-hercegovinai köztársasági, Bosznia és Hercegovina köztársasági', 'konvertibilis márka', 'BAM', 'pfennig', 'Bosnia and Herzegovina'),
(32, 'Botswana', 'Botswanai Köztársaság', 'BW', 'Gaborone', 'botswanai, botswanai köztársasági', 'pula', 'BWP', 'thebe', 'Botswana'),
(33, 'Bouvet-sziget ', 'Bouvet-sziget', 'BV', NULL, 'Bouvet-szigeti', NULL, NULL, NULL, 'Bouvet Island'),
(34, 'Brazília', 'Brazil Szövetségi Köztársaság', 'BR', 'Brazíliaváros (Brasília)', 'brazil, brazíliai, brazil szövetségi köztársasági', 'real', 'BRL', 'centavo', 'Brazil'),
(35, 'Brit Indiai-óceáni Terület', 'Brit Indiai-óceáni Terület', 'IO', NULL, 'brit indiai-óceáni területi', 'USA-dollár', 'USD', 'cent', 'British Indian Ocean Territory'),
(36, 'Brit Virgin-szigetek ', 'Brit Virgin-szigetek', 'VG', 'Road Town', 'brit Virgin-szigeteki', 'USA-dollár', 'USD', 'cent', 'Virgin Islands, British'),
(37, 'Brunei', 'Brunei Darussalam Állam', 'BN', 'Bandar Seri Begawan', 'brunei, Brunei Darussalam állami', 'brunei dollár', 'BND', 'sen', 'Brunei Darussalam'),
(38, 'Bulgária', 'Bolgár Köztársaság', 'BG', 'Szófia', 'bolgár, bulgáriai, bolgár köztársasági', 'leva', 'BGN', 'sztotinka', 'Bulgaria'),
(39, 'Burkina Faso', 'Burkina Fasó-i Köztársaság', 'BF', 'Ouagadougou', 'Burkina Fasó-i, burkinabé, Burkina Fasó-i köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Burkina Faso'),
(40, 'Burundi', 'Burundi Köztársaság', 'BI', 'Bujumbura', 'burundi, burundi köztársasági', 'burundi frank', 'BIF', 'centime', 'Burundi'),
(41, 'Chile', 'Chilei Köztársaság', 'CL', 'Santiago de Chile', 'chilei, chilei köztársasági', 'chilei peso', 'CLP', 'centavo', 'Chile'),
(42, 'Ciprus', 'Ciprusi Köztársaság', 'CY', 'Nicosia', 'ciprusi, ciprióta, ciprusi köztársasági', 'euró', 'EUR', 'cent', 'Cyprus'),
(43, 'Clipperton ', 'Clipperton-sziget', 'CP', NULL, NULL, NULL, NULL, NULL, 'Clipperton Island'),
(44, 'Comore-szigetek', 'Comore-szigeteki Unió (hivatalos), Comore Iszlám Szövetségi Köztársaság (elfogadott)', 'KM', 'Moroni', 'comore-i, Comore-szigeteki, Comore-szigeteki unióbeli, Comore iszlám szövetségi köztársasági', 'comore-i frank', 'KMF', 'centime', 'Comoros'),
(45, 'Cook-szigetek ', 'Cook-szigetek', 'CK', 'Avarua', 'Cook-szigeteki', 'új-zélandi dollár', 'NZD', 'cent', 'Cook Islands'),
(46, 'Costa Rica', 'Costa Rica Köztársaság', 'CR', 'San José', 'Costa Rica-i, Costa Rica köztársasági', 'Costa Rica-i colón', 'CRC', 'céntimo', 'Costa Rica'),
(47, 'Csád', 'Csádi Köztársaság', 'TD', 'N’Djamena', 'csádi, csádi köztársasági', 'CFA-frank (BEAC) ', 'XAF', 'centime', 'Chad'),
(48, 'Csehország', 'Cseh Köztársaság', 'CZ', 'Prága', 'cseh, csehországi, cseh köztársasági', 'cseh korona', 'CZK', 'halér', 'Czech Republic'),
(49, 'Dánia', 'Dán Királyság', 'DK', 'Koppenhága', 'dán, dániai, dán királysági', 'dán korona', 'DKK', 'őre', 'Denmark'),
(50, 'Dél-Afrika', 'Dél-afrikai Köztársaság', 'ZA', 'Pretoria', 'dél-afrikai, dél-afrikai köztársasági', 'rand', 'ZAR', 'cent', 'South Africa'),
(51, 'Dél-Georgia és Déli-Sandwich-szigetek ', 'Dél-Georgia és Déli-Sandwich-szigetek', 'GS', NULL, 'déli-Georgia és déli-Sandwich-szigeteki', 'font sterling', 'GBP', 'penny', 'South Georgia and the South Sandwich Islands'),
(52, 'Dél-Korea', 'Koreai Köztársaság', 'KR', 'Szöul', 'dél-koreai, koreai köztársasági', 'dél-koreai von', 'KRW', 'cson', 'Korea, Republic of'),
(53, 'Dominika', 'Dominikai Közösség', 'DM', 'Roseau', 'dominikai, dominikai közösségi', 'kelet-karibi dollár', 'XCD', 'cent', 'Dominica'),
(54, 'Dominikai Köztársaság', 'Dominikai Köztársaság', 'DO', 'Santo Domingo', 'dominikai, dominikai köztársasági', 'dominikai peso', 'DOP', 'centavo', 'Dominican Republic'),
(55, 'Dzsibuti', 'Dzsibuti Köztársaság', 'DJ', 'Dzsibuti', 'dzsibuti, dzsibuti köztársasági', 'dzsibuti frank', 'DJF', 'centime', 'Djibouti'),
(56, 'Ecuador', 'Ecuadori Köztársaság', 'EC', 'Quito', 'ecuadori, ecuadori köztársasági', 'USA-dollár', 'USD', 'cent', 'Ecuador'),
(57, 'Egyenlítői-Guinea', 'Egyenlítői-guineai Köztársaság', 'GQ', 'Malabo', 'egyenlítői-guineai, egyenlítői-guineai köztársasági', 'CFA-frank (BEAC)', 'XAF', 'centime', 'Equatorial Guinea'),
(58, 'Egyesült Államok', 'Amerikai Egyesült Államok', 'US', 'Washington', 'egyesült államokbeli, amerikai egyesült államokbeli', 'USA-dollár', 'USD', 'cent', 'United States'),
(59, 'Egyesült Arab Emírségek', 'Egyesült Arab Emírségek', 'AE', 'Abu-Dzabi', 'egyesült arab emírségekbeli', 'dirham', 'AED', 'fil', 'United Arab Emirates'),
(60, 'Egyesült Királyság', 'Nagy-Britannia és Észak-Írország Egyesült Királysága', 'UK', 'London', 'egyesült királyságbeli', 'font sterling', 'GBP', 'penny', 'United Kingdom'),
(61, 'Egyiptom', 'Egyiptomi Arab Köztársaság', 'EG', 'Kairó', 'egyiptomi, egyiptomi arab köztársasági', 'egyiptomi font', 'EGP', 'piaszter', 'Egypt'),
(62, 'Elefántcsontpart', 'Elefántcsontparti Köztársaság', 'CI', 'Yamoussoukro', 'elefántcsontparti, elefántcsontparti köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Cote D\'Ivoire'),
(63, 'Eritrea', 'Eritrea Állam', 'ER', 'Aszmara', 'eritreai, Eritrea állami', 'nakfa', 'ERN', 'cent', 'Eritrea'),
(64, 'Északi-Mariana-szigetek ', 'Északi-Mariana-szigetek', 'MP', 'Garapan', 'északi-Mariana-szigeteki', 'USA-dollár', 'USD', 'cent', 'Northern Mariana Islands'),
(65, 'Észak-Korea', 'Koreai Népi Demokratikus Köztársaság', 'KP', 'Phenjan', 'észak-koreai, koreai népi demokratikus köztársasági', 'észak-koreai von', 'KPW', 'cson', 'Korea, Democratic People\'s Republic of'),
(66, 'Észtország', 'Észt Köztársaság', 'EE', 'Tallinn', 'észt, észtországi, észt köztársasági', 'észt korona', 'EEK', 'sent', 'Estonia'),
(67, 'Etiópia', 'Etióp Demokratikus Szövetségi Köztársaság', 'ET', 'Addisz-Abeba', 'etióp, etiópiai, etióp demokratikus szövetségi köztársasági', 'birr', 'ETB', 'cent', 'Ethiopia'),
(68, 'Falkland-szigetek', 'Falkland-szigetek', 'FK', 'Stanley', 'falklandi, Falkland-szigeteki', 'falklandi font', 'FKP', 'új penny', 'Falkland Islands (Malvinas)'),
(69, 'Feröer szigetek ', 'Feröer szigetek', 'FO', 'Tórshavn', 'feröeri, Feröer szigeteki', 'dán korona', 'DKK', 'őre', 'Faroe Islands'),
(70, 'Fidzsi-szigetek', 'Fidzsi-szigeteki Köztársaság (hivatalos), Fidzsi Köztársaság (elfogadott)', 'FJ', 'Suva', 'fidzsi, Fidzsi-szigeteki, Fidzsi-szigeteki köztársasági, fidzsi köztársasági', 'fidzsi dollár', 'FJD', 'cent', 'Fiji'),
(71, 'Finnország', 'Finn Köztársaság', 'FI', 'Helsinki', 'finn, finnországi, finn köztársasági', 'euró', 'EUR', 'cent', 'Finland'),
(72, 'Francia Déli Területek ', 'Francia Déli Területek', 'TF', NULL, NULL, 'euró', 'EUR', 'cent', 'French Southern Territories'),
(73, 'Francia Guyana ', 'Francia Guyana', 'GF', 'Cayenne', 'francia guyanai', 'euró', 'EUR', 'cent', 'French Guiana'),
(74, 'Francia Polinézia ', 'Francia Polinézia', 'PF', 'Papeete', 'francia polinéziai', 'CFP-frank', 'XPF', 'centime', 'French Polynesia'),
(75, 'Franciaország', 'Francia Köztársaság', 'FR', 'Párizs', 'francia, franciaországi, francia köztársasági', 'euró', 'EUR', 'cent', 'France'),
(76, 'Fülöp-szigetek', 'Fülöp-szigeteki Köztársaság', 'PH', 'Manila', 'filippínó, Fülöp-szigeteki, Fülöp-szigeteki köztársasági', 'fülöp-szigeteki peso', 'PHP', 'centavo', 'Philippines'),
(77, 'Gabon', 'Gaboni Köztársaság', 'GA', 'Libreville', 'gaboni, gaboni köztársasági', 'CFA-frank (BEAC)', 'XAF', 'centime', 'Gabon'),
(78, 'Gambia', 'Gambiai Köztársaság', 'GM', 'Banjul', 'gambiai, gambiai köztársasági', 'dalasi', 'GMD', 'butut', 'Gambia'),
(79, 'Ghána', 'Ghánai Köztársaság', 'GH', 'Accra', 'ghánai, ghánai köztársasági', 'ghánai cedi', 'GHS', 'pesewa', 'Ghana'),
(80, 'Gibraltár ', 'Gibraltár', 'GI', 'Gibraltár', 'gibraltári', 'gibraltári font', 'GIP', 'penny', 'Gibraltar'),
(81, 'Görögország', 'Görög Köztársaság', 'EL', 'Athén', 'görög, görögországi, görög köztársasági', 'euró', 'EUR', 'cent', 'Greece'),
(82, 'Grenada', 'Grenada', 'GD', 'Saint George’s', 'grenadai', 'kelet-karibi dollár', 'XCD', 'cent', 'Grenada'),
(83, 'Grönland ', 'Grönland', 'GL', 'Nuuk (Godthab)', 'grönlandi', 'dán korona', 'DKK', 'őre', 'Greenland'),
(84, 'Grúzia', 'Grúzia', 'GE', 'Tbiliszi', 'grúz, grúziai, grúz köztársasági', 'lari', 'GEL', 'tetri', 'Georgia'),
(85, 'Guadeloupe ', 'Guadeloupe', 'GP', 'Basse-Terre', 'guadeloupe-i', 'euró', 'EUR', 'cent', 'Guadeloupe'),
(86, 'Guam ', 'Guam', 'GU', 'Hagatna', 'guami', 'USA-dollár', 'USD', 'cent', 'Guam'),
(87, 'Guatemala', 'Guatemalai Köztársaság', 'GT', 'Guatemalaváros', 'guatemalai, guatemalai köztársasági', 'quetzal', 'GTQ', 'centavo', 'Guatemala'),
(88, 'Guinea', 'Guineai Köztársaság', 'GN', 'Conakry', 'guineai, guineai köztársasági', 'guineai frank', 'GNF', NULL, 'Guinea'),
(89, 'Guyana', 'Guyanai Szövetkezeti Köztársaság', 'GY', 'Georgetown', 'guyanai, guyanai szövetkezeti köztársasági', 'guyanai dollár', 'GYD', 'cent', 'Guyana'),
(90, 'Haiti', 'Haiti Köztársaság', 'HT', 'Port-au-Prince', 'haiti, haiti köztársasági', 'gourde', 'HTG', 'centime', 'Haiti'),
(91, 'Heard-sziget és McDonald-szigetek ', 'Heard-sziget és McDonald-szigetek', 'HM', NULL, 'Heard-sziget és McDonald-szigeteki', NULL, NULL, NULL, 'Heard Island and Mcdonald Islands'),
(92, 'Holland Antillák ', 'Holland Antillák', 'AN', 'Willemstad', 'holland antilláki', 'holland antillai gulden (holland antillai forint)', 'ANG', 'cent', 'Netherlands Antilles'),
(93, 'Hollandia', 'Holland Királyság', 'NL', 'Amszterdam', 'holland, holland királysági', 'euró', 'EUR', 'cent', 'Netherlands'),
(94, 'Honduras', 'Hondurasi Köztársaság', 'HN', 'Tegucigalpa', 'hondurasi, hondurasi köztársasági', 'lempira', 'HNL', 'centavo', 'Honduras'),
(95, 'Hongkong ', 'Hongkong Különleges Közigazgatási Terület', 'HK', NULL, 'hongkongi, hongkongi különleges közigazgatási területi', 'hongkongi dollár', 'HKD', 'cent', 'Hong Kong'),
(96, 'Horvátország', 'Horvát Köztársaság', 'HR', 'Zágráb', 'horvát, horvátországi, horvát köztársasági', 'kuna', 'HRK', 'lipa', 'Croatia'),
(97, 'India', 'Indiai Köztársaság', 'IN', 'Újdelhi', 'indiai, indiai köztársasági', 'indiai rúpia', 'INR', 'paisa', 'India'),
(98, 'Indonézia', 'Indonéz Köztársaság', 'ID', 'Jakarta', 'indonéz, indonéziai, indonéz köztársasági', 'indonéz rúpia', 'IDR', 'sen', 'Indonesia'),
(99, 'Irak', 'Iraki Köztársaság', 'IQ', 'Bagdad', 'iraki, iraki köztársasági', 'iraki dinár', 'IQD', 'fil', 'Iraq'),
(100, 'Irán', 'Iráni Iszlám Köztársaság', 'IR', 'Teherán', 'iráni, iráni iszlám köztársasági', 'iráni riál', 'IRR', 'dinár', 'Iran, Islamic Republic of'),
(101, 'Írország', 'Írország', 'IE', 'Dublin', 'ír, írországi', 'euró', 'EUR', 'cent', 'Ireland'),
(102, 'Izland', 'Izlandi Köztársaság', 'IS', 'Reykjavík', 'izlandi, izlandi köztársasági', 'izlandi korona', 'ISK', NULL, 'Iceland'),
(103, 'Izrael', 'Izrael Állam', 'IL', 'Tel Aviv (Jeruzsálem)', 'izraeli, Izrael állami', 'sékel', 'ILS', 'agora', 'Israel'),
(104, 'Jamaica', 'Jamaica', 'JM', 'Kingston', 'jamaicai', 'jamaicai dollár', 'JMD', 'cent', 'Jamaica'),
(105, 'Japán', 'Japán', 'JP', 'Tokió', 'japán, japáni', 'jen', 'JPY', 'szen', 'Japan'),
(106, 'Jemen', 'Jemeni Köztársaság', 'YE', 'Szanaa', 'jemeni, jemeni köztársasági', 'jemeni riál', 'YER', 'fil', 'Yemen'),
(107, 'Jordánia', 'Jordán Hasimita Királyság', 'JO', 'Ammán', 'jordán, jordániai, jordán hasimita királysági', 'jordániai dinár', 'JOD', 'fil', 'Jordan'),
(108, 'Kajmán-szigetek ', 'Kajmán-szigetek', 'KY', 'Georgetown', 'kajmán-szigeteki', 'kajmán-szigeteki dollár', 'KYD', 'cent', 'Cayman Islands'),
(109, 'Kambodzsa', 'Kambodzsai Királyság', 'KH', 'Phnompen', 'kambodzsai, kambodzsai királysági', 'riel', 'KHR', 'sen', 'Cambodia'),
(110, 'Kamerun', 'Kameruni Köztársaság', 'CM', 'Yaoundé', 'kameruni, kameruni köztársasági', 'CFA-frank (BEAC)', 'XAF', 'centime', 'Cameroon'),
(111, 'Kanada', 'Kanada', 'CA', 'Ottawa', 'kanadai', 'kanadai dollár', 'CAD', 'cent', 'Canada'),
(112, 'Karácsony-sziget ', 'Karácsony-sziget', 'CX', 'Flying Fish Cove', 'karácsony-szigeti', 'ausztrál dollár', 'AUD', 'cent', 'Christmas Island'),
(113, 'Katar', 'Katari Állam', 'QA', 'Doha', 'katari, katari állami', 'katari riál', 'QAR', 'dirham', 'Qatar'),
(114, 'Kazahsztán', 'Kazah Köztársaság', 'KZ', 'Asztana', 'kazah v. kazak, kazahsztáni, kazah köztársasági', 'tenge', 'KZT', 'tiyin', 'Kazakhstan'),
(115, 'Kelet-Timor', 'Kelet-timori Demokratikus Köztársaság', 'TL', 'Dili', 'kelet-timori, kelet-timori demokratikus köztársasági', 'USA-dollár', 'USD', 'cent', 'Timor-Leste'),
(116, 'Kenya', 'Kenyai Köztársaság', 'KE', 'Nairobi', 'kenyai, kenyai köztársasági', 'kenyai shilling', 'KES', 'cent', 'Kenya'),
(117, 'Kína', 'Kínai Népköztársaság', 'CN', 'Peking', 'kínai, kínai népköztársasági', 'renminbi jüan', 'CNY', 'jiao; fen', 'China'),
(118, 'Kirgizisztán', 'Kirgiz Köztársaság', 'KG', 'Biskek', 'kirgiz, kirgizisztáni, kirgiz köztársasági', 'kirgiz szom', 'KGS', 'tüin', 'Kyrgyzstan'),
(119, 'Kiribati', 'Kiribati Köztársaság', 'KI', 'Tarawa', 'kiribati, kiribati köztársasági', 'ausztrál dollár', 'AUD', 'cent', 'Kiribati'),
(120, 'Kókusz-szigetek/Keeling-szigetek', 'Kókusz-szigetek/Keeling-szigetek', 'CC', 'Bantam', 'kókusz-szigeteki, Keeling-szigeteki', 'ausztrál dollár', 'AUD', 'cent', 'Cocos (Keeling) Islands'),
(121, 'Kolumbia', 'Kolumbiai Köztársaság', 'CO', 'Bogotá', 'kolumbiai, kolumbiai köztársasági', 'kolumbiai peso', 'COP', 'centavo', 'Colombia'),
(122, 'Kongó', 'Kongói Köztársaság', 'CG', 'Brazzaville', 'kongói, kongói köztársasági', 'CFA-frank (BEAC)', 'XAF', 'centime', 'Congo'),
(123, 'Kongói Demokratikus Köztársaság', 'Kongói Demokratikus Köztársaság', 'CD', 'Kinshasa', 'kongói demokratikus köztársasági', 'kongói frank', 'CDF', 'centime', 'Congo, the Democratic Republic of the'),
(124, 'Közép-afrikai Köztársaság', 'Közép-afrikai Köztársaság', 'CF', 'Bangui', 'közép-afrikai, közép-afrikai köztársasági', 'CFA-frank (BEAC) ', 'XAF', 'centime', 'Central African Republic'),
(125, 'Kuba', 'Kubai Köztársaság', 'CU', 'Havanna', 'kubai, kubai köztársasági', 'kubai peso', 'CUP', 'centavo', 'Cuba'),
(126, 'Kuvait', 'Kuvait Állam', 'KW', 'Kuvaitváros', 'kuvaiti, Kuvait állami', 'kuvaiti dinár', 'KWD', 'fil', 'Kuwait'),
(127, 'Laosz', 'Laoszi Népi Demokratikus Köztársaság', 'LA', 'Vientián', 'laoszi, laoszi népi demokratikus köztársasági', 'kip', 'LAK', 'at', 'Lao People\'s Democratic Republic'),
(128, 'Lengyelország', 'Lengyel Köztársaság', 'PL', 'Varsó', 'lengyel, lengyelországi, lengyel köztársasági', 'zloty', 'PLN', 'grosz', 'Poland'),
(129, 'Lesotho', 'Lesothói Királyság', 'LS', 'Maseru', 'lesothói, lesothói királysági', 'loti', 'LSL', 'sente', 'Lesotho'),
(130, 'Lettország', 'Lett Köztársaság', 'LV', 'Riga', 'lett, lettországi, lett köztársasági', 'lat', 'LVL', 'santims', 'Latvia'),
(131, 'Libanon', 'Libanoni Köztársaság', 'LB', 'Bejrút', 'libanoni, libanoni köztársasági', 'libanoni font', 'LBP', 'piaszter', 'Lebanon'),
(132, 'Libéria', 'Libériai Köztársaság', 'LR', 'Monrovia', 'libériai, libériai köztársasági', 'libériai dollár', 'LRD', 'cent', 'Liberia'),
(133, 'Líbia', 'Líbiai Arab Szocialista Népi Nagy Dzsamahirija (hivatalos), Líbiai Arab Szocialista Nagy Népi Közösség (elfogadott)', 'LY', 'Tripoli', 'líbiai, líbiai arab szocialista népi nagy dzsamahirijai, líbiai arab szocialista nagy népi közösségi', 'líbiai dinár', 'LYD', 'dirham', 'Libyan Arab Jamahiriya'),
(134, 'Liechtenstein', 'Liechtensteini Hercegség', 'LI', 'Vaduz', 'liechtensteini, liechtensteini hercegségi', 'svájci frank', 'CHF', 'centime', 'Liechtenstein'),
(135, 'Litvánia', 'Litván Köztársaság', 'LT', 'Vilnius', 'litván, litvániai, litván köztársasági', 'litas', 'LTL', 'centas', 'Lithuania'),
(136, 'Luxemburg', 'Luxemburgi Nagyhercegség', 'LU', 'Luxembourg', 'luxemburgi, luxemburgi nagyhercegségi', 'euró', 'EUR', 'cent', 'Luxembourg'),
(137, 'Macedónia', 'Macedónia Volt Jugoszláv Köztársaság', 'MK', 'Szkopje', 'Macedónia volt jugoszláv köztársasági', 'dénár', 'MKD', 'deni', 'Macedonia'),
(138, 'Madagaszkár', 'Madagaszkári Köztársaság', 'MG', 'Antananarivo', 'madagaszkári, malagaszi, madagaszkári köztársasági', 'ariary', 'MGA', 'iraimbilanja', 'Madagascar'),
(139, 'Magyarország', 'Magyar Köztársaság', 'HU', 'Budapest', 'magyar, magyarországi, magyar köztársasági', 'forint', 'HUF', 'fillér', 'Hungary'),
(140, 'Makaó ', 'Makaó Különleges Közigazgatási Terület', 'MO', 'Makaó', 'makaói, Makaó különleges közigazgatási területi', 'pataca', 'MOP', 'avo', 'Macao'),
(141, 'Malajzia', 'Malajzia', 'MY', 'Kuala Lumpur', 'maláj, malajziai', 'ringgit', 'MYR', 'szen', 'Malaysia'),
(142, 'Malawi', 'Malawi Köztársaság', 'MW', 'Lilongwe', 'malawi, malawi köztársasági', 'malawi kwacha', 'MWK', 'tambala', 'Malawi'),
(143, 'Maldív-szigetek', 'Maldív Köztársaság', 'MV', 'Male', 'maldív, maldív-szigeteki, maldív köztársasági', 'maldív rúpia (rufiyaa)', 'MVR', 'laari', 'Maldives'),
(144, 'Mali', 'Mali Köztársaság', 'ML', 'Bamako', 'mali, mali köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Mali'),
(145, 'Málta', 'Máltai Köztársaság', 'MT', 'Valletta', 'máltai, máltai köztársasági', 'euró', 'EUR', 'cent', 'Malta'),
(146, 'Marokkó', 'Marokkói Királyság', 'MA', 'Rabat', 'marokkói, marokkói királysági', 'marokkói dirham', 'MAD', 'centime', 'Morocco'),
(147, 'Marshall-szigetek', 'Marshall-szigeteki Köztársaság', 'MH', 'Majuro', 'Marshall-szigeteki, Marshall-szigeteki köztársasági', 'USA-dollár', 'USD', 'cent', 'Marshall Islands'),
(148, 'Martinique ', 'Martinique', 'MQ', 'Fort-de-France', 'martinique-i', 'euró', 'EUR', 'cent', 'Martinique'),
(149, 'Mauritánia', 'Mauritániai Iszlám Köztársaság', 'MR', 'Nuáksút (Nouakchott)', 'mauritániai, mauritániai iszlám köztársasági', 'uguiya', 'MRO', 'khum', 'Mauritania'),
(150, 'Mauritius', 'Mauritiusi Köztársaság', 'MU', 'Port Louis', 'mauritiusi, mauritiusi köztársasági', 'mauritiusi rúpia', 'MUR', 'cent', 'Mauritius'),
(151, 'Mayotte ', 'Mayotte Területi Közösség', 'YT', 'Mamoudzou', 'mayotte-i, Mayotte területi közösségi', 'euró', 'EUR', 'cent', 'Mayotte'),
(152, 'Mexikó', 'Mexikói Egyesült Államok', 'MX', 'Mexikóváros', 'mexikói, mexikói egyesült államokbeli', 'mexikói peso', 'MXN', 'centavo', 'Mexico'),
(153, 'Mianmar ', 'Mianmari Államszövetség', 'MM', 'Rangun', 'mianmari, mianmari államszövetségi, burmai', 'kyat', 'MMK', 'pya', 'Myanmar'),
(154, 'Mikronézia', 'Mikronéziai Szövetségi Államok', 'FM', 'Palikir', 'mikronéz, mikronéziai, mikronéziai szövetségi államokbeli', 'USA-dollár', 'USD', 'cent', 'Micronesia, Federated States of'),
(155, 'Moldova', 'Moldovai Köztársaság', 'MD', 'Chişinău', 'moldáv, moldovai, moldován, moldovai köztársasági', 'moldován lej', 'MDL', 'bani', 'Moldova, Republic of'),
(156, 'Monaco', 'Monacói Hercegség', 'MC', 'Monaco', 'monacói, monacói hercegségi', 'euró', 'EUR', 'cent', 'Monaco'),
(157, 'Mongólia', 'Mongólia', 'MN', 'Ulánbátor', 'mongol, mongóliai', 'tugrik', 'MNT', 'möngö', 'Mongolia'),
(158, 'Montenegró', 'Montenegró', 'ME', 'Podgorica', 'montenegrói, montenegrói köztársasági', 'euró', 'EUR', 'cent', 'Montenegro'),
(159, 'Montserrat ', 'Montserrat', 'MS', 'Plymouth', 'montserrat-i', 'kelet-karibi dollár', 'XCD', 'cent', 'Montserrat'),
(160, 'Mozambik', 'Mozambiki Köztársaság', 'MZ', 'Maputo', 'mozambiki, mozambiki köztársasági', 'metical', 'MZN', 'centavo', 'Mozambique'),
(161, 'Namíbia', 'Namíbiai Köztársaság', 'NA', 'Windhoek', 'namíbiai, namíbiai köztársasági', 'namíbiai dollár; dél-afrikai rand', 'NAD;', 'cent', 'Namibia'),
(162, 'Nauru', 'Naurui Köztársaság', 'NR', 'Yaren', 'naurui, naurui köztársasági', 'ausztrál dollár', 'AUD', 'cent', 'Nauru'),
(163, 'Németország', 'Németországi Szövetségi Köztársaság', 'DE', 'Berlin', 'német, németországi, németországi szövetségi köztársasági', 'euró', 'EUR', 'cent', 'Germany'),
(164, 'Nepál', 'Nepáli Demokratikus Szövetségi Köztársaság', 'NP', 'Katmandu', 'nepáli, nepáli demokratikus szövetségi köztársasági', 'nepáli rúpia', 'NPR', 'paisa', 'Nepal'),
(165, 'Nicaragua', 'Nicaraguai Köztársaság', 'NI', 'Managua', 'nicaraguai, nicaraguai köztársasági', 'córdoba', 'NIO', 'centavo', 'Nicaragua'),
(166, 'Niger', 'Nigeri Köztársaság', 'NE', 'Niamey', 'nigeri, nigeri köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Niger'),
(167, 'Nigéria', 'Nigériai Szövetségi Köztársaság', 'NG', 'Abuja', 'nigériai, nigériai szövetségi köztársasági', 'naira', 'NGN', 'kobo', 'Nigeria'),
(168, 'Niue ', 'Niuei Köztársaság', 'NU', 'Alofi', 'niuei, niuei köztársasági', 'új-zélandi dollár', 'NZD', 'cent', 'Niue'),
(169, 'Norfolk-sziget ', 'Norfolk-sziget', 'NF', 'Kingston', 'Norfolk-szigeti', 'ausztrál dollár', 'AUD', 'cent', 'Norfolk Island'),
(170, 'Norvégia', 'Norvég Királyság', 'NO', 'Oslo', 'norvég, norvégiai, norvég királysági', 'norvég korona', 'NOK', 'őre', 'Norway'),
(171, 'Nyugat-Szahara ', 'Nyugat-Szahara ', 'EH', 'Ajún', 'nyugat-szaharai, szaharai', 'marokkói dirham', 'MAD', 'centime', 'Western Sahara'),
(172, 'Olaszország', 'Olasz Köztársaság', 'IT', 'Róma', 'olasz, olaszországi, olasz köztársasági', 'euró', 'EUR', 'cent', 'Italy'),
(173, 'Omán', 'Ománi Szultánság', 'OM', 'Maszkat', 'ománi, ománi szultánsági', 'ománi riál', 'OMR', 'baiza', 'Oman'),
(174, 'Oroszország', 'Orosz Föderáció', 'RU', 'Moszkva', 'orosz, oroszországi, orosz föderációbeli', 'orosz rubel', 'RUB', 'kopejka', 'Russian Federation'),
(175, 'Örményország', 'Örmény Köztársaság', 'AM', 'Jereván', 'örmény, örményországi, örmény köztársasági', 'dram', 'AMD', 'luma', 'Armenia'),
(176, 'Pakisztán', 'Pakisztáni Iszlám Köztársaság', 'PK', 'Iszlámábád', 'pakisztáni, pakisztáni iszlám köztársasági', 'pakisztáni rúpia', 'PKR', 'paisa', 'Pakistan'),
(177, 'Palau', 'Palaui Köztársaság', 'PW', 'Melekeok', 'palaui, palaui köztársasági', 'USA-dollár', 'USD', 'cent', 'Palau'),
(178, 'Panama', 'Panamai Köztársaság', 'PA', 'Panamavárosk', 'panamai, panamai köztársasági', 'balboa', 'PAB', 'centésimo', 'Panama'),
(179, 'Pápua Új-Guinea', 'Pápua Új-guineai Független Állam', 'PG', 'Port Moresby', 'pápua új-guineai, pápua új-guineai független állami', 'kina', 'PGK', 'toea', 'Papua New Guinea'),
(180, 'Paraguay', 'Paraguayi Köztársaság', 'PY', 'Asunción', 'paraguayi, paraguayi köztársasági', 'guaraní', 'PYG', 'céntimo', 'Paraguay'),
(181, 'Peru', 'Perui Köztársaság', 'PE', 'Lima', 'perui, perui köztársasági', 'új sol', 'PEN', 'céntimo', 'Peru'),
(182, 'Pitcairn-szigetek ', 'Pitcairn-szigetek', 'PN', 'Adamstown', 'pitcairni, Pitcairn-szigeteki', 'új-zélandi dollár', 'NZD', 'cent', 'Pitcairn'),
(183, 'Portugália', 'Portugál Köztársaság', 'PT', 'Lisszabon', 'portugál, portugáliai, portugál köztársasági', 'euró', 'EUR', 'cent', 'Portugal'),
(184, 'Puerto Rico ', 'Puerto Rico', 'PR', 'San Juan', 'Puerto Ricó-i', 'USA-dollár', 'USD', 'cent', 'Puerto Rico'),
(185, 'Réunion ', 'Réunion', 'RE', 'Saint-Denis', 'réunioni', 'euró', 'EUR', 'cent', 'Reunion'),
(186, 'Románia', 'Románia', 'RO', 'Bukarest', 'román, romániai', 'román lej', 'RON', 'bani', 'Romania'),
(187, 'Ruanda', 'Ruandai Köztársaság', 'RW', 'Kigali', 'ruandai, ruandai köztársasági', 'ruandai frank', 'RWF', 'centime', 'Rwanda'),
(188, 'Saint Kitts és Nevis', 'Saint Kitts és Nevis Államszövetség', 'KN', 'Basseterre', 'Saint Kitts és Nevis-i, Saint Kitts és Nevis államszövetségi', 'kelet-karibi dollár', 'XCD', 'cent', 'Saint Kitts and Nevis'),
(189, 'Saint Lucia', 'Saint Lucia', 'LC', 'Castries', 'Saint Lucia-i', 'kelet-karibi dollár', 'XCD', 'cent', 'Saint Lucia'),
(190, 'Saint-Pierre és Miquelon', 'Saint-Pierre és Miquelon Területi Közösség', 'PM', 'Saint-Pierre', 'Saint-Pierre és Miquelon-i, Saint-Pierre és Miquelon területi közösségi', 'euró', 'EUR', 'cent', 'Saint Pierre and Miquelon'),
(191, 'Saint Vincent és Grenadine-szigetek', 'Saint Vincent és Grenadine-szigetek', 'VC', 'Kingstown', 'Saint Vincent és Grenadine-szigeteki', 'kelet-karibi dollár', 'XCD', 'cent', 'Saint Vincent and the Grenadines'),
(192, 'Salamon-szigetek', 'Salamon-szigetek', 'SB', 'Honiara', 'Salamon-szigeteki', 'Salamon-szigeteki dollár', 'SBD', 'cent', 'Solomon Islands'),
(193, 'Salvador', 'Salvadori Köztársaság', 'SV', 'San Salvador', 'salvadori, salvadori köztársasági', 'salvadori colón', 'SVC', 'centavo', 'El Salvador'),
(194, 'San Marino', 'San Marino Köztársaság', 'SM', 'San Marino', 'San Marinó-i, San Marino köztársasági', 'euró', 'EUR', 'cent', 'San Marino'),
(195, 'São Tomé és Príncipe', 'São Tomé és Príncipe Demokratikus Köztársaság', 'ST', 'São Tomé', 'São Tomé és Príncipe-i, São Tomé és Príncipe demokratikus köztársasági', 'dobra', 'STD', 'céntimo', 'Sao Tome and Principe'),
(196, 'Seychelle-szigetek', 'Seychelle Köztársaság', 'SC', 'Victoria', 'seychelle-i, Seychelle-szigeteki, Seychelle köztársasági', 'seychelle-i rúpia', 'SCR', 'cent', 'Seychelles'),
(197, 'Sierra Leone', 'Sierra Leone Köztársaság', 'SL', 'Freetown', 'Sierra Leone-i, Sierra Leone köztársasági', 'leone', 'SLL', 'cent', 'Sierra Leone'),
(198, 'Spanyolország', 'Spanyol Királyság', 'ES', 'Madrid', 'spanyol, spanyolországi, spanyol királysági', 'euró', 'EUR', 'cent', 'Spain'),
(199, 'Srí Lanka', 'Srí Lanka Demokratikus Szocialista Köztársaság', 'LK', 'Colombo', 'Srí Lanka-i, Srí Lanka demokratikus szocialista köztársasági', 'Srí Lanka-i rúpia', 'LKR', 'cent', 'Sri Lanka'),
(200, 'Suriname', 'Suriname Köztársaság', 'SR', 'Paramaribo', 'suriname-i, Suriname köztársasági', 'suriname-i dollár', 'SRD', 'cent', 'Suriname'),
(201, 'Svájc', 'Svájci Államszövetség', 'CH', 'Bern', 'svájci, svájci államszövetségi', 'svájci frank', 'CHF', 'centime', 'Switzerland'),
(202, 'Svalbard- és Jan Mayen-szigetek ', 'Svalbard- és Jan Mayen-szigetek', 'SJ', 'Longyearbyen', 'Svalbard- és Jan Mayen-szigeteki', 'norvég korona', 'NOK', 'őre', 'Svalbard and Jan Mayen'),
(203, 'Svédország', 'Svéd Királyság', 'SE', 'Stockholm', 'svéd, svédországi, svéd királysági', 'svéd korona', 'SEK', 'őre', 'Sweden'),
(204, 'Szamoa', 'Szamoai Független Állam', 'WS', 'Apia', 'szamoai, szamoai független állami', 'tala', 'WST', 'sene', 'Samoa'),
(205, 'Szaúd-Arábia', 'Szaúd-arábiai Királyság', 'SA', 'Rijád', 'szaúdi, Szaúd-arábiai, Szaúd-arábiai királysági', 'szaúdi riál', 'SAR', 'halala', 'Saudi Arabia'),
(206, 'Szenegál', 'Szenegáli Köztársaság', 'SN', 'Dakar', 'szenegáli, szenegáli köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Senegal'),
(207, 'Szent Ilona ', 'Szent Ilona és kapcsolt területei', 'SH', 'Jamestown', 'Szent Ilona-i', 'Szent Ilona-i font', 'SHP', 'penny', 'Saint Helena'),
(208, 'Szerbia', 'Szerb Köztársaság', 'RS', 'Belgrád', 'szerb, szerbiai, szerb köztársasági', 'szerb dinár', 'RSD', 'para', 'Serbia'),
(209, 'Szingapúr', 'Szingapúri Köztársaság', 'SG', 'Szingapúr', 'szingapúri, szingapúri köztársasági', 'szingapúri dollár', 'SGD', 'cent', 'Singapore'),
(210, 'Szíria', 'Szíriai Arab Köztársaság', 'SY', 'Damaszkusz', 'szír, szíriai, szíriai arab köztársasági', 'szíriai font', 'SYP', 'piaszter', 'Syrian Arab Republic'),
(211, 'Szlovákia', 'Szlovák Köztársaság', 'SK', 'Pozsony (Bratislava)', 'szlovák, szlovákiai, szlovák köztársasági', 'euró', 'EUR', 'cent', 'Slovakia'),
(212, 'Szlovénia', 'Szlovén Köztársaság', 'SI', 'Ljubljana', 'szlovén, szlovéniai, szlovén köztársasági', 'euró', 'EUR', 'cent', 'Slovenia'),
(213, 'Szomália', 'Szomália', 'SO', 'Mogadishu', 'szomáli, szomáliai', 'szomáli shilling', 'SOS', 'cent', 'Somalia'),
(214, 'Szudán', 'Szudáni Köztársaság', 'SD', 'Kartúm', 'szudáni, szudáni köztársasági', 'szudáni font', 'SDG', 'piaszter', 'Sudan'),
(215, 'Szváziföld', 'Szváziföldi Királyság', 'SZ', 'Mbabane', 'szvázi, szváziföldi, szváziföldi királysági', 'lilangeni', 'SZL', 'cent', 'Swaziland'),
(216, 'Tádzsikisztán', 'Tádzsik Köztársaság', 'TJ', 'Dusanbe', 'tádzsik, tádzsikisztáni, tádzsik köztársasági', 'szomoni', 'TJS', 'diram', 'Tajikistan'),
(217, 'Tajvan ', 'Tajvan', 'TW', 'Tajpej', 'tajvani', 'tajvani új dollár', 'TWD', 'fen', 'Taiwan, Province of China'),
(218, 'Tanzánia', 'Tanzániai Egyesült Köztársaság', 'TZ', 'Dodoma', 'tanzániai, tanzániai egyesült köztársasági', 'tanzániai shilling', 'TZS', 'cent', 'Tanzania, United Republic of'),
(219, 'Thaiföld', 'Thaiföldi Királyság', 'TH', 'Bangkok', 'thai, thaiföldi, thaiföldi királysági', 'bát', 'THB', 'szatang', 'Thailand'),
(220, 'Togo', 'Togói Köztársaság', 'TG', 'Lomé', 'togói, togói köztársasági', 'CFA-frank (BCEAO) ', 'XOF', 'centime', 'Togo'),
(221, 'Tokelau-szigetek ', 'Tokelau-szigetek', 'TK', NULL, 'tokelaui, Tokelau-szigeteki', 'új-zélandi dollár', 'NZD', 'cent', 'Tokelau'),
(222, 'Tonga', 'Tongai Királyság', 'TO', 'Nuku’alofa', 'tongai, tongai királysági', 'pa’anga', 'TOP', 'seniti', 'Tonga'),
(223, 'Törökország', 'Török Köztársaság', 'TR', 'Ankara', 'török, törökországi, török köztársasági', 'török líra', 'TRY', 'kurus', 'Turkey'),
(224, 'Trinidad és Tobago', 'Trinidad és Tobago Köztársaság', 'TT', 'Port of Spain', 'Trinidad és Tobagó-i, Trinidad és Tobago köztársasági', 'Trinidad és Tobagó-i dollár', 'TTD', 'cent', 'Trinidad and Tobago'),
(225, 'Tunézia', 'Tunéziai Köztársaság', 'TN', 'Tunisz', 'tunéziai, tunéziai köztársasági', 'tunéziai dinár', 'TND', 'millime', 'Tunisia'),
(226, 'Turks- és Caicos-szigetek ', 'Turks- és Caicos-szigetek', 'TC', 'Cockburn Town', 'Turks- és Caicos-szigeteki', 'USA-dollár', 'USD', 'cent', 'Turks and Caicos Islands'),
(227, 'Tuvalu', 'Tuvalu', 'TV', 'Funafuti', 'tuvalui', 'ausztrál dollár', 'AUD', 'cent', 'Tuvalu'),
(228, 'Türkmenisztán', 'Türkmenisztán', 'TM', 'Asgabat', 'türkmén, türkmenisztáni', 'türkmén manát', 'TMT', 'tenge', 'Turkmenistan'),
(229, 'Uganda', 'Ugandai Köztársaság', 'UG', 'Kampala', 'ugandai, ugandai köztársasági', 'ugandai shilling', 'UGX', 'cent', 'Uganda'),
(230, 'Új-Kaledónia ', 'Új-Kaledónia', 'NC', 'Noumea', 'új-kaledóniai', 'CFP-frank', 'XPF', 'centime', 'New Caledonia'),
(231, 'Új-Zéland', 'Új-Zéland', 'NZ', 'Wellington', 'új-zélandi', 'új-zélandi dollár', 'NZD', 'cent', 'New Zealand'),
(232, 'Ukrajna', 'Ukrajna', 'UA', 'Kijev', 'ukrán, ukrajnai', 'hrivnya', 'UAH', 'kopejka', 'Ukraine'),
(233, 'Uruguay', 'Uruguayi Keleti Köztársaság', 'UY', 'Montevideo', 'uruguayi, uruguayi keleti köztársasági', 'uruguayi peso', 'UYU', 'centésimo', 'Uruguay'),
(234, 'Üzbegisztán', 'Üzbég Köztársaság', 'UZ', 'Taskent', 'üzbég, üzbegisztáni, üzbég köztársasági', 'üzbég szom', 'UZS', 'tiyin', 'Uzbekistan'),
(235, 'Vanuatu', 'Vanuatui Köztársaság', 'VU', 'Port Vila', 'vanuatui, vanuatui köztársasági', 'vatu', 'VUV', NULL, 'Vanuatu'),
(236, 'Venezuela', 'Venezuelai Bolivári Köztársaság', 'VE', 'Caracas', 'venezuelai, venezuelai bolivári köztársasági', 'bolívar fuerte', 'VEF', 'céntimo', 'Venezuela'),
(237, 'Vietnam', 'Vietnami Szocialista Köztársaság', 'VN', 'Hanoi', 'vietnami, vietnami szocialista köztársasági', 'dong', 'VND', 'hao, xu', 'Viet Nam'),
(238, 'Wallis és Futuna ', 'Wallis és Futuna', 'WF', 'Mata-Utu', 'Wallis és Futuna-i', 'CFP-frank', 'XPF', 'centime', 'Wallis and Futuna'),
(239, 'Zambia', 'Zambiai Köztársaság', 'ZM', 'Lusaka', 'zambiai, zambiai köztársasági', 'zambiai kwacha', 'ZMK', 'ngwee', 'Zambia'),
(240, 'Zimbabwe', 'Zimbabwei Köztársaság', 'ZW', 'Harare', 'zimbabwei, zimbabwei köztársasági', 'zimbabwei dollár', 'ZWL', 'cent', 'Zimbabwe'),
(241, 'Zöld-foki-szigetek', 'Zöld-foki Köztársaság', 'CV', 'Praia', 'zöld-foki, zöld-foki-szigeteki, zöld-foki köztársasági', 'zöld-foki köztársasági escudo', 'CVE', 'centavo', 'Cape Verde');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `orszagok`
--
ALTER TABLE `orszagok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `orszagok`
--
ALTER TABLE `orszagok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
