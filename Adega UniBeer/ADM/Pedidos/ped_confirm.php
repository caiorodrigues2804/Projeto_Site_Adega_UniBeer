<?php 
		include("../conexao.php");

		if($_GET["confirm"] == 1){			

		$query = "UPDATE `as_pedidos` SET `ped_concluido` = '$_GET[confirm]' WHERE `ped_id` = '$_GET[id]'";
		// print $query;
		mysqli_query($conexoes,$query);
		echo '
			<script>
				alert("Foi marcado como \'Concluido\'");
				location.href = "index.php";
			</script>
			';
     	} else if($_GET["confirm"] == 0){
     	$query = "UPDATE `as_pedidos` SET `ped_concluido` = '$_GET[confirm]' WHERE `ped_id` = '$_GET[id]'";
		// print $query;
		mysqli_query($conexoes,$query);
		echo '
			<script>
				alert("Foi marcado como \'Não concluido\'");
				location.href = "index.php";
			</script>
			';
     	}
?>