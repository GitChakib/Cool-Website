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
   <section id = "about-us-main">
    <h1 id = "who">Who are we?</h1>
    <p id = "whotext">We are a fictional company that doesn't exist, this is only a school project and not an actual website for car auctions, If you actually fell for it that means it worked<p>
    <h1 id = "whycolor">Why <p id = "whycolor2">THIS </p> color? </h1>
    <p id = "whycolortext">Well I found it in a logo design website and I found it very cool and it looked industrial so I chose it</p>
    <h1 id = "familliar">It looks very familliar</h1>
    <p id = "familliartext">Yes, You are not imagining things, It IS familliar because I took a lot of inspiration from the #1 car auction website Cars&Bids (carsandbids.com), Things like car cards and overall layout will look a lot like it, but not everything</p>
    <h1 id = "whoami">Who am I?</h1>
    <p id = "whoamitext">I am a computer science student and I made this to have fun and learn things on the way </p>
    </section>
    <h3 id = "love">Made with ❤️ by Chakib</h3>

</body>
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