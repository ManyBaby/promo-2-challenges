$(document).ready(function() {
  $(document).on('keyup', function(event) {
    // Detect which key was pressed and call the appropriate function
    if (event.which == 65) { //a
    $('#player1_race td.active')
        .removeClass('active')
        .next('td').addClass('active')
    };

    if (event.which == 80) { //p
    $('#player2_race td.active')
        .removeClass('active big')
        .next('td').addClass('active')
    };

    if (event.which == 79) { //o
    $('#player2_race td.active')
        .removeClass('active')
        .next('td').addClass('active big')
    };
    // Google "jquery keyup what key was pressed" if you don't know how
  });
});