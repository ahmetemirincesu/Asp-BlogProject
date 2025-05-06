-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.0.27 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- blogprojesidb1 için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `blogprojesidb1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blogprojesidb1`;

-- tablo yapısı dökülüyor blogprojesidb1.galeri
CREATE TABLE IF NOT EXISTS `galeri` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ResimUrl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Aciklama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogprojesidb1.galeri: 4 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `galeri` DISABLE KEYS */;
INSERT INTO `galeri` (`Id`, `ResimUrl`, `Aciklama`) VALUES
	(1, '/img/istanbul.jpg', 'İstanbul'),
	(2, '/img/ankara.jpg', 'Ankara'),
	(3, '/img/izmir.jpeg', 'İzmir'),
	(4, '/img/eskişehir.jpg', 'Eskişehir');
/*!40000 ALTER TABLE `galeri` ENABLE KEYS */;

-- tablo yapısı dökülüyor blogprojesidb1.hakkimda
CREATE TABLE IF NOT EXISTS `hakkimda` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ResimUrl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Aciklama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Baslik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `KisaAciklama` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdSoyad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogprojesidb1.hakkimda: 1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `hakkimda` DISABLE KEYS */;
INSERT INTO `hakkimda` (`Id`, `ResimUrl`, `Aciklama`, `Baslik`, `KisaAciklama`, `AdSoyad`) VALUES
	(2, '/img/pp.jpeg', 'Merhaba, ben Ahmet Emir. Yazılım teknolojileri, programlama ve yapay zeka ile ilgileniyorum. Başarılı bir program geliştirici olmak için çaba veriyorum.', 'Yazılıma tutkuyla bağlanan programcı', 'Merhaba, ben Ahmet Emir. Yazılım teknolojileri, programlama ve yapay zeka ile ilgileniyorum. Başarılı bir program geliştirici olmak için çaba veriyorum.', 'Ahmet Emir');
/*!40000 ALTER TABLE `hakkimda` ENABLE KEYS */;

-- tablo yapısı dökülüyor blogprojesidb1.kategoriler
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogprojesidb1.kategoriler: 5 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `kategoriler` DISABLE KEYS */;
INSERT INTO `kategoriler` (`Id`, `Ad`) VALUES
	(1, 'SQL'),
	(2, 'C#'),
	(3, 'ASP.NET'),
	(4, 'HTML'),
	(5, 'CSS');
/*!40000 ALTER TABLE `kategoriler` ENABLE KEYS */;

-- tablo yapısı dökülüyor blogprojesidb1.mesajlar
CREATE TABLE IF NOT EXISTS `mesajlar` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Konu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Icerik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogprojesidb1.mesajlar: 2 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `mesajlar` DISABLE KEYS */;
INSERT INTO `mesajlar` (`Id`, `Mail`, `Konu`, `Icerik`, `Tarih`) VALUES
	(1, 'deneme@mail.com', 'Deneme MEsajı', 'Tekrar deneme yapıyorum.', '2025-05-04 16:25:45'),
	(2, 'deneme@mail.com', 'Deneme MEsajı', 'Tekrar deneme yapıyorum.', '2025-05-04 16:26:45');
/*!40000 ALTER TABLE `mesajlar` ENABLE KEYS */;

-- tablo yapısı dökülüyor blogprojesidb1.sosyalmedya
CREATE TABLE IF NOT EXISTS `sosyalmedya` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PlatformIcon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogprojesidb1.sosyalmedya: 3 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `sosyalmedya` DISABLE KEYS */;
INSERT INTO `sosyalmedya` (`Id`, `PlatformIcon`, `Url`) VALUES
	(1, 'fab fa-instagram', 'https://www.instagram.com/ultraemrr/'),
	(2, 'fab fa-twitter', 'https://x.com/emrzbabo'),
	(3, 'fab fa-github', 'https://github.com/ahmetemirincesu');
/*!40000 ALTER TABLE `sosyalmedya` ENABLE KEYS */;

-- tablo yapısı dökülüyor blogprojesidb1.yazilar
CREATE TABLE IF NOT EXISTS `yazilar` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Baslik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Icerik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ResimUrl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  `OlusturanKisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Durum` int DEFAULT NULL,
  `KategoriId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `KategoriId` (`KategoriId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogprojesidb1.yazilar: 9 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yazilar` DISABLE KEYS */;
INSERT INTO `yazilar` (`Id`, `Baslik`, `Icerik`, `ResimUrl`, `Tarih`, `OlusturanKisi`, `Durum`, `KategoriId`) VALUES
	(1, 'HeidiSQL Nedir? Tüm detayları', 'Icerik denemeIcerik denemeIcerik denemeIcerik dene Icerik denemeIcerik denemeIcerik deneme Icerik deneme', '/img/carousel-1.jpg', '2025-05-04 16:18:12', 'AEmir', 1, 1),
	(2, 'SQL Nedir?', 'SQL (Structured Query Language), veritabanlarıyla iletişim kurmak için kullanılan güçlü bir dildir. SQL kullanarak veritabanlarına veri ekleyebilir, var olan verileri güncelleyebilir, silebilir ve sorgulayabiliriz. Özellikle büyük veri sistemlerinde, verileri düzenlemek ve hızlı erişim sağlamak için temel bir araçtır. Birçok yazılım projesinde SQL bilgisi çok önemlidir.', '/img/carousel-1.jpg', '2025-05-04 16:19:23', 'AEmir', 1, 1),
	(3, 'SELECT Komutu ile Veri Çekme', 'SQL\'de SELECT komutu, veritabanından veri çekmek için kullanılır. Mesela bir öğrencinin adını veya yaşını öğrenmek istediğimizde SELECT kullanırız. SELECT * FROM Ogrenciler gibi bir komutla tüm öğrenci listesini çekebiliriz. Belirli şartlarda veri çekmek için WHERE gibi ek ifadeler de kullanılır. Veri listelemek SQL\'in en temel işlemlerindendir.', '/img/carousel-1.jpg', '2025-05-04 16:19:59', 'AEmir', 1, 1),
	(4, 'C# Nedir?', 'C#, Microsoft tarafından geliştirilen, nesne yönelimli bir programlama dilidir. C# ile masaüstü uygulamaları, web uygulamaları ve mobil uygulamalar geliştirmek mümkündür. Güçlü tip denetimi, modern sözdizimi ve geniş kütüphane desteği sayesinde programcılar tarafından çok tercih edilir. Özellikle Windows ortamlarında yazılım geliştirmek için ideal bir seçimdir.', '/img/carousel-1.jpg', '2025-05-04 16:20:28', 'AEmir', 1, 2),
	(5, 'C#\'ta Değişkenler Nasıl Tanımlanır?', 'C# dilinde değişkenler, program içerisinde veri saklamak için kullanılır. Bir değişkenin tipi, hangi türde veri saklayacağını belirler. Örneğin, int yaş = 25; şeklinde bir tanımlama yapabiliriz. C# dilinde string, int, bool gibi pek çok veri tipi vardır. Değişkenler programın çalışması sırasında veri üzerinde işlem yapmamıza olanak tanır.', '/img/carousel-1.jpg', '2025-05-04 16:20:57', 'AEmir', 1, 2),
	(6, 'ASP.NET Nedir?', 'ASP.NET, Microsoft tarafından geliştirilen bir web uygulama çatısıdır. ASP.NET kullanarak dinamik, güvenli ve performanslı web siteleri geliştirmek mümkündür. MVC (Model-View-Controller) yapısı sayesinde kodun daha düzenli olması sağlanır. ASP.NET Core ile birlikte, artık sadece Windows değil, Linux ve MacOS gibi platformlarda da geliştirme yapılabiliyor.', '/img/carousel-1.jpg', '2025-05-04 16:21:12', 'AEmir', 1, 3),
	(7, 'HTML Nedir?', 'HTML (HyperText Markup Language), web sayfalarının iskeletini oluşturan temel bir dildir. Web tarayıcıları, HTML etiketlerini okuyarak sayfayı kullanıcıya gösterir. Başlıklar, paragraflar, görseller ve bağlantılar gibi sayfadaki her öğe HTML ile tanımlanır. Temel HTML bilgisi, bir web sitesi oluşturmanın ilk adımıdır ve diğer web teknolojilerine geçiş için gereklidir.', '/img/carousel-1.jpg', '2025-05-04 16:21:33', 'AEmir', 1, 4),
	(8, 'HTML\'de Resim Ekleme', 'Web sitelerine görsel eklemek için HTML\'de img etiketi kullanılır. Bu etiket sayesinde bir resmi web sayfasında istediğimiz yere yerleştirebiliriz. Örneğin, <img src="resim.jpg" alt="Açıklama"> kodu ile bir görseli sayfaya ekleriz. Ayrıca resimlerin boyutlarını ve hizalanmasını ayarlamak için CSS stilleri de kullanılabilir. Görseller, sitenin daha etkileyici görünmesini sağlar.', '/img/carousel-1.jpg', '2025-05-04 16:21:46', 'AEmir', 1, 4),
	(9, 'CSS Nedir?', 'CSS (Cascading Style Sheets), HTML ile oluşturulan web sayfalarının görünümünü ve düzenini biçimlendirmek için kullanılan bir dildir. Renkler, yazı tipleri, kenar boşlukları ve arka planlar gibi görsel özellikleri ayarlamak için CSS kullanılır. Bir web sitesinin kullanıcı dostu ve estetik olması için CSS çok önemli bir rol oynar. Responsive tasarımlar da CSS ile yapılır.', '/img/carousel-1.jpg', '2025-05-04 16:22:09', 'AEmir', 1, 5);
/*!40000 ALTER TABLE `yazilar` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
