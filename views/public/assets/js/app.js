function changeLanguageDrop() {
    document.getElementById('myDropdown').classList.toggle('show');
}

function changeLanguage(lang) {
    console.log(`Selected language: ${lang}`);
    
}

window.onclick = function (event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName('dropdown-content');
        for (var i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
};