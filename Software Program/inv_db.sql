-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: inv
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin'),('kai','kai');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datapembeli`
--

DROP TABLE IF EXISTS `datapembeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datapembeli` (
  `cus_id` varchar(50) NOT NULL,
  `cus_nam` varchar(50) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_tel` varchar(50) NOT NULL,
  `cus_alamat` varchar(50) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datapembeli`
--

LOCK TABLES `datapembeli` WRITE;
/*!40000 ALTER TABLE `datapembeli` DISABLE KEYS */;
INSERT INTO `datapembeli` VALUES ('C001','Anna Karenina Jusuf','akarenina25@gmail.com','0987654321','Jl.Kemang Raya No.23 Blok CB, Bogor'),('C002','Nur Hayati F','nur@gmail.com','0982533244','4517 Washington Ave. Manchester, Kentucky 39495'),('C003','M.Rohman','rohman@gmail.com','132791638','Jl.Raya Condet, Jakarta Timur'),('C004','Raka Oldie','raka@gmail.com','027382615','Jl.Raya Tebet timur, (Kosan 3 juta)'),('C005','Sopian','sapri@gmail.com','98197232','Jl.Raya Bogor, Depok, Cilodong'),('C006','Reni M','reni@gmail.com','1083265','Jl.Raya Bekasi No.32 Rt.01 Rw.02'),('C007','Dwi Mandasyah','dwi@gmail.com','92373927','Jl.Raya Rawamangun, Cempaka Putih'),('C008','Kim Jongin','kaikai@gmail.com','098263782','Cheongdam-ddong, Seoul'),('C009','Oh Sehun','sehunie@gmail.com','91732197','Gangnam Distric, Seoul'),('C010','Park Chanyeol','pcy@gmail.com','91297319','Daeugu, St.08, Seoul');
/*!40000 ALTER TABLE `datapembeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataproduk`
--

DROP TABLE IF EXISTS `dataproduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataproduk` (
  `prod_id` varchar(50) NOT NULL,
  `prod_nama` varchar(50) NOT NULL,
  `prod_satuan` varchar(50) NOT NULL,
  `prod_stok` varchar(50) NOT NULL,
  `prod_colour` varchar(10) NOT NULL,
  `prod_harga` varchar(50) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataproduk`
--

LOCK TABLES `dataproduk` WRITE;
/*!40000 ALTER TABLE `dataproduk` DISABLE KEYS */;
INSERT INTO `dataproduk` VALUES ('AC501','ACE 500 ML  ','Pcs','9','HITAM','15000'),('AC512','ACE 500 ML  ','Pcs','8','HIJAU','16000'),('B11','Banner Roll','Meter','3','Hitam','75000'),('B12','Banner Roll','Meter','5','Putih','70000'),('BW4','BOWLING ','Lusin','2','MERAH','5000'),('GN05','GIANT ','Kg','3','SKY BLUE','75000'),('KC350','Mug Kaca 350ML','Pcs','150','Kuning','20000'),('KC351','Mug Kaca 350ML','Pcs','30','Hitam','20000'),('LED01','Termos LED','Pcs','124','Hitam','35000'),('LED08','Termos LED','Pcs','32','Maroon','35000'),('LED09','Termos LED','Pcs','15','Biru','35000'),('NG11','Niagara','Pcs','10','Silver','17000'),('NG18','Niagara','Pcs','24','Rose Gold','15000'),('P02','Base Pamflet','Pcs','14','Hijau','50000'),('P03','Base Pamflet ','Pcs','10','Putih','30000');
/*!40000 ALTER TABLE `dataproduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `inv_nomor` varchar(10) NOT NULL,
  `inv_trnomor` varchar(10) NOT NULL,
  `inv_penerima` varchar(23) NOT NULL,
  `inv_tanggal` varchar(15) NOT NULL,
  PRIMARY KEY (`inv_nomor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('INV-01','TR0001','Anna Karenina Jusuf','01-Jun-2021'),('INV-02','TR0002','Nur Hayati F','02-Jun-2021'),('INV-03','TR0003','M.Rohman','03-Jun-2021'),('INV-04','TR0004','Raka Oldie','04-Jun-2021'),('INV-05','TR0005','Sopian','05-Jun-2021'),('INV-06','TR0006','Reni M','06-Jun-2021'),('INV-07','TR0007','Dwi Mandasyah','07-Jun-2021'),('INV-08','TR0008','Kim Jongin','08-Jun-2021'),('INV001','TR001','Anna Karenina','01-Apr-2021'),('INV002','TR002','Sopian','08-Apr-2021');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_struk`
--

DROP TABLE IF EXISTS `t_struk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_struk` (
  `nomor_order` varchar(10) NOT NULL,
  `id_produk` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `qty` int(10) NOT NULL,
  `total_harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_struk`
--

LOCK TABLES `t_struk` WRITE;
/*!40000 ALTER TABLE `t_struk` DISABLE KEYS */;
INSERT INTO `t_struk` VALUES ('TR001','AC512',1,16000),('TR001','AC501',3,45000),('TR002','AC512',6,96000),('0023','bw4',5,25000),('0023','bw4',5,25000),('0023','gn05',2,150000),('0023','bw4',1,5000),('TR0001','LED01',2,70000),('TR0001','AC501',3,45000),('TR0001','KC350',4,80000),('TR0002','NG11',2,34000),('TR0002','P02',4,200000),('TR0002','GN05',1,75000),('TR0003','AC512',2,32000),('TR0003','NG18',2,30000),('TR0003','BW4',1,5000),('TR0004','KC351',2,40000),('TR0004','LED08',3,105000),('TR0004','NG18',4,60000),('TR0005','B11',1,75000),('TR0005','GN05',2,150000),('TR0006','NG18',3,45000),('TR0006','BW4',1,5000),('TR0007','LED09',3,105000),('TR0007','KC351',1,20000),('TR0008','B11',2,150000),('TR0008','LED08',1,35000),('TR0008','P03',1,30000);
/*!40000 ALTER TABLE `t_struk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trpenjualan`
--

DROP TABLE IF EXISTS `trpenjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trpenjualan` (
  `jual_id` varchar(50) NOT NULL,
  `jual_tgl` varchar(50) NOT NULL,
  `jual_cus_id` varchar(50) NOT NULL,
  `jual_total_item` int(4) NOT NULL,
  `jual_subtot` int(50) NOT NULL,
  `jual_disc` int(50) NOT NULL,
  `jual_total` int(50) NOT NULL,
  PRIMARY KEY (`jual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trpenjualan`
--

LOCK TABLES `trpenjualan` WRITE;
/*!40000 ALTER TABLE `trpenjualan` DISABLE KEYS */;
INSERT INTO `trpenjualan` VALUES ('TR0001','01-Jun-2021','C001',9,195000,15000,180000),('TR0002','02-Jun-2021','C002',7,309000,0,309000),('TR0003','03-Jun-2021','C003',5,67000,1000,66000),('TR0004','04-Jun-2021','C004',9,205000,5000,200000),('TR0005','05-Jun-2021','C005',3,225000,20000,205000),('TR0006','06-Jun-2021','C006',4,50000,0,50000),('TR0007','07-Jun-2021','C007',4,125000,0,125000),('TR0008','08-Jun-2021','C008',4,215000,20000,195000),('TR001','05-Apr-2021','A112',4,61000,0,61000),('TR002','04-Apr-2021','S123',6,96000,0,96000);
/*!40000 ALTER TABLE `trpenjualan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-29  7:55:32
