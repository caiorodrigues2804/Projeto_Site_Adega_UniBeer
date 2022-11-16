<?php
/* Smarty version 3.1.46, created on 2022-11-16 01:17:33
  from 'C:\xampp\htdocs\Adega Unibeer\view\menu_cliente.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_63742c1d986d66_96757831',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9edad5798537194627c399e6798253bec20a1be1' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\menu_cliente.tpl',
      1 => 1668557852,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63742c1d986d66_96757831 (Smarty_Internal_Template $_smarty_tpl) {
?><h4 class="text-center text-danger">Olá <b><?php echo $_smarty_tpl->tpl_vars['USER']->value;?>
</b>, seja bem vindo! O que deseja fazer agora?</h4>
<section class="row">
		
		<div class="text-center">
			
			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CONTA']->value;?>
" class="btn btn-cssc"><i class="glyphicon glyphicon-home"></i> Minha Conta</a>

			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CLIENTE_PEDIDOS']->value;?>
" class="btn btn-cssc"><i class="glyphicon glyphicon-barcode"></i> Pedidos</a>

			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CLIENTE_DADOS']->value;?>
" class="btn btn-cssc"><i class="glyphicon glyphicon-edit"></i> Meus Dados</a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO']->value;?>
" class="btn btn-cssc"><i class="glyphicon glyphicon-shopping-cart"></i> Carrinho</a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CLIENTE_SENHA']->value;?>
" class="btn btn-cssc"><i class="glyphicon glyphicon-exclamation-sign"></i> Senha</a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_LOGOFF']->value;?>
" class="btn btn-danger"><i class="glyphicon glyphicon-log-out"></i> Sair da conta</a>
						

		</div>

</section>
<hr/><?php }
}
