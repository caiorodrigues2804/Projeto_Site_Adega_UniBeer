<?php 


/**
 * Descrição config
 * Armazena diversos informações do sistema/loja
 * 
 * @author Caio Rodrigues
 * */

class Config {

	/**
	 *  INFORMAÇÕES DE BANCO DE DADOS ====================
	 * */
	static $BANCO_HOST = "localhost";
	static $BANCO_USER = "root";
	static $BANCO_SENHA = "";
	static $BANCO_BD = "miniloja2017";



	/**
	 * INFORMAÇÕES DO SITE ==============================
	 * */

	/*** URL do site */
	const SITE_URL = "http://localhost";

	/*** Pasta padrão do site */
	const SITE_PASTA = "Adega Unibeer";
	/** * nome do site  * */
	const SITE_NOME = 'Adega Unibeer - www.adegaunibeersite.com.br';
	/** * email doa administrador do site * */
	const SITE_EMAIL_ADM = "contato@adegaunibeer.com.br";


	/**
	 * DADOS DO SERVIDOR DE E-MAIL
	 * */

	const EMAIL_HOST 	  = "";
	const EMAIL_USER 	  = "";
	const EMAIL_NOME 	  = "";
	const EMAIL_SENHA 	  = "";
	const EMAIL_PORTA 	  = "";
	const EMAIL_SMTPAUTH  = "";
	const EMAIL_SMTSECURE = "";

}