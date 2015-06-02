<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$queryCategories = "SELECT `name`,`main_photo` FROM `course_categories`";
$categories = $mysqli->query($queryCategories);

$rows = array();

while(($row = $categories->fetch_assoc())) {
    $rows[] = $row;
}

echo json_encode($rows);

$categories->close();

$mysqli->close();

?>
