$(function() {

  function hideTextArea() {
    $('.step-text__form').hide();
    $('.step-text__field--empty').show();
  }

  $('.step-text__field--empty').on('click', function() {
    hideTextArea();
    $(this).hide();
    var step_id = $(this).attr("data-step-id")
    $('#text_form_' + step_id).show();
  });

  $('.step-text-cancel').on('click', function() {
    hideTextArea()
  });
});
