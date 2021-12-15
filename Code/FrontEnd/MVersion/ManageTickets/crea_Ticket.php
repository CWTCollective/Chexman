<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>registro</title>
</head>
<body>
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