-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2026 at 01:46 PM
-- Server version: 8.0.43
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` varchar(10) NOT NULL,
  `nik` varchar(16) DEFAULT NULL COMMENT 'Nomor Induk Kependudukan',
  `nama` varchar(100) DEFAULT NULL,
  `ttl` varchar(100) DEFAULT NULL,
  `alamat` text,
  `provinsi` varchar(100) DEFAULT NULL,
  `kota_kabupaten` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kelurahan_desa` varchar(100) DEFAULT NULL,
  `rt_rw` varchar(20) DEFAULT NULL COMMENT 'Format: RT/RW',
  `kode_pos` varchar(10) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `golongan_darah` enum('A','B','AB','O','Tidak Tahu') DEFAULT NULL,
  `status` enum('BM','K','M') DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT 'Indonesia',
  `status_akun` tinyint DEFAULT NULL COMMENT '0=belum lengkap,1=tersubmit,2=divalidasi',
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `nik`, `nama`, `ttl`, `alamat`, `provinsi`, `kota_kabupaten`, `kecamatan`, `kelurahan_desa`, `rt_rw`, `kode_pos`, `jenis_kelamin`, `golongan_darah`, `status`, `pekerjaan`, `no_hp`, `email`, `agama`, `kewarganegaraan`, `status_akun`, `id_user`) VALUES
('BIO0000002', NULL, 'bahlul', 'Jakarta, 20 Juli 2000', 'indonesia', NULL, NULL, NULL, NULL, NULL, NULL, 'L', NULL, 'M', NULL, '08123456789', 'cintaastutish@gmail.com', 'islam', 'Indonesia', 1, 2),
('BIO0000003', '1234567890987654', 'budi', 'Sumenep, 11 juli 2005', 'madura', 'Jawa Barat', 'Jakarta', 'Sumatra', 'kota', '001/002', '60112', 'L', 'Tidak Tahu', 'M', '', '08222221212', 'ajiminjasmanin@gmail.com', 'kristen', 'Indonesia', 1, 3),
('BIO0000004', NULL, 'ahmad', 'Sumenep, 11 juli 2006', 'Jl adipoday', NULL, NULL, NULL, NULL, NULL, NULL, 'L', NULL, 'M', NULL, '08222221212', 'ahmad@gmail.com', 'islam', 'Indonesia', 1, 4),
('BIO0000005', '1234567890987654', 'rizky prima julianto', 'Jakarta, 20 Juli 2000', 'Jakarta, jalan sumatra', 'Jawa Barat', 'Jakarta', 'Sumatra', 'kota', '001', '60111', 'L', 'Tidak Tahu', 'K', '', '08123456789', 'Rizky@gmail.com', 'islam', 'Indonesia', 1, 5),
('BIO0000006', '1234567890987612', 'Supriyadi', 'Sumenep, 11 juli 2005', 'madura', 'Jawa Timur', 'Sumenep', 'Kepanjin', 'Desa ghara arya', '001/002', '60114', 'L', 'Tidak Tahu', 'M', '', '08123456720', 'supri@gmail.com', 'islam', 'Indonesia', 1, 6),
('BIO0000007', '1234567890987612', 'Budiyanto', 'Sumenep, 11 juli 2005', 'Jl adipoday', 'Jawa Timur', 'Sumenep', 'Kab sumenep', 'kota', '001', '60112', 'L', 'Tidak Tahu', 'K', '', '08123456781', 'buriyanto@gmail.com', 'islam', 'Indonesia', 1, 7),
('BIO0000008', '1234567890987654', 'kevin', 'Jakarta, 20 Juli 2001', 'Jl adipoday nomer 212b', 'Jawa Barat', 'Jakarta', 'Sumatra', 'kota', '001/002', '60113', 'L', 'Tidak Tahu', 'BM', '', '08123456781', 'kevin@gmail.com', 'islam', 'Indonesia', 1, 8),
('BIO0000010', '1234567890987613', 'Aides nur', 'Jakarta, 20 Juli 2004', 'Jl sumatra no 48b', 'Jawa Timur', 'Jakarta', 'Sumatra', 'kota', '001/002', '60113', 'L', 'O', 'BM', '', '08123456789', 'aides@gmail.com', 'islam', 'Indonesia', 1, 10),
('BIO0000011', '1234567890987655', 'Devita', 'Sumenep, 11 juli 2006', 'Madura', 'Jawa Timur', 'Sumenep', 'Kab sumenep', 'kota', '001/002', '60114', 'L', 'Tidak Tahu', 'BM', '', '08123456710', 'vita@gmail.com', 'islam', 'Indonesia', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int NOT NULL,
  `id_periode` int DEFAULT NULL,
  `posisi` varchar(100) DEFAULT NULL,
  `persyaratan` text,
  `tgl_buka` date DEFAULT NULL,
  `tgl_tutup` date DEFAULT NULL,
  `tgl_interview` date DEFAULT NULL,
  `tgl_tkd` date DEFAULT NULL,
  `pengumuman_hasil` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `id_periode`, `posisi`, `persyaratan`, `tgl_buka`, `tgl_tutup`, `tgl_interview`, `tgl_tkd`, `pengumuman_hasil`) VALUES
(1, 1, 'Software Engineer', 'Minimal S1 Teknik Informatika\r\nPengalaman 1-2 tahun\r\nMenguasai PHP, MySQL, JavaScript', '2025-01-01', '2025-01-31', '2025-02-05', '2025-02-10', '2025-02-15'),
(2, 1, 'Marketing Manager', 'Minimal S1 Marketing/Manajemen\nPengalaman minimal 3 tahun\nMemiliki leadership yang baik', '2025-01-01', '2025-01-31', '2025-02-06', '2025-02-11', '2025-02-16'),
(3, 1, 'Graphic Designer', 'Minimal D3 Desain Grafis\nMenguasai Adobe Photoshop, Illustrator\nPortofolio yang menarik', '2025-01-01', '2025-01-31', '2025-02-07', '2025-02-12', '2025-02-17'),
(4, 2, 'Accountant', 'Minimal S1 Akuntansi\nMemiliki sertifikat Brevet A&B\nTeliti dan jujur', '2024-11-01', '2024-11-30', '2024-12-05', '2024-12-10', '2024-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `pemilihan_lowongan`
--

CREATE TABLE `pemilihan_lowongan` (
  `id_pilihan` int NOT NULL,
  `id_biodata` varchar(10) DEFAULT NULL,
  `id_lowongan` int DEFAULT NULL,
  `id_persyaratan` varchar(5) DEFAULT NULL,
  `nama_persyaratan` varchar(100) DEFAULT NULL,
  `file_dokumen` varchar(255) DEFAULT NULL,
  `status_upload` tinyint DEFAULT '0' COMMENT '0=belum upload,1=sudah upload',
  `status_pilihan` enum('draft','permanen') DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pemilihan_lowongan`
--

INSERT INTO `pemilihan_lowongan` (`id_pilihan`, `id_biodata`, `id_lowongan`, `id_persyaratan`, `nama_persyaratan`, `file_dokumen`, `status_upload`, `status_pilihan`) VALUES
(1, 'BIO0000002', 1, NULL, NULL, NULL, 0, 'draft'),
(2, 'BIO0000003', 1, NULL, NULL, NULL, 0, 'draft'),
(3, 'BIO0000003', 2, NULL, NULL, NULL, 0, 'draft'),
(4, 'BIO0000004', 1, NULL, NULL, NULL, 0, 'draft'),
(5, 'BIO0000005', 1, NULL, NULL, NULL, 0, 'draft'),
(6, 'BIO0000007', 1, NULL, NULL, NULL, 0, 'draft'),
(9, 'BIO0000008', 1, NULL, NULL, NULL, 0, 'draft'),
(10, 'BIO0000008', 2, NULL, NULL, NULL, 0, 'draft'),
(11, 'BIO0000011', 1, NULL, NULL, NULL, 0, 'permanen'),
(12, 'BIO0000006', 1, NULL, NULL, NULL, 0, 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` varchar(10) NOT NULL,
  `id_biodata` varchar(10) DEFAULT NULL,
  `jenjang` enum('SD','SMP','SMA','D3','S1') DEFAULT NULL,
  `nama_sekolah` varchar(100) DEFAULT NULL,
  `tahun_masuk` year DEFAULT NULL,
  `tahun_lulus` year DEFAULT NULL,
  `upload` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `id_biodata`, `jenjang`, `nama_sekolah`, `tahun_masuk`, `tahun_lulus`, `upload`) VALUES
('PDK6286964', 'BIO0000002', 'SD', 'SD Pajagalan 2 sumenep', '2010', '2016', NULL),
('PDK6288680', 'BIO0000003', 'SD', 'SD Pajagalan 1 sumenep', '2010', '2016', NULL),
('PDK6288719', 'BIO0000003', 'SMP', 'SMP 2 Sumenep ', '2016', '2019', NULL),
('PDK6386601', 'BIO0000004', 'SD', 'SD Pajagalan 1 sumenep', '2010', '2016', NULL),
('PDK6386615', 'BIO0000004', 'SMP', 'SMP 2 Sumenep ', '2016', '2019', NULL),
('PDK6982796', 'BIO0000007', 'SD', 'SD Pajagalan 1 sumenep', '2010', '2016', NULL),
('PDK6982809', 'BIO0000007', 'SMP', 'SMP 2 Sumenep ', '2016', '2019', NULL),
('PDK6982841', 'BIO0000007', 'SMA', 'Sma 2 Sumenep ', '2019', '2022', NULL),
('PDK7362511', 'BIO0000008', 'SD', 'SD Pajagalan 2 sumenep', '2012', '2018', NULL),
('PDK7362526', 'BIO0000008', 'SMP', 'SMP 2 Sumenep ', '2018', '2021', NULL),
('PDK7362554', 'BIO0000008', 'SMA', 'SMA 2 Sumenep ', '2021', '2024', NULL),
('PDK7362577', 'BIO0000008', 'S1', 'Universitas Bahaudin Mudhary', '2024', '2026', NULL),
('PDK7582628', 'BIO0000011', 'SD', 'SD Pajagalan 1 sumenep', '2010', '2016', NULL),
('PDK7582641', 'BIO0000011', 'SMP', 'SMP 2 Sumenep ', '2016', '2019', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE `pengalaman_kerja` (
  `id_pk` int NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `jenis` enum('PK','Non PK','Magang') NOT NULL,
  `mulai` date DEFAULT NULL,
  `selesai` date DEFAULT NULL,
  `upload` tinyint DEFAULT NULL COMMENT '0=belum upload,1=sudah upload',
  `id_biodata` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengalaman_kerja`
--

INSERT INTO `pengalaman_kerja` (`id_pk`, `nama_perusahaan`, `posisi`, `jenis`, `mulai`, `selesai`, `upload`, `id_biodata`) VALUES
(1, 'PT madu', 'Gudang', 'PK', '2025-11-21', '2025-12-21', NULL, 'BIO0000002'),
(2, 'PT madu manis', 'Manager', 'PK', '2025-07-21', '2025-12-20', NULL, 'BIO0000003'),
(3, 'PT madu manis', 'Admin', 'Magang', '2025-06-01', '2025-12-22', NULL, 'BIO0000004'),
(4, 'PT madu', 'Admin', 'Magang', '2024-01-29', '2025-12-28', NULL, 'BIO0000007'),
(5, 'PT madu pahit', 'Admin', 'Magang', '2025-02-02', '2026-01-01', NULL, 'BIO0000008'),
(6, 'PT madu ', 'Gudang', 'Magang', '2025-01-05', '2026-01-01', NULL, 'BIO0000011');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_nilai` int NOT NULL,
  `id_pilihan` int DEFAULT NULL,
  `nilai_tkd` int DEFAULT NULL,
  `nilai_interview` int DEFAULT NULL,
  `status` enum('Lulus','Tidak Lulus') DEFAULT NULL,
  `status_pemberkasan` enum('Lengkap','Belum Lengkap') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_nilai`, `id_pilihan`, `nilai_tkd`, `nilai_interview`, `status`, `status_pemberkasan`) VALUES
(1, 1, 90, 80, 'Lulus', 'Lengkap'),
(2, 2, 90, 98, 'Lulus', 'Lengkap'),
(3, 3, 90, 50, 'Tidak Lulus', 'Lengkap'),
(4, 4, 90, 80, 'Lulus', 'Lengkap'),
(5, 6, 90, 80, 'Lulus', 'Lengkap'),
(6, 9, 90, 89, 'Lulus', 'Lengkap'),
(7, 11, 89, 75, 'Lulus', 'Lengkap');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `id_periode` int NOT NULL,
  `nama_periode` varchar(50) NOT NULL,
  `tahun_mulai` year NOT NULL,
  `tahun_selesai` year NOT NULL,
  `status` enum('Aktif','Non Aktif') NOT NULL DEFAULT 'Non Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`id_periode`, `nama_periode`, `tahun_mulai`, `tahun_selesai`, `status`) VALUES
(1, 'Periode Rekrutmen 2025 - Batch 1', '2025', '2026', 'Aktif'),
(2, 'Periode Rekrutmen 2025 - Batch 2', '2024', '2025', 'Non Aktif'),
(3, 'Periode Rekrutmen 2024 - Batch 3', '2023', '2024', 'Non Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','calon_karyawan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2a$12$RecAK1Yp2zDPEuAcgKckm.SoicekyZTJ4eauRAme3i8ff363TzQw2', 'admin'),
(2, 'admad', '$2y$10$7BBaPQIU/9nvLFbEO1KIaupY.JMcV.WWibXETNeES1JG6RNsAB5D.', 'calon_karyawan'),
(3, 'budi', '$2y$10$caWYHylzFP1atHvgeohCreIIa3vTyOhQ0.xoz3antJfqp8eDLI7N.', 'calon_karyawan'),
(4, 'ahmad', '$2y$10$Uoccp.dvOIiij6hHeIqsfetnIEksMa83w0OymOxenSOPN8sTBJEX.', 'calon_karyawan'),
(5, 'Rizky', '$2y$10$BvHMa5vGs/nqtZYjDTDUbOyfH6ibPQKaoTSUj6fK5SH89FunmaQeS', 'calon_karyawan'),
(6, 'supriyadi', '$2y$10$ozbNsH5E08xc/tm1mJfm4e1tFaA6aVxmwhPaXl/PhRwo6CNUPuFj.', 'calon_karyawan'),
(7, 'pak budi', '$2y$10$o.fW0mibo3E.aAcEwPhtXuLj3Rasy6Wg7uskpOBMDcaE8BmattNCy', 'calon_karyawan'),
(8, 'kevin', '$2y$10$3uO6CdcChGzeNK6Tr/kQyun/Lew.yKlFVne70Ci6ibA1P.NbIkLsi', 'calon_karyawan'),
(9, 'root', '$2y$10$G1j3Dad89/kJCmEyQH15r.ruhRBKyXTL6CntMFGZ0lQ9/eTwjYyz.', 'calon_karyawan'),
(10, 'aides', '$2y$10$Q3gOwdM2R.K/ZvCb.DjJAOZnz0BQtjgAFMLedF0MA/ELEElS7Xxt.', 'calon_karyawan'),
(11, 'vita', '$2y$10$aDZfPA1ULtaotySUPfTWNua.nLc6w9RZDZyz8t7DlYcML6c7FmB5.', 'calon_karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`),
  ADD KEY `fk_lowongan_periode` (`id_periode`);

--
-- Indexes for table `pemilihan_lowongan`
--
ALTER TABLE `pemilihan_lowongan`
  ADD PRIMARY KEY (`id_pilihan`),
  ADD KEY `id_biodata` (`id_biodata`),
  ADD KEY `id_lowongan` (`id_lowongan`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`),
  ADD KEY `id_biodata` (`id_biodata`);

--
-- Indexes for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
  ADD PRIMARY KEY (`id_pk`),
  ADD KEY `id_biodata` (`id_biodata`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_pilihan` (`id_pilihan`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemilihan_lowongan`
--
ALTER TABLE `pemilihan_lowongan`
  MODIFY `id_pilihan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
  MODIFY `id_pk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `biodata_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD CONSTRAINT `fk_lowongan_periode` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `pemilihan_lowongan`
--
ALTER TABLE `pemilihan_lowongan`
  ADD CONSTRAINT `pemilihan_lowongan_ibfk_1` FOREIGN KEY (`id_biodata`) REFERENCES `biodata` (`id_biodata`),
  ADD CONSTRAINT `pemilihan_lowongan_ibfk_2` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id_lowongan`);

--
-- Constraints for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`id_biodata`) REFERENCES `biodata` (`id_biodata`);

--
-- Constraints for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
  ADD CONSTRAINT `pengalaman_kerja_ibfk_1` FOREIGN KEY (`id_biodata`) REFERENCES `biodata` (`id_biodata`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_pilihan`) REFERENCES `pemilihan_lowongan` (`id_pilihan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
