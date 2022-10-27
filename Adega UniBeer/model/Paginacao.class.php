<?php 

/**
 * descrição da Paginação
 * 
 * @author Caio Rodrigues
 *  
 * */

class Paginacao extends Conexao{

	/**
	 * @var int passa o limite de itens por pagina
	 * */

	public $limite;

	/**
	 * @var int define onde começa a navegação pagina inicial
	 * */
	public $inicio;

	/**
	 * @var array numérico que pega as paginas para navega~]ap
	 * */
	public $link = array();	


	/**
	 * 
	 * @param string: campos da tabela
	 * @param string: tabela do banco
	 * 
	 * */

	function GetPaginacao($campo,$tabela){

		// Faço uma consulta em um campo da tabela
		$query = "SELECT {$campo} FROM {$tabela}";
		$this->executeSQL($query);

		// Conto o resultado e pego o total
		$total = $this->TotalDados();

		// Defino limite de itens por página
		$this->limite = Config::BD_LIMITE_POR_PAG;

		// Pego o número total de páginas que eu vou obter
		// 15 / 3 ---> 5 páginas
		// 18 / 3 ---> 6 páginas
		// 21 / 3 ---> 7 páginas

		$paginas = ceil($total / $this->limite);

		// Pego o número da página para navegação URL 
		$p = isset($_GET['p']) ? $_GET['p'] : 1;

		// Defino onde começa a paginação
		$this->inicio = ($p * $this->limite) - $this->limite;

		// Faço um laço passando as links das paginas para um array
		for($i = 1;$i <= $paginas; $i++):

		array_push($this->link,$i);

		endfor;

	}	
}