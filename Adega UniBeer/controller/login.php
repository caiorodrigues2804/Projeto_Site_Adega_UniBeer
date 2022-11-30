<?php 

// objeto do template
$smarty = new Template();

// objeto do login
$login = new Login();

$servername = "localhost";
$database = "miniloja2017";
$username = "root";
$password = "";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);


// verifico se passei o post para efetuar o login
	if (isset($_POST['txt_email']) && isset($_POST['txt_senha'])):

		$user  = $_POST['txt_email'];
		$senha = $_POST['txt_senha'];
		
		$cons = mysqli_query($conn,"SELECT `pro_acesso` FROM `as_clientes` WHERE `cli_email` = '$_POST[txt_email]'");
		$cons = mysqli_fetch_assoc($cons)["pro_acesso"];
	 
		if($cons == 0){
		$login->GetLogin($user,$senha);
		// var_dump($_SESSION['CLI']);
		
		}else {
			echo '<div class="alert alert-danger"><h4>Acesso bloqueado</h4></div>';
			Rotas::Redirecionar(3,self::get_SiteHOME() . "/login");
		}
	endif;

// passo variáveis para o template
	$smarty->assign('LOGADO', Login::logado());
	$smarty->assign('PAG_CADASTRO', Rotas::pag_CLienteCadastro());
	$smarty->assign('PAG_RECOVERY', Rotas::pag_ClienteRecovery());
	$smarty->assign('PAG_ADM', Rotas::pag_ADM());
// verifico se estou logado ou não
	if(Login::logado()):

		$smarty->assign('USER',$_SESSION['CLI']['cli_nome']);
		$smarty->assign('PAG_LOGOFF',Rotas::pag_Logoff());

		// caso já esteja logado
		Login::MenuCliente();


	endif;


$smarty->display('login.tpl');