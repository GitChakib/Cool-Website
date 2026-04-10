<?php
include 'config.php';

$sql = "SELECT * FROM cars"; 

$cars = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $cars[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode($cars);
?>