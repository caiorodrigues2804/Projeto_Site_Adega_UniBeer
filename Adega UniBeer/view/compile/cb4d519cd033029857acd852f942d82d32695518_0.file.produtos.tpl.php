<?php
/* Smarty version 3.1.46, created on 2022-10-27 22:06:02
  from 'C:\xampp\htdocs\Adega Unibeer\view\produtos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_635ae4aad27af9_04232956',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb4d519cd033029857acd852f942d82d32695518' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\produtos.tpl',
      1 => 1666901161,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_635ae4aad27af9_04232956 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2>Lista de Produtos</h2>
<hr/>
 <?php echo '<script'; ?>
 type="text/javascript">
 	let dado = document.location.href;
   	// document.write(dado.substr(45, 46))
 	let dados = dado.substr(45, 46);
	
 	document.write('<h4>')
	 if (dados == 'ervejas') {
	 	dados = 'Categoria: Cerveja'
 		document.write(dados)
	 }	 if (dados == 'nergeticos') {
	 	dados = 'Categoria: Energetico'
 		document.write(dados)
	 }	 if (dados == 'efrigerantes') {
	 	dados = 'Categoria: Refrigerantes'
 		document.write(dados)
	 }	 if (dados == 'ucos') {
	 	dados = 'Categoria: Sucos'
 		document.write(dados)
	 } if (dados == 'abacos'){
	 	dados = 'Categoria: Tabacos'
 		document.write(dados)
	 } if (dados == 'C3%81guas%20t%C3%B4nicas') {
	 	dados = 'Categoria: Águas Tônicas'
	 	document.write(dados)
	 } if (dados == 'hiskys') {
	 	dados = 'Categoria: Whiskys'
	 	document.write(dados)
	 } if (dados == 'arguiles') {
	 	dados = 'Categoria: Narguiles'
	 	document.write(dados)
	 } if (dados == 'Doces') {
	 	dados = 'Categoria: Doces'
	 	document.write(dados)
	 } if (dados == 'Vinhos') {
	 	dados = 'Categoria: Vinhos'
	 	document.write(dados)
	 } if (dados == 'Combos') {
	 	dados = 'Categoria: Combos'
	 	document.write(dados)
	 }
	 document.write('</h4>')
	 	
 <?php echo '</script'; ?>
>     
<section id="produtos" class="row">
<?php if ($_smarty_tpl->tpl_vars['PRO_TOTAL']->value < 1) {?>
<h4 class="alert alert-danger">Nenhum produto foi encontrado</h4>
<?php }?>

<ul style="list-style:none;">
<br/>
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
$_smarty_tpl->tpl_vars['P']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
$_smarty_tpl->tpl_vars['P']->do_else = false;
?>

	<li class="col-md-4">
		<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>


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

</ul>
</section>

<section id="paginacao" class="row">
<center>
	<?php echo $_smarty_tpl->tpl_vars['PAGINAS']->value;?>

</center>
</section><?php }
}
