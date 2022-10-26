<?php 
 
// objeto template
$smarty = new Template();

// objeto produtos
$produtos = new Produtos();

// método que pega o produtos pelo ID
$produtos->GetProdutosID(Rotas::$pag[1]);

// pego imagens extras do produto
// $image = new ProdutosImages();
// $image->GetImagesPRO(Rotas::$pag[1]);

// chamo o template
$smarty->assign('PRO',    $produtos->GetItens());
$smarty->assign('TEMA',   Rotas::Get_SiteTEMA());
// $smarty->assign('IMAGES', $image->GetItens());

$smarty->display('produtos_info.tpl');
 
 
