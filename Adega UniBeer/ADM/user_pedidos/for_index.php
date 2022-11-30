<?php 
 
 
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../login.php?autenticado=false");
 } 
}
	$arr_nome = [];
	$arr = [];

	$query = "SELECT * FROM `as_clientes` WHERE `cli_id` = '$_GET[id]'";
	$ds = mysqli_query($conexoes,$query);
	$x = 0;
	foreach(mysqli_fetch_assoc($ds) as $key => $valor){
		$x += 1;	
		$nome_w = ucfirst(str_replace('cli_','',$key));			
		$arr_nome[$x] = ($nome_w . ':');
		$arr[$x] = $valor;
	}
	$arr_nome[16] = '';$arr_nome[20] = '';
 
?>
