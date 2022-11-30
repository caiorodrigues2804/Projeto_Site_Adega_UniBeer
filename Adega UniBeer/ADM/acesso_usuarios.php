<?php 
 
 session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
 } }
include("conexao.php");

if(isset($_GET['acesso'])){

$id_user = $_GET['cli_id'];
$id_user = (int)$id_user;

$query = "SELECT `pro_acesso` FROM `as_clientes` WHERE `cli_id` = '$id_user'";
$results = mysqli_query($conexoes,$query);
$results_02 = mysqli_fetch_assoc($results);
$results_02 = $results_02['pro_acesso'];

if($results_02 <= 0){
	$query = "UPDATE `as_clientes` SET `pro_acesso` = '1' WHERE `cli_id` = '$id_user'";
	mysqli_query($conexoes,$query);
	print '
		<script>

		alert("Acesso bloqueado");

		location.href = "controle_de_usuarios.php";
		</script>
		 ';
} else if($results_02 >= 1){
	$query = "UPDATE `as_clientes` SET `pro_acesso` = '0' WHERE `cli_id` = '$id_user'";
	mysqli_query($conexoes,$query);
	print '
		<script>

		alert("Acesso desbloqueado");

		location.href = "controle_de_usuarios.php";
		</script>
		 ';
}

}