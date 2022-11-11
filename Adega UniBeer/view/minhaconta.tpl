<h2>Minha Conta</h2>
<hr/>

<section class="row" id="contabotoes">	

	<ul class="nav nav-pills pull-right">
		<li> <a href="" class="btn btn-default">Meus Pedidos</a></li>
		<li> <a href="" class="btn btn-default">Meus dados</a></li>
		<li> <a href="" class="btn btn-default">Minha Senha</a></li>	
	</ul>

</section>

<section class="row" id="pedido">
 
	{foreach from=$PEDIDO item=P}

	<table class="table table-bordered">
		<tr>
			<td>{$P.ped_data}</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		{/foreach}
	</table>


</section>