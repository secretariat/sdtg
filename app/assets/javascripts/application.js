// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require rails.validations
//= require_tree .

jQuery(function() {
  return $('form').on('change', $('select[id*=zapros_stoim]'), function(event) {
    if ($('select[id*=zapros_stoim]').val() === "другая валюта") {
      $('input[id*=zapros_another_currency]').show();
      // return $('label[for*=zayavka_]').show();
    } else {
      $('input[id*=zapros_another_currency]').hide();
      // return $('label[for*=zayavka_]').hide();
    }
  });
});
