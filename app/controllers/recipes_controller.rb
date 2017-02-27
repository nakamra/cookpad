class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new
  end
end
