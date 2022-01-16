<!doctype html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../stile.css">
    <meta charset="utf-8">
    <title>registro</title>
</head>
<body>
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
    <form action="insert_Ticket.php" method="post">
    <table style="with: 50%">
		<tr>
		    <td>Tipo</td>                                        					
            <td><select name="expense_type">    
               <option value ="B">Breakfast</option>
               <option value ="L">Lunch</option>
               <option value ="S">Dinner</option>
               <option value ="TB">Bus</option>
               <option value ="TM">Metro</option>
               <option value ="TT">Train</option>
               <option value ="TP">Plane</option>
               <option value ="H">Hospitality</option>/<td></select> 
        </tr>
        <tr>				                                
            <td>Expense Date</td>                                        
            <td><input type="date" name="expense_date" /></td>                                  
    	</tr>				                                
        <tr>				                                
            <td>Amount</td>                                        
            <td><input type="number" step='0.01' name="amount" /></td>                                  
    	</tr>				                                
    </table>
    </br>
    <input type="submit" formaction= "insert_Ticket.php" value="Claim Expense" /></form>                     
   </br>
    </form>
</body>
</html>