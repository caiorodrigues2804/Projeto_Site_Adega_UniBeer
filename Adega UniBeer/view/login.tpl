<h3>Login</h3>
<hr>
 
{if $LOGADO == true}

	<section class="row" id="estalogado">

		<h4 class="text-center text-danger">Olá <b>{$USER}</b>, seja bem vindo! O que deseja fazer agora?</h4>

		<div class="col-md-4"></div>
		<div class="col-md-4">

		<a href="#" class="btn btn-default btn-block">Área do cliente</a>
		<a href="#" class="btn btn-default btn-block">Carrinho</a>
		<a href="{$PAG_LOGOFF}" class="btn btn-danger btn-block">Sair da conta</a>
			
		</div>
		<div class="col-md-4"></div>

	</section>	

{else}

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

{/if}