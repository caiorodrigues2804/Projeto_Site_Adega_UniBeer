<?php 

$smarty = new Template();

$produtos = new Produtos();


if (isset(Rotas::$pag[1])):
	$produtos->GetProdutosCate(Rotas::$pag[1]);
else:
	$produtos->GetProdutos();
endif;


$smarty->assign('PRO',$produtos->GetItens());
$smarty->assign('PRO_INFO',Rotas::pag_ProdutosInfo());
$smarty->assign('PRO_TOTAL',$produtos->TotalDados());

//echo Rotas::get_ImageURL();

$smarty->display('produtos.tpl');


// print '<pre>';
// 	var_dump($produtos->GetItens());
// print '</pre>';