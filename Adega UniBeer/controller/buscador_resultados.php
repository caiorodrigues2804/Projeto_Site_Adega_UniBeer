<?php 

$smarty = new Template();
// $conexoes = new Conexao();

$smarty->display('buscador_resultados.tpl');

	// print_r($_POST);
	$var_busc = $_POST["campos"];

	// SELECT * FROM `as_produtos` WHERE pro_nome LIKE 'Skol%';
	
     $host = "localhost";
     $senha = "";
     $usuario = "root";
     $nome_do_banco = "miniloja2017";
 
 $x = 0;
    $con = mysqli_connect($host,$senha,$usuario,$nome_do_banco);
	$dados = mysqli_query($con,"SELECT COUNT(*) FROM `as_produtos` WHERE `pro_nome` LIKE '$var_busc%'");
	$results = mysqli_fetch_assoc($dados);
	$results = intval($results["COUNT(*)"]);
	// print $results;
	print (($results == 0) ? '<h4>Nenhum produto foi encontrado</h4>' : '<h5>A quantidades de produtos retornados foi ' . $results . '</h5>');
	for($i = 0;$i < $results;$i++){

	 if($dados = mysqli_query($con,"SELECT * FROM `as_produtos` WHERE `pro_nome` LIKE '$var_busc%'")){
	 	while($results = mysqli_fetch_assoc($dados)){	 	
	 		$ids = $results['pro_id'];
	 		// print '<pre>';print_r($results);print '</pre>';
?>
		
	<div id="ds_s">
		<br/>
		<img style="display: inline;width: 130px;border: 0.5px solid #000;margin: 10px;border-radius: 10%" src="media/imagens/<?php print $results['pro_img'];?>"/>
		<h4 style="display: inline;"><!--- (<?php// print $results['pro_id'] ?>) --->
		<b>Nome:</b> <?php print $results['pro_nome'] ?> 
		| <b>REF:</b> <?php print $results['pro_ref'] ?>
		| <b>Valor do produto:</b> R$ <?php print str_replace('.',',',$results['pro_valor']) ?></h4>
		<center>
		  <button style="display: block;" id="botao" class="btn btn-cssc"><a href="

	 	javascript: location.href = 'produtos_info/' + '<?php print $results['pro_id']?>/' + '<?php print $results['pro_slug']?>';

		  	">Visualizar produto</a></button><br/>
		  </center>
		<hr/>
	</div>
 <?php } } } ?>


