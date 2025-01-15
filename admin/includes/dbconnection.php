<?php 
// DB credentials.
define('DB_HOST','sql203.epizy.com');
define('DB_USER','epiz_32187762');
define('DB_PASS','7MHdwSQB3z');
define('DB_NAME','epiz_32187762_jobportal');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS);
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>