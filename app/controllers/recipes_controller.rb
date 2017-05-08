class RecipesController < ApplicationController
  before_action :set_default_value, only: [:new, :index, :show, :edit]

  def new
  end

  def index
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def show
  end

  def create
    @recipe = current_user.recipes.new(recipe_name_params)
    if @recipe.save
      redirect_to edit_recipe_path(@recipe)
    else
      render "new"
    end
  end

  private
  def recipe_name_params
    params.require(:recipe).permit(:id, :name)
  end

  def set_default_value
    @recipe = Recipe.new
  end
end
