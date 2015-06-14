<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$name = $mysqli->real_escape_string($_GET['name']);
$level = $mysqli->real_escape_string($_GET['level']);

$queryCourse = "SELECT `all_courses`.`name`,`all_courses`.`description`,`photos`,`category`.`category` FROM `all_courses` INNER JOIN `category` ON `all_courses`.`name` = `category`.`name` WHERE `all_courses`.`name` = '$name' AND `level` = '$level'";
$course = $mysqli->query($queryCourse);

$row = $course->fetch_assoc();

echo json_encode($row);

$course->close();

$mysqli->close();

?>