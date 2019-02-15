/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
import 'bootstrap';

console.log('Hello World from Webpacker')

import { loadDynamicBannerText } from '../components/banner';
    // loadDynamicBannerText();
loadDynamicBannerText();

const searchBarInput = document.querySelector('.searchInput')
const searchBar = document.querySelector('.banner-click')

searchBar.addEventListener('click', (event) => {
  if (event.screenX > 844 && event.screenX < 1086 && event.screenY > 151 && event.screenY < 188) {
    searchBarInput.classList.toggle("none");
  } else {
    return
  }
});


//                   844
// application.js:21 151
// application.js:22 ------
// application.js:20 846
// application.js:21 188
// application.js:22 ------
// application.js:20 1086
// application.js:21 188
// application.js:22 ------
// application.js:20 1086
// application.js:21 150
// application.js:22 ------
