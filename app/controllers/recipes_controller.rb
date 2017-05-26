class RecipesController < ApplicationController
  before_action :set_default_value, only: [:new, :index, :show, :edit]

  def index
  end

  def new
  end

  def create
    @recipe = current_user.recipes.new(recipe_name_params)
    if @recipe.save
      redirect_to edit_recipe_path(@recipe)
    else
      render "new"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.build
    @ingredient = Ingredient.new()
    @ingredients = @recipe.ingredients
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_ingredient_params)
      redirect_to edit_recipe_path(@recipe)
    else
      render "edit"
    end
  end

  def show
  end



  private
  def recipe_name_params
    params.require(:recipe).permit(:id, :name)
  end

  def recipe_ingredient_params
    params.require(:recipe).permit(ingredients_attributes: [:name, :quantity, :_destroy, :id])
  end

  def set_default_value
    @recipe = Recipe.new
  end
end
