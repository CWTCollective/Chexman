<?php
try{
    session_start(); 
	include("Datos_conexion.php");
    $base = new mysqli("localhost",  $_SESSION['db_usuario'], $_SESSION['db_contra'], $_SESSION['db']);
   
	$consulta="INSERT INTO users (Name, NIE , Password) 
    VALUES ('" . $_POST['login'] . "', '" . $_POST['nie'] . "', '". $_POST['password'] ."')";
    echo $consulta;
    $resultado=mysqli_query($base,$consulta);
        if($resultado){
            echo "Record inserted sucessfully";
        }else{
            echo "Failed to insert record";
        }

  }catch(Exception $e){
	  die("Error: ". $e->getMessage());
  }
    ?>