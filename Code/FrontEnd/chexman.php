<!doctype html>
<html>
<head>
<style>




#rectangle{
position: absolute;
width: 723px;
height: 732px;
left: 215px;
top: 115px;
background: radial-gradient(70% 70% at 50% 50%, rgba(0, 223, 223, 0.1) 0%, rgba(5, 105, 255, 0) 100%);
box-sizing: border-box;
box-shadow: inset 8px 8px 4px rgba(0, 0, 0, 0.25);
border-radius: 26px;
}

.border-gradient {
  position: absolute;
  border: 10px solid;
  left: 210px;
  top: 115px;
  width: 723px;
  height: 732px;
  border-image-slice: 100;
  border-width: 5px;
  border-radius: 25px;
}
.border-gradient-purple {
  border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
}
input[type=text] {
  position: absolute;
  box-shadow: inset 4px 4px 4px rgba(0, 0, 0, 0.25);
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid black;
  border-radius: 4px;
  left: 330px;
  top: 315px;
}
input[type=password] {
  position: absolute;
  box-shadow: inset 4px 4px 4px rgba(0, 0, 0, 0.25);
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid black;
  border-radius: 4px;
  left: 330px;
  top: 415px;
}
input[type=submit] {
  position: absolute;
  filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
  padding: 12px 20px;
  left: 515px;
  top: 555px;
}

</style>
<title>CHEXMAN</title>
</head>

<body>
<div id="rectangle"></div>

<div class="on-light">
    <id class="border-gradient border-gradient-purple">  
</id>
  </div>
<!-- CAMPOS DE USER Y PASSWORD -->
<form action="" method="post">
    <input type="text" id="User" name="User" placeholder="User..." /><br><br>
    <input type="password" id="Password" name="Password" placeholder="Password..." /><br><br>
    <input type="submit" value="¡enviarme!" /><br><br><br>
    
</form>
<?php

//VARIABLES
$ID_user = "Jonatan";
$ID_password = "ssssssss";

if ($_POST) {
  //ESCRIBO LOS DATOS INTRODUCIDOS
    echo $_POST['User'];
    echo "<br>". $_POST['Password'];

    //COMPARO Y DOY O NO ACCESO
    if ($ID_user === $_POST['User'] and $ID_password === $_POST['Password'])
    {
      echo "<br>"."buena esa man";
    }
    else
    {
      echo "<br>"."cagaste";
    }
}
?>
</body>
</html>