class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(ingredient_params)
      if @ingredient.save
        redirect_to edit_recipe_path(@recipe)
      end
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity)
  end
end
