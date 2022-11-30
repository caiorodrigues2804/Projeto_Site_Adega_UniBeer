<?php 

	
	$servername = 'localhost';
	$database = 'miniloja2017';
	$username = 'root';
	$password = '';

	$conexoes = mysqli_connect($servername,$username,$password,$database);

	if(!$conexoes){
		die("Ops aconteceu um imprevisto!! " . mysqli_connect_error());
	}

 