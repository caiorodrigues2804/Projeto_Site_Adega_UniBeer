<?php 


/**
 * descricao Clientes
 * 
 * @author Caio Rodrigues
 * */

class Clientes extends Conexao{
	
	private $cli_nome;
	private $cli_sobrenome;
	private $cli_data_nasc;
	private $cli_rg;
	private $cli_cpf;
	private $cli_ddd;
	private $cli_fone;
	private $cli_celular;
	private $cli_endereco;
	private $cli_numero;
	private $cli_bairro;
	private $cli_cidade;
	private $cli_uf;
	private $cli_cep;
	private $cli_email;
	private $cli_data_cad;
	private $cli_hora_cad;	
	private $cli_senha;	

	/**
	 * chamando o construtor da classe pai
	 * */

	function __construct(){
		parent::__construct();
	}


	/**
	 * 
	 * prepara os campos para inserir ou atualizar
	 *  
	 * */

	function Preparar($cli_nome,$cli_sobrenome,$cli_data_nasc,$cli_rg,$cli_cpf,$cli_ddd,$cli_fone,$cli_celular,$cli_endereco,$cli_numero,$cli_bairro,$cli_cidade,$cli_uf,$cli_cep,$cli_email,$cli_data_cad,$cli_hora_cad,$cli_senha)
	{

		# $this->setCli_

		// print $cli_data_cad . '<br/>';

		$this->setCli_nome($cli_nome);
		$this->setCli_sobrenome($cli_sobrenome);
		$this->setCli_data_nasc($cli_data_nasc);
		$this->setCli_rg($cli_rg);
		$this->setCli_cpf($cli_cpf);
		$this->setCli_ddd($cli_ddd);
		$this->setCli_fone($cli_fone);
		$this->setCli_celular($cli_celular);
		$this->setCli_endereco($cli_endereco);
		$this->setCli_numero($cli_numero);
		$this->setCli_bairro($cli_bairro);
		$this->setCli_cidade($cli_cidade);
		$this->setCli_uf($cli_uf);
		$this->setCli_cep($cli_cep);
		$this->setCli_email($cli_email);
		$this->setCli_data_cad($cli_data_cad);
		$this->setCli_hora_cad($cli_hora_cad);
		$this->setCli_senha($cli_senha);
			
	}

	/**
	 * 
	 * Insere o novo cliente no banco
	 * 
	 * */

	function Inserir(){

	// $query  = " INSERT INTO clientes (cli_nome,cli_sobrenome,cli_data_nasc,cli_rg,";
	// $query .= " cli_cpf,cli_ddd,cli_fone,cli_celular,cli_endereco,cli_numero,cli_bairro,";
	// $query .= " cli_cidade,cli_uf,cli_cep,cli_email,cli_data_cad,cli_hora_cad,cli_senha)";
	// $query .= " VALUES ";
	// $query .= " (:cli_nome,:cli_sobrenome,:cli_data_nasc,:cli_rg,";
	// $query .= " :cli_cpf,:cli_ddd,:cli_fone,:cli_celular,:cli_endereco,:cli_numero,:cli_bairro,";
	// $query .= " :cli_cidade,:cli_uf,:cli_cep,:cli_email,:cli_data_cad,:cli_hora_cad,:cli_senha)";


	$params = array(
		':cli_nome'       => $this->getCli_nome(),
		':cli_sobrenome'  => $this->getCli_sobrenome(),
		':cli_data_nasc'  => $this->getCli_data_nasc(),
		':cli_rg'         => $this->getCli_rg(),
		':cli_cpf'        => $this->getCli_cpf(),	
		':cli_ddd'        => $this->getCli_ddd(),	
		':cli_fone'       => $this->getCli_fone(),	
		':cli_celular'    => $this->getCli_celular(),	
		':cli_endereco'   => $this->getCli_endereco(),	
		':cli_numero'     => $this->getCli_numero(),	
		':cli_bairro'     => $this->getCli_bairro(),	
		':cli_cidade'     => $this->getCli_cidade(),	
		':cli_uf'         => $this->getCli_uf(),	
		':cli_cep'        => $this->getCli_cep(),
		':cli_email'      => $this->getCli_email(),	
		':cli_data_cad'   => $this->getCli_data_cad(),	
		':cli_hora_cad'   => $this->getCli_hora_cad(),	
		':cli_senha'      => $this->getCli_senha(),							
	);

	// print '<pre>';
	// print_r($params);
	// print '</pre>';

	$cli_nome_1 		= $params[':cli_nome'];
	$cli_sobrenome_1 	= $params[':cli_sobrenome'];
	$cli_data_nasc_1	= $params[':cli_data_nasc'];
	$cli_rg_1			= $params[':cli_rg'];
	$cli_cpf_1 			= $params[':cli_cpf'];
	$cli_ddd_1			= $params[':cli_ddd'];
	$cli_fone_1 		= $params[':cli_fone'];
	$cli_celular_1      = $params[':cli_celular'];
	$cli_endereco_1 	= $params[':cli_endereco'];
	$cli_numero_1	 	= $params[':cli_numero'];
	$cli_bairro_1 		= $params[':cli_bairro'];
	$cli_cidade_1		= $params[':cli_cidade'];
	$cli_uf_1	 		= $params[':cli_uf'];
	$cli_cep_1			= $params[':cli_cep'];
	$cli_email_1		= $params[':cli_email'];
	$cli_data_cad_1		= $params[':cli_data_cad'];
	// print 'Data do cadastro: ' . $cli_data_cad_1 . '<br/>';
	$cli_hora_cad_1		= $params[':cli_hora_cad'];
	$cli_senha_1  		= $params[':cli_senha'];

	// print 'Nome: ' . $params[':cli_nome'] . '<br/>';
	// print 'Sobrenome: ' . $params[':cli_sobrenome'] . '<br/>';
	// print 'Data de nascimento: ' . $params[':cli_data_nasc'] . '<br/>';
	// print 'Data de nascimento: ' . $params[':cli_data_nasc'] . '<br/>';

	print_r($params);

	$query = "INSERT INTO `{$this->prefix}clientes` (`cli_nome`,`cli_sobrenome`,`cli_data_nasc`,`cli_rg`,`cli_cpf`,`cli_ddd`,`cli_fone` ,`cli_celular`,`cli_endereco`,`cli_numero`,`cli_bairro` ,`cli_cidade`,`cli_uf`,`cli_cep`,`cli_email`,`cli_pass`,`cli_data_cad`,`cli_hora_cad`) VALUES ('$cli_nome_1','$cli_sobrenome_1','$cli_data_nasc_1','$cli_rg_1',	
	'$cli_cpf_1','$cli_ddd_1','$cli_fone_1','$cli_celular_1','$cli_endereco_1', 	
	'$cli_numero_1','$cli_bairro_1','$cli_cidade_1','$cli_uf_1','$cli_cep_1','$cli_email_1','$cli_senha_1','$cli_data_cad_1','$cli_hora_cad_1')";
 
	$this->ExecuteSQL($query,$params);
	// ISSO VAI DÁ ERRO

	}


	// GETTERS retornando os dados do cliente

	# Nome
	function getCli_nome(){
		return $this->cli_nome;
	}

	# Sobrenome
	function getCli_sobrenome(){
		return $this->cli_sobrenome;
	}

	# Data de Nascimento
	function getCli_data_nasc(){
		return $this->cli_data_nasc;
	}

	# RG
	function getCli_rg(){
		return $this->cli_rg;
	}

	# CPF
	function getCli_cpf(){
		return $this->cli_cpf;
	}

	# DDD
	function getCli_ddd(){
		return $this->cli_ddd;
	}

	# Fone
	function getCli_fone(){
		return $this->cli_fone;
	}

	# Celular
	function getCli_celular(){
		return $this->cli_celular;
	}

	# Endereço
	function getCli_endereco(){
		return $this->cli_endereco;
	}

	# numero
	function getCli_numero(){
		return $this->cli_numero;
	}

	# Bairro
	function getCli_bairro(){
		return $this->cli_bairro;
	}

	# Cidade
	function getCli_cidade(){
		return $this->cli_cidade;
	}

	# UF
	function getCli_uf(){
		return $this->cli_uf;
	}

	# CEP
	function getCli_cep(){
		return $this->cli_cep;
	}

	# E-MAIL
	function getCli_email(){
		return $this->cli_email;
	}

	# DATA CAD
	function getCli_data_cad(){
		return $this->cli_data_cad;
	}
	
	# HORA CAD
	function getCli_hora_cad(){
		return $this->cli_hora_cad;
	}

	# SENHA
	function getCli_senha(){
		return $this->cli_senha;
	}

	// Começa os SETTERS dos dados do Cliente

	function setCli_nome($cli_nome){
		$this->cli_nome = $cli_nome;
	}

	function setCli_sobrenome($cli_sobrenome){
		$this->cli_sobrenome = $cli_sobrenome;
	}

	function setCli_data_nasc($cli_data_nasc){
		$this->cli_data_nasc = $cli_data_nasc;
	}

	function setCli_email($cli_email){
		$this->cli_email = $cli_email;
	}
	

	function setCli_rg($cli_rg){
		$this->cli_rg = $cli_rg;
	}

	function setCli_cpf($cli_cpf){
		$this->cli_cpf = $cli_cpf;
	}

	function setCli_ddd($cli_ddd){
		$this->cli_ddd = $cli_ddd;
	}

	function setCli_fone($cli_fone){
		$this->cli_fone = $cli_fone;
	}

	function setCli_celular($cli_celular){
		$this->cli_celular = $cli_celular;
	}

	function setCli_endereco($cli_endereco){
		$this->cli_endereco = $cli_endereco;
	}

	function setCli_numero($cli_numero){
		$this->cli_numero = $cli_numero;
	}

	function setCli_bairro($cli_bairro){
		$this->cli_bairro = $cli_bairro;
	}

	function setCli_cidade($cli_cidade){
		$this->cli_cidade = $cli_cidade;
	}

	function setCli_uf($cli_uf){
		$this->cli_uf = $cli_uf;
	}

	function setCli_cep($cli_cep){
		$this->cli_cep = $cli_cep;
	}

	function setCli_data_cad($cli_data_cad){
		$this->cli_data_cad = $cli_data_cad;
	}

	function setCli_hora_cad($cli_hora_cad){
		$this->cli_hora_cad = $cli_hora_cad;
	}

	function setCli_senha($cli_senha){

		$this->cli_senha = md5($cli_senha);

	}

}