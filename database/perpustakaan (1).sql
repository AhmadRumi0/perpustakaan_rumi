-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 03:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `role` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`, `role`) VALUES
(7, 'rumi', '123', 'admin01', '089519624066', 'admin'),
(8, 'ahmad rumi', '123', 'petugas01', '087814117776', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(50) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `isi_buku`) VALUES
('65d36d263a63d.png', 'ZID0001', 'bisnis', 'Pengantar Administrasi Bisnis', 'Nur Widyawati', 'Widina', '2023-03-20', 61, 'Konsep Dasar Ilmu Administrasi Bisnis', '560114-pengantar-administrasi-bisnis-cf052c55.pdf'),
('65d36d96dc7f4.jpg', 'ZID0002', 'informatika', 'INFORMATIKA', 'Vania Natali, dkk.', 'Pusat Perbukuan', '2021-06-22', 320, 'Materi tentang Konsep Informatika', 'Informatika-BS-KLS-VIII (1).pdf'),
('65d36ed3aef90.png', 'ZID0003', 'filsafat', 'Filsafat Ilmu', 'Yeremias Jena', 'Deepublish', '2013-03-06', 292, 'Kajian Filosofis atas Sejarah dan Metodologi Ilmu Pengetahuan', 'BukuFilsafatIlmu_KajianFilosofisatasSejarahdanMetodologiIlmuPengetahuan_Yeremias_jena.pdf'),
('65d36fa68965f.png', 'ZID0004', 'sains', 'Filsafat Sains', 'Muhammad Djajadi, S.Pd., M.Pd., Ph.D.', 'ARTI BUMI INTARAN (ANGGOTA IKAPI)', '2019-04-10', 177, 'Filsafat Sains sebagai cabang filsafat yang mencoba mengkaji Sains dari segi ciri-ciri dan cara pemerolehannya. Filsafat Sains merupakan jawaban filsafat atas pertanyaan sains, atau Filsafat Sains merupakan upaya penjelasan dan penelaahan secara mendalam hal-hal yang berkaitan dengan sains terutama berhubungan dengan Sains Fisika.', 'filsafatsains-lengkap.pdf'),
('65d373891e6cc.jpeg', 'ZID0005', 'novel', 'Jodoh Terbaik', 'Seolhan-Na', 'Kawah Media', '2024-02-19', 406, 'perempuan cantik berusia 20 tahun yang harus berlapang dada menerima perjodohan dengan anak dari sahabat ayahnya. Gibran Muhammad Azzam, lelaki tampan ini baru baru berusia 24 tahun. Di usianya yang masih sangat muda, Azzam sudah menjadi CEO di perusahaan keluarganya.', '{LV} Jodoh Terbaik - Unknown.pdf'),
('65d3746464a95.jpeg', 'ZID0006', 'novel', 'Dilan : Dia adalah Dilan ku 1990', 'Pidi Baiq', 'Gramedia', '2021-02-23', 333, 'tentang seorang laki-laki bernama Dilan dan seorang gadis bernama Milea. Berbagai kisah dalam buku Dilan 1990 ini, ditulis dari sudut pandang seorang Milea.', 'DILAN 1 (shabrinabachtiar).pdf'),
('65db442d59716.jpeg', 'ZID0007', 'novel', 'Silent Love ', 'Rosita Amalani', 'LovRinz', '2019-06-18', 351, 'Silent Love ini menceritakan seorang pemuda yaitu David Xaverio, dan ia merupakan sahabat dari Natasya. Mereka bersahabat sejak masih kecil hingga kini sama-sama dewasa. Benar kata orang, tidak ada persahabatan antara seorang laki-laki dan perempuan.', 'Silent Love by Rosita Amalani.pdf'),
('65db44aa58c57.jpg', 'ZID0008', 'novel', 'Rasa', 'Tere Liye', 'Gramedia', '2021-02-16', 839, 'Rasa adalah sebuah novel yang mengisahkan tentang Linda, seorang siswi SMA yang periang, semangat, menyukai proses belajar, dan pekerja keras. Sepulang sekolah, Lin bekerja di studio foto milik pamannya. Demi membantu Bunda yang ditinggal Ayah pergi. Kepergian Ayah meninggalkan Bunda menjadi faktor terbesar mengapa ia tidak tertarik dengan lawan jenis', 'Rasa by Tere Liye.pdf'),
('65db454d6c645.png', 'ZID0009', 'novel', 'Sangga', 'Jess Jessica', 'Gramedia', '2019-09-24', 213, 'Tentang Kehidupan Sangga', 'Sangga by Jess Jessica.pdf'),
('65db45aa9fc8b.png', 'ZID0010', 'novel', 'Fake Wedding', 'Chairun Najmi', 'Gramedia', '2022-06-07', 418, 'Ada yang aneh ketika Shin Je Wo bangun dia suatu hari. Dia berada di rumah sakit, tidak mengenali siapa pun yang menatapnya dengan sorot mata khawatir. Kecuali satu orang. Laki-laki bernama Cho Kyuhyun yang terasa familiar di matanya. Dan merasa semakin aneh saat lelaki bernama Cho Kyuhyun itu mengaku sebagai suaminya.\r\nKemudian, dua tahun menjalani kehidupan rumah tangga bersama Cho Kyuhyun, Shin Je Wo mulai menemukan banyak kejanggalan. Salah satunya, suami yang tidak pernah mengatakan cinta padanya.', 'Fake Wedding by Chairun Najmi.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(987, '1211', 'jalaludin', '$2y$10$5MumwZA23S.MTCPw98JQgO9i2cd/2fh5Uv0UORaN8XxAU/4PtuCQ.', 'Laki laki', 'XI', 'Teknik Otomotif', '0898989', '2024-02-25'),
(12345, '1234', 'ahmad', '$2y$10$8zOCtAEPblrg5.GM3GyN9uozsoZw8ibG9rlVCGXUPg.pF2yHEZyba', 'Laki laki', 'X', 'Desain Pemodelan Informasi Bangunan', '1234', '2024-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('ya','tidak') NOT NULL,
  `harga` int(50) NOT NULL,
  `no_petgas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `tgl_peminjaman`, `tgl_pengembalian`, `status`, `harga`, `no_petgas`) VALUES
(117, 'ZID0006', 987, 8, '2024-02-25', '2024-03-01', 'tidak', 5000, '087814117776');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `buku_kembali`, `keterlambatan`) VALUES
(69, 116, 'ZID0002', 987, 8, '2024-02-25', 'TIDAK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
