<?php 

  
error_reporting(0);
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
 } }

include("conexao.php"); 
include("produtos.class.php");

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
  	 <button class="btn btn-primary"><a href="index.php">Voltar para página principal ( < )</a></button>
     <button class="btn btn-primary"><a href="adicionar_produtos/index.php">Adicionar produtos ( + )</a></button>
     <button class="btn btn-primary"><a href="editar/categorias.php">Configurar as categorias</a></button>
     <br/><br/>
       <form style="display: inline;" action="editar_produtos.php?ativo=1" method="post">
       <label>Procurar produtos: </label>
       <input name="campo" type="text">
       <input type="submit" class="btn btn-primary text-white btn-sm" value="buscar">     
     </form> 
     <form style="display: inline;">
       <?php if(isset($_GET["ativo"])): ?>
            <a href="editar_produtos.php"><input type="button" class="btn btn-primary text-white btn-sm" value="Desfazer busca"></a>
      <?php endif; ?>
    </form>
      <br/>
     <br/>
  	<div class="col-md-10" style="overflow-y: auto;height: 500px;border:1px solid #000;">
    <table border="1px" class="table table-bordered">
        <tr class="bg-dark text-white text-center">
          <th>ID</th>
          <th>Categoria</th>
          <th>Nome</th>
          <th>Valor</th>
          <th>Editar</th>
          <th>Deletar</th>
        </tr>
    
    <?php 
      $d = 0;

      if(isset($_POST['campo'])):
      $valor = $_POST['campo'];
      endif;


      
      $query = "SELECT * FROM `as_produtos`";    
      
      if(isset($_GET['ativo'])):
      if($_GET['ativo'] = 1):
        $query = "SELECT * FROM `as_produtos` WHERE `pro_nome` LIKE '$valor%'";    
      endif;      
      endif;

      if($result = mysqli_query($conexoes,$query)){
        while($x = mysqli_fetch_assoc($result)){      
          $d += 1;               

    ?>
     <tr class="text-center">
      <td><?php print $x['pro_id']; ?></td>
      <td width="20px;"><?php print $arr[$x['pro_categoria']];?></td>
      <td><?php print $x['pro_nome']; ?></td>
      <td>R$ <?php print str_replace('.',',',$x['pro_valor']);?></td>
      <td><button class="btn btn-primary text-white"><a href="editar/editar_produtos.php?id_produto=<?php print $x['pro_id']?>">Editar</a></button></td>
      <td><button class="btn btn-primary text-white"><a href="
        javascript:
        
        let con;
        con = window.confirm('Tem certeza que quer deletar esse produto??');

        if(con){location.href = 'deletar/drop_produto.php?id_produto=<?php print $x['pro_id']?>';} 
        else {location.href = 'editar_produtos.php';}       

        ">Deletar</a></button></td>      
    <?php }} ?>
      </tr>
    </div>
    </table> 	 
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

