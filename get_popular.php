<?php
include 'config.php';

$sql = "SELECT cars.*, images.url AS main_image_url 
    FROM cars 
    LEFT JOIN images ON cars.id = images.car_id AND images.is_main = 1
    WHERE cars.is_popular = 1";
    
$result = $conn->query($sql);
$popular_cars = [];

while($row = $result->fetch_assoc()) {
    $popular_cars[] = $row;
}

header('Content-Type: application/json');
echo json_encode($popular_cars);
exit;