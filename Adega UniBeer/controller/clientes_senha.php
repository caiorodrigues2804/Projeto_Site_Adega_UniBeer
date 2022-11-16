<?php 

// objeto do template
$smarty = new Template();

// Chamo o menu de cliente logado
Login::MenuCliente();

// Chamo o template 
$smarty->display('clientes_senha.tpl');