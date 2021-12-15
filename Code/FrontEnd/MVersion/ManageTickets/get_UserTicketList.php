
      <table border ="1" width="500" align="center"> 
         <tr bgcolor="#F5A13E"> 
          <th><b>ID</b></th> 
          <th><b>Type</b></th> 
          <th><b>Created</b></th> 
          <th><b>Expense Date</b></th>        
          <th><b>Amount</b></th>              
         </tr> 

<?php
try{
    session_start(); 
	include("../Datos_conexion.php");
	include ("../utils.php");
    $base = mydb_open();	

$consulta="SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount
    FROM  tickets
    WHERE id_User=" . $_SESSION['user_id'];
    $result=mysqli_query($base, $consulta);
        if($result){
            while($row = mysqli_fetch_array($result)) {
                echo "<tr><td>".$row['id_Tickets'] ."</td>";
                switch ($row['Ticket_Type'] ) {
                    case "B":
                        echo "<td>Breakfast</td>";
                      break;
                    case "L":
                        echo "<td>Lunch</td>";
                      break;
                    case "D":
                        echo "<td>Dinner</td>";
                      break;
                    case "TM":
                        echo "<td>Metro</td>";
                      break;
                      case "TB":
                        echo "<td>Bus</td>";
                      break;
                    case "TT":
                        echo "<td>Train</td>";
                      break;
                    case "TP":
                        echo "<td>Plane</td>";
                      break;
                      case "H":
                        echo "<td>Hospitality</td>";
                      break;                    
                    default:
                    echo "<td></td>";
                  } 
                                                
                echo"<td>". $row['Create_Date'] ."</td>
                <td>". $row['Expense_Date'] ."</td>
                <td>" .$row['Amount']."</td></tr>";
            }
            echo "</tr> </table>";
            log_action( 3, $consulta);
        }else{
            echo "Failed to retrieve data";
        }
        mydb_close($base);

  }catch(Exception $e){
    mydb_close($base);
	die("Error: ". $e->getMessage());
  }
?>
<button type=“button”><a href=

../appuser_menu.php>Back to Main Page</a></button>