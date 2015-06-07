<?php

require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$idChoose = $_GET['categoryId'];

$queryListCategory = "SELECT `name` FROM `category` WHERE `category` = $idChoose";

$listCategory = $mysqli->query($queryListCategory);

$rows = array();

while (($row = $courses->fetch_assoc())) {
    $rows[] = $row;
                        
}

echo json_encode($rows);

$listCategory->close();

$mysqli->close();

?>