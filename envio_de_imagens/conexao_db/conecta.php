<?php

		try {

		$conexao = new PDO('mysql:host=localhost; dbname=db_imagens', "root", "" );
		$conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		//echo "conectado a base de dados com sucesso...";

		} catch(PDOException $erro){
			echo $erro->getMessage();
		}
	
?>