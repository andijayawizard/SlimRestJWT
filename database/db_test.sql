-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_test.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table db_test.barang: ~4 rows (approximately)
DELETE FROM `barang`;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id_barang`, `nama_barang`, `qty`, `harga`) VALUES
	(2, 'handuk', 3, 45000),
	(4, 'sepatu kulit', 2, 125000),
	(6, 'kacamata', 3, 500000),
	(7, 'tisu basah', 10, 100000);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table db_test.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `IdProduk` int(11) NOT NULL AUTO_INCREMENT,
  `KodeProduk` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NamaProduk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HargaJual` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProduk`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_test.produk: ~6 rows (approximately)
DELETE FROM `produk`;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`IdProduk`, `KodeProduk`, `NamaProduk`, `HargaJual`, `Stok`) VALUES
	(2, '8999999273378', 'CONERLLO CHOCOLUV 135', 25000, 100),
	(3, '8999999275556', 'WALLS NINJA JELLY', 25000, 100),
	(4, '8999999275563', 'NINJA EAGLE SURP', 25000, 100),
	(5, '8999999275570', 'RAINBOW PEAK', 25000, 100),
	(6, '8999999275587', 'PADDLE POP CHOKO KICK', 25000, 100),
	(7, '8999999278458', 'CONELO DISC VAN', 25000, 100);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

-- Dumping structure for table db_test.user
CREATE TABLE IF NOT EXISTS `user` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NamaLengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NoHp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ApiKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_test.user: ~5 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`IdUser`, `Username`, `NamaLengkap`, `Email`, `NoHp`, `Password`, `ApiKey`) VALUES
	(1, 'user', 'User', 'user@user.com', '0822222222222', 'user1234', 'TVXYQc8WVp1jJHLpVRLXvs4tuoXHVSg0'),
	(13, 'andijaya', 'andika', 'andijaya@gmail.com', '0812', 'andijaya', NULL),
	(14, 'budi', 'budi susanto', 'budi@gmail.com', '0899', 'budi', NULL),
	(15, 'deni', 'deni santoso', 'deni.santoso@gmail.com', '0899', 'deni', NULL),
	(16, 'fahmi', 'fahmi hamzah', 'fahmi@gmail.com', '089912001200', 'fahmi', NULL),
	(17, 'hendra', 'hendra', 'hendra@gmail.com', '0899', 'hendra', NULL),
	(19, 'iwan', 'iwan', 'iwan@gmail.com', '0899', 'iwan', NULL),
	(20, '', '', '', '', '', NULL),
	(21, 'jojon', 'jojon pelawak', 'jojon@gmail.com', '0899', 'jojon', NULL),
	(22, 'kiwil', 'kiwil pelawak', 'kiwil@gmail.com', '0822', 'kiwil', NULL),
	(23, 'lingga', 'lingga pradana', 'lingga@gmail.com', '0822', 'lingga', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
