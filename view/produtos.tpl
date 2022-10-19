<h2>Lista de Produtos</h2>
<hr/>

{if $PRO_TOTAL < 1}
<h4 class="alert alert-danger">Nenhum produto foi encontrado</h4>
{/if}

<ul style="list-style:none;">

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