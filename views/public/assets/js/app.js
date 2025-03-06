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

  if (!event.target.closest(".dropdown")) {
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
  button.addEventListener("click", () => {
    startUp();
    window.location.href = "menu";
  });
}

function startUp() {
    if (!localStorage.getItem("lang")) {
        localStorage.setItem("lang", "en");
    }
    
  thisOrder = localStorage.getItem("currentOrder");
  thisDay = localStorage.getItem("currentDay");
  getYear = new Date().getFullYear();
  getMonth = new Date().getMonth();
  getDay = new Date().getDate();
  currentDate = getYear + "-" + getMonth + "-" + getDay;

  if (thisDay !== currentDate) {
    localStorage.setItem("currentDay", currentDate);
    localStorage.setItem("currentOrder", 1);
    thisOrder = 1;
  } else if (thisOrder === 99 || thisOrder === null) {
    localStorage.setItem("currentOrder", 1);
    thisOrder = 1;
  } else {
    thisOrder++;
    localStorage.setItem("currentOrder", thisOrder);
  }

  apifour(thisOrder);
}

async function apifour(order) {
  fetch("views/functions/addOrder.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      order: order,
    }),
    })
    .then((res) => res.json())
    .then((data) => {
      console.log(data);
  });
}
