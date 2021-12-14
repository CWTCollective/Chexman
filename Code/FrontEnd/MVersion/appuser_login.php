<?php
try{
	
	session_start(); 
	include("Datos_conexion.php");
	include ("utils.php");
    $base = mydb_open();	
	$consulta="SELECT * FROM users WHERE Name='" . $_POST['login'] . "' and Password='" . $_POST['password'] ."'";
    $resultado=mysqli_query($base,$consulta);
        if($resultado){
			$_SESSION['user_id'] = mydb_result($resultado,0,"id_user");
            echo "User logged";
			echo $_SESSION['user_id'];
        }else{
            echo "Failed login attempt";
        }
	    mydb_close($base);		

  }catch(Exception $e){
	mydb_close($base);
	  die("Error: ". $e->getMessage());		
  }
?>
