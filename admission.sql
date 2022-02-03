-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 01:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_pincode`, `file`, `u_mother`) VALUES
(132, '1', 'arjun', 'ninja', 'asdfsdf', '2022-01-30', 'Male', 'abd@gmail.com', '7878565623', 'Jharkhand', '544984', '', 'ui'),
(133, '2', 'Dev', 'star', 'singh', '2021-12-31', 'Male', 'asdo@mail.com', '5656232345', 'Goa', '70022', '', 'kia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(5, 'kushkush', '$2y$10$pkgNOc0r6DaiDnCTIVT/VubRm0LqncpPgipzdARaH/9wZto.zmYLu', '2021-05-22 00:30:03'),
(6, '123123', '$2y$10$AwA0obkWAdzF6Z6zCqZ3Xu5QinFNWhL89iAUde8YYfYorruaxOjCm', '2021-07-17 16:49:54'),
(7, 'admin2', '$2y$10$KryT8w.BWZSHwDfHB1KzMuvVk3p4DOJWxAhNk4In1Ng/D7OGF0tUi', '2022-01-22 16:41:54'),
(8, 'naga', '$2y$10$5emwXG3lNN00/zQ8HvkOauuCcxAq47A0dlTQInoS6c2/zLnR.8RVC', '2022-01-22 17:27:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
