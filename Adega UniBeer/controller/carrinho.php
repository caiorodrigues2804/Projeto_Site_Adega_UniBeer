<h2>Este é meu carrinho de produtos</h2>

 <?php 

$sessao = $_SESSION['pedido'];
$ID = 1;

$_SESSION['PRO'][$ID]['ID'] = 1;

 $carrinho = new Carrinho();


 echo '<pre>';
 	var_dump($carrinho->GetCarrinho($sessao));	
 echo '</pre>';

