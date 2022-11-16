<h2>Meus Pedidos</h2>


<section class="row" id="pedido">
	<h4 class="text-center">Meus Pedidos</h4>

	<center>	
	<table class="table table-bordered" style="width:90%;">

	<tr class="text-danger bg-danger">
 			<td>Data</td>
 			<td>Ref</td>
 			<td></td>
 			<td></td>
 			<td>Status</td>
 			<td></td>
 	</tr>

	{foreach from=$PEDIDOS item=P} 	
		<tr>
			<td style="width: 10%;">{$P.ped_data}</td>
			<td style="width: 10%;">{$P.ped_ref}</td>
			<td></td>
			<td></td>
			<td style="width: 15%;">{$P.ped_pag_status}</td>
			<td style="width: 10%;"><button class="btn btn-default"><i class="glyphicon glyphicon-menu-hamburger"></i> Detalhes</button></td>
		</tr>
	{/foreach}

	</table>			
	</center>

</section>