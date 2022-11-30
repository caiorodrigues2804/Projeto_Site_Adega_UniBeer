<?php 
session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../../login.php?autenticado=false");
 } }

require '../../conexao.php';

if(isset($_GET["edit"])):

$query = "UPDATE `as_categorias` SET `cate_nome` = '$_POST[nome]',`cate_slug` = '$_POST[nome]' WHERE `cate_id` = '$_GET[id]'";
mysqli_query($conexoes,$query);
// print $query;

	$gets = (int)$_GET["id"];
	print $gets;
	print "
		<script>
		alert('A alteração foi realizada com sucesso');			
		</script>
		  ";

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
	<form action="edit_cate.php?id=<?php print $_GET['id']?>&edit=1" method="post">
		<br/>
		<h4>ID da categoria: <?php print $_GET['id'] ?></h4>
		<label>Digite o nome da categoria: </label><input value="<?= $_GET["nome_cate"] ?>" name="nome" type="text" value="" required><br/><br/>
		<button class="btn btn-primary" type="submit">Aplicar alteração</button>
	</form>
	</div>
</body>
</html>