<h2>Lista de Produtos</h2>
<hr/>

<ul style="list-style:none;">

	{foreach from=$PRO item=P}

	<li class="col-md-4">

		<div class="thumbnail">
		<a href="{$PRO_INFO}">
	
			<img src="{$P.pro_img}" style="width: 180;height: 180px;" alt="">

			<div class="caption">

				<h4 class="text-center">{$P.pro_nome}</h4>

				<h3 class="text-center text-danger">R$ {$P.pro_valor}</h3>

		 		

			</div>

			</a>

		</div>

	</li>

	{/foreach}

</ul>