/*TESTANDO SCRIPTS NO BANCO DE DADOS DA NOVO LAR IMOBILIARIA*/

/*TESTE INSERT NA TABELA tbl_endereco*/
INSERT INTO tbl_endereco 
(
	logradouro, 
	numero,
	complemento, 
	cep, 
	bairro, 
	uf
) 
values 
(
	'Rua da Saudade', 
	'25',
	'Ao lado da lojinha', 
	'73.750-000', 
	'Planaltina', 
	'GO'
);

/*INSERINDO MULTIPLOS REGISTROS NA TABELA tbl_endereco*/
INSERT INTO tbl_endereco 
(
	logradouro, 
	numero,
	complemento, 
	cep, 
	bairro, 
	uf
) values 
(
	'Rua da Saudade', '25',
	'Ao lado da lojinha', 
	'73.750-000', 
	'Planaltina', 
	'GO'
), 
(
	'Rua 15 de Maio', 
	'11',
	'Região Central', 
	'72.200-000', 
	'São Paulo', 
	'SP'
), 
(
	'Rua 22 de Dezembro', 
	'33', 
	'Próximo a Lagoa', 
	'75.700-000', 
	'Goiânia', 
	'GO'
);

/*SELECT BUSCANDO TUDO NA TABELA tbl_endereco*/
SELECT * FROM tbl_endereco;

----------------------------------------
/*TESTE DE INSERT NA TABELA tbl_cliente*/
INSERT INTO tbl_cliente 
(
	cpf_cliente, 
	nome_cliente, 
	cod_end, 
	tel_cel_1, 
	tel_cel_2, 
	tel_fixo_res,
	tel_fixo_com, 
	email_primario, 
	email_secundario, 
	email_comercial, 
	observacoes
) values 
(
	'999.999.999-99', 
	'Carlos Santos', 
	2, '61 99988-1725', 
	'', 
	'61 3333-2222',
	'61 2222-1111', 
	'fulano@hotmail.com', 
	'', 
	'', 
	'NANANANANANANANANANANANANANANANANAN'
);

/*SELECT BUSCANDO TUDO NA TABELA tbl_cliente*/
SELECT * FROM tbl_cliente;

-----------------------------------------
/*TESTE DE INSERT NA TABELA tbl_corretor*/
INSERT INTO tbl_corretor 
(
	cpf_corretor, 
	nome_corretor, 
	creci, 
	regiao_creci, 
	cod_end, 
	tel_cel_1, 
	tel_cel_2, 
	tel_fixo_res,
	tel_fixo_com, 
	email_primario, 
	email_secundario, 
	email_comercial, 
	situacao, 
	data_desligamento
) values 
(
	'999.999.999-99', 
	'Alisson Morais', 
	'0129/D-PE', '8ª', 2, 
	'61 99988-1725', 
	'', '61 3333-2222',
	'61 2222-1111', 
	'fulano@hotmail.com', 
	'', 
	'', 
	'Ativo', 
	''
);

/*SELECT BUSCANDO TUDO NA TABELA tbl_corretor*/
SELECT * FROM tbl_corretor;

-----------------------------------------
/*INSERT NA TABELA tbl_funcionario */
INSERT into tbl_funcionario (
	cpf_funcionario,
	nome_funcionario,
	matricula_func,
	data_admissao,
	cod_end,
	tel_cel_1,
	tel_cel_2,
	tel_fixo_res,
	tel_fixo_com,
	email_primario,
	email_secundario,
	email_comercial,
	situacao,
	data_desligamento
) values (
	'999.999.999-99',
	'Vanessa Santos',
	'1111',
	'',
	3,
	'61 88888-8880',
	'',
	'041 4444-5555',
	'',
	'vanessa@servidor.com',
	'',
	'',
	'ativo',
	''
);

/*BUSCANDO TUDO NA TABELA tbl_funcionario*/
SELECT * FROM tbl_funcionario;

---------------------------------------------------
/*INSERT NA TABELA tbl_empresa*/
INSERT INTO tbl_empresa 
(
	cnpj,
	inscricao_estadual,
	razao_social,
	nome_fantasia,
	regime_tributario,
	cod_end,
	tel_fixo_com,
	tel_cel_1,
	tel_cel_2,
	email,
	situacao
) values (
	'00.333.777/0001-43',
	'12.111.222.001-02',
	'Novo Lar Imobiliária',
	'Novo Lar Imobiliaria',
	'Simples',
	3,
	'061 3333-0030',
	'061 7777-0000',
	'',
	'novolar2@servidor.com',
	'Ativo'
);

/*BUSCANDO TUDO NA TABELA tbl_empresa*/
SELECT * FROM tbl_empresa;

---------------------------------
/*INSERT NA TABELA tbl_imagens_imovel*/
INSERT INTO tbl_imagens_imovel
(
	cod_img,
	cod_end,
	foto_logradouro1,
	foto_logradouro2,
	foto_fachada1,
	foto_fachada2,
	foto_fachada3,
	foto_sala1,
	foto_sala2,
	foto_dormitorio1,
	foto_dormitorio2,
	foto_dormitorio3,
	foto_dormitorio4,
	foto_banheiro_social1,
	foto_banheiro_social2,
	foto_banheiro_privativo1,
	foto_banheiro_privativo2,
	foto_varanda_sacada1,
	foto_varanda_sacada2,
	foto_garagem,
	foto_copa,
	foto_cozinha1,
	foto_cozinha2,
	foto_area_servico,
	foto_quarto_servico,
	foto_banheiro_servico,
	foto_arealazer1,
	foto_arealazer2,
	foto_arealazer3,
	foto_arealazer4,
	foto_arealazer5,
	cpf_corretor,
	cpf_cliente
) values
(
	'',
	3,
	'../images/imoveis/2019-03-15/img1.jpeg',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'../images/imoveis/2019-03-15/',
	'999.999.999-99',
	'999.999.999-90'
);

/*BUSCANDO TUDO NA TABELA tbl_imagens_imovel*/
SELECT * FROM tbl_imagens_imovel;

