<?php 

require './lib/autoload.php';

$smarty = new Template();

$smarty->assign('H2', 'Adega Unibeer');
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('SITE_NOME', Config::SITE_NOME);

$smarty->assign('GET_SITE_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_CLIENTE_CONTA', Rotas::pag_ClienteConta());
$smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
$smarty->assign('PAG_CONTATO', Rotas::pag_Contato());

// $dados = new Conexao();

// $dados->ExecuteSQL("select * from clientes");

// echo $dados->totalDados();

 

$smarty->display('index.tpl');

 