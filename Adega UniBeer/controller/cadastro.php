<?php 

// objeto do template smarty
$smarty = new Template();

// if(isset($_POST['cli_id']) and isset($_POST['cli_nome'])):
if(!count($_POST) < 15):

	echo '<pre>';
	print_r($_POST);
	echo '</pre>';

	//Criar variáveis
	$cli_nome           = $_POST['cli_nome'];
	$cli_sobrenome      = $_POST['cli_sobrenome'];
	$cli_data_nasc      = $_POST['cli_data_nasc'];
	$cli_rg             = $_POST['cli_rg'];
	$cli_cpf            = $_POST['cli_cpf'];
	$cli_ddd            = $_POST['cli_ddd'];
	$cli_fone           = $_POST['cli_fone'];
	$cli_celular        = $_POST['cli_celular'];
	$cli_endereco       = $_POST['cli_endereco'];
	$cli_numero         = $_POST['cli_numero'];
	$cli_bairro         = $_POST['cli_bairro'];
	$cli_cidade         = $_POST['cli_cidade'];
	$cli_uf             = $_POST['cli_uf'];
	$cli_cep            = $_POST['cli_cep'];
	$cli_email          = $_POST['cli_email'];
	// print 'POST: ' . $cli_email;
	$cli_senha		    = Sistema::GerarSenha(1);
	$cli_data_cad 		= Sistema::DataAtualUS();
	$cli_hora_cad 		= Sistema::HoraAtual();

	echo $cli_senha . '<br/>'; 

	$clientes = new Clientes();
	$clientes->Preparar($cli_nome,$cli_sobrenome,$cli_data_nasc,$cli_rg,$cli_cpf,$cli_ddd,$cli_fone,$cli_celular,$cli_endereco,$cli_numero,$cli_bairro,$cli_cidade,$cli_uf,$cli_cep,$cli_email,$cli_data_cad,$cli_hora_cad,$cli_senha);
	
		// $clientes->Preparar($cli_nome,$cli_sobrenome,$cli_data_nasc,$cli_rg,$cli_cpf,$cli_ddd,$cli_fone,$cli_celular,$cli_endereco,$cli_numero,$cli_bairro,$cli_cidade,$cli_uf,$cli_cep,$cli_email,$cli_data_cad,$cli_hora_cad,$cli_senha);

	$clientes->Inserir();
	 
	/**
	[cli_nome] => Caio
    [cli_sobrenome] => Rodrigues
    [cli_data_nasc] => 1980-05-24
    [cli_rg] => 12344566
    [cli_cpf] => 12344566
    [cli_ddd] => 11
    [cli_fone] => 321321321321
    [cli_celular] => 12312313
    [cli_endereco] => Rua Bernando de Aguirre
    [cli_numero] => 12
    [cli_bairro] => Jardim Miriam
    [cli_cidade] => São Paulo 
    [cli_uf] => SP
    [cli_cep] => 123456577
    [cli_email] => caiorodrigues2848@gmail.com
	 * */


endif;
 
// chamo o template
$smarty->display('cadastro.tpl');

?>
 <script>
 		let h_s;
 		h_s = document.createElement('button');
 		document.getElementsByTagName('label')[15].appendChild(h_s);
 		h_s.style.marginLeft = 20 + 'px';
 		h_s.innerHTML = 'Ler os termos de uso';
 		h_s.addEventListener('click',() => {
 			newpopupWindow = window.open ('', 'pagina', "width=600 height=600");
			newpopupWindow.document.write("<center><h1>Termos de uso </h1></center><hr/>Para adesão, o CLIENTE deverá ler atentamente todo o conteúdo deste contrato e, caso concorde com todas as cláusulas, deverá aceitar irrestritamente o termo clicando no campo “Li e aceito os termos e condições de uso”, bem como ter pleno conhecimento da Política de Privacidade, disponível no rodapé do Portal, pois a alegação de desconhecimento não o eximirá de eventuais responsabilidades ou despistes durante a utilização do Portal.<br/><br/>Para utilização da plataforma da Adega UniBeer, o CLIENTE deverá se cadastrar e criar uma conta no site adegaunibeer.com.br, informando, de forma correta e atualizada, seus dados cadastrais. Ao usuário não há necessidade de preenchimento integral de todos os dados, contudo o acesso a certas funcionalidades depende de informações específicas, marcadas e apontadas na própria página de cadastro e de acordo com sua navegação. Os dados cadastrais informados pelo CLIENTE estarão sujeitos à análise e aprovação da Adega Completa, que poderá, caso detectada qualquer inconsistência nas informações, bloquear, suspender, interromper ou encerrar o cadastro do CLIENTE<br/><br/>Cabe integralmente ao CLIENTE a responsabilidade pela integridade e veracidade do cadastro, se comprometendo a partir de então, a manter seus dados sempre atualizados, sob pena de responder civil e criminalmente além de arcar com os danos ocasionados pela utilização de dados incorretos, ou de terceiros, independentemente da existência de culpa.<br/><br/>É de inteira esponsabilidade do CLIENTE manter o ambiente de seu computador, celular ou tablet seguro, com o uso de ferramentas disponíveis como antivírus e firewall, entre outras, de modo a contribuir na prevenção de riscos eletrônicos e, ainda, sempre utilizar-se de softwares atualizados e eficientes. A senha cadastrada pelo CLIENTE é de uso pessoal e intransferível, sendo o CLIENTE o único responsável em caso de utilização indevida por terceiros. A senha poderá ser alterada a qualquer momento pelo CLIENTE, através do  “esqueci minha senha”, na página de login e/ou nos “dados pessoais” em seu ambiente já logado.<br/><br/>O cadastro no Portal é gratuito, e o acesso ao site, para realização de compras será permitida exclusivamente para maiores de 18 (dezoito) anos. Quando o cadastro no Portal for de uma empresa, seu Representante deverá ser uma pessoa física maior de 18 anos.");
 		})

 </script>

