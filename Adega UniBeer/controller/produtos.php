<?php 

$smarty = new Template();

$produtos = new Produtos();

$produtos->GetProdutos();

$smarty->assign('PRO',$produtos->GetItens());
$smarty->assign('PRO_INFO',Rotas::pag_ProdutosInfo());

echo Rotas::get_ImageURL();

$smarty->display('produtos.tpl');


// print '<pre>';
// 	var_dump($produtos->GetItens());
// print '</pre>';