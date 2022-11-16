<?php 


// Objeto do template
$smarty = new Template();

// Objeto da classe pedidos
$pedidos = new Pedidos();

// Trazer os pedidos
$pedidos->GetPedidoCliente(1);

$smarty->assign('PEDIDOS',$pedidos->GetItens());

Login::MenuCliente();
 
$smarty->display('clientes_pedidos.tpl');

