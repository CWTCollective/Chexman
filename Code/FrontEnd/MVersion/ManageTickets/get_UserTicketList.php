<head>
    <link rel="stylesheet" type="text/css" href="../stile.css">
    <meta charset="utf-8">
    <title>registro</title>
</head>
<div id="Head"></div>
<div id="TittleRectangle"></div>
<div id="Tittle"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;CHEXMAN</div>
<img style="transform:translate(0px,-6vw);"src="../Resources/Ticket.png">
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
      <table border ="1" width="500"  style="transform:translate(0px,6vw);" align="center"> 
         <tr bgcolor="#ffffff"> 
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
                echo "<tr style='background-color:#ffffff';><td>".$row['id_Tickets'] ."</td>";
                switch ($row['Ticket_Type'] ) {
                    case "B":
                        echo "<td style='background-color:#ffffff';>Breakfast</td>";
                      break;
                    case "L":
                        echo "<td style='background-color:#ffffff';>Lunch</td>";
                      break;
                    case "D":
                        echo "<td style='background-color:#ffffff';>Dinner</td>";
                      break;
                    case "TM":
                        echo "<td style='background-color:#ffffff';>Metro</td>";
                      break;
                      case "TB":
                        echo "<td style='background-color:#ffffff';>Bus</td>";
                      break;
                    case "TT":
                        echo "<td style='background-color:#ffffff';>Train</td>";
                      break;
                    case "TP":
                        echo "<td style='background-color:#ffffff';>Plane</td>";
                      break;
                      case "H":
                        echo "<td style='background-color:#ffffff';>Hospitality</td>";
                      break;                    
                    default:
                    echo "<td style='background-color:#ffffff';></td>";
                  } 
                                                
                echo"<td style='background-color:#ffffff';>". $row['Create_Date'] ."</td>
                <td style='background-color:#ffffff';>". $row['Expense_Date'] ."</td>
                <td style='background-color:#ffffff';>" .$row['Amount']."</td></tr>";
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