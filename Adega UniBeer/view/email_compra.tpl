<h4>Olá {$NOME_CLIENTE}, obrigado pela sua compra no Site {$SITE_NOME}<br/>
<a href="{$SITE_HOME}"> {$SITE_HOME} </a>
</h4>
 
	<section class="row">

	<h3>
	Para acessar a sua conta e ter um histórico de seus pedidos acesse nosso site, e sua conta <br/>
	<a href="{$PAG_MINHA_CONTA}">Minha conta: {$PAG_MINHA_CONTA}</a>
	</h3>

	</section>


<section class="row">
	 
	<center>

	<div class="alert alert-sucess"><h4>Itens do seu pedido</h4></div>
	<br/>

	<table border="1px" style="width: 95%;">
	 

		{foreach from=$PRO item=P}

		<tr>
		<!---	<td> <img src="{$P.pro_img}" width="100px" height="100px" alt="{$P.pro_nome}"> </td>-->
			<td>{$P.pro_nome}</td>
			<td>{$P.pro_valor}</td>	
			<td>{$P.pro_qtd}</td>	
			<td>{$P.pro_subTotal}</td>			
		 	
		</tr>

		{/foreach}

	</table>
	</center>

</section> <!---- Fim da listagem de itens --->
<br/>
<br/>
<!------- botoes de baixo e valor total ---> 
	<section class="row">
		<div class="col-md-4 text-right">
	 
		</div>
		

	<!-------- Botão de limpar ----------->
		<div class="col-md-4">
 			
			<h4><b>Valor total:</b> R$ {$VALOR_PRECO}</h4>		
			<h4><b>Frete:</b> R$ {$VALOR_FRETE}</h4>
			<h4><b>Valor final:</b> R$ {$TOTAL}</h4>
	 
		</div>	 
	</section>
		<br/>
		<center>
		<img src="https://adegaunibeer.caiorodriguesportfolios.com.br/unibeerlogo.png" width="300px">
		</center>