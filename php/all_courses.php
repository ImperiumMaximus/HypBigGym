<?php

require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$choice = $_GET['order'];

if($choice == "alphabetic") {
    $queryCourses = "SELECT `name`,`link` FROM `all_courses` ORDER BY `name`";
}

else if($choice == "level") {
    $queryCourses = "SELECT `name`,`link` FROM `all_courses` ORDER BY `level`";
}

else{
    die("Choice not recognized");
}

$courses = $mysqli->query($queryCourses);

$rows = array();

while(($row = $courses->fetch_assoc())) {
    $rows[] = $row;
}

echo json_encode($rows);

$courses->close();

$mysqli->close();

?>
