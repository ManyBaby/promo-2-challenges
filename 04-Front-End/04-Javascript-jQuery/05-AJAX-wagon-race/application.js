// Get session id from API
$.get(API_ROOT_URL + 'game/session/new', function(data) {
  SESSION_ID = data.session_id;
  $('#player_form').removeClass('hide');
});

$('form').submit(function(e) {
  e.preventDefault();  // Do not navigate

  var players = {
    players: [
      { name: $('#player1_name').val() },
      { name: $('#player2_name').val() }
    ]
  }

  $.ajax({
    type: 'POST',
    url: API_ROOT_URL + '/game/session/' + SESSION_ID + '/new',
    data: JSON.stringify(players),
    contentType: 'application/json',
    success: function(data) {
      $('#player_form').addClass('hide');
      $('#game').removeClass('hide');
    },
    error: function(data) {
      alert('API is down. Retry in a few minute');
    }
  });
});