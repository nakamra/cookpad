$(function() {
  $('#recipe-ingredients').on('click',function() {
    $("#ingredients-modal-overlay").show();
    $("#ingredients-modal-wrapper").show();
  });

  $('#modalClose').on('click',function() {
    $("#ingredients-modal-wrapper").fadeOut();
    $("#ingredients-modal-overlay").fadeOut();
  });
});
