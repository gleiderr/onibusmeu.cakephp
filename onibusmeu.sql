-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Fev-2019 às 13:37
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onibusmeu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bus_schedules`
--

CREATE TABLE `bus_schedules` (
  `id` int(11) NOT NULL,
  `line` varchar(256) NOT NULL,
  `day` varchar(30) NOT NULL,
  `departure_time` time NOT NULL,
  `departure_place` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de Horários de Ônibus';

--
-- Extraindo dados da tabela `bus_schedules`
--

INSERT INTO `bus_schedules` (`id`, `line`, `day`, `departure_time`, `departure_place`) VALUES
(1, '5800', 'Sábado', '00:30:00', 'Terminal Morro Alto'),
(2, '5800', 'Dia útil', '20:06:00', 'Terminal Morro Alto'),
(3, '5800', 'Dia útil', '20:27:00', 'Terminal Morro Alto'),
(4, '5805', 'Dia útil', '20:29:00', 'Terminal Morro Alto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_schedules`
--
ALTER TABLE `bus_schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_schedules`
--
ALTER TABLE `bus_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
