<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$name = $mysqli->real_escape_string($_GET['name']);

$queryCourses = "SELECT `day`,`start_time` FROM `courses_schedule` WHERE `course_name`='$name'";
$courses = $mysqli->query($queryCourses);

$rows = array();

while (($row = $courses->fetch_assoc())) {
    $rows[$row['day']][] = $row['start_time'];
                        
}

echo json_encode($rows);

$courses->close();

$mysqli->close();
?>