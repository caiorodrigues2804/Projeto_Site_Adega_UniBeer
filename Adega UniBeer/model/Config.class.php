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
	const SITE_EMAIL_ADM = "caiorodrigues2848@gmail.com";


	/**
	 * DADOS DO SERVIDOR DE E-MAIL
	 * */

	const EMAIL_HOST 	  = "smtp.gmail.com"; //stmp.caiorodrigues.com.br
	const EMAIL_USER 	  = "caiorodrigues2848@gmail.com";
	const EMAIL_NOME 	  = "Contato Loja 2022";
	const EMAIL_SENHA 	  = "upjiktnarbegfkqf";
	const EMAIL_PORTA 	  = 587;
	const EMAIL_SMTPAUTH  = true;
	const EMAIL_SMTSECURE = "tls";
	const EMAIL_COPIA = "teste@teste.com";

}