<?php 
include("conexao.php"); 
 session_start();
 $_SESSION['usuario_autenticado'] = 0;
   // print '<pre>';print_r($_SESSION);print '</pre>';
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Adega UniBeer Administrativo</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <style>
    
    a{
      text-decoration: none;
      color: white;
    }
    #buttons input{
      width: 400px;
    }
    #forms{
    	border-radius: 10px;
    	width: 260px;
    	height: 240px;
    	border: 2px solid #000;
    } #forms h3{
    	color: #fff;
    }


  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">

      <h4><a href="index.html">Site Adega Unibeer</a></h4>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->   
    </div>
  </header><!-- End Header -->
 <?php for($i = 0;$i < 5;$i++){ ?><br/><?php } ?>    
  <center>    
    
    <h4>Site Adega Unibeer - Área Administrativa</h4><br/>
  	
  	<form action="validar_acesso.php"  method="post" class="bg-secondary" id="forms">
  		<br/>
  		<h3>Login</h3>
  		<br/>
  		<input name="email" type="text" placeholder="E-mail"  name=""><br/>
  		<input name="senha" type="password" placeholder="Senha" name="">
  		<br/><br/>
  		<button type="submit" class="btn btn-primary btn-lg text-white">Entrar</button> 				
  	 	
  	</form>
  	<?php  if(isset($_GET['autenticado'])) {  
  			if($_GET['autenticado'] == "false"){
  			?>
  		<br/>
  		<div class="col-md-2">
  			<div class="alert alert-danger">É necessário fazer login</div>
  		</div>
  		<script>
  			setTimeout(() => {
  					location.href = 'login.php';
  			}, 4000)
  		</script>
  	<?php }} ?>  
  		<?php  if(isset($_GET['invalido'])) {  
  			if($_GET['invalido'] == 1){  				
  			?>
  		<br/>
  		<div class="col-md-2">
  			<div class="alert alert-danger">Dados inválido(s)</div>
  		</div>
  		<script>
  			setTimeout(() => {
  					location.href = 'login.php';
  			}, 4000)
  		</script>
  	<?php }} ?>  	
  	<br/>
		 <a href="../index.php"><input class="btn btn-primary text-white" type="button" value="Voltar para o site"></a><br/>
   </center>     
  <center>
    <br/>
     @2022
    <?php for($i = 0;$i < 3;$i++) { ?>
      <br/>
    <?php  } ?>      
  </center>
  <!-- Vendor JS Files -->
  <script src="../../assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../../assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../../assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../../assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="../../assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../assets/js/main.js"></script>

</body>

</html>

