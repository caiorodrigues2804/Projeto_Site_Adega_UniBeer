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
    <h3>Pedidos dos clientes</h3>
  	    <button class="btn btn-primary"><a href="../index.php">Voltar para página principal ( < )</a></button>
        <br/>  

        <!-- BUSCAR PEDIDOS -->
        <form action="index.php?data=<?php if(isset($_POST["data"])){print $_POST["data"];}?>" method="post">
        <label><h4>Procurar pedidos:</h4></label><br/>
        <label>Selecione a data do pedido</label>
        <br/> 
        <input name="data" value="<?php 
        if(isset($_POST["data"])){
          print $_POST["data"];
        }?>" type="date">
        <br/>
        <button type="submit" class="btn btn-primary btn-sm mt-1">Buscar</button>
        <?php if(isset($_POST['data'])) { ?>
        <button type="button" onclick="desfazer()" class="btn btn-primary btn-sm mt-1">Desfazer busca</button>
        <script>
          function desfazer(){
            location.href = 'index.php';
          }
        </script>
        <?php } ?>
        </form>
        <!-- / BUSCAR PEDIDOS -->

        <br/>
        <br/>
         <div style="overflow-y: scroll;height: 500px;"/>
        <table>          
          <tr class="bg-black text-white text-center p-2">
            <th>Id</th>
            <th>Data e hora</th>
            <th>Valor</th>
            <th>Frete</th>
            <th>Já fez o pagamento?</th>
            <th>Código</th>
            <th>REF</th>
            <th>Quem fez o pedido?</th>
            <th>O Pedido foi concluído?</th>
            <th>Deletar pedido</th>
          </tr>
        <?php 
        $consuta;
        $dados;

        if(!isset($_POST["data"])){
        $consulta = "SELECT * FROM `as_pedidos`";
        $dados = mysqli_query($conexoes,$consulta);        
        } else if(isset($_POST["data"])){
        $consulta = "SELECT * FROM `as_pedidos` WHERE `ped_data` = '$_POST[data]'";
        $dados = mysqli_query($conexoes,$consulta);        
        }
        
        while($indices = $dados->fetch_array()){
        // print '<pre>';print_r($indices);print '</pre>'; 
            
        ?>        
        <tr class="text-center">

          <td><?= $indices["ped_id"] ?></td>
          <td style="padding: 2px;"><?= date('d/m/Y', strtotime($indices["ped_data"])) . '<br/>' . $indices["ped_hora"]?></td>
          <td>R$ <?= str_replace('.', ',', $indices["ped_valor_item"]); ?></td>
          <td>R$ <?= str_replace('.', ',', $indices["ped_frete_valor"]);?></td>
          <td><?php 
            $value = (($indices["ped_pag_status"] == "NAO") ? 'Ainda não' : 'Sim');            
            print $value;
            ?></td>
          <td><?= $indices["ped_cod"] ?></td>
          <td><?= $indices["ped_ref"] ?></td>
          <td>            
            <a href="../user_pedidos/index.php?id=<?= $indices['ped_cliente'];?>"><button class="btn btn-primary text-white">Visualizar</button></a>
          </td>
          <td>
            <?php
              $consultas = "SELECT `ped_concluido` FROM `as_pedidos` WHERE `ped_id` = '$indices[ped_id]'";
              $dadoss = mysqli_query($conexoes,$consultas);
              $valor = intval(mysqli_fetch_assoc($dadoss)["ped_concluido"]);
              if($valor <= 0){
             ?>
            <button class="btn btn-danger text-white">
            <a href="ped_confirm.php?id=<?= $indices["ped_id"] ?>&confirm=1">( ✖ ) Não</a>
           </button>
           <?php  } ?>
           <?php
              $consultas = "SELECT `ped_concluido` FROM `as_pedidos` WHERE `ped_id` = '$indices[ped_id]'";
              $dadoss = mysqli_query($conexoes,$consultas);
              $valor = intval(mysqli_fetch_assoc($dadoss)["ped_concluido"]);
              if($valor >= 1){
             ?>
            <button class="btn btn-primary text-white">
            <a href="ped_confirm.php?id=<?= $indices["ped_id"] ?>&confirm=0">( ✔ ) Sim</a>
           </button>
           <?php  } ?>

         </td>
          <td>
            <a href="
              javascript:

              conf = window.confirm('Tem certeza que quer deletar este pedido??');

              if(conf){
                location.href = 'drop_pedido.php?id=<?= $indices["ped_id"] ?>';
              } else {
                location.href = 'index.php';
              }

            "><button class="btn btn-primary text-white">Deletar</button></a>
          </td>
         </tr>
       </div>
      <?php } ?>
        </table>      
         
   </center>     
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
  <script src="../assets/js/main.js"></script>

</body>

</html>

