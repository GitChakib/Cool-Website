const container = document.getElementById("carlistings");

async function loadCars() {
    try {
        // 1. Fetch data from your new PHP file
        const response = await fetch('fetch_auctions.php');
        const carListings = await response.json();

        // 2. Clear the container (in case there's old data)
        container.innerHTML = "";

        // 3. Your original loop (now using database data!)
        carListings.forEach(carObj => {
            const card = document.createElement("div");
            card.className = "car";

            const link = document.createElement("a");
            link.href = "Car_Listing.php"; // Changed to .php since you're migrating

            const img = document.createElement("img");
            // Make sure your DB column is named 'mainimage'
            img.src = carObj.main_image; 

            link.appendChild(img);
            card.appendChild(link);

            const title = document.createElement("h3");
            const titleLink = document.createElement("a");
            titleLink.href = "Car_Listing.php";
            // Make sure these column names match your DB exactly
            titleLink.textContent = carObj.full_name; 
            title.appendChild(titleLink);
            card.appendChild(title);

            const brief = document.createElement("p");
            brief.className = "brief-description";
            brief.textContent = carObj.brief_desc;
            card.appendChild(brief);

            const location = document.createElement("p");
            location.className = "location";
            location.textContent = carObj.location;
            card.appendChild(location);

            container.appendChild(card);
        });
    } catch (error) {
        console.error("Error loading cars:", error);
        container.innerHTML = "p>Failed to load car listings.</p>";
    }
}
loadCars();