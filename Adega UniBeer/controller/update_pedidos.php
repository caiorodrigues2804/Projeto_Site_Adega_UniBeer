<?php 


	// print_r($_GET["cod_ped"]);
if(isset($_GET["cod_ped"])){

	$conexoes = mysqli_connect("localhost","root","","miniloja2017");

	$query = "UPDATE `as_pedidos` SET `ped_pag_status` = 'SIM' WHERE `ped_cod` = '$_GET[cod_ped]'";
	print $query;
	mysqli_query($conexoes,$query);
	header("Location: http://localhost/Adega%20Unibeer/minhaconta");
} else {
	header("Location: http://localhost/Adega%20Unibeer/minhaconta");
}

?>
 