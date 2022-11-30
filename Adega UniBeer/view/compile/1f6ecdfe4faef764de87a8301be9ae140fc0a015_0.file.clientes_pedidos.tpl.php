<?php
/* Smarty version 3.1.46, created on 2022-11-30 16:52:17
  from '/home/u308103531/domains/caiorodriguesportfolios.com.br/public_html/projetoadegaunibeer/view/clientes_pedidos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_6387b471376c84_81408539',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1f6ecdfe4faef764de87a8301be9ae140fc0a015' => 
    array (
      0 => '/home/u308103531/domains/caiorodriguesportfolios.com.br/public_html/projetoadegaunibeer/view/clientes_pedidos.tpl',
      1 => 1669837933,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6387b471376c84_81408539 (Smarty_Internal_Template $_smarty_tpl) {
?><h2>Meus Pedidos</h2>


<section class="row" id="pedido">
	<h4 class="text-center">Meus Pedidos</h4>

	<center>	
	<table class="table table-bordered" style="width:90%;">

	<tr class="text-danger bg-danger">
 			<td>Data</td>
 			<td>Hora</td>
 			<td>Ref</td>
 			 			
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
			<td style="width: 10%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_hora'];?>
</td>
			<td style="width: 10%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_ref'];?>
</td>
			
		 

			<?php if ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'NAO') {?>
				<td style="width: 15%;"><span class="label label-danger"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
			<?php } else { ?>
				<td style="width: 15%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</td>
			<?php }?>

			<form name="itens" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_ITENS']->value;?>
">

				<input type="hidden" name="cod_pedido" id="cod_pedido" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['ped_ref'];?>
">
				<td style="width: 10%;"><button class="btn btn-default"><i class="glyphicon glyphicon-menu-hamburger"></i> Detalhes</button></td>

			</form>
		</tr>
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

	</table>			
	</center>

</section><?php }
}
