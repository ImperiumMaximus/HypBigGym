<?php

require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$id_category = $mysqli->real_escape_string($_GET['id']);

$selected_course = $_GET['course'];

$queryCategory = "SELECT `name`,`description`,`link` FROM `category` WHERE category = '$id_category' AND name = '$selected_course'";

$category = $mysqli->query($queryCategory);

$rows = array();

while (($row = $category->fetch_assoc())) {
    $rows[] = $row;
                        
}

echo json_encode($rows);


$category->close();

$mysqli->close();

    
?>