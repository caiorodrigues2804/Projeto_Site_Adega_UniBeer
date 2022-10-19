<?php
/* Smarty version 3.1.46, created on 2022-10-19 22:44:45
  from 'C:\xampp\htdocs\Adega Unibeer\view\produtos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_635061bd0ec908_82578958',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb4d519cd033029857acd852f942d82d32695518' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\produtos.tpl',
      1 => 1666212284,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_635061bd0ec908_82578958 (Smarty_Internal_Template $_smarty_tpl) {
?><h2>Lista de Produtos</h2>
<hr/>

<?php if ($_smarty_tpl->tpl_vars['PRO_TOTAL']->value < 1) {?>
<h4 class="alert alert-danger">Nenhum produto foi encontrado</h4>
<?php }?>

<ul style="list-style:none;">

	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
$_smarty_tpl->tpl_vars['P']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
$_smarty_tpl->tpl_vars['P']->do_else = false;
?>

	<li class="col-md-4">

		<div class="thumbnail">
		<a href="<?php echo $_smarty_tpl->tpl_vars['PRO_INFO']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
/<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_slug'];?>
">
	
			<img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
" style="width: 230;height: 230px;" alt="">

			<div class="caption">

				<h4 class="text-center"><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
</h4>

			<h3 class="text-center text-danger">R$ <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</h3>

		 		

			</div>

			</a>

		</div>

	</li>

	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</ul><?php }
}
