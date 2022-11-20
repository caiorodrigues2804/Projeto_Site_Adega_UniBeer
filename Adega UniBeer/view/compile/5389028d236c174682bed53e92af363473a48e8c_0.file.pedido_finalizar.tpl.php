<?php
/* Smarty version 3.1.46, created on 2022-11-20 00:35:25
  from 'C:\xampp\htdocs\Adega Unibeer\view\pedido_finalizar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_6379683d08ac15_68758180',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5389028d236c174682bed53e92af363473a48e8c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\pedido_finalizar.tpl',
      1 => 1668900913,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6379683d08ac15_68758180 (Smarty_Internal_Template $_smarty_tpl) {
?><h3 style="color: #008200;background-color: #5ce638;">Finalizar Pedido</h3>
 
<style type="text/css">
	#divs_r{
		overflow-y: scroll;
		height: 400px;
	}
</style>

<div class="alert alert-success">Pedido finalizado com sucesso </div>

<!--- table Listagem de Itens ---->
<section class="row">
	 
	<center>


	<table class="table table-bordered" style="width: 95%;">
	 

		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
$_smarty_tpl->tpl_vars['P']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
$_smarty_tpl->tpl_vars['P']->do_else = false;
?>

		<tr>
		<!---	<td> <img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
" width="100px" height="100px" alt="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
"> </td>-->
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</td>	
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_qtd'];?>
</td>	
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_subTotal'];?>
</td>			
		 	
		</tr>

		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

	</table>
	</center>


</section> <!---- Fim da listagem de itens --->

	<!------- botoes de baixo e valor total ---> 
	<section class="row">
		<div class="col-md-4 text-right">
	 
		</div>
		

	<!-------- Botão de limpar ----------->
		<div style="margin-left: 310px;" class="col-md-4 text-right text-danger">
 
			<h4><b>Valor total:</b> R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>
</h4>		
			<h4><b>Valor do frete:</b> R$ <?php echo $_smarty_tpl->tpl_vars['VALOR_FRETE']->value;?>
</h4>
			<hr/>
			<h4><b>Valor final:</b> R$ <?php echo $_smarty_tpl->tpl_vars['VALOR_FINAL']->value;?>
</h4>
	 
		</div>	 
	</section>

	<!---- Modo de pagamentos e outras informações --->
	<section class="row">
		<h3 class="text-center">Escolha uma forma de pagamento</h3>	
		<center>	
		<img width="30%" src="http://www.natsolutions.com.br/loja/img/cms/comprar-com-pagseguro-uol.png" alt="">
		</center>
	</section>
<?php }
}
