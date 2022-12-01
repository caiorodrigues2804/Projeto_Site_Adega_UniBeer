<?php 

// chamar objeto do template
$smarty = new Template();

// Verifico se esta logado
Login::MenuCliente();

if(!isset($_POST['cod_pedido'])):

	Rotas::Redirecionar(1,Rotas::pag_ClientePedidos());

	exit();
endif;

// Chamo a classe de itens
$itens = new Itens();
// pego via post o cod pedido
$pedido = filter_var($_POST['cod_pedido'], FILTER_SANITIZE_STRING);

// executo a minha SQL
$itens->GetItensPedido($pedido);

// Passando dados para o template
$smarty->assign('ITENS',$itens->GetItens());
$smarty->assign('TOTAL',$itens->GetTotal());
$smarty->assign('VALOR_DS',$_POST["cod_pedido"]);


$smarty->display('clientes_itens.tpl');
 

$conexoes = mysqli_connect("localhost","root","","miniloja2017");

$consulta = mysqli_query($conexoes,"SELECT `ped_pag_status` FROM `as_pedidos` WHERE `ped_cod` = '$_POST[cod_pedido]'");
$dados_s = mysqli_fetch_assoc($consulta);
$dados_s = $dados_s["ped_pag_status"];
 
if($dados_s == 'SIM'){
		echo '<center><h4>Pagamento foi efetivado com sucesso</h4></center>';
} else {	
	echo '
	<form id="forms" method="post" action="">
	 <center>
	  <input class="btn btn-success btn-lg" type="submit" value="Fazer o pagamento"/>
	 </center>
	 </form>

	 <script>
	 let cod_ped = document.querySelector("#value_form").value;

	 document.querySelector("#forms").action = "update_pedidos?cod_ped=" + cod_ped;
	 </script>
	 ';
}


// echo '<pre>';
// var_dump($itens->GetItens());
// echo '</pre>';