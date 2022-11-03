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
	const BD_HOST = "localhost";
	const BD_USER = "root";
	const BD_SENHA = "";
	const BD_BANCO = "miniloja2017";
	const BD_PREFIX = "as_";
	const BD_LIMITE_POR_PAG = 9;


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