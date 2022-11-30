<?php 
 
session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
 } }

		include('../conexao.php');
	
	    $query = "SELECT * FROM `as_produtos` WHERE `pro_id` = '$_GET[id_produto]'";
        // print $query;
        $results = mysqli_query($conexoes,$query);

		$arr = array();
		$ds = 0;
        foreach (mysqli_fetch_assoc($results) as $sigla => $nome) {
        	$ds += 1;
            $arr[$ds] = str_replace("pro_", "", $sigla) . PHP_EOL;
        }

?>