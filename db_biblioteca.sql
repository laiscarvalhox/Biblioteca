-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2024 às 19:56
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolução` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `Codleitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `Codleitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Enderco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`Codleitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Enderco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)9878e-2311', 'maria@hotmail.com', 631113101, 'Rua da Vovô', '101', 'Maranguape I', 'Paulista/PE'),
(3, 'Letícia Helen Monteiro Lins', '0000-00-00', '(81)98869-7540', 'leticiamonteiro@gmail.com', 116, 'Rua Antônio Mariano', '67', 'Ibura', 'Jaboatão dos Guararapes-PE'),
(4, 'Mirela Maria Benicio  Bezerra', '0000-00-00', '(81)98113-7531', 'mirelabenicio@gmail.com', 211, 'Rua Baronesa', '367', 'Pau Amarelo', 'Paulista-PE'),
(5, 'Gabriel Lins Carvalho', '0000-00-00', '(81)98774-6583', 'bielleitor@gmail.com', 156, 'Rua Manoel Quirino Tavares', '567', 'Maranguape 1', 'Paulista-PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `Anopublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `Anopublicacao`, `Genero`, `Paginas`) VALUES
(1, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'HarperCollins Brasil', 'Um piloto cai com seu avião no deserto e ali encontra uma criança loura e frágil.  E ali, na convivência com o piloto perdido, os dois repensam os seus valores e encontram o sentido da vida.', 6, 'Literatura infantil', 96),
(2, 'É assim que acaba', 'Colleen Hoover', 'Editora Galera', 'Lily, uma jovem que se mudou de uma pequena cidade do Maine para Boston, formou-se em marketing e abriu sua própria floricultura. Em um terraço de Boston, ela conhece Ryle, um neurocirurgião confiante, teimoso e talvez um pouco arrogante, com uma grande a', 2, 'Romance', 368),
(3, 'After', 'Anna Todd', 'Paralela', 'Rápida e inesperadamente, Tessa e Hardin iniciam uma relação intensa mas atribulada, pois ele é um bad boy que só arranja problemas. Tessa tem de tomar uma séria e dolorosa decisão: será que faz sentido trocar Noah por Hardin, desiludindo a sua superprote', 21, 'Romance', 528),
(4, 'Boca do Inferno', 'Ana Miranda', 'Companhia das Letras', 'Um grupo de conspiradores assassina o alcaide-mor da cidade, desencadeando uma série de perseguições que vão revelar a arbitrariedade, a corrupção e a tirania que assolam a Colônia.', 1989, 'Ficção', 336),
(5, 'It - A Coisa', 'Stephen King', 'Suma', 'Durante as férias de 1958, em uma pacata cidadezinha chamada Derry, um grupo de sete amigos começa a ver coisas estranhas. Um conta que viu um palhaço, outro que viu uma múmia. Finalmente, acabam descobrindo que estavam todos vendo a mesma coisa: um ser s', 24, 'Terror', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `Codleitor` (`Codleitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`Codleitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`Codleitor`) REFERENCES `leitores` (`Codleitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
