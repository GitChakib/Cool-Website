<?php
require_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $email      = $_POST['email'];
    $password   = $_POST['password'];
    $first_name = $_POST['first_name'];
    $last_name  = $_POST['last_name'];
    $user_name  = $_POST['user_name'];

    $sql = "INSERT INTO users (first_name, last_name, user_name, email, password) 
            VALUES ('$first_name', '$last_name', '$user_name', '$email', '$password')";

    if ($conn->query($sql) === TRUE) {
        echo "Registration successful! <a href='Login.php'>Login here</a>";
    } else {
        echo "Error: " . $conn->error;
    }
} else {
    header("Location: Login.php");
}
?>