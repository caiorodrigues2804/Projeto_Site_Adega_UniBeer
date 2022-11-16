<script>
$(document).ready(function(){    

        
   // validar frete
     $('#buscar_frete').click(function(){  
        
      var CEP_CLIENTE = $('#cep_frete').val();
      var PESO_FRETE = $('#peso_frete').val();
       
        if (CEP_CLIENTE.length !== 8 ) {
        alert('Digite seu CEP corretamente, 8 dígitos e sem traço ou ponto');  
         $('#frete').addClass(' text-center text-danger');
         $('#frete').html('<b>Digite seu CEP corretamente, 8 dígitos e sem traço ou ponto</b>');
        $('#cep_frete').focus();
        } else {
            
        
       
        $('#frete').html('<img src="imagens/loader.gif"> <b>Carregando...</b>');
        $('#frete').addClass(' text-center text-danger');
      
        // carrego o combo com os bairros
       
        $('#frete').load('controller/frete.php?cepcliente='+CEP_CLIENTE+'&pesofrete='+PESO_FRETE);
 
 } // fim do IF digitei o CEP
      
 
    }); // fim do change
    
   
} ); // fim do ready

</script>
<h3>Meu Carrinho</h3>
<hr/>
<style type="text/css">
	#divs_r{
		overflow-y: scroll;
	 		height: 400px;
	}
</style>

<!--- Botões e opções de cima ---> 
<section class="row">

	<div class="col-md-4" style="margin-left:10px;">
		<a href="{$PAG_PRODUTOS}" class="btn btn-cssc" title="">Comprar Mais</a>	
	</div>

	<div class="col-md-4 text-right"></div>

	<div class="col-md-4"></div>

</section>
<br/>
 
<!--- table Listagem de Itens ---->
<section class="row">
	<div id="divs_r">	
	<center>
	<table  class="table table-bordered" style="width: 95%;">
		<tr class="text-danger bg-danger" id="ds_W">
			<td></td>
			<td>Produto</td>
			<td>Valor R$</td>
			<td>X</td>
			<td>Sub Total R$</td>
			<td></td>
		</tr>

		{foreach from=$PRO item=P}

		<tr>
			<td> <img src="{$P.pro_img}" width="100px" height="100px" alt="{$P.pro_nome}"> </td>
			<td>{$P.pro_nome}</td>
			<td>{$P.pro_valor}</td>	
			<td>{$P.pro_qtd}</td>	
			<td>{$P.pro_subTotal}</td>			
			<td>
	<form name="carrinho_dell" method="post" action="{$PAG_CARRINHO_ALTERAR}">
		<input type="hidden" name="pro_id" value="{$P.pro_id}">
		<input type="hidden" name="acao" value="del">
		
		<button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
	</form>				
			</td>
		</tr>

		{/foreach}

	</table>
	</center>

</section> <!---- Fim da listagem de itens --->

	<!------- botoes de baixo e valor total ---> 
	<section class="row">
		<div class="col-md-4 text-right">
	 
		</div>
		<div class="col-md-4 text-right text-danger">
		<h4>
			Valor total: R$ {$TOTAL}
		</h4>
		</div>

	<!-------- Botão de limpar ----------->
		<div class="col-md-4 text-right">
	 			<form name="limpar" method="post" action="{$PAG_CARRINHO_ALTERAR}">
	 			<input type="hidden" name="acao" value="limpar">
	 			<input type="hidden" name="pro_id" value="1">

				<button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"> Limpar Tudo</i></button>	
	 			</form>
		</div>	 
	</section>

	<!--------- bloco frete --------->
	<section class="row" id="dadosfrete">

		<!-- Campos para tratar do frete -->
		<div class="col-md-3">
			<input type="text" name="cep_frete" class="form-control" id="cep_frete" value="" placeholder="Digite seu CEP">
			<input type="hidden" name="peso_frete" id="peso_frete" value="{$PESO}">

			<input type="hidden" name="frete_valor" id="frete_valor" value="0">


		</div>

		<div class="col-md-3">
			<!-- Botão Frete -->
			<button class="btn btn-cssc" id="buscar_frete">Calcular Frete</button>
		</div>
					
	</section>
	<br/>

	<!------- bloco confirmar --------->
	<section class="row" id="confirmarpedido">

		<div class="col-md-4"></div>

	 <div class="col-md-4">
		
		<form name="pedido_finalizar" id="pedido_finalizar" method="post" action="{$PAG_CONFIRMAR}">
				
				<!-------- Mostrar retorno do frete ------>
				<span id="frete"></span>

				<!--------------   Botão finalizar -------------->
				<button class="btn btn-cssc btn-block" type="submit">Confirmar Pedido</button>

		</form>
	
	</div>

		<div class="col-md-4"></div>
	</section>
	<br/>