<?php 
// carrega o auto load
require './lib/autoload.php';

// Chamo a classe do template
$smarty = new Template();
// Trago os dados da categorias
$categorias = new Categorias();
$categorias->GetCategorias();

// Passo valores  para o meu template
$smarty->assign('H2', 'Adega Unibeer');
$smarty->assign('GET_TEMA', Rotas::get_SiteTEMA());
$smarty->assign('SITE_NOME', Config::SITE_NOME);

$smarty->assign('GET_SITE_HOME', Rotas::get_SiteHOME());
$smarty->assign('PAG_CLIENTE_CONTA', Rotas::pag_ClienteConta());
$smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
$smarty->assign('PAG_CONTATO', Rotas::pag_Contato());
$smarty->assign('PAG_PRODUTOS', Rotas::pag_Produtos());
$smarty->assign('CATEGORIAS', $categorias->GetItens());
$smarty->assign('DATA', Sistema::DataAtualBR());

// $dados = new Conexao();
// $dados->ExecuteSQL("select * from clientes");
// echo $dados->totalDados();



// chamo o template
$smarty->display('index.tpl');

 