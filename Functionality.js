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
document.getElementsByClassName("brief-description")[5].textContent = `6-Speed Manual, Turbo V6, Passive Rear Wheel Steering, Mostly Unmodified`;
document.getElementsByClassName("brief-description")[0].textContent = `Supercharged V6, QUATTRO AWD, Stock, 354-hp`;
document.getElementsByClassName("location")[5].textContent = `New York, NY`;