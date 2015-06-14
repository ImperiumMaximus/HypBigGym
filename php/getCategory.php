<?php

require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$id_category = $mysqli->real_escape_string($_GET['id']);

$selected_course = $_GET['course'];

$queryCategory = "SELECT `all_courses`.`name`,`category`.`description`,`all_courses`.`level` FROM `category` INNER JOIN `all_courses` ON `all_courses`.`name` = `category`.`name` WHERE category = '$id_category' AND `category`.`name` = '$selected_course'";

$category = $mysqli->query($queryCategory);

$rows = array();

while (($row = $category->fetch_assoc())) {
    $rows[] = $row;
                        
}

echo json_encode($rows);


$category->close();

$mysqli->close();

    
?>