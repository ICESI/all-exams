<?php
$user = 'pi';
$passwd = 'security++';
$db = 'swn';
$port = 5432;
$host = '192.168.56.102';
$strCnx = "host=$host port=$port dbname=$db user=$user";
$cnx = pg_connect($strCnx) or die ("Error de conexion. ". pg_last_error());
echo "Conexion exitosa <hr>"; 

$result = pg_query("SELECT id FROM devices");
if (!$result) {
  echo "An error occurred.\n";
  exit();
}

while ($row = pg_fetch_assoc($result)) {
  echo $row['id'] . " " . $row['device_name'];
  echo "<br />\n";
}

pg_close($cnx);

?>
