/*ADICIONANDO COLUNA A TABELA JÁ EXISTENTE*/
ALTER TABLE ADD nome_coluna definicoes_coluna posicao_coluna 
coluna_referencial_da_posicao;
/*OBS: CASO NÃO SEJA PREDEFINIDA A POSIÇÃO DA COLUNA, A MESMA SERÁ ALOCADA
NO FINAL DA TABELA*/