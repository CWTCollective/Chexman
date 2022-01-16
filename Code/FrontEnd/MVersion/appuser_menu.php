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
<img src="Resources/Home.png">
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
<?php
try{
	if( isset($_POST['login']) ){
	    session_start(); 
	    include("Datos_conexion.php");
	    include ("utils.php");
        $base = mydb_open();	
	    $consulta="SELECT * FROM users WHERE Login='" . $_POST['login'] . "' and Password='" . $_POST['password'] ."'";
        $result=mysqli_query($base,$consulta);
        $_SESSION['user_id'] = mydb_result($result,0,"id_user");
        if ($_SESSION['user_id']!=0){		
            $_SESSION['role'] = mydb_result($result,0,"Role");
            echo "User logged";
			echo $_SESSION['user_id']. "</br>";
            
            log_action( 1, "");
            if ($_SESSION['role']==0){
                echo " <button type=“button”><a href=ManageTickets/crea_Ticket.php>Input new expense</a></button><br><br>
                <button type=“button”><a href=ManageTickets/get_UserTicketList.php>Display Tickets for this user</a></button><br><br> 
                <button type=“button”><a href=index.php>Logout</a></button><br><br> ";
            }
            else {
                echo " <button type=“button”><a href=registro.php>Register new user</a></button><br><br>
                <button type=“button”><a href=ManageTickets/crea_Ticket.php>Input new expense</a></button><br><br>
                <button type=“button”><a href=ManageTickets/get_UserTicketList.php>Display Tickets for this user</a></button><br><br> 
                <button type=“button”><a href=index.php>Logout</a></button><br><br>
                <button type=“button”><a href=User_search.php>User search</a></button><br><br> ";
    
            }
        }else{
            echo "Failed login attempt";
        }
	    mydb_close($base);		
    }
    else
    {
        if ($_SESSION['role']=0){
        echo "<button type=“button”><a href=ManageTickets/crea_Ticket.php>Input new expense</a></button><br><br>
        <button type=“button”><a href=ManageTickets/get_UserTicketList.php>Display Tickets for this user</a></button><br><br> 
        <button type=“button”><a href=index.php>Logout</a></button><br><br> ";
        }
        else {
            echo " <button type=“button”><a href=registro.php>Register new user</a></button><br><br>
            <button type=“button”><a href=ManageTickets/crea_Ticket.php>Input new expense</a></button><br><br>
            <button type=“button”><a href=ManageTickets/get_UserTicketList.php>Display Tickets for this user</a></button><br><br> 
            <button type=“button”><a href=index.php>Logout</a></button><br><br> ";

        }

    }

  }catch(Exception $e){
	mydb_close($base);
	  die("Error: ". $e->getMessage());		
  }
  ?>
  </body>
  </html>