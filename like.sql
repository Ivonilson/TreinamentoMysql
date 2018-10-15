/*
* Uilizando filtros (cláusulas).
*/
/* O Operador LIKE significa "COMO". O mesmo deve ser combinado com o caracter curinga %. Quando 
* o caractere % quando utilizado informa o que deve ser pesquisado antes e apoós dele
* com o uso do operador LIKE, conforme os exemplos abaixo:
*/

/*Abaixo diz que traga o registro que começa com qualquer coisa
mas termina em GO.*/
SELECT * FROM tbl_clientes WHERE endereco LIKE '%GO';

/*Abaixo diz que traga o registro que começa com GO e termina com qualquer coisa.*/
SELECT * FROM tbl_clientes WHERE endereco LIKE '%GO';






