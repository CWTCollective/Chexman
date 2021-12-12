<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>registro</title>
</head>
<body>
    <form action="" method="post">
        <input type="text" id="User" name="login" placeholder="User..." /><br><br>
        <input type="password" id="Password" name="password" placeholder="Password..." /><br><br>
        <input type="submit" value="¡register!" /><br><br><br>
    </form>
    <?php
try{
	include("Datos_conexion.php");
	$base=new PDO($db, $db_usuario, $db_contra);
	$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $consulta="INSERT INTO users (Name, Password)
    VALUES (" . $login . "," . $password .")";
    echo $consulta;
    echo $User;
    $resultado=mysqli_query($base,$consulta);
        if($resultado){
            echo "registro correcto";
        }else{
            echo "vuelve a intentarlo";
        }

  }catch(Exception $e){
	  die("Error: ". $e->getMessage());
  }
    ?>
</body>
</html>