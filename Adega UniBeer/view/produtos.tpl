
<h2>Lista de Produtos</h2>


<script>
	
	let dados,nums;
	dados = window.location.href;
	nums = dados.indexOf('?p');
	// document.write(nums)
	if (nums >= 50) {
	let dados_2 = dados.substr(44, 35).replace('?p=','').replace(/[0-9]/g,'').replace('/','');
	document.write('<h4>Categoria selecionada: ',dados_2,'</h4>');
	}
 
</script>
<hr/>
<section style="margin: 2px;" id="produtos" class="row">
{if $PRO_TOTAL < 1}
<h4 class="alert alert-danger">Nenhum produto foi encontrado</h4>
{/if}

<ul style="list-style:none;">
<br/>
	
	{foreach from=$PRO item=P}

	<li class="col-md-4">
		<!-- {$P.pro_id} -->

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
</section>

<section id="paginacao" class="row">
<center>
	{$PAGINAS}
</center>
</section>