<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$queryLocation = "SELECT * FROM `location` ORDER BY `id` DESC LIMIT 0, 1";
$location = $mysqli->query($queryLocation);

echo json_encode($location->fetch_assoc());

?>
