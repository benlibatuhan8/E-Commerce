-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Ara 2021, 21:19:24
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `e-commerce`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `decription` text NOT NULL,
  `point` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `decription`, `point`, `image`) VALUES
(1, 'PDP Drums Centerstage 22\" Akustik Davul (Royal)', 120, 'Kavak ağacı malzemesi ile güçlü ve pürüzsüz sıcak tonların keyfini yaşayın. Göz alıcı görünümün ve ışıltılı kaplamaların, inanılmaz dayanıklılığının keyfini çıkarın. Davul kiti; bir trampet, kick, floor tom, iki tom artı bir taht, çift gergili donanım ve pirinç ziller içerir. True-Pitch gergi çubukları, teleskopik mahmuzlar ve normalde üst düzey davullar için ayrılmış çeşitli diğer özellikler, \"Center Stage\" kitlerini gelecek vadeden müzisyenler için mükemmel kılar.', 53, 'img/pdp1.jpg'),
(2, 'Dw Drums Design Serisi 5 Parça Akustik Davul (Gloss White)', 2659, 'DW Tasarım Serisi Davul setinden büyük bir değer bekleyin! Bu beş parçalı set, sahne veya stüdyo için ideal davul sesini oluşturma yolunda sizi iyi bir şekilde ortaya koyuyor. Bütçe dostu bir fiyata, tümü Kuzey Amerika hard rock akçaağacından yapılmış üç tom, bir trampet ve bir kick davul alırsınız. Design Series davul seti, çok çeşitli davul çalma stilleri için mükemmel olan güçlü bir ses sunar. ', 89, 'img/dw.jpg'),
(3, 'Sonor AQ2 Stage Akustik Davul Set (Trans Black)', 1127, '\r\nTeknik Özellikler\r\n\r\nKick: 22 x 17.5” \r\nFloor Tom: 16 x 15”\r\nTom Tom: 12 x 8”  \r\nTom Tom: 10 x 7” \r\nTrampet: 14 x 6”\r\nDTH4000 Double Tom Stand\r\nFloor tom legs', 92, 'img/sonor.jpg'),
(4, 'Yamaha Rydeen 20 Inch Aksamlar Dahil Davul Seti (Hot Red)', 1020, 'İçerdiği Aksamlar\r\nHS650WA hi-hat support\r\nSS650WA\r\n2x CS665A\r\nFP7210A single pedal\r\nPaiste 101 Zil Seti', 95, 'img/yamaha.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `name` text NOT NULL,
  `last_name` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`Id`, `name`, `last_name`, `password`, `email`) VALUES
(1, 'Batuhan', 'Benli', 'batben080999', 'benlibatuhan6@gmail.com'),
(3, 'Batuhan', 'Benli', '123', 'benlibatuhan3@gmail.com'),
(4, 'Batuhan', 'Benli', '123', 'benlibatu06@hotmail.com'),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, 'zeynep', 'can', '123', 'zeyno@gmail.com'),
(19, 'Ceylin', 'Benli', '123', 'ceylin@gmail.com'),
(20, '', '', '', ''),
(21, 'Selen', 'Dinge', '', 'selenndinge@gmaai'),
(22, 'Selen', 'Dinge', 'selen1357', 'selenndinge@gmail.com'),
(23, '', '', '', ''),
(24, 'Oğuzhan', 'Keleş', '123', 'ogi@gmail.com');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
