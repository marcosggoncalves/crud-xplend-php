-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27/08/2025 às 03:51
-- Versão do servidor: 8.0.43-0ubuntu0.24.04.1
-- Versão do PHP: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `minha_garagem`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `status_categoria` varchar(80) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nome_categoria` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `status_categoria`, `nome_categoria`) VALUES
(1, 'Reserva', 'Ônibus Urbano'),
(2, 'Titular', 'Ônibus Rodoviário'),
(3, 'Reserva', 'Micro-ônibus'),
(4, 'Titular', 'Ônibus Escolar'),
(5, 'Reserva', 'Ônibus Executivo'),
(6, 'Titular', 'Ônibus Leito'),
(7, 'Reserva', 'Ônibus Semi-Leito'),
(8, 'Titular', 'Ônibus de Turismo'),
(9, 'Reserva', 'Ônibus Articulado'),
(10, 'Titular', 'Ônibus Biarticulado'),
(11, 'Reserva', 'Mini-ônibus'),
(12, 'Titular', 'Micro Escolar'),
(13, 'Reserva', 'Fretado Urbano'),
(14, 'Titular', 'Fretado Rodoviário'),
(15, 'Reserva', 'Ônibus Executivo Plus'),
(16, 'Titular', 'Micro-ônibus Executivo'),
(17, 'Reserva', 'Ônibus Híbrido'),
(18, 'Titular', 'Ônibus Elétrico'),
(19, 'Reserva', 'Ônibus Executivo VIP'),
(20, 'Titular', 'Ônibus Intermunicipal');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas`
--

CREATE TABLE `vagas` (
  `id_vaga` int NOT NULL,
  `descricao_vaga` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero_vaga` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `vagas`
--

INSERT INTO `vagas` (`id_vaga`, `descricao_vaga`, `numero_vaga`) VALUES
(1, 'Vaga de garagem para ônibus - Coberta', 'G01'),
(2, 'Vaga de garagem para ônibus - Descoberta', 'G02'),
(3, 'Vaga de garagem para ônibus - Próxima à saída', 'G03'),
(4, 'Vaga de garagem para ônibus - Próxima à oficina', 'G04'),
(5, 'Vaga de garagem para ônibus articulado', 'G05'),
(6, 'Vaga de garagem para ônibus convencional', 'G06'),
(7, 'Vaga de garagem para micro-ônibus', 'G07'),
(8, 'Vaga de garagem para ônibus rodoviário', 'G08'),
(9, 'Vaga de garagem para ônibus urbano', 'G09'),
(10, 'Vaga de garagem para ônibus leito', 'G10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id_veiculo` int NOT NULL,
  `placa_veiculo` char(8) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `descricao_veiculo` text COLLATE utf8mb3_unicode_ci,
  `lugares` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb3_unicode_ci DEFAULT 'Disponivel',
  `id_categoria` int DEFAULT NULL,
  `id_vaga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id_veiculo`, `placa_veiculo`, `descricao_veiculo`, `lugares`, `status`, `id_categoria`, `id_vaga`) VALUES
(1, 'ALX-1416', 'TESTE', 42, 'Disponivel', 5, 1),
(2, 'ALX-1418', 'TESTE 1', 62, 'Disponivel', 1, 2),
(3, 'ALX-2345', 'Onibus leito granvia', 52, 'Disponivel', 5, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id_vaga`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id_veiculo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id_vaga` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id_veiculo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
