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