<?php
define('DB_SERVER','https://databases.000webhost.com/');
define('DB_USER','id21392890_tt');
define('DB_PASS' ,'{#]+6C88eN"l');
define('DB_NAME', 'tt');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>
