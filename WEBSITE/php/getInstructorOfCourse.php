<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$id = $mysqli->real_escape_string($_GET['id']);

$queryInstructor = "SELECT `instructors`.`name`,`instructors`.`surname`,`instructors`.`id` FROM `instructors` INNER JOIN `teaches` ON `instructors`.`id` = `teaches`.`instr_id` WHERE `teaches`.`course_name` = '$id'";
$instructor = $mysqli->query($queryInstructor);

$rows = array();

while (($row = $instructor->fetch_assoc())) {
    $rows[] = $row;
                        
}
echo json_encode($rows);

$instructor->close();

$mysqli->close();

?>