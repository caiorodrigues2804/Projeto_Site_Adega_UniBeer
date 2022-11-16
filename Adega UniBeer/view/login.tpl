<h3>Login</h3>
<hr>
 
{if $LOGADO == true}
 
{else}

<section class="row" id="fazerlogin">
	
	<form name="cliente_login" method="post" action="">

	<div class="col-md-4">
	
	</div>

	<!-- aqui estão os campos -->
	<div id="ds_ss" class="col-md-4">
	<img src="http://localhost/Adega%20Unibeer/unibeerlogo.png" width="100%">
	<hr/> 
	<div class="form-group">
		<label>E-mail:</label>
		<input type="email" class="form-control" name="txt_email" value="" placeholder="Digite seu email" required>

	</div>

	<div class="form-group">
		<label>Senha:</label>
	 	<input type="password" class="form-control" name="txt_senha" value="" placeholder="Digite sua senha" required>

	 </div>

	 <div class="form-group">

	<button class="btn btn-success btn-block btn-lg"><i class="glyphicon glyphicon-log-in"></i>  &nbsp; Entrar</button>


	<a href="{$PAG_CADASTRO}" class="btn btn-cssc btn-block"><i class="glyphicon glyphicon-pencil"></i> &nbsp; Cadastrar</a>
	<a href="{$PAG_RECOVERY}" class="btn btn-cssc btn-block"><i class="glyphicon glyphicon-question-sign"></i> &nbsp; Esqueci a Senha</a>


	 </div>

	</div> <!--- fim dos campos ---->

	<div class="col-md-4">

	
	</div>

	</form>

</section>

{/if}