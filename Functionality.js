let searchInput = document.getElementById("search-input");
searchInput.addEventListener("keydown", function(event){
    if (event.key === "Enter") {
        event.preventDefault();
        searchkey = searchInput.value.trim();
        if (searchkey != "") {
            fetchresults(searchkey);
        }
    }
});
function fetchresults(query) {
    console.log("search key:",query);
}
const carListings = [{
    ispopular: false, transmission: 1, price: 35000, year: 2015, miles: 25000, make: "Audi", model: "S5", briefDescription: "Supercharged V6, QUATTRO AWD, Stock, 354-hp"
}, {
    ispopular: false, transmission: 1, price: 54000, year: 2018, miles: 15000, make: "Porsche", model: "Panamera", briefDescription: "6-Speed Manual, Turbo V6, Passive Rear Wheel Steering, Mostly Unmodified"
}];
carListings.forEach(car => {
    console.log(car)
});
console.log(carListings);
document.getElementsByClassName("brief-description")[5].textContent = `6-Speed Manual, Turbo V6, Passive Rear Wheel Steering, Mostly Unmodified`;
document.getElementsByClassName("brief-description")[0].textContent = `Supercharged V6, QUATTRO AWD, Stock, 354-hp`;
document.getElementsByClassName("location")[5].textContent = `New York, NY`;