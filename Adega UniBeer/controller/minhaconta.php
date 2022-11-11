<?php 

// verifico se não está logado
if(!Login::logado()):

	Login::acessoNegado();
	Rotas::Redirecionar(2,Rotas::pag_ClienteLogin());

// caso esteja mostra a tela minha conta
else:



$smarty = new Template();

$pedidos= new Pedidos();
$pedidos->GetPedidosCliente(1);

$smarty->assign('PEDIDO',$pedidos->GetItens());


$smarty->display('minhaconta.tpl');

endif;