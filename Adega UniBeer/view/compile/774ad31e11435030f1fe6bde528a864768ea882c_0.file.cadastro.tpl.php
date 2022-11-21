<?php
/* Smarty version 3.1.46, created on 2022-11-21 01:52:00
  from 'C:\xampp\htdocs\Adega Unibeer\view\cadastro.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.46',
  'unifunc' => 'content_637acbb02a25f8_85991952',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '774ad31e11435030f1fe6bde528a864768ea882c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Adega Unibeer\\view\\cadastro.tpl',
      1 => 1668991918,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_637acbb02a25f8_85991952 (Smarty_Internal_Template $_smarty_tpl) {
?><h3>Cadastro de cliente</h3>

<hr/>

<!------ dados do cadastro ---->
<section class="row" id="cadastro">

	<form name="cadcliente" id="cadcliente" method="post" action="">
		
		<!-- NOME -->
		<div class="col-md-4">
			
			<label>Nome:</label>
			<input type="text" name="cli_nome"  class="form-control" required>

		</div>

		<!-- SOBRENOME -->
		<div class="col-md-4">
			
			<label>Sobrenome:</label>
			<input type="text" name="cli_sobrenome"  class="form-control" required>

		</div>

		<!-- DATA DE NASCIMENTO -->
		<div class="col-md-3">
			
			<label>Data Nasc:</label>
			<input type="date" name="cli_data_nasc"  class="form-control" required>

		</div>

		<!-- RG -->
		<div class="col-md-2">
			
			<label>RG:</label>
			<input type="text" name="cli_rg"  class="form-control" required>

		</div>

		<!-- CPF -->
		<div class="col-md-2">
			
			<label>CPF:</label>
			<input type="text" name="cli_cpf"  class="form-control" required>

		</div>

		<!-- DDD -->
		<div class="col-md-2">
			
			<label>DDD:</label>
			<input type="number" name="cli_ddd"  class="form-control" required>

		</div>

		<!-- FONE -->
		<div class="col-md-3">
			
			<label>Fone:</label>
			<input type="number" name="cli_fone"  class="form-control" required>

		</div>

		<!-- CELULAR -->
		<div class="col-md-3">
			
			<label>Celular:</label>
			<input type="number" name="cli_celular"  class="form-control" required>

		</div>
		
		
		<!-- ENDEREÇO -->
		<div class="col-md-6">
			
			<label>Endereço:</label>
			<input type="text" name="cli_endereco"  class="form-control" required>

		</div>

		<!-- NÚMERO -->
		<div class="col-md-2">
			
			<label>Número:</label>
			<input type="text" name="cli_numero"  class="form-control" required>

		</div>


		<!-- BAIRRO -->
		<div class="col-md-4">
			
			<label>Bairro:</label>
			<input type="text" name="cli_bairro"  class="form-control" required>

		</div>

		<!-- CIDADE -->
		<div class="col-md-4">
			
			<label>Cidade:</label>
			<input type="text" name="cli_cidade"  class="form-control" required>

		</div>
		
		<!-- UF -->
		<div class="col-md-2">
			
			<label>UF:</label>
			<input type="text" name="cli_uf"  class="form-control" required>

		</div>

			<!-- CEP -->
		<div class="col-md-2">
			
			<label>CEP:</label>
			<input type="number" name="cli_cep"  class="form-control" required>

		</div>

		<!-- EMAIL -->
		<div class="col-md-4">
			
			<label>Email:</label>
			<input type="email" name="cli_email"  class="form-control" required>

		</div>



	
</section>
<br/>
<br/>
<center>
<label>Sou maior de 18 anos e concordo com os termos de uso <input type="radio" name="termo" id="termo"></label>
</center>
<br/>
<section class="row" id="btngravar">
	<div class="col-md-4"></div>
	<div class="col-md-4">

		
		<button style="display: none;" id="btns-confirmacao" type="submit" class="btn btn-cssc btn-block">Cadastrar <i class="glyphicon glyphicon-ok"></i> </button>
		
	</div>
	<div class="col-md-4"></div>

</section>
	</form>
	<?php echo '<script'; ?>
>

		setInterval(() => {
			if(document.querySelector('#termo').checked == true){
				document.querySelector('#btns-confirmacao').style.display = 'inline-block';
			}
		})
		
	<?php echo '</script'; ?>
>
<?php }
}
