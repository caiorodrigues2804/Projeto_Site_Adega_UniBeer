<?php 

include("../conexao.php");

session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../login.php?autenticado=false");
    die();
 } }



$id_produtos = (int)$_GET['id_produto'];

if(isset($_GET['id_produto'])):

	$query = "DELETE FROM `as_produtos` WHERE `pro_id` = '$id_produtos'";
	mysqli_query($conexoes,$query);

	print '
	<script>
		alert("Produto deletado com sucesso");
		location.href = "../editar_produtos.php";
	</script>
	      ';

endif;

?>