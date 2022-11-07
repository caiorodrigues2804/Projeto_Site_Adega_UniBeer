 <?php 

// Verifico se não existe a sessão produtos

// caso exista mostro as informações
if (isset($_SESSION['PRO'])):

      $smarty = new Template();

      $carrinho = new Carrinho();

      $smarty->assign('PRO',$carrinho->GetCarrinho());
      $smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());
      $smarty->assign('TOTAL',$carrinho->GetTotal());
      $smarty->assign('PAG_PRODUTOS',Rotas::pag_Produtos());
      $smarty->assign('PAG_CARRINHO',Rotas::pag_Carrinho());
      $smarty->assign('tema',Rotas::Get_SiteTema());

      // classe de pedidos -------------------
      $pedido = new Pedidos();

      $cliente = 1;
      $cod  = $_SESSION['pedido'];
      $ref  =  '333312345ffff';

      // gravo o pedido
      if($pedido->PedidoGravar($cliente, $cod, $ref)):

         // limpar a sessão do pedidio e dos itens do carrinho
         $pedido->LimparSessoes();

      endif;

      // $pedido->ItensGravar($cod);

      $smarty->display('pedido_finalizar.tpl');

else:
   echo '<h4 class="alert alert-danger">Sem produtos no seu carrinho</h4>';
   Rotas::Redirecionar(1,Rotas::pag_Produtos());
 
endif;
 
