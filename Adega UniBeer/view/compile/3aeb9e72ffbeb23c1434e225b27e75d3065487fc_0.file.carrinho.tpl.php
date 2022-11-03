<?php
/* Smarty version 3.1.46, created on 2022-11-03 21:15:13
  from 'C:\xampp\htdocs\Adega Unibeer\view\carrinho.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_6364215191cb74_03822557',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3aeb9e72ffbeb23c1434e225b27e75d3065487fc' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\carrinho.tpl',
      1 => 1667506511,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6364215191cb74_03822557 (Smarty_Internal_Template $_smarty_tpl) {
?><h2>Carrinho de produtos</h2>
<hr/>

<section class="row">
	<center>
	<table class="table table-bordered" style="width: 95%;">
		<tr class="text-danger bg-danger">
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
	<form>
		<button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
	</form>				
			</td>
		</tr>

		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

	</table>
	</center>

</section>
	<section class="row">
		<div class="col-md-4 text-right">
		 
		</div>
		<div class="col-md-4 text-right">
	 
		</div>
		<div class="col-md-4 text-right text-danger">
		<h4>
			Valor total: R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>

		</h4>
		</div>
	</section><?php }
}
