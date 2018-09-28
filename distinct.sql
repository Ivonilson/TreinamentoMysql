/*
* A cláusula "DISTINCT".
*/

/*A cláusula "DISTINCT" retorna apenas uma linha (registro) para representar o universo
* de valores repetidos que possam existir dentro do atributo. No exemplo abaixo, se existirem
*03 pessoas homônimas do tipo (Paulo, Paulo, Paulo) e mais registros (linhas) com mais repetições
* do tipo (Antonio, Antonio) e não repetidas do tipo (Carlos), o comando trará o seguinte resutado:
* (Paulo, Antonio, Carlos), ou seja, um representante para cada registro que tenha valores
* repetidos*/
SELECT DISTINCT nome FROM pessoa;
