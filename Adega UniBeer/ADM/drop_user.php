<?php 

include("conexao.php");

if(isset($_GET['delete'])){
	echo '
	<script>
		alert("Usuário deletado com sucesso");
		location.href = "index.php";
	</script>
		';
	$sql = "DELETE FROM `as_clientes` WHERE `cli_id` = 'cli_id'";
	mysqli_query($conexoes,$sql);
}