-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 04, 2022 at 11:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`) VALUES
(1, 'Professor 1', '111.111.111-11', '(11) 11111-1111', 'professor1@email.com', 'Endereço 2', 'jimmy.jpeg'),
(12, 'Professor 2', '222.222.222-22', '(22) 22222-2222', '2@email.com', 'Endereço 2', 'IMG_4654.jpg'),
(13, 'Professor 3', '333.333.333-33', '(33) 33333-3333', '3@email.com', 'Endereço 3', 'sem-foto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `secretarios`
--

CREATE TABLE `secretarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `secretarios`
--

INSERT INTO `secretarios` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `email`) VALUES
(5, 'Outro', '123.123', '(12) 3123', '123123123', 'email@email.com'),
(6, 'Secretario 1', '211.111.111-11', '(11) 11111-1111', 'Endereço 1', 'secretario1@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `tesoureiros`
--

CREATE TABLE `tesoureiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tesoureiros`
--

INSERT INTO `tesoureiros` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `email`) VALUES
(1, 'Tesoureiro 1', '133.333.333-33', '(11) 11111-1111', 'Endereço 1', 'tesoureiro1@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`) VALUES
(11, 'Professor 1', '111.111.111-11', 'professor1@email.com', '123', 'professor'),
(22, 'Professor 2', '222.222.222-22', '2@email.com', '123', 'professor'),
(23, 'Professor 3', '333.333.333-33', '3@email.com', '123', 'professor'),
(24, 'Administrador', '000.000.000-00', 'admin@admin.com', 'admin', 'admin'),
(25, 'Secretario 1', '211.111.111-11', 'secretario1@email.com', '123', 'secretaria'),
(26, 'Tesoureiro 1', '133.333.333-33', 'tesoureiro1@email.com', '123', 'tesouraria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretarios`
--
ALTER TABLE `secretarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tesoureiros`
--
ALTER TABLE `tesoureiros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `secretarios`
--
ALTER TABLE `secretarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tesoureiros`
--
ALTER TABLE `tesoureiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
