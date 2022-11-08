<?php
/* Smarty version 3.1.46, created on 2022-11-07 00:59:03
  from 'C:\xampp\htdocs\Adega Unibeer\view\carrinho.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_63684a47057759_20980465',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3aeb9e72ffbeb23c1434e225b27e75d3065487fc' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\carrinho.tpl',
      1 => 1667779142,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63684a47057759_20980465 (Smarty_Internal_Template $_smarty_tpl) {
?><h3>Meu Carrinho</h3>
<hr/>
<style type="text/css">
	#divs_r{
		overflow-y: scroll;
	 		height: 400px;
	}
</style>

<!--- Botões e opções de cima ---> 
<section class="row">

	<div class="col-md-4 text-right">
		<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_PRODUTOS']->value;?>
" class="btn btn-cssc" title="">Comprar Mais</a>	
	</div>
	<div class="col-md-4 text-right">
		<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CONFIRMAR']->value;?>
" class="btn btn-cssc" title="">Finalizar</a>
	</div>
	<div class="col-md-4">
		
	</div>

</section>
<br/>
 
<!--- table Listagem de Itens ---->
<section class="row">
	<div id="divs_r">	
	<center>
	<table class="table table-bordered" style="width: 95%;">
		<tr class="text-danger bg-danger" id="ds_W">
			<td></td>
			<td>Produto</td>
			<td>Valor R$</td>
			<td>X</td>
			<td>Sub Total R$</td>
			<td></td>
		</tr>

		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
$_smarty_tpl->tpl_vars['P']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
$_smarty_tpl->tpl_vars['P']->do_else = false;
?>

		<tr>
			<td> <img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
" width="100px" height="100px" alt="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
"> </td>
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</td>	
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_qtd'];?>
</td>	
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_subTotal'];?>
</td>			
			<td>
	<form name="carrinho_dell" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO_ALTERAR']->value;?>
">
		<input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">
		<input type="hidden" name="acao" value="del">
		
		<button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
	</form>				
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
		<div class="col-md-4 text-right text-danger">
		<h4>
			Valor total: R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>

		</h4>
		</div>

	<!-------- Botão de limpar ----------->
		<div class="col-md-4 text-right">
	 			<form name="limpar" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO_ALTERAR']->value;?>
">
	 			<input type="hidden" name="acao" value="limpar">
	 			<input type="hidden" name="pro_id" value="1">

				<button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"> Limpar Tudo</i></button>	
	 			</form>
		</div>	 
	</section>
<?php }
}