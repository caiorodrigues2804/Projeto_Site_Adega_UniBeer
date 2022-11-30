<?php 
include("../conexao.php"); 
require "categ_ds.php";
error_reporting(0);
 
 
session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../login.php?autenticado=false");
     die();
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
    }   #buttons input{
      width: 400px;
    } table, tr, td, th{
      border: 1px solid #000;      
      text-align: center;
    } table td{
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
    <h4>Categorias dos produtos</h4>
 <button class="btn btn-primary"><a href="../editar_produtos.php">Voltar ( < )</a></button>
  
 <button class="btn btn-primary"><a href="edit_cate/adi_cate.php">Adicionar categoria ( + )</a></button>
    <br/>
    <br/>
    <div style="overflow-y: scroll;height: 500px;">
    <table style="margin-left:15px;">
      <tr class="bg-dark text-white text-center">
        <th>Nome</th>
        <th style="padding: 10px;">Valor</th>
        <th>Editar</th> 
        <th>Deletar</th> 
      </tr>    
      <?php 

        $query = "SELECT * FROM `as_categorias`";
        $query_s = mysqli_query($conexoes,$query);
        
        while($dt = $query_s->fetch_array()){            
        ?>
    <tr>
      <td> <?= $dt["cate_id"]; ?></td>
      <td><?= $dt["cate_nome"]; ?></td>
    
      <td><button class="btn btn-primary text-white"><a href="
         javascript:
         location.href = 'edit_cate/edit_cate.php?id=<?= $dt["cate_id"]; ?>&nome_cate=<?= $dt["cate_nome"] ?>';
        ">Editar</a></button></td>     
      <td><a href="
          javascript:

          conf = window.confirm('Tem certeza que quer deletar esta categoria??');
          if(conf){
            location.href = 'edit_cate/drop_cate.php?id=<?= $dt["cate_id"]; ?>';
          }else{
            location.href = 'categorias.php';
          }
        "><button class="btn btn-primary text-white">Deletar</button></a></td>
 

      
    </tr>
      <?php } ?>
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
  <script src="../assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="../assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>

