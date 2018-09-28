/*
* A cláusula "ALL".
*/

/*A cláusula "ALL" é o oposto da cláusula "DISTINCT", ou seja, a mesma retornará
* todos os valores solicitados do atributo referenciado em "FROM". Portanto, se existirem
* "n" valores repetidos no atributo, todos serão relacionados no resultado do "SELECT".
* Exemplo de sintaxe abaixo:  
*/
SELECT ALL nome FROM pessoa;
