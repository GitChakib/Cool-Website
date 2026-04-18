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
      <?php endif; ?>
     </div>
    </nav>
    </div>
   </header>
   <section id = "create-a-listing">
    <div id = "maintenance">
      <h2 id = "maintenance-title">This Page is Under Maintenace </h2>
      <img src = "Images/construction_40dp_E3CA11_FILL0_wght400_GRAD0_opsz40.svg">
      <h2> Why You Got this Message?</h2>
      <img src = "Images/engineering_40dp_E3CA11_FILL0_wght400_GRAD0_opsz40.svg" id = "second-img">
      <p>Our team is still working on this page so you can't create any listings (for now atleast)</p>
      <h4>You can check our other cool listings by clicking <a href = "index.php" id = "rel-to-index">here</a> !</h4>

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