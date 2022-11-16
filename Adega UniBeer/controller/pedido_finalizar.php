 <?php 

// verifico se não está logado
if(!Login::Logado()):

   Login::AcessoNegacao();
   Rotas::Redirecionar(2, Rotas::pag_ClienteLogin());

   // caso esteja Logado finaliza a compra
   else:


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
      // verifico se tem a sessão de pedido
      if(!isset($_SESSION['PED']['pedido'])):

         $_SESSION['PED']['pedido'] = md5(uniqid(date('YmdHis'))); // 20221106205500
      endif;
      // verifico se não tem a referência, e gero uma nova
      if(!isset($_SESSION['PED']['ref'])):

         $_SESSION['PED']['ref'] = date('ymdHis') . $_SESSION['CLI']['cli_id']; // 2211152002
      endif;


      $pedido = new Pedidos();

      $cliente = $_SESSION['CLI']['cli_id'];
      $cod  = $_SESSION['PED']['pedido'];
      $ref  = $_SESSION['PED']['ref'];

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

//fim da verificação de Logado ou não 
endif;