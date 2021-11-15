// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';
import { initMapbox } from '../plugins/init_mapbox';
import { initFlatpickr } from "../plugins/flatpickr";

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
  initMapbox();
  $('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    responsive: {
      0: {
        items: 2
      },

    },
    nav: true,
    navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"]
  });

  // function getUrl(event) {
  //   console.log(event)
  //   const url = event.target.href
  //   console.log(url)
  //   fetch(url, {
  //     method: 'GET',
  //     headers: { 'Accept': "application/json", 'Content-Type': 'application/json' }
  //   })
  //     .then(response => response.json())
  //     .then((data) => {
  //       console.log(data)

  //       const calendar = document.getElementById(`calendar-${data.name}`)
  //       // calendar.innerHTML

  //     });
  // }
  // const calendarHeadings = document.querySelectorAll(".calendar-heading");
  // calendarHeadings.forEach((header) => {
  //   const aTag = header.querySelectorAll("a");
  //   console.log(aTag)
  //   aTag.forEach(link => {
  //     link.addEventListener('click', getUrl);
  //   })
  // });
});
