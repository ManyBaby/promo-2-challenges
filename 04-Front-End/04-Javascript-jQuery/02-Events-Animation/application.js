/*
  *
  * TODO: add your code here!
  *
*/
$(document).ready(function() {

$('#message')
      .hide().delay( 500 ).slideDown()
      .on('click', function() {
        $(this).slideUp()
      });

// c'est un oneliner qu'on met sur plusieurs lignes
$('#message-wraper')
      on('mouseenter', function(){
          $('#message').slideDown();

      on('mouseleave', function(){
          $('#message').slideUp();
      });


});