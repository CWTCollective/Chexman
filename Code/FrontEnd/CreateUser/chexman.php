<!doctype html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="stile.css">



<title>CHEXMAN</title>
</head>

<body>
<div id="Head"></div>
<div id="TittleRectangle"></div>
<div id="Tittle"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;CHEXMAN</div>
<img src="log.png">
<div class="navigation">
		<ul>
			<li class="list active">
				<b></b>
				<b></b>
				<a href="#"> 
					<span class="icon"><ion-icon name="home-outline"></ion-icon></span>
					<span class="title">Home</span>
				</a>
			</li>
			<li class="list">
			<b></b>
			<b></b>
				<a href="#">
					<span class="icon"><ion-icon name="help-circle-outline"></ion-icon></ion-icon></span>
					<span class="title">Information</span>
				</a>
			</li>
		</ul>
	</div>


<!-- User & Password -->
<form action="" method="post">
    <input type="text" id="User" name="login" placeholder="User..." /><br><br>
    <input type="password" id="Password" name="password" placeholder="Password..." /><br><br>
    <input type="submit" class="enter" value="¡enviarme!" /><br><br><br>
</form>
<form method="post" action="registro.php">
  <input type="submit" class="registro" value="Registrarse">
</form>
<?php

if ($_POST) {
  //Print data
    echo $_POST['login'];
    echo "<br>". $_POST['password'];
}
  ?>


  <!-- Conection with BBDD -->

  <?php
try{
	include("Datos_conexion.php");
	$base=new PDO($db, $db_usuario, $db_contra);
	$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sql = "SELECT * FROM users WHERE Name= :login and Password= :password";
  	$resultado= $base -> prepare ($sql);
  	$login = htmlentities(addslashes($_POST["login"]));
  	$password = htmlentities(addslashes($_POST["password"]));
  	$resultado->bindValue(":login", $login);
  	$resultado->bindValue(":password", $password);
  	$resultado->execute();
  	$numero_registro=$resultado->rowCount();
  	if($numero_registro!=0){

		echo "<h2> Adelante!!<h2>";

  	}else{

		echo "<h2> Prueba otra vez<h2>";
		header("chexman.php");

	}

  }catch(Exception $e){
	  die("Error: ". $e->getMessage());
  }
?>

</body>
</html>
