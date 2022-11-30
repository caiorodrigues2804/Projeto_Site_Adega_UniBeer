<?php 

	session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../login.php?autenticado=false");
    die();
 } }

	require "../conexao.php";

	    $query = "SELECT COUNT(*) FROM `as_categorias`";
        $query_s = mysqli_query($conexoes,$query);
        $query_s = mysqli_fetch_assoc($query_s)["COUNT(*)"];
        $query_s = (int)$query_s;
        $query_s += 1;	
        $arrs = [];

        for($i = 2;$i <= $query_s;$i++){
          $query = "SELECT `cate_id` FROM `as_categorias` WHERE `cate_id` = '$i'";
          $dados = mysqli_query($conexoes,$query);
          $valor = mysqli_fetch_assoc($dados)["cate_id"];      
          // print $valor . '<br/>';
          $arrs[$i] = $valor;
		}
		// print_r($arrs);
?>