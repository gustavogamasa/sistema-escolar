-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2022 at 04:04 AM
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
-- Table structure for table `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `responsavel` varchar(20) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `responsavel`, `data_nascimento`, `data_cadastro`, `foto`, `sexo`) VALUES
(1, 'Felipe Santos', '788.888.888-88', '(99) 99999-9999', 'felipe@hotmail.com', 'Rua Almeida Campos 150', '', '2000-11-16', '2020-11-16', 'team-1.jpg', 'M'),
(2, 'Mariano Campos', '789.555.555-55', '(55) 55555-5555', 'mariano@hotmail.com', 'Rua Almeida Campos 145', '', '2001-11-16', '2020-11-16', 'usuario-icone.jpg', 'M'),
(3, 'Marina Silva', '875.555.555-55', '(55) 55555-5555', 'marina@hotmail.com', 'Rua C', '', '2000-11-16', '2020-11-16', 'team-2.jpg', 'F'),
(5, 'Rui Costaa', '488.888.888-88', '(33) 33333-3333', 'rui@hotmail.com', 'Rua Almeida Campos 150', '222.222.222-22', '2002-11-17', '2020-11-17', 'sem-foto.jpg', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`) VALUES
(1, 'Programação WEB'),
(2, 'WEB Designer'),
(4, 'Design Gráfico'),
(5, 'Programador de Jogos');

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cargo`) VALUES
(1, 'Matheus Santos', '788.888.888-88', 'mateus@hotmail.com', '(99) 99999-9999', 'Rua X', 'Porteiro'),
(2, 'Talita Silva', '899.999.999-99', 'talita@hotmail.com', '(99) 99999-9999', 'Rua Almeida Campos 150', 'Cantineira');

-- --------------------------------------------------------

--
-- Table structure for table `matriculas`
--

CREATE TABLE `matriculas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matriculas`
--

INSERT INTO `matriculas` (`id`, `turma`, `aluno`, `data`) VALUES
(13, 2, 5, '2020-11-18'),
(14, 1, 5, '2020-11-18'),
(15, 3, 5, '2020-11-18'),
(16, 4, 5, '2020-11-18'),
(17, 1, 2, '2020-11-18'),
(18, 1, 3, '2020-11-18'),
(19, 2, 1, '2020-11-18'),
(20, 2, 3, '2020-11-18'),
(21, 3, 3, '2020-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `mensalidade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `descricao`, `valor`, `funcionario`, `data`, `mensalidade`) VALUES
(1, 'Entrada', 'Pagamento Mensalidade', '60.00', '444.444.455-55', '2020-11-18', 'Sim'),
(2, 'Entrada', 'Pagamento Mensalidade', '60.00', '444.444.455-55', '2020-11-18', 'Sim'),
(3, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-18', 'Sim'),
(4, 'Entrada', 'Pagamento Mensalidade', '50.00', '444.444.455-55', '2020-11-18', 'Sim'),
(5, 'Entrada', 'Pagamento Mensalidade', '50.00', '444.444.455-55', '2020-11-18', 'Sim'),
(6, 'Entrada', 'Pagamento Mensalidade', '50.00', '444.444.455-55', '2020-11-18', 'Sim'),
(7, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-18', 'Sim'),
(10, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-18', 'Sim'),
(11, 'Entrada', 'Pagamento Mensalidade', '90.00', '444.444.455-55', '2020-11-19', 'Sim'),
(12, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-19', 'Sim');

-- --------------------------------------------------------

--
-- Table structure for table `pgto_matriculas`
--

CREATE TABLE `pgto_matriculas` (
  `id` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `data_venc` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `arquivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pgto_matriculas`
--

INSERT INTO `pgto_matriculas` (`id`, `matricula`, `valor`, `data_venc`, `pago`, `arquivo`) VALUES
(13, 13, '90.00', '2020-02-02', 'Sim', 'boleto-teste.pdf'),
(14, 13, '90.00', '2020-03-02', 'Não', NULL),
(15, 13, '90.00', '2020-04-02', 'Não', NULL),
(16, 13, '90.00', '2020-05-02', 'Não', NULL),
(17, 13, '90.00', '2020-06-02', 'Não', NULL),
(18, 13, '90.00', '2020-07-02', 'Não', NULL),
(19, 13, '90.00', '2020-08-02', 'Não', NULL),
(20, 13, '90.00', '2020-09-02', 'Não', NULL),
(21, 13, '90.00', '2020-10-02', 'Não', NULL),
(22, 13, '90.00', '2020-11-02', 'Não', NULL),
(23, 13, '90.00', '2020-12-02', 'Não', NULL),
(24, 13, '90.00', '2021-01-02', 'Não', NULL),
(25, 14, '80.00', '2019-01-01', 'Sim', 'boleto-teste.pdf'),
(26, 14, '80.00', '2019-02-01', 'Não', 'boleto-teste.pdf'),
(27, 14, '80.00', '2019-03-01', 'Não', NULL),
(28, 14, '80.00', '2019-04-01', 'Não', NULL),
(29, 14, '80.00', '2019-05-01', 'Não', NULL),
(30, 14, '80.00', '2019-06-01', 'Não', NULL),
(31, 14, '80.00', '2019-07-01', 'Não', NULL),
(32, 14, '80.00', '2019-08-01', 'Não', NULL),
(33, 14, '80.00', '2019-09-01', 'Não', NULL),
(34, 14, '80.00', '2019-10-01', 'Não', NULL),
(35, 14, '80.00', '2019-11-01', 'Não', NULL),
(36, 14, '80.00', '2019-12-01', 'Não', NULL),
(37, 14, '80.00', '2020-01-01', 'Não', NULL),
(38, 14, '80.00', '2020-02-01', 'Não', NULL),
(39, 14, '80.00', '2020-03-01', 'Não', NULL),
(40, 14, '80.00', '2020-04-01', 'Não', NULL),
(41, 14, '80.00', '2020-05-01', 'Não', NULL),
(42, 14, '80.00', '2020-06-01', 'Não', NULL),
(43, 14, '80.00', '2020-07-01', 'Não', NULL),
(44, 14, '80.00', '2020-08-01', 'Não', NULL),
(45, 14, '80.00', '2020-09-01', 'Não', NULL),
(46, 14, '80.00', '2020-10-01', 'Não', NULL),
(47, 14, '80.00', '2020-11-01', 'Não', NULL),
(48, 14, '80.00', '2020-12-01', 'Não', NULL),
(49, 15, '50.00', '2020-12-01', 'Sim', 'boleto-teste.pdf'),
(50, 15, '50.00', '2021-01-01', 'Sim', NULL),
(51, 15, '50.00', '2021-02-01', 'Sim', NULL),
(52, 15, '50.00', '2021-03-01', 'Não', NULL),
(53, 15, '50.00', '2021-04-01', 'Não', NULL),
(54, 15, '50.00', '2021-05-01', 'Não', NULL),
(55, 15, '50.00', '2021-06-01', 'Não', NULL),
(56, 15, '50.00', '2021-07-01', 'Não', NULL),
(57, 15, '50.00', '2021-08-01', 'Não', NULL),
(58, 15, '50.00', '2021-09-01', 'Não', NULL),
(59, 15, '50.00', '2021-10-01', 'Não', NULL),
(60, 15, '50.00', '2021-11-01', 'Não', NULL),
(61, 16, '60.00', '2020-11-01', 'Sim', NULL),
(62, 16, '60.00', '2020-12-01', 'Sim', NULL),
(63, 16, '60.00', '2021-01-01', 'Não', NULL),
(64, 16, '60.00', '2021-02-01', 'Não', NULL),
(65, 16, '60.00', '2021-03-01', 'Não', NULL),
(66, 16, '60.00', '2021-04-01', 'Não', NULL),
(67, 16, '60.00', '2021-05-01', 'Não', NULL),
(68, 16, '60.00', '2021-06-01', 'Não', NULL),
(69, 16, '60.00', '2021-07-01', 'Não', NULL),
(70, 16, '60.00', '2021-08-01', 'Não', NULL),
(71, 16, '60.00', '2021-09-01', 'Não', NULL),
(72, 16, '60.00', '2021-10-01', 'Não', NULL),
(73, 17, '80.00', '2019-01-01', 'Sim', NULL),
(74, 17, '80.00', '2019-02-01', 'Não', NULL),
(75, 17, '80.00', '2019-03-01', 'Não', NULL),
(76, 17, '80.00', '2019-04-01', 'Não', NULL),
(77, 17, '80.00', '2019-05-01', 'Não', NULL),
(78, 17, '80.00', '2019-06-01', 'Não', NULL),
(79, 17, '80.00', '2019-07-01', 'Não', NULL),
(80, 17, '80.00', '2019-08-01', 'Não', NULL),
(81, 17, '80.00', '2019-09-01', 'Não', NULL),
(82, 17, '80.00', '2019-10-01', 'Não', NULL),
(83, 17, '80.00', '2019-11-01', 'Não', NULL),
(84, 17, '80.00', '2019-12-01', 'Não', NULL),
(85, 17, '80.00', '2020-01-01', 'Não', NULL),
(86, 17, '80.00', '2020-02-01', 'Não', NULL),
(87, 17, '80.00', '2020-03-01', 'Não', NULL),
(88, 17, '80.00', '2020-04-01', 'Não', NULL),
(89, 17, '80.00', '2020-05-01', 'Não', NULL),
(90, 17, '80.00', '2020-06-01', 'Não', NULL),
(91, 17, '80.00', '2020-07-01', 'Não', NULL),
(92, 17, '80.00', '2020-08-01', 'Não', NULL),
(93, 17, '80.00', '2020-09-01', 'Não', NULL),
(94, 17, '80.00', '2020-10-01', 'Não', NULL),
(95, 17, '80.00', '2020-11-01', 'Não', NULL),
(96, 17, '80.00', '2020-12-01', 'Não', NULL),
(97, 18, '80.00', '2019-01-01', 'Sim', 'boleto-teste.pdf'),
(98, 18, '80.00', '2019-02-01', 'Sim', NULL),
(99, 18, '80.00', '2019-03-01', 'Não', NULL),
(100, 18, '80.00', '2019-04-01', 'Não', NULL),
(101, 18, '80.00', '2019-05-01', 'Não', NULL),
(102, 18, '80.00', '2019-06-01', 'Não', NULL),
(103, 18, '80.00', '2019-07-01', 'Não', NULL),
(104, 18, '80.00', '2019-08-01', 'Não', NULL),
(105, 18, '80.00', '2019-09-01', 'Não', NULL),
(106, 18, '80.00', '2019-10-01', 'Não', NULL),
(107, 18, '80.00', '2019-11-01', 'Não', NULL),
(108, 18, '80.00', '2019-12-01', 'Não', NULL),
(109, 18, '80.00', '2020-01-01', 'Não', NULL),
(110, 18, '80.00', '2020-02-01', 'Não', NULL),
(111, 18, '80.00', '2020-03-01', 'Não', NULL),
(112, 18, '80.00', '2020-04-01', 'Não', NULL),
(113, 18, '80.00', '2020-05-01', 'Não', NULL),
(114, 18, '80.00', '2020-06-01', 'Não', NULL),
(115, 18, '80.00', '2020-07-01', 'Não', NULL),
(116, 18, '80.00', '2020-08-01', 'Não', NULL),
(117, 18, '80.00', '2020-09-01', 'Não', NULL),
(118, 18, '80.00', '2020-10-01', 'Não', NULL),
(119, 18, '80.00', '2020-11-01', 'Não', NULL),
(120, 18, '80.00', '2020-12-01', 'Não', NULL),
(121, 19, '90.00', '2020-02-02', 'Não', NULL),
(122, 19, '90.00', '2020-03-02', 'Não', NULL),
(123, 19, '90.00', '2020-04-02', 'Não', NULL),
(124, 19, '90.00', '2020-05-02', 'Não', NULL),
(125, 19, '90.00', '2020-06-02', 'Não', NULL),
(126, 19, '90.00', '2020-07-02', 'Não', NULL),
(127, 19, '90.00', '2020-08-02', 'Não', NULL),
(128, 19, '90.00', '2020-09-02', 'Não', NULL),
(129, 19, '90.00', '2020-10-02', 'Não', NULL),
(130, 19, '90.00', '2020-11-02', 'Não', NULL),
(131, 19, '90.00', '2020-12-02', 'Não', NULL),
(132, 19, '90.00', '2021-01-02', 'Não', NULL),
(133, 20, '90.00', '2020-02-02', 'Não', NULL),
(134, 20, '90.00', '2020-03-02', 'Não', NULL),
(135, 20, '90.00', '2020-04-02', 'Não', NULL),
(136, 20, '90.00', '2020-05-02', 'Não', NULL),
(137, 20, '90.00', '2020-06-02', 'Não', NULL),
(138, 20, '90.00', '2020-07-02', 'Não', NULL),
(139, 20, '90.00', '2020-08-02', 'Não', NULL),
(140, 20, '90.00', '2020-09-02', 'Não', NULL),
(141, 20, '90.00', '2020-10-02', 'Não', NULL),
(142, 20, '90.00', '2020-11-02', 'Não', NULL),
(143, 20, '90.00', '2020-12-02', 'Não', NULL),
(144, 20, '90.00', '2021-01-02', 'Não', NULL),
(145, 21, '50.00', '2020-12-01', 'Não', NULL),
(146, 21, '50.00', '2021-01-01', 'Não', NULL),
(147, 21, '50.00', '2021-02-01', 'Não', NULL),
(148, 21, '50.00', '2021-03-01', 'Não', NULL),
(149, 21, '50.00', '2021-04-01', 'Não', NULL),
(150, 21, '50.00', '2021-05-01', 'Não', NULL),
(151, 21, '50.00', '2021-06-01', 'Não', NULL),
(152, 21, '50.00', '2021-07-01', 'Não', NULL),
(153, 21, '50.00', '2021-08-01', 'Não', NULL),
(154, 21, '50.00', '2021-09-01', 'Não', NULL),
(155, 21, '50.00', '2021-10-01', 'Não', NULL),
(156, 21, '50.00', '2021-11-01', 'Não', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`) VALUES
(3, 'Professor Teste', '777.777.777-77', '(77) 77777-7777', 'professor@hotmail.com', 'Rua Almeida Campos 150', 'usuario-icone.jpg'),
(4, 'Hugo Vasconcelos', '788.888.888-88', '(88) 88888-8888', 'hugovasconcelosf@hotmail.com', 'Rua Almeida Campos 150', 'hugo-profile.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `responsaveis`
--

CREATE TABLE `responsaveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `responsaveis`
--

INSERT INTO `responsaveis` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`) VALUES
(1, 'Katia Silva', '111.111.111-11', 'katia@hotmail.com', '(55) 55555-5555', 'Rua 5'),
(2, 'Kamilah Souza', '222.222.222-22', 'kamila@hotmail.com', '(22) 22222-2222', 'Rua C'),
(3, 'Tamara Freitas', '333.333.333-33', 'tamara@hotmail.com', '(33) 33333-3333', 'Rua G');

-- --------------------------------------------------------

--
-- Table structure for table `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `sala` varchar(30) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salas`
--

INSERT INTO `salas` (`id`, `sala`, `descricao`) VALUES
(1, '101', 'Segunda 09:00'),
(2, '102', 'Segunda 13:00'),
(3, '103', 'Segunda 18:00'),
(5, '104', 'Segunda 22:00');

-- --------------------------------------------------------

--
-- Table structure for table `secretarios`
--

CREATE TABLE `secretarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `secretarios`
--

INSERT INTO `secretarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`) VALUES
(5, 'Marcos Paulo', 'marcos@hotmail.com', '555.555.555-55', '(55) 55555-5555', 'Rua Almeida Campos 145'),
(6, 'Secretário Teste', 'secretario@hotmail.com', '222.222.222-22', '(22) 22222-2222', 'Rua C');

-- --------------------------------------------------------

--
-- Table structure for table `tesoureiros`
--

CREATE TABLE `tesoureiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tesoureiros`
--

INSERT INTO `tesoureiros` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`) VALUES
(3, 'Tesoureiro Teste', '444.444.455-55', '(55) 55555-5555', 'tesoureiro@hotmail.com', 'Rua Almeida Campos 150'),
(4, 'Rubens Silva', '789.541.222-22', '(45) 55555-5555', 'rubens@hotmail.com', 'Rua C');

-- --------------------------------------------------------

--
-- Table structure for table `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `professor` int(11) NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `horario` varchar(30) DEFAULT NULL,
  `dia` varchar(30) DEFAULT NULL,
  `valor_mensalidade` decimal(7,2) DEFAULT NULL,
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `turmas`
--

INSERT INTO `turmas` (`id`, `disciplina`, `sala`, `professor`, `data_inicio`, `data_final`, `horario`, `dia`, `valor_mensalidade`, `ano`) VALUES
(1, 1, 2, 3, '2019-01-01', '2021-01-01', '8:00 as 12:00', 'Sexta-Feira', '80.00', 2020),
(2, 4, 1, 4, '2020-02-02', '2021-02-02', '13:00 as 17:00', 'Segunda a Sexta', '90.00', 2020),
(3, 2, 5, 4, '2020-12-01', '2021-12-01', '13:00 as 17:00', 'Segunda a Sexta', '50.00', 2020),
(4, 5, 3, 3, '2020-11-01', '2021-11-01', '8:00 as 12:00', 'Sexta-Feira', '60.00', 2020);

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
(5, 'Marcos Pedro', '555.555.555-55', 'marcos@hotmail.com', '123', 'secretaria'),
(6, 'Secretário Teste', '222.222.222-22', 'secretario@hotmail.com', '123', 'secretaria'),
(9, 'Professor Teste', '777.777.777-77', 'professor@hotmail.com', '123', 'professor'),
(12, 'Administrador', '000.000.000-00', 'admin', 'admin', 'Admin'),
(13, 'Felipe Santos', '788.888.888-88', 'secretaria', 'secretaria', 'secretaria'),
(15, 'Felipe Santos', '788.888.888-88', 'felipe@hotmail.com', '123', 'aluno'),
(16, 'Mariano Campos', '789.555.555-55', 'aluno', 'aluno', 'aluno'),
(17, 'Marina Silva', '875.555.555-55', 'marina@hotmail.com', '123', 'aluno'),
(19, 'Rui Costaa', '488.888.888-88', 'rui@hotmail.com', '123', 'aluno'),
(20, 'Tesoureiro Teste', '444.444.455-55', 'tesoureiro', 'tesoureiro', 'tesoureiro'),
(21, 'Rubens Silva', '789.541.222-22', 'rubens@hotmail.com', '123', 'tesoureiro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pgto_matriculas`
--
ALTER TABLE `pgto_matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salas`
--
ALTER TABLE `salas`
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
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
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
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pgto_matriculas`
--
ALTER TABLE `pgto_matriculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `secretarios`
--
ALTER TABLE `secretarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tesoureiros`
--
ALTER TABLE `tesoureiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
