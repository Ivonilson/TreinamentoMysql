/*CRIANDO A TABELA "tbl_livro"*/

CREATE TABLE IF NOT EXISTS tbl_livro (
	ID_Livro smallint AUTO_INCREMENT PRIMARY KEY,
    Nome_Livro varchar(50) NOT NULL,
    ISBN varchar(30) NOT NULL,
    ID_Autor smallint NOT NULL,
    Data_Pub date NOT NULL,
    Preco_Livro decimal NOT NULL
);

/*
*O Comando abaixo mostra as tabelas existentes no banco de dados
*em uso (selecionado)
*/
SHOW TABLES;

/*
* Criando a tabela de autores
*/
CREATE TABLE IF NOT EXISTS tbl_autor (
	ID_Autor smallint PRIMARY KEY,
	Nome_Autor varchar(50),
	Sobrenome_Autor varchar(60)
);

/*
* Criando a tabela de editoras
*/
CREATE TABLE IF NOT EXISTS tbl_editora (
	ID_Editora smallint PRIMARY KEY AUTO_INCREMENT,
	Nome_Editora varchar(50) NOT NULL
);


