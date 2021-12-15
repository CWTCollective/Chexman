<?php
try{
    session_start(); 
	include("Datos_conexion.php");
	include ("utils.php");
    $base = mydb_open();	

$consulta="INSERT INTO users (Login, NIE , Password, Role) 
    VALUES ('" . $_POST['applogin'] . "', '" . $_POST['nie'] . "', '". $_POST['apppassword'] ."', '". $_POST['role'] ."')";
    $resultado=mysqli_query($base, $consulta);
        if($resultado){
            echo "Record inserted sucessfully";
            log_action( 3, $consulta);
        }else{
            echo "Failed to insert record";
        }
        mydb_close($base);

  }catch(Exception $e){
    mydb_close($base);
	die("Error: ". $e->getMessage());
  }
  ?>
    <button type=“button”><a href=appuser_menu.php>Back to Main Page</a></button>