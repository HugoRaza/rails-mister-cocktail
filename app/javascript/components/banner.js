import Typed from 'typed.js';

const searchBar = document.querySelector('.banner-click')

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Cuba libre", "Gin tonic", "Cosmow Mule", "Bloody Mary"],
    typeSpeed: 50,
    smartBackspace: true,
    loop: true
  });
};

export { loadDynamicBannerText };



