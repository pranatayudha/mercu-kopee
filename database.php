<?php
// Error Reporting Turn On
ini_set('error_reporting', E_ALL);

// Setting up the time zone
// date_default_timezone_set('Asia/Dubai');

// Host Name
$dbhost = 'localhost';

// Database Name
$dbname = 'db_mercu_kopee';

// Database Username
$dbuser = 'root';

// Database Password
$dbpass = '';

try {
	$pdo = new PDO("mysql:host={$dbhost};dbname={$dbname}", $dbuser, $dbpass);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch( PDOException $exception ) {
	echo "Connection error :" . $exception->getMessage();
}