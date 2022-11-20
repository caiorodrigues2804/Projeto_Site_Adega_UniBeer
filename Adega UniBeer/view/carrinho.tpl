<script>

let ds = 0; 
console.log(ds)
$(document).ready(function(){    

        
   // validar frete
     $('#buscar_frete').click(function(){  
      var CEP_CLIENTE = $('#cep_frete').val();
      var PESO_FRETE = $('#peso_frete').val();
    	var Vl_Total = $('#produtos_valores').val();
    	 

        if (CEP_CLIENTE.length !== 8 ) {  
     		       	  
        $('#frete').addClass(' text-center text-danger');
        $('#frete').html('<b>Digite seu CEP corretamente, 8 dígitos e sem traço ou ponto</b>');
        $('#cep_frete').focus();
         
        } else {
            
        
       
        $('#frete').html('<center><img src="http://granjasaojorge.com.br/img/loading1.gif" width="10%"> <b>Carregando ... </b></center>');
        $('#frete').addClass(' text-center text-danger');
      
        // carrego o combo com os bairros
       
        $('#frete').load('controller/frete.php?cepcliente='+CEP_CLIENTE+'&pesofrete='+PESO_FRETE+'&ValorDeclarado='+ Vl_Total);
  
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
	<br/>
	<!------- botoes de baixo e valor total ---> 
	<section class="row">
		<div class="col-md-4 text-right">
	 
		</div>
		<div class="col-md-0 text-right text-danger">
		<h4 id="valores">
			<b>Valor total:</b> R$ {$TOTAL}
		</h4>
		</div>
		<br/>
	<!-------- Botão de limpar ----------->
		<div class="col-md-15 text-right">
	 			<form name="limpar" method="post" action="{$PAG_CARRINHO_ALTERAR}">
	 			<input type="hidden" name="acao" value="limpar">
	 			<input type="hidden" name="pro_id" value="1">

				<button class="btn btn-danger btn-sm" ><i class="glyphicon glyphicon-trash"></i> Limpar Tudo</button>	
	 			</form>
		</div>	 
	
	</section>
	<br/>
	<!--------- bloco frete --------->

	<!-- Alerta -->
		<h4 id="frete_letra" class="alert alert-danger"><i class="glyphicon glyphicon-warning-sign"></i> Calcule o frente para prosseguir com os pedidos</h4>

	<section class="row" id="dadosfrete">
<br/>
		<!-- Campos para tratar do frete -->
		<div class="col-md-3">
			<input type="text" name="cep_frete" class="form-control" id="cep_frete" value="" placeholder="Digite seu CEP">
			<input type="hidden" name="peso_frete" id="peso_frete" value="{$PESO}">

			<input type="hidden" name="produtos_valores" class="form-control" id="produtos_valores" value="{$TOTAL}">

			<input type="hidden" name="frete_valor" id="frete_valor" value="0">


		</div>

		<div class="col-md-3">
			<!-- Botão Frete -->

			<button class="btn btn-default" id="buscar_frete">Clique aqui para calcular o Frete 🚚</button>
  
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
				<br/>

				<button id="confirmar_pedidos" style="display:none" class="btn btn-cssc btn-block" type="submit">Confirmar Pedido</button>

		</form>
	
	</div>

		<div class="col-md-4"></div>
	</section>
	<br/>	
	<script>

		let strings;
		strings = `{$TOTAL}`;
		strings = strings.replace(',','.');
		strings = parseFloat(strings);

let dw,dw_s,x;
dw = document.querySelector('#frete_letra');
dw_s = document.querySelector('#confirmar_pedidos');
x = 0;		 

 
	document.querySelector('#cep_frete').value = ((localStorage.CEP || '') ? localStorage.CEP : '');
 

document.querySelector('#buscar_frete').onclick = () => {	 	

dw.style.display = 'none';
let limitador = 0;
let limitadores = 0;

if(x < 1){
	x += 1;
	document.querySelector('#buscar_frete').className = 'btn btn-success'
	document.querySelector('#buscar_frete').innerText = 'Clique aqui para digitar o CEP novamente';
	// document.querySelector('#buscar_frete').style.marginLeft = -250 + 'px';
	document.querySelector('#cep_frete').disabled = true;
	localStorage.CEP = document.querySelector('#cep_frete').value;
	// console.log(x)
		setTimeout(() => {


		// DEBUGGING

		let valor_sx_in,valor_pac_in;

		// SEDEX
		valor_sx_in = document.querySelector('#sedex_valor').value;
		valor_sx_in = valor_sx_in.replace(',','.');
		valor_sx_in = parseFloat(valor_sx_in); 	 
	 	// console.log('SEDEX: ',valor_sx_in,typeof valor_sx_in);

	 	// PAC
		valor_pac_in = document.querySelector('#pac_valor').value;
		valor_pac_in = valor_pac_in.replace(',','.');
		valor_pac_in = parseFloat(valor_pac_in); 	

	  // console.log('PAC: ',valor_pac_in,typeof valor_pac_in);
	 	
  
			setInterval(() => {
				 if(document.querySelector('#sedex').checked == true){

					dw_s.style.display = 'inline-block';
				 	let string_d,vl_s_01;
					string_d = (valor_sx_in + strings);			 
					string_d = string_d + '';			
				  string_d = string_d.slice(0,5);
					string_d = string_d.replace(".",",");

				 	// 
				 	vl_s_01 = (valor_sx_in + '');
				 	vl_s_01 = vl_s_01.replace('.',',')

				 	 	document.getElementById('valores').innerHTML = '<b>Valor Total:</b> R$ {$TOTAL} <br/> <b>Valor do Frete:</b> R$ ' + vl_s_01 + ' <hr/> <b>Valor final:</b> R$ ' + string_d;
				 	if (limitador <= 0) {
					limitador += 1;
					document.getElementById('pedido_finalizar').action += '?preco=' + (string_d) + '&frete=' + (valor_sx_in) + '&valor_total={$TOTAL}';
				 	}
				 	document.querySelectorAll('.pac_01')[0].style.display = 'none';
				 	document.querySelectorAll('.pac_01')[1].style.display = 'none';
					document.querySelectorAll('.pac_01')[2].style.display = 'none';
				 }

				if(document.querySelector('#pac').checked == true){
					dw_s.style.display = 'inline-block';
					let string_d,vl_s_02;
					string_d = (valor_pac_in + strings);			 
					string_d = string_d + '';			
				  string_d = string_d.slice(0,5);									 
					string_d = string_d.replace(".",",");

					// 
				 	vl_s_02 = (valor_pac_in + '');
				 	vl_s_02 = vl_s_02.replace('.',',')

				 	document.getElementById('valores').innerHTML = '<b>Valor Total:</b> R$ {$TOTAL} <br/> <b>Valor do Frete:</b> R$ ' + vl_s_02 + ' <hr/> <b>Valor final:</b> R$ ' + string_d;

				 	if(limitador <= 0) {
					limitador += 1;
					document.getElementById('pedido_finalizar').action += '?preco=' + (string_d) + '&frete=' + (valor_sx_in) + '&valor_total={$TOTAL}';
				 	}
				 	document.querySelectorAll('.sedex_01')[0].style.display = 'none';
				 	document.querySelectorAll('.sedex_01')[1].style.display = 'none';
					document.querySelectorAll('.sedex_01')[2].style.display = 'none';
				 }				 
			},)
		}, 1500)
	} else {
		window.location.reload();
	}


		}
	</script>