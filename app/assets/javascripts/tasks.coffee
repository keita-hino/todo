ready = ->
  dateFormat = 'yy-mm-dd';
  $('.date-picker').datepicker(
    dateFormat: dateFormat,
    minDate: 0,
    showAnim: 'slideDown'
  );
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
