import '@fortawesome/fontawesome-free/js/all.js';
import Wow from 'wow.js';

const wow = new Wow();
wow.init();

export default {
  init() {

    $(window).scroll(function () {
      if ($(this).scrollTop() > 100) {
        $('.scrollup').fadeIn().css('display', 'flex');
      } else {
        $('.scrollup').fadeOut();
      }
    });

    $('.scrollup').click(function () {
      $('html, body').animate({
        scrollTop: 0,
      }, 600);
      return false;
    });

    // Hamburger Icon
    $('#nav-icon3').click(function () {
      $(this).toggleClass('open');
    });

    // Hide Nav
    'use strict';

    var c, currentScrollTop = 0,
      navbar = $('.banner');

    $(window).scroll(function () {
      var a = $(window).scrollTop();
      var b = navbar.height();

      currentScrollTop = a;

      if ($('.navbar-collapse').hasClass('show')) {
        event.preventDefault();
      }
      else if (c < currentScrollTop && a > b) {
        navbar.addClass('nav-hidden');
      } else if (c > currentScrollTop && !(a <= b)) {
        navbar.removeClass('nav-hidden');
      }

      c = currentScrollTop;
    });

    // Mobile Nav hover classes
    $(window).on('resize', function () {
      if ($(window).width() < 960) {
        $('.banner .nav li a').removeClass('hvr-underline-from-center');
        $('.banner .nav li').last().removeClass('hvr-outline-out');
      }
      else {
        $('.banner .nav li a').addClass('hvr-underline-from-center');
        $('.banner .nav li').last().addClass('hvr-outline-out');
      }
    });
  },

  finalize() {
    // JavaScript to be fired on all pages, after page specific JS is fired

    //WP Shopify Plugin 'title' fix
    $('.wps-btn').text('new text');
  },
};
