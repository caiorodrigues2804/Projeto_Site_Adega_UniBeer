<?php 

/**
 * descrição da Paginação
 * 
 * @author Caio Rodrigues
 * */

class Paginacao extends Conexao{


	function GetPaginacao($campo,$tabela){

		$query = "SELECT {$campo} FROM {$tabela}";

		$this->executeSQL($query);

		$total = $this->TotalDados();

		// 15 / 3 ---> 5 páginas
		$paginas = ($total / Config::BD_LIMITE_POR_PAG);

		$p = isset($_GET['p']) ? $_GET['p'] : 1;

	}	
}