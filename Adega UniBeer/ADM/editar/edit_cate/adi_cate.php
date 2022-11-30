<?php 

require '../../conexao.php';

session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../../login.php?autenticado=false");
 } }

if(isset($_GET["add"])):



	print_r($_POST);
	$query = "INSERT INTO `as_categorias` (`cate_nome`,`cate_slug`,`cate_id`) VALUES ('$_POST[nome]','$_POST[nome]','$_POST[valor]')";
	mysqli_query($conexoes,$query);
	
	print '
			<script>
			alert("Foi adicionado com sucesso");

			</script>
		  ';
 	 $url =  '<meta http-equiv="refresh" content="0; url=../categorias.php">';
     echo $url;
endif;

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Adega Unibeer Administrativo</title>


  <!-- Favicons -->
  <link href="../../assets/img/favicon.png" rel="icon">
  <link href="../../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../../assets/css/style.css" rel="stylesheet">
  <style>
  	a{
  		text-decoration: none;
  	}
  </style>
</head>
<body>
	<div style="margin: 10px;">
	<a href="../categorias.php"><button class="btn btn-primary text-white">Voltar ( < )</button></a>
	<form action="adi_cate.php?add=1" method="post">
		<br/>
		<h4>Adicionar uma nova categorias de produtos</h4>
		<label>Digite o nome da categoria: </label><input name="nome" type="text" required><br/><br/>
		<label>Índice da categoria: </label><input readonly name="valor" value="<?php
		$consulta = "SELECT MAX(cate_id) FROM `as_categorias`";
		$d_01 = mysqli_query($conexoes,$consulta);
		$d_01 = intval(mysqli_fetch_assoc($d_01)["MAX(cate_id)"]);
		$d_01 = ($d_01 + 1);
		print $d_01;

		 ?>" placeholder="
		<?php 

		$consulta = "SELECT MAX(cate_id) FROM `as_categorias`";
		$d_01 = mysqli_query($conexoes,$consulta);
		$d_01 = intval(mysqli_fetch_assoc($d_01)["MAX(cate_id)"]);
		$d_01 = ($d_01 + 1);
		print $d_01;

		?>
		" min="0" type="number"><br/><br/>
		<button class="btn btn-primary" type="submit">Adicionar</button>
	</form>
	</div>
</body>
</html>