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

$ID = 1;
foreach($produtos->GetItens() as $pro):

	$_SESSION['PRO'][$ID]['ID'] = $pro['pro_id'];
	$_SESSION['PRO'][$ID]['NOME'] = $pro['pro_nome'];
	$_SESSION['PRO'][$ID]['VALOR'] = $pro['pro_valor'];
	$_SESSION['PRO'][$ID]['PESO'] = $pro['pro_peso'];
	$_SESSION['PRO'][$ID]['QTD'] = 1;
	$_SESSION['PRO'][$ID]['IMG'] = $pro['pro_img'];
	$_SESSION['PRO'][$ID]['IMG'] = 'sssslink';
	
$ID++;
endforeach;

$smarty->display('produtos_info.tpl');
 
 
