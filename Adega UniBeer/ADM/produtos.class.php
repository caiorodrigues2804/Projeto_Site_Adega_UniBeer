<?php 
 session_start();
 
 session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: login.php?autenticado=false");
 } }
 
include 'conexao.php';

$x = 1;


$dados = mysqli_query($conexoes,"SELECT COUNT(*)FROM `as_categorias`");
$y = mysqli_fetch_assoc($dados)['COUNT(*)'];
$arr = Array();

while($x <= $y){
	$x += 1;
	$query = "SELECT `cate_nome` FROM `as_categorias` WHERE `cate_id` = '$x'";
	$query_i = mysqli_query($conexoes,$query);
	$arr[$x] = mysqli_fetch_assoc($query_i)["cate_nome"];
	
}

 

 




