<?php session_start();?>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> 4Wheels </title>
  <link rel="stylesheet" href="CSS/Theme.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&family=Lexend:wght@100..900&family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <link rel = "icon" type = "image/svg" href = "Images/Logo_Small.svg">
  <script src = "Dashboard.js" defer> </script>
  <script src = "Search.js" defer> </script>
  <script src = "Popular_Cars.js" defer> </script>
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
      <div class = "header-buttons-single"> <a href = "Create_Listing.html" id = "auction-a-car"> Auction a Car </a> </div>
      <?php if (!isset($_SESSION['user_id'])): ?>
      <div class = "header-buttons-single"> <a href = "Register.php" id = "sign-up"> Sign up </a> </div>
      <div class = "header-buttons-single">
      <?php endif; ?>
      <?php if (isset($_SESSION['user_id'])): ?>
        <img src="Images/profile_logo.svg" id="profile-logo">
      <?php endif; ?>
      </div>
     </div>
    </nav>
    </div>
   </header>
<section class = "popular-listings">
  <div class="popular-listings-container" id="popular-cars-target">
  </div>
</section>   

<section class = "all-listings">
  <div class = "all-listings-nav">
  <h2> All Auctions </h2>
  <div class = "filters">
   <div class = "dropdown">
      <button>Price</button>
      <div class = "menu">
       <a href = ""> Lowest to Highest </a>
       <a href = "">  Highest to Lowest </a>
      </div>
    </div>
    <div class = "dropdown">
      <button>Transmission</button>
      <div class = "menu">
       <a href = ""> All </a>
       <a href = "">  Automatic </a>
       <a href = ""> Manual </a>
      </div>
    </div>
    <div class = "dropdown">
      <button>Miles</button>
      <div class = "menu">
       <a href = ""> Most to Lowest </a>
       <a href = "">  Lowest to Most </a>
      </div>
     </div>
   </div>
  </div>
  <div id = "carlistings">
  </div>
  <div class = "pagination">
    <a href="Dashboard.html">1</a>
    <a href="">2</a>
    <a href="">3</a>
    <a href="">4</a>
    <a href="">5</a>
    <a href="">6</a>
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