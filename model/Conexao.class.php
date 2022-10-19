<?php 

/**
 * 
 * descricao - gerencia a conexao com o Banco de Dados
 * 
 * @author Caio Rodrigues
 **/

class Conexao extends Config{

	private $host, $user, $senha, $banco;

	protected $obj, $itens=array();	


	function __construct(){

		$this->host  =  Config::$BANCO_HOST;
		$this->user  =  Config::$BANCO_USER;
		$this->senha = Config::$BANCO_SENHA;
		$this->banco = Config::$BANCO_BD;

		try{

			if ($this->Conectar() == null):

				$this->Conectar();	

			endif;


		} catch(Exception $e){

	die($e->getMessage() . ' <h2>Ops 😢.... aconteceu um imprevisto no banco de dados, não fique triste e tente novamente mais tarde</h2>');

		}
	}


	/**
	 * @return \PDO Link cpm dados da conexao
	 **/

	private function Conectar(){

	$options = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");

	$link = new PDO("mysql:host={$this->host};dbname={$this->banco}",
	$this->user,$this->senha,$options);

	return $link;
	}

	/**
	 * 
	 * @param type $query é o SQL passada
	 * @param array $params são parametros da SQL
	 * @return PDO uma contato 
	 * */
 
 	function ExecuteSQL($query,array $params = null){

 		$this->obj = $this->Conectar()->prepare($query);

 		return $this->obj->execute();
 	}

 	/**
 	 * 
 	 * @return array com dados do SQL
 	 * */

 	function listarDados(){

 		return $this->obj->fetch(PDO::FETCH_ASSOC);

 	}

 	/**
 	 * 
 	 * @return int com total de registros
 	 * */

 	function totalDados(){

 		return $this->obj->rowCount();
 	}

 	function GetItens(){
 		return $this->itens;
 	}


}