<?php
try{
	include("Datos_conexion.php");
	$base=new PDO($db, $db_usuario, $db_contra);
	$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $consulta="INSERT INTO users (Name, Password)
    VALUES (" . $login . "," . $password .")";
    echo $consulta;
    echo $User;
    $resultado=mysqli_query($base,$consulta);
        if($resultado){
            echo "registro correcto";
        }else{
            echo "vuelve a intentarlo";
        }

  }catch(Exception $e){
	  die("Error: ". $e->getMessage());
  }
    ?>