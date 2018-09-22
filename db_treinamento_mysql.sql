/*
*Constraints são as restrições criadas para os campos das tabelas
*As principais constraints são: NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY e DEFAULT.
*/
AUTO_INCREMENT é uma constraint (restrição) do MYSQL que permite que
o campo que a possui faça incremento automático (1 A 1) dos seus valores. O valor
inicial padrão é 1, no entanto, é possível atribuir-se o valor padrão
que se deseja para ser o valor inicial do campo. Ex: AUTO_INCREMENT = 10.

/*
*Abaixo a tabela com a sintaxe exemplo do auto_increment predefinido
*Note que o auto_increment é definido no final antes do ponto e vírgula
*e depois dos parênteses. Portanto, o valor padrão iniciará em 25 e irá
*incrementar-se de 1 a 1 a cada novo registro da tabela.
*/
CREATE TABLE IF NOT EXISTS tbl_teste_incremento(
	Codigo smallint PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(20) NOT NULL
) AUTO_INCREMENT = 25;


/*
*Abaixo o comando SELECT MAX é uma função do MSYQL que serve para consultar o registro com o valor máximo 
*inserido na tabela, de acordo com o nome do campo passado como argumento.
*Ex:
*/
SELECT MAX(CAMPO_DA_TABELA) FROM Nome_da_Tabela;



/*CRIANDO A TABELA "tbl_livro" PARA TREINAR*/

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


