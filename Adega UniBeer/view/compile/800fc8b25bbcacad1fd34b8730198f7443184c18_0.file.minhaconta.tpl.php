<?php
/* Smarty version 3.1.46, created on 2022-11-09 20:38:53
  from 'C:\xampp\htdocs\Adega Unibeer\view\minhaconta.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_636c01cdda9e11_46304892',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '800fc8b25bbcacad1fd34b8730198f7443184c18' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\minhaconta.tpl',
      1 => 1668022720,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_636c01cdda9e11_46304892 (Smarty_Internal_Template $_smarty_tpl) {
?><h2>Minha Conta</h2>
<hr/>

<section class="row" id="contabotoes">	

	<ul class="nav nav-pills pull-right">
		<li> <a href="" class="btn btn-default">Meus Pedidos</a></li>
		<li> <a href="" class="btn btn-default">Meus dados</a></li>
		<li> <a href="" class="btn btn-default">Minha Senha</a></li>	
	</ul>

</section>

<section class="row" id="pedido">
 
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PEDIDO']->value, 'P');
$_smarty_tpl->tpl_vars['P']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
$_smarty_tpl->tpl_vars['P']->do_else = false;
?>

	<table class="table table-bordered">
		<tr>
			<td><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_data'];?>
</td>
			<td></td>
			<td></td>
			<td> /td>
			<td></td>
		</tr>
		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</table>


</section><?php }
}
