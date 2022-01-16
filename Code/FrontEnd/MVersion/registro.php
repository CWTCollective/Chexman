<!doctype html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="stile.css">
    <meta charset="utf-8">
    <title>registro</title>
</head>
<body>
<div id="Head"></div>
<div id="TittleRectangle"></div>
<div id="Tittle"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;CHEXMAN</div>
<img src="Resources/log-in.png">
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