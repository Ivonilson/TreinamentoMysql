/*
* comando "DELETE" e suas cláusulas.
*/
/*
* O comando "DELETE" faz a deleção de registros das tabelas. Deve-se utilizar sempre 
* uma cláusula (restrição) antes de executar o camando. Exemplo abaixo.
*/
/*O comando abaixo indica que todos os registros onde (WHERE) o campo (coluna) "estado" 
* possuir o valor "DF" em seu atributo, serão deletados.*/
DELETE from pessoa WHERE estado = 'DF';



