<?php

require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$choice = $_GET['order'];

if($choice == "alphabetic") {
    $queryCourses = "SELECT 'name' FROM 'all_courses' ORDER BY 'name'";
}

else if($choice == "level") {
    $queryCourses = "SELECT 'name' FROM 'all_courses' ORDER BY 'level'";
}

else{
    die("Connect failed: " . $mysqli->connect_error);
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
