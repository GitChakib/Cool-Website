<?php
include 'config.php';

// This query joins the cars table with the images table
$sql = "SELECT 
            cars.*, 
            images.url AS main_image 
        FROM cars 
        LEFT JOIN images ON cars.id = images.car_id 
        WHERE images.is_main = 1 OR images.is_main IS NULL";

$result = $conn->query($sql);

$cars = [];

if ($result && $result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $cars[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode($cars);
?>