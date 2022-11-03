<h2>Carrinho de produtos</h2>
<hr/>

<section class="row">
	<center>
	<table class="table table-bordered" style="width: 95%;">
		<tr class="text-danger bg-danger">
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
	<form>
		<button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
	</form>				
			</td>
		</tr>

		{/foreach}

	</table>
	</center>

</section>
	<section class="row">
		<div class="col-md-4 text-right">
		 
		</div>
		<div class="col-md-4 text-right">
	 
		</div>
		<div class="col-md-4 text-right text-danger">
		<h4>
			Valor total: R$ {$TOTAL}
		</h4>
		</div>
	</section>