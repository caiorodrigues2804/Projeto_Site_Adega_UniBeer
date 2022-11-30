<?php 
include("../conexao.php"); 
include("valor_arr.php"); 
 
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../login.php?autenticado=false");
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

  <?php

  // INSERÇÃO
  if(isset($_GET['edit'])):
  
  // print '<pre>';print_r($_POST);print '</pre>';
  $query = "UPDATE `as_produtos` SET `pro_categoria` = '$_POST[valor_2]', `pro_nome` = '$_POST[valor_3]', `pro_desc` = '$_POST[valor_18]', `pro_peso` = '$_POST[valor_9]', `pro_valor` = '$_POST[valor_6]', `pro_altura` = '$_POST[valor_7]', `pro_comprimento` = '$_POST[valor_8]',`pro_img` = '$_POST[valor_10]',`pro_slug` = '$_POST[valor_11]', `pro_estoque` = '$_POST[valor_12]', `pro_modelo` = '$_POST[valor_13]', `pro_ref` = '$_POST[valor_14]', `pro_fabricante` = '$_POST[valor_15]', `pro_ativo` = '$_POST[valor_16]', `pro_frete_free` = '$_POST[valor_17]', `pro_descricao_extra` = '$_POST[valor_18]' WHERE `pro_id` = '$_GET[id_produto]'";
  // print $query;
  mysqli_query($conexoes,$query);
  print '
        <script>
        alert("Alteração foi realizada com sucesso");    
        </script>
        ';

    $url =  '<meta http-equiv="refresh" content="1; url=editar_produtos.php?id_produto='. (int)$_GET["id_produto"].'">';
    echo $url;


 endif;
  ?>
  <center>
    <h3>Editar produto (<?php print $_GET['id_produto']; ?>)</h3><br/>
  	 <button class="btn btn-primary"><a href="../editar_produtos.php">Voltar ( < )</a></button>
     <br/>
     <br/>
  	<div class="col-md-10">
      <?php  
        $query = "SELECT * FROM `as_produtos` WHERE `pro_id` = '$_GET[id_produto]'";
        // print $query;
        $results = mysqli_query($conexoes,$query);     
        $ds = 0;$limitador = 0;
        // print_r(mysqli_fetch_assoc($results));
        $valor_d = (int)$_GET["id_produto"];

      print '<form action="editar_produtos.php?id_produto=' . $valor_d . '&edit=1" method="post">';
        foreach(mysqli_fetch_assoc($results) as $valor){
        $limitador += 1;
        if($limitador >= 2){
          // print $limitador;
        ?>
        <?php if($limitador <> 4) {?>
        <div id="<?php print $limitador; ?>" style="display:inline;">
          <label><?= ucfirst($arr[$limitador]); ?>:</label>      
          <input name="valor_<?php print $limitador ?>" style="margin-right:20px;"value="<?php print $valor;?>"type="<?php 
          
          switch($limitador){
            case 2:
            print 'number';
            break;  
            case 5:
            print 'number';
            break;
            case 6:
            print 'text';
            break;
            case 7:
            print 'number';
            break;
            case 8:
            print 'number';
            break;
            case 9:
            print 'number';
            break;
            case 10:
            print 'file';
            break;
            case 12:
            print 'number';
            break;
            case 14:
            print 'number';
            break;
            default:
            print 'text';
          }       


           ?>"> 
        </div>
        <?php }else if($limitador == 4){ ?>
          <br/><br/><label><?= ucfirst(($arr[$limitador])); ?>:</label>    <br/>  
          <textarea cols="60px" rows="10px"><?php print $valor;?></textarea>
        <?php } ?> 

        <?php 
        $ds += 1;
        if($ds >= 3):
        $ds = 0;
        print '<br/><br/>';
        endif;     
         }} ?>
      <br/><br/>
      <button type="submit" class="btn btn-primary text-white">Aplicar alteração</button>
    </form>
    
   <br/>  
  </center>
  <center>
    <br/>
     @2022
    <?php for($i = 0;$i < 3;$i++) { ?>
      <br/>
    <?php  } ?>    
    
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

