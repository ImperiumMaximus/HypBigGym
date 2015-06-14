<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$id = $mysqli->real_escape_string($_GET['id']);

$queryInstructor = "SELECT * FROM `instructors` WHERE `id` = $id";
$instructor = $mysqli->query($queryInstructor);

$row = $instructor->fetch_assoc();

echo json_encode($row);

$instructor->close();

$mysqli->close();

?>