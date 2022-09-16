-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 18 Ara 2020, 02:27:37
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `2019469049`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `futbolcu`
--

DROP TABLE IF EXISTS `futbolcu`;
CREATE TABLE IF NOT EXISTS `futbolcu` (
  `futbolcuID` int(11) NOT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `dogumTarihi` date NOT NULL,
  `yas` int(2) DEFAULT NULL,
  `mail` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `telefonNo` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `sozlesmeBaslangicTarihi` date NOT NULL,
  `sozlesmeBitisTarihi` date NOT NULL,
  `bulunduguTakim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`futbolcuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `futbolcu`
--

INSERT INTO `futbolcu` (`futbolcuID`, `ad`, `soyad`, `dogumTarihi`, `yas`, `mail`, `telefonNo`, `sozlesmeBaslangicTarihi`, `sozlesmeBitisTarihi`, `bulunduguTakim`) VALUES
(1, 'Fernando', 'Muslera', '1986-06-16', 34, 'fernandomuslera@gmail.com', '05391231155', '2001-08-11', '2021-06-30', 'Galatasaray'),
(2, 'Valentin', 'Rosier', '1996-08-19', 24, 'rosier@gmail.com', '05537893478', '2020-10-02', '2023-06-30', 'Beşiktaş'),
(4, 'Taylan', 'Antalyalı', '1995-01-08', 25, 'taylanantalyali@gmail.com', '05423313355', '2019-09-02', '2023-06-30', 'Galatasaray'),
(8, 'Ryan', 'Babel', '1986-12-19', 33, 'ryanbabel@gmail.com', '05324376447', '2019-07-01', '2022-06-30', 'Galatasaray'),
(9, 'Radamel', 'Falcao', '1986-02-10', 34, 'falcao@gmail.com', '05391238155', '2019-09-02', '2022-06-30', 'Galatasaray'),
(10, 'Younes', 'Belhanda', '1990-02-25', 30, 'belhanda@gmail.com', '05391238999', '2017-07-01', '2021-06-30', 'Galatasaray'),
(13, 'Oghenekaro', 'Etebo', '1995-11-09', 25, 'etebo@gmail.com', '05324376441', '2020-09-09', '2021-06-30', 'Galatasaray'),
(14, 'Martin', 'Linnes', '1991-09-20', 29, 'martinlinnes@gmail.com', '05391231125', '2016-01-13', '2021-06-30', 'Galatasaray'),
(15, 'Ryan', 'Donk', '1986-03-30', 34, 'ryandonk@gmail.com', '05423317965', '2016-01-05', '2021-06-30', 'Galatasaray'),
(24, 'Domagoj', 'Vida', '1989-04-29', 31, 'vida@gmail.com', '05337893457', '2018-01-04', '2022-06-30', 'Beşiktaş'),
(27, 'Christian', 'Luyindama', '1994-01-08', 26, 'luyindama@gmail.com', '05423317785', '2019-07-29', '2022-06-30', 'Galatasaray'),
(30, 'Ersin', 'Destanoğlu', '2001-01-01', 19, 'ersindestanoglu@gmail.com', '05337893456', '2018-09-01', '2023-06-30', 'Beşiktaş'),
(33, 'Rıdvan', 'Yılmaz', '2001-05-21', 19, 'ridvanyilmaz@gmail.com', '05324376432', '2020-04-20', '2023-06-30', 'Beşiktaş'),
(40, 'Emin', 'Bayram', '2003-04-02', 17, 'eminbayram@gmail.com', '05324376442', '2019-11-18', '2022-06-30', 'Galatasaray'),
(45, 'Marcao', 'Teixeira', '1996-06-05', 24, 'marcao@gmail.com', '05422313355', '2019-01-15', '2022-06-30', 'Galatasaray'),
(46, 'Serdar', 'Saatci', '2003-02-14', 17, 'serdarsaatci@gmail.com', '05324378441', '2020-01-01', '2023-06-30', 'Beşiktaş'),
(66, 'Arda', 'Turan', '1987-01-30', 33, 'ardaturan@gmail.com', '05324376446', '2020-07-05', '2021-06-30', 'Galatasaray'),
(70, 'Gökhan', 'Töre', '1992-01-20', 28, 'gokhantor@gmail.com', '05337893478', '2020-09-18', '2021-06-30', 'Beşiktaş'),
(88, 'Vincent', 'Aboubakar', '1992-01-22', 28, 'aboubakar@gmail.com', '05324376498', '2020-09-25', '2021-06-30', 'Beşiktaş'),
(90, 'Douglas', 'Santos', '1990-08-06', 30, 'douglas@gmail.com', '05337899889', '2019-07-27', '2021-06-30', 'Beşiktaş');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mac`
--

DROP TABLE IF EXISTS `mac`;
CREATE TABLE IF NOT EXISTS `mac` (
  `macID` int(11) NOT NULL,
  `takimID` int(11) NOT NULL,
  `teknikDirektorID` int(11) NOT NULL,
  `futbolcuID` int(11) NOT NULL,
  `skor` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  PRIMARY KEY (`macID`),
  KEY `takimID` (`takimID`),
  KEY `teknikDirektorID` (`teknikDirektorID`),
  KEY `futbolcuID` (`futbolcuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mac`
--

INSERT INTO `mac` (`macID`, `takimID`, `teknikDirektorID`, `futbolcuID`, `skor`, `tarih`) VALUES
(1, 1, 1, 4, '2-0', '2020-09-20'),
(2, 1, 1, 27, '0-0', '2020-09-27'),
(3, 1, 1, 40, '2-1', '2020-10-01'),
(4, 1, 1, 27, '0-1', '2020-10-04'),
(5, 1, 1, 15, '1-2', '2020-10-19'),
(6, 1, 1, 10, '3-0', '2020-12-05'),
(7, 1, 1, 13, '4-0', '2020-11-08'),
(8, 2, 2, 2, '4-3', '2020-11-29'),
(9, 2, 2, 33, '3-0', '2020-12-04'),
(10, 2, 2, 46, '5-2', '2020-11-10'),
(11, 2, 2, 70, '1-3', '2020-11-06'),
(12, 1, 3, 66, '4-2', '2020-10-05'),
(13, 2, 2, 24, '0-0', '2020-08-14'),
(14, 2, 4, 90, '0-2', '2020-09-22'),
(15, 2, 4, 30, '2-1', '2020-12-18'),
(16, 1, 1, 1, '4-3', '2020-11-18'),
(17, 2, 4, 70, '3-0', '2020-08-01'),
(18, 1, 1, 45, '0-1', '2020-12-17'),
(19, 1, 1, 14, '1-2', '2020-07-04'),
(20, 1, 1, 9, '2-0', '2020-10-26'),
(21, 1, 1, 8, '0-0', '2020-09-15'),
(22, 2, 2, 88, '4-3', '2020-09-05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `takim`
--

DROP TABLE IF EXISTS `takim`;
CREATE TABLE IF NOT EXISTS `takim` (
  `takimID` int(11) NOT NULL,
  `takimAdi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kurulusTarihi` date NOT NULL,
  `adres` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `telefonNo` int(11) NOT NULL,
  `mail` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`takimID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `takim`
--

INSERT INTO `takim` (`takimID`, `takimAdi`, `kurulusTarihi`, `adres`, `telefonNo`, `mail`) VALUES
(1, 'Galatasaray', '1905-10-01', 'Huzur, Huzur Mahallesi, 34396 Şişli/Sarıyer/İstanbul', 2123051902, 'gs@gmail.com'),
(2, 'Beşiktaş', '1911-08-01', 'VİŞNEZADE MH. KADIRGALAR CD. NO:1 VODAFONE PARK', 2129481903, 'besiktas@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teknikdirektor`
--

DROP TABLE IF EXISTS `teknikdirektor`;
CREATE TABLE IF NOT EXISTS `teknikdirektor` (
  `teknikDirektorID` int(11) NOT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `dogumTarihi` date NOT NULL,
  `sozlesmeBaslangicTarihi` date NOT NULL,
  `sozlesmeBitisTarihi` date NOT NULL,
  `yas` int(2) DEFAULT NULL,
  `bulunduguTakim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`teknikDirektorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `teknikdirektor`
--

INSERT INTO `teknikdirektor` (`teknikDirektorID`, `ad`, `soyad`, `dogumTarihi`, `sozlesmeBaslangicTarihi`, `sozlesmeBitisTarihi`, `yas`, `bulunduguTakim`) VALUES
(1, 'Fatih', 'Terim', '1953-09-04', '2017-12-22', '2025-12-12', 67, 'Galatasaray'),
(2, 'Sergen', 'Yalçın', '1972-11-05', '2020-01-29', '2021-06-30', 48, 'Beşiktaş'),
(3, 'Mustafa', 'Denizli', '1949-11-10', '1983-01-01', '1984-12-01', 71, 'Galatasaray'),
(4, 'Fikret', 'Orman', '1967-11-04', '2012-03-25', '2019-09-24', 53, 'Beşiktaş');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `mac`
--
ALTER TABLE `mac`
  ADD CONSTRAINT `futbolcuKisiti` FOREIGN KEY (`futbolcuID`) REFERENCES `futbolcu` (`futbolcuID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `takimKisiti` FOREIGN KEY (`takimID`) REFERENCES `takim` (`takimID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teknikDirektorKisiti` FOREIGN KEY (`teknikDirektorID`) REFERENCES `teknikdirektor` (`teknikDirektorID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
