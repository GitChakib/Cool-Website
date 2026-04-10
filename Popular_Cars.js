let popularCars = [];
let currentIndex = 0;

async function fetchPopularCars() {
    const target = document.getElementById("popular-cars-target");
    
    try {
        const response = await fetch('get_popular.php');
        popularCars = await response.json();

        if (popularCars.length === 0) return;
        renderCar(currentIndex);
        setInterval(nextCar, 7000);

    } catch (error) {
        console.error("Error:", error);
    }
}

function renderCar(index) {
    const target = document.getElementById("popular-cars-target");
    const car = popularCars[index];
    const html = `
        <div class="car active">
            <a href="Car_Listing.php?id=${car.id}">
                <img src="${car.main_image_url}" alt="${car.full_name}">
            </a>
            <div class="overlay2" style="pointer-events: none">
                <h3> Popular </h3>
            </div>
            <div class="overlay" style="pointer-events: none;">
                <h3> ${car.full_name} </h3>
                <p> ${car.brief_desc} </p>
            </div>
        </div>
    `;
    target.style.opacity = 0.2;
    setTimeout(() => {
        target.innerHTML = html;
        target.style.transition = "opacity 1.2s ease";
        target.style.opacity = 1;
    }, 800);
}
function nextCar() {
    currentIndex = (currentIndex + 1) % popularCars.length;
    renderCar(currentIndex);
}
document.addEventListener("DOMContentLoaded", fetchPopularCars);