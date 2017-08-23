-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 Agu 2017 pada 16.26
-- Versi Server: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_detik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `apply`
--

CREATE TABLE `apply` (
  `id_apply` int(100) NOT NULL,
  `iduser` int(100) NOT NULL,
  `job_id` int(3) NOT NULL,
  `tanggal_apply` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_hrd` int(3) NOT NULL DEFAULT '0',
  `admin_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL DEFAULT 'unprocess'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `apply`
--

INSERT INTO `apply` (`id_apply`, `iduser`, `job_id`, `tanggal_apply`, `id_hrd`, `admin_date`, `status`) VALUES
(1, 3, 5, '2017-01-02 09:54:59', 8, '2017-07-10 21:33:57', 'accepted'),
(2, 3, 3, '2017-02-07 05:06:41', 8, '2017-07-10 21:38:53', 'accepted'),
(4, 1, 5, '2017-03-08 17:20:27', 8, '2017-05-24 17:04:10', 'accepted'),
(5, 1, 3, '2017-04-09 06:30:20', 8, '2017-07-10 22:02:49', 'skill test'),
(6, 2, 5, '2017-05-09 06:30:20', 8, '2017-07-14 09:29:21', 'skill test'),
(7, 2, 3, '2017-03-03 09:56:55', 8, '2017-07-10 21:39:15', 'psikotest'),
(8, 1, 2, '2017-03-03 09:56:55', 0, '2017-05-04 07:53:18', 'blacklist'),
(9, 1, 4, '2017-03-03 09:56:55', 8, '2017-07-06 13:20:40', 'accepted'),
(10, 2, 2, '2017-03-03 09:56:55', 8, '2017-05-24 17:09:42', 'interview hrd'),
(11, 12, 4, '2017-03-03 09:56:55', 4, '2017-05-05 03:36:28', 'accepted'),
(12, 2, 3, '2017-05-18 14:16:08', 8, '2017-07-12 09:50:39', 'psikotest'),
(13, 4, 5, '2017-05-18 14:19:51', 8, '2017-07-12 09:51:27', 'blacklist'),
(14, 1, 3, '2017-05-24 15:04:40', 8, '2017-07-10 21:31:11', 'skill test'),
(15, 1, 3, '2017-05-25 01:18:46', 8, '2017-07-10 22:02:26', 'shortlist'),
(16, 1, 3, '2017-05-26 10:58:58', 8, '2017-07-10 21:28:07', 'interview user'),
(17, 12, 1, '2017-07-06 10:30:15', 8, '2017-07-10 21:39:31', 'accepted'),
(18, 12, 1, '2017-07-07 12:09:10', 8, '2017-07-14 09:29:12', 'skill test'),
(19, 13, 1, '2017-07-08 05:44:41', 8, '2017-07-10 18:31:22', 'blacklist'),
(20, 13, 4, '2017-07-14 02:31:34', 8, '2017-07-15 05:53:42', 'unprocess');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer`
--

CREATE TABLE `footer` (
  `footer_id` int(3) NOT NULL,
  `footer_name_right` varchar(40) NOT NULL,
  `footer_name_left` varchar(30) NOT NULL,
  `footer_desc_right` text NOT NULL,
  `footer_desc_left` text NOT NULL,
  `footer_name_website` varchar(30) NOT NULL,
  `footer_file` varchar(30) NOT NULL,
  `footer_hrd` int(3) NOT NULL,
  `footer_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `footer_modiftime` datetime NOT NULL,
  `footer_is_displayed` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `footer`
--

INSERT INTO `footer` (`footer_id`, `footer_name_right`, `footer_name_left`, `footer_desc_right`, `footer_desc_left`, `footer_name_website`, `footer_file`, `footer_hrd`, `footer_createtime`, `footer_modiftime`, `footer_is_displayed`) VALUES
(1, 'HUMAN RESOURCES<br> DEVELOPMENT', 'Recruitment hgnhn', 'PT Agranet Multicitra Siberkom<br>\nrecruitment@detik.com<br>\n\"Only short-listed candidates will be notified\"<br>\n\"Invitation Processes will be conducted by sms & email\"\n\n', 'Please note that detikcom never ask for any money or payments from applicants, at any point in the recruitment process. Kindly contact us of any suspicious job openings or offers of employment. (Harap dicatat. Setiap tahapan proses seleksi rekrutmen detikcom tidak pernah meminta uang atau bayaran dari pelamar. Silakan hubungi jika mendapatkan informasi lowongan pekerjaan atau tawaran kerja yang mencurigakan.)', 'www.detik.com', '', 1, '2017-02-06 08:36:25', '2017-02-06 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `formuser2`
--

CREATE TABLE `formuser2` (
  `formuser2_id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `pengalaman` text NOT NULL,
  `sekolah` text NOT NULL,
  `kualifikasi` text NOT NULL,
  `jurusan` text NOT NULL,
  `tahunwisuda` year(4) NOT NULL,
  `noijazah` text NOT NULL,
  `namaperusahaan` text NOT NULL,
  `posisi` text NOT NULL,
  `bulanbergabung` text NOT NULL,
  `tahunbergabung` year(4) NOT NULL,
  `spesialisasi` text NOT NULL,
  `bidangpekerjaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `formuser2`
--

INSERT INTO `formuser2` (`formuser2_id`, `iduser`, `pengalaman`, `sekolah`, `kualifikasi`, `jurusan`, `tahunwisuda`, `noijazah`, `namaperusahaan`, `posisi`, `bulanbergabung`, `tahunbergabung`, `spesialisasi`, `bidangpekerjaan`) VALUES
(1, 12, 'pernahbekerja', 'Undip', 'SMP', 'IT', 2017, '2017', 'Sirup ABC', 'Direktur', 'april', 2017, 'ABC', 'abc'),
(2, 13, 'Pernah bekerja', 'universitas diponegoro', 'D3', 'IT', 2017, 'asdasd', 'apa aja', 'semarang', 'februari', 2017, 'jos', 'jos2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(3) NOT NULL,
  `gallery_name` varchar(50) NOT NULL,
  `gallery_desc` text NOT NULL,
  `gallery_file` varchar(50) NOT NULL,
  `gallery_hrd` int(3) NOT NULL,
  `gallery_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gallery_modiftime` datetime NOT NULL,
  `gallery_is_home` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_name`, `gallery_desc`, `gallery_file`, `gallery_hrd`, `gallery_createtime`, `gallery_modiftime`, `gallery_is_home`) VALUES
(1, 'judul foto 1', 'diskripsi foto 1', '6.jpg', 2, '2017-02-02 12:49:16', '0000-00-00 00:00:00', 'Y'),
(2, 'judul foto 4', 'des foto 4', '3.jpg', 1, '2017-02-02 12:49:16', '0000-00-00 00:00:00', 'Y'),
(3, 'foto IT', 'descripsi IT', '3.jpg', 1, '2017-02-03 07:40:54', '2017-02-03 00:00:00', 'Y'),
(4, 'foto proman', 'descripsi proman', '1.jpg', 2, '2017-02-03 07:42:09', '2017-02-03 00:00:00', 'Y'),
(5, 'it infrastruktur', 'deskripsi it infrastruktur', '6.jpg', 1, '2017-02-03 07:42:09', '2017-02-03 00:00:00', 'Y'),
(7, 'foto kita', 'deskripsi foto kita', '3.jpg', 2, '2017-02-03 07:43:22', '2017-02-03 00:00:00', 'Y'),
(8, 'foto bersama', 'descripsi foto bersama', '4.jpg', 1, '2017-02-03 08:18:32', '2017-02-03 00:00:00', 'Y'),
(9, 'foto detik', 'deskripsi foto detik', '2.jpg', 2, '2017-02-03 08:19:00', '2017-02-03 00:00:00', 'Y'),
(11, 'foto 4', 'deskripsi foto 4', '4.jpg', 1, '2017-02-09 06:30:39', '2017-02-09 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE `header` (
  `header_id` int(3) NOT NULL,
  `header_name` varchar(50) NOT NULL,
  `header_tagline` text NOT NULL,
  `header_file` varchar(40) NOT NULL,
  `header_hrd` int(3) NOT NULL,
  `header_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `header_modiftime` datetime NOT NULL,
  `header_is_displayed` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`header_id`, `header_name`, `header_tagline`, `header_file`, `header_hrd`, `header_createtime`, `header_modiftime`, `header_is_displayed`) VALUES
(1, 'Detik Karir', 'Together, we deliver news for everyone, smalll thing will be very important.<br>\nBe part of us, be part of something <b>BIG</b>', 'background-karir.png', 2, '2017-02-06 09:09:45', '2017-02-06 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hrd`
--

CREATE TABLE `hrd` (
  `id_hrd` int(15) NOT NULL,
  `username_hrd` varchar(50) NOT NULL,
  `email_hrd` varchar(50) NOT NULL,
  `password_hrd` varchar(65) NOT NULL,
  `super_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hrd`
--

INSERT INTO `hrd` (`id_hrd`, `username_hrd`, `email_hrd`, `password_hrd`, `super_admin`) VALUES
(8, 'ciscus', 'ciscus07@gmail.com', 'cXdlcnR5', 0),
(12, 'ccs', 'ccs@admin.com', 'MTIzNDU=', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `job`
--

CREATE TABLE `job` (
  `job_id` int(3) NOT NULL,
  `id_tipe` int(11) NOT NULL,
  `job_name` varchar(30) NOT NULL,
  `job_desc` text NOT NULL,
  `job_file` varchar(50) NOT NULL,
  `job_status` date NOT NULL,
  `job_hrd` int(3) NOT NULL,
  `job_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_modiftime` datetime NOT NULL,
  `job_is_listjob` char(1) NOT NULL DEFAULT 'N',
  `jobslug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `job`
--

INSERT INTO `job` (`job_id`, `id_tipe`, `job_name`, `job_desc`, `job_file`, `job_status`, `job_hrd`, `job_createtime`, `job_modiftime`, `job_is_listjob`, `jobslug`) VALUES
(1, 1, 'Programmerr', 'hahahaha', 'programmerr2.png', '2017-05-03', 1, '2017-02-09 06:35:41', '2017-05-24 15:57:43', 'Y', 'programmerr'),
(2, 1, 'Contoh Job nih haha', 'ini dipake buat sub kategori', 'contoh-job-nih-haha.png', '2017-08-17', 2, '2017-04-13 03:16:43', '2017-07-08 23:16:43', 'Y', 'contoh-job-nih-haha'),
(3, 2, 'IT', 'ini coba coba\r\n', 'sales.jpg', '2017-05-12', 8, '2017-05-17 13:01:36', '2017-05-17 15:01:36', 'Y', 'it'),
(4, 1, 'Coba coba 1 2 3', 'buat di coba', 'coba-coba-1-2-3.jpg', '2017-05-20', 8, '2017-05-18 18:49:22', '2017-05-18 20:49:22', 'Y', 'coba-coba-1-2-3'),
(5, 1, 'desainer', 'bikin desainer laahh :D', 'desainer1.jpg', '2017-07-14', 8, '2017-07-12 07:40:58', '2017-07-12 09:42:23', 'N', 'desainer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobdetail`
--

CREATE TABLE `jobdetail` (
  `jobdetail_id` int(3) NOT NULL,
  `id_tipe` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `jobdetail_name` varchar(30) NOT NULL,
  `jobdetail_desc` text NOT NULL,
  `jobdetail_status` date NOT NULL,
  `jobdetail_persyaratan` text NOT NULL,
  `jobdetail_tugas` text NOT NULL,
  `id_hrd` int(3) NOT NULL,
  `jobdetail_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jobdetail_modiftime` datetime NOT NULL,
  `jobdetail_is_pagejobdetail` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan_kategori`
--

CREATE TABLE `lowongan_kategori` (
  `id_tipe` int(2) NOT NULL,
  `nama_tipe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lowongan_kategori`
--

INSERT INTO `lowongan_kategori` (`id_tipe`, `nama_tipe`) VALUES
(1, 'internship'),
(2, 'Lowongan Pekerjaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `template`
--

CREATE TABLE `template` (
  `id_template` varchar(20) NOT NULL,
  `nm_template` varchar(30) DEFAULT NULL,
  `konten` varchar(1500) DEFAULT NULL,
  `subjek` varchar(125) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `template`
--

INSERT INTO `template` (`id_template`, `nm_template`, `konten`, `subjek`, `status`, `role`) VALUES
('TMP_01', 'Interview User Template Email', '<div style=\"text-align: center;\"><font size=\"6\" face=\"comic sans ms\">COBA <i>ini</i> <b>yaa</b></font></div>', 'Detik Karir Account Activation', 'interview user', 1),
('TMP_02', 'Interview HRD Template Email', 'buat interview hrd\r\n', 'Application Reply', 'interview hrd', 3),
('TMP_03', 'Accepted Template Email', '<p>PT Agranet Multicitra Siberkom is the holding company of <a href=\"http://www.detik.com,\">www.detik.com,</a> Indonesia\'s leading online&nbsp;<span style=\"line-height: 1.5em;\">media &amp; internet service industries namely news, lifestyle &amp; entertainment.&nbsp;</span></p>\r\n\r\n<p>Dear #APPLICANT#,</p>\r\n\r\n<p>Thank you for your application for the above position. The panel has assessed for all application and we would like to invite you to attend a #TEST#</p>\r\n\r\n<p>These are the details of your interview:</p>\r\n\r\n<p>Date : #DAY#, #DATE#</p>\r\n\r\n<p>Time : #TIME#</p>\r\n\r\n<p>Place : PT Agranet Multicitra Siberkom (www.detik.com)</p>\r\n\r\n<p>Aldevco Octagon Buliding 2nd Fl. Jl Warung Jati Barat Raya No. 75 Jakarta Selatan</p>\r\n\r\n<p>(in front of \"Halte Busway Buncit Indah\" &amp; Pizza Hut Buncit/ map here)</p>\r\n\r\n<p>Interviewer : #INTERVIEWER#</p>\r\n\r\n<p>Kindly reply this email, with contains of your availability to attend the interview. For further information,&nbsp;please call 021-794 1177 / HP 0819 0819 4100</p>\r\n\r\n<p>Best Regards,</p>\r\n\r\n<p>#ADMIN#</p>\r\n\r\n<p>Human Capital</p>\r\n', '#TEST# Invitation for #POSITION# Detikcom', 'accepted', 5),
('TMP_04', 'Blacklist Template Email', '<p>Dear #APPLICANT#,&nbsp;</p>\r\n\r\n<p>In reference with the selection process you have been through in #DATE# for the position of&nbsp;</p>\r\n\r\n<p>#POSITION# we would like to thank you for your interest in our company.&nbsp;</p>\r\n\r\n<p>However, we are apologize to inform you that at this time we have no suitable position for your&nbsp;<span style=\"line-height: 1.5em;\">qualifications. And for your application, it will remain in our active data bank.&nbsp;</span></p>\r\n\r\n<p>Once again, we thank you for your application and detikcom wishes you all the best for your future.&nbsp;</p>\r\n\r\n<p>Best Regards,</p>\r\n\r\n<p>#ADMIN#</p>\r\n\r\n<p>Human Capital</p>\r\n', 'Thank You Letter', 'blacklist', 6),
('TMP_05', 'Psikotest Template Email', '<p style=\"margin-top: 10px; color: rgb(51, 51, 51);\">We at Detikcom are pleased to announce that you have been offered the position of #POSITION#!</p>\r\n\r\n<p style=\"margin-top: 10px; color: rgb(51, 51, 51);\">After reading your application and getting to know you during your interview, we have determined that you would be the best candidate to fill this job! We love how organized you are and your educational background is impeccable.</p>\r\n\r\n<p style=\"margin-top: 10px; color: rgb(51, 51, 51);\"><br>\r\n</p>\r\n', 'Hiring Letter', 'psikotest', 2),
('TMP_06', 'Skill Test Template email', 'Buat skill test email', 'External Invitation #NAME#', 'skill test', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` int(100) NOT NULL,
  `idform` int(100) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `handphone` int(10) NOT NULL,
  `cv_user` varchar(50) NOT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `idform`, `nama_lengkap`, `handphone`, `cv_user`, `tanggal_upload`) VALUES
(2, 2, 'dimas', 9879787, '2_cv1.pdf', '2017-01-25'),
(3, 3, 'ciscus', 332709, '1_cv_1485860109.pdf', '2017-01-31'),
(1, 4, 'fransiscus', 912313, '1_cv_1485863065.pdf', '2017-01-31'),
(12, 5, 'dimaaaaaaaaaaaaaaaasssssss', 899999999, 'n-a6.pdf', '2017-07-06'),
(12, 6, 'fransiscus assisi', 899555, 'fransiscus-assisi1.pdf', '2017-07-07'),
(13, 7, 'ciscus cobaaa', 856425777, 'fransiscus-assisi-dimas.pdf', '2017-07-08'),
(13, 8, 'dimas', 2147483647, 'dimas.pdf', '2017-07-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_register`
--

CREATE TABLE `user_register` (
  `iduser` int(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_register`
--

INSERT INTO `user_register` (`iduser`, `username`, `email`, `password`) VALUES
(1, 'dim', 'fransiscusdimas95@gmail.com', '3fc0a7acf087f549ac2b266baf94b8'),
(2, 'anggun', 'anggun.cahya6@gmail.com', '12345678'),
(3, 'fransiscus', 'kartikarachmahipa4@gmail.com', 'qwerty123'),
(4, 'ciscus', 'ciscus@ciscus.com', 'cXdlcnR5'),
(5, 'tata cantik', 'tatacantik@gmail.com', 'MTIzNDU2'),
(12, 'dimas', 'dimas@gmail.com', 'cXdlcnR5'),
(13, 'ciscus', 'ciscus07@gmail.com', 'cXdlcnR5'),
(14, '', '', ''),
(15, 'dimas', 'ciscus07@gmail.com', 'cXdlcnR5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `video_id` int(3) NOT NULL,
  `video_name` varchar(30) NOT NULL,
  `video_file` varchar(20) NOT NULL,
  `video_hrd` int(3) NOT NULL,
  `video_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `video_modiftime` datetime NOT NULL,
  `video_is_home` char(1) NOT NULL DEFAULT 'N',
  `video_is_header` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`video_id`, `video_name`, `video_file`, `video_hrd`, `video_createtime`, `video_modiftime`, `video_is_home`, `video_is_header`) VALUES
(3, 'videokuuu', 'video1.mp4', 2, '2017-02-03 05:52:39', '2017-02-03 00:00:00', 'y', 'N'),
(4, 'videoheader', 'video2.mp4', 1, '2017-02-03 07:39:42', '2017-02-03 00:00:00', 'N', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `formuser2`
--
ALTER TABLE `formuser2`
  ADD PRIMARY KEY (`formuser2_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`header_id`);

--
-- Indexes for table `hrd`
--
ALTER TABLE `hrd`
  ADD PRIMARY KEY (`id_hrd`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `jobdetail`
--
ALTER TABLE `jobdetail`
  ADD PRIMARY KEY (`jobdetail_id`);

--
-- Indexes for table `lowongan_kategori`
--
ALTER TABLE `lowongan_kategori`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id_template`),
  ADD UNIQUE KEY `nm_template_UNIQUE` (`nm_template`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idform`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id_apply` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `footer_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `formuser2`
--
ALTER TABLE `formuser2`
  MODIFY `formuser2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `header_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hrd`
--
ALTER TABLE `hrd`
  MODIFY `id_hrd` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jobdetail`
--
ALTER TABLE `jobdetail`
  MODIFY `jobdetail_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lowongan_kategori`
--
ALTER TABLE `lowongan_kategori`
  MODIFY `id_tipe` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idform` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `iduser` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
