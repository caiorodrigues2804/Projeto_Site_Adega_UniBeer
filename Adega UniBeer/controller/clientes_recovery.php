<?php 

// objeto do template smarty
$smarty = new Template();


$connect = new Conexao();
 

// verifico se existe um post do email
if(isset($_POST['cli_email'])):

	// classe de clientes
	$cliente = new Clientes();

	// metodo que valida o email
	$cliente->setCli_email($_POST['cli_email']);

	// verifico se existe o email
	if($cliente->GetClienteEmail($cliente->getCli_email()) > 0):
	// o email foi encontrado

	$email_validador = $_POST['cli_email'];

	
     $host = "localhost";
     $senha = "";
     $usuario = "root";
     $nome_do_banco = "miniloja2017";
 
     $con = mysqli_connect($host,$senha,$usuario,$nome_do_banco);
     $ds = mysqli_query($con,"SELECT `dados_extras` FROM `as_clientes` WHERE `cli_email` = '$email_validador'");
     $novasenha = mysqli_fetch_assoc($ds)["dados_extras"];
     print $novasenha;

		
	// Enviar o email para o cliente
	$email = new EnviarEmail();

	$destinatarios = array($cliente->getCli_email(), Config::SITE_EMAIL_ADM);
	$assunto = 'Nova senha' . Config::SITE_NOME;
	$msg = 'Olá cliente, foi solicitada a sua senha para acessar o Site ' . Config::SITE_NOME;
	$msg .= "<br/> Sua senha é  ( " . $novasenha . " ) <br/>";
	$msg .= "Recomendamos que faça a alteração da sua senha através do site na opção 'Senha' quando estiver logado";

	$email->Enviar($assunto,$msg,$destinatarios);

	// mostra mensagem na tela que foi enviada a senha
	echo "<h4/>Olá cliente, enviamos a sua senha que já está vinculada ao seu e-mail, verifica no seu e-mail que foi cadastrado no site <h4>";
	// Rotas::Redirecionar(5,Rotas::pag_ClienteLogin());
	else:
	// email não foi encontrado
		echo '<h3>Email não foi encontrado no sistema</h3>';
	endif;

// caso não exista o post mostro o template
else:

	// chamo o template
	$smarty->display('clientes_recovery.tpl');

endif;

