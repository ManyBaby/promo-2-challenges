// Your validation code will go in there.
// Write your validation functions, and bind events
// in a jQuery DOM ready callback


$( "#first_name" )
  .focusout(function() {
    if(input.val == "")
      this.parent().removeClass("has-success").addClass("has-error")
    else
      this.parent().removeClass("has-error").addClass("has-success")
  })