-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2019 pada 12.30
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekpbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `id` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`id`, `nama`, `stok`, `harga`) VALUES
('1', 'Baju Tari', '20', '60000'),
('2', 'Baju Adat', '28', '50000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_item` varchar(100) NOT NULL,
  `nama_item` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `hp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(100) NOT NULL,
  `tgl_kembali` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga_satuan` varchar(100) NOT NULL,
  `tot_harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_item`, `nama_item`, `nama`, `ktp`, `hp`, `alamat`, `tgl_pinjam`, `tgl_kembali`, `jumlah`, `harga_satuan`, `tot_harga`) VALUES
('2', 'Baju Adat', 'nama', 'ktp', 'hp', 'alamat', '21/05/2019', '30/05/2019', '2', '50000', '100000.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_item` varchar(100) NOT NULL,
  `nama_item` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `hp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(100) NOT NULL,
  `tgl_kembali` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga_satuan` varchar(100) NOT NULL,
  `tot_harga` varchar(100) NOT NULL,
  `tgl_pengembalian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD KEY `id_item` (`id_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
