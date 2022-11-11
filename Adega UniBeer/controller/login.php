<?php 

$smarty = new Template();
$login = new Login();


	$smarty->assign('LOGADO', Login::logado());

	if(Login::logado()):

		$smarty->assign('USER',$_SESSION['CLI']['cli_nome']);
		$smarty->assign('PAG_LOGOFF',Rotas::pag_Logoff());

	endif;

if (isset($_POST['txt_email']) && isset($_POST['txt_senha'])):

	$user  = $_POST['txt_email'];
	$senha = $_POST['txt_senha'];
	
	$login->GetLogin($user,$senha);
	// var_dump($_SESSION['CLI']);

endif;

$smarty->display('login.tpl');