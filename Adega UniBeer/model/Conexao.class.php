<?php 

/**
 * 
 * descricao - gerencia a conexao com o Banco de Dados
 * 
 * @author Caio Rodrigues
 **/

class Conexao extends Config{

	private $host, $user, $senha, $banco;

	protected $obj, $itens=array(), $prefix;


	function __construct(){

		$this->host  = self::BD_HOST;
		$this->user  = self::BD_USER;
		$this->senha = self::BD_SENHA;
		$this->banco = self::BD_BANCO;

		$this->prefix=self::BD_PREFIX;

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