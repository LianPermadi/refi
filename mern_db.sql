-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2021 pada 12.37
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mern_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aso_id`
--

CREATE TABLE `aso_id` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aso_id`
--

INSERT INTO `aso_id` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `moladin_user`
--

CREATE TABLE `moladin_user` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `moladin_user`
--

INSERT INTO `moladin_user` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `refi_branch_leasing`
--

CREATE TABLE `refi_branch_leasing` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `refi_branch_leasing`
--

INSERT INTO `refi_branch_leasing` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `refi_master_leasing`
--

CREATE TABLE `refi_master_leasing` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `refi_master_leasing`
--

INSERT INTO `refi_master_leasing` (`id`) VALUES
(0),
(1),
(2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `refi_pooling_transaksi`
--

CREATE TABLE `refi_pooling_transaksi` (
  `id` int(25) NOT NULL,
  `moladin_user_id` int(25) NOT NULL,
  `master_leasing_id` int(25) NOT NULL,
  `branc_leasing_id` int(25) NOT NULL,
  `moladin_aso_id` int(25) NOT NULL,
  `id_transaksi` int(25) NOT NULL,
  `informasi_kendaraan` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `dana_diajukan` varchar(255) NOT NULL,
  `dana_dicairkan` varchar(255) NOT NULL,
  `tenor` varchar(255) NOT NULL,
  `cicilan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `informasi_paket` varchar(255) NOT NULL,
  `bukti_golive` varchar(255) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `refi_pooling_transaksi1`
--

CREATE TABLE `refi_pooling_transaksi1` (
  `id` int(11) NOT NULL,
  `moladin_user_id` int(11) DEFAULT NULL,
  `master_leasing_id` int(11) DEFAULT NULL,
  `branc_leasing_id` int(11) DEFAULT NULL,
  `moladin_aso_id` int(11) DEFAULT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `informasi_kendaraan` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `dana_diajukan` varchar(255) DEFAULT NULL,
  `dana_dicairkan` varchar(255) DEFAULT NULL,
  `tenor` varchar(255) DEFAULT NULL,
  `cicilan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `informasi_paket` varchar(255) DEFAULT NULL,
  `bukti_golive` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `refi_pooling_transaksi1`
--

INSERT INTO `refi_pooling_transaksi1` (`id`, `moladin_user_id`, `master_leasing_id`, `branc_leasing_id`, `moladin_aso_id`, `id_transaksi`, `informasi_kendaraan`, `lokasi`, `dana_diajukan`, `dana_dicairkan`, `tenor`, `cicilan`, `status`, `note`, `informasi_paket`, `bukti_golive`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:55:42', '2021-10-07 06:55:42'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 06:59:41', '2021-10-07 06:59:41'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:04:22', '2021-10-07 07:04:22'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:14:06', '2021-10-07 07:14:06'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:18:49', '2021-10-07 07:18:49'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:20:16', '2021-10-07 07:20:16'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:23:32', '2021-10-07 07:23:32'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:24:10', '2021-10-07 07:24:10'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:24:35', '2021-10-07 07:24:35'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:25:48', '2021-10-07 07:25:48'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 07:26:09', '2021-10-07 07:26:09'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 08:05:25', '2021-10-07 08:05:25'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 08:26:31', '2021-10-07 08:26:31'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 08:26:41', '2021-10-07 08:26:41'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 10:18:50', '2021-10-07 10:18:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aso_id`
--
ALTER TABLE `aso_id`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `moladin_user`
--
ALTER TABLE `moladin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `refi_branch_leasing`
--
ALTER TABLE `refi_branch_leasing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `refi_master_leasing`
--
ALTER TABLE `refi_master_leasing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `refi_pooling_transaksi`
--
ALTER TABLE `refi_pooling_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refi_pooling_transaksi_ibfk_1` (`branc_leasing_id`),
  ADD KEY `refi_pooling_transaksi_ibfk_2` (`master_leasing_id`),
  ADD KEY `refi_pooling_transaksi_ibfk_3` (`moladin_aso_id`),
  ADD KEY `refi_pooling_transaksi_ibfk_4` (`moladin_user_id`);

--
-- Indeks untuk tabel `refi_pooling_transaksi1`
--
ALTER TABLE `refi_pooling_transaksi1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `refi_pooling_transaksi`
--
ALTER TABLE `refi_pooling_transaksi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `refi_pooling_transaksi1`
--
ALTER TABLE `refi_pooling_transaksi1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `refi_pooling_transaksi`
--
ALTER TABLE `refi_pooling_transaksi`
  ADD CONSTRAINT `refi_pooling_transaksi_ibfk_1` FOREIGN KEY (`branc_leasing_id`) REFERENCES `refi_branch_leasing` (`id`),
  ADD CONSTRAINT `refi_pooling_transaksi_ibfk_2` FOREIGN KEY (`master_leasing_id`) REFERENCES `refi_master_leasing` (`id`),
  ADD CONSTRAINT `refi_pooling_transaksi_ibfk_3` FOREIGN KEY (`moladin_aso_id`) REFERENCES `aso_id` (`id`),
  ADD CONSTRAINT `refi_pooling_transaksi_ibfk_4` FOREIGN KEY (`moladin_user_id`) REFERENCES `moladin_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
