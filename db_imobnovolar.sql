-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Mar-2019 às 16:03
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imobnovolar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `cpf_cliente` varchar(14) NOT NULL,
  `nome_cliente` varchar(60) DEFAULT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `tel_cel_1` varchar(20) DEFAULT NULL,
  `tel_cel_2` varchar(20) DEFAULT NULL,
  `tel_fixo_res` varchar(20) DEFAULT NULL,
  `tel_fixo_com` varchar(20) DEFAULT NULL,
  `email_primario` varchar(60) DEFAULT NULL,
  `email_secundario` varchar(60) DEFAULT NULL,
  `email_comercial` varchar(60) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `observacoes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`cpf_cliente`, `nome_cliente`, `cod_end`, `tel_cel_1`, `tel_cel_2`, `tel_fixo_res`, `tel_fixo_com`, `email_primario`, `email_secundario`, `email_comercial`, `data_cadastro`, `observacoes`) VALUES
('999.999.999-90', 'Carlos Santos', 3, '61 99988-1720', '', '61 3333-2222', '61 2222-1111', 'fulano0@hotmail.com', '', '', '2019-03-14 21:49:00', 'NANANANANANANANANANANANANANANANANAN'),
('999.999.999-99', 'Carlos Santos', 2, '61 99988-1725', '', '61 3333-2222', '61 2222-1111', 'fulano@hotmail.com', '', '', '2019-03-14 21:47:50', 'NANANANANANANANANANANANANANANANANAN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_corretor`
--

CREATE TABLE `tbl_corretor` (
  `cpf_corretor` varchar(14) NOT NULL,
  `nome_corretor` varchar(60) DEFAULT NULL,
  `creci` varchar(8) DEFAULT NULL,
  `regiao_creci` varchar(4) DEFAULT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `tel_cel_1` varchar(20) DEFAULT NULL,
  `tel_cel_2` varchar(20) DEFAULT NULL,
  `tel_fixo_res` varchar(20) DEFAULT NULL,
  `tel_fixo_com` varchar(20) DEFAULT NULL,
  `email_primario` varchar(60) DEFAULT NULL,
  `email_secundario` varchar(60) DEFAULT NULL,
  `email_comercial` varchar(60) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `situacao` varchar(30) DEFAULT NULL,
  `data_desligamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_corretor`
--

INSERT INTO `tbl_corretor` (`cpf_corretor`, `nome_corretor`, `creci`, `regiao_creci`, `cod_end`, `tel_cel_1`, `tel_cel_2`, `tel_fixo_res`, `tel_fixo_com`, `email_primario`, `email_secundario`, `email_comercial`, `data_cadastro`, `situacao`, `data_desligamento`) VALUES
('999.999.999-99', 'Alisson Morais', '0129/D-P', '8ª', 2, '61 99988-1725', '', '61 3333-2222', '61 2222-1111', 'fulano@hotmail.com', '', '', '2019-03-14 21:56:10', 'Ativo', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_empresa`
--

CREATE TABLE `tbl_empresa` (
  `cnpj` varchar(18) NOT NULL,
  `inscricao_estadual` varchar(20) DEFAULT NULL,
  `razao_social` varchar(60) NOT NULL,
  `nome_fantasia` varchar(60) DEFAULT NULL,
  `regime_tributario` varchar(30) DEFAULT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `tel_fixo_com` varchar(14) DEFAULT NULL,
  `tel_cel_1` varchar(15) DEFAULT NULL,
  `tel_cel_2` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `situacao` varchar(30) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_empresa`
--

INSERT INTO `tbl_empresa` (`cnpj`, `inscricao_estadual`, `razao_social`, `nome_fantasia`, `regime_tributario`, `cod_end`, `tel_fixo_com`, `tel_cel_1`, `tel_cel_2`, `email`, `situacao`, `data_cadastro`) VALUES
('00.333.777/0001-43', '12.111.222.001-02', 'Novo Lar Imobiliária', 'Novo Lar Imobiliaria', 'Simples', 4, '061 3333-0030', '061 7777-0000', '', 'novolar2@servidor.com', 'Ativo', '2019-03-15 02:51:55'),
('00.333.777/0001-44', '12.111.222.001-00', 'Novo Lar Imobiliária', 'Novo Lar Imobiliaria', 'Simples', 3, '061 3333-0000', '061 7777-0000', '', 'novolar@servidor.com', 'Ativo', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_endereco`
--

CREATE TABLE `tbl_endereco` (
  `cod_end` int(8) NOT NULL,
  `logradouro` varchar(80) NOT NULL,
  `numero` varchar(6) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cep` char(10) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_endereco`
--

INSERT INTO `tbl_endereco` (`cod_end`, `logradouro`, `numero`, `complemento`, `cep`, `bairro`, `uf`) VALUES
(1, 'Rua da Saudade', '25', 'Ao lado da lojinha', '73.750-000', 'Planaltina', 'GO'),
(2, 'Rua 15 de Maio', '11', 'Região Central', '72.200-000', 'São Paulo', 'SP'),
(3, 'Rua 22 de Dezembro', '33', 'Próximo a Lagoa', '75.700-000', 'Goiânia', 'GO'),
(4, 'Rua da Saudade', '25', 'Ao lado da lojinha', '73.750-000', 'Planaltina', 'GO'),
(5, 'Rua 15 de Maio', '11', 'Região Central', '72.200-000', 'São Paulo', 'SP'),
(6, 'Rua 22 de Dezembro', '33', 'Próximo a Lagoa', '75.700-000', 'Goiânia', 'GO'),
(7, 'Rua da Saudade', '25', 'Ao lado da lojinha', '73.750-000', 'Planaltina', 'GO'),
(8, 'Rua 15 de Maio', '11', 'Região Central', '72.200-000', 'São Paulo', 'SP'),
(9, 'Rua 22 de Dezembro', '33', 'Próximo a Lagoa', '75.700-000', 'Goiânia', 'GO'),
(10, 'Rua da Saudade', '25', 'Ao lado da lojinha', '73.750-000', 'Planaltina', 'GO'),
(11, 'Rua 15 de Maio', '11', 'Região Central', '72.200-000', 'São Paulo', 'SP'),
(12, 'Rua 22 de Dezembro', '33', 'Próximo a Lagoa', '75.700-000', 'Goiânia', 'GO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_funcionario`
--

CREATE TABLE `tbl_funcionario` (
  `cpf_funcionario` varchar(14) NOT NULL,
  `nome_funcionario` varchar(80) DEFAULT NULL,
  `matricula_func` varchar(20) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `tel_cel_1` varchar(20) DEFAULT NULL,
  `tel_cel_2` varchar(20) DEFAULT NULL,
  `tel_fixo_res` varchar(20) DEFAULT NULL,
  `tel_fixo_com` varchar(20) DEFAULT NULL,
  `email_primario` varchar(60) DEFAULT NULL,
  `email_secundario` varchar(60) DEFAULT NULL,
  `email_comercial` varchar(60) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `situacao` varchar(30) DEFAULT NULL,
  `data_desligamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_funcionario`
--

INSERT INTO `tbl_funcionario` (`cpf_funcionario`, `nome_funcionario`, `matricula_func`, `data_admissao`, `cod_end`, `tel_cel_1`, `tel_cel_2`, `tel_fixo_res`, `tel_fixo_com`, `email_primario`, `email_secundario`, `email_comercial`, `data_cadastro`, `situacao`, `data_desligamento`) VALUES
('999.999.999-99', 'Vanessa Santos', '1111', '0000-00-00', 3, '61 88888-8880', '', '041 4444-5555', '', 'vanessa@servidor.com', '', '', '2019-03-15 03:32:08', 'ativo', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_imagens_imovel`
--

CREATE TABLE `tbl_imagens_imovel` (
  `cod_img` int(12) NOT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `foto_logradouro1` varchar(60) NOT NULL,
  `foto_logradouro2` varchar(60) DEFAULT NULL,
  `foto_fachada1` varchar(60) NOT NULL,
  `foto_fachada2` varchar(60) DEFAULT NULL,
  `foto_fachada3` varchar(60) DEFAULT NULL,
  `foto_sala1` varchar(60) NOT NULL,
  `foto_sala2` varchar(60) DEFAULT NULL,
  `foto_dormitorio1` varchar(60) NOT NULL,
  `foto_dormitorio2` varchar(60) DEFAULT NULL,
  `foto_dormitorio3` varchar(60) DEFAULT NULL,
  `foto_dormitorio4` varchar(60) DEFAULT NULL,
  `foto_banheiro_social1` varchar(60) NOT NULL,
  `foto_banheiro_social2` varchar(60) DEFAULT NULL,
  `foto_banheiro_privativo1` varchar(60) DEFAULT NULL,
  `foto_banheiro_privativo2` varchar(60) DEFAULT NULL,
  `foto_varanda_sacada1` varchar(60) DEFAULT NULL,
  `foto_varanda_sacada2` varchar(60) DEFAULT NULL,
  `foto_garagem` varchar(60) DEFAULT NULL,
  `foto_copa` varchar(60) DEFAULT NULL,
  `foto_cozinha1` varchar(60) DEFAULT NULL,
  `foto_cozinha2` varchar(60) DEFAULT NULL,
  `foto_area_servico` varchar(60) DEFAULT NULL,
  `foto_quarto_servico` varchar(60) DEFAULT NULL,
  `foto_banheiro_servico` varchar(60) DEFAULT NULL,
  `foto_arealazer1` varchar(60) DEFAULT NULL,
  `foto_arealazer2` varchar(60) DEFAULT NULL,
  `foto_arealazer3` varchar(60) DEFAULT NULL,
  `foto_arealazer4` varchar(60) DEFAULT NULL,
  `foto_arealazer5` varchar(60) DEFAULT NULL,
  `cpf_corretor` varchar(14) DEFAULT NULL,
  `cpf_cliente` varchar(14) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_imagens_imovel`
--

INSERT INTO `tbl_imagens_imovel` (`cod_img`, `cod_end`, `foto_logradouro1`, `foto_logradouro2`, `foto_fachada1`, `foto_fachada2`, `foto_fachada3`, `foto_sala1`, `foto_sala2`, `foto_dormitorio1`, `foto_dormitorio2`, `foto_dormitorio3`, `foto_dormitorio4`, `foto_banheiro_social1`, `foto_banheiro_social2`, `foto_banheiro_privativo1`, `foto_banheiro_privativo2`, `foto_varanda_sacada1`, `foto_varanda_sacada2`, `foto_garagem`, `foto_copa`, `foto_cozinha1`, `foto_cozinha2`, `foto_area_servico`, `foto_quarto_servico`, `foto_banheiro_servico`, `foto_arealazer1`, `foto_arealazer2`, `foto_arealazer3`, `foto_arealazer4`, `foto_arealazer5`, `cpf_corretor`, `cpf_cliente`, `data_cadastro`) VALUES
(1, 3, '../images/imoveis/2019-03-15/img1.jpeg', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '../images/imoveis/2019-03-15/', '999.999.999-99', '999.999.999-90', '2019-03-15 09:57:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_imovel`
--

CREATE TABLE `tbl_imovel` (
  `cod_imovel` int(12) NOT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `uso` varchar(30) DEFAULT NULL,
  `quant_pavimentos` varchar(2) DEFAULT NULL,
  `quant_dormitorios` varchar(2) DEFAULT NULL,
  `quant_banheiros_sociais` varchar(2) DEFAULT NULL,
  `quant_banheiros_privativos` varchar(2) DEFAULT NULL,
  `quant_salas` varchar(2) DEFAULT NULL,
  `quant_cozinhas` varchar(2) DEFAULT NULL,
  `quant_copas` varchar(2) DEFAULT NULL,
  `quant_despensas` varchar(2) DEFAULT NULL,
  `quant_areas_servicos` varchar(2) DEFAULT NULL,
  `quant_banheiros_servicos` varchar(2) DEFAULT NULL,
  `quant_quartos_servicos` varchar(2) DEFAULT NULL,
  `quant_varandas_sacadas` varchar(2) DEFAULT NULL,
  `quant_vagas_garagem` varchar(2) DEFAULT NULL,
  `quant_armarios_embutidos` varchar(2) DEFAULT NULL,
  `quant_piscinas` varchar(2) DEFAULT NULL,
  `quant_churrasqueira_coberta` varchar(2) DEFAULT NULL,
  `cobertura_teto` varchar(30) DEFAULT NULL,
  `tipo_telhas` varchar(30) DEFAULT NULL,
  `tipo_esquadrias` varchar(30) DEFAULT NULL,
  `logradouro_pavimentado` char(3) DEFAULT NULL,
  `tipo_negocio` varchar(30) DEFAULT NULL,
  `regiao_central` char(3) DEFAULT NULL,
  `area_construida` decimal(5,2) DEFAULT NULL,
  `area_terreno` decimal(5,2) DEFAULT NULL,
  `averbacao_construcao` varchar(20) DEFAULT NULL,
  `valor_oferta` decimal(7,2) DEFAULT NULL,
  `situacao` varchar(30) DEFAULT NULL,
  `tipo_transacao` varchar(20) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  `cpf_corretor` varchar(14) DEFAULT NULL,
  `cpf_cliente` varchar(14) DEFAULT NULL,
  `cod_img` int(12) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`cpf_cliente`),
  ADD UNIQUE KEY `cod_end` (`cod_end`),
  ADD UNIQUE KEY `tel_cel_1` (`tel_cel_1`),
  ADD UNIQUE KEY `email_primario` (`email_primario`);

--
-- Indexes for table `tbl_corretor`
--
ALTER TABLE `tbl_corretor`
  ADD PRIMARY KEY (`cpf_corretor`),
  ADD UNIQUE KEY `cod_end` (`cod_end`),
  ADD UNIQUE KEY `tel_cel_1` (`tel_cel_1`),
  ADD UNIQUE KEY `email_primario` (`email_primario`);

--
-- Indexes for table `tbl_empresa`
--
ALTER TABLE `tbl_empresa`
  ADD PRIMARY KEY (`cnpj`),
  ADD UNIQUE KEY `inscricao_estadual` (`inscricao_estadual`),
  ADD UNIQUE KEY `cod_end` (`cod_end`),
  ADD UNIQUE KEY `tel_fixo_com` (`tel_fixo_com`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_endereco`
--
ALTER TABLE `tbl_endereco`
  ADD PRIMARY KEY (`cod_end`);

--
-- Indexes for table `tbl_funcionario`
--
ALTER TABLE `tbl_funcionario`
  ADD PRIMARY KEY (`cpf_funcionario`),
  ADD UNIQUE KEY `tel_cel_1` (`tel_cel_1`),
  ADD UNIQUE KEY `email_primario` (`email_primario`),
  ADD KEY `fk_cod_end_func` (`cod_end`);

--
-- Indexes for table `tbl_imagens_imovel`
--
ALTER TABLE `tbl_imagens_imovel`
  ADD PRIMARY KEY (`cod_img`),
  ADD UNIQUE KEY `cod_end` (`cod_end`),
  ADD KEY `pk_cpf_corretor_fotos` (`cpf_corretor`),
  ADD KEY `pk_cpf_cliente_fotos` (`cpf_cliente`);

--
-- Indexes for table `tbl_imovel`
--
ALTER TABLE `tbl_imovel`
  ADD PRIMARY KEY (`cod_imovel`),
  ADD UNIQUE KEY `cod_end` (`cod_end`),
  ADD KEY `pk_cpf_corretor_imov` (`cpf_corretor`),
  ADD KEY `fk_cpf_cliente_imov` (`cpf_cliente`),
  ADD KEY `fk_cod_img_imov` (`cod_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_endereco`
--
ALTER TABLE `tbl_endereco`
  MODIFY `cod_end` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_imagens_imovel`
--
ALTER TABLE `tbl_imagens_imovel`
  MODIFY `cod_img` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_imovel`
--
ALTER TABLE `tbl_imovel`
  MODIFY `cod_imovel` int(12) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD CONSTRAINT `fk_cod_end_cliente` FOREIGN KEY (`cod_end`) REFERENCES `tbl_endereco` (`cod_end`);

--
-- Limitadores para a tabela `tbl_corretor`
--
ALTER TABLE `tbl_corretor`
  ADD CONSTRAINT `fk_cod_end_corretor` FOREIGN KEY (`cod_end`) REFERENCES `tbl_endereco` (`cod_end`);

--
-- Limitadores para a tabela `tbl_empresa`
--
ALTER TABLE `tbl_empresa`
  ADD CONSTRAINT `fk_cod_end_empresa` FOREIGN KEY (`cod_end`) REFERENCES `tbl_endereco` (`cod_end`);

--
-- Limitadores para a tabela `tbl_funcionario`
--
ALTER TABLE `tbl_funcionario`
  ADD CONSTRAINT `fk_cod_end_func` FOREIGN KEY (`cod_end`) REFERENCES `tbl_endereco` (`cod_end`);

--
-- Limitadores para a tabela `tbl_imagens_imovel`
--
ALTER TABLE `tbl_imagens_imovel`
  ADD CONSTRAINT `pk_cod_end_fotos` FOREIGN KEY (`cod_end`) REFERENCES `tbl_endereco` (`cod_end`),
  ADD CONSTRAINT `pk_cpf_cliente_fotos` FOREIGN KEY (`cpf_cliente`) REFERENCES `tbl_cliente` (`cpf_cliente`),
  ADD CONSTRAINT `pk_cpf_corretor_fotos` FOREIGN KEY (`cpf_corretor`) REFERENCES `tbl_corretor` (`cpf_corretor`);

--
-- Limitadores para a tabela `tbl_imovel`
--
ALTER TABLE `tbl_imovel`
  ADD CONSTRAINT `fk_cod_img_imov` FOREIGN KEY (`cod_img`) REFERENCES `tbl_imagens_imovel` (`cod_img`),
  ADD CONSTRAINT `fk_cpf_cliente_imov` FOREIGN KEY (`cpf_cliente`) REFERENCES `tbl_cliente` (`cpf_cliente`),
  ADD CONSTRAINT `pk_cod_end_imovel` FOREIGN KEY (`cod_end`) REFERENCES `tbl_endereco` (`cod_end`),
  ADD CONSTRAINT `pk_cpf_corretor_imov` FOREIGN KEY (`cpf_corretor`) REFERENCES `tbl_corretor` (`cpf_corretor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
