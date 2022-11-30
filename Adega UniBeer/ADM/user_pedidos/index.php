<?php 
include("../conexao.php"); 
 
  
 session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
 } }
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
  <link href="../assets/img/favicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">

  <style>
    
    a{
      text-decoration: none;
      color: white;
    }
    #buttons input{
      width: 400px;
    }

    table, tr, th, td{
      border: 1px solid #000;
      padding: 5px;
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
    
    <button class="btn btn-primary"><a href="../Pedidos/index.php">Voltar ( < )</a></button><br/><br/>
     <h4>Informações do cliente</h4><br/>
      <!-- 
nome
sobrenome
endereco
numero
bairro
cidade
uf
cep
cli uf
cli_dd
cli_fone
cli_celular
cli_email
cli_data_nasc
cli_data_cad
pro_acesso
    
       -->
       <div>
       <table>
        <tr class="bg-secondary text-white text-center">
        <th>Cliente</th>
        <th>Dados</th>
        </tr>
    <?php
      include("for_index.php");
      $x = 0;
      $consulta = "SELECT * FROM `as_clientes` WHERE `cli_id` = '$_GET[id]'";
      $query = mysqli_query($conexoes,$consulta);

      while($indices = $query->fetch_array()){
       // print '<pre>';print_r($indices);print '</pre>';
       for($i = 1;$i <= count($indices);$i++){    
        if($i <= 20){
          if((($i <> 15) && ($i <> 19) && ($i <> 17) && ($i <> 16) && ($i <> 20))){
    ?>
    <tr>
          <td>
          <?= $arr_nome[$i + 1]; ?>
          </td>
          <td class="text-center"><?= $indices[$i]; ?></td>
  </tr>
    <?php } else if($i == 17){?>
      <td>
      <?= $arr_nome[$i + 1]; ?>
      </td>
      <td class="text-center"><?= date('d/m/Y', strtotime($indices[$i])); ?></td>
    <?php } else if($i === 16) { ?>
      <tr>
      <td>
      <?= $arr_nome[$i + 1]; ?>
      </td>
      <td class="text-center"><?= date('d/m/Y', strtotime($indices[$i])); ?></td>
    </tr>
     <?php } else if($i === 20){ ?>
      <tr>
      <td class="text-center">
      <?= $arr_nome[$i + 1]; ?>
      </td>
      <td class="text-center"><?= (($indices[$i] == 1) ? 'Acesso bloqueado' : 'Acesso desbloqueado'); ?></td>
    </tr>
    <?php }}}} ?>

   </center>  
   </table>   
 </div>
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

