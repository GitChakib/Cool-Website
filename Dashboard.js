function fetchresults(query) {
    console.log("search key:",query);
}
const carListings = [{
    mainimage: "Images/w48at.jpg", fullname: "2024 Mercedes-Benz AMG GLC 43", ispopular: false, transmission: 1, price: 68000, year: 2024, miles: 25000, make: "Mercedes-Benz", model: "GLC", briefDescription: "AWD, 2.0L I4 Turbo, Stock, 385-hp", location: "New York, NY"
}, {
    mainimage: "Images/X88vu.jpg", fullname: "2018 Chevrolet Camaro", ispopular: false, transmission: 1, price: 54000, year: 2018, miles: 15000, make: "Chevrolet", model: "Camaro", briefDescription: "6.2-Liter V8, Limited-Slip Differential, Mostly Unmodified", location: "Los Angeles, CA"
}];
const container = document.getElementById("carlistings");

carListings.forEach(carObj => {
  const card = document.createElement("div");
  card.className = "car";

  const link = document.createElement("a");
  link.href = "Car_Listing.html";

  const img = document.createElement("img");
  img.src = carObj.mainimage;

  link.appendChild(img);
  card.appendChild(link);

  const title = document.createElement("h3");
  const titleLink = document.createElement("a");
  titleLink.href = "Car_Listing.html";
  titleLink.textContent = `${carObj.fullname}`;
  title.appendChild(titleLink);
  card.appendChild(title);

  const brief = document.createElement("p");
  brief.className = "brief-description";
  brief.textContent = `${carObj.briefDescription}`;
  card.appendChild(brief);

  const location = document.createElement("p");
  location.className = "location";
  location.textContent = `${carObj.location}`;
  card.appendChild(location);

  container.appendChild(card);
});