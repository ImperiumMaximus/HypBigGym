<?php
require_once("db_config.php");

$mysqli = new mysqli($hostname, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connect failed: " . $mysqli->connect_error);
}

$id = $mysqli->real_escape_string($_GET['id']);

$queryCourses = "SELECT `name`,`level` FROM `all_courses` INNER JOIN `teaches` ON `teaches`.`course_name` = `all_courses`.`name` AND `teaches`.`course_level` = `all_courses`.`level` WHERE `teaches`.`instr_id` = $id";
$courses = $mysqli->query($queryCourses);

$rows = array();

while (($row = $courses->fetch_assoc())) {
    $rows[] = $row;
                        
}

echo json_encode($rows);

$courses->close();

$mysqli->close();

?>