<?php 
 include("conexao.php");


 
 session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
 }
}
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
    }   #buttons input{
      width: 400px;
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

    <h3>Olá Administrador, o que deseja fazer agora??</h3><br/>
    <div id="buttons" class="col-md-4">

    <a href="controle_de_usuarios.php"><input class="btn btn-primary btn-lg text-white" type="button" value="Controle de usuários"></a><br/><br/>
 
<button type="button" class="btn btn-primary position-relative">
  <a href="Pedidos/index.php">Gerenciar pedidos</a>



<?php 
   $consulta = "SELECT COUNT(*) FROM `as_pedidos` WHERE `ped_concluido` = 0";
   $con = mysqli_query($conexoes,$consulta);
   $dados = intval(mysqli_fetch_assoc($con)["COUNT(*)"]);
    if($dados >= 1){
   ?>
  <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
  <?php 
    $consulta = "SELECT COUNT(*) FROM `as_pedidos` GROUP BY `ped_concluido` HAVING `ped_concluido` <= 0";
    $con = mysqli_query($conexoes,$consulta);
    while($dados = $con->fetch_array()){
     print_r($dados[0] . '+');    
      
    }?> 
    <span class="visually-hidden">dawdw</span>
  </span>
<?php } ?>



</button>
<br/><br/>
    <a href="editar_produtos.php"><input class="btn btn-primary btn-lg text-white" type="button" value="Editar produtos"></a><br/><br/>

    <!-- <input class="btn btn-primary btn-lg text-white" type="button" value="Alterar senha"><br/><br/> -->

    <a href="login.php"><input class="btn btn-primary btn-lg text-white" type="button" value="Sair"></a><br/>

   </div>
   <br/>
   @2022
  </center>
  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>