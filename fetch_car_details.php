<?php
include 'config.php';

$car_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($car_id === 0) {
    header('Content-Type: application/json');
    echo json_encode(["error" => "Invalid ID"]);
    exit;
}

$sql = "SELECT cars.*, images.url AS main_image_url 
        FROM cars 
        LEFT JOIN images ON cars.id = images.car_id AND images.is_main = 1
        WHERE cars.id = $car_id";

$result = $conn->query($sql);
$car = $result->fetch_assoc();

if (!$car) {
    header('Content-Type: application/json');
    echo json_encode(["error" => "Car not found"]);
    exit;
}

$img_sql = "SELECT url FROM images WHERE car_id = $car_id";
$img_result = $conn->query($img_sql);

$car['all_images'] = []; 
while($row = $img_result->fetch_assoc()) {
    $car['all_images'][] = $row['url'];
}

header('Content-Type: application/json');
echo json_encode($car);
exit;