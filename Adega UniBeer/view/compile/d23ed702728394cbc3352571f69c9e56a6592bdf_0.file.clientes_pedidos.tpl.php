<?php
/* Smarty version 3.1.46, created on 2022-11-16 01:21:34
  from 'C:\xampp\htdocs\Adega Unibeer\view\clientes_pedidos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_63742d0ed34180_14351017',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd23ed702728394cbc3352571f69c9e56a6592bdf' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\clientes_pedidos.tpl',
      1 => 1668558094,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63742d0ed34180_14351017 (Smarty_Internal_Template $_smarty_tpl) {
?><h2>Meus Pedidos</h2>


<section class="row" id="pedido">
	<h4 class="text-center">Meus Pedidos</h4>

	<center>	
	<table class="table table-bordered" style="width:90%;">

	<tr class="text-danger bg-danger">
 			<td>Data</td>
 			<td>Ref</td>
 			<td></td>
 			<td></td>
 			<td>Status</td>
 			<td></td>
 	</tr>

	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PEDIDOS']->value, 'P');
$_smarty_tpl->tpl_vars['P']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
$_smarty_tpl->tpl_vars['P']->do_else = false;
?> 	
		<tr>
			<td style="width: 10%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_data'];?>
</td>
			<td style="width: 10%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_ref'];?>
</td>
			<td></td>
			<td></td>
			<td style="width: 15%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</td>
			<td style="width: 10%;"><button class="btn btn-default"><i class="glyphicon glyphicon-menu-hamburger"></i> Detalhes</button></td>
		</tr>
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

	</table>			
	</center>

</section><?php }
}
