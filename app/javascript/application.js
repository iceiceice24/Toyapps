// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"

//= require turbolinks

//= require slick-carousel

$(document).ready(function(){
    $('.carousel').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 5000
    });
  });
  