/*
* Cláusula "ORDER BY" e suas formas.
*/

/*
* A cláusula "ORDER BY" retorna a consulta "SELECT" por padrão em ordem ascendente. 
* Para mudar o padrão de apresentação basta declarar logo após o campo (coluna) a forma 
* que se deseja, se "DESC" (descedente) ou "ASC" (ascendente). Caso não seja declarado a forma,
* o default será "ASC". Exemplo abaixo:
*/

/*A consulta abaixo retorná os registros organizados alfabeticamente na ordem ascendente,
* ou seja, do primeiro para o último.
*/
SELECT nome FROM pessoa ORDER BY nome ASC;

/*
* A consulta abaixo retorná os registros organizados alfabeticamente na ordem descendente,
* ou seja, do último para o primeiro.
*/
SELECT nome FROM pessoa ORDER BY nome DESC;









