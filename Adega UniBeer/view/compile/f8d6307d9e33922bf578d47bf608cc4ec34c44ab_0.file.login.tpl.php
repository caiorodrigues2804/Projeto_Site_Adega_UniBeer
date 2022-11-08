<?php
/* Smarty version 3.1.46, created on 2022-11-08 20:44:16
  from 'C:\xampp\htdocs\Adega Unibeer\view\login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_636ab190c8ac13_92406855',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f8d6307d9e33922bf578d47bf608cc4ec34c44ab' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\login.tpl',
      1 => 1667936644,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_636ab190c8ac13_92406855 (Smarty_Internal_Template $_smarty_tpl) {
?><h3>Login</h3>
<hr>

<?php if ($_smarty_tpl->tpl_vars['LOGADO']->value == true) {?>

	
	<section class="row" id="estalogado">
		
		<h4 class="text-center text-danger">Olá <b><?php echo $_smarty_tpl->tpl_vars['USER']->value;?>
</b>, seja bem vindo! O que deseja fazer agora?</h4>

		<div class="col-md-4"></div>

		<div class="col-md-4">
		
			<a href="#" class="btn btn-default btn-block">Área do cliente</a>
			<a href="#" class="btn btn-default btn-block">Carrinho</a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['PAG_LOGOFF']->value;?>
" class="btn btn-danger btn-block">Desconectar da conta</a>
		 
		</div>				
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>

	</section>


<?php } else { ?>

<section class="row" id="fazerlogin">
	
	<form name="cliente_login" method="post" action="">

	<div class="col-md-4"></div>

	<!-- aqui estão os campos -->
	<div id="ds_ss" class="col-md-4">
	<img src="http://localhost/Adega%20Unibeer/unibeerlogo.png" width="100%">
	<hr/> 
	<div class="form-group">
		<label>E-mail:</label>
		<input type="email" class="form-control input-lg" name="txt_email" value="" placeholder="Digite seu email" required>

	</div>

	<div class="form-group">
		<label>Senha:</label>
	 	<input type="password" class="form-control input-lg" name="txt_senha" value="" placeholder="Digite sua senha" required>

	 </div>

	 <div class="form-group">

	<button class="btn btn-success btn-block btn-lg"><i class="glyphicon glyphicon-log-in"></i> Entrar</button>

	 </div>

	</div> <!--- fim dos campos ---->

	<div class="col-md-4"></div>

	</form>

</section>

	<?php }
}
}
