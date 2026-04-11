<?php
session_start();
include 'config.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $emaillogin = mysqli_real_escape_string($conn, $_POST['email-login']);
    $passwordlogin = $_POST['password-login'];

    $sql = "SELECT id, password FROM users WHERE email = '$emaillogin'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        if (password_verify($passwordlogin, $user['password'])) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['logged_in'] = true;
            header("Location: index.php");
            exit();
        } else {
            echo "Invalid password.";
        }
    } else {
        echo "No account found with that email.";
    }
}
?>