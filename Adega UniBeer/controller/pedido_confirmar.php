 <?php 

// Verifico se não existe a sessão produtos

// caso exista mostro as informações
if (isset($_SESSION['PRO'])):

      $smarty = new Template();

      $carrinho = new Carrinho();

      $preco_total = $_GET['valor_total'];

      $smarty->assign('PRO',$carrinho->GetCarrinho());
      $smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());
      $smarty->assign('TOTAL',str_replace('.',',',substr($preco_total,0,5)));
      $smarty->assign('PAG_PRODUTOS',Rotas::pag_Produtos());
      $smarty->assign('PAG_CARRINHO',Rotas::pag_Carrinho());
      $smarty->assign('PAG_FINALIZAR',Rotas::pag_PedidoFinalizar() . '?preco=' . $_GET['preco'] . '&frete=' . $_GET['frete'] . '&valor_total=' . $_GET['valor_total']);
    //   $smarty->assign('PAG_FINALIZAR',Rotas::pag_PedidoFinalizar());
      $smarty->display('pedido_confirmar.tpl');

else:
   echo '<h4 class="alert alert-danger">Sem produtos no seu carrinho</h4>';
   Rotas::Redirecionar(1,Rotas::pag_Produtos());
 
endif;
 
