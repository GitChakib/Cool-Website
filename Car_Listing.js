async function loadListingDetails() {
    const urlParams = new URLSearchParams(window.location.search);
    const carId = urlParams.get('id');

    if (!carId) {
        console.error("No car ID found in URL");
        return;
    }

    try {
        const response = await fetch(`fetch_car_details.php?id=${carId}`);
        const car = await response.json();

        document.getElementById("car-name").textContent = car.full_name;
        document.getElementById("brief-description").textContent = car.brief_desc;
        document.getElementById("main-image").src = car.main_image_url;        
        document.getElementById("displacement").textContent = car.engine;
        document.getElementById("transmission").textContent = car.transmission;
        document.getElementById("vin").textContent = car.vin;
        document.getElementById("exterior-color").textContent = car.color;
        document.getElementById("mileage").textContent = `${Number(car.mileage).toLocaleString()} Miles`;
        document.getElementById("location").textContent = car.location;
        document.getElementById("make").textContent = car.make;
        document.getElementById("model").textContent = car.model;
        document.getElementById("year").textContent = car.year;
        document.getElementById("horsepower").textContent = `${car.horsepower} hp`;
        
        document.getElementById("current-price").textContent = `$${Number(65000).toLocaleString()}`;
        document.getElementById("time-left").textContent = car.end_date || "Coming Soon";

        const smallImages = document.querySelectorAll(".small-image");
        if (car.all_images && car.all_images.length > 0) {
            smallImages.forEach((img, index) => {
                if (car.all_images[index]) {
                    img.src = car.all_images[index];
                    img.style.display = "block";
                } else {
                    img.style.display = "none";
                }
            });
        }

    } catch (error) {
        console.error("Error loading car details:", error);
        document.getElementById("car-name").textContent = "Failed to load listing.";
    }
}

loadListingDetails();