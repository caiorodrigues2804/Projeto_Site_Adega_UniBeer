<?php 

include("../conexao.php");

session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
    die();
 } }
 
if(isset($_GET["id"])):

	$query = "DELETE FROM `as_pedidos` WHERE `ped_id` = '$_GET[id]'";	
	mysqli_query($conexoes,$query);

	$query = " DELETE FROM `as_pedidos_itens` WHERE `item_id` = '$_GET[id]'";
	mysqli_query($conexoes,$query);

	print '
		<script>
		alert("Pedido excluido com sucesso");
		location.href = "index.php";
		</script>
		  ';

endif;
?>