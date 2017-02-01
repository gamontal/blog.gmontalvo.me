// Activate Mobile Menu
$(document).ready(function () {
  $('.hamburger').click(function () {
    $(this).toggleClass('is-active');
    $('body').toggleClass('show');
    $('body').toggleClass('noscroll');
  });
});