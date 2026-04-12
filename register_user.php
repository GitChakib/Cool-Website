<?php
require_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $email      = $_POST['email'];
    $hashed_password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $first_name = $_POST['first_name'];
    $last_name  = $_POST['last_name'];
    $user_name  = $_POST['user_name'];

    $sql = "INSERT INTO users (first_name, last_name, user_name, email, password) 
            VALUES ('$first_name', '$last_name', '$user_name', '$email', '$hashed_password')";

    if ($conn->query($sql) === TRUE) {
        header ("location: login.php");
        exit();}
} else {
    echo "login error";
}
?>