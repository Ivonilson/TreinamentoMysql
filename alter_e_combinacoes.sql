/*
* comando "ALTER" e suas combinações"
*/
/*Abaixo alguns exemplos com a utilização do comando "ALTER" que é responsável por fazer
* alterações na estrutura da tabela.
*/
/*
* No exemplo abaixo será acrescido através do comando "ADD" um novo campo (coluna) chamado "uf" à tabela pessoa,
* logo após (after) o campo (coluna) "cidade".
*/
ALTER table pessoa ADD uf varchar(2) after cidade;

/*As alterações realizadas na estrutura das tabelas ou as próprias tabelas, a qualquer
* momento, poderão ser visualizadas através do comando "desc" seguido do nome da tabela,
* conforme abaixo:
*/
DESC pessoa;

/*O Comando "CHANGE" é utilizado para alterar os nomes dos campos (colunas) e/ou seus
* seus atributos, conforme exemplo abaixo. Caso a alteração se restrinja somente aos atributos
* basta repetir o nome do campo (coluna).
*/ 
/*Abaixo a alteração se dará no nome do campo (coluna) e nos atributos*/
ALTER table pessoa CHANGE uf estado char(2) NOT NULL;

/*Abaixo a alteração se dará apenas nos atributos*/
ALTER table pessoa CHANGE uf uf char(2) NOT NULL;










