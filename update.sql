/*
* comando "UPDATE" e suas cláusulas.
*/

/*
* O comando "UPDATE" é utilizado para atualizar (modificar) os atributos dos campos (colunas)
* das tabelas. É muito importante que o comando venha sempre acompanhado de uma cláusula (restrição),
* principalmente a cláusula "WHERE" (onde). Ex:
*/
UPDATE pessoa SET nome = 'FULANO' WHERE cpf = 11111111111; 

/*
* O comando "UPDATE" poderá ser utilizado para atualizar/modificar varíos campos (colunas)
* em um mesmo comando, separados por vírgula ",", conforme exemplo abaixo:
*/
UPDATE pessoa set cpf = 1231235478, cidade = 'SOBRADINHO', estado = 'DF' WHERE nome = 'FULANO';









