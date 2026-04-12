<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Sign Up </title>
  <link rel="stylesheet" href="CSS/Theme.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&family=Lexend:wght@100..900&family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <link rel = "icon" type = "image/svg" href = "Images/Logo_Small.svg">
  <script src = "Search.js" defer> </script>
  </head>
<body>
   <header>
    <div class = "header-content">
       <a href = "index.php"> <img src= "Images/Logo_Inverted.svg" id = "brand-logo"> </a>
       <a href = "index.php"> <img src= "Images/Logo_Inverted_Small.svg" id = "brand-logo-small"> </a>
     <div class = "search">
      <form>
       <input type="text" placeholder="Search for cars" id = "search-input">
      </form>
     </div>
    <nav>
     <div class = "header-buttons">
      <div class = "header-buttons-single"> <a href = "About_Us.php" id = "about-us"> About us </a> </div>
      <div class = "header-buttons-single"> <a href = "Create_Listing.php" id = "auction-a-car"> Auction a Car </a> </div>
      <?php if (!isset($_SESSION['user_id'])): ?>
      <div class = "header-buttons-single"> <a href = "Register.php" id = "sign-up"> Sign up </a> </div>
      <?php endif; ?>
      <?php if (isset($_SESSION['user_id'])): ?>
        <img src="Images/profile_logo.svg" id="profile-logo">
      <?php endif;?>
     </div>
    </nav>
    </div>
   </header>
<section id="login">
 <div id="login-head">
  <h1 id="sign-up-title">Sign Up, It's Free!</h1>
  <p id="signup-details">Fill in your details to create an account (They don't need to be real, Just something you can remember for a while)</p>
 </div>
    <div id="login-space">
     <form action="register_user.php" method="POST">
      <h3>Email</h3>
      <input type="email" name="email" id="email-input" required>
      <h3>Password</h3>
      <input type="password" name="password" id="password-input" required>
      <h3>First Name</h3>
      <input type="text" name="first_name">
      <h3>Last Name</h3>
      <input type="text" name="last_name">
      <h3>Username</h3>
      <input type="text" name="user_name">
      <button type="submit" id = "register">Register</button>
      </form>
      <p id = "here"> Already have an account? Click<a href = "login.php" id = "here2"> here <a> </p>
    </div>
</section>
<footer>
  <div id = "footer-container">
    <div id = "left-footer">
    <img src = "Images/Logo_Gray.svg" id = "gray-logo">
    <p>© 4Wheels. All rights reserved.</p>
    <p>Contact me: chakibfehd.senoussi@etu.univ-batna2.dz</p>
   </div>
   <div id = "links">
    <h3 id = "links-title">Useful links</h3> 
    <a href = "About_Us.php" class = "link">About Us</a>
    <a href = "index.php" class = "link">Homepage</a>
    <a href = "Register.php" class = "link">Register</a>
    <a href = "login.php" class = "link">Login</a>
    <a href = "About_Us.php" class = "link">Auction a Car</a>
   </div>
  </div>
</footer>
</body>
</html>
</html>