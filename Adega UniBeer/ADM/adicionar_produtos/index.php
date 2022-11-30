<?php 
include("../conexao.php"); 
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


if(isset($_GET["mais"])):
	 print '<pre>';print_r($_POST);print '</pre>';

	 $arr = [];
	 $x = 0;
	 $query = "SELECT * FROM `as_produtos`";
	 $query_02 = mysqli_query($conexoes,$query);
	 foreach(mysqli_fetch_assoc($query_02) as $key => $valor){
	 	$x += 1;
	 	if($x <> 18): 		
	 	$arr[$x] = '`' . $key . '`,';
	 	else:
	 	$arr[$x] = '`' . $key . '`)';
		 endif;
	 }	
	 print '<pre>';print_r($arr);print '</pre>';

	$query_ds = "INSERT INTO `as_produtos` (";
	for($i = 1;$i <= COUNT($arr);$i++){
	$query_ds .= $arr[$i];
	}
	$query_ds .= ' VALUES (';
	print count($_POST) . '<br/>';
	for($d = 1;$d <= COUNT($_POST);$d++){
		if($d <> 18):
		$query_ds .= "'" . $_POST['valor__' . $d] . "',";
		else:
		$query_ds .= "'" . $_POST['valor__' . $d] . "')";
		endif;
	}
	
	 mysqli_query($conexoes,$query_ds);
	 print '
	 	<script>
	 	alert("Produto adicionado com sucesso");
	 	</script>
	 	   ';
	 $url =  '<meta http-equiv="refresh" content="0; url=index.php">';
     echo $url;
endif;

  ?>
  <center>  		
   	<h2>Adicionar produtos</h2>
   	<br/>
  	<button class="btn btn-primary"><a href="../editar_produtos.php">Voltar ( < )</a></button>
  	<br/><br/>
  	<?php 

  	print '<form action="index.php?mais=1" method="post">';

  	$query = "SELECT * FROM `as_produtos`";
	$querys = mysqli_query($conexoes,$query);
	$y = 0;
	$x = 0;
	foreach(mysqli_fetch_assoc($querys) as $key => $valor){
		$x += 1;
		$y += 1;
		// print $y . '';
		if(($y <> 1) && ($y <> 4) && ($y <> 14)){
  	?>
  	
  	<label><?php print ucfirst(str_replace('pro_','',$key));?>: </label> 
  	<input name="valor__<?= $y ?>" style="margin-right: 15px;"  type="<?php 

          switch($y){
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
  	?>"><?php 
  						if($x >= 2):
  							$x = 0;
  							print '<br/><br/>';
  						endif;
  						?>
  
  <?php } else if($y == 4) { ?>

  	<br/><br/><label><?php print ucfirst(str_replace('pro_','',$key));?>: </label> <br/>
  	<textarea cols="50px" name="valor__<?= $y ?>" rows="10px" required></textarea><?php 
  						if($x >= 2):
  							$x = 0;
  							print '<br/><br/>';
  						endif;
  						?>

 <?php	} else if($y == 1) { 
	 
	 $query = "SELECT MAX(`pro_id`) FROM `as_produtos`";
	 $query_01 = mysqli_query($conexoes,$query);
	 foreach(mysqli_fetch_assoc($query_01) as $key => $valor){
	 		$query_02 = $valor;
	 }
	$query_02 = ($query_02 += 1);
	?>
				<label>Id: </label>
				<input type="number" name="valor__<?= $y ?>" value="<?php print $query_02; ?>" placeholder="<?php print $query_02; ?>" readonly> 
<?php } else if($y == 14) {

			 $query = "SELECT MAX(`pro_ref`) FROM `as_produtos`";
			 $query_01 = mysqli_query($conexoes,$query);
			 foreach(mysqli_fetch_assoc($query_01) as $key => $valor){
			 		$query_02 = $valor;
			 }
			$query_02 = ($query_02 += 1);	
			$query_02 = strval($query_02);
			$query_02 = "00$query_02";			
?>	
				<label>Ref: </label>
				<input type="number" name="valor__<?= $y ?>" value="<?php print $query_02; ?>" placeholder="<?php print $query_02; ?>" readonly> <br/><br/>
	

<?php }} ?>
	<br/><br/>
	<button type="submit" class="btn btn-primary text-white">Adicionar</button>
</form>
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
  <script src="assets/js/main.js"></script>

</body>

</html>

