$(document).ready(function() {
  $(document).on('keyup', function(event) {
    // Detect which key was pressed and call the appropriate function
    if (event.which == 65) { //a
      if ($('#player1_race td.active').hasClass('player1_arrival')){
          $('#player1_race td.active').removeClass('active')
          .addClass('flag')
      };

      $('#player1_race td.active')
          .removeClass('active')
          .next('td').addClass('active')
    };

    if (event.which == 80) { //p
      if ($('#player2_race td.active').hasClass('player2_arrival')){
          $('#player2_race td.active').removeClass('active')
          .addClass('flag')
      };
      $('#player2_race td.active')
          .removeClass('active')
          .next('td').addClass('active')
    };

    if (event.which == 79) { //o
    $('#player2_race td.active')
        .removeClass('active')
        .addClass('big')
        .next('td')
        .addClass('active')
    };
    // Google "jquery keyup what key was pressed" if you don't know how
  });
});