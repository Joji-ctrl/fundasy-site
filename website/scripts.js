// Handle dropdown button click
document.querySelector(".dropbtn").onclick = function () {
    document.querySelector(".dropdown-content").classList.toggle("show");
};

// Close the dropdown if the user clicks outside of it

document.querySelector(".search-icon").addEventListener("click", function () {
    var input = document.querySelector('.search-form input[type="text"]');
    var button = document.querySelector(".search-form button");
    if (input.style.display === "none") {
        input.style.display = "inline";
        button.style.display = "inline";
    } else {
        input.style.display = "none";
        button.style.display = "none";
    }
    input.focus(); // Automatically focus the input when it appears
});

function toggleSearch() {
    var searchBox = document.getElementById("search-box");
    if (searchBox.style.width === "0px" || searchBox.style.width === "") {
        searchBox.style.display = "inline"; // Make the input visible
        setTimeout(() => {
            searchBox.style.width = "200px"; // Transition to full width
            searchBox.style.opacity = "1"; // Make the input fully opaque
        }, 10); // Delay slightly to ensure the display change is registered
    } else {
        searchBox.style.width = "0"; // Transition to no width
        searchBox.style.opacity = "0"; // Make the input transparent
        setTimeout(() => {
            searchBox.style.display = "none"; // Hide after transition completes
        }, 500); // Delay this to match the CSS transition duration
    }
}

document
    .getElementById("search-box")
    .addEventListener("keypress", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            // Implement your search handling logic here
            alert("Search for: " + this.value); // Example: Replace with actual search handling
        }
    });
