<?php

require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$id = $mysqli->real_escape_string($_GET['id']);

$queryDate = "SELECT `id`,`day`,`start_time` FROM `courses_schedule` WHERE `course_name` = '$id' ORDER BY `id`";
    
$date = $mysqli->query($queryDate);    

$rows = array();

while (($row = $date->fetch_assoc())) {
    $rows[] = $row;
                        
}

echo json_encode($rows);

$date->close();

$mysqli->close();

?>