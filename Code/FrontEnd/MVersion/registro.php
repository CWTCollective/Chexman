<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>registro</title>
</head>
<body>
<form action="insert_User.php" method="post">
    <table style="with: 50%">
    <tr>				                                
            <td>Login</td>                                        
            <td><input type="text" id="applogin" name="applogin" placeholder="Login..." /></td>
    	</tr>				                                
            
    <tr>				                                
            <td>Password</td>                                        
            <td><input type="password" id="apppassword" name="apppassword" placeholder="Password..." /></td>
    	</tr>				                                
        <tr>				                                
            <td>DNI</td>                                        
            <td><input type="text" id="DNI" name="nie" placeholder="DNI..." /></td>
    	</tr>				                                
        <tr>				                                
	    <td>Tipo</td>                                        					
            <td><select name="role">    
               <option value ="0">User</option>
               <option value ="1">Admin</option>   <td>
        </tr>
       
    </table>
    </br>
     <input type="submit" value="Register" /><br><br><br>
</form>
</body>
</html>