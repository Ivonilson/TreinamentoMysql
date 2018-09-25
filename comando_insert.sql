/*
* Criação da tabela "cliente"
*/
create table IF NOT EXISTS cliente (
	nome varchar(30),
    sexo char(1),
    email varchar(30),
    cpf int(11),
    telefone varchar(30),
    endereco varchar(100)
);

/*
* Uma forma de inserção (insert) de dados na tabela é "excluindo" as colunas, conforme exemplo abaixo.
* As informações devem estar na mesma ordem dos campos da tabela.
*/
INSERT INTO CLIENTE VALUES ('IVONILSON', 'M', 'IVONILSONCARDOSO@HOTMAIL.COM', 1234567891, '61 9999999',
'RUA DA AMIZADE, Nº 10, CENTRO, PLANALTINA - GO');

INSERT INTO CLIENTE VALUES ('REGINA', 'M', 'REGINACARDOSO@HOTMAIL.COM', 1234567892, '61 9999997',
'RUA DA AMIZADE, Nº 10, CENTRO, PLANALTINA - GO');

/*
* Outra forma de inserir (insert) os dados é descrevendo o nome das colunas. Neste caso a ordem de inserção dos dados
*deve obedecer a ordem de descrição das colunas, conforme o exemplo abaixo. Note que neste caso abaixo o endereço vem
*antes do telefone, portanto, o dado deve ser inserido em obediência a ordem que foram descritas as colunas no insert.
*/
INSERT INTO CLIENTE (nome, sexo, email, cpf, endereco, telefone) VALUES ('AGNES', 'F', 'AGNESCARDOSO@HOTMAIL.COM',
789987789, 'RUA DA AMIZADE, Nº 10, CENTRO, PLANALTINA-GO', '8888-888');

/*
* No exemplo abaixo, é utilizado a forma com a descrição das colunas para o insert e foi deixado propositalmente
* uma coluna fora da descrição. Portanto, neste caso, como o campo suprimido aceita não é NOT NULL, ou seja, aceita
* valores nulos, o mesmo será definido como dado nulo automaticamente na inserção do registro.
*/
INSERT INTO CLIENTE (nome, sexo, cpf, endereco, telefone) VALUES ('AGNES', 'F',
789987789, 'RUA DA AMIZADE, Nº 10, CENTRO, PLANALTINA-GO', '8888-888');

/*
* Fazendo vários inserts com um comando apenas. Neste caso, faz-se os inserts sem a descrição dos campos (portanto, deve-se
* seguir a ordem dos mesmos conforme a tabela) e separa-se cada insert com uma vírgula(,) conforme o exemplo abaixo. Esta sintaxe
* é aceita somente no SGBD MYSQL.
*/
INSERT INTO CLIENTE VALUES ('MARCOS', 'M', 'MARCOS@HOTMAIL.COM', 1234567893, '61 9999998',
'RUA DA AMIZADE, Nº 10, CENTRO, PLANALTINA - GO'), ('CARLOS', 'M', 'CARLOS@HOTMAIL.COM', 1234567892, '61 9999994',
'RUA DA AMIZADE, Nº 10, CENTRO, PLANALTINA - GO');