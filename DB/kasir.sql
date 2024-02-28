-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2023 pada 11.27
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(29, 23, 9, 3, 60000, 180000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(1, 'Pupuk', 'unduhan.jpeg'),
(2, 'Racun', 'OIP (1).jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `nomor_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(23, 'Pak Budi', 'Simpang Dolok', '6282245602578');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `kategori_produk`, `nama_produk`, `deskripsi`, `harga`, `stok`, `lokasi_produk`, `gambar`) VALUES
(5, 1, 'Pupuk NPK', '-', 100000, 32, 'Rak 2', 'unduhan.jpeg'),
(6, 1, 'Pupuk NPK Cair', '-', 70000, 21, 'Rak 3', 'OIP.jpeg'),
(7, 2, 'Racun tanaman', '-', 80000, 31, 'Rak 4', 'OIP (1).jpeg'),
(8, 2, 'Racun Serangga', '-', 75000, 31, 'Rak 5', 'OIP (2).jpeg'),
(9, 1, 'Pupuk Organik', '-', 60000, 17, 'Rak 6', 'po.jpeg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `username`, `password`, `nama_staff`, `alamat_staff`, `nomor_hp`, `email`, `jabatan_staff`, `foto_staff`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'AANDANU', 'Empat Negeri', '6282361676990', 'danu@gmail.com', 'Admin', 'man.png'),
(2, 'rina', '3aea9516d222934e35dd30f142fda18c', 'Rina', 'Empat Negeri', '6282274567789', 'rina@gmail.com', 'Kasir', 'girl.png');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(23, 184819, '2023-09-27', 23, 380000);

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
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
