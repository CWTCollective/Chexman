<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>registro</title>
</head>
<body>
    <form action="insert_User.php" method="post">
        <input type="text" id="User" name="login" placeholder="User..." /><br><br>
        <input type="password" id="Password" name="password" placeholder="Password..." /><br><br>
        <input type="submit" value="¡register!" /><br><br><br>
    </form>

   <?php
       if (isset($_POST['Submit'])) { 
       $_SESSION['login'] = $_POST['login'];
       $_SESSION['password'] = $_POST['password'];
       } 
    ?>
</body>
</html>