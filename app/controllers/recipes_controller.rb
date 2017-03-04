class RecipesController < ApplicationController
  before_action :set_default_value, only: [:new, :index]

  def new
  end

  def index
  end

  private
  def set_default_value
    @recipe = Recipe.new
  end
end
