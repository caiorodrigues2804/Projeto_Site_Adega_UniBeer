 <?php 

$smarty = new Template();

$sessao = $_SESSION['pedido'];
 
$carrinho = new Carrinho();

$smarty->assign('PRO',$carrinho->GetCarrinho());
$smarty->assign('TOTAL',$carrinho->GetTotal());


$smarty->display('carrinho.tpl');

 echo '<pre>';
    var_dump($_SESSION['PRO']); 
 echo '</pre>';
