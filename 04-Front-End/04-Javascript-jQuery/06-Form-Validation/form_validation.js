// Your validation code will go in there.
// Write your validation functions, and bind events
// in a jQuery DOM ready callback

var EVENTS = 'focusout keyup change';
var ZIP_CODE_PATTERN = /^\d{5}$/;
var MOBILE_PHONE_PATTERN =  /^(0|\+33)[1-9]\d{8}$/;
var EMAIL_PATTERN =/^([^\.@]+)(\.([^@]+))?@([^@]+)\.([^@]+)$/;

function checkIsFilled(input, add_class) {
  var filled = false;
  if ($(input).attr('type') == "checkbox") {
    filled = $(input).is(':checked');
  } else if ($(input).is(':focus')) {
    filled = true;
  } else {
    filled = $(input).val().length > 0;
  }

  if (add_class) {
    addClass(input, filled);
  }

  return filled;
}

function checkZipCode(input) {
  var zip_code = $(input).val();
  addClass(input, zip_code.match(ZIP_CODE_PATTERN));
}

function checkEmail(input) {
  var email = $(input).val();
  addClass(input, email.match(EMAIL_PATTERN));
}

function checkMobilePhone(input) {
  var mobile_phone = $(input).val();
  addClass(input, mobile_phone.match(MOBILE_PHONE_PATTERN));
}

function addClass(input, remove) {
  var form_group = $(input).parents('.form-group');
  if (remove) {
    form_group.removeClass('has-error');
    if ($(input).val().length > 0) {
      form_group.addClass('has-success')
    }
  } else {
    form_group.addClass('has-error').removeClass('has-success');
  }

  activateButton();
}

function activateButton() {
  var button = $('button[type=submit]');
  if ($('.form-group.has-error').length == 0) {
    var enable = true;
    $('form input, form textarea').each(function(i, item) {
      if (!checkIsFilled(item, false)) {
        enable = false;
        return;
      }
    });
    if (enable) {
      button.removeAttr('disabled').html('Submit');
      return;
    }
  }
  button.attr('disabled', 'disabled').html('Please fill all fields');
}

function onReady() {
  $('form input, form textarea').on(EVENTS, function(e) {
    if (e.target.id != 'zip_code' &&
        e.target.id != 'email' &&
        e.target.id != 'mobile_phone') {
      checkIsFilled(e.target, true);
    }
  });

  $('#zip_code').on(EVENTS, function(e) {
    checkZipCode(e.target);
  });

  $('#email').on(EVENTS, function(e) {
    checkEmail(e.target);
  });

  $('#mobile_phone').on(EVENTS, function(e) {
    checkMobilePhone(e.target);
  });
}

$(document).ready(onReady);
