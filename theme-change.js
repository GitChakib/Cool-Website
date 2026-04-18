const themeToggle = document.getElementById('theme-change');
const themeImg = document.getElementById('theme-img');
const logoImg = document.getElementById('brand-logo');
const smallLogoImg = document.getElementById('brand-logo-small');
const sunIcon = "Images/light_mode_40dp_E3CA11_FILL0_wght400_GRAD0_opsz40.svg";
const moonIcon = "Images/dark_mode_40dp_0C1018_FILL0_wght400_GRAD0_opsz40.svg";
const lightlogo = "Images/Logo.svg";
const darklogo = "Images/Logo_Inverted.svg";
const smalllight = "Images/Logo_Small.svg";
const smalldark = "Images/Logo_Inverted_Small.svg";

if (localStorage.getItem('theme') === 'dark') {
    document.documentElement.setAttribute('data-theme', 'dark');
    themeImg.src = sunIcon;
    logoImg.src = darklogo;
    smallLogoImg.src = smalldark;
} else {
    themeImg.src = moonIcon;
    logoImg.src = lightlogo;
    smallLogoImg.src = smalllight;
}

themeToggle.addEventListener('click', () => {
    let currentTheme = document.documentElement.getAttribute('data-theme');
    
    if (currentTheme === 'dark') {
        document.documentElement.removeAttribute('data-theme');
        localStorage.setItem('theme', 'light');
        themeImg.src = moonIcon;
        logoImg.src = lightlogo;
        smallLogoImg.src = smalllight;
    } else {
        document.documentElement.setAttribute('data-theme', 'dark');
        localStorage.setItem('theme', 'dark');
        themeImg.src = sunIcon;
        logoImg.src = darklogo;
        smallLogoImg.src = smalldark;
    }
});