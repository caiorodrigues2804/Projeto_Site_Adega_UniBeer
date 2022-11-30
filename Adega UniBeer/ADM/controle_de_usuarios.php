<?php 
include("conexao.php"); 

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
  	 <button class="btn btn-primary"><a href="index.php">Voltar para página principal</a></button>
  	 <br/><br/>
  	 <h4>Controle de usuários</h4>
  	<div class="col-md-10" style="overflow-y: scroll;height: 500px;">
 	<table class="table table-bordered">  			
 		<tr class="bg-dark text-white text-center">
 			<th>Nome</th>
			<th>E-mail</th>
			<th>CPF</th>
      <th>Data N</th>
			<th>Acesso</th>
			<th>Deletar</th>
 		</tr> 	

 		<?php  			
      $consulta = "SELECT * FROM `as_clientes`";
      $dados = mysqli_query($conexoes,$consulta);

      while($indices = $dados->fetch_array()){
        // print '<pre>';print_r($indices);print '</pre>';
		?>
      <tr class="text-center">
			   <td><?= $indices['cli_nome'] ?></td>
         <td><?= $indices['cli_email'] ?></td>
         <td><?= $indices['cli_cpf'] ?></td>
         <td><?= date("d/m/Y", strtotime($indices['cli_data_nasc'])); ?></td>
         <td><button class="btn btn-primary"><a href="
        javascript:
        location.href = 'acesso_usuarios.php?cli_id=<?php print $indices["cli_id"];?>&acesso=1';
        "><?php 
        $ds = $indices["cli_id"];
        $query = "SELECT `pro_acesso` FROM `as_clientes` WHERE `cli_id` = '$ds'";
        $results = mysqli_query($conexoes,$query);
        $results_02 = mysqli_fetch_assoc($results);
        $results_02 = (int)$results_02["pro_acesso"];
        // var_dump($results_02);
        if($results_02 == 0){
          print 'Bloquear acesso';
        } else if($results_02 == 1){
          print 'Desbloquear acesso';
        } 
          ?></a></button></td>         
         <td><button class="btn btn-primary"><a href="
        javascript:
        let con = window.confirm('Tem certeza que deseja deletar esse usuário??');
        if(con){
          location.href = 'drop_user.php?cli_id=<?php print $indices["cli_id"];?>&delete=1';
        } 
        ">Deletar</a></button></td>         
	   	<tr/>

     <?php } ?>
 	</table>
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

