-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 13.10
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga_perproduk` int(11) NOT NULL,
  `subtotal_harga_perproduk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `transaksi_id`, `produk_id`, `jumlah_beli`, `harga_perproduk`, `subtotal_harga_perproduk`) VALUES
(17, 17, 7, 1, 80000, 80000),
(18, 17, 8, 1, 75000, 75000),
(19, 18, 6, 1, 70000, 70000),
(20, 18, 8, 1, 75000, 75000),
(21, 19, 8, 2, 75000, 150000),
(22, 19, 6, 3, 70000, 210000),
(23, 20, 7, 2, 80000, 160000),
(24, 21, 6, 1, 70000, 70000),
(25, 21, 8, 2, 75000, 150000),
(26, 22, 9, 2, 60000, 120000),
(27, 22, 7, 1, 80000, 80000),
(28, 23, 5, 2, 100000, 200000),
(29, 23, 9, 3, 60000, 180000),
(30, 24, 18, 1, 150000000, 150000000),
(31, 25, 17, 1, 40000000, 40000000),
(32, 26, 5, 1, 3500000, 3500000),
(33, 26, 14, 1, 7000000, 7000000),
(34, 27, 21, 1, 24000000, 24000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(1, 'Pupuk', 'unduhan.jpeg'),
(2, 'Racun', 'OIP (1).jpeg'),
(4, 'bibit tanaman', 'bibittanaman.jpg'),
(5, 'WEAPON', 'WEAPON.jpg'),
(6, 'Riflle', 'WEAPON.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `nomor_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `nomor_hp`) VALUES
(17, 'Vivi', 'Kisaran', '083378616765'),
(18, 'Caca', 'Empat Negeri', '+6283378509540'),
(19, 'Andi', 'lima puluh', '099887766655'),
(20, 'Susi', 'Kisaran', '083378616765'),
(21, 'Yeni', 'Kisaran', '083378616765'),
(22, 'Pak Agus', 'Lima Puluh', '6283877564052'),
(23, 'Pak Budi', 'Simpang Dolok', '6282245602578'),
(24, 'saki', 'wewe', '62879645835'),
(25, 'helya', 'mojoagung', '62847046346'),
(26, '', '', ''),
(27, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `kategori_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `lokasi_produk` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `kategori_produk`, `nama_produk`, `deskripsi`, `harga`, `stok`, `lokasi_produk`, `gambar`) VALUES
(5, 5, 'GT5-OFF', '-', 3500000, 31, 'Rak 2', '120_GT5-OFF1.jpg'),
(6, 5, 'GT6-AS', '-', 3100000, 21, 'Rak 3', '124_GT6-AS_A21.jpg'),
(7, 5, 'GL66-AS', '-', 3300000, 31, 'Rak 4', '129_GL66-AS_A22.jpg'),
(8, 5, '090-MU27', '-', 12000000, 31, 'Rak 5', '095_MU27-PE1.jpg'),
(9, 5, '091-MU28', '-', 14000000, 17, 'Rak 6', '097_MU28-PE2.jpg'),
(10, 5, '099-MU29', '-', 23000000, 200, 'lokasi', '101_MU29-PE1.jpg'),
(11, 5, 'SS2-V4HB', 'Calibre : 5.56 x 45 mm\r\n\r\nLength : Butt extended : 1025 mm Butt folded : 782 mm\r\n\r\nBarrel : Length : 500 mm Rifling : 6 grooves, RH 177.8 mm(7\") twist\r\n\r\nWeight : With empty magazine : 4.15 kg With full magazine (30 rounds) : 4.51 kg\r\n\r\nSight : Optical sight\r\n\r\nRate of Fire : Cyclic : 720 - 760 rpm Effective automatic fire : 120 - 200 rpm Effective single shot : 60 rpm\r\n\r\nAmmunition : - Ordinary ball cartridge MU5-Tj or SS 109 - Blank cartridge MU5-H\r\n\r\nEffective Range : 600 m', 27000000, 75, 'Amerika', 'SS2-V4HB.jpg'),
(12, 5, 'G2_Combat', 'Capacity : 15 rounds\r\n\r\nBarrel length : 4,5 inch\r\n\r\nWeight : 0.90 Kg\r\n\r\nOverall length : 200 mm\r\n\r\nHigh : 136 mm\r\n\r\nSight : fixed\r\n\r\nEvective Range : 25 m', 4700000, 120, 'Indonesia', 'G2_Combat.jpg'),
(13, 5, 'G2_Elite', 'Capacity : 15 rounds\r\n\r\nBarrel : - Length : 5 inch - Rifling : 6 grooves, 1:10 inches right hand twist\r\n\r\nWeight : 1+0.05 kg\r\n\r\nOverall length : 221 mm\r\n\r\nHeight : 139 mm\r\n\r\nSight : - Front : Fixed type - Rear : Adjustable / Fixed rear sight\r\n\r\nEvective Range : 25 m\r\n\r\nCalibre : 9x19 mm\r\n\r\nLength : 223 mm\r\n\r\nOperation / action : Single action, semi auto\r\n\r\nCapacity magazine : 15 rounds', 5400000, 82, 'Indonesia', 'G2_Elite.jpg'),
(14, 5, 'G2-Premium', 'senjata', 7000000, 47, 'Amerika', 'G-2_Premium.jpg'),
(15, 5, 'P3A_1', 'SENJATA', 4500000, 350, 'Indonesia', 'P3A_1.jpg'),
(16, 5, 'PM2-V12', 'SENJATA', 25000000, 24, 'Amerika', 'PM2-V12.jpg'),
(17, 5, 'Sar-2', 'senjata', 40000000, 13, 'Amerika', 'sar-2-alt.jpg'),
(18, 4, 'SM-5', 'SENJATA', 150000000, 7, 'Indonesia', 'SM5_Web_resize.jpg'),
(19, 5, 'SPG1-V2', 'SENJATA', 275000000, 11, 'Indonesia', 'SPG1-V2.jpg'),
(20, 5, 'SPG1-V4', 'SENJATA', 277000000, 16, 'Indonesia', 'SPG1-V41.jpg'),
(21, 5, 'SPR-3', 'SENJATA', 24000000, 19, 'Indonesia', 'SPR_3_1.jpg'),
(22, 5, 'SPR-4', 'SENJATA', 24500000, 25, 'Indonesia', 'SPR_4.jpeg'),
(23, 5, 'MU3TJ', '-', 500000, 36, 'Indonesia', '141_MU3-TJ.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id_staff` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_staff` varchar(50) NOT NULL,
  `alamat_staff` text NOT NULL,
  `nomor_hp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan_staff` varchar(50) NOT NULL,
  `foto_staff` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `username`, `password`, `nama_staff`, `alamat_staff`, `nomor_hp`, `email`, `jabatan_staff`, `foto_staff`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'MythRazs', 'Pandean', '6282338123828', 'rafianto2006@gmail.com', 'Admin', 'man.png'),
(2, 'rina', '3aea9516d222934e35dd30f142fda18c', 'Rina', 'Empat Negeri', '6282274567789', 'rina@gmail.com', 'Kasir', 'girl.png'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Hadi', 'sanan', '6234536578926', 'hadi@gmail.com', 'Kasir', 'man.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kodetransaksi` int(11) NOT NULL,
  `tgl_waktu` date NOT NULL,
  `pel_id` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `kodetransaksi`, `tgl_waktu`, `pel_id`, `total_harga`) VALUES
(17, 567080, '2023-09-26', 17, 155000),
(18, 488579, '2023-09-26', 18, 145000),
(19, 631258, '2023-09-26', 19, 360000),
(20, 995273, '2023-09-27', 20, 160000),
(21, 798630, '2023-09-27', 21, 220000),
(22, 759012, '2023-09-27', 22, 200000),
(23, 184819, '2023-09-27', 23, 380000),
(24, 673756, '2024-02-28', 24, 150000000),
(25, 117604, '2024-02-29', 25, 40000000),
(26, 314176, '2024-02-29', 26, 10500000),
(27, 943028, '2024-02-29', 27, 24000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
