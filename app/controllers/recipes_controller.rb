class RecipesController < ApplicationController
  before_action :set_default_value, only: [:new, :index, :post]

  def new
  end

  def index
  end

  def post
  end

  private
  def set_default_value
    @recipe = Recipe.new
  end
end
