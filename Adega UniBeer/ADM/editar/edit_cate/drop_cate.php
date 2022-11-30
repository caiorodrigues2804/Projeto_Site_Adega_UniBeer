<?php 
include("../../conexao.php");  

session_start();
  // print '<pre>';print_r($_SESSION);print '</pre>';
 if(isset($_SESSION['usuario_autenticado'])){
   if($_SESSION['usuario_autenticado'] == 0){
    header("Location: ../../login.php?autenticado=false");
 } }

 $consulta = "DELETE FROM `as_categorias` WHERE `cate_id` = '$_GET[id]'";
 mysqli_query($conexoes,$consulta);

 echo '<script>
      alert("Foi excluido com sucesso");
      location.href = "../categorias.php";
      </script>';
