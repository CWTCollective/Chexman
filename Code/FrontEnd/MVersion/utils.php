<?php
  function mydb_open() {
    return new mysqli("localhost",  $_SESSION['db_usuario'], $_SESSION['db_contra'], $_SESSION['db']);
}
function mydb_close($conn) {
    mysqli_close($conn);
    return ;
}
function mydb_result($res, $row, $field=0) {
    $res->data_seek($row);
    $datarow = $res->fetch_array();
    return $datarow[$field];
}
?>
</html>