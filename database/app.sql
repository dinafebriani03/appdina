-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2022 pada 03.22
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` varchar(256) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Dina', 'dinayfbri03@gmail.com', 'default.jpg', '$2y$10$x3Bkkhy/WxDNbWWESi.N.ujWPoqloKaOQe.5R0/7/FUDcV.ZUW9tO', '2\r\n', 1, 1660197271),
(3, 'Dina Tri Febriani', 'abcde@gmail.com', 'default1.jpg', '$2y$10$q3Ol/twr4whb7061EFLHf.fWNHTnRStxcNpTj/C/yqiQaCpL9w31e', '1', 1, 1661911419),
(9, 'Dina Tri Febriani', 'dinafebrii745@gmail.com', 'default.jpg', '$2y$10$z0i1L021Huo5QRTZzA7k7eL2zG4a/gNvLVt8BldovZ4Fm/hSOOkv.', '2', 1, 1666255715),
(11, 'dinafbr', 'dinafbr241@gmail.com', 'default.jpg', '$2y$10$THTSpjDR.7EShsdFr62evOmScUGduZwP05AyeqF80DVwSGThBJEL6', '2', 1, 1667969715);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator '),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(8, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(10, 1, 'Role', 'admin/role', 'fa fa-fw fa-user-tie', 1),
(12, 2, 'Change password', 'user/changepassword', 'fas fa-fw fa-unlock', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(6, 'dinafebrii745@gmail.com', 'OTA4OTg5MTQyMjk1NTQyNjQ1NzQ0OTQxMjYwNDIyNjU=', 1666255715),
(7, 'dinafebrii745@gmail.com', 'ODM5Mjg3NjA4MTM1OTg2Nzc1MTA0NDU1NDIxNTAyOTI=', 1667456901),
(8, 'dinafebrii745@gmail.com', 'MTU4MTM2ODc0MzgwNDI1MzczMDUzMzI5NzIyNDg3NzI=', 1667457311),
(9, 'dinafebrii745@gmail.com', 'MTcwMzcxODA5NzMxNzIyMDY4NzQ2OTY5MTcxMTE5ODU=', 1667459857),
(10, 'dinafebrii745@gmail.com', 'MDE4Njg3NTI1ODY3MjUxODYwNjMwMjkxMDQ2MTk0Njk=', 1667459985),
(11, 'dinafebrii745@gmail.com', 'NTc0NzgwOTA3ODYwNDc1MjYzMTc0MzMxNzA2NTY0OTU=', 1667460336),
(12, 'dinafebrii745@gmail.com', 'OTc4Mjc4MTI4MTU2NTM4MDQ5NDQ3NzU1MjA0MzE3MTU=', 1667460926),
(13, 'dinafebrii745@gmail.com', 'MTAxMTQwMzg4ODI2NTM5MTEwNzU5NTYyNjQxNTUzMTk=', 1667461108),
(14, 'dinafebrii745@gmail.com', 'MDQxOTk4NjYyNDY1OTY3MDQ2Mjc3OTgyNDY4MzI0ODI=', 1667461566),
(15, 'dinafebrii745@gmail.com', 'ODQxOTAwMzc0NTg0MDQxMzE3NjQ4MjAwNTk0ODI0NzM=', 1667462958),
(16, 'dinafebrii745@gmail.com', 'MzgyNDE1Mzc3ODkwMzc5Nzc0ODkwODU0OTE2MDg0MTY=', 1667462962),
(17, 'dinafebrii745@gmail.com', 'MDY4Nzc2MTY0NTQ2NTk4Mjc3ODk0MjY5NTY3MTMzMzY=', 1667462967),
(18, 'dinafebrii745@gmail.com', 'ODk0NDkzOTU2ODMwMzU3OTA5MDQyMzIzODEyMTQ1MTY=', 1667462973),
(19, 'dinafebrii745@gmail.com', 'ODE3MTU5MjU1NTMxNDEyODkzNzg3MDkxNzA2OTMzMTI=', 1667463849),
(20, 'dinafebrii745@gmail.com', 'NjY5Mzk4NDAzNjI2MzI2MDcwMzYxMjUyNDMwMTI2OTI=', 1667465249),
(21, 'dinafebrii745@gmail.com', 'MTgyNDYxOTA3MTQ5NDQ1NzU1NjUzMzg5NTA2OTI1ODM=', 1667952334),
(22, 'dinafebrii745@gmail.com', 'OTU4ODU4MjY4Njk2MjQwMjcxMDE1MjEzNDc5ODkwNDY=', 1667952358),
(23, 'dinafebrii745@gmail.com', 'MjEwMTc3Mjg1Nzc2Nzk3MTE1NDM5NjA4NzM5ODk2MDk=', 1667952840),
(24, 'dinafebrii745@gmail.com', 'Mjg4MTc3MzAyODA3OTc3ODU5MTUzMjEyOTAwMTYxMDg=', 1667953789),
(25, 'dinafebrii745@gmail.com', 'NzIzNjM2Njg0MzAxNDY1NzI3NzMwOTcwNzMxNzgyMTU=', 1667954211),
(26, 'dinafebrii745@gmail.com', 'MDk0NDUxMzU4MjExMDk3MDg3NzA1MzA5OTExODEwOTI=', 1667954218),
(27, 'dinafebrii745@gmail.com', 'ODM5MjM4MjQyOTAwOTU1NTA4MTk3NzgwODYwODQzNzk=', 1667954802),
(28, 'dinafebrii745@gmail.com', 'NDEzMzk5OTc2MTkyNzQzMzAzNTI3NTU1NTQ4Mjc5Mzk=', 1667954852),
(29, 'dinafebrii745@gmail.com', 'MDM2MTc0NzA5MjM3NTIzNTI3NzM4MTQ1ODY2ODE3OTc=', 1667957091),
(30, 'dinafebrii745@gmail.com', 'MzY2OTM5NDg2NjYzMjM3NzQyMjg0ODYwNTIzMTcwODU=', 1667957129),
(33, 'dinafbr241@gmail.com', 'OTU2NjA2MzA2NTQ4NDU1OTk1NTA1OTkyNjQ3MDg0NDY=', 1667969768),
(34, 'dinafbr241@gmail.com', 'NzEyNTM0OTQ4NDUwODMwMDI3Mzk1NzY1Nzg1MDMyMzU=', 1667969849),
(35, 'dinafbr241@gmail.com', 'NDg1MzAwMTgxMDIyNzI1NzM5NDI4NTYxODEyMTE1OTc=', 1668557711),
(36, 'dinafbr241@gmail.com', 'NTg1MTM5NTI2NDA2OTk0NjM3NjQ1NDkzNDMxMzgyNjA=', 1668558921),
(37, 'dinafbr241@gmail.com', 'NzIxMTcxMjQ5MDU2OTg1Mzc1MDQwMDM0OTQzMzA1MzU=', 1668559005),
(38, 'dinafebrii745@gmail.com', 'OTIyMDU2MDQzODQxMDA2ODQ3NDkwMDAyODYwMTI0NzU=', 1668665734),
(39, 'dinafebrii745@gmail.com', 'NTYyMDM3MzQ0OTEwMDQ0MDYwNzYzODc5ODY4NDE2ODA=', 1668665784);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
