$(document).ready( function(){
  $('img').on('click', function(){
    var $overlay = $('<div>').addClass('overlay');
    $overlay.hide().appendTo($('body')).fadeIn('slow');

  });

});