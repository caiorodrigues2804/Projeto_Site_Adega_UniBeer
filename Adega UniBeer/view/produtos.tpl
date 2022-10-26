
<h2>Lista de Produtos</h2>
<hr/>
 <script type="text/javascript">
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
	 	
 </script>     

{if $PRO_TOTAL < 1}
<h4 class="alert alert-danger">Nenhum produto foi encontrado</h4>
{/if}

<ul style="list-style:none;">
<br/>
	{foreach from=$PRO item=P}

	<li class="col-md-4">

		<div class="thumbnail">
		<a href="{$PRO_INFO}/{$P.pro_id}/{$P.pro_slug}">
	
			<img src="{$P.pro_img}" style="width: 230;height: 230px;" alt="">

			<div class="caption">

				<h4 class="text-center">{$P.pro_nome}</h4>

			<h3 class="text-center text-danger">R$ {$P.pro_valor}</h3>

		 		

			</div>

			</a>

		</div>

	</li>

	{/foreach}

</ul>