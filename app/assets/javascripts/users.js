$(function() {
  $('#copy_address').change(function() {
    $('#user_perm_address').val($('#user_curr_address').val());
  });
});
