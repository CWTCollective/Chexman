<?php
  function mydb_open() {
    return new mysqli("localhost",  $_SESSION['db_usuario'], $_SESSION['db_contra'], $_SESSION['db']);
}
function mydb_close($conn) {
    mysqli_close($conn);
    return ;
}
function mydb_result($res, $row, $field=0) {
    $res->data_seek($row);
    $datarow = $res->fetch_array();
    return $datarow[$field];
}

function log_action( $action_code, $data){
    try{
        # Action values 1-Login, 2=Logout 3=SQL Query + data contains statement.#/
        include("Datos_conexion.php");
        $base = mydb_open();	
        // Remove all quotes from the string as you cannot pass this data to be stored with the quotes
         
        $data = str_replace('"', "", $data);
        $data= str_replace("'", "", $data);
    $consulta="INSERT INTO logs (id_user, Timestamp, Action, Data) 
   VALUES (" . $_SESSION['user_id'] . ", '" . date("Y-m-d") . "', ". $action_code . ", '". $data ."')";

        $resultado=mysqli_query($base, $consulta);
            if(!$resultado){                
                echo "Failed to insert log record". "</br>";
            }
            mydb_close($base);
    
      }catch(Exception $e){
        mydb_close($base);
        die("Error: ". $e->getMessage());
      }
}

?>
</html>