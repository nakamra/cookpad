$(function() {
  var ingredient_num = $('.ingredients-table-liner').length;

  $('#add_ingredient_liner_btn').on('click', function() {
    var input =
        '<div class="ingredients-table-liner" id="add_ingredient_' + ingredient_num + '">'
        + '<input class="ingredients-table-liner__name text-field" type="text" value="" name="recipe[ingredients_attributes][' + ingredient_num + '][name]" id="recipe_ingredients_attributes_' + ingredient_num + '_name" deluminate_imagetype="png">'
        + '<input class="ingredients-table-liner__quantity text-field" type="text" value="" name="recipe[ingredients_attributes][' + ingredient_num + '][quantity]" id="recipe_ingredients_attributes_' + ingredient_num + '_quantity" deluminate_imagetype="png">'
        + '<span class="ingredients-table-liner__delete"  data-id="' + ingredient_num + '" deluminate_imagetype="png"></span>'
        + '</div>'
    $('#ingredients_box').append(input);
    ingredient_num ++;
  });

  $('#recipe-ingredients').on('click',function() {
    $("#ingredients-modal-overlay").show();
    $("#ingredients-modal-wrapper").show();
  });

  $('#modalClose').on('click',function() {
    $("#ingredients-modal-wrapper").fadeOut();
    $("#ingredients-modal-overlay").fadeOut();
  });
});
