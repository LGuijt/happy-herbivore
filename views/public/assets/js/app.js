// Toggle dropdown menu with smooth animation
// localStorage.setItem("lang", "en");

function changeLanguageDrop() {
    let dropdown = document.getElementById("myDropdown");
    let btn = document.querySelector(".dropbtn");

    if (dropdown.classList.contains("open")) {
        dropdown.style.maxHeight = "0px"; // Collapse
        setTimeout(() => {
            dropdown.classList.remove("open");
        }, 300); // Delay removal to match animation
    } else {
        dropdown.classList.add("open");
        dropdown.style.maxHeight = dropdown.scrollHeight + "px"; // Expand
    }
}

// Change language function
function changeLanguage(lang) {
    console.log(`Selected language: ${lang}`);
    localStorage.setItem("lang", lang);
    location.reload();
}

// Close dropdown when clicking outside
window.onclick = function (event) {
    let dropdown = document.getElementById("myDropdown");
    let btn = document.querySelector(".dropbtn");

    if (!event.target.closest('.dropdown')) {
        if (dropdown.classList.contains("open")) {
            dropdown.style.maxHeight = "0px"; 
            setTimeout(() => {
                dropdown.classList.remove("open");
            }, 300);
        }
    }
};

// Button navigation to menu page
let button = document.getElementById("button");

if (button) {
    button.addEventListener('click', () => {
        window.location.href = 'menu';
    });
}
