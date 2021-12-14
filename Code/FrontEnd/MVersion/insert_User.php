<?php
try{
    session_start(); 
	include("Datos_conexion.php");
	include ("utils.php");
    $base = mydb_open();	

$consulta="INSERT INTO users (Name, NIE , Password) 
    VALUES ('" . $_POST['login'] . "', '" . $_POST['nie'] . "', '". $_POST['password'] ."')";
    $resultado=mysqli_query($base, $consulta);
        if($resultado){
            echo "Record inserted sucessfully";
        }else{
            echo "Failed to insert record";
        }
        mydb_close($base);

  }catch(Exception $e){
    mydb_close($base);
	die("Error: ". $e->getMessage());
  }
    ?>