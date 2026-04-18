const themeToggle = document.getElementById('theme-change');
const themeImg = document.getElementById('theme-img');
const sunIcon = "Images/light_mode_40dp_E3CA11_FILL0_wght400_GRAD0_opsz40.svg";
const moonIcon = "Images/dark_mode_40dp_0C1018_FILL0_wght400_GRAD0_opsz40.svg";

if (localStorage.getItem('theme') === 'dark') {
    document.documentElement.setAttribute('data-theme', 'dark');
    themeImg.src = sunIcon;
} else {
    themeImg.src = moonIcon;
}

themeToggle.addEventListener('click', () => {
    let currentTheme = document.documentElement.getAttribute('data-theme');
    
    if (currentTheme === 'dark') {
        document.documentElement.removeAttribute('data-theme');
        localStorage.setItem('theme', 'light');
        themeImg.src = sunIcon;
    } else {
        document.documentElement.setAttribute('data-theme', 'dark');
        localStorage.setItem('theme', 'dark');
        themeImg.src = moonIcon;
    }
});