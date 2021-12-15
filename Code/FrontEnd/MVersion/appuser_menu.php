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
                <button type=“button”><a href=index.php>Logout</a></button><br><br> ";
    
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
