-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2024 pada 08.21
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
-- Database: `bk_poli`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrian`
--

CREATE TABLE `antrian` (
  `id` int(1) NOT NULL,
  `no_antrian` int(5) NOT NULL,
  `kuota` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `antrian`
--

INSERT INTO `antrian` (`id`, `no_antrian`, `kuota`) VALUES
(1, 1, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_poli`
--

CREATE TABLE `daftar_poli` (
  `id` int(11) NOT NULL,
  `id_pasien` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `no_antrian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_buka`
--

CREATE TABLE `jam_buka` (
  `id` int(5) NOT NULL,
  `judul_1` varchar(100) NOT NULL,
  `judul_2` varchar(100) NOT NULL,
  `judul_3` varchar(100) NOT NULL,
  `tagline_1` varchar(500) NOT NULL,
  `tagline_2` varchar(500) NOT NULL,
  `tagline_3` varchar(500) NOT NULL,
  `jam_1b` varchar(50) DEFAULT NULL,
  `jam_2b` varchar(50) DEFAULT NULL,
  `jam_3b` varchar(50) DEFAULT NULL,
  `jam_1t` varchar(50) DEFAULT NULL,
  `jam_2t` varchar(50) DEFAULT NULL,
  `jam_3t` varchar(50) DEFAULT NULL,
  `tg_utama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jam_buka`
--

INSERT INTO `jam_buka` (`id`, `judul_1`, `judul_2`, `judul_3`, `tagline_1`, `tagline_2`, `tagline_3`, `jam_1b`, `jam_2b`, `jam_3b`, `jam_1t`, `jam_2t`, `jam_3t`, `tg_utama`) VALUES
(1, 'Pagi', 'Sore', 'Tanggal merah', 'Klinik akan melayani pasien dengan sepenuh hati dan memberikan pelayanan dengan ramah tamah', 'Klinik akan melayani pasien dengan sepenuh hati dan memberikan pelayanan dengan ramah tamah', 'Untuk hari minggu dan tanggal merah klinik tidak melayani pemeriksaan kesehatan', '04:58', '16:57', '', '05:56', '20:57', '', 'Setiap Hari Bukak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola`
--

CREATE TABLE `kelola` (
  `id` int(5) NOT NULL,
  `nama_web` varchar(50) NOT NULL,
  `judul_web` varchar(50) NOT NULL,
  `nama_jumbo` varchar(50) NOT NULL,
  `tagline_jumbo` varchar(255) NOT NULL,
  `nama_kop` varchar(100) NOT NULL,
  `nomer_kop` varchar(100) NOT NULL,
  `alamat_kop` varchar(100) NOT NULL,
  `email_kop` varchar(100) NOT NULL,
  `logo_kop` varchar(100) NOT NULL,
  `tagline_tk` varchar(255) NOT NULL,
  `detail_tk` varchar(500) NOT NULL,
  `tagline_ly` varchar(100) NOT NULL,
  `tagline_alm` varchar(100) NOT NULL,
  `link_alm` varchar(100) NOT NULL,
  `tagline_ft` varchar(255) NOT NULL,
  `instagram_ft` varchar(100) DEFAULT NULL,
  `facebook_ft` varchar(100) DEFAULT NULL,
  `twitter_ft` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `telp_kop` varchar(15) DEFAULT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelola`
--

INSERT INTO `kelola` (`id`, `nama_web`, `judul_web`, `nama_jumbo`, `tagline_jumbo`, `nama_kop`, `nomer_kop`, `alamat_kop`, `email_kop`, `logo_kop`, `tagline_tk`, `detail_tk`, `tagline_ly`, `tagline_alm`, `link_alm`, `tagline_ft`, `instagram_ft`, `facebook_ft`, `twitter_ft`, `youtube`, `telp_kop`, `maps`) VALUES
(1, 'PoliKlinik', 'Klinik | UDINUS', 'Klinik UDINUS', 'Selamat datang di klinik UDINUS! Melayani dengan sepenuh hati dan ramah tamah untuk semua ', 'UDINUS', '1234568998415361546', 'Jl. Nakula 1, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 501', 'poli@dinus.ac.id', 'kop1.png', 'Klinik UDINUS memiliki tujuan untuk memberikan pelayanan kesehatan yang terbaik kepada masyarakat yang membutuhkan ', 'Klinik UDINUS memiliki tujuan untuk memberikan pelayanan  kesehatan yang terbaik kepada masyarakat yang membutuhkan dengan biaya yang relatif murah dan juga bisa menggunakan BPJS kesehatan agar pasien bisa mendapatkan pelayanan kesehatan tanpa harus memikirkan biaya yang dikeluarkan', 'Kami melayani dengan sepenuh hati dan memberikan yang terbaik', 'Klinik UDINUS  beralamat di Jl. Nakula 1, Pendrikan Kidul, Kec. Semarang Tengah, Kota Semarang, Jawa', 'https://maps.app.goo.gl/nVkoc5UmjnLXogHg9', 'Terima kasih telah berkunjung  ke website sederhana saya yang saya bangun dengan penuh cinta dan penuh kasih sayang untuk netizen tercinta', 'www.instagram.com/udinusofficial', 'www.facebook.com/univ.dian.nuswantoro', 'twitter.com', 'www.youtube.com/@tvkuch49udinus', '0895422525506', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3959.681348035568!2d111.22391777419473!3d-7.046681269046779!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e774f8c08dfa149%3A0x7ae1220a0f3923f5!2sLek%20bledek%20servis%20elektronik!5e0!3m2!1sid!2sid!4v1704121275646!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `url` varchar(25) NOT NULL,
  `akses` varchar(5) NOT NULL,
  `aktif` varchar(1) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama`, `url`, `akses`, `aktif`, `icon`) VALUES
(1, 'Dashboard', 'admin', '1', '1', 'fas fa-home'),
(2, 'Landing Page', 'admin/landingPage', '1', '1', 'fas fa-layer-group'),
(4, 'User', 'admin/user', '1', '1', 'fas fa-users'),
(5, 'Profil', 'admin/profil', '1', '1', 'fas fa-user-alt'),
(6, 'Logout', 'auth/logout', '1', '1', 'fas fa-sign-out-alt'),
(7, 'Dashboard', 'nakes', '3', '1', 'fas fa-home'),
(8, 'Profil', 'nakes/profil', '3', '1', 'fas fa-user-alt'),
(9, 'Logout', 'auth/logout', '3', '1', 'fas fa-sign-out-alt'),
(10, 'Dashboard', 'dokter', '2', '1', 'fas fa-home'),
(11, 'Profil', 'dokter/profil', '2', '1', 'fas fa-user-alt'),
(12, 'Logout', 'auth/logout', '2', '1', 'fas fa-sign-out-alt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `noRm` int(10) NOT NULL,
  `noAtr` int(5) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `umur` int(5) NOT NULL,
  `jenkel` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tglPrk` varchar(20) NOT NULL,
  `jamPrk` varchar(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `sts` int(2) NOT NULL,
  `panggil` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `noRm`, `noAtr`, `nik`, `umur`, `jenkel`, `alamat`, `tglPrk`, `jamPrk`, `user`, `sts`, `panggil`) VALUES
(132, 'Fila Shaufiq', 1, 1, '2342342423424', 23, 'Perempuan', 'Blora', '23/09/2021', '00 : 07', 'Personal', 1, 0),
(133, 'Shaufiq', 2, 2, '2344232', 23, 'Laki-laki', 'sadsadad', '23/09/2021', '00 : 07', 'Nakes II', 1, 0),
(134, 'Coba 1', 3, 3, '23324', 23, 'Laki-laki', 'asdasd', '23/09/2021', '00 : 10', 'Nakes II', 0, 0),
(136, 'Muhlasin', 4, 1, '34234234', 43, 'Laki-laki', 'Blora', '23/09/2021', '10 : 34', 'Nakes II', 0, 0),
(137, 'shifa', 5, 2, '324324', 23, 'Laki-laki', 'sdfadaffa', '23/09/2021', '10 : 38', 'Nakes II', 0, 0),
(138, 'Shaufiq fila', 6, 3, '2343242', 23, 'Laki-laki', 'dsfsdfsf', '23/09/2021', '10 : 40', 'Nakes II', 0, 0),
(139, 'M. Fila ', 7, 1, '2344', 23, 'Laki-laki', 'dsfsfsfd', '23/09/2021', '10 : 53', 'Nakes II', 0, 0),
(140, 'nyoba', 8, 2, '23', 23, 'Laki-laki', 'wewre', '23/09/2021', '10 : 56', 'Nakes II', 0, 0),
(141, 'sasad', 9, 3, '32', 23, 'Laki-laki', 'asdadad', '23/09/2021', '10 : 58', 'Nakes II', 0, 0),
(142, 'sasad', 9, 4, '32', 23, 'Laki-laki', 'asdadad', '23/09/2021', '10 : 58', 'Nakes II', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(15) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `judul`, `isi`, `active`) VALUES
(1, 'Terima kasih', 'Telah berkunjung ke website klinik dr. Didik Agus Haryanto dan mendaftar secara online untuk melakukan pemeriksan ke klinik dr. Didik Agus Haryanto', 1),
(2, 'Pesan covid-19 untuk masyarakat', 'Segeralah lakukan vaksinasi di puskesmas, rumah sakit dan tempat kesehatan terdekat agar tercapai herd imunity dan memutus rantai penularan covid-19. Jika sudah melakukan vaksinasi maka tetaplah patuhi protokol kesehatan dan jagalah kesehatan anda', 0),
(3, 'Siap melayani!', 'Kami akan siap melayani pasien dengan maksimal agar pasien dapat segera sembuh dan dapat melakukan rutinitas', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `id` int(11) NOT NULL,
  `nama_poli` varchar(25) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id` int(15) NOT NULL,
  `noRm` int(10) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `periksa` varchar(255) NOT NULL,
  `diagnosa` varchar(255) NOT NULL,
  `rencana` varchar(255) NOT NULL,
  `tanggal` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekam_medis`
--

INSERT INTO `rekam_medis` (`id`, `noRm`, `keluhan`, `periksa`, `diagnosa`, `rencana`, `tanggal`) VALUES
(1, 34578, 'sakit pilek', 'sudah', 'flus', 'minum obat', '11/09/2021'),
(2, 34579, 'sadads', 'sadasd', 'asdad', 'asdad', '11/09/2021'),
(3, 34579, 'asdad', 'asdasd', 'asdasd', 'asdad', '11/09/2021'),
(4, 34579, 'Tidak enak badan ', 'cek fisik', 'sakit flu', 'minum obat dan istirahat', '11/09/2021'),
(5, 34579, 'sakit dibagian perut', 'cek keadaan perut', 'kemungkinan cuman masuk angin saja ', 'minum tolak angin dan jangan banyak begadang, nanti sampe rumah harus kerokan', '11/09/2021'),
(7, 34577, 'sakit kepala', 'cek pala', 'banyak utang', 'lunasin utang', '11/09/2021'),
(8, 34579, 'sikat', 'rtetert', 'werwer', 'wewr', '11/09/2021'),
(9, 34579, 'perut kembung', 'cek perut', 'masuk angin', 'kerokan', '11/09/2021'),
(10, 34579, 'sakit kepala', 'cek tensi', 'darah tinggi', 'makan makanan penurun darah tinggi', '11/09/2021'),
(11, 34579, 'sakit hati', 'cek hati', 'putus cinta', 'cari yang baru', '11/09/2021'),
(12, 34575, 'mual mual', 'cek suhu tubuh dan kondisi badan ', 'masuk angin', 'minum tolak angin', '11/09/2021'),
(14, 34579, '7f7f7yf', '7tf7tf7tf', '76tf6tf6', 'f6tf6tf', '11/09/2021'),
(15, 34579, 'sakit kepala', 'cek kepala', 'pilek', 'minum obat', '11/09/2021'),
(16, 34571, 'Sakit pinggang ', 'cek fisik bagian pinggang', 'boyoken ', 'pakai salonpas koyo', '13/09/2021'),
(17, 34580, 'sakit bagian perut, perutnya pateng kremucuk', 'cek bagian perut', 'belum makan ini, ini karena belum kelebon sego', 'makan nasi goreng ya biar cepet sembuh, jangan lupa minum juga', '13/09/2021'),
(18, 3, 'Sakit kepala', 'cek fisik ', 'masuk angin aja', 'kerokan ya beb', '23/09/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.2', '2009-09-11', 1, '1252681630'),
('127.0.0.1', '2009-09-11', 17, '1252734209'),
('127.0.0.3', '2009-09-12', 8, '1252817594'),
('127.0.0.1', '2009-10-24', 8, '1256381921'),
('127.0.0.1', '2009-10-26', 108, '1256620074'),
('127.0.0.1', '2009-10-27', 52, '1256686769'),
('127.0.0.1', '2009-10-28', 124, '1256792223'),
('127.0.0.1', '2009-10-29', 9, '1256828032'),
('127.0.0.1', '2009-10-31', 3, '1257047101'),
('127.0.0.1', '2009-11-01', 85, '1257113554'),
('127.0.0.1', '2009-11-02', 11, '1257207543'),
('127.0.0.1', '2009-11-03', 165, '1257292312'),
('127.0.0.1', '2009-11-04', 59, '1257403499'),
('127.0.0.1', '2009-11-05', 10, '1257433172'),
('127.0.0.1', '2009-11-11', 13, '1258006911'),
('127.0.0.1', '2009-11-12', 10, '1258048069'),
('127.0.0.1', '2009-11-14', 14, '1258222519'),
('127.0.0.1', '2009-11-17', 2, '1258473856'),
('127.0.0.1', '2009-11-19', 16, '1258635469'),
('127.0.0.1', '2009-11-21', 4, '1258863505'),
('127.0.0.1', '2009-11-25', 3, '1259216216'),
('127.0.0.1', '2009-11-26', 1, '1259222467'),
('127.0.0.1', '2009-11-30', 11, '1259651841'),
('127.0.0.1', '2009-12-02', 9, '1259746407'),
('127.0.0.1', '2009-12-03', 17, '1259906128'),
('127.0.0.1', '2009-12-10', 69, '1260423794'),
('127.0.0.1', '2009-12-12', 26, '1260560082'),
('127.0.0.1', '2009-12-11', 5, '1260508621'),
('127.0.0.1', '2009-12-13', 8, '1260716786'),
('127.0.0.1', '2009-12-14', 9, '1260772698'),
('127.0.0.1', '2009-12-15', 9, '1260837158'),
('127.0.0.1', '2009-12-16', 7, '1260905627'),
('127.0.0.1', '2009-12-17', 48, '1261026791'),
('127.0.0.1', '2009-12-18', 11, '1261088534'),
('127.0.0.1', '2009-12-22', 3, '1261477278'),
('127.0.0.1', '2009-12-25', 2, '1261686043'),
('127.0.0.1', '2009-12-26', 29, '1261835507'),
('127.0.0.1', '2009-12-27', 7, '1261920445'),
('127.0.0.1', '2009-12-28', 3, '1261965611'),
('127.0.0.1', '2009-12-29', 21, '1262024011'),
('127.0.0.1', '2009-12-30', 24, '1262146708'),
('127.0.0.1', '2010-01-01', 12, '1262286131'),
('127.0.0.1', '2010-01-03', 38, '1262529325'),
('127.0.0.1', '2010-01-12', 89, '1263264291'),
('127.0.0.1', '2010-01-14', 54, '1263482540'),
('127.0.0.1', '2010-01-15', 57, '1263506901'),
('127.0.0.1', '2010-02-11', 30, '1265831568'),
('127.0.0.1', '2010-02-13', 2, '1266032303'),
('127.0.0.1', '2010-02-14', 3, '1266115347'),
('127.0.0.1', '2010-02-15', 15, '1266195235'),
('127.0.0.1', '2010-02-18', 1, '1266499945'),
('127.0.0.1', '2010-02-22', 5, '1266856332'),
('127.0.0.1', '2010-02-25', 46, '1267103145'),
('127.0.0.1', '2010-05-12', 10, '1273654648'),
('127.0.0.1', '2010-05-16', 195, '1274026185'),
('127.0.0.1', '2010-05-17', 2, '1274029517'),
('127.0.0.1', '2010-05-19', 1, '1274279374'),
('127.0.0.1', '2010-05-27', 16, '1274967085'),
('127.0.0.1', '2010-05-30', 4, '1275192045'),
('127.0.0.1', '2010-05-31', 13, '1275271939'),
('127.0.0.1', '2010-06-05', 1, '1275676869'),
('127.0.0.1', '2010-06-06', 2, '1275842170'),
('127.0.0.1', '2010-06-15', 3, '1276572924'),
('127.0.0.1', '2010-06-22', 206, '1277221605'),
('127.0.0.1', '2010-08-02', 17, '1280754660'),
('127.0.0.1', '2010-08-20', 7, '1282285305'),
('127.0.0.1', '2010-08-30', 21, '1283185430'),
('127.0.0.1', '2010-08-31', 53, '1283207455'),
('127.0.0.1', '2010-09-02', 133, '1283402651'),
('127.0.0.1', '2010-09-05', 35, '1283702206'),
('127.0.0.1', '2010-09-13', 10, '1284370291'),
('127.0.0.1', '2010-09-17', 12, '1284662303'),
('127.0.0.1', '2010-09-22', 2, '1285091212'),
('127.0.0.1', '2010-09-23', 47, '1285254071'),
('127.0.0.1', '2010-09-26', 32, '1285512806'),
('127.0.0.1', '2010-09-27', 48, '1285529871'),
('127.0.0.1', '2011-01-19', 18, '1295395096'),
('127.0.0.1', '2011-01-21', 6, '1295580166'),
('127.0.0.1', '2011-01-22', 3, '1295639704'),
('127.0.0.1', '2011-01-25', 2, '1295895420'),
('127.0.0.1', '2011-01-27', 20, '1296145564'),
('127.0.0.1', '2011-01-28', 5, '1296150116'),
('127.0.0.1', '2011-02-01', 10, '1296555613'),
('127.0.0.1', '2011-02-02', 1, '1296657225'),
('127.0.0.1', '2011-02-05', 3, '1296875908'),
('127.0.0.1', '2011-02-07', 5, '1297090649'),
('127.0.0.1', '2011-02-09', 182, '1297254341'),
('127.0.0.1', '2011-02-10', 268, '1297355704'),
('127.0.0.1', '2011-02-16', 6, '1297824002'),
('127.0.0.1', '2011-02-17', 2, '1297945065'),
('127.0.0.1', '2011-12-28', 12, '1325081007'),
('127.0.0.1', '2011-12-29', 13, '1325167281'),
('127.0.0.1', '2011-12-31', 34, '1325296088'),
('127.0.0.1', '2012-01-02', 1, '1325449458'),
('127.0.0.1', '2012-01-03', 55, '1325601219'),
('127.0.0.1', '2012-01-04', 1, '1325630436'),
('127.0.0.1', '2012-02-08', 86, '1328720292'),
('127.0.0.1', '2012-02-09', 110, '1328798857'),
('127.0.0.1', '2012-02-10', 87, '1328871532'),
('127.0.0.1', '2012-02-11', 16, '1328899301'),
('127.0.0.1', '2012-03-31', 87, '1333186737'),
('127.0.0.1', '2012-04-01', 69, '1333248528'),
('127.0.0.1', '2012-04-02', 9, '1333338582'),
('127.0.0.1', '2012-04-03', 31, '1333456570'),
('127.0.0.1', '2012-04-04', 2, '1333498207'),
('127.0.0.1', '2012-04-05', 5, '1333628029'),
('127.0.0.1', '2012-04-08', 22, '1333871463'),
('127.0.0.1', '2012-04-09', 109, '1333972788'),
('127.0.0.1', '2012-04-10', 70, '1334024998'),
('127.0.0.1', '2012-05-01', 8, '1335889888'),
('127.0.0.1', '2012-05-02', 17, '1335935829'),
('127.0.0.1', '2012-05-27', 6, '1338133681'),
('127.0.0.1', '2012-05-29', 22, '1338304361'),
('127.0.0.1', '2012-05-30', 5, '1338389383'),
('127.0.0.1', '2012-05-31', 5, '1338408772'),
('127.0.0.1', '2012-06-01', 5, '1338567612'),
('127.0.0.1', '2012-07-01', 10, '1341152776'),
('127.0.0.1', '2012-07-29', 12, '1343572702'),
('127.0.0.1', '2012-07-30', 15, '1343658587'),
('127.0.0.1', '2012-07-31', 179, '1343743877'),
('127.0.0.1', '2012-08-03', 11, '1344000498'),
('127.0.0.1', '2012-08-08', 28, '1344364863'),
('127.0.0.1', '2012-08-09', 7, '1344477542'),
('127.0.0.1', '2012-08-10', 1, '1344601882'),
('::1', '2021-01-18', 6, '1476804903'),
('::1', '2021-01-19', 8, '1476875211'),
('::1', '2021-02-20', 3, '1476945959'),
('::1', '2021-03-29', 317, '1477747478'),
('::1', '2021-03-30', 1, '1477784305'),
('::1', '2021-04-09', 20, '1494349047'),
('::1', '2021-05-10', 237, '1494421263'),
('::1', '2021-06-03', 159, '1499045917'),
('::1', '2021-07-01', 326, '1541067947'),
('::1', '2021-07-20', 17, '1558354951'),
('::1', '2021-08-26', 17, '1558830830'),
('::1', '2021-09-22', 27, '1632322873'),
('::1', '2021-09-23', 51, '1632416719'),
('::1', '2021-09-24', 7, '1632498903'),
('::1', '2021-09-25', 1, '1632542270'),
('::1', '2023-12-31', 1, '1703993224'),
('::1', '2024-01-01', 3, '1704121287'),
('192.168.15.26', '2024-01-05', 7, '1704438573');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenkel` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `active` int(1) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `agama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `foto`, `nip`, `alamat`, `jenkel`, `level`, `active`, `tgl_lahir`, `tempat_lahir`, `agama`) VALUES
(5, 'Muhammad Nur Fauzi', 'admin', '$2y$10$xdEASiErbGX0hbLQu19TQ.pOB2YNn8mO7w1x9r4t7WPRQv1QJSF/.', 'fauzi.jpg', 'A11.2020.12779', 'Jl.selomulyo Mukti Timur VI No.439 Perum.Graha Mukti Utama', 'laki-laki', '1', 1, '2001-10-10', 'Jepara', 'Islam'),
(31, 'dr. Fauzi', 'drfauzi', '$2y$10$yitn4sM4hoPZ69WZMBCgru06duddf/weaTfGy.FhpfYmwDZoNm3Ye', 'default.jpg', '00000', 'default', 'laki-laki', '2', 1, '0000-00-00', 'default', 'Islam'),
(32, 'Fauzi', 'fauzi', '$2y$10$vq51l5QiSvSJ4Ur7yfN.Y.9RaoK9DLZqBJM.EFs7wyzdB6FisS15S', 'default.jpg', '00000', 'default', 'laki-laki', '1', 1, '0000-00-00', 'default', 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `id` int(5) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `date` varchar(30) NOT NULL,
  `hits` varchar(20) NOT NULL,
  `online` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `visitor`
--

INSERT INTO `visitor` (`id`, `ip`, `date`, `hits`, `online`, `time`) VALUES
(2, '::1', '2021-09-23', '1', '1632404529', '2021-09-23 15:42:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_poli`
--
ALTER TABLE `daftar_poli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam_buka`
--
ALTER TABLE `jam_buka`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola`
--
ALTER TABLE `kelola`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `daftar_poli`
--
ALTER TABLE `daftar_poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jam_buka`
--
ALTER TABLE `jam_buka`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kelola`
--
ALTER TABLE `kelola`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
