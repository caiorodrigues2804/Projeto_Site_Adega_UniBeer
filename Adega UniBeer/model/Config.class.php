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
	const SITE_URL = "http://localhost/Adega%20Unibeer";

	/*** Pasta padrão do site */
	const SITE_PASTA = "";
	/** * nome do site  * */
	const SITE_NOME = 'Adega Unibeer - projetoadegaunibeer.caiorodriguesportfolios.com.br';
	/** * email doa administrador do site * */
	const SITE_EMAIL_ADM = "webcompleto22@gmail.com";


	/**
	 * DADOS DO SERVIDOR DE E-MAIL
	 * */

	const EMAIL_HOST 	  = "smtp.gmail.com";  
	const EMAIL_USER 	  = "webcompleto22@gmail.com";
	const EMAIL_NOME 	  = "Adega UniBeer";
	const EMAIL_SENHA 	  = "dpweqzfjyvtsrkuq";
	const EMAIL_PORTA 	  = 587;
	const EMAIL_SMTPAUTH  = true;
	const EMAIL_SMTSECURE = "tls";
	const EMAIL_COPIA = "teste@teste.com";

}