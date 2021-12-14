<?php
try{
    session_start(); 
	include("../Datos_conexion.php");
	include ("../utils.php");
    $base = mydb_open();	

$consulta="INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) 
    VALUES ('" . $_SESSION['user_id'] 
            . "', '" . $_POST['expense_type'] 
            . "', '". date("Y-m-d") 
            . "', '". $_POST['expense_date'] 
            . "', '" . $_POST['amount'] ."')";
echo   $consulta   ;
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