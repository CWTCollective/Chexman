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
<img src="log.png">
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


<!-- User & Password -->
<form action="" method="post">
    <input type="text" id="User" name="login" placeholder="User..." /><br><br>
    <input type="password" id="Password" name="password" placeholder="Password..." /><br><br>
    <input type="submit" formaction="appuser_login.php" class="enter" value="¡enviarme!" /><br><br><br>
	
</form>

<button type=“button”><a href=registro.php>Register new user</a></button><br><br>
<button type=“button”><a href=ManageTickets/crea_Ticket.php>Input new expense</a></button>
<?php

if ($_POST) {
  //Print data
    echo $_POST['login'];
    echo "<br>". $_POST['password'];
}
  ?>
  
</body>
</html>
