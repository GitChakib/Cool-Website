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