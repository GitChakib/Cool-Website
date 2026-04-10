<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Car Listing </title>
  <link rel="stylesheet" href="CSS/Theme.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&family=Lexend:wght@100..900&family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <link rel = "icon" type = "image/svg" href = "Images/Logo_Small.svg">
  <script src = "Car_Listing.js" defer> </script>
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
      <div class = "header-buttons-single"> <a href = "About_Us.html" id = "about-us"> About us </a> </div>
      <div class = "header-buttons-single"> <a href = "Create_Listing.html" id = "auction-a-car"> Auction a Car </a> </div>
      <div class = "header-buttons-single"> <a href = "Login.html" id = "sign-up"> Sign up </a> </div>
     </div>
    </nav>
    </div>
   </header>
   <section class = "main-listing">
    <div class = "car-header">
    <h2 id = "car-name"></h2>
    <p id = "brief-description"></p>
    </div>
    <div class = "car-image-block">
       <img src = "Images/NI7l9.jpg" id = "main-image">
      <div class = "image-cluster">
        <img class = "small-image">
        <img class = "small-image">
        <img class = "small-image">
        <img class = "small-image">
        <img class = "small-image">
        <img class = "small-image">
        <img class = "small-image">
        <img class = "small-image" id = "last-small-image">
      </div>
    </div>
    <div id = "price-and-time">
      <h2 id = "current-price"></h2>
      <h2 id = "time-left"></h2>
    </div>
    <div id = "details-border">
     <div class = "category">
      <p class = "sub-category"> Make </p>
      <p class = "single-detail" id = "make"></p>
     </div>
     <div class = "category">
      <p class = "sub-category"> Model </p>
      <p class = "single-detail" id = "model"></p>
     </div>
      <div class = "category">
      <p class = "sub-category"> Year </p>
      <p class = "single-detail" id = "year"></p>
     </div>
     <div class = "category">
      <p class = "sub-category"> Engine </p>
      <p class = "single-detail" id = "displacement"></p>
     </div>
      <div class = "category">
      <p class = "sub-category"> Transmission </p>
      <p class = "single-detail" id = "transmission"></p>
     </div>
     <div class = "category">
      <p class = "sub-category"> VIN </p>
      <p class = "single-detail" id = "vin"></p>
     </div>
     <div class = "category">
      <p class = "sub-category"> Exterior Color </p>
      <p class = "single-detail" id = "exterior-color"></p>
     </div>
     <div class = "category"> 
      <p class = "sub-category"> Mileage </p>
      <p class = "single-detail" id = "mileage"></p>
     </div>
      <div class = "category"> 
      <p class = "sub-category"> Horsepower </p>
      <p class = "single-detail" id = "horsepower"></p>
     </div>
     <div class = "category"> 
      <p class = "sub-category"> Location </p>
      <p class = "single-detail" id = "location"></p>
     </div>
   </div>
  </section>
   <footer>

   <p>© 2026 Car Marketplace. All rights reserved.</p>
   <p>Contact me: chakibfehd.senoussi@etu.univ-batna2.dz</p>

 </footer>
</body>